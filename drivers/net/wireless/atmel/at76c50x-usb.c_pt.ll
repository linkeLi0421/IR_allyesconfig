; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/atmel/at76c50x-usb.c_pt.bc'
source_filename = "../drivers/net/wireless/atmel/at76c50x-usb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.fwentry = type { ptr, ptr, i32, i32, ptr, ptr, i32, %struct.mib_fw_version, i32 }
%struct.mib_fw_version = type { i8, i8, i8, i8 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ieee80211_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.reg_domain = type { i16, ptr, i32 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.at76_fw_header = type { i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32 }
%struct.ieee80211_hw = type { %struct.ieee80211_conf, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i16, %struct.anon.130, i64, i8, i8, i8, ptr, i8, i8, i8, i32 }
%struct.ieee80211_conf = type { i32, i32, i32, i16, i8, i8, i8, %struct.cfg80211_chan_def, i8, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.anon.130 = type { i32, i16 }
%struct.at76_priv = type <{ ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.tasklet_struct, i32, i32, [4 x [13 x i8]], [4 x i8], i32, i32, [6 x i8], [32 x i8], [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i16, i8, [3 x i8], i32, ptr, [6 x i8], i8, %struct.at76_card_config, i8, i32, %struct.mib_fw_version, i8, %struct.set_mib_buffer, i8, i32, ptr, i32 }>
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.128, i32 }
%union.anon.128 = type { ptr }
%struct.at76_card_config = type { i8, i8, i8, i8, i16, i16, [4 x i8], i8, i8, i8, i8, [32 x i8], [4 x [13 x i8]], i8, i8, i16 }
%struct.set_mib_buffer = type { i8, i8, i8, i8, %union.anon.129 }
%union.anon.129 = type { i16, [64 x i8] }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.hwcfg_intersil = type { [6 x i8], [14 x i8], [14 x i8], [4 x i8], i8, [1 x i8] }
%struct.hwcfg_rfmd = type { [14 x i8], [14 x i8], [14 x i8], [4 x i8], [6 x i8], i8, [14 x i8], [14 x i8], [3 x i8] }
%struct.hwcfg_r505 = type { [14 x i8], [14 x i8], [14 x i8], [4 x i8], [6 x i8], i8, [14 x i8], [14 x i8], [3 x i8] }
%struct.wiphy = type { %struct.mutex, [6 x i8], [6 x i8], ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i32, i32, [8 x i8], i32, i32, i32, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i8, i8, i32, i32, i8, [32 x i8], i32, ptr, ptr, i16, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr, [6 x ptr], ptr, ptr, %struct.device, i8, ptr, ptr, ptr, %struct.list_head, %struct.possible_net_t, ptr, ptr, ptr, ptr, i32, i32, i16, i8, i32, i8, i32, i32, i32, i32, i8, ptr, %struct.anon.124, i8, ptr, ptr, i8, i8, [18 x i8], [0 x i8] }
%struct.possible_net_t = type { ptr }
%struct.anon.124 = type { i64, i64, i8 }
%struct.dfu_status = type { i8, [3 x i8], i8, i8 }
%struct.cfg80211_scan_info = type { i64, [6 x i8], i8 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
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
%struct.at76_rx_buffer = type { i16, i8, i8, i8, i8, i8, i8, i32, [2352 x i8] }
%struct.ieee80211_mgmt = type { i16, i16, [6 x i8], [6 x i8], [6 x i8], i16, %union.anon.149 }
%union.anon.149 = type { %struct.anon.155, [16 x i8] }
%struct.anon.155 = type { i16, i16, [6 x i8], [0 x i8] }
%struct.at76_tx_buffer = type { i16, i8, i8, [4 x i8], [2352 x i8] }
%struct.mib_mac = type { i32, i32, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, [32 x i8], [6 x i8], i8, i8 }
%struct.mib_mac_addr = type { [6 x i8], [2 x i8], [4 x [6 x i8]], [4 x i8] }
%struct.mib_mac_mgmt = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, i8, i8, i8, [3 x i8], [3 x i8] }
%struct.mib_mac_wep = type <{ i8, i8, i8, i8, i32, i32, [4 x [13 x i8]], i8 }>
%struct.mib_mdomain = type { [14 x i8], [14 x i8] }
%struct.mib_phy = type { i32, i16, i16, i16, i16, i16, i16, [4 x i8], i8, i8, i8, i8 }
%struct.mib_local = type <{ i16, i8, i8, i8, i8, i8, i16, i8, i16 }>
%struct.ieee80211_key_conf = type { %struct.atomic64_t, i32, i8, i8, i8, i8, i16, i8, [0 x i8] }
%struct.atomic64_t = type { i64 }
%struct.at76_req_scan = type { [6 x i8], [32 x i8], i8, i8, i16, i16, i16, i8, i8 }
%struct.ieee80211_scan_request = type { %struct.ieee80211_scan_ies, %struct.cfg80211_scan_request }
%struct.ieee80211_scan_ies = type { [6 x ptr], [6 x i32], ptr, i32 }
%struct.cfg80211_scan_request = type { ptr, i32, i32, i32, ptr, i32, i16, i8, i32, [6 x i32], ptr, [6 x i8], [6 x i8], [6 x i8], ptr, i32, %struct.cfg80211_scan_info, i8, i8, i8, i32, ptr, [0 x ptr] }
%struct.cfg80211_ssid = type { [32 x i8], i8 }
%struct.at76_command = type { i8, i8, i16, [0 x i8] }
%struct.at76_req_join = type { [6 x i8], [32 x i8], i8, i8, i16, i8, i8 }

@__UNIQUE_ID_firmware353 = internal constant [47 x i8] c"at76c50x_usb.firmware=atmel_at76c503-i3861.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware354 = internal constant [47 x i8] c"at76c50x_usb.firmware=atmel_at76c503-i3863.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware355 = internal constant [46 x i8] c"at76c50x_usb.firmware=atmel_at76c503-rfmd.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware356 = internal constant [50 x i8] c"at76c50x_usb.firmware=atmel_at76c503-rfmd-acc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware357 = internal constant [46 x i8] c"at76c50x_usb.firmware=atmel_at76c505-rfmd.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware358 = internal constant [50 x i8] c"at76c50x_usb.firmware=atmel_at76c505-rfmd2958.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware359 = internal constant [51 x i8] c"at76c50x_usb.firmware=atmel_at76c505a-rfmd2958.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware360 = internal constant [49 x i8] c"at76c50x_usb.firmware=atmel_at76c505amx-rfmd.bin\00", section ".modinfo", align 1
@at76_mod_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 2589, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016Atmel at76x USB Wireless LAN Driver 0.17 unloading\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"at76_mod_exit\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/wireless/atmel/at76c50x-usb.c\00", [54 x i8] zeroinitializer }, align 32
@at76_mod_exit._entry_ptr = internal global ptr @at76_mod_exit._entry, section ".printk_index", align 4
@at76_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.3, ptr @at76_probe, ptr @at76_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dev_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 32 }, [44 x i8] zeroinitializer }, align 32
@firmwares = internal global { [9 x %struct.fwentry], [92 x i8] } { [9 x %struct.fwentry] [%struct.fwentry { ptr @.str.163, ptr null, i32 0, i32 0, ptr null, ptr null, i32 0, %struct.mib_fw_version zeroinitializer, i32 0 }, %struct.fwentry { ptr @.str.422, ptr null, i32 0, i32 0, ptr null, ptr null, i32 0, %struct.mib_fw_version zeroinitializer, i32 0 }, %struct.fwentry { ptr @.str.423, ptr null, i32 0, i32 0, ptr null, ptr null, i32 0, %struct.mib_fw_version zeroinitializer, i32 0 }, %struct.fwentry { ptr @.str.424, ptr null, i32 0, i32 0, ptr null, ptr null, i32 0, %struct.mib_fw_version zeroinitializer, i32 0 }, %struct.fwentry { ptr @.str.425, ptr null, i32 0, i32 0, ptr null, ptr null, i32 0, %struct.mib_fw_version zeroinitializer, i32 0 }, %struct.fwentry { ptr @.str.426, ptr null, i32 0, i32 0, ptr null, ptr null, i32 0, %struct.mib_fw_version zeroinitializer, i32 0 }, %struct.fwentry { ptr @.str.427, ptr null, i32 0, i32 0, ptr null, ptr null, i32 0, %struct.mib_fw_version zeroinitializer, i32 0 }, %struct.fwentry { ptr @.str.428, ptr null, i32 0, i32 0, ptr null, ptr null, i32 0, %struct.mib_fw_version zeroinitializer, i32 0 }, %struct.fwentry { ptr @.str.429, ptr null, i32 0, i32 0, ptr null, ptr null, i32 0, %struct.mib_fw_version zeroinitializer, i32 0 }], [92 x i8] zeroinitializer }, align 32
@ledtrig_tx = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_str_debug = internal constant [19 x i8] c"at76c50x_usb.debug\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@at76_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_uint, i16 384, i8 -1, i8 0, %union.anon.97 { ptr @at76_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype370 = internal constant [33 x i8] c"at76c50x_usb.parmtype=debug:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_debug371 = internal constant [40 x i8] c"at76c50x_usb.parm=debug:Debugging level\00", section ".modinfo", align 1
@__initcall__kmod_at76c50x_usb__372_2599_at76_mod_init6 = internal global ptr @at76_mod_init, section ".initcall6.init", align 4
@__exitcall_at76_mod_exit = internal global ptr @at76_mod_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author373 = internal constant [51 x i8] c"at76c50x_usb.author=Oliver Kurth <oku@masqmail.cx>\00", section ".modinfo", align 1
@__UNIQUE_ID_author374 = internal constant [55 x i8] c"at76c50x_usb.author=Joerg Albert <joerg.albert@gmx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_author375 = internal constant [43 x i8] c"at76c50x_usb.author=Alex <alex@foogod.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author376 = internal constant [31 x i8] c"at76c50x_usb.author=Nick Jones\00", section ".modinfo", align 1
@__UNIQUE_ID_author377 = internal constant [63 x i8] c"at76c50x_usb.author=Balint Seeber <n0_5p4m_p13453@hotmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author378 = internal constant [50 x i8] c"at76c50x_usb.author=Pavel Roskin <proski@gnu.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author379 = internal constant [53 x i8] c"at76c50x_usb.author=Guido Guenther <agx@sigxcpu.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author380 = internal constant [51 x i8] c"at76c50x_usb.author=Kalle Valo <kalle.valo@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_author381 = internal constant [54 x i8] c"at76c50x_usb.author=Sebastian Smolorz <sesmo@gmx.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description382 = internal constant [61 x i8] c"at76c50x_usb.description=Atmel at76x USB Wireless LAN Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file383 = internal constant [58 x i8] c"at76c50x_usb.file=drivers/net/wireless/atmel/at76c50x-usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license384 = internal constant [25 x i8] c"at76c50x_usb.license=GPL\00", section ".modinfo", align 1
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"at76c50x-usb\00", [19 x i8] zeroinitializer }, align 32
@dev_table = internal constant { [55 x %struct.usb_device_id], [344 x i8] } { [55 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1003, i16 30211, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1643, i16 8721, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 2148, i16 16640, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 2875, i16 5650, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1008, i16 284, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 3294, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1690, i16 800, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 3420, i16 -24575, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1189, i16 -28672, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1501, i16 -207, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 -32634, i16 512, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 3470, i16 28928, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 3470, i16 28944, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1211, i16 2329, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1690, i16 2081, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1003, i16 30212, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1373, i16 -24576, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1003, i16 30213, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 1690, i16 801, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 1915, i16 8729, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 1915, i16 8743, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 2148, i16 16642, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 8193, i16 12800, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 5736, i16 30213, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 1003, i16 16642, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 4977, i16 22339, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 4977, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 4977, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 1189, i16 -28671, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 1286, i16 2561, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 1665, i16 27, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 1293, i16 80, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 1976, i16 -20480, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 4164, i16 -32765, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 8217, i16 12832, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 1183, i16 50, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 1962, i16 17, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 1962, i16 24, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 1501, i16 -203, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 2106, i16 13569, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4 }, %struct.usb_device_id { i16 3, i16 3420, i16 -24574, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4 }, %struct.usb_device_id { i16 3, i16 1003, i16 30214, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 5 }, %struct.usb_device_id { i16 3, i16 1003, i16 30227, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 6 }, %struct.usb_device_id { i16 3, i16 4977, i16 20, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 6 }, %struct.usb_device_id { i16 3, i16 4977, i16 19, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 6 }, %struct.usb_device_id { i16 3, i16 6421, i16 8755, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 6 }, %struct.usb_device_id { i16 3, i16 4861, i16 4097, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 6 }, %struct.usb_device_id { i16 3, i16 1962, i16 30227, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 6 }, %struct.usb_device_id { i16 3, i16 3504, i16 4128, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 6 }, %struct.usb_device_id { i16 3, i16 1003, i16 30228, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 7 }, %struct.usb_device_id { i16 3, i16 1003, i16 30231, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 7 }, %struct.usb_device_id { i16 3, i16 5776, i16 1793, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 7 }, %struct.usb_device_id { i16 3, i16 5463, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 7 }, %struct.usb_device_id { i16 3, i16 1003, i16 30229, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id zeroinitializer], [344 x i8] zeroinitializer }, align 32
@at76_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 2461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017at76c50x-usb: opmode %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"at76_probe\00", [21 x i8] zeroinitializer }, align 32
@at76_probe._entry_ptr = internal global ptr @at76_probe._entry, section ".printk_index", align 4
@at76_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.2, i32 2468, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"cannot handle a device in HW_CONFIG_MODE\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@at76_probe._entry_ptr.10 = internal global ptr @at76_probe._entry.6, section ".printk_index", align 4
@at76_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.5, ptr @.str.2, i32 2477, ptr @.str.13, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"downloading internal firmware\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@at76_probe._entry_ptr.14 = internal global ptr @at76_probe._entry.11, section ".printk_index", align 4
@at76_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.2, i32 2482, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"error %d downloading internal firmware\0A\00", [56 x i8] zeroinitializer }, align 32
@at76_probe._entry_ptr.17 = internal global ptr @at76_probe._entry.15, section ".printk_index", align 4
@at76_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.2, i32 2506, ptr @.str.13, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"downloading external firmware\0A\00", [33 x i8] zeroinitializer }, align 32
@at76_probe._entry_ptr.20 = internal global ptr @at76_probe._entry.18, section ".printk_index", align 4
@at76_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.5, ptr @.str.2, i32 2516, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error %d getting firmware version\0A\00", [61 x i8] zeroinitializer }, align 32
@at76_probe._entry_ptr.23 = internal global ptr @at76_probe._entry.21, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@fw_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.53, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @fw_mutex, i64 52), ptr getelementptr (i8, ptr @fw_mutex, i64 52) }, ptr @fw_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.54, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@at76_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 1613, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017at76c50x-usb: re-using previously loaded fw\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"at76_load_firmware\00", [45 x i8] zeroinitializer }, align 32
@at76_load_firmware._entry_ptr = internal global ptr @at76_load_firmware._entry, section ".printk_index", align 4
@at76_load_firmware._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 1617, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017at76c50x-usb: downloading firmware %s\0A\00", [55 x i8] zeroinitializer }, align 32
@at76_load_firmware._entry_ptr.28 = internal global ptr @at76_load_firmware._entry.26, section ".printk_index", align 4
@at76_load_firmware._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.2, i32 1621, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"firmware %s not found!\0A\00", [40 x i8] zeroinitializer }, align 32
@at76_load_firmware._entry_ptr.31 = internal global ptr @at76_load_firmware._entry.29, section ".printk_index", align 4
@at76_load_firmware._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.25, ptr @.str.2, i32 1623, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"you may need to download the firmware from http://developer.berlios.de/projects/at76c503a/\0A\00", [36 x i8] zeroinitializer }, align 32
@at76_load_firmware._entry_ptr.34 = internal global ptr @at76_load_firmware._entry.32, section ".printk_index", align 4
@at76_load_firmware._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.25, ptr @.str.2, i32 1627, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017at76c50x-usb: got it.\0A\00", [39 x i8] zeroinitializer }, align 32
@at76_load_firmware._entry_ptr.37 = internal global ptr @at76_load_firmware._entry.35, section ".printk_index", align 4
@at76_load_firmware._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.25, ptr @.str.2, i32 1632, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"firmware is too short (0x%zx)\0A\00", [33 x i8] zeroinitializer }, align 32
@at76_load_firmware._entry_ptr.40 = internal global ptr @at76_load_firmware._entry.38, section ".printk_index", align 4
@at76_load_firmware._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.25, ptr @.str.2, i32 1641, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"board type mismatch, requested %u, got %u\0A\00", [53 x i8] zeroinitializer }, align 32
@at76_load_firmware._entry_ptr.43 = internal global ptr @at76_load_firmware._entry.41, section ".printk_index", align 4
@at76_load_firmware._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.25, ptr @.str.2, i32 1660, ptr @.str.13, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"using firmware %s (version %d.%d.%d-%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@at76_load_firmware._entry_ptr.46 = internal global ptr @at76_load_firmware._entry.44, section ".printk_index", align 4
@at76_load_firmware._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.25, ptr @.str.2, i32 1664, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017at76c50x-usb: board %u, int %d:%d, ext %d:%d\0A\00", [48 x i8] zeroinitializer }, align 32
@at76_load_firmware._entry_ptr.49 = internal global ptr @at76_load_firmware._entry.47, section ".printk_index", align 4
@at76_load_firmware._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.25, ptr @.str.2, i32 1665, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017at76c50x-usb: firmware id %s\0A\00", [32 x i8] zeroinitializer }, align 32
@at76_load_firmware._entry_ptr.52 = internal global ptr @at76_load_firmware._entry.50, section ".printk_index", align 4
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fw_mutex.wait_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fw_mutex\00", [23 x i8] zeroinitializer }, align 32
@at76_load_internal_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 1324, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"downloading internal fw failed with %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"at76_load_internal_fw\00", [42 x i8] zeroinitializer }, align 32
@at76_load_internal_fw._entry_ptr = internal global ptr @at76_load_internal_fw._entry, section ".printk_index", align 4
@at76_load_internal_fw._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.2, i32 1328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017at76c50x-usb: sending REMAP\0A\00", [33 x i8] zeroinitializer }, align 32
@at76_load_internal_fw._entry_ptr.59 = internal global ptr @at76_load_internal_fw._entry.57, section ".printk_index", align 4
@at76_load_internal_fw._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.56, ptr @.str.2, i32 1335, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sending REMAP failed with %d\0A\00", [34 x i8] zeroinitializer }, align 32
@at76_load_internal_fw._entry_ptr.62 = internal global ptr @at76_load_internal_fw._entry.60, section ".printk_index", align 4
@at76_load_internal_fw._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.56, ptr @.str.2, i32 1340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017at76c50x-usb: sleeping for 2 seconds\0A\00", [56 x i8] zeroinitializer }, align 32
@at76_load_internal_fw._entry_ptr.65 = internal global ptr @at76_load_internal_fw._entry.63, section ".printk_index", align 4
@at76_usbdfu_download._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017at76c50x-usb: %s( %p, %u, %d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"at76_usbdfu_download\00", [43 x i8] zeroinitializer }, align 32
@at76_usbdfu_download._entry_ptr = internal global ptr @at76_usbdfu_download._entry, section ".printk_index", align 4
@at76_usbdfu_download._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.2, i32 377, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"FW buffer length invalid!\0A\00", [37 x i8] zeroinitializer }, align 32
@at76_usbdfu_download._entry_ptr.70 = internal global ptr @at76_usbdfu_download._entry.68, section ".printk_index", align 4
@at76_usbdfu_download._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.67, ptr @.str.2, i32 405, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot get DFU state: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@at76_usbdfu_download._entry_ptr.73 = internal global ptr @at76_usbdfu_download._entry.71, section ".printk_index", align 4
@at76_usbdfu_download._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.67, ptr @.str.2, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017at76c50x-usb: STATE_DFU_DOWNLOAD_SYNC\0A\00", [55 x i8] zeroinitializer }, align 32
@at76_usbdfu_download._entry_ptr.76 = internal global ptr @at76_usbdfu_download._entry.74, section ".printk_index", align 4
@at76_usbdfu_download._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.67, ptr @.str.2, i32 422, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"at76_dfu_get_status returned %d\0A\00", [63 x i8] zeroinitializer }, align 32
@at76_usbdfu_download._entry_ptr.79 = internal global ptr @at76_usbdfu_download._entry.77, section ".printk_index", align 4
@at76_usbdfu_download._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.67, ptr @.str.2, i32 426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017at76c50x-usb: STATE_DFU_DOWNLOAD_BUSY\0A\00", [55 x i8] zeroinitializer }, align 32
@at76_usbdfu_download._entry_ptr.82 = internal global ptr @at76_usbdfu_download._entry.80, section ".printk_index", align 4
@at76_usbdfu_download._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.67, ptr @.str.2, i32 429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017at76c50x-usb: DFU: Resetting device\0A\00", [57 x i8] zeroinitializer }, align 32
@at76_usbdfu_download._entry_ptr.85 = internal global ptr @at76_usbdfu_download._entry.83, section ".printk_index", align 4
@at76_usbdfu_download._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.67, ptr @.str.2, i32 434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017at76c50x-usb: DOWNLOAD...\0A\00", [35 x i8] zeroinitializer }, align 32
@at76_usbdfu_download._entry_ptr.88 = internal global ptr @at76_usbdfu_download._entry.86, section ".printk_index", align 4
@at76_usbdfu_download._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.67, ptr @.str.2, i32 437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017at76c50x-usb: DFU IDLE\0A\00", [38 x i8] zeroinitializer }, align 32
@at76_usbdfu_download._entry_ptr.91 = internal global ptr @at76_usbdfu_download._entry.89, section ".printk_index", align 4
@at76_usbdfu_download._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.67, ptr @.str.2, i32 443, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\017at76c50x-usb: int fw, size left = %5d, bsize = %4d, blockno = %2d\0A\00", [59 x i8] zeroinitializer }, align 32
@at76_usbdfu_download._entry_ptr.94 = internal global ptr @at76_usbdfu_download._entry.92, section ".printk_index", align 4
@at76_usbdfu_download._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.67, ptr @.str.2, i32 453, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"at76_load_int_fw_block returned %d\0A\00", [60 x i8] zeroinitializer }, align 32
@at76_usbdfu_download._entry_ptr.97 = internal global ptr @at76_usbdfu_download._entry.95, section ".printk_index", align 4
@at76_usbdfu_download._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.67, ptr @.str.2, i32 458, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017at76c50x-usb: STATE_DFU_MANIFEST_SYNC\0A\00", [55 x i8] zeroinitializer }, align 32
@at76_usbdfu_download._entry_ptr.100 = internal global ptr @at76_usbdfu_download._entry.98, section ".printk_index", align 4
@at76_usbdfu_download._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.67, ptr @.str.2, i32 473, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017at76c50x-usb: DFU: Waiting for manifest phase\0A\00", [47 x i8] zeroinitializer }, align 32
@at76_usbdfu_download._entry_ptr.103 = internal global ptr @at76_usbdfu_download._entry.101, section ".printk_index", align 4
@at76_usbdfu_download._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.67, ptr @.str.2, i32 478, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017at76c50x-usb: STATE_DFU_MANIFEST\0A\00", [60 x i8] zeroinitializer }, align 32
@at76_usbdfu_download._entry_ptr.106 = internal global ptr @at76_usbdfu_download._entry.104, section ".printk_index", align 4
@at76_usbdfu_download._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.67, ptr @.str.2, i32 483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017at76c50x-usb: STATE_DFU_MANIFEST_WAIT_RESET\0A\00", [49 x i8] zeroinitializer }, align 32
@at76_usbdfu_download._entry_ptr.109 = internal global ptr @at76_usbdfu_download._entry.107, section ".printk_index", align 4
@at76_usbdfu_download._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.67, ptr @.str.2, i32 488, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017at76c50x-usb: STATE_DFU_UPLOAD_IDLE\0A\00", [57 x i8] zeroinitializer }, align 32
@at76_usbdfu_download._entry_ptr.112 = internal global ptr @at76_usbdfu_download._entry.110, section ".printk_index", align 4
@at76_usbdfu_download._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.67, ptr @.str.2, i32 492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017at76c50x-usb: STATE_DFU_ERROR\0A\00", [63 x i8] zeroinitializer }, align 32
@at76_usbdfu_download._entry_ptr.115 = internal global ptr @at76_usbdfu_download._entry.113, section ".printk_index", align 4
@at76_usbdfu_download._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.67, ptr @.str.2, i32 497, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017at76c50x-usb: DFU UNKNOWN STATE (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@at76_usbdfu_download._entry_ptr.118 = internal global ptr @at76_usbdfu_download._entry.116, section ".printk_index", align 4
@at76_load_external_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.119, ptr @.str.2, i32 1267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"at76_load_external_fw\00", [42 x i8] zeroinitializer }, align 32
@at76_load_external_fw._entry_ptr = internal global ptr @at76_load_external_fw._entry, section ".printk_index", align 4
@at76_load_external_fw._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.119, ptr @.str.2, i32 1270, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unexpected opmode %d\0A\00", [42 x i8] zeroinitializer }, align 32
@at76_load_external_fw._entry_ptr.122 = internal global ptr @at76_load_external_fw._entry.120, section ".printk_index", align 4
@at76_load_external_fw._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.119, ptr @.str.2, i32 1278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017at76c50x-usb: downloading external firmware\0A\00", [49 x i8] zeroinitializer }, align 32
@at76_load_external_fw._entry_ptr.125 = internal global ptr @at76_load_external_fw._entry.123, section ".printk_index", align 4
@at76_load_external_fw._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.119, ptr @.str.2, i32 1286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\017at76c50x-usb: ext fw, size left = %5d, bsize = %4d, blockno = %2d\0A\00", [59 x i8] zeroinitializer }, align 32
@at76_load_external_fw._entry_ptr.128 = internal global ptr @at76_load_external_fw._entry.126, section ".printk_index", align 4
@at76_load_external_fw._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.119, ptr @.str.2, i32 1291, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"loading %dth firmware block failed: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@at76_load_external_fw._entry_ptr.131 = internal global ptr @at76_load_external_fw._entry.129, section ".printk_index", align 4
@at76_load_external_fw._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.119, ptr @.str.2, i32 1301, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017at76c50x-usb: 200 ms delay for 505a\0A\00", [57 x i8] zeroinitializer }, align 32
@at76_load_external_fw._entry_ptr.134 = internal global ptr @at76_load_external_fw._entry.132, section ".printk_index", align 4
@at76_load_external_fw._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.119, ptr @.str.2, i32 1309, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"downloading external firmware failed: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@at76_load_external_fw._entry_ptr.137 = internal global ptr @at76_load_external_fw._entry.135, section ".printk_index", align 4
@at76_ops = internal constant { %struct.ieee80211_ops, [124 x i8] } { %struct.ieee80211_ops { ptr @at76_mac80211_tx, ptr @at76_mac80211_start, ptr @at76_mac80211_stop, ptr null, ptr null, ptr null, ptr @at76_add_interface, ptr null, ptr @at76_remove_interface, ptr @at76_config, ptr @at76_bss_info_changed, ptr null, ptr null, ptr null, ptr @at76_configure_filter, ptr null, ptr null, ptr @at76_set_key, ptr null, ptr null, ptr null, ptr @at76_hw_scan, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [124 x i8] zeroinitializer }, align 32
@at76_alloc_new_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.139, ptr @.str.2, i32 2202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013at76c50x-usb: could not register ieee80211_hw\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"at76_alloc_new_device\00", [42 x i8] zeroinitializer }, align 32
@at76_alloc_new_device._entry_ptr = internal global ptr @at76_alloc_new_device._entry, section ".printk_index", align 4
@at76_alloc_new_device.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.140 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&priv->mtx\00", [21 x i8] zeroinitializer }, align 32
@at76_alloc_new_device.__key.141 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.142 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&priv->work_set_promisc)\00", [53 x i8] zeroinitializer }, align 32
@at76_alloc_new_device.__key.143 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.144 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&priv->work_submit_rx)\00", [55 x i8] zeroinitializer }, align 32
@at76_alloc_new_device.__key.145 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.146 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&priv->work_join_bssid)\00", [54 x i8] zeroinitializer }, align 32
@at76_alloc_new_device.__key.147 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.148 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&(&priv->dwork_hw_scan)->work)\00", [47 x i8] zeroinitializer }, align 32
@at76_alloc_new_device.__key.149 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.150 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&(&priv->dwork_hw_scan)->timer\00", [33 x i8] zeroinitializer }, align 32
@at76_mac80211_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.152, ptr @.str.2, i32 1770, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017at76c50x-usb: %s()\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"at76_mac80211_tx\00", [47 x i8] zeroinitializer }, align 32
@at76_mac80211_tx._entry_ptr = internal global ptr @at76_mac80211_tx._entry, section ".printk_index", align 4
@at76_mac80211_tx._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.152, ptr @.str.2, i32 1774, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s called while tx urb is pending\0A\00", [61 x i8] zeroinitializer }, align 32
@at76_mac80211_tx._entry_ptr.155 = internal global ptr @at76_mac80211_tx._entry.153, section ".printk_index", align 4
@at76_mac80211_tx._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.152, ptr @.str.2, i32 1815, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017at76c50x-usb: %s tx: wlen 0x%x pad 0x%x rate %d hdr\0A\00", [41 x i8] zeroinitializer }, align 32
@at76_mac80211_tx._entry_ptr.158 = internal global ptr @at76_mac80211_tx._entry.156, section ".printk_index", align 4
@at76_mac80211_tx._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.152, ptr @.str.2, i32 1819, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017at76c50x-usb: %s(): tx_buffer %d bytes:\0A\00", [53 x i8] zeroinitializer }, align 32
@at76_mac80211_tx._entry_ptr.161 = internal global ptr @at76_mac80211_tx._entry.159, section ".printk_index", align 4
@at76_mac80211_tx.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.162, ptr @.str.152, ptr @.str.2, ptr @.str.163, i8 1, i8 -58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.162 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"at76c50x_usb\00", [19 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@at76_mac80211_tx._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.152, ptr @.str.2, i32 1824, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"error in tx submit urb: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@at76_mac80211_tx._entry_ptr.166 = internal global ptr @at76_mac80211_tx._entry.164, section ".printk_index", align 4
@at76_mac80211_tx._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.152, ptr @.str.2, i32 1829, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"-EINVAL: tx urb %p hcpriv %p complete %p\0A\00", [54 x i8] zeroinitializer }, align 32
@at76_mac80211_tx._entry_ptr.169 = internal global ptr @at76_mac80211_tx._entry.167, section ".printk_index", align 4
@tx_activity = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ledtrig_tx_timer = internal global { %struct.timer_list, [48 x i8] } { %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @at76_ledtrig_tx_timerfunc, i32 0, %struct.lockdep_map { ptr @.str.170, [2 x ptr] zeroinitializer, ptr @.str.170, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [48 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.170 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/wireless/atmel/at76c50x-usb.c:517\00", [50 x i8] zeroinitializer }, align 32
@at76_ledtrig_tx_timerfunc.tx_lastactivity = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ieee80211_get_tx_rate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.171 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/mac80211.h\00", [41 x i8] zeroinitializer }, align 32
@at76_mac80211_tx_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.172, ptr @.str.2, i32 1733, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"at76_mac80211_tx_callback\00", [38 x i8] zeroinitializer }, align 32
@at76_mac80211_tx_callback._entry_ptr = internal global ptr @at76_mac80211_tx_callback._entry, section ".printk_index", align 4
@at76_mac80211_tx_callback._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.172, ptr @.str.2, i32 1747, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017at76c50x-usb: %s - nonzero tx status received: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@at76_mac80211_tx_callback._entry_ptr.175 = internal global ptr @at76_mac80211_tx_callback._entry.173, section ".printk_index", align 4
@at76_mac80211_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.176, ptr @.str.2, i32 1838, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"at76_mac80211_start\00", [44 x i8] zeroinitializer }, align 32
@at76_mac80211_start._entry_ptr = internal global ptr @at76_mac80211_start._entry, section ".printk_index", align 4
@at76_mac80211_start._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.176, ptr @.str.2, i32 1845, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"open: submit_rx_urb failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@at76_mac80211_start._entry_ptr.179 = internal global ptr @at76_mac80211_start._entry.177, section ".printk_index", align 4
@at76_submit_rx_urb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.181, ptr @.str.2, i32 1213, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: priv->rx_urb is NULL\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"at76_submit_rx_urb\00", [45 x i8] zeroinitializer }, align 32
@at76_submit_rx_urb._entry_ptr = internal global ptr @at76_submit_rx_urb._entry, section ".printk_index", align 4
@at76_submit_rx_urb._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.181, ptr @.str.2, i32 1221, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cannot allocate rx skbuff\0A\00", [37 x i8] zeroinitializer }, align 32
@at76_submit_rx_urb._entry_ptr.184 = internal global ptr @at76_submit_rx_urb._entry.182, section ".printk_index", align 4
@at76_submit_rx_urb._entry.185 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.181, ptr @.str.2, i32 1238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017at76c50x-usb: usb_submit_urb returned -ENODEV\0A\00", [47 x i8] zeroinitializer }, align 32
@at76_submit_rx_urb._entry_ptr.187 = internal global ptr @at76_submit_rx_urb._entry.185, section ".printk_index", align 4
@at76_submit_rx_urb._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.181, ptr @.str.2, i32 1241, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rx, usb_submit_urb failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@at76_submit_rx_urb._entry_ptr.190 = internal global ptr @at76_submit_rx_urb._entry.188, section ".printk_index", align 4
@at76_submit_rx_urb._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.181, ptr @.str.2, i32 1247, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"cannot submit rx urb - please unload the driver and/or power cycle the device\0A\00", [49 x i8] zeroinitializer }, align 32
@at76_submit_rx_urb._entry_ptr.193 = internal global ptr @at76_submit_rx_urb._entry.191, section ".printk_index", align 4
@at76_startup_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.195, ptr @.str.2, i32 1359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\017at76c50x-usb: %s param: ssid %.*s (%*phD) mode %s ch %d wep %s key %d keylen %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"at76_startup_device\00", [44 x i8] zeroinitializer }, align 32
@at76_startup_device._entry_ptr = internal global ptr @at76_startup_device._entry, section ".printk_index", align 4
@.str.196 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"adhoc\00", [26 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"infra\00", [26 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@at76_startup_device._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.195, ptr @.str.2, i32 1369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\017at76c50x-usb: %s param: preamble %s rts %d retry %d frag %d txrate %s auth_mode %d\0A\00", [42 x i8] zeroinitializer }, align 32
@at76_startup_device._entry_ptr.202 = internal global ptr @at76_startup_device._entry.200, section ".printk_index", align 4
@preambles = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.219, ptr @.str.220, ptr @.str.207], [20 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1MBit\00", [26 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2MBit\00", [26 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"5.5MBit\00", [24 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"11MBit\00", [25 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auto\00", [27 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<invalid>\00", [22 x i8] zeroinitializer }, align 32
@at76_startup_device._entry.209 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.210, ptr @.str.195, ptr @.str.2, i32 1376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\017at76c50x-usb: %s param: pm_mode %d pm_period %d auth_mode %s scan_times %d %d scan_mode %s\0A\00", [34 x i8] zeroinitializer }, align 32
@at76_startup_device._entry_ptr.211 = internal global ptr @at76_startup_device._entry.209, section ".printk_index", align 4
@.str.212 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"open\00", [27 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"shared_secret\00", [18 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"active\00", [25 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"passive\00", [24 x i8] zeroinitializer }, align 32
@at76_startup_device._entry.216 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.217, ptr @.str.195, ptr @.str.2, i32 1417, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"at76_set_card_command failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@at76_startup_device._entry_ptr.218 = internal global ptr @at76_startup_device._entry.216, section ".printk_index", align 4
@.str.219 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"long\00", [27 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"short\00", [26 x i8] zeroinitializer }, align 32
@at76_set_card_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.221, ptr @.str.222, ptr @.str.2, i32 737, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017at76c50x-usb: issuing command %s (0x%02x)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"at76_set_card_command\00", [42 x i8] zeroinitializer }, align 32
@at76_set_card_command._entry_ptr = internal global ptr @at76_set_card_command._entry, section ".printk_index", align 4
@at76_set_card_command.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.162, ptr @.str.222, ptr @.str.2, ptr @.str.163, i8 0, i8 -72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.223 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CMD_SET_MIB\00", [20 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CMD_GET_MIB\00", [20 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CMD_SCAN\00", [23 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CMD_JOIN\00", [23 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CMD_START_IBSS\00", [17 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CMD_RADIO_ON\00", [19 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CMD_RADIO_OFF\00", [18 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CMD_STARTUP\00", [20 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@at76_wait_completion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.232, ptr @.str.233, ptr @.str.2, i32 777, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"at76_get_cmd_status failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"at76_wait_completion\00", [43 x i8] zeroinitializer }, align 32
@at76_wait_completion._entry_ptr = internal global ptr @at76_wait_completion._entry, section ".printk_index", align 4
@at76_wait_completion._entry.234 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.233, ptr @.str.2, i32 784, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017at76c50x-usb: %s: Waiting on cmd %d, status = %d (%s)\0A\00", [39 x i8] zeroinitializer }, align 32
@at76_wait_completion._entry_ptr.236 = internal global ptr @at76_wait_completion._entry.234, section ".printk_index", align 4
@at76_wait_completion._entry.237 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.238, ptr @.str.233, ptr @.str.2, i32 793, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"completion timeout for command %d\0A\00", [61 x i8] zeroinitializer }, align 32
@at76_wait_completion._entry_ptr.239 = internal global ptr @at76_wait_completion._entry.237, section ".printk_index", align 4
@.str.240 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CMD_STATUS_IDLE\00", [16 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CMD_STATUS_COMPLETE\00", [44 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CMD_STATUS_UNKNOWN\00", [45 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CMD_STATUS_INVALID_PARAMETER\00", [35 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"CMD_STATUS_FUNCTION_NOT_SUPPORTED\00", [62 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CMD_STATUS_TIME_OUT\00", [44 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CMD_STATUS_IN_PROGRESS\00", [41 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CMD_STATUS_HOST_FAILURE\00", [40 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CMD_STATUS_SCAN_FAILED\00", [41 x i8] zeroinitializer }, align 32
@at76_set_radio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.249, ptr @.str.250, ptr @.str.2, i32 837, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"at76_set_card_command(%d) failed: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"at76_set_radio\00", [17 x i8] zeroinitializer }, align 32
@at76_set_radio._entry_ptr = internal global ptr @at76_set_radio._entry, section ".printk_index", align 4
@at76_set_preamble._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.251, ptr @.str.252, ptr @.str.2, i32 875, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"set_mib (preamble) failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"at76_set_preamble\00", [46 x i8] zeroinitializer }, align 32
@at76_set_preamble._entry_ptr = internal global ptr @at76_set_preamble._entry, section ".printk_index", align 4
@at76_set_mib._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.253, ptr @.str.254, ptr @.str.2, i32 816, ptr @.str.255, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"set_mib: at76_wait_completion failed with %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"at76_set_mib\00", [19 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@at76_set_mib._entry_ptr = internal global ptr @at76_set_mib._entry, section ".printk_index", align 4
@at76_set_frag._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.256, ptr @.str.257, ptr @.str.2, i32 892, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"set_mib (frag threshold) failed: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"at76_set_frag\00", [18 x i8] zeroinitializer }, align 32
@at76_set_frag._entry_ptr = internal global ptr @at76_set_frag._entry, section ".printk_index", align 4
@at76_set_rts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.258, ptr @.str.259, ptr @.str.2, i32 908, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"set_mib (rts) failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"at76_set_rts\00", [19 x i8] zeroinitializer }, align 32
@at76_set_rts._entry_ptr = internal global ptr @at76_set_rts._entry, section ".printk_index", align 4
@at76_set_autorate_fallback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.260, ptr @.str.261, ptr @.str.2, i32 925, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"set_mib (autorate fallback) failed: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"at76_set_autorate_fallback\00", [37 x i8] zeroinitializer }, align 32
@at76_set_autorate_fallback._entry_ptr = internal global ptr @at76_set_autorate_fallback._entry, section ".printk_index", align 4
@at76_set_pm_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.262, ptr @.str.263, ptr @.str.2, i32 858, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"set_mib (pm_mode) failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"at76_set_pm_mode\00", [47 x i8] zeroinitializer }, align 32
@at76_set_pm_mode._entry_ptr = internal global ptr @at76_set_pm_mode._entry, section ".printk_index", align 4
@at76_dump_mib_mac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.264, ptr @.str.265, ptr @.str.2, i32 1046, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"at76_get_mib (MAC) failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"at76_dump_mib_mac\00", [46 x i8] zeroinitializer }, align 32
@at76_dump_mib_mac._entry_ptr = internal global ptr @at76_dump_mib_mac._entry, section ".printk_index", align 4
@at76_dump_mib_mac._entry.266 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.267, ptr @.str.265, ptr @.str.2, i32 1067, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [319 x i8], [65 x i8] } { [319 x i8] c"\017at76c50x-usb: %s: MIB MAC: max_tx_msdu_lifetime %d max_rx_lifetime %d frag_threshold %d rts_threshold %d cwmin %d cwmax %d short_retry_time %d long_retry_time %d scan_type %d scan_channel %d probe_delay %u min_channel_time %d max_channel_time %d listen_int %d desired_ssid %*phD desired_bssid %pM desired_bsstype %d\0A\00", [65 x i8] zeroinitializer }, align 32
@at76_dump_mib_mac._entry_ptr.268 = internal global ptr @at76_dump_mib_mac._entry.266, section ".printk_index", align 4
@at76_dump_mib_mac_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.269, ptr @.str.270, ptr @.str.2, i32 944, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"at76_get_mib (MAC_ADDR) failed: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"at76_dump_mib_mac_addr\00", [41 x i8] zeroinitializer }, align 32
@at76_dump_mib_mac_addr._entry_ptr = internal global ptr @at76_dump_mib_mac_addr._entry, section ".printk_index", align 4
@at76_dump_mib_mac_addr._entry.271 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.272, ptr @.str.270, ptr @.str.2, i32 950, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\017at76c50x-usb: %s: MIB MAC_ADDR: mac_addr %pM res 0x%x 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@at76_dump_mib_mac_addr._entry_ptr.273 = internal global ptr @at76_dump_mib_mac_addr._entry.271, section ".printk_index", align 4
@at76_dump_mib_mac_addr._entry.274 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.275, ptr @.str.270, ptr @.str.2, i32 954, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\017at76c50x-usb: %s: MIB MAC_ADDR: group addr %d: %pM, status %d\0A\00", [63 x i8] zeroinitializer }, align 32
@at76_dump_mib_mac_addr._entry_ptr.276 = internal global ptr @at76_dump_mib_mac_addr._entry.274, section ".printk_index", align 4
@at76_dump_mib_mac_mgmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.277, ptr @.str.278, ptr @.str.2, i32 1010, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"at76_get_mib (MAC_MGMT) failed: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"at76_dump_mib_mac_mgmt\00", [41 x i8] zeroinitializer }, align 32
@at76_dump_mib_mac_mgmt._entry_ptr = internal global ptr @at76_dump_mib_mac_mgmt._entry, section ".printk_index", align 4
@at76_dump_mib_mac_mgmt._entry.279 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.280, ptr @.str.278, ptr @.str.2, i32 1030, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [365 x i8], [83 x i8] } { [365 x i8] c"\017at76c50x-usb: %s: MIB MAC_MGMT: beacon_period %d CFP_max_duration %d medium_occupancy_limit %d station_id 0x%x ATIM_window %d CFP_mode %d privacy_opt_impl %d DTIM_period %d CFP_period %d current_bssid %pM current_essid %*phD current_bss_type %d pm_mode %d ibss_change %d res %d multi_domain_capability_implemented %d international_roaming %d country_string %.3s\0A\00", [83 x i8] zeroinitializer }, align 32
@at76_dump_mib_mac_mgmt._entry_ptr.281 = internal global ptr @at76_dump_mib_mac_mgmt._entry.279, section ".printk_index", align 4
@at76_dump_mib_mac_wep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.282, ptr @.str.283, ptr @.str.2, i32 973, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"at76_get_mib (MAC_WEP) failed: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"at76_dump_mib_mac_wep\00", [42 x i8] zeroinitializer }, align 32
@at76_dump_mib_mac_wep._entry_ptr = internal global ptr @at76_dump_mib_mac_wep._entry, section ".printk_index", align 4
@at76_dump_mib_mac_wep._entry.284 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.285, ptr @.str.283, ptr @.str.2, i32 984, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [142 x i8], [50 x i8] } { [142 x i8] c"\017at76c50x-usb: %s: MIB MAC_WEP: priv_invoked %u def_key_id %u key_len %u excl_unencr %u wep_icv_err %u wep_excluded %u encr_level %u key %d\0A\00", [50 x i8] zeroinitializer }, align 32
@at76_dump_mib_mac_wep._entry_ptr.286 = internal global ptr @at76_dump_mib_mac_wep._entry.284, section ".printk_index", align 4
@at76_dump_mib_mac_wep._entry.287 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.288, ptr @.str.283, ptr @.str.2, i32 992, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017at76c50x-usb: %s: MIB MAC_WEP: key %d: %*phD\0A\00", [48 x i8] zeroinitializer }, align 32
@at76_dump_mib_mac_wep._entry_ptr.289 = internal global ptr @at76_dump_mib_mac_wep._entry.287, section ".printk_index", align 4
@at76_dump_mib_mdomain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.290, ptr @.str.291, ptr @.str.2, i32 1142, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"at76_get_mib (MDOMAIN) failed: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"at76_dump_mib_mdomain\00", [42 x i8] zeroinitializer }, align 32
@at76_dump_mib_mdomain._entry_ptr = internal global ptr @at76_dump_mib_mdomain._entry, section ".printk_index", align 4
@at76_dump_mib_mdomain._entry.292 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.293, ptr @.str.291, ptr @.str.2, i32 1148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017at76c50x-usb: %s: MIB MDOMAIN: channel_list %*phD\0A\00", [43 x i8] zeroinitializer }, align 32
@at76_dump_mib_mdomain._entry_ptr.294 = internal global ptr @at76_dump_mib_mdomain._entry.292, section ".printk_index", align 4
@at76_dump_mib_mdomain._entry.295 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.296, ptr @.str.291, ptr @.str.2, i32 1152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017at76c50x-usb: %s: MIB MDOMAIN: tx_powerlevel %*phD\0A\00", [42 x i8] zeroinitializer }, align 32
@at76_dump_mib_mdomain._entry_ptr.297 = internal global ptr @at76_dump_mib_mdomain._entry.295, section ".printk_index", align 4
@at76_dump_mib_phy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.298, ptr @.str.299, ptr @.str.2, i32 1083, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"at76_get_mib (PHY) failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"at76_dump_mib_phy\00", [46 x i8] zeroinitializer }, align 32
@at76_dump_mib_phy._entry_ptr = internal global ptr @at76_dump_mib_phy._entry, section ".printk_index", align 4
@at76_dump_mib_phy._entry.300 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.301, ptr @.str.299, ptr @.str.2, i32 1100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [261 x i8], [91 x i8] } { [261 x i8] c"\017at76c50x-usb: %s: MIB PHY: ed_threshold %d slot_time %d sifs_time %d preamble_length %d plcp_header_length %d mpdu_max_length %d cca_mode_supported %d operation_rate_set 0x%x 0x%x 0x%x 0x%x channel_id %d current_cca_mode %d phy_type %d current_reg_domain %d\0A\00", [91 x i8] zeroinitializer }, align 32
@at76_dump_mib_phy._entry_ptr.302 = internal global ptr @at76_dump_mib_phy._entry.300, section ".printk_index", align 4
@at76_dump_mib_local._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.303, ptr @.str.304, ptr @.str.2, i32 1116, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"at76_get_mib (LOCAL) failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"at76_dump_mib_local\00", [44 x i8] zeroinitializer }, align 32
@at76_dump_mib_local._entry_ptr = internal global ptr @at76_dump_mib_local._entry, section ".printk_index", align 4
@at76_dump_mib_local._entry.305 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.306, ptr @.str.304, ptr @.str.2, i32 1125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [122 x i8], [38 x i8] } { [122 x i8] c"\017at76c50x-usb: %s: MIB LOCAL: beacon_enable %d txautorate_fallback %d ssid_size %d promiscuous_mode %d preamble_type %d\0A\00", [38 x i8] zeroinitializer }, align 32
@at76_dump_mib_local._entry_ptr.307 = internal global ptr @at76_dump_mib_local._entry.305, section ".printk_index", align 4
@at76_mac80211_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.308, ptr @.str.2, i32 1863, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"at76_mac80211_stop\00", [45 x i8] zeroinitializer }, align 32
@at76_mac80211_stop._entry_ptr = internal global ptr @at76_mac80211_stop._entry, section ".printk_index", align 4
@at76_add_interface._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.309, ptr @.str.2, i32 1890, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"at76_add_interface\00", [45 x i8] zeroinitializer }, align 32
@at76_add_interface._entry_ptr = internal global ptr @at76_add_interface._entry, section ".printk_index", align 4
@at76_remove_interface._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.310, ptr @.str.2, i32 1912, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"at76_remove_interface\00", [42 x i8] zeroinitializer }, align 32
@at76_remove_interface._entry_ptr = internal global ptr @at76_remove_interface._entry, section ".printk_index", align 4
@at76_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.311, ptr @.str.312, ptr @.str.2, i32 2016, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017at76c50x-usb: %s(): channel %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"at76_config\00", [20 x i8] zeroinitializer }, align 32
@at76_config._entry_ptr = internal global ptr @at76_config._entry, section ".printk_index", align 4
@at76_config._entry.313 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.314, ptr @.str.312, ptr @.str.2, i32 2017, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017at76c50x-usb: bssid:\0A\00", [40 x i8] zeroinitializer }, align 32
@at76_config._entry_ptr.315 = internal global ptr @at76_config._entry.313, section ".printk_index", align 4
@at76_config.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.162, ptr @.str.312, ptr @.str.2, ptr @.str.163, i8 1, i8 -8, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@at76_join._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.316, ptr @.str.317, ptr @.str.2, i32 1689, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017at76c50x-usb: %s: sending CMD_JOIN\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.317 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"at76_join\00", [22 x i8] zeroinitializer }, align 32
@at76_join._entry_ptr = internal global ptr @at76_join._entry, section ".printk_index", align 4
@at76_join._entry.318 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.217, ptr @.str.317, ptr @.str.2, i32 1695, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@at76_join._entry_ptr.319 = internal global ptr @at76_join._entry.318, section ".printk_index", align 4
@at76_join._entry.320 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.321, ptr @.str.317, ptr @.str.2, i32 1700, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017at76c50x-usb: %s: CMD_JOIN returned: 0x%02x\0A\00", [49 x i8] zeroinitializer }, align 32
@at76_join._entry_ptr.322 = internal global ptr @at76_join._entry.320, section ".printk_index", align 4
@at76_join._entry.323 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.324, ptr @.str.317, ptr @.str.2, i32 1703, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.324 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"at76_wait_completion failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@at76_join._entry_ptr.325 = internal global ptr @at76_join._entry.323, section ".printk_index", align 4
@at76_bss_info_changed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.326, ptr @.str.327, ptr @.str.2, i32 2040, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017at76c50x-usb: %s():\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.327 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"at76_bss_info_changed\00", [42 x i8] zeroinitializer }, align 32
@at76_bss_info_changed._entry_ptr = internal global ptr @at76_bss_info_changed._entry, section ".printk_index", align 4
@at76_bss_info_changed._entry.328 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.314, ptr @.str.327, ptr @.str.2, i32 2045, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@at76_bss_info_changed._entry_ptr.329 = internal global ptr @at76_bss_info_changed._entry.328, section ".printk_index", align 4
@at76_bss_info_changed.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.162, ptr @.str.327, ptr @.str.2, ptr @.str.163, i8 1, i8 -1, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@at76_configure_filter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.330, ptr @.str.331, ptr @.str.2, i32 2068, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.330 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\017at76c50x-usb: %s(): changed_flags=0x%08x total_flags=0x%08x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.331 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"at76_configure_filter\00", [42 x i8] zeroinitializer }, align 32
@at76_configure_filter._entry_ptr = internal global ptr @at76_configure_filter._entry, section ".printk_index", align 4
@at76_set_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.332, ptr @.str.333, ptr @.str.2, i32 2141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.332 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\017at76c50x-usb: %s(): cmd %d key->cipher %d key->keyidx %d key->keylen %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.333 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"at76_set_key\00", [19 x i8] zeroinitializer }, align 32
@at76_set_key._entry_ptr = internal global ptr @at76_set_key._entry, section ".printk_index", align 4
@at76_set_wep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.334, ptr @.str.335, ptr @.str.2, i32 2126, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.334 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"set_mib (wep) failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.335 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"at76_set_wep\00", [19 x i8] zeroinitializer }, align 32
@at76_set_wep._entry_ptr = internal global ptr @at76_set_wep._entry, section ".printk_index", align 4
@at76_hw_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.326, ptr @.str.336, ptr @.str.2, i32 1963, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.336 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"at76_hw_scan\00", [19 x i8] zeroinitializer }, align 32
@at76_hw_scan._entry_ptr = internal global ptr @at76_hw_scan._entry, section ".printk_index", align 4
@at76_hw_scan._entry.337 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.338, ptr @.str.336, ptr @.str.2, i32 1993, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.338 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017at76c50x-usb: %s: sending CMD_SCAN\0A\00", [58 x i8] zeroinitializer }, align 32
@at76_hw_scan._entry_ptr.339 = internal global ptr @at76_hw_scan._entry.337, section ".printk_index", align 4
@at76_hw_scan._entry.340 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.341, ptr @.str.336, ptr @.str.2, i32 1997, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.341 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CMD_SCAN failed: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@at76_hw_scan._entry_ptr.342 = internal global ptr @at76_hw_scan._entry.340, section ".printk_index", align 4
@at76_work_set_promisc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.343, ptr @.str.344, ptr @.str.2, i32 1485, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.343 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"set_mib (promiscuous_mode) failed: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.344 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"at76_work_set_promisc\00", [42 x i8] zeroinitializer }, align 32
@at76_work_set_promisc._entry_ptr = internal global ptr @at76_work_set_promisc._entry, section ".printk_index", align 4
@at76_dwork_hw_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.345, ptr @.str.346, ptr @.str.2, i32 1930, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.345 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017at76c50x-usb: %s: CMD_SCAN status 0x%02x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.346 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"at76_dwork_hw_scan\00", [45 x i8] zeroinitializer }, align 32
@at76_dwork_hw_scan._entry_ptr = internal global ptr @at76_dwork_hw_scan._entry, section ".printk_index", align 4
@at76_rx_tasklet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.347, ptr @.str.348, ptr @.str.2, i32 1555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.347 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017at76c50x-usb: device unplugged\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.348 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"at76_rx_tasklet\00", [16 x i8] zeroinitializer }, align 32
@at76_rx_tasklet._entry_ptr = internal global ptr @at76_rx_tasklet._entry, section ".printk_index", align 4
@at76_rx_tasklet._entry.349 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.350, ptr @.str.348, ptr @.str.2, i32 1556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.350 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017at76c50x-usb: urb status %d\0A\00", [33 x i8] zeroinitializer }, align 32
@at76_rx_tasklet._entry_ptr.351 = internal global ptr @at76_rx_tasklet._entry.349, section ".printk_index", align 4
@at76_rx_tasklet._entry.352 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.353, ptr @.str.348, ptr @.str.2, i32 1570, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.353 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\017at76c50x-usb: %s %s: - nonzero Rx bulk status received: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@at76_rx_tasklet._entry_ptr.354 = internal global ptr @at76_rx_tasklet._entry.352, section ".printk_index", align 4
@at76_rx_tasklet._entry.355 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.356, ptr @.str.348, ptr @.str.2, i32 1577, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.356 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\017at76c50x-usb: %s: rx frame: rate %d rssi %d noise %d link %d\0A\00", [32 x i8] zeroinitializer }, align 32
@at76_rx_tasklet._entry_ptr.357 = internal global ptr @at76_rx_tasklet._entry.355, section ".printk_index", align 4
@at76_rx_tasklet._entry.358 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.359, ptr @.str.348, ptr @.str.2, i32 1582, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.359 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017at76c50x-usb: RX: len=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@at76_rx_tasklet._entry_ptr.360 = internal global ptr @at76_rx_tasklet._entry.358, section ".printk_index", align 4
@at76_rx_tasklet.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.162, ptr @.str.348, ptr @.str.2, ptr @.str.163, i8 1, i8 -117, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@at76_rx_tasklet._entry.361 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.362, ptr @.str.348, ptr @.str.2, i32 1591, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.362 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017at76c50x-usb: calling ieee80211_rx_irqsafe(): %d/%d\0A\00", [41 x i8] zeroinitializer }, align 32
@at76_rx_tasklet._entry_ptr.363 = internal global ptr @at76_rx_tasklet._entry.361, section ".printk_index", align 4
@at76_init_new_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.365, ptr @.str.366, ptr @.str.2, i32 2325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.365 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017at76c50x-usb: USB interface: %d endpoints\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.366 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"at76_init_new_device\00", [43 x i8] zeroinitializer }, align 32
@at76_init_new_device._entry_ptr = internal global ptr @at76_init_new_device._entry, section ".printk_index", align 4
@at76_init_new_device._entry.367 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.368, ptr @.str.366, ptr @.str.2, i32 2334, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.368 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cannot get MAC address\0A\00", [40 x i8] zeroinitializer }, align 32
@at76_init_new_device._entry_ptr.369 = internal global ptr @at76_init_new_device._entry.367, section ".printk_index", align 4
@at76_supported_band = internal global { %struct.ieee80211_supported_band, [36 x i8] } { %struct.ieee80211_supported_band { ptr @at76_channels, ptr @at76_rates, i32 0, i32 14, i32 4, %struct.ieee80211_sta_ht_cap zeroinitializer, %struct.ieee80211_sta_vht_cap zeroinitializer, %struct.ieee80211_sta_s1g_cap zeroinitializer, %struct.ieee80211_edmg zeroinitializer, i16 0, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.370 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%d.%d.%d-%d\00", [20 x i8] zeroinitializer }, align 32
@at76_init_new_device._entry.371 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.372, ptr @.str.366, ptr @.str.2, i32 2379, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.372 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013cannot register mac80211 hw (status %d)!\0A\00", [52 x i8] zeroinitializer }, align 32
@at76_init_new_device._entry_ptr.373 = internal global ptr @at76_init_new_device._entry.371, section ".printk_index", align 4
@at76_init_new_device._entry.374 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.375, ptr @.str.366, ptr @.str.2, i32 2388, ptr @.str.255, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.375 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"USB %s, MAC %pM, firmware %d.%d.%d-%d\0A\00", [57 x i8] zeroinitializer }, align 32
@at76_init_new_device._entry_ptr.376 = internal global ptr @at76_init_new_device._entry.374, section ".printk_index", align 4
@at76_init_new_device._entry.377 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.378, ptr @.str.366, ptr @.str.2, i32 2390, ptr @.str.255, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.378 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"regulatory domain 0x%02x: %s\0A\00", [34 x i8] zeroinitializer }, align 32
@at76_init_new_device._entry_ptr.379 = internal global ptr @at76_init_new_device._entry.377, section ".printk_index", align 4
@at76_alloc_urbs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.380, ptr @.str.381, ptr @.str.2, i32 2235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.380 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017at76c50x-usb: %s: ENTER\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.381 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"at76_alloc_urbs\00", [16 x i8] zeroinitializer }, align 32
@at76_alloc_urbs._entry_ptr = internal global ptr @at76_alloc_urbs._entry, section ".printk_index", align 4
@at76_alloc_urbs._entry.382 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.383, ptr @.str.381, ptr @.str.2, i32 2238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.383 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017at76c50x-usb: %s: NumEndpoints %d \0A\00", [58 x i8] zeroinitializer }, align 32
@at76_alloc_urbs._entry_ptr.384 = internal global ptr @at76_alloc_urbs._entry.382, section ".printk_index", align 4
@at76_alloc_urbs._entry.385 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.386, ptr @.str.381, ptr @.str.2, i32 2248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.386 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017at76c50x-usb: %s: %d. endpoint: addr 0x%x attr 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@at76_alloc_urbs._entry_ptr.387 = internal global ptr @at76_alloc_urbs._entry.385, section ".printk_index", align 4
@at76_alloc_urbs._entry.388 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.389, ptr @.str.381, ptr @.str.2, i32 2258, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.389 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bulk endpoints missing\0A\00", [40 x i8] zeroinitializer }, align 32
@at76_alloc_urbs._entry_ptr.390 = internal global ptr @at76_alloc_urbs._entry.388, section ".printk_index", align 4
@at76_alloc_urbs._entry.391 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.392, ptr @.str.381, ptr @.str.2, i32 2268, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.392 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cannot allocate URB\0A\00", [43 x i8] zeroinitializer }, align 32
@at76_alloc_urbs._entry_ptr.393 = internal global ptr @at76_alloc_urbs._entry.391, section ".printk_index", align 4
@at76_alloc_urbs._entry.394 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.395, ptr @.str.381, ptr @.str.2, i32 2277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.395 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017at76c50x-usb: %s: EXIT\0A\00", [38 x i8] zeroinitializer }, align 32
@at76_alloc_urbs._entry_ptr.396 = internal global ptr @at76_alloc_urbs._entry.394, section ".printk_index", align 4
@at76_get_hw_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.397, ptr @.str.398, ptr @.str.2, i32 640, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.397 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cannot get HW Config (error %d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.398 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"at76_get_hw_config\00", [45 x i8] zeroinitializer }, align 32
@at76_get_hw_config._entry_ptr = internal global ptr @at76_get_hw_config._entry, section ".printk_index", align 4
@at76_get_reg_domain.fd_tab = internal constant { [9 x %struct.reg_domain], [52 x i8] } { [9 x %struct.reg_domain] [%struct.reg_domain { i16 16, ptr @.str.399, i32 2047 }, %struct.reg_domain { i16 32, ptr @.str.400, i32 2047 }, %struct.reg_domain { i16 48, ptr @.str.401, i32 8191 }, %struct.reg_domain { i16 49, ptr @.str.402, i32 1536 }, %struct.reg_domain { i16 50, ptr @.str.403, i32 7680 }, %struct.reg_domain { i16 64, ptr @.str.404, i32 8192 }, %struct.reg_domain { i16 65, ptr @.str.405, i32 16383 }, %struct.reg_domain { i16 80, ptr @.str.406, i32 1020 }, %struct.reg_domain { i16 0, ptr @.str.407, i32 -1 }], [52 x i8] zeroinitializer }, align 32
@.str.399 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FCC (USA)\00", [22 x i8] zeroinitializer }, align 32
@.str.400 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IC (Canada)\00", [20 x i8] zeroinitializer }, align 32
@.str.401 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ETSI (most of Europe)\00", [42 x i8] zeroinitializer }, align 32
@.str.402 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Spain\00", [26 x i8] zeroinitializer }, align 32
@.str.403 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"France\00", [25 x i8] zeroinitializer }, align 32
@.str.404 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MKK (Japan)\00", [20 x i8] zeroinitializer }, align 32
@.str.405 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MKK1 (Japan)\00", [19 x i8] zeroinitializer }, align 32
@.str.406 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Israel\00", [25 x i8] zeroinitializer }, align 32
@.str.407 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<unknown>\00", [22 x i8] zeroinitializer }, align 32
@at76_channels = internal global { [14 x %struct.ieee80211_channel], [208 x i8] } { [14 x %struct.ieee80211_channel] [%struct.ieee80211_channel { i32 0, i32 2412, i16 0, i16 1, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2417, i16 0, i16 2, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2422, i16 0, i16 3, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2427, i16 0, i16 4, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2432, i16 0, i16 5, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2437, i16 0, i16 6, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2442, i16 0, i16 7, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2447, i16 0, i16 8, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2452, i16 0, i16 9, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2457, i16 0, i16 10, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2462, i16 0, i16 11, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2467, i16 0, i16 12, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2472, i16 0, i16 13, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.ieee80211_channel { i32 0, i32 2484, i16 0, i16 14, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }], [208 x i8] zeroinitializer }, align 32
@at76_rates = internal global { [4 x %struct.ieee80211_rate], [48 x i8] } { [4 x %struct.ieee80211_rate] [%struct.ieee80211_rate { i32 0, i16 10, i16 0, i16 0 }, %struct.ieee80211_rate { i32 0, i16 20, i16 1, i16 0 }, %struct.ieee80211_rate { i32 0, i16 55, i16 2, i16 0 }, %struct.ieee80211_rate { i32 0, i16 110, i16 3, i16 0 }], [48 x i8] zeroinitializer }, align 32
@at76_delete_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.380, ptr @.str.408, ptr @.str.2, i32 2398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.408 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"at76_delete_device\00", [45 x i8] zeroinitializer }, align 32
@at76_delete_device._entry_ptr = internal global ptr @at76_delete_device._entry, section ".printk_index", align 4
@at76_delete_device._entry.409 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.410, ptr @.str.408, ptr @.str.2, i32 2417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.410 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017at76c50x-usb: %s: unlinked urbs\0A\00", [61 x i8] zeroinitializer }, align 32
@at76_delete_device._entry_ptr.411 = internal global ptr @at76_delete_device._entry.409, section ".printk_index", align 4
@at76_delete_device._entry.412 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.413, ptr @.str.408, ptr @.str.2, i32 2426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.413 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017at76c50x-usb: %s: before freeing priv/ieee80211_hw\0A\00", [42 x i8] zeroinitializer }, align 32
@at76_delete_device._entry_ptr.414 = internal global ptr @at76_delete_device._entry.412, section ".printk_index", align 4
@at76_delete_device._entry.415 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.395, ptr @.str.408, ptr @.str.2, i32 2429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@at76_delete_device._entry_ptr.416 = internal global ptr @at76_delete_device._entry.415, section ".printk_index", align 4
@at76_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.417, ptr @.str.418, ptr @.str.2, i32 2554, ptr @.str.255, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.417 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"disconnecting\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.418 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"at76_disconnect\00", [16 x i8] zeroinitializer }, align 32
@at76_disconnect._entry_ptr = internal global ptr @at76_disconnect._entry, section ".printk_index", align 4
@at76_disconnect._entry.419 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.420, ptr @.str.418, ptr @.str.2, i32 2557, ptr @.str.255, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.420 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"disconnected\0A\00", [18 x i8] zeroinitializer }, align 32
@at76_disconnect._entry_ptr.421 = internal global ptr @at76_disconnect._entry.419, section ".printk_index", align 4
@.str.422 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"atmel_at76c503-i3861.bin\00", [39 x i8] zeroinitializer }, align 32
@.str.423 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"atmel_at76c503-i3863.bin\00", [39 x i8] zeroinitializer }, align 32
@.str.424 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"atmel_at76c503-rfmd.bin\00", [40 x i8] zeroinitializer }, align 32
@.str.425 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"atmel_at76c503-rfmd-acc.bin\00", [36 x i8] zeroinitializer }, align 32
@.str.426 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"atmel_at76c505-rfmd.bin\00", [40 x i8] zeroinitializer }, align 32
@.str.427 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"atmel_at76c505-rfmd2958.bin\00", [36 x i8] zeroinitializer }, align 32
@.str.428 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"atmel_at76c505a-rfmd2958.bin\00", [35 x i8] zeroinitializer }, align 32
@.str.429 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"atmel_at76c505amx-rfmd.bin\00", [37 x i8] zeroinitializer }, align 32
@at76_mod_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.430, ptr @.str.431, ptr @.str.2, i32 2573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.430 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016Atmel at76x USB Wireless LAN Driver 0.17 loading\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.431 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"at76_mod_init\00", [18 x i8] zeroinitializer }, align 32
@at76_mod_init._entry_ptr = internal global ptr @at76_mod_init._entry, section ".printk_index", align 4
@at76_mod_init._entry.432 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.433, ptr @.str.431, ptr @.str.2, i32 2579, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.433 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013at76c50x-usb: usb_register failed (status %d)\0A\00", [47 x i8] zeroinitializer }, align 32
@at76_mod_init._entry_ptr.434 = internal global ptr @at76_mod_init._entry.432, section ".printk_index", align 4
@.str.435 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"at76_usb-tx\00", [20 x i8] zeroinitializer }, align 32
@switch.table.at76_mac80211_start = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206], [16 x i8] zeroinitializer }, align 32
@switch.table.at76_set_card_command = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.231, ptr @.str.231, ptr @.str.231, ptr @.str.230], [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.436 = internal global [10 x i64] [i64 8, i64 8, i64 16, i64 32, i64 48, i64 49, i64 50, i64 64, i64 65, i64 80]
@__sancov_gen_cov_switch_values.437 = internal global [11 x i64] [i64 9, i64 8, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.438 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.439 = internal global [4 x i64] [i64 2, i64 16, i64 20480, i64 32768]
@__sancov_gen_cov_switch_values.440 = internal global [4 x i64] [i64 2, i64 32, i64 1027073, i64 1027077]
@__sancov_gen_cov_switch_values.441 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.442 = internal global [11 x i64] [i64 9, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 7, i64 8, i64 240, i64 255]
@__sancov_gen_cov_switch_values.443 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 8]
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 2589, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant [12 x i8] c"at76_driver\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 2561, i32 26 }
@___asan_gen_.459 = private unnamed_addr constant [10 x i8] c"firmwares\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 106, i32 23 }
@___asan_gen_.462 = private unnamed_addr constant [11 x i8] c"ledtrig_tx\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 518, i32 1 }
@___asan_gen_.465 = private unnamed_addr constant [11 x i8] c"at76_debug\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 101, i32 13 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 2562, i32 10 }
@___asan_gen_.471 = private unnamed_addr constant [10 x i8] c"dev_table\00", align 1
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 128, i32 35 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 2461, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 2467, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 2476, i32 3 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 2480, i32 4 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 2505, i32 3 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 2515, i32 4 }
@___asan_gen_.522 = private unnamed_addr constant [9 x i8] c"fw_mutex\00", align 1
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1613, i32 3 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1617, i32 2 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1620, i32 3 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1622, i32 3 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1627, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1631, i32 3 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1639, i32 3 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1658, i32 2 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1662, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1665, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 104, i32 8 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1323, i32 3 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1328, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1334, i32 4 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1340, i32 2 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 373, i32 2 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 377, i32 3 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 404, i32 5 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 413, i32 4 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 420, i32 5 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 426, i32 4 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 429, i32 4 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 434, i32 4 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 437, i32 4 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 441, i32 4 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 451, i32 5 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 458, i32 4 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 473, i32 4 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 478, i32 4 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 483, i32 4 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 488, i32 4 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 492, i32 4 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 497, i32 4 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1267, i32 2 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1270, i32 3 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1278, i32 2 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1284, i32 3 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1289, i32 4 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1301, i32 3 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1308, i32 3 }
@___asan_gen_.774 = private unnamed_addr constant [9 x i8] c"at76_ops\00", align 1
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 2180, i32 35 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 2201, i32 3 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 2211, i32 2 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 2212, i32 2 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 2213, i32 2 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 2214, i32 2 }
@___asan_gen_.816 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 2215, i32 2 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1770, i32 2 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1773, i32 3 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1813, i32 2 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1818, i32 2 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1824, i32 3 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1826, i32 4 }
@___asan_gen_.867 = private unnamed_addr constant [12 x i8] c"tx_activity\00", align 1
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 515, i32 12 }
@___asan_gen_.870 = private unnamed_addr constant [17 x i8] c"ledtrig_tx_timer\00", align 1
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 517, i32 8 }
@___asan_gen_.876 = private unnamed_addr constant [16 x i8] c"tx_lastactivity\00", align 1
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 522, i32 13 }
@___asan_gen_.880 = private unnamed_addr constant [26 x i8] c"../include/net/mac80211.h\00", align 1
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.880, i32 2737, i32 6 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1733, i32 2 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1746, i32 3 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1838, i32 2 }
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1844, i32 3 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1212, i32 3 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1220, i32 4 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1237, i32 4 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1240, i32 4 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1246, i32 3 }
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1353, i32 2 }
@___asan_gen_.966 = private unnamed_addr constant [10 x i8] c"preambles\00", align 1
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 269, i32 26 }
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1360, i32 2 }
@___asan_gen_.1004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1370, i32 2 }
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1416, i32 3 }
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 269, i32 42 }
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 269, i32 50 }
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 735, i32 2 }
@___asan_gen_.1028 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 707, i32 3 }
@___asan_gen_.1031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 708, i32 3 }
@___asan_gen_.1034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 709, i32 3 }
@___asan_gen_.1037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 710, i32 3 }
@___asan_gen_.1040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 711, i32 3 }
@___asan_gen_.1043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 712, i32 3 }
@___asan_gen_.1046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 713, i32 3 }
@___asan_gen_.1049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 714, i32 3 }
@___asan_gen_.1052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 717, i32 9 }
@___asan_gen_.1061 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 775, i32 4 }
@___asan_gen_.1067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 781, i32 3 }
@___asan_gen_.1073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 792, i32 4 }
@___asan_gen_.1076 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 752, i32 3 }
@___asan_gen_.1079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 753, i32 3 }
@___asan_gen_.1082 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 754, i32 3 }
@___asan_gen_.1085 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 755, i32 3 }
@___asan_gen_.1088 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 756, i32 3 }
@___asan_gen_.1091 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 757, i32 3 }
@___asan_gen_.1094 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 758, i32 3 }
@___asan_gen_.1097 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 759, i32 3 }
@___asan_gen_.1100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 760, i32 3 }
@___asan_gen_.1109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 836, i32 3 }
@___asan_gen_.1118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 874, i32 3 }
@___asan_gen_.1130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 814, i32 3 }
@___asan_gen_.1139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 891, i32 3 }
@___asan_gen_.1148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 908, i32 3 }
@___asan_gen_.1157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 924, i32 3 }
@___asan_gen_.1166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 857, i32 3 }
@___asan_gen_.1175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1045, i32 3 }
@___asan_gen_.1181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1050, i32 2 }
@___asan_gen_.1190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 943, i32 3 }
@___asan_gen_.1196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 948, i32 2 }
@___asan_gen_.1202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 952, i32 3 }
@___asan_gen_.1211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1009, i32 3 }
@___asan_gen_.1217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1014, i32 2 }
@___asan_gen_.1226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 972, i32 3 }
@___asan_gen_.1232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 977, i32 2 }
@___asan_gen_.1238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 990, i32 3 }
@___asan_gen_.1247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1141, i32 3 }
@___asan_gen_.1253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1146, i32 2 }
@___asan_gen_.1259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1150, i32 2 }
@___asan_gen_.1268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1082, i32 3 }
@___asan_gen_.1274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1087, i32 2 }
@___asan_gen_.1283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1115, i32 3 }
@___asan_gen_.1289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1120, i32 2 }
@___asan_gen_.1295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1863, i32 2 }
@___asan_gen_.1301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1890, i32 2 }
@___asan_gen_.1307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1912, i32 2 }
@___asan_gen_.1316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 2015, i32 2 }
@___asan_gen_.1322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 2017, i32 2 }
@___asan_gen_.1331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1689, i32 2 }
@___asan_gen_.1334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1694, i32 3 }
@___asan_gen_.1340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1700, i32 2 }
@___asan_gen_.1346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1702, i32 3 }
@___asan_gen_.1355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 2040, i32 2 }
@___asan_gen_.1358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 2045, i32 2 }
@___asan_gen_.1367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 2066, i32 2 }
@___asan_gen_.1376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 2139, i32 2 }
@___asan_gen_.1385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 2125, i32 3 }
@___asan_gen_.1391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1963, i32 2 }
@___asan_gen_.1397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1993, i32 2 }
@___asan_gen_.1403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1997, i32 3 }
@___asan_gen_.1412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1484, i32 3 }
@___asan_gen_.1421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1930, i32 2 }
@___asan_gen_.1430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1555, i32 3 }
@___asan_gen_.1436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1556, i32 3 }
@___asan_gen_.1442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1567, i32 4 }
@___asan_gen_.1448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1574, i32 2 }
@___asan_gen_.1454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1581, i32 2 }
@___asan_gen_.1460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 1590, i32 2 }
@___asan_gen_.1469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 2324, i32 2 }
@___asan_gen_.1475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 2334, i32 3 }
@___asan_gen_.1476 = private unnamed_addr constant [20 x i8] c"at76_supported_band\00", align 1
@___asan_gen_.1478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 2306, i32 40 }
@___asan_gen_.1481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 2368, i32 35 }
@___asan_gen_.1487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 2378, i32 3 }
@___asan_gen_.1493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 2385, i32 2 }
@___asan_gen_.1499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 2389, i32 2 }
@___asan_gen_.1508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 2235, i32 2 }
@___asan_gen_.1514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 2237, i32 2 }
@___asan_gen_.1520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 2246, i32 3 }
@___asan_gen_.1526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 2258, i32 3 }
@___asan_gen_.1532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 2268, i32 3 }
@___asan_gen_.1538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 2277, i32 2 }
@___asan_gen_.1547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 639, i32 3 }
@___asan_gen_.1548 = private unnamed_addr constant [7 x i8] c"fd_tab\00", align 1
@___asan_gen_.1550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 648, i32 33 }
@___asan_gen_.1553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 649, i32 11 }
@___asan_gen_.1556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 650, i32 11 }
@___asan_gen_.1559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 651, i32 11 }
@___asan_gen_.1562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 652, i32 11 }
@___asan_gen_.1565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 653, i32 11 }
@___asan_gen_.1568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 654, i32 11 }
@___asan_gen_.1571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 655, i32 11 }
@___asan_gen_.1574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 656, i32 11 }
@___asan_gen_.1577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 657, i32 11 }
@___asan_gen_.1578 = private unnamed_addr constant [14 x i8] c"at76_channels\00", align 1
@___asan_gen_.1580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 2289, i32 33 }
@___asan_gen_.1581 = private unnamed_addr constant [11 x i8] c"at76_rates\00", align 1
@___asan_gen_.1583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 2282, i32 30 }
@___asan_gen_.1589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 2398, i32 2 }
@___asan_gen_.1595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 2417, i32 2 }
@___asan_gen_.1601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 2425, i32 2 }
@___asan_gen_.1604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 2429, i32 2 }
@___asan_gen_.1613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 2554, i32 2 }
@___asan_gen_.1619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 2557, i32 2 }
@___asan_gen_.1622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 108, i32 26 }
@___asan_gen_.1625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 109, i32 26 }
@___asan_gen_.1628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 110, i32 18 }
@___asan_gen_.1631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 111, i32 22 }
@___asan_gen_.1634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 112, i32 18 }
@___asan_gen_.1637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 113, i32 23 }
@___asan_gen_.1640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 114, i32 19 }
@___asan_gen_.1643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 115, i32 21 }
@___asan_gen_.1652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 2573, i32 2 }
@___asan_gen_.1653 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 2578, i32 3 }
@___asan_gen_.1659 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1660 = private constant [45 x i8] c"../drivers/net/wireless/atmel/at76c50x-usb.c\00", align 1
@___asan_gen_.1661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1660, i32 2581, i32 31 }
@___asan_gen_.1662 = private unnamed_addr constant [33 x i8] c"switch.table.at76_mac80211_start\00", align 1
@___asan_gen_.1663 = private unnamed_addr constant [35 x i8] c"switch.table.at76_set_card_command\00", align 1
@llvm.compiler.used = appending global [573 x ptr] [ptr @__UNIQUE_ID_author373, ptr @__UNIQUE_ID_author374, ptr @__UNIQUE_ID_author375, ptr @__UNIQUE_ID_author376, ptr @__UNIQUE_ID_author377, ptr @__UNIQUE_ID_author378, ptr @__UNIQUE_ID_author379, ptr @__UNIQUE_ID_author380, ptr @__UNIQUE_ID_author381, ptr @__UNIQUE_ID_debug371, ptr @__UNIQUE_ID_debugtype370, ptr @__UNIQUE_ID_description382, ptr @__UNIQUE_ID_file383, ptr @__UNIQUE_ID_firmware353, ptr @__UNIQUE_ID_firmware354, ptr @__UNIQUE_ID_firmware355, ptr @__UNIQUE_ID_firmware356, ptr @__UNIQUE_ID_firmware357, ptr @__UNIQUE_ID_firmware358, ptr @__UNIQUE_ID_firmware359, ptr @__UNIQUE_ID_firmware360, ptr @__UNIQUE_ID_license384, ptr @__exitcall_at76_mod_exit, ptr @__initcall__kmod_at76c50x_usb__372_2599_at76_mod_init6, ptr @__param_debug, ptr @at76_add_interface._entry, ptr @at76_add_interface._entry_ptr, ptr @at76_alloc_new_device._entry, ptr @at76_alloc_new_device._entry_ptr, ptr @at76_alloc_urbs._entry, ptr @at76_alloc_urbs._entry.382, ptr @at76_alloc_urbs._entry.385, ptr @at76_alloc_urbs._entry.388, ptr @at76_alloc_urbs._entry.391, ptr @at76_alloc_urbs._entry.394, ptr @at76_alloc_urbs._entry_ptr, ptr @at76_alloc_urbs._entry_ptr.384, ptr @at76_alloc_urbs._entry_ptr.387, ptr @at76_alloc_urbs._entry_ptr.390, ptr @at76_alloc_urbs._entry_ptr.393, ptr @at76_alloc_urbs._entry_ptr.396, ptr @at76_bss_info_changed._entry, ptr @at76_bss_info_changed._entry.328, ptr @at76_bss_info_changed._entry_ptr, ptr @at76_bss_info_changed._entry_ptr.329, ptr @at76_config._entry, ptr @at76_config._entry.313, ptr @at76_config._entry_ptr, ptr @at76_config._entry_ptr.315, ptr @at76_configure_filter._entry, ptr @at76_configure_filter._entry_ptr, ptr @at76_delete_device._entry, ptr @at76_delete_device._entry.409, ptr @at76_delete_device._entry.412, ptr @at76_delete_device._entry.415, ptr @at76_delete_device._entry_ptr, ptr @at76_delete_device._entry_ptr.411, ptr @at76_delete_device._entry_ptr.414, ptr @at76_delete_device._entry_ptr.416, ptr @at76_disconnect._entry, ptr @at76_disconnect._entry.419, ptr @at76_disconnect._entry_ptr, ptr @at76_disconnect._entry_ptr.421, ptr @at76_dump_mib_local._entry, ptr @at76_dump_mib_local._entry.305, ptr @at76_dump_mib_local._entry_ptr, ptr @at76_dump_mib_local._entry_ptr.307, ptr @at76_dump_mib_mac._entry, ptr @at76_dump_mib_mac._entry.266, ptr @at76_dump_mib_mac._entry_ptr, ptr @at76_dump_mib_mac._entry_ptr.268, ptr @at76_dump_mib_mac_addr._entry, ptr @at76_dump_mib_mac_addr._entry.271, ptr @at76_dump_mib_mac_addr._entry.274, ptr @at76_dump_mib_mac_addr._entry_ptr, ptr @at76_dump_mib_mac_addr._entry_ptr.273, ptr @at76_dump_mib_mac_addr._entry_ptr.276, ptr @at76_dump_mib_mac_mgmt._entry, ptr @at76_dump_mib_mac_mgmt._entry.279, ptr @at76_dump_mib_mac_mgmt._entry_ptr, ptr @at76_dump_mib_mac_mgmt._entry_ptr.281, ptr @at76_dump_mib_mac_wep._entry, ptr @at76_dump_mib_mac_wep._entry.284, ptr @at76_dump_mib_mac_wep._entry.287, ptr @at76_dump_mib_mac_wep._entry_ptr, ptr @at76_dump_mib_mac_wep._entry_ptr.286, ptr @at76_dump_mib_mac_wep._entry_ptr.289, ptr @at76_dump_mib_mdomain._entry, ptr @at76_dump_mib_mdomain._entry.292, ptr @at76_dump_mib_mdomain._entry.295, ptr @at76_dump_mib_mdomain._entry_ptr, ptr @at76_dump_mib_mdomain._entry_ptr.294, ptr @at76_dump_mib_mdomain._entry_ptr.297, ptr @at76_dump_mib_phy._entry, ptr @at76_dump_mib_phy._entry.300, ptr @at76_dump_mib_phy._entry_ptr, ptr @at76_dump_mib_phy._entry_ptr.302, ptr @at76_dwork_hw_scan._entry, ptr @at76_dwork_hw_scan._entry_ptr, ptr @at76_get_hw_config._entry, ptr @at76_get_hw_config._entry_ptr, ptr @at76_hw_scan._entry, ptr @at76_hw_scan._entry.337, ptr @at76_hw_scan._entry.340, ptr @at76_hw_scan._entry_ptr, ptr @at76_hw_scan._entry_ptr.339, ptr @at76_hw_scan._entry_ptr.342, ptr @at76_init_new_device._entry, ptr @at76_init_new_device._entry.367, ptr @at76_init_new_device._entry.371, ptr @at76_init_new_device._entry.374, ptr @at76_init_new_device._entry.377, ptr @at76_init_new_device._entry_ptr, ptr @at76_init_new_device._entry_ptr.369, ptr @at76_init_new_device._entry_ptr.373, ptr @at76_init_new_device._entry_ptr.376, ptr @at76_init_new_device._entry_ptr.379, ptr @at76_join._entry, ptr @at76_join._entry.318, ptr @at76_join._entry.320, ptr @at76_join._entry.323, ptr @at76_join._entry_ptr, ptr @at76_join._entry_ptr.319, ptr @at76_join._entry_ptr.322, ptr @at76_join._entry_ptr.325, ptr @at76_load_external_fw._entry, ptr @at76_load_external_fw._entry.120, ptr @at76_load_external_fw._entry.123, ptr @at76_load_external_fw._entry.126, ptr @at76_load_external_fw._entry.129, ptr @at76_load_external_fw._entry.132, ptr @at76_load_external_fw._entry.135, ptr @at76_load_external_fw._entry_ptr, ptr @at76_load_external_fw._entry_ptr.122, ptr @at76_load_external_fw._entry_ptr.125, ptr @at76_load_external_fw._entry_ptr.128, ptr @at76_load_external_fw._entry_ptr.131, ptr @at76_load_external_fw._entry_ptr.134, ptr @at76_load_external_fw._entry_ptr.137, ptr @at76_load_firmware._entry, ptr @at76_load_firmware._entry.26, ptr @at76_load_firmware._entry.29, ptr @at76_load_firmware._entry.32, ptr @at76_load_firmware._entry.35, ptr @at76_load_firmware._entry.38, ptr @at76_load_firmware._entry.41, ptr @at76_load_firmware._entry.44, ptr @at76_load_firmware._entry.47, ptr @at76_load_firmware._entry.50, ptr @at76_load_firmware._entry_ptr, ptr @at76_load_firmware._entry_ptr.28, ptr @at76_load_firmware._entry_ptr.31, ptr @at76_load_firmware._entry_ptr.34, ptr @at76_load_firmware._entry_ptr.37, ptr @at76_load_firmware._entry_ptr.40, ptr @at76_load_firmware._entry_ptr.43, ptr @at76_load_firmware._entry_ptr.46, ptr @at76_load_firmware._entry_ptr.49, ptr @at76_load_firmware._entry_ptr.52, ptr @at76_load_internal_fw._entry, ptr @at76_load_internal_fw._entry.57, ptr @at76_load_internal_fw._entry.60, ptr @at76_load_internal_fw._entry.63, ptr @at76_load_internal_fw._entry_ptr, ptr @at76_load_internal_fw._entry_ptr.59, ptr @at76_load_internal_fw._entry_ptr.62, ptr @at76_load_internal_fw._entry_ptr.65, ptr @at76_mac80211_start._entry, ptr @at76_mac80211_start._entry.177, ptr @at76_mac80211_start._entry_ptr, ptr @at76_mac80211_start._entry_ptr.179, ptr @at76_mac80211_stop._entry, ptr @at76_mac80211_stop._entry_ptr, ptr @at76_mac80211_tx._entry, ptr @at76_mac80211_tx._entry.153, ptr @at76_mac80211_tx._entry.156, ptr @at76_mac80211_tx._entry.159, ptr @at76_mac80211_tx._entry.164, ptr @at76_mac80211_tx._entry.167, ptr @at76_mac80211_tx._entry_ptr, ptr @at76_mac80211_tx._entry_ptr.155, ptr @at76_mac80211_tx._entry_ptr.158, ptr @at76_mac80211_tx._entry_ptr.161, ptr @at76_mac80211_tx._entry_ptr.166, ptr @at76_mac80211_tx._entry_ptr.169, ptr @at76_mac80211_tx_callback._entry, ptr @at76_mac80211_tx_callback._entry.173, ptr @at76_mac80211_tx_callback._entry_ptr, ptr @at76_mac80211_tx_callback._entry_ptr.175, ptr @at76_mod_exit, ptr @at76_mod_exit._entry, ptr @at76_mod_exit._entry_ptr, ptr @at76_mod_init._entry, ptr @at76_mod_init._entry.432, ptr @at76_mod_init._entry_ptr, ptr @at76_mod_init._entry_ptr.434, ptr @at76_probe._entry, ptr @at76_probe._entry.11, ptr @at76_probe._entry.15, ptr @at76_probe._entry.18, ptr @at76_probe._entry.21, ptr @at76_probe._entry.6, ptr @at76_probe._entry_ptr, ptr @at76_probe._entry_ptr.10, ptr @at76_probe._entry_ptr.14, ptr @at76_probe._entry_ptr.17, ptr @at76_probe._entry_ptr.20, ptr @at76_probe._entry_ptr.23, ptr @at76_remove_interface._entry, ptr @at76_remove_interface._entry_ptr, ptr @at76_rx_tasklet._entry, ptr @at76_rx_tasklet._entry.349, ptr @at76_rx_tasklet._entry.352, ptr @at76_rx_tasklet._entry.355, ptr @at76_rx_tasklet._entry.358, ptr @at76_rx_tasklet._entry.361, ptr @at76_rx_tasklet._entry_ptr, ptr @at76_rx_tasklet._entry_ptr.351, ptr @at76_rx_tasklet._entry_ptr.354, ptr @at76_rx_tasklet._entry_ptr.357, ptr @at76_rx_tasklet._entry_ptr.360, ptr @at76_rx_tasklet._entry_ptr.363, ptr @at76_set_autorate_fallback._entry, ptr @at76_set_autorate_fallback._entry_ptr, ptr @at76_set_card_command._entry, ptr @at76_set_card_command._entry_ptr, ptr @at76_set_frag._entry, ptr @at76_set_frag._entry_ptr, ptr @at76_set_key._entry, ptr @at76_set_key._entry_ptr, ptr @at76_set_mib._entry, ptr @at76_set_mib._entry_ptr, ptr @at76_set_pm_mode._entry, ptr @at76_set_pm_mode._entry_ptr, ptr @at76_set_preamble._entry, ptr @at76_set_preamble._entry_ptr, ptr @at76_set_radio._entry, ptr @at76_set_radio._entry_ptr, ptr @at76_set_rts._entry, ptr @at76_set_rts._entry_ptr, ptr @at76_set_wep._entry, ptr @at76_set_wep._entry_ptr, ptr @at76_startup_device._entry, ptr @at76_startup_device._entry.200, ptr @at76_startup_device._entry.209, ptr @at76_startup_device._entry.216, ptr @at76_startup_device._entry_ptr, ptr @at76_startup_device._entry_ptr.202, ptr @at76_startup_device._entry_ptr.211, ptr @at76_startup_device._entry_ptr.218, ptr @at76_submit_rx_urb._entry, ptr @at76_submit_rx_urb._entry.182, ptr @at76_submit_rx_urb._entry.185, ptr @at76_submit_rx_urb._entry.188, ptr @at76_submit_rx_urb._entry.191, ptr @at76_submit_rx_urb._entry_ptr, ptr @at76_submit_rx_urb._entry_ptr.184, ptr @at76_submit_rx_urb._entry_ptr.187, ptr @at76_submit_rx_urb._entry_ptr.190, ptr @at76_submit_rx_urb._entry_ptr.193, ptr @at76_usbdfu_download._entry, ptr @at76_usbdfu_download._entry.101, ptr @at76_usbdfu_download._entry.104, ptr @at76_usbdfu_download._entry.107, ptr @at76_usbdfu_download._entry.110, ptr @at76_usbdfu_download._entry.113, ptr @at76_usbdfu_download._entry.116, ptr @at76_usbdfu_download._entry.68, ptr @at76_usbdfu_download._entry.71, ptr @at76_usbdfu_download._entry.74, ptr @at76_usbdfu_download._entry.77, ptr @at76_usbdfu_download._entry.80, ptr @at76_usbdfu_download._entry.83, ptr @at76_usbdfu_download._entry.86, ptr @at76_usbdfu_download._entry.89, ptr @at76_usbdfu_download._entry.92, ptr @at76_usbdfu_download._entry.95, ptr @at76_usbdfu_download._entry.98, ptr @at76_usbdfu_download._entry_ptr, ptr @at76_usbdfu_download._entry_ptr.100, ptr @at76_usbdfu_download._entry_ptr.103, ptr @at76_usbdfu_download._entry_ptr.106, ptr @at76_usbdfu_download._entry_ptr.109, ptr @at76_usbdfu_download._entry_ptr.112, ptr @at76_usbdfu_download._entry_ptr.115, ptr @at76_usbdfu_download._entry_ptr.118, ptr @at76_usbdfu_download._entry_ptr.70, ptr @at76_usbdfu_download._entry_ptr.73, ptr @at76_usbdfu_download._entry_ptr.76, ptr @at76_usbdfu_download._entry_ptr.79, ptr @at76_usbdfu_download._entry_ptr.82, ptr @at76_usbdfu_download._entry_ptr.85, ptr @at76_usbdfu_download._entry_ptr.88, ptr @at76_usbdfu_download._entry_ptr.91, ptr @at76_usbdfu_download._entry_ptr.94, ptr @at76_usbdfu_download._entry_ptr.97, ptr @at76_wait_completion._entry, ptr @at76_wait_completion._entry.234, ptr @at76_wait_completion._entry.237, ptr @at76_wait_completion._entry_ptr, ptr @at76_wait_completion._entry_ptr.236, ptr @at76_wait_completion._entry_ptr.239, ptr @at76_work_set_promisc._entry, ptr @at76_work_set_promisc._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @at76_driver, ptr @firmwares, ptr @ledtrig_tx, ptr @at76_debug, ptr @.str.3, ptr @dev_table, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @fw_mutex, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @.str.99, ptr @.str.102, ptr @.str.105, ptr @.str.108, ptr @.str.111, ptr @.str.114, ptr @.str.117, ptr @.str.119, ptr @.str.121, ptr @.str.124, ptr @.str.127, ptr @.str.130, ptr @.str.133, ptr @.str.136, ptr @at76_ops, ptr @.str.138, ptr @.str.139, ptr @at76_alloc_new_device.__key, ptr @.str.140, ptr @at76_alloc_new_device.__key.141, ptr @.str.142, ptr @at76_alloc_new_device.__key.143, ptr @.str.144, ptr @at76_alloc_new_device.__key.145, ptr @.str.146, ptr @at76_alloc_new_device.__key.147, ptr @.str.148, ptr @at76_alloc_new_device.__key.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.154, ptr @.str.157, ptr @.str.160, ptr @.str.162, ptr @.str.163, ptr @.str.165, ptr @.str.168, ptr @tx_activity, ptr @ledtrig_tx_timer, ptr @.str.170, ptr @at76_ledtrig_tx_timerfunc.tx_lastactivity, ptr @.str.171, ptr @.str.172, ptr @.str.174, ptr @.str.176, ptr @.str.178, ptr @.str.180, ptr @.str.181, ptr @.str.183, ptr @.str.186, ptr @.str.189, ptr @.str.192, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.201, ptr @preambles, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.210, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.217, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.235, ptr @.str.238, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.267, ptr @.str.269, ptr @.str.270, ptr @.str.272, ptr @.str.275, ptr @.str.277, ptr @.str.278, ptr @.str.280, ptr @.str.282, ptr @.str.283, ptr @.str.285, ptr @.str.288, ptr @.str.290, ptr @.str.291, ptr @.str.293, ptr @.str.296, ptr @.str.298, ptr @.str.299, ptr @.str.301, ptr @.str.303, ptr @.str.304, ptr @.str.306, ptr @.str.308, ptr @.str.309, ptr @.str.310, ptr @.str.311, ptr @.str.312, ptr @.str.314, ptr @.str.316, ptr @.str.317, ptr @.str.321, ptr @.str.324, ptr @.str.326, ptr @.str.327, ptr @.str.330, ptr @.str.331, ptr @.str.332, ptr @.str.333, ptr @.str.334, ptr @.str.335, ptr @.str.336, ptr @.str.338, ptr @.str.341, ptr @.str.343, ptr @.str.344, ptr @.str.345, ptr @.str.346, ptr @.str.347, ptr @.str.348, ptr @.str.350, ptr @.str.353, ptr @.str.356, ptr @.str.359, ptr @.str.362, ptr @.str.365, ptr @.str.366, ptr @.str.368, ptr @at76_supported_band, ptr @.str.370, ptr @.str.372, ptr @.str.375, ptr @.str.378, ptr @.str.380, ptr @.str.381, ptr @.str.383, ptr @.str.386, ptr @.str.389, ptr @.str.392, ptr @.str.395, ptr @.str.397, ptr @.str.398, ptr @at76_get_reg_domain.fd_tab, ptr @.str.399, ptr @.str.400, ptr @.str.401, ptr @.str.402, ptr @.str.403, ptr @.str.404, ptr @.str.405, ptr @.str.406, ptr @.str.407, ptr @at76_channels, ptr @at76_rates, ptr @.str.408, ptr @.str.410, ptr @.str.413, ptr @.str.417, ptr @.str.418, ptr @.str.420, ptr @.str.422, ptr @.str.423, ptr @.str.424, ptr @.str.425, ptr @.str.426, ptr @.str.427, ptr @.str.428, ptr @.str.429, ptr @.str.430, ptr @.str.431, ptr @.str.433, ptr @.str.435, ptr @switch.table.at76_mac80211_start, ptr @switch.table.at76_set_card_command], section "llvm.metadata"
@0 = internal global [408 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_mod_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @firmwares to i32), i32 324, i32 416, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ledtrig_tx to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_table to i32), i32 1320, i32 1664, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_load_firmware._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_load_firmware._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_load_firmware._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_load_firmware._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_load_firmware._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_load_firmware._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_load_firmware._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_load_firmware._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_load_firmware._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_load_internal_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_load_internal_fw._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_load_internal_fw._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_load_internal_fw._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_usbdfu_download._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_usbdfu_download._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_usbdfu_download._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_usbdfu_download._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_usbdfu_download._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_usbdfu_download._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_usbdfu_download._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_usbdfu_download._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_usbdfu_download._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_usbdfu_download._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_usbdfu_download._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_usbdfu_download._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_usbdfu_download._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_usbdfu_download._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_usbdfu_download._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_usbdfu_download._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_usbdfu_download._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_usbdfu_download._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_load_external_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_load_external_fw._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_load_external_fw._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_load_external_fw._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_load_external_fw._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_load_external_fw._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_load_external_fw._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_ops to i32), i32 452, i32 576, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_alloc_new_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_alloc_new_device.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_alloc_new_device.__key.141 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_alloc_new_device.__key.143 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_alloc_new_device.__key.145 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_alloc_new_device.__key.147 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_alloc_new_device.__key.149 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_mac80211_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_mac80211_tx._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_mac80211_tx._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_mac80211_tx._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_mac80211_tx._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_mac80211_tx._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_activity to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ledtrig_tx_timer to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_ledtrig_tx_timerfunc.tx_lastactivity to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_mac80211_tx_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_mac80211_tx_callback._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_mac80211_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_mac80211_start._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_submit_rx_urb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_submit_rx_urb._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_submit_rx_urb._entry.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_submit_rx_urb._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_submit_rx_urb._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_startup_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_startup_device._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @preambles to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_startup_device._entry.209 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_startup_device._entry.216 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_set_card_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_wait_completion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_wait_completion._entry.234 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_wait_completion._entry.237 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_set_radio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_set_preamble._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_set_mib._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_set_frag._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_set_rts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_set_autorate_fallback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_set_pm_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_dump_mib_mac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_dump_mib_mac._entry.266 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 319, i32 384, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_dump_mib_mac_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_dump_mib_mac_addr._entry.271 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_dump_mib_mac_addr._entry.274 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_dump_mib_mac_mgmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_dump_mib_mac_mgmt._entry.279 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 365, i32 448, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_dump_mib_mac_wep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_dump_mib_mac_wep._entry.284 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 142, i32 192, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_dump_mib_mac_wep._entry.287 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_dump_mib_mdomain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_dump_mib_mdomain._entry.292 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_dump_mib_mdomain._entry.295 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_dump_mib_phy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_dump_mib_phy._entry.300 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 261, i32 352, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_dump_mib_local._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_dump_mib_local._entry.305 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 122, i32 160, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_mac80211_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_add_interface._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_remove_interface._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_config._entry.313 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_join._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_join._entry.318 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_join._entry.320 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_join._entry.323 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_bss_info_changed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.327 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_bss_info_changed._entry.328 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_configure_filter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.330 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.331 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_set_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.332 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.333 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_set_wep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.334 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.335 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_hw_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_hw_scan._entry.337 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.338 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_hw_scan._entry.340 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.341 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_work_set_promisc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.343 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.344 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_dwork_hw_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.345 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.346 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_rx_tasklet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.347 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.348 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_rx_tasklet._entry.349 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.350 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_rx_tasklet._entry.352 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.353 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_rx_tasklet._entry.355 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.356 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_rx_tasklet._entry.358 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.359 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_rx_tasklet._entry.361 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.362 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_init_new_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.365 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.366 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_init_new_device._entry.367 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.368 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_supported_band to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.370 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_init_new_device._entry.371 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.372 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_init_new_device._entry.374 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.375 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_init_new_device._entry.377 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.378 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_alloc_urbs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.380 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.381 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_alloc_urbs._entry.382 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.383 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_alloc_urbs._entry.385 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.386 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_alloc_urbs._entry.388 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.389 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_alloc_urbs._entry.391 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.392 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_alloc_urbs._entry.394 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.395 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_get_hw_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.397 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.398 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_get_reg_domain.fd_tab to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.1548 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.399 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.400 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.401 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.402 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.403 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.404 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.405 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.406 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.407 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_channels to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_rates to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_delete_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.408 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_delete_device._entry.409 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.410 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_delete_device._entry.412 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.413 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_delete_device._entry.415 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.417 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.418 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_disconnect._entry.419 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.420 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.422 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.423 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.424 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.425 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.426 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.427 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.428 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.429 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_mod_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.430 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.431 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at76_mod_init._entry.432 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.433 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.435 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.at76_mac80211_start to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1662 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.at76_set_card_command to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1663 to i32), i32 ptrtoint (ptr @___asan_gen_.1660 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @at76_mod_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  tail call void @usb_deregister(ptr noundef nonnull @at76_driver) #9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.03 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %fw = getelementptr [9 x %struct.fwentry], ptr @firmwares, i32 0, i32 %i.03, i32 1
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw, align 4
  tail call void @release_firmware(ptr noundef %1) #9
  %inc = add nuw nsw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %2 = load ptr, ptr @ledtrig_tx, align 4
  tail call void @led_trigger_unregister_simple(ptr noundef %2) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_unregister_simple(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @at76_mod_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.430) #12
  %call1 = tail call i32 @usb_register_driver(ptr noundef nonnull @at76_driver, ptr noundef null, ptr noundef nonnull @.str.162) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end4, label %if.else

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.433, i32 noundef %call1) #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @led_trigger_register_simple(ptr noundef nonnull @.str.435, ptr noundef nonnull @ledtrig_tx) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at76_probe(ptr noundef %interface, ptr nocapture noundef readonly %id) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %0 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_info, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -128
  %call1 = tail call ptr @usb_get_dev(ptr noundef %add.ptr.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 4) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.if.then93_crit_edge, label %if.end

entry.if.then93_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then93

if.end:                                           ; preds = %entry
  %arrayidx.i = getelementptr [9 x %struct.fwentry], ptr @firmwares, i32 0, i32 %1
  tail call void @mutex_lock_nested(ptr noundef nonnull @fw_mutex, i32 noundef 0) #9
  %loaded.i = getelementptr [9 x %struct.fwentry], ptr @firmwares, i32 0, i32 %1, i32 8
  %5 = ptrtoint ptr %loaded.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %loaded.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  %7 = load i32, ptr @at76_debug, align 4
  %and8.i = and i32 %7, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %do.body.i

do.body.i:                                        ; preds = %if.end
  br i1 %tobool9.not.i, label %do.body.i.at76_load_firmware.exit_crit_edge, label %do.end.i

do.body.i.at76_load_firmware.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_load_firmware.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #12
  br label %at76_load_firmware.exit

do.body7.i:                                       ; preds = %if.end
  br i1 %tobool9.not.i, label %do.body7.i.do.end18.i_crit_edge, label %do.end13.i

do.body7.i.do.end18.i_crit_edge:                  ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end18.i

do.end13.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %9) #12
  br label %do.end18.i

do.end18.i:                                       ; preds = %do.end13.i, %do.body7.i.do.end18.i_crit_edge
  %fw.i = getelementptr [9 x %struct.fwentry], ptr @firmwares, i32 0, i32 %1, i32 1
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %call1, i32 0, i32 15
  %call20.i = tail call i32 @request_firmware(ptr noundef %fw.i, ptr noundef %11, ptr noundef %dev.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp.i = icmp slt i32 %call20.i, 0
  br i1 %cmp.i, label %do.end24.i, label %do.body32.i

do.end24.i:                                       ; preds = %do.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.30, ptr noundef %13) #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.33) #12
  br label %at76_load_firmware.exit

do.body32.i:                                      ; preds = %do.end18.i
  %14 = load i32, ptr @at76_debug, align 4
  %and33.i = and i32 %14, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %do.body32.i.do.end43.i_crit_edge, label %do.end38.i

do.body32.i.do.end43.i_crit_edge:                 ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end43.i

do.end38.i:                                       ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #11
  %call40.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #12
  br label %do.end43.i

do.end43.i:                                       ; preds = %do.end38.i, %do.body32.i.do.end43.i_crit_edge
  %15 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fw.i, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %20)
  %cmp46.i = icmp ult i32 %20, 33
  br i1 %cmp46.i, label %do.end50.i, label %if.end54.i

do.end50.i:                                       ; preds = %do.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.39, i32 noundef %20) #12
  br label %at76_load_firmware.exit

if.end54.i:                                       ; preds = %do.end43.i
  %board_type55.i = getelementptr inbounds %struct.at76_fw_header, ptr %18, i32 0, i32 1
  %21 = ptrtoint ptr %board_type55.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %board_type55.i, align 1
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #9
  %board_type56.i = getelementptr [9 x %struct.fwentry], ptr @firmwares, i32 0, i32 %1, i32 6
  %24 = ptrtoint ptr %board_type56.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %board_type56.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %1)
  %cmp58.not.i = icmp eq i32 %23, %1
  br i1 %cmp58.not.i, label %if.end65.i, label %do.end62.i

do.end62.i:                                       ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.42, i32 noundef %1, i32 noundef %23) #12
  br label %at76_load_firmware.exit

if.end65.i:                                       ; preds = %if.end54.i
  %major.i = getelementptr inbounds %struct.at76_fw_header, ptr %18, i32 0, i32 5
  %25 = ptrtoint ptr %major.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %major.i, align 1
  %fw_version.i = getelementptr [9 x %struct.fwentry], ptr @firmwares, i32 0, i32 %1, i32 7
  %27 = ptrtoint ptr %fw_version.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %fw_version.i, align 4
  %minor.i = getelementptr inbounds %struct.at76_fw_header, ptr %18, i32 0, i32 4
  %28 = ptrtoint ptr %minor.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %minor.i, align 1
  %minor68.i = getelementptr [9 x %struct.fwentry], ptr @firmwares, i32 0, i32 %1, i32 7, i32 1
  %30 = ptrtoint ptr %minor68.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %minor68.i, align 1
  %patch.i = getelementptr inbounds %struct.at76_fw_header, ptr %18, i32 0, i32 3
  %31 = ptrtoint ptr %patch.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %patch.i, align 1
  %patch70.i = getelementptr [9 x %struct.fwentry], ptr @firmwares, i32 0, i32 %1, i32 7, i32 2
  %33 = ptrtoint ptr %patch70.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %patch70.i, align 2
  %build.i = getelementptr inbounds %struct.at76_fw_header, ptr %18, i32 0, i32 2
  %34 = ptrtoint ptr %build.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %build.i, align 1
  %build72.i = getelementptr [9 x %struct.fwentry], ptr @firmwares, i32 0, i32 %1, i32 7, i32 3
  %36 = ptrtoint ptr %build72.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %build72.i, align 1
  %str_offset.i = getelementptr inbounds %struct.at76_fw_header, ptr %18, i32 0, i32 6
  %37 = ptrtoint ptr %str_offset.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %str_offset.i, align 1
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #9
  %add.ptr.i138 = getelementptr i8, ptr %18, i32 %39
  %int_fw_offset.i = getelementptr inbounds %struct.at76_fw_header, ptr %18, i32 0, i32 7
  %40 = ptrtoint ptr %int_fw_offset.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %int_fw_offset.i, align 1
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #9
  %add.ptr73.i = getelementptr i8, ptr %18, i32 %42
  %intfw.i = getelementptr [9 x %struct.fwentry], ptr @firmwares, i32 0, i32 %1, i32 5
  %43 = ptrtoint ptr %intfw.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %add.ptr73.i, ptr %intfw.i, align 4
  %int_fw_len.i = getelementptr inbounds %struct.at76_fw_header, ptr %18, i32 0, i32 8
  %44 = ptrtoint ptr %int_fw_len.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %int_fw_len.i, align 1
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #9
  %intfw_size.i = getelementptr [9 x %struct.fwentry], ptr @firmwares, i32 0, i32 %1, i32 3
  %47 = ptrtoint ptr %intfw_size.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %intfw_size.i, align 4
  %ext_fw_offset.i = getelementptr inbounds %struct.at76_fw_header, ptr %18, i32 0, i32 9
  %48 = ptrtoint ptr %ext_fw_offset.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %ext_fw_offset.i, align 1
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #9
  %add.ptr74.i = getelementptr i8, ptr %18, i32 %50
  %extfw.i = getelementptr [9 x %struct.fwentry], ptr @firmwares, i32 0, i32 %1, i32 4
  %51 = ptrtoint ptr %extfw.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %add.ptr74.i, ptr %extfw.i, align 4
  %ext_fw_len.i = getelementptr inbounds %struct.at76_fw_header, ptr %18, i32 0, i32 10
  %52 = ptrtoint ptr %ext_fw_len.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 4)
  %53 = load i32, ptr %ext_fw_len.i, align 1
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #9
  %extfw_size.i = getelementptr [9 x %struct.fwentry], ptr @firmwares, i32 0, i32 %1, i32 2
  %55 = ptrtoint ptr %extfw_size.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %extfw_size.i, align 4
  %56 = ptrtoint ptr %loaded.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %loaded.i, align 4
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i, align 4
  %59 = ptrtoint ptr %major.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %major.i, align 1
  %conv.i = zext i8 %60 to i32
  %61 = ptrtoint ptr %minor.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %minor.i, align 1
  %conv83.i = zext i8 %62 to i32
  %63 = ptrtoint ptr %patch.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %patch.i, align 1
  %conv85.i = zext i8 %64 to i32
  %65 = ptrtoint ptr %build.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %build.i, align 1
  %conv87.i = zext i8 %66 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev.i, ptr noundef nonnull @.str.45, ptr noundef %58, i32 noundef %conv.i, i32 noundef %conv83.i, i32 noundef %conv85.i, i32 noundef %conv87.i) #12
  %67 = load i32, ptr @at76_debug, align 4
  %and89.i = and i32 %67, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89.i)
  %tobool90.not.i = icmp eq i32 %and89.i, 0
  br i1 %tobool90.not.i, label %if.end65.i.do.body104.i_crit_edge, label %do.end94.i

if.end65.i.do.body104.i_crit_edge:                ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body104.i

do.end94.i:                                       ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %int_fw_offset.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %int_fw_offset.i, align 1
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #9
  %71 = ptrtoint ptr %int_fw_len.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %int_fw_len.i, align 1
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #9
  %74 = ptrtoint ptr %ext_fw_offset.i to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %75 = load i32, ptr %ext_fw_offset.i, align 1
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #9
  %77 = ptrtoint ptr %ext_fw_len.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %ext_fw_len.i, align 1
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #9
  %call100.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %1, i32 noundef %70, i32 noundef %73, i32 noundef %76, i32 noundef %79) #12
  br label %do.body104.i

do.body104.i:                                     ; preds = %do.end94.i, %if.end65.i.do.body104.i_crit_edge
  %80 = load i32, ptr @at76_debug, align 4
  %and105.i = and i32 %80, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105.i)
  %tobool106.not.i = icmp eq i32 %and105.i, 0
  br i1 %tobool106.not.i, label %do.body104.i.at76_load_firmware.exit_crit_edge, label %do.end110.i

do.body104.i.at76_load_firmware.exit_crit_edge:   ; preds = %do.body104.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_load_firmware.exit

do.end110.i:                                      ; preds = %do.body104.i
  call void @__sanitizer_cov_trace_pc() #11
  %call112.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %add.ptr.i138) #12
  br label %at76_load_firmware.exit

at76_load_firmware.exit:                          ; preds = %do.end110.i, %do.body104.i.at76_load_firmware.exit_crit_edge, %do.end62.i, %do.end50.i, %do.end24.i, %do.end.i, %do.body.i.at76_load_firmware.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @fw_mutex) #9
  %81 = ptrtoint ptr %loaded.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %loaded.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool117.not.i = icmp eq i32 %82, 0
  %tobool4.not201 = icmp eq ptr %arrayidx.i, null
  %tobool4.not = select i1 %tobool117.not.i, i1 true, i1 %tobool4.not201
  br i1 %tobool4.not, label %at76_load_firmware.exit.if.then93_crit_edge, label %if.end6

at76_load_firmware.exit.if.then93_crit_edge:      ; preds = %at76_load_firmware.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then93

if.end6:                                          ; preds = %at76_load_firmware.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %83 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %83, i32 noundef 3072, i32 noundef 1) #13
  %tobool.not.i139 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i139, label %if.end6.at76_get_op_mode.exit_crit_edge, label %if.end.i

if.end6.at76_get_op_mode.exit_crit_edge:          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_get_op_mode.exit

if.end.i:                                         ; preds = %if.end6
  %84 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %call1, align 8
  %shl.i.i = shl i32 %85, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %call1, i32 noundef %or2.i, i8 noundef zeroext 51, i8 noundef zeroext -63, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 1, i32 noundef 5000) #9
  %86 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %call7.i.i, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i140 = icmp slt i32 %call3.i, 0
  br i1 %cmp.i140, label %if.end.i.at76_get_op_mode.exit_crit_edge, label %if.else.i

if.end.i.at76_get_op_mode.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_get_op_mode.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp5.i = icmp eq i32 %call3.i, 0
  %conv.i141 = zext i8 %87 to i32
  %spec.select.i = select i1 %cmp5.i, i32 -5, i32 %conv.i141
  br label %at76_get_op_mode.exit

at76_get_op_mode.exit:                            ; preds = %if.else.i, %if.end.i.at76_get_op_mode.exit_crit_edge, %if.end6.at76_get_op_mode.exit_crit_edge
  %retval.0.i = phi i32 [ -12, %if.end6.at76_get_op_mode.exit_crit_edge ], [ %call3.i, %if.end.i.at76_get_op_mode.exit_crit_edge ], [ %spec.select.i, %if.else.i ]
  %88 = load i32, ptr @at76_debug, align 4
  %and = and i32 %88, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %at76_get_op_mode.exit.do.end14_crit_edge, label %do.end

at76_get_op_mode.exit.do.end14_crit_edge:         ; preds = %at76_get_op_mode.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end14

do.end:                                           ; preds = %at76_get_op_mode.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %retval.0.i) #12
  br label %do.end14

do.end14:                                         ; preds = %do.end, %at76_get_op_mode.exit.do.end14_crit_edge
  %89 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.0.i, label %do.end25 [
    i32 2, label %do.end18
    i32 1, label %do.end14.if.end35_crit_edge
    i32 4, label %do.end14.if.end35_crit_edge221
  ]

do.end14.if.end35_crit_edge221:                   ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

do.end14.if.end35_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

do.end18:                                         ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #12
  br label %if.then93

do.end25:                                         ; preds = %do.end14
  %dev26 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev26, ptr noundef nonnull @.str.12) #12
  %call27 = tail call fastcc i32 @at76_load_internal_fw(ptr noundef %call1, ptr noundef nonnull %arrayidx.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %do.end32, label %do.end25.exit_crit_edge

do.end25.exit_crit_edge:                          ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

do.end32:                                         ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.16, i32 noundef %call27) #12
  br label %if.then93

if.end35:                                         ; preds = %do.end14.if.end35_crit_edge, %do.end14.if.end35_crit_edge221
  %fw_version = getelementptr [9 x %struct.fwentry], ptr @firmwares, i32 0, i32 %1, i32 7
  %90 = ptrtoint ptr %fw_version to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %fw_version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %cmp36.not = icmp eq i8 %91, 0
  br i1 %cmp36.not, label %lor.lhs.false, label %if.end35.if.then45_crit_edge

if.end35.if.then45_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then45

lor.lhs.false:                                    ; preds = %if.end35
  %minor = getelementptr [9 x %struct.fwentry], ptr @firmwares, i32 0, i32 %1, i32 7, i32 1
  %92 = ptrtoint ptr %minor to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %minor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 99, i8 %93)
  %cmp40 = icmp ugt i8 %93, 99
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i)
  %cmp43 = icmp eq i32 %retval.0.i, 1
  %or.cond = select i1 %cmp40, i1 true, i1 %cmp43
  br i1 %or.cond, label %lor.lhs.false.if.then45_crit_edge, label %lor.lhs.false.do.end63_crit_edge

lor.lhs.false.do.end63_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end63

lor.lhs.false.if.then45_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then45

if.then45:                                        ; preds = %lor.lhs.false.if.then45_crit_edge, %if.end35.if.then45_crit_edge
  %94 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %call1, align 8
  %shl.i.i142 = shl i32 %95, 8
  %or1.i = or i32 %shl.i.i142, -2147483520
  %call4.i = tail call i32 @usb_control_msg(ptr noundef %call1, i32 noundef %or1.i, i8 noundef zeroext 51, i8 noundef zeroext -63, i16 noundef zeroext 2048, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 4, i32 noundef 5000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call4.i)
  %cmp6.not.i.not = icmp eq i32 %call4.i, 4
  br i1 %cmp6.not.i.not, label %lor.lhs.false49, label %if.then45.do.end63_crit_edge

if.then45.do.end63_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end63

lor.lhs.false49:                                  ; preds = %if.then45
  %96 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %call7.i, align 8
  %minor52 = getelementptr inbounds %struct.mib_fw_version, ptr %call7.i, i32 0, i32 1
  %98 = ptrtoint ptr %minor52 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %minor52, align 1
  %or137 = or i8 %99, %97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or137)
  %cmp54 = icmp eq i8 %or137, 0
  br i1 %cmp54, label %lor.lhs.false49.do.end63_crit_edge, label %lor.lhs.false49.if.end79_crit_edge

lor.lhs.false49.if.end79_crit_edge:               ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

lor.lhs.false49.do.end63_crit_edge:               ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end63

do.end63:                                         ; preds = %lor.lhs.false49.do.end63_crit_edge, %if.then45.do.end63_crit_edge, %lor.lhs.false.do.end63_crit_edge
  %dev64 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.13, ptr noundef %dev64, ptr noundef nonnull @.str.19) #12
  %extfw.i145 = getelementptr [9 x %struct.fwentry], ptr @firmwares, i32 0, i32 %1, i32 4
  %100 = ptrtoint ptr %extfw.i145 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %extfw.i145, align 4
  %extfw_size.i146 = getelementptr [9 x %struct.fwentry], ptr @firmwares, i32 0, i32 %1, i32 2
  %102 = ptrtoint ptr %extfw_size.i146 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %extfw_size.i146, align 4
  %tobool.not.i147 = icmp eq ptr %101, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool1.not.i = icmp eq i32 %103, 0
  %or.cond.i148 = select i1 %tobool.not.i147, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i148, label %do.end63.if.then93_crit_edge, label %if.end.i149

do.end63.if.then93_crit_edge:                     ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then93

if.end.i149:                                      ; preds = %do.end63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %104 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %104, i32 noundef 3072, i32 noundef 1) #13
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i149.at76_get_op_mode.exit.i_crit_edge, label %if.end.i.i

if.end.i149.at76_get_op_mode.exit.i_crit_edge:    ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_get_op_mode.exit.i

if.end.i.i:                                       ; preds = %if.end.i149
  %105 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %call1, align 8
  %shl.i.i.i = shl i32 %106, 8
  %or2.i.i = or i32 %shl.i.i.i, -2147483520
  %call3.i.i = tail call i32 @usb_control_msg(ptr noundef %call1, i32 noundef %or2.i.i, i8 noundef zeroext 51, i8 noundef zeroext -63, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i.i, i16 noundef zeroext 1, i32 noundef 5000) #9
  %107 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %call7.i.i.i, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i.at76_get_op_mode.exit.i_crit_edge, label %if.else.i.i

if.end.i.i.at76_get_op_mode.exit.i_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_get_op_mode.exit.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp5.i.i = icmp eq i32 %call3.i.i, 0
  %conv.i.i = zext i8 %108 to i32
  %spec.select.i.i = select i1 %cmp5.i.i, i32 -5, i32 %conv.i.i
  br label %at76_get_op_mode.exit.i

at76_get_op_mode.exit.i:                          ; preds = %if.else.i.i, %if.end.i.i.at76_get_op_mode.exit.i_crit_edge, %if.end.i149.at76_get_op_mode.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ -12, %if.end.i149.at76_get_op_mode.exit.i_crit_edge ], [ %call3.i.i, %if.end.i.i.at76_get_op_mode.exit.i_crit_edge ], [ %spec.select.i.i, %if.else.i.i ]
  %109 = load i32, ptr @at76_debug, align 4
  %and.i = and i32 %109, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %at76_get_op_mode.exit.i.do.end8.i_crit_edge, label %do.end.i150

at76_get_op_mode.exit.i.do.end8.i_crit_edge:      ; preds = %at76_get_op_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8.i

do.end.i150:                                      ; preds = %at76_get_op_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %retval.0.i.i) #12
  br label %do.end8.i

do.end8.i:                                        ; preds = %do.end.i150, %at76_get_op_mode.exit.i.do.end8.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %retval.0.i.i)
  %cmp.not.i = icmp eq i32 %retval.0.i.i, 4
  br i1 %cmp.not.i, label %if.end13.i, label %do.end12.i

do.end12.i:                                       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i151 = getelementptr inbounds %struct.usb_device, ptr %call1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i151, ptr noundef nonnull @.str.121, i32 noundef %retval.0.i.i) #12
  br label %if.then93

if.end13.i:                                       ; preds = %do.end8.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %110 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i152 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %110, i32 noundef 3264, i32 noundef 1024) #13
  %tobool15.not.i = icmp eq ptr %call7.i.i152, null
  br i1 %tobool15.not.i, label %if.end13.i.if.then93_crit_edge, label %do.body18.i

if.end13.i.if.then93_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then93

do.body18.i:                                      ; preds = %if.end13.i
  %111 = load i32, ptr @at76_debug, align 4
  %and19.i = and i32 %111, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %do.body18.i.do.body30.i.preheader_crit_edge, label %do.end24.i153

do.body18.i.do.body30.i.preheader_crit_edge:      ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body30.i.preheader

do.end24.i153:                                    ; preds = %do.body18.i
  call void @__sanitizer_cov_trace_pc() #11
  %call26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124) #12
  br label %do.body30.i.preheader

do.body30.i.preheader:                            ; preds = %do.end24.i153, %do.body18.i.do.body30.i.preheader_crit_edge
  br label %do.body30.i

do.body30.i:                                      ; preds = %if.end52.i.do.body30.i_crit_edge, %do.body30.i.preheader
  %buf.0.i = phi ptr [ %add.ptr.i154, %if.end52.i.do.body30.i_crit_edge ], [ %101, %do.body30.i.preheader ]
  %size.0.i = phi i32 [ %sub.i, %if.end52.i.do.body30.i_crit_edge ], [ %103, %do.body30.i.preheader ]
  %blockno.0.i = phi i32 [ %inc.i, %if.end52.i.do.body30.i_crit_edge ], [ 0, %do.body30.i.preheader ]
  %112 = tail call i32 @llvm.smin.i32(i32 %size.0.i, i32 1024) #9
  %113 = call ptr @memcpy(ptr %call7.i.i152, ptr %buf.0.i, i32 %112)
  %114 = load i32, ptr @at76_debug, align 4
  %and34.i = and i32 %114, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %do.body30.i.do.end44.i_crit_edge, label %do.end39.i

do.body30.i.do.end44.i_crit_edge:                 ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end44.i

do.end39.i:                                       ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #11
  %call41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, i32 noundef %size.0.i, i32 noundef %112, i32 noundef %blockno.0.i) #12
  br label %do.end44.i

do.end44.i:                                       ; preds = %do.end39.i, %do.body30.i.do.end44.i_crit_edge
  %115 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %call1, align 8
  %shl.i.i118.i = shl i32 %116, 8
  %or.i.i = or i32 %shl.i.i118.i, -2147483648
  %conv.i119.i = trunc i32 %blockno.0.i to i16
  %conv1.i.i = trunc i32 %112 to i16
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %call1, i32 noundef %or.i.i, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 2050, i16 noundef zeroext %conv.i119.i, ptr noundef nonnull %call7.i.i152, i16 noundef zeroext %conv1.i.i, i32 noundef 5000) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i.i, i32 %112)
  %cmp46.not.i = icmp eq i32 %call2.i.i, %112
  br i1 %cmp46.not.i, label %if.end52.i, label %exit.thread.i

exit.thread.i:                                    ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev51.i = getelementptr inbounds %struct.usb_device, ptr %call1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev51.i, ptr noundef nonnull @.str.130, i32 noundef %blockno.0.i, i32 noundef %call2.i.i) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i152) #9
  br label %do.end77.i

if.end52.i:                                       ; preds = %do.end44.i
  %add.ptr.i154 = getelementptr i8, ptr %buf.0.i, i32 %112
  %sub.i = sub i32 %size.0.i, %112
  %inc.i = add i32 %blockno.0.i, 1
  %cmp54.i = icmp sgt i32 %size.0.i, 0
  br i1 %cmp54.i, label %if.end52.i.do.body30.i_crit_edge, label %do.end55.i

if.end52.i.do.body30.i_crit_edge:                 ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body30.i

do.end55.i:                                       ; preds = %if.end52.i
  %board_type.i = getelementptr [9 x %struct.fwentry], ptr @firmwares, i32 0, i32 %1, i32 6
  %117 = ptrtoint ptr %board_type.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %board_type.i, align 4
  %119 = add i32 %118, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %119)
  %120 = icmp ult i32 %119, -2
  br i1 %120, label %do.end55.i.exit.i_crit_edge, label %do.body59.i

do.end55.i.exit.i_crit_edge:                      ; preds = %do.end55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit.i

do.body59.i:                                      ; preds = %do.end55.i
  %121 = load i32, ptr @at76_debug, align 4
  %and60.i = and i32 %121, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i)
  %tobool61.not.i = icmp eq i32 %and60.i, 0
  br i1 %tobool61.not.i, label %do.body59.i.do.end70.i_crit_edge, label %do.end65.i

do.body59.i.do.end70.i_crit_edge:                 ; preds = %do.body59.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end70.i

do.end65.i:                                       ; preds = %do.body59.i
  call void @__sanitizer_cov_trace_pc() #11
  %call67.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133) #12
  br label %do.end70.i

do.end70.i:                                       ; preds = %do.end65.i, %do.body59.i.do.end70.i_crit_edge
  %call71.i = tail call i32 @schedule_timeout_interruptible(i32 noundef 21) #9
  br label %exit.i

exit.i:                                           ; preds = %do.end70.i, %do.end55.i.exit.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i152) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp73.i = icmp slt i32 %112, 0
  br i1 %cmp73.i, label %exit.i.do.end77.i_crit_edge, label %if.end69

exit.i.do.end77.i_crit_edge:                      ; preds = %exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end77.i

do.end77.i:                                       ; preds = %exit.i.do.end77.i_crit_edge, %exit.thread.i
  %ret.0122.i = phi i32 [ -5, %exit.thread.i ], [ %112, %exit.i.do.end77.i_crit_edge ]
  %dev78.i = getelementptr inbounds %struct.usb_device, ptr %call1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev78.i, ptr noundef nonnull @.str.136, i32 noundef %ret.0122.i) #12
  br label %if.then93

if.end69:                                         ; preds = %exit.i
  %122 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %call1, align 8
  %shl.i.i156 = shl i32 %123, 8
  %or1.i157 = or i32 %shl.i.i156, -2147483520
  %call4.i158 = tail call i32 @usb_control_msg(ptr noundef %call1, i32 noundef %or1.i157, i8 noundef zeroext 51, i8 noundef zeroext -63, i16 noundef zeroext 2048, i16 noundef zeroext 0, ptr noundef nonnull %call7.i, i16 noundef zeroext 4, i32 noundef 5000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i158)
  %cmp.i159 = icmp slt i32 %call4.i158, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call4.i158)
  %cmp6.not.i160 = icmp eq i32 %call4.i158, 4
  %or.cond.i161 = or i1 %cmp.i159, %cmp6.not.i160
  %retval.0.i162 = select i1 %or.cond.i161, i32 %call4.i158, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i162)
  %cmp71 = icmp slt i32 %retval.0.i162, 0
  br i1 %cmp71, label %do.end76, label %if.end69.if.end79_crit_edge

if.end69.if.end79_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

do.end76:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev64, ptr noundef nonnull @.str.22, i32 noundef %retval.0.i162) #12
  br label %if.then93

if.end79:                                         ; preds = %if.end69.if.end79_crit_edge, %lor.lhs.false49.if.end79_crit_edge
  %call.i.i = tail call ptr @ieee80211_alloc_hw_nm(i32 noundef 764, ptr noundef nonnull @at76_ops, ptr noundef null) #9
  %tobool.not.i163 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i163, label %at76_alloc_new_device.exit.thread, label %at76_alloc_new_device.exit

at76_alloc_new_device.exit.thread:                ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138) #12
  br label %if.then93

at76_alloc_new_device.exit:                       ; preds = %if.end79
  %priv2.i = getelementptr inbounds %struct.ieee80211_hw, ptr %call.i.i, i32 0, i32 3
  %124 = ptrtoint ptr %priv2.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %priv2.i, align 8
  %hw3.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 53
  %126 = ptrtoint ptr %hw3.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %call.i.i, ptr %hw3.i, align 4
  %127 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call1, ptr %125, align 4
  %mtx.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %mtx.i, ptr noundef nonnull @.str.140, ptr noundef nonnull @at76_alloc_new_device.__key) #9
  %work_set_promisc.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 9
  tail call void @__init_work(ptr noundef %work_set_promisc.i, i32 noundef 0) #9
  %128 = ptrtoint ptr %work_set_promisc.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 -64, ptr %work_set_promisc.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 9, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.142, ptr noundef nonnull @at76_alloc_new_device.__key.141, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry12.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 9, i32 1
  %129 = ptrtoint ptr %entry12.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile ptr %entry12.i, ptr %entry12.i, align 4
  %prev.i.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 9, i32 1, i32 1
  %130 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %entry12.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 9, i32 2
  %131 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr @at76_work_set_promisc, ptr %func.i, align 4
  %work_submit_rx.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 10
  tail call void @__init_work(ptr noundef %work_submit_rx.i, i32 noundef 0) #9
  %132 = ptrtoint ptr %work_submit_rx.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 -64, ptr %work_submit_rx.i, align 4
  %lockdep_map22.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 10, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map22.i, ptr noundef nonnull @.str.144, ptr noundef nonnull @at76_alloc_new_device.__key.143, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry24.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 10, i32 1
  %133 = ptrtoint ptr %entry24.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store volatile ptr %entry24.i, ptr %entry24.i, align 4
  %prev.i96.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 10, i32 1, i32 1
  %134 = ptrtoint ptr %prev.i96.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %entry24.i, ptr %prev.i96.i, align 4
  %func26.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 10, i32 2
  %135 = ptrtoint ptr %func26.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr @at76_work_submit_rx, ptr %func26.i, align 4
  %work_join_bssid.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 11
  tail call void @__init_work(ptr noundef %work_join_bssid.i, i32 noundef 0) #9
  %136 = ptrtoint ptr %work_join_bssid.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 -64, ptr %work_join_bssid.i, align 4
  %lockdep_map35.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 11, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map35.i, ptr noundef nonnull @.str.146, ptr noundef nonnull @at76_alloc_new_device.__key.145, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry37.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 11, i32 1
  %137 = ptrtoint ptr %entry37.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store volatile ptr %entry37.i, ptr %entry37.i, align 4
  %prev.i97.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 11, i32 1, i32 1
  %138 = ptrtoint ptr %prev.i97.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %entry37.i, ptr %prev.i97.i, align 4
  %func39.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 11, i32 2
  %139 = ptrtoint ptr %func39.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr @at76_work_join_bssid, ptr %func39.i, align 4
  %dwork_hw_scan.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 12
  tail call void @__init_work(ptr noundef %dwork_hw_scan.i, i32 noundef 0) #9
  %140 = ptrtoint ptr %dwork_hw_scan.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 -64, ptr %dwork_hw_scan.i, align 4
  %lockdep_map51.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 12, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map51.i, ptr noundef nonnull @.str.148, ptr noundef nonnull @at76_alloc_new_device.__key.147, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry54.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 12, i32 0, i32 1
  %141 = ptrtoint ptr %entry54.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store volatile ptr %entry54.i, ptr %entry54.i, align 4
  %prev.i98.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 12, i32 0, i32 1, i32 1
  %142 = ptrtoint ptr %prev.i98.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %entry54.i, ptr %prev.i98.i, align 4
  %func57.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 12, i32 0, i32 2
  %143 = ptrtoint ptr %func57.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr @at76_dwork_hw_scan, ptr %func57.i, align 4
  %timer.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 12, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.150, ptr noundef nonnull @at76_alloc_new_device.__key.149) #9
  %rx_tasklet.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 13
  tail call void @tasklet_setup(ptr noundef %rx_tasklet.i, ptr noundef nonnull @at76_rx_tasklet) #9
  %pm_mode.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 39
  %144 = ptrtoint ptr %pm_mode.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 1, ptr %pm_mode.i, align 4
  %pm_period.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 41
  %145 = ptrtoint ptr %pm_period.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 0, ptr %pm_period.i, align 4
  %tobool81.not = icmp eq ptr %125, null
  br i1 %tobool81.not, label %at76_alloc_new_device.exit.if.then93_crit_edge, label %if.end83

at76_alloc_new_device.exit.if.then93_crit_edge:   ; preds = %at76_alloc_new_device.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then93

if.end83:                                         ; preds = %at76_alloc_new_device.exit
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %146 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %125, ptr %driver_data.i.i, align 4
  %fw_version84 = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 48
  %147 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %call7.i, align 8
  %149 = ptrtoint ptr %fw_version84 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %fw_version84, align 4
  %board_type85 = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 47
  %150 = ptrtoint ptr %board_type85 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %1, ptr %board_type85, align 4
  %151 = load i32, ptr @at76_debug, align 4
  %and.i167 = and i32 %151, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i167)
  %tobool.not.i168 = icmp eq i32 %and.i167, 0
  br i1 %tobool.not.i168, label %if.end83.do.end3.i_crit_edge, label %do.end.i171

if.end83.do.end3.i_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3.i

do.end.i171:                                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  %cur_altsetting.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 1
  %152 = ptrtoint ptr %cur_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %cur_altsetting.i, align 4
  %bNumEndpoints.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %153, i32 0, i32 4
  %154 = ptrtoint ptr %bNumEndpoints.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %bNumEndpoints.i, align 4
  %conv.i169 = zext i8 %155 to i32
  %call.i170 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.365, i32 noundef %conv.i169) #12
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i171, %if.end83.do.end3.i_crit_edge
  %156 = load i32, ptr @at76_debug, align 4
  %and.i.i = and i32 %156, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i172 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i172, label %do.end3.i.do.body4.i.i_crit_edge, label %do.end.i.i

do.end3.i.do.body4.i.i_crit_edge:                 ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body4.i.i

do.end.i.i:                                       ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i173 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.380, ptr noundef nonnull @.str.381) #12
  br label %do.body4.i.i

do.body4.i.i:                                     ; preds = %do.end.i.i, %do.end3.i.do.body4.i.i_crit_edge
  %157 = load i32, ptr @at76_debug, align 4
  %and5.i.i = and i32 %157, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool6.not.i.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool6.not.i.i, label %do.body4.i.i.do.end15.i.i_crit_edge, label %do.end10.i.i

do.body4.i.i.do.end15.i.i_crit_edge:              ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end15.i.i

do.end10.i.i:                                     ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %cur_altsetting.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 1
  %158 = ptrtoint ptr %cur_altsetting.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %cur_altsetting.i.i, align 4
  %bNumEndpoints.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %159, i32 0, i32 4
  %160 = ptrtoint ptr %bNumEndpoints.i.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %bNumEndpoints.i.i, align 4
  %conv.i.i174 = zext i8 %161 to i32
  %call12.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.383, ptr noundef nonnull @.str.381, i32 noundef %conv.i.i174) #12
  br label %do.end15.i.i

do.end15.i.i:                                     ; preds = %do.end10.i.i, %do.body4.i.i.do.end15.i.i_crit_edge
  %cur_altsetting16.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 1
  %162 = ptrtoint ptr %cur_altsetting16.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %cur_altsetting16.i.i, align 4
  %bNumEndpoints18.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %163, i32 0, i32 4
  %164 = ptrtoint ptr %bNumEndpoints18.i.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %bNumEndpoints18.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %165)
  %cmp136.not.i.i = icmp eq i8 %165, 0
  br i1 %cmp136.not.i.i, label %do.end15.i.i.if.then89.sink.split_crit_edge, label %for.body.lr.ph.i.i

do.end15.i.i.if.then89.sink.split_crit_edge:      ; preds = %do.end15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then89.sink.split

for.body.lr.ph.i.i:                               ; preds = %do.end15.i.i
  %endpoint21.i.i = getelementptr inbounds %struct.usb_host_interface, ptr %163, i32 0, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %ep_in.0140.i.i = phi ptr [ null, %for.body.lr.ph.i.i ], [ %ep_in.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %ep_out.0139.i.i = phi ptr [ null, %for.body.lr.ph.i.i ], [ %ep_out.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %i.0137.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %166 = ptrtoint ptr %endpoint21.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %endpoint21.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.usb_host_endpoint, ptr %167, i32 %i.0137.i.i
  %168 = load i32, ptr @at76_debug, align 4
  %and24.i.i = and i32 %168, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i.i)
  %tobool25.not.i.i = icmp eq i32 %and24.i.i, 0
  br i1 %tobool25.not.i.i, label %for.body.i.i.do.end36.i.i_crit_edge, label %do.end29.i.i

for.body.i.i.do.end36.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end36.i.i

do.end29.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i.i, i32 0, i32 2
  %169 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %bEndpointAddress.i.i, align 1
  %conv31.i.i = zext i8 %170 to i32
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i.i, i32 0, i32 3
  %171 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %bmAttributes.i.i, align 1
  %conv32.i.i = zext i8 %172 to i32
  %call33.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.386, ptr noundef nonnull @.str.381, i32 noundef %i.0137.i.i, i32 noundef %conv31.i.i, i32 noundef %conv32.i.i) #12
  br label %do.end36.i.i

do.end36.i.i:                                     ; preds = %do.end29.i.i, %for.body.i.i.do.end36.i.i_crit_edge
  %tobool37.not.i.i = icmp eq ptr %ep_in.0140.i.i, null
  br i1 %tobool37.not.i.i, label %land.lhs.true.i.i, label %do.end36.i.i.if.end41.i.i_crit_edge

do.end36.i.i.if.end41.i.i_crit_edge:              ; preds = %do.end36.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41.i.i

land.lhs.true.i.i:                                ; preds = %do.end36.i.i
  %bmAttributes.i.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i.i, i32 0, i32 3
  %173 = ptrtoint ptr %bmAttributes.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %bmAttributes.i.i.i.i, align 1
  %175 = and i8 %174, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %175)
  %cmp.i.not.i.i.i = icmp eq i8 %175, 2
  br i1 %cmp.i.not.i.i.i, label %usb_endpoint_is_bulk_in.exit.i.i, label %land.lhs.true.i.i.usb_endpoint_is_bulk_in.exit.thread.i.i_crit_edge

land.lhs.true.i.i.usb_endpoint_is_bulk_in.exit.thread.i.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %usb_endpoint_is_bulk_in.exit.thread.i.i

usb_endpoint_is_bulk_in.exit.i.i:                 ; preds = %land.lhs.true.i.i
  %bEndpointAddress.i.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i.i, i32 0, i32 2
  %176 = ptrtoint ptr %bEndpointAddress.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %bEndpointAddress.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %177)
  %tobool39.not.i.i = icmp sgt i8 %177, -1
  br i1 %tobool39.not.i.i, label %usb_endpoint_is_bulk_in.exit.i.i.usb_endpoint_is_bulk_in.exit.thread.i.i_crit_edge, label %usb_endpoint_is_bulk_in.exit.i.i.if.end41.i.i_crit_edge

usb_endpoint_is_bulk_in.exit.i.i.if.end41.i.i_crit_edge: ; preds = %usb_endpoint_is_bulk_in.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41.i.i

usb_endpoint_is_bulk_in.exit.i.i.usb_endpoint_is_bulk_in.exit.thread.i.i_crit_edge: ; preds = %usb_endpoint_is_bulk_in.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %usb_endpoint_is_bulk_in.exit.thread.i.i

usb_endpoint_is_bulk_in.exit.thread.i.i:          ; preds = %usb_endpoint_is_bulk_in.exit.i.i.usb_endpoint_is_bulk_in.exit.thread.i.i_crit_edge, %land.lhs.true.i.i.usb_endpoint_is_bulk_in.exit.thread.i.i_crit_edge
  br label %if.end41.i.i

if.end41.i.i:                                     ; preds = %usb_endpoint_is_bulk_in.exit.thread.i.i, %usb_endpoint_is_bulk_in.exit.i.i.if.end41.i.i_crit_edge, %do.end36.i.i.if.end41.i.i_crit_edge
  %ep_in.1.i.i = phi ptr [ %ep_in.0140.i.i, %do.end36.i.i.if.end41.i.i_crit_edge ], [ null, %usb_endpoint_is_bulk_in.exit.thread.i.i ], [ %arrayidx.i.i, %usb_endpoint_is_bulk_in.exit.i.i.if.end41.i.i_crit_edge ]
  %tobool42.not.i.i = icmp eq ptr %ep_out.0139.i.i, null
  br i1 %tobool42.not.i.i, label %land.lhs.true43.i.i, label %if.end41.i.i.for.inc.i.i_crit_edge

if.end41.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

land.lhs.true43.i.i:                              ; preds = %if.end41.i.i
  %bmAttributes.i.i126.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i.i, i32 0, i32 3
  %178 = ptrtoint ptr %bmAttributes.i.i126.i.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %bmAttributes.i.i126.i.i, align 1
  %180 = and i8 %179, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %180)
  %cmp.i.not.i127.i.i = icmp eq i8 %180, 2
  br i1 %cmp.i.not.i127.i.i, label %usb_endpoint_is_bulk_out.exit.i.i, label %land.lhs.true43.i.i.usb_endpoint_is_bulk_out.exit.thread.i.i_crit_edge

land.lhs.true43.i.i.usb_endpoint_is_bulk_out.exit.thread.i.i_crit_edge: ; preds = %land.lhs.true43.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %usb_endpoint_is_bulk_out.exit.thread.i.i

usb_endpoint_is_bulk_out.exit.i.i:                ; preds = %land.lhs.true43.i.i
  %bEndpointAddress.i.i128.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i.i, i32 0, i32 2
  %181 = ptrtoint ptr %bEndpointAddress.i.i128.i.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %bEndpointAddress.i.i128.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %182)
  %tobool45.not.i.i = icmp slt i8 %182, 0
  br i1 %tobool45.not.i.i, label %usb_endpoint_is_bulk_out.exit.i.i.usb_endpoint_is_bulk_out.exit.thread.i.i_crit_edge, label %usb_endpoint_is_bulk_out.exit.i.i.for.inc.i.i_crit_edge

usb_endpoint_is_bulk_out.exit.i.i.for.inc.i.i_crit_edge: ; preds = %usb_endpoint_is_bulk_out.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

usb_endpoint_is_bulk_out.exit.i.i.usb_endpoint_is_bulk_out.exit.thread.i.i_crit_edge: ; preds = %usb_endpoint_is_bulk_out.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %usb_endpoint_is_bulk_out.exit.thread.i.i

usb_endpoint_is_bulk_out.exit.thread.i.i:         ; preds = %usb_endpoint_is_bulk_out.exit.i.i.usb_endpoint_is_bulk_out.exit.thread.i.i_crit_edge, %land.lhs.true43.i.i.usb_endpoint_is_bulk_out.exit.thread.i.i_crit_edge
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %usb_endpoint_is_bulk_out.exit.thread.i.i, %usb_endpoint_is_bulk_out.exit.i.i.for.inc.i.i_crit_edge, %if.end41.i.i.for.inc.i.i_crit_edge
  %ep_out.1.i.i = phi ptr [ %ep_out.0139.i.i, %if.end41.i.i.for.inc.i.i_crit_edge ], [ null, %usb_endpoint_is_bulk_out.exit.thread.i.i ], [ %arrayidx.i.i, %usb_endpoint_is_bulk_out.exit.i.i.for.inc.i.i_crit_edge ]
  %inc.i.i = add nuw nsw i32 %i.0137.i.i, 1
  %183 = ptrtoint ptr %bNumEndpoints18.i.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %bNumEndpoints18.i.i, align 4
  %conv19.i.i = zext i8 %184 to i32
  %cmp.i.i175 = icmp ult i32 %inc.i.i, %conv19.i.i
  br i1 %cmp.i.i175, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.end.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  %tobool48.not.i.i = icmp eq ptr %ep_in.1.i.i, null
  %tobool49.not.i.i = icmp eq ptr %ep_out.1.i.i, null
  %or.cond.i.i = select i1 %tobool48.not.i.i, i1 true, i1 %tobool49.not.i.i
  br i1 %or.cond.i.i, label %for.end.i.i.if.then89.sink.split_crit_edge, label %if.end54.i.i

for.end.i.i.if.then89.sink.split_crit_edge:       ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then89.sink.split

if.end54.i.i:                                     ; preds = %for.end.i.i
  %185 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %125, align 4
  %bEndpointAddress55.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep_in.1.i.i, i32 0, i32 2
  %187 = ptrtoint ptr %bEndpointAddress55.i.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %bEndpointAddress55.i.i, align 1
  %conv56.i.i = zext i8 %188 to i32
  %189 = ptrtoint ptr %186 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %186, align 8
  %shl.i.i.i176 = shl i32 %190, 8
  %shl1.i.i.i = shl nuw nsw i32 %conv56.i.i, 15
  %or.i.i.i = or i32 %shl1.i.i.i, %shl.i.i.i176
  %or58.i.i = or i32 %or.i.i.i, -1073741696
  %rx_pipe.i.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 7
  %191 = ptrtoint ptr %rx_pipe.i.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %or58.i.i, ptr %rx_pipe.i.i, align 4
  %bEndpointAddress60.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep_out.1.i.i, i32 0, i32 2
  %192 = ptrtoint ptr %bEndpointAddress60.i.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %bEndpointAddress60.i.i, align 1
  %conv61.i.i = zext i8 %193 to i32
  %194 = load i32, ptr %186, align 8
  %shl.i130.i.i = shl i32 %194, 8
  %shl1.i131.i.i = shl nuw nsw i32 %conv61.i.i, 15
  %or.i132.i.i = or i32 %shl1.i131.i.i, %shl.i130.i.i
  %or63.i.i = or i32 %or.i132.i.i, -1073741824
  %tx_pipe.i.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 6
  %195 = ptrtoint ptr %tx_pipe.i.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %or63.i.i, ptr %tx_pipe.i.i, align 4
  %call64.i.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #9
  %rx_urb.i.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 5
  %196 = ptrtoint ptr %rx_urb.i.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %call64.i.i, ptr %rx_urb.i.i, align 4
  %call65.i.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #9
  %tx_urb.i.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 4
  %197 = ptrtoint ptr %tx_urb.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %call65.i.i, ptr %tx_urb.i.i, align 4
  %198 = ptrtoint ptr %rx_urb.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %rx_urb.i.i, align 4
  %tobool67.not.i.i = icmp eq ptr %199, null
  %tobool70.not.i.i = icmp eq ptr %call65.i.i, null
  %or.cond125.i.i = select i1 %tobool67.not.i.i, i1 true, i1 %tobool70.not.i.i
  br i1 %or.cond125.i.i, label %if.end54.i.i.if.then89.sink.split_crit_edge, label %if.end76.i.i

if.end54.i.i.if.then89.sink.split_crit_edge:      ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then89.sink.split

if.end76.i.i:                                     ; preds = %if.end54.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %200 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i177 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %200, i32 noundef 3264, i32 noundef 2413) #13
  %bulk_out_buffer.i.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 3
  %201 = ptrtoint ptr %bulk_out_buffer.i.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %call7.i.i.i177, ptr %bulk_out_buffer.i.i, align 4
  %tobool79.not.i.i = icmp eq ptr %call7.i.i.i177, null
  br i1 %tobool79.not.i.i, label %if.end76.i.i.if.then89_crit_edge, label %do.body82.i.i

if.end76.i.i.if.then89_crit_edge:                 ; preds = %if.end76.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then89

do.body82.i.i:                                    ; preds = %if.end76.i.i
  %202 = load i32, ptr @at76_debug, align 4
  %and83.i.i = and i32 %202, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83.i.i)
  %tobool84.not.i.i = icmp eq i32 %and83.i.i, 0
  br i1 %tobool84.not.i.i, label %do.body82.i.i.if.end7.i_crit_edge, label %do.end88.i.i

do.body82.i.i.if.end7.i_crit_edge:                ; preds = %do.body82.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

do.end88.i.i:                                     ; preds = %do.body82.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call90.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.395, ptr noundef nonnull @.str.381) #12
  br label %if.end7.i

if.end7.i:                                        ; preds = %do.end88.i.i, %do.body82.i.i.if.end7.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %203 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i137.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %203, i32 noundef 3264, i32 noundef 84) #13
  %tobool.not.i138.i = icmp eq ptr %call7.i.i137.i, null
  br i1 %tobool.not.i138.i, label %if.end7.i.if.then89.sink.split_crit_edge, label %if.end.i.i178

if.end7.i.if.then89.sink.split_crit_edge:         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then89.sink.split

if.end.i.i178:                                    ; preds = %if.end7.i
  %204 = ptrtoint ptr %board_type85 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %board_type85, align 4
  %206 = add i32 %205, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %206)
  %207 = icmp ult i32 %206, -2
  br i1 %207, label %if.else.i.i179, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i178
  %208 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %125, align 4
  %210 = ptrtoint ptr %209 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %209, align 8
  %shl.i.i.i.i = shl i32 %211, 8
  %or1.i.i.i = or i32 %shl.i.i.i.i, -2147483520
  %call2.i.i.i = tail call i32 @usb_control_msg(ptr noundef %209, i32 noundef %or1.i.i.i, i8 noundef zeroext 51, i8 noundef zeroext -63, i16 noundef zeroext 2306, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i137.i, i16 noundef zeroext 40, i32 noundef 5000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %cmp.i139.i = icmp slt i32 %call2.i.i.i, 0
  br i1 %cmp.i139.i, label %if.then3.i.i.do.end.i141.i_crit_edge, label %if.end6.i.i

if.then3.i.i.do.end.i141.i_crit_edge:             ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i141.i

if.end6.i.i:                                      ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %mac_addr.i.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 43
  %212 = call ptr @memcpy(ptr %mac_addr.i.i, ptr %call7.i.i137.i, i32 6)
  %regulatory_domain.i.i = getelementptr inbounds %struct.hwcfg_intersil, ptr %call7.i.i137.i, i32 0, i32 4
  br label %if.end15.i

if.else.i.i179:                                   ; preds = %if.end.i.i178
  %213 = add i32 %205, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %213)
  %214 = icmp ult i32 %213, -2
  %215 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %125, align 4
  %217 = ptrtoint ptr %216 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %216, align 8
  %shl.i.i72.i.i = shl i32 %218, 8
  %or1.i73.i.i = or i32 %shl.i.i72.i.i, -2147483520
  %call2.i74.i.i = tail call i32 @usb_control_msg(ptr noundef %216, i32 noundef %or1.i73.i.i, i8 noundef zeroext 51, i8 noundef zeroext -63, i16 noundef zeroext 2562, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i137.i, i16 noundef zeroext 84, i32 noundef 5000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i74.i.i)
  %cmp28.i.i = icmp slt i32 %call2.i74.i.i, 0
  br i1 %214, label %if.else25.i.i, label %if.then13.i.i

if.then13.i.i:                                    ; preds = %if.else.i.i179
  br i1 %cmp28.i.i, label %if.then13.i.i.do.end.i141.i_crit_edge, label %if.end18.i.i

if.then13.i.i.do.end.i141.i_crit_edge:            ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i141.i

if.end18.i.i:                                     ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %mac_addr19.i.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 43
  %mac_addr21.i.i = getelementptr inbounds %struct.hwcfg_rfmd, ptr %call7.i.i137.i, i32 0, i32 4
  %219 = call ptr @memcpy(ptr %mac_addr19.i.i, ptr %mac_addr21.i.i, i32 6)
  %regulatory_domain23.i.i = getelementptr inbounds %struct.hwcfg_rfmd, ptr %call7.i.i137.i, i32 0, i32 5
  br label %if.end15.i

if.else25.i.i:                                    ; preds = %if.else.i.i179
  br i1 %cmp28.i.i, label %if.else25.i.i.do.end.i141.i_crit_edge, label %if.end30.i.i

if.else25.i.i.do.end.i141.i_crit_edge:            ; preds = %if.else25.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i141.i

if.end30.i.i:                                     ; preds = %if.else25.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %mac_addr31.i.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 43
  %mac_addr33.i.i = getelementptr inbounds %struct.hwcfg_r505, ptr %call7.i.i137.i, i32 0, i32 4
  %220 = call ptr @memcpy(ptr %mac_addr31.i.i, ptr %mac_addr33.i.i, i32 6)
  %regulatory_domain35.i.i = getelementptr inbounds %struct.hwcfg_r505, ptr %call7.i.i137.i, i32 0, i32 5
  br label %if.end15.i

do.end.i141.i:                                    ; preds = %if.else25.i.i.do.end.i141.i_crit_edge, %if.then13.i.i.do.end.i141.i_crit_edge, %if.then3.i.i.do.end.i141.i_crit_edge
  %ret.0.ph.i.i = phi i32 [ %call2.i74.i.i, %if.else25.i.i.do.end.i141.i_crit_edge ], [ %call2.i74.i.i, %if.then13.i.i.do.end.i141.i_crit_edge ], [ %call2.i.i.i, %if.then3.i.i.do.end.i141.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i137.i) #9
  %221 = ptrtoint ptr %hw3.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %hw3.i, align 4
  %wiphy.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %222, i32 0, i32 1
  %223 = ptrtoint ptr %wiphy.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %wiphy.i.i, align 8
  %dev.i140.i = getelementptr inbounds %struct.wiphy, ptr %224, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i140.i, ptr noundef nonnull @.str.397, i32 noundef %ret.0.ph.i.i) #12
  br label %if.then89.sink.split

if.end15.i:                                       ; preds = %if.end30.i.i, %if.end18.i.i, %if.end6.i.i
  %.sink.in.i.i = phi ptr [ %regulatory_domain.i.i, %if.end6.i.i ], [ %regulatory_domain35.i.i, %if.end30.i.i ], [ %regulatory_domain23.i.i, %if.end18.i.i ]
  %225 = ptrtoint ptr %.sink.in.i.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %.sink.i.i = load i8, ptr %.sink.in.i.i, align 2
  %regulatory_domain9.i.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 44
  %226 = ptrtoint ptr %regulatory_domain9.i.i to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 %.sink.i.i, ptr %regulatory_domain9.i.i, align 2
  tail call void @kfree(ptr noundef nonnull %call7.i.i137.i) #9
  %227 = ptrtoint ptr %regulatory_domain9.i.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %regulatory_domain9.i.i, align 2
  %229 = zext i8 %228 to i64
  call void @__sanitizer_cov_trace_switch(i64 %229, ptr @__sancov_gen_cov_switch_values.436)
  switch i8 %228, label %for.inc.7.i.i [
    i8 16, label %if.end15.i.at76_get_reg_domain.exit.i_crit_edge
    i8 32, label %for.end.fold.split.i.i
    i8 48, label %for.end.fold.split10.i.i
    i8 49, label %for.end.fold.split11.i.i
    i8 50, label %for.end.fold.split12.i.i
    i8 64, label %for.end.fold.split13.i.i
    i8 65, label %for.end.fold.split14.i.i
    i8 80, label %for.end.fold.split15.i.i
  ]

if.end15.i.at76_get_reg_domain.exit.i_crit_edge:  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_get_reg_domain.exit.i

for.inc.7.i.i:                                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_get_reg_domain.exit.i

for.end.fold.split.i.i:                           ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_get_reg_domain.exit.i

for.end.fold.split10.i.i:                         ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_get_reg_domain.exit.i

for.end.fold.split11.i.i:                         ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_get_reg_domain.exit.i

for.end.fold.split12.i.i:                         ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_get_reg_domain.exit.i

for.end.fold.split13.i.i:                         ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_get_reg_domain.exit.i

for.end.fold.split14.i.i:                         ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_get_reg_domain.exit.i

for.end.fold.split15.i.i:                         ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_get_reg_domain.exit.i

at76_get_reg_domain.exit.i:                       ; preds = %for.end.fold.split15.i.i, %for.end.fold.split14.i.i, %for.end.fold.split13.i.i, %for.end.fold.split12.i.i, %for.end.fold.split11.i.i, %for.end.fold.split10.i.i, %for.end.fold.split.i.i, %for.inc.7.i.i, %if.end15.i.at76_get_reg_domain.exit.i_crit_edge
  %i.0.lcssa.i.i = phi i32 [ 0, %if.end15.i.at76_get_reg_domain.exit.i_crit_edge ], [ 8, %for.inc.7.i.i ], [ 1, %for.end.fold.split.i.i ], [ 2, %for.end.fold.split10.i.i ], [ 3, %for.end.fold.split11.i.i ], [ 4, %for.end.fold.split12.i.i ], [ 5, %for.end.fold.split13.i.i ], [ 6, %for.end.fold.split14.i.i ], [ 7, %for.end.fold.split15.i.i ]
  %arrayidx5.i.i = getelementptr [9 x %struct.reg_domain], ptr @at76_get_reg_domain.fd_tab, i32 0, i32 %i.0.lcssa.i.i
  %domain.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 42
  %230 = ptrtoint ptr %domain.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr %arrayidx5.i.i, ptr %domain.i, align 4
  %channel.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 18
  %231 = ptrtoint ptr %channel.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 10, ptr %channel.i, align 4
  %iw_mode.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 19
  %232 = ptrtoint ptr %iw_mode.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 2, ptr %iw_mode.i, align 4
  %rts_threshold.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 30
  %233 = ptrtoint ptr %rts_threshold.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 1536, ptr %rts_threshold.i, align 4
  %frag_threshold.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 29
  %234 = ptrtoint ptr %frag_threshold.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 1536, ptr %frag_threshold.i, align 4
  %short_retry_limit.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 31
  %235 = ptrtoint ptr %short_retry_limit.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 8, ptr %short_retry_limit.i, align 4
  %txrate.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 28
  %236 = ptrtoint ptr %txrate.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 4, ptr %txrate.i, align 4
  %preamble_type.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 26
  %237 = ptrtoint ptr %preamble_type.i to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 0, ptr %preamble_type.i, align 4
  %beacon_period.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 52
  %238 = ptrtoint ptr %beacon_period.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 100, ptr %beacon_period.i, align 4
  %auth_mode.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 27
  %239 = ptrtoint ptr %auth_mode.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 0, ptr %auth_mode.i, align 4
  %scan_min_time.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 32
  %240 = ptrtoint ptr %scan_min_time.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 10, ptr %scan_min_time.i, align 4
  %scan_max_time.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 33
  %241 = ptrtoint ptr %scan_max_time.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 120, ptr %scan_max_time.i, align 4
  %scan_mode.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 34
  %242 = ptrtoint ptr %scan_mode.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 0, ptr %scan_mode.i, align 4
  %device_unplugged.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 49
  %243 = ptrtoint ptr %device_unplugged.i to i32
  call void @__asan_load1_noabort(i32 %243)
  %bf.load.i = load i8, ptr %device_unplugged.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %device_unplugged.i, align 4
  %244 = ptrtoint ptr %hw3.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %hw3.i, align 4
  %wiphy18.i = getelementptr inbounds %struct.ieee80211_hw, ptr %245, i32 0, i32 1
  %246 = ptrtoint ptr %wiphy18.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %wiphy18.i, align 8
  %max_scan_ssids.i = getelementptr inbounds %struct.wiphy, ptr %247, i32 0, i32 18
  %248 = ptrtoint ptr %max_scan_ssids.i to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 1, ptr %max_scan_ssids.i, align 32
  %249 = load ptr, ptr %hw3.i, align 4
  %wiphy22.i = getelementptr inbounds %struct.ieee80211_hw, ptr %249, i32 0, i32 1
  %250 = ptrtoint ptr %wiphy22.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %wiphy22.i, align 8
  %max_scan_ie_len.i = getelementptr inbounds %struct.wiphy, ptr %251, i32 0, i32 22
  %252 = ptrtoint ptr %max_scan_ie_len.i to i32
  call void @__asan_store2_noabort(i32 %252)
  store i16 0, ptr %max_scan_ie_len.i, align 4
  %253 = load ptr, ptr %hw3.i, align 4
  %wiphy24.i = getelementptr inbounds %struct.ieee80211_hw, ptr %253, i32 0, i32 1
  %254 = ptrtoint ptr %wiphy24.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %wiphy24.i, align 8
  %interface_modes.i = getelementptr inbounds %struct.wiphy, ptr %255, i32 0, i32 9
  %256 = ptrtoint ptr %interface_modes.i to i32
  call void @__asan_store2_noabort(i32 %256)
  store i16 4, ptr %interface_modes.i, align 4
  %257 = load ptr, ptr %hw3.i, align 4
  %wiphy26.i = getelementptr inbounds %struct.ieee80211_hw, ptr %257, i32 0, i32 1
  %258 = ptrtoint ptr %wiphy26.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %wiphy26.i, align 8
  %bands.i = getelementptr inbounds %struct.wiphy, ptr %259, i32 0, i32 53
  %260 = ptrtoint ptr %bands.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store ptr @at76_supported_band, ptr %bands.i, align 16
  %261 = load ptr, ptr %hw3.i, align 4
  %flags.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %261, i32 0, i32 4
  %262 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %flags.i.i, align 4
  %or.i.i144.i = or i32 %263, 2
  store i32 %or.i.i144.i, ptr %flags.i.i, align 4
  %264 = load ptr, ptr %hw3.i, align 4
  %flags.i145.i = getelementptr inbounds %struct.ieee80211_hw, ptr %264, i32 0, i32 4
  %265 = ptrtoint ptr %flags.i145.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %flags.i145.i, align 4
  %or.i.i146.i = or i32 %266, 8
  store i32 %or.i.i146.i, ptr %flags.i145.i, align 4
  %267 = load ptr, ptr %hw3.i, align 4
  %max_signal.i = getelementptr inbounds %struct.ieee80211_hw, ptr %267, i32 0, i32 13
  %268 = ptrtoint ptr %max_signal.i to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 100, ptr %max_signal.i, align 8
  %269 = load ptr, ptr %hw3.i, align 4
  %dev31.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  %wiphy.i147.i = getelementptr inbounds %struct.ieee80211_hw, ptr %269, i32 0, i32 1
  %270 = ptrtoint ptr %wiphy.i147.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %wiphy.i147.i, align 8
  %parent.i.i.i = getelementptr inbounds %struct.wiphy, ptr %271, i32 0, i32 56, i32 1
  %272 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store ptr %dev31.i, ptr %parent.i.i.i, align 8
  %273 = load ptr, ptr %hw3.i, align 4
  %mac_addr.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 43
  %wiphy.i148.i = getelementptr inbounds %struct.ieee80211_hw, ptr %273, i32 0, i32 1
  %274 = ptrtoint ptr %wiphy.i148.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %wiphy.i148.i, align 8
  %perm_addr.i.i = getelementptr inbounds %struct.wiphy, ptr %275, i32 0, i32 1
  %276 = call ptr @memcpy(ptr %perm_addr.i.i, ptr %mac_addr.i, i32 6)
  %fw_version.i181 = getelementptr inbounds %struct.wiphy, ptr %247, i32 0, i32 38
  %277 = ptrtoint ptr %fw_version84 to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %fw_version84, align 4
  %conv35.i = zext i8 %278 to i32
  %minor.i182 = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 48, i32 1
  %279 = ptrtoint ptr %minor.i182 to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %minor.i182, align 1
  %conv37.i = zext i8 %280 to i32
  %patch.i183 = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 48, i32 2
  %281 = ptrtoint ptr %patch.i183 to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %patch.i183, align 2
  %conv39.i = zext i8 %282 to i32
  %build.i184 = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 48, i32 3
  %283 = ptrtoint ptr %build.i184 to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %build.i184, align 1
  %conv41.i = zext i8 %284 to i32
  %call42.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_version.i181, i32 noundef 32, ptr noundef nonnull @.str.370, i32 noundef %conv35.i, i32 noundef %conv37.i, i32 noundef %conv39.i, i32 noundef %conv41.i) #9
  %285 = ptrtoint ptr %board_type85 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %board_type85, align 4
  %hw_version.i = getelementptr inbounds %struct.wiphy, ptr %247, i32 0, i32 39
  %287 = ptrtoint ptr %hw_version.i to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 %286, ptr %hw_version.i, align 4
  %arrayidx.i149.i = getelementptr %struct.wiphy, ptr %247, i32 0, i32 14, i32 1
  %288 = ptrtoint ptr %arrayidx.i149.i to i32
  call void @__asan_load1_noabort(i32 %288)
  %289 = load i8, ptr %arrayidx.i149.i, align 1
  %290 = or i8 %289, 32
  store i8 %290, ptr %arrayidx.i149.i, align 1
  %291 = ptrtoint ptr %hw3.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %hw3.i, align 4
  %call44.i = tail call i32 @ieee80211_register_hw(ptr noundef %292) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %if.end52.i185, label %at76_init_new_device.exit

if.end52.i185:                                    ; preds = %at76_get_reg_domain.exit.i
  %mac80211_registered.i = getelementptr inbounds %struct.at76_priv, ptr %125, i32 0, i32 54
  %293 = ptrtoint ptr %mac80211_registered.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 1, ptr %mac80211_registered.i, align 4
  %294 = ptrtoint ptr %hw3.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %hw3.i, align 4
  %wiphy57.i = getelementptr inbounds %struct.ieee80211_hw, ptr %295, i32 0, i32 1
  %296 = ptrtoint ptr %wiphy57.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %wiphy57.i, align 8
  %dev58.i = getelementptr inbounds %struct.wiphy, ptr %297, i32 0, i32 56
  %init_name.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 3
  %298 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i150.i = icmp eq ptr %299, null
  br i1 %tobool.not.i150.i, label %if.end.i151.i, label %if.end52.i185.at76_init_new_device.exit.thread194_crit_edge

if.end52.i185.at76_init_new_device.exit.thread194_crit_edge: ; preds = %if.end52.i185
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_init_new_device.exit.thread194

if.end.i151.i:                                    ; preds = %if.end52.i185
  call void @__sanitizer_cov_trace_pc() #11
  %300 = ptrtoint ptr %dev31.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %dev31.i, align 4
  br label %at76_init_new_device.exit.thread194

at76_init_new_device.exit.thread194:              ; preds = %if.end.i151.i, %if.end52.i185.at76_init_new_device.exit.thread194_crit_edge
  %retval.0.i152.i = phi ptr [ %301, %if.end.i151.i ], [ %299, %if.end52.i185.at76_init_new_device.exit.thread194_crit_edge ]
  %302 = ptrtoint ptr %fw_version84 to i32
  call void @__asan_load1_noabort(i32 %302)
  %303 = load i8, ptr %fw_version84, align 4
  %conv65.i = zext i8 %303 to i32
  %304 = ptrtoint ptr %minor.i182 to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %minor.i182, align 1
  %conv68.i = zext i8 %305 to i32
  %306 = ptrtoint ptr %patch.i183 to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %patch.i183, align 2
  %conv71.i = zext i8 %307 to i32
  %308 = ptrtoint ptr %build.i184 to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %build.i184, align 1
  %conv74.i = zext i8 %309 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev58.i, ptr noundef nonnull @.str.375, ptr noundef %retval.0.i152.i, ptr noundef %mac_addr.i, i32 noundef %conv65.i, i32 noundef %conv68.i, i32 noundef %conv71.i, i32 noundef %conv74.i) #12
  %310 = ptrtoint ptr %hw3.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %hw3.i, align 4
  %wiphy79.i = getelementptr inbounds %struct.ieee80211_hw, ptr %311, i32 0, i32 1
  %312 = ptrtoint ptr %wiphy79.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %wiphy79.i, align 8
  %dev80.i = getelementptr inbounds %struct.wiphy, ptr %313, i32 0, i32 56
  %314 = ptrtoint ptr %regulatory_domain9.i.i to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %regulatory_domain9.i.i, align 2
  %conv82.i = zext i8 %315 to i32
  %316 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %domain.i, align 4
  %name.i = getelementptr inbounds %struct.reg_domain, ptr %317, i32 0, i32 1
  %318 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %name.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev80.i, ptr noundef nonnull @.str.378, i32 noundef %conv82.i, ptr noundef %319) #12
  br label %exit

at76_init_new_device.exit:                        ; preds = %at76_get_reg_domain.exit.i
  %call51.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.372, i32 noundef %call44.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %cmp87 = icmp slt i32 %call44.i, 0
  br i1 %cmp87, label %at76_init_new_device.exit.if.then89_crit_edge, label %at76_init_new_device.exit.exit_crit_edge

at76_init_new_device.exit.exit_crit_edge:         ; preds = %at76_init_new_device.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

at76_init_new_device.exit.if.then89_crit_edge:    ; preds = %at76_init_new_device.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then89

if.then89.sink.split:                             ; preds = %do.end.i141.i, %if.end7.i.if.then89.sink.split_crit_edge, %if.end54.i.i.if.then89.sink.split_crit_edge, %for.end.i.i.if.then89.sink.split_crit_edge, %do.end15.i.i.if.then89.sink.split_crit_edge
  %.str.392.sink = phi ptr [ @.str.389, %for.end.i.i.if.then89.sink.split_crit_edge ], [ @.str.389, %do.end15.i.i.if.then89.sink.split_crit_edge ], [ @.str.392, %if.end54.i.i.if.then89.sink.split_crit_edge ], [ @.str.368, %do.end.i141.i ], [ @.str.368, %if.end7.i.if.then89.sink.split_crit_edge ]
  %ret.0.i193.ph = phi i32 [ -6, %for.end.i.i.if.then89.sink.split_crit_edge ], [ -6, %do.end15.i.i.if.then89.sink.split_crit_edge ], [ -12, %if.end54.i.i.if.then89.sink.split_crit_edge ], [ %ret.0.ph.i.i, %do.end.i141.i ], [ -12, %if.end7.i.if.then89.sink.split_crit_edge ]
  %dev75.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev75.i.i, ptr noundef nonnull %.str.392.sink) #12
  br label %if.then89

if.then89:                                        ; preds = %if.then89.sink.split, %at76_init_new_device.exit.if.then89_crit_edge, %if.end76.i.i.if.then89_crit_edge
  %ret.0.i193 = phi i32 [ %call44.i, %at76_init_new_device.exit.if.then89_crit_edge ], [ -12, %if.end76.i.i.if.then89_crit_edge ], [ %ret.0.i193.ph, %if.then89.sink.split ]
  tail call fastcc void @at76_delete_device(ptr noundef nonnull %125)
  br label %if.then93

exit:                                             ; preds = %at76_init_new_device.exit.exit_crit_edge, %at76_init_new_device.exit.thread194, %do.end25.exit_crit_edge
  %ret.0 = phi i32 [ %call27, %do.end25.exit_crit_edge ], [ %call44.i, %at76_init_new_device.exit.exit_crit_edge ], [ 0, %at76_init_new_device.exit.thread194 ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #9
  br label %if.end94

if.then93:                                        ; preds = %if.then89, %at76_alloc_new_device.exit.if.then93_crit_edge, %at76_alloc_new_device.exit.thread, %do.end76, %do.end77.i, %if.end13.i.if.then93_crit_edge, %do.end12.i, %do.end63.if.then93_crit_edge, %do.end32, %do.end18, %at76_load_firmware.exit.if.then93_crit_edge, %entry.if.then93_crit_edge
  %ret.0.ph = phi i32 [ -12, %at76_alloc_new_device.exit.thread ], [ -12, %at76_alloc_new_device.exit.if.then93_crit_edge ], [ -2, %at76_load_firmware.exit.if.then93_crit_edge ], [ -12, %entry.if.then93_crit_edge ], [ %ret.0.i193, %if.then89 ], [ %retval.0.i162, %do.end76 ], [ %call27, %do.end32 ], [ -16, %do.end18 ], [ %ret.0122.i, %do.end77.i ], [ -12, %if.end13.i.if.then93_crit_edge ], [ -2, %do.end63.if.then93_crit_edge ], [ -22, %do.end12.i ]
  tail call void @kfree(ptr noundef %call7.i) #9
  tail call void @usb_put_dev(ptr noundef %call1) #9
  br label %if.end94

if.end94:                                         ; preds = %if.then93, %exit
  %ret.0199 = phi i32 [ %ret.0.ph, %if.then93 ], [ %ret.0, %exit ]
  ret i32 %ret.0199
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at76_disconnect(ptr noundef %interface) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  store ptr null, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %hw = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 53
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %5, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.417) #12
  tail call fastcc void @at76_delete_device(ptr noundef nonnull %1)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void @usb_put_dev(ptr noundef %7) #9
  %dev4 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev4, ptr noundef nonnull @.str.420) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @at76_load_internal_fw(ptr noundef %udev, ptr nocapture noundef readonly %fwe) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %board_type = getelementptr inbounds %struct.fwentry, ptr %fwe, i32 0, i32 6
  %0 = ptrtoint ptr %board_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %board_type, align 4
  %2 = add i32 %1, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %2)
  %3 = icmp ult i32 %2, -2
  %intfw = getelementptr inbounds %struct.fwentry, ptr %fwe, i32 0, i32 5
  %4 = ptrtoint ptr %intfw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intfw, align 4
  %intfw_size = getelementptr inbounds %struct.fwentry, ptr %fwe, i32 0, i32 3
  %6 = ptrtoint ptr %intfw_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %intfw_size, align 4
  %8 = load i32, ptr @at76_debug, align 4
  %and.i = and i32 %8, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.do.end3.i_crit_edge, label %do.end.i

entry.do.end3.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %cond = select i1 %3, i32 0, i32 200
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67, ptr noundef %5, i32 noundef %7, i32 noundef %cond) #12
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %entry.do.end3.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not.i = icmp eq i32 %7, 0
  br i1 %tobool4.not.i, label %at76_usbdfu_download.exit.thread, label %if.end9.i

at76_usbdfu_download.exit.thread:                 ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.69) #12
  br label %do.end

if.end9.i:                                        ; preds = %do.end3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 6) #13
  %tobool11.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool11.not.i, label %if.end9.i.at76_usbdfu_download.exit_crit_edge, label %if.end13.i

if.end9.i.at76_usbdfu_download.exit_crit_edge:    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_usbdfu_download.exit

if.end13.i:                                       ; preds = %if.end9.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i302.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 1024) #13
  %tobool15.not.i = icmp eq ptr %call7.i302.i, null
  br i1 %tobool15.not.i, label %if.end13.i.at76_usbdfu_download.exit_crit_edge, label %if.end17.i

if.end13.i.at76_usbdfu_download.exit_crit_edge:   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_usbdfu_download.exit

if.end17.i:                                       ; preds = %if.end13.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i303.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 1) #13
  %tobool19.not.i = icmp eq ptr %call7.i303.i, null
  br i1 %tobool19.not.i, label %if.end17.i.at76_usbdfu_download.exit_crit_edge, label %if.end21.i

if.end17.i.at76_usbdfu_download.exit_crit_edge:   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_usbdfu_download.exit

if.end21.i:                                       ; preds = %if.end17.i
  %12 = ptrtoint ptr %call7.i303.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %call7.i303.i, align 8
  %state149.i = getelementptr inbounds %struct.dfu_status, ptr %call7.i.i, i32 0, i32 2
  %poll_timeout.i314.i = getelementptr inbounds %struct.dfu_status, ptr %call7.i.i, i32 0, i32 1
  %arrayidx.i315.i = getelementptr %struct.dfu_status, ptr %call7.i.i, i32 0, i32 1, i32 2
  %arrayidx2.i318.i = getelementptr %struct.dfu_status, ptr %call7.i.i, i32 0, i32 1, i32 1
  %dev129.i = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 15
  br label %do.body22.i

do.body22.i:                                      ; preds = %do.cond233.i.do.body22.i_crit_edge, %if.end21.i
  %blockno.0.i = phi i32 [ 0, %if.end21.i ], [ %blockno.1.i, %do.cond233.i.do.body22.i_crit_edge ]
  %dfu_timeout.0.i = phi i32 [ 0, %if.end21.i ], [ %dfu_timeout.2.i, %do.cond233.i.do.body22.i_crit_edge ]
  %need_dfu_state.0.i = phi i32 [ 1, %if.end21.i ], [ %need_dfu_state.2.i, %do.cond233.i.do.body22.i_crit_edge ]
  %ret.0.i = phi i32 [ 0, %if.end21.i ], [ %ret.2.i, %do.cond233.i.do.body22.i_crit_edge ]
  %size.addr.0.i = phi i32 [ %7, %if.end21.i ], [ %size.addr.1.i, %do.cond233.i.do.body22.i_crit_edge ]
  %buf.addr.0.i = phi ptr [ %5, %if.end21.i ], [ %buf.addr.1.i, %do.cond233.i.do.body22.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %need_dfu_state.0.i)
  %tobool23.not.i = icmp eq i32 %need_dfu_state.0.i, 0
  br i1 %tobool23.not.i, label %do.body22.i.if.end32.i_crit_edge, label %if.then24.i

do.body22.i.if.end32.i_crit_edge:                 ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32.i

if.then24.i:                                      ; preds = %do.body22.i
  %13 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %udev, align 8
  %shl.i.i.i = shl i32 %14, 8
  %or1.i.i = or i32 %shl.i.i.i, -2147483520
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %udev, i32 noundef %or1.i.i, i8 noundef zeroext 5, i8 noundef zeroext -95, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i303.i, i16 noundef zeroext 1, i32 noundef 5000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i, label %do.end29.i, label %if.then24.i.if.end32.i_crit_edge

if.then24.i.if.end32.i_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32.i

do.end29.i:                                       ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev129.i, ptr noundef nonnull @.str.72, i32 noundef %call2.i.i) #12
  br label %at76_usbdfu_download.exit

if.end32.i:                                       ; preds = %if.then24.i.if.end32.i_crit_edge, %do.body22.i.if.end32.i_crit_edge
  %ret.1.i = phi i32 [ %ret.0.i, %do.body22.i.if.end32.i_crit_edge ], [ %call2.i.i, %if.then24.i.if.end32.i_crit_edge ]
  %15 = ptrtoint ptr %call7.i303.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %call7.i303.i, align 8
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.437)
  switch i8 %16, label %do.body220.i [
    i8 3, label %do.body33.i
    i8 4, label %do.body56.i
    i8 5, label %do.body82.i
    i8 2, label %if.end32.i.do.body95.i_crit_edge
    i8 6, label %do.body132.i
    i8 7, label %do.body169.i
    i8 8, label %do.body182.i
    i8 9, label %do.body195.i
    i8 10, label %do.body208.i
  ]

if.end32.i.do.body95.i_crit_edge:                 ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body95.i

do.body33.i:                                      ; preds = %if.end32.i
  %18 = load i32, ptr @at76_debug, align 4
  %and34.i = and i32 %18, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %do.body33.i.do.end44.i_crit_edge, label %do.end39.i

do.body33.i.do.end44.i_crit_edge:                 ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end44.i

do.end39.i:                                       ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #11
  %call41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #12
  br label %do.end44.i

do.end44.i:                                       ; preds = %do.end39.i, %do.body33.i.do.end44.i_crit_edge
  %19 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %udev, align 8
  %shl.i.i304.i = shl i32 %20, 8
  %or1.i305.i = or i32 %shl.i.i304.i, -2147483520
  %call2.i306.i = tail call i32 @usb_control_msg(ptr noundef %udev, i32 noundef %or1.i305.i, i8 noundef zeroext 3, i8 noundef zeroext -95, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 6, i32 noundef 5000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i306.i)
  %cmp46.i = icmp sgt i32 %call2.i306.i, -1
  br i1 %cmp46.i, label %if.then48.i, label %do.end52.i

if.then48.i:                                      ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %state149.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %state149.i, align 4
  %23 = ptrtoint ptr %call7.i303.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %call7.i303.i, align 8
  %24 = ptrtoint ptr %arrayidx2.i318.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx2.i318.i, align 2
  %conv3.i.i = zext i8 %25 to i32
  %shl4.i.i = shl nuw nsw i32 %conv3.i.i, 8
  %26 = ptrtoint ptr %arrayidx.i315.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i315.i, align 1
  %conv.i.i = zext i8 %27 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 16
  %or.i.i = or i32 %shl4.i.i, %shl.i.i
  %28 = ptrtoint ptr %poll_timeout.i314.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %poll_timeout.i314.i, align 1
  %conv7.i.i = zext i8 %29 to i32
  %or8.i.i = or i32 %or.i.i, %conv7.i.i
  %call2.i.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %or8.i.i) #9
  br label %do.cond233.i

do.end52.i:                                       ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev129.i, ptr noundef nonnull @.str.78, i32 noundef %call2.i306.i) #12
  br label %at76_usbdfu_download.exit

do.body56.i:                                      ; preds = %if.end32.i
  %30 = load i32, ptr @at76_debug, align 4
  %and57.i = and i32 %30, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i)
  %tobool58.not.i = icmp eq i32 %and57.i, 0
  br i1 %tobool58.not.i, label %do.body56.i.do.end67.i_crit_edge, label %do.end62.i

do.body56.i.do.end67.i_crit_edge:                 ; preds = %do.body56.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67.i

do.end62.i:                                       ; preds = %do.body56.i
  call void @__sanitizer_cov_trace_pc() #11
  %call64.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81) #12
  br label %do.end67.i

do.end67.i:                                       ; preds = %do.end62.i, %do.body56.i.do.end67.i_crit_edge
  %31 = load i32, ptr @at76_debug, align 4
  %and69.i = and i32 %31, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69.i)
  %tobool70.not.i = icmp eq i32 %and69.i, 0
  br i1 %tobool70.not.i, label %do.end67.i.do.end79.i_crit_edge, label %do.end74.i

do.end67.i.do.end79.i_crit_edge:                  ; preds = %do.end67.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end79.i

do.end74.i:                                       ; preds = %do.end67.i
  call void @__sanitizer_cov_trace_pc() #11
  %call76.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84) #12
  br label %do.end79.i

do.end79.i:                                       ; preds = %do.end74.i, %do.end67.i.do.end79.i_crit_edge
  %call80.i = tail call i32 @schedule_timeout_interruptible(i32 noundef %dfu_timeout.0.i) #9
  br label %do.cond233.i

do.body82.i:                                      ; preds = %if.end32.i
  %32 = load i32, ptr @at76_debug, align 4
  %and83.i = and i32 %32, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83.i)
  %tobool84.not.i = icmp eq i32 %and83.i, 0
  br i1 %tobool84.not.i, label %do.body82.i.do.body95.i_crit_edge, label %do.end88.i

do.body82.i.do.body95.i_crit_edge:                ; preds = %do.body82.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body95.i

do.end88.i:                                       ; preds = %do.body82.i
  call void @__sanitizer_cov_trace_pc() #11
  %call90.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #12
  br label %do.body95.i

do.body95.i:                                      ; preds = %do.end88.i, %do.body82.i.do.body95.i_crit_edge, %if.end32.i.do.body95.i_crit_edge
  %33 = load i32, ptr @at76_debug, align 4
  %and96.i = and i32 %33, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96.i)
  %tobool97.not.i = icmp eq i32 %and96.i, 0
  br i1 %tobool97.not.i, label %do.body95.i.do.end106.i_crit_edge, label %do.end101.i

do.body95.i.do.end106.i_crit_edge:                ; preds = %do.body95.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end106.i

do.end101.i:                                      ; preds = %do.body95.i
  call void @__sanitizer_cov_trace_pc() #11
  %call103.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90) #12
  br label %do.end106.i

do.end106.i:                                      ; preds = %do.end101.i, %do.body95.i.do.end106.i_crit_edge
  %34 = tail call i32 @llvm.smin.i32(i32 %size.addr.0.i, i32 1024) #9
  %35 = call ptr @memcpy(ptr %call7.i302.i, ptr %buf.addr.0.i, i32 %34)
  %36 = load i32, ptr @at76_debug, align 4
  %and111.i = and i32 %36, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111.i)
  %tobool112.not.i = icmp eq i32 %and111.i, 0
  br i1 %tobool112.not.i, label %do.end106.i.do.end121.i_crit_edge, label %do.end116.i

do.end106.i.do.end121.i_crit_edge:                ; preds = %do.end106.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end121.i

do.end116.i:                                      ; preds = %do.end106.i
  call void @__sanitizer_cov_trace_pc() #11
  %call118.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, i32 noundef %size.addr.0.i, i32 noundef %34, i32 noundef %blockno.0.i) #12
  br label %do.end121.i

do.end121.i:                                      ; preds = %do.end116.i, %do.end106.i.do.end121.i_crit_edge
  %37 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %udev, align 8
  %shl.i.i307.i = shl i32 %38, 8
  %or.i308.i = or i32 %shl.i.i307.i, -2147483648
  %conv.i309.i = trunc i32 %blockno.0.i to i16
  %conv1.i.i = trunc i32 %34 to i16
  %call2.i310.i = tail call i32 @usb_control_msg(ptr noundef %udev, i32 noundef %or.i308.i, i8 noundef zeroext 1, i8 noundef zeroext 33, i16 noundef zeroext %conv.i309.i, i16 noundef zeroext 0, ptr noundef nonnull %call7.i302.i, i16 noundef zeroext %conv1.i.i, i32 noundef 5000) #9
  %add.ptr.i = getelementptr i8, ptr %buf.addr.0.i, i32 %34
  %sub.i = sub i32 %size.addr.0.i, %34
  %inc.i = add i32 %blockno.0.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i310.i, i32 %34)
  %cmp123.not.i = icmp eq i32 %call2.i310.i, %34
  br i1 %cmp123.not.i, label %do.end121.i.do.cond233.i_crit_edge, label %do.end128.i

do.end121.i.do.cond233.i_crit_edge:               ; preds = %do.end121.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond233.i

do.end128.i:                                      ; preds = %do.end121.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev129.i, ptr noundef nonnull @.str.96, i32 noundef %call2.i310.i) #12
  br label %do.cond233.i

do.body132.i:                                     ; preds = %if.end32.i
  %39 = load i32, ptr @at76_debug, align 4
  %and133.i = and i32 %39, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133.i)
  %tobool134.not.i = icmp eq i32 %and133.i, 0
  br i1 %tobool134.not.i, label %do.body132.i.do.end143.i_crit_edge, label %do.end138.i

do.body132.i.do.end143.i_crit_edge:               ; preds = %do.body132.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end143.i

do.end138.i:                                      ; preds = %do.body132.i
  call void @__sanitizer_cov_trace_pc() #11
  %call140.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99) #12
  br label %do.end143.i

do.end143.i:                                      ; preds = %do.end138.i, %do.body132.i.do.end143.i_crit_edge
  %40 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %udev, align 8
  %shl.i.i311.i = shl i32 %41, 8
  %or1.i312.i = or i32 %shl.i.i311.i, -2147483520
  %call2.i313.i = tail call i32 @usb_control_msg(ptr noundef %udev, i32 noundef %or1.i312.i, i8 noundef zeroext 3, i8 noundef zeroext -95, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 6, i32 noundef 5000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i313.i)
  %cmp145.i = icmp slt i32 %call2.i313.i, 0
  br i1 %cmp145.i, label %do.end143.i.at76_usbdfu_download.exit_crit_edge, label %if.end148.i

do.end143.i.at76_usbdfu_download.exit_crit_edge:  ; preds = %do.end143.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_usbdfu_download.exit

if.end148.i:                                      ; preds = %do.end143.i
  %42 = ptrtoint ptr %state149.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %state149.i, align 4
  %44 = ptrtoint ptr %call7.i303.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %call7.i303.i, align 8
  %45 = ptrtoint ptr %arrayidx2.i318.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx2.i318.i, align 2
  %conv3.i319.i = zext i8 %46 to i32
  %shl4.i320.i = shl nuw nsw i32 %conv3.i319.i, 8
  %47 = ptrtoint ptr %arrayidx.i315.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.i315.i, align 1
  %conv.i316.i = zext i8 %48 to i32
  %shl.i317.i = shl nuw nsw i32 %conv.i316.i, 16
  %or.i321.i = or i32 %shl4.i320.i, %shl.i317.i
  %49 = ptrtoint ptr %poll_timeout.i314.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %poll_timeout.i314.i, align 1
  %conv7.i322.i = zext i8 %50 to i32
  %or8.i323.i = or i32 %or.i321.i, %conv7.i322.i
  %call2.i.i327.i = tail call i32 @__msecs_to_jiffies(i32 noundef %or8.i323.i) #9
  %spec.select.i = select i1 %3, i32 %call2.i.i327.i, i32 200
  %51 = load i32, ptr @at76_debug, align 4
  %and156.i = and i32 %51, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and156.i)
  %tobool157.not.i = icmp eq i32 %and156.i, 0
  br i1 %tobool157.not.i, label %if.end148.i.do.end166.i_crit_edge, label %do.end161.i

if.end148.i.do.end166.i_crit_edge:                ; preds = %if.end148.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end166.i

do.end161.i:                                      ; preds = %if.end148.i
  call void @__sanitizer_cov_trace_pc() #11
  %call163.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102) #12
  br label %do.end166.i

do.end166.i:                                      ; preds = %do.end161.i, %if.end148.i.do.end166.i_crit_edge
  %call167.i = tail call i32 @schedule_timeout_interruptible(i32 noundef %spec.select.i) #9
  br label %do.cond233.i

do.body169.i:                                     ; preds = %if.end32.i
  %52 = load i32, ptr @at76_debug, align 4
  %and170.i = and i32 %52, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170.i)
  %tobool171.not.i = icmp eq i32 %and170.i, 0
  br i1 %tobool171.not.i, label %do.body169.i.at76_usbdfu_download.exit_crit_edge, label %do.end175.i

do.body169.i.at76_usbdfu_download.exit_crit_edge: ; preds = %do.body169.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_usbdfu_download.exit

do.end175.i:                                      ; preds = %do.body169.i
  call void @__sanitizer_cov_trace_pc() #11
  %call177.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105) #12
  br label %at76_usbdfu_download.exit

do.body182.i:                                     ; preds = %if.end32.i
  %53 = load i32, ptr @at76_debug, align 4
  %and183.i = and i32 %53, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and183.i)
  %tobool184.not.i = icmp eq i32 %and183.i, 0
  br i1 %tobool184.not.i, label %do.body182.i.at76_usbdfu_download.exit_crit_edge, label %do.end188.i

do.body182.i.at76_usbdfu_download.exit_crit_edge: ; preds = %do.body182.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_usbdfu_download.exit

do.end188.i:                                      ; preds = %do.body182.i
  call void @__sanitizer_cov_trace_pc() #11
  %call190.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108) #12
  br label %at76_usbdfu_download.exit

do.body195.i:                                     ; preds = %if.end32.i
  %54 = load i32, ptr @at76_debug, align 4
  %and196.i = and i32 %54, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and196.i)
  %tobool197.not.i = icmp eq i32 %and196.i, 0
  br i1 %tobool197.not.i, label %do.body195.i.do.cond233.i_crit_edge, label %do.end201.i

do.body195.i.do.cond233.i_crit_edge:              ; preds = %do.body195.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond233.i

do.end201.i:                                      ; preds = %do.body195.i
  call void @__sanitizer_cov_trace_pc() #11
  %call203.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111) #12
  br label %do.cond233.i

do.body208.i:                                     ; preds = %if.end32.i
  %55 = load i32, ptr @at76_debug, align 4
  %and209.i = and i32 %55, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and209.i)
  %tobool210.not.i = icmp eq i32 %and209.i, 0
  br i1 %tobool210.not.i, label %do.body208.i.at76_usbdfu_download.exit_crit_edge, label %do.end214.i

do.body208.i.at76_usbdfu_download.exit_crit_edge: ; preds = %do.body208.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_usbdfu_download.exit

do.end214.i:                                      ; preds = %do.body208.i
  call void @__sanitizer_cov_trace_pc() #11
  %call216.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114) #12
  br label %at76_usbdfu_download.exit

do.body220.i:                                     ; preds = %if.end32.i
  %56 = load i32, ptr @at76_debug, align 4
  %and221.i = and i32 %56, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and221.i)
  %tobool222.not.i = icmp eq i32 %and221.i, 0
  br i1 %tobool222.not.i, label %do.body220.i.at76_usbdfu_download.exit_crit_edge, label %do.end226.i

do.body220.i.at76_usbdfu_download.exit_crit_edge: ; preds = %do.body220.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_usbdfu_download.exit

do.end226.i:                                      ; preds = %do.body220.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.le.i = zext i8 %16 to i32
  %call229.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, i32 noundef %conv.le.i) #12
  br label %at76_usbdfu_download.exit

do.cond233.i:                                     ; preds = %do.end201.i, %do.body195.i.do.cond233.i_crit_edge, %do.end166.i, %do.end128.i, %do.end121.i.do.cond233.i_crit_edge, %do.end79.i, %if.then48.i
  %blockno.1.i = phi i32 [ %blockno.0.i, %do.end201.i ], [ %blockno.0.i, %do.body195.i.do.cond233.i_crit_edge ], [ %blockno.0.i, %do.end166.i ], [ %blockno.0.i, %do.end79.i ], [ %inc.i, %do.end128.i ], [ %inc.i, %do.end121.i.do.cond233.i_crit_edge ], [ %blockno.0.i, %if.then48.i ]
  %dfu_timeout.2.i = phi i32 [ %dfu_timeout.0.i, %do.end201.i ], [ %dfu_timeout.0.i, %do.body195.i.do.cond233.i_crit_edge ], [ %spec.select.i, %do.end166.i ], [ %dfu_timeout.0.i, %do.end79.i ], [ %dfu_timeout.0.i, %do.end128.i ], [ %dfu_timeout.0.i, %do.end121.i.do.cond233.i_crit_edge ], [ %call2.i.i.i, %if.then48.i ]
  %need_dfu_state.2.i = phi i32 [ 0, %do.end201.i ], [ 0, %do.body195.i.do.cond233.i_crit_edge ], [ 0, %do.end166.i ], [ 1, %do.end79.i ], [ 1, %do.end128.i ], [ 1, %do.end121.i.do.cond233.i_crit_edge ], [ 0, %if.then48.i ]
  %ret.2.i = phi i32 [ %ret.1.i, %do.end201.i ], [ %ret.1.i, %do.body195.i.do.cond233.i_crit_edge ], [ %call2.i313.i, %do.end166.i ], [ %ret.1.i, %do.end79.i ], [ %call2.i310.i, %do.end128.i ], [ %34, %do.end121.i.do.cond233.i_crit_edge ], [ %call2.i306.i, %if.then48.i ]
  %size.addr.1.i = phi i32 [ %size.addr.0.i, %do.end201.i ], [ %size.addr.0.i, %do.body195.i.do.cond233.i_crit_edge ], [ %size.addr.0.i, %do.end166.i ], [ %size.addr.0.i, %do.end79.i ], [ %sub.i, %do.end128.i ], [ %sub.i, %do.end121.i.do.cond233.i_crit_edge ], [ %size.addr.0.i, %if.then48.i ]
  %buf.addr.1.i = phi ptr [ %buf.addr.0.i, %do.end201.i ], [ %buf.addr.0.i, %do.body195.i.do.cond233.i_crit_edge ], [ %buf.addr.0.i, %do.end166.i ], [ %buf.addr.0.i, %do.end79.i ], [ %add.ptr.i, %do.end128.i ], [ %add.ptr.i, %do.end121.i.do.cond233.i_crit_edge ], [ %buf.addr.0.i, %if.then48.i ]
  %cmp235.i = icmp sgt i32 %ret.2.i, -1
  br i1 %cmp235.i, label %do.cond233.i.do.body22.i_crit_edge, label %do.cond233.i.at76_usbdfu_download.exit_crit_edge

do.cond233.i.at76_usbdfu_download.exit_crit_edge: ; preds = %do.cond233.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_usbdfu_download.exit

do.cond233.i.do.body22.i_crit_edge:               ; preds = %do.cond233.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22.i

at76_usbdfu_download.exit:                        ; preds = %do.cond233.i.at76_usbdfu_download.exit_crit_edge, %do.end226.i, %do.body220.i.at76_usbdfu_download.exit_crit_edge, %do.end214.i, %do.body208.i.at76_usbdfu_download.exit_crit_edge, %do.end188.i, %do.body182.i.at76_usbdfu_download.exit_crit_edge, %do.end175.i, %do.body169.i.at76_usbdfu_download.exit_crit_edge, %do.end143.i.at76_usbdfu_download.exit_crit_edge, %do.end52.i, %do.end29.i, %if.end17.i.at76_usbdfu_download.exit_crit_edge, %if.end13.i.at76_usbdfu_download.exit_crit_edge, %if.end9.i.at76_usbdfu_download.exit_crit_edge
  %block.0.i = phi ptr [ %call7.i302.i, %do.end29.i ], [ null, %if.end9.i.at76_usbdfu_download.exit_crit_edge ], [ null, %if.end13.i.at76_usbdfu_download.exit_crit_edge ], [ %call7.i302.i, %if.end17.i.at76_usbdfu_download.exit_crit_edge ], [ %call7.i302.i, %do.end175.i ], [ %call7.i302.i, %do.body169.i.at76_usbdfu_download.exit_crit_edge ], [ %call7.i302.i, %do.end188.i ], [ %call7.i302.i, %do.body182.i.at76_usbdfu_download.exit_crit_edge ], [ %call7.i302.i, %do.end52.i ], [ %call7.i302.i, %do.end214.i ], [ %call7.i302.i, %do.body208.i.at76_usbdfu_download.exit_crit_edge ], [ %call7.i302.i, %do.end226.i ], [ %call7.i302.i, %do.body220.i.at76_usbdfu_download.exit_crit_edge ], [ %call7.i302.i, %do.cond233.i.at76_usbdfu_download.exit_crit_edge ], [ %call7.i302.i, %do.end143.i.at76_usbdfu_download.exit_crit_edge ]
  %dfu_state.0.i = phi ptr [ %call7.i303.i, %do.end29.i ], [ null, %if.end9.i.at76_usbdfu_download.exit_crit_edge ], [ null, %if.end13.i.at76_usbdfu_download.exit_crit_edge ], [ null, %if.end17.i.at76_usbdfu_download.exit_crit_edge ], [ %call7.i303.i, %do.end175.i ], [ %call7.i303.i, %do.body169.i.at76_usbdfu_download.exit_crit_edge ], [ %call7.i303.i, %do.end188.i ], [ %call7.i303.i, %do.body182.i.at76_usbdfu_download.exit_crit_edge ], [ %call7.i303.i, %do.end52.i ], [ %call7.i303.i, %do.end214.i ], [ %call7.i303.i, %do.body208.i.at76_usbdfu_download.exit_crit_edge ], [ %call7.i303.i, %do.end226.i ], [ %call7.i303.i, %do.body220.i.at76_usbdfu_download.exit_crit_edge ], [ %call7.i303.i, %do.cond233.i.at76_usbdfu_download.exit_crit_edge ], [ %call7.i303.i, %do.end143.i.at76_usbdfu_download.exit_crit_edge ]
  %ret.3.i = phi i32 [ %call2.i.i, %do.end29.i ], [ -12, %if.end9.i.at76_usbdfu_download.exit_crit_edge ], [ -12, %if.end13.i.at76_usbdfu_download.exit_crit_edge ], [ -12, %if.end17.i.at76_usbdfu_download.exit_crit_edge ], [ %ret.1.i, %do.end175.i ], [ %ret.1.i, %do.body169.i.at76_usbdfu_download.exit_crit_edge ], [ %ret.1.i, %do.end188.i ], [ %ret.1.i, %do.body182.i.at76_usbdfu_download.exit_crit_edge ], [ %call2.i306.i, %do.end52.i ], [ -32, %do.end214.i ], [ -32, %do.body208.i.at76_usbdfu_download.exit_crit_edge ], [ -22, %do.end226.i ], [ -22, %do.body220.i.at76_usbdfu_download.exit_crit_edge ], [ %call2.i313.i, %do.end143.i.at76_usbdfu_download.exit_crit_edge ], [ %ret.2.i, %do.cond233.i.at76_usbdfu_download.exit_crit_edge ]
  tail call void @kfree(ptr noundef %dfu_state.0.i) #9
  tail call void @kfree(ptr noundef %block.0.i) #9
  tail call void @kfree(ptr noundef %call7.i.i) #9
  %57 = tail call i32 @llvm.smin.i32(i32 %ret.3.i, i32 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3.i)
  %cmp = icmp slt i32 %ret.3.i, 0
  br i1 %cmp, label %at76_usbdfu_download.exit.do.end_crit_edge, label %do.body3

at76_usbdfu_download.exit.do.end_crit_edge:       ; preds = %at76_usbdfu_download.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %at76_usbdfu_download.exit.do.end_crit_edge, %at76_usbdfu_download.exit.thread
  %retval.0.i52 = phi i32 [ -22, %at76_usbdfu_download.exit.thread ], [ %57, %at76_usbdfu_download.exit.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.55, i32 noundef %retval.0.i52) #12
  br label %exit

do.body3:                                         ; preds = %at76_usbdfu_download.exit
  %58 = load i32, ptr @at76_debug, align 4
  %and = and i32 %58, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.body3.do.end12_crit_edge, label %do.end8

do.body3.do.end12_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

do.end8:                                          ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #12
  br label %do.end12

do.end12:                                         ; preds = %do.end8, %do.body3.do.end12_crit_edge
  br i1 %3, label %if.then14, label %do.end12.do.body24_crit_edge

do.end12.do.body24_crit_edge:                     ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body24

if.then14:                                        ; preds = %do.end12
  %59 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %udev, align 8
  %shl.i.i49 = shl i32 %60, 8
  %or.i = or i32 %shl.i.i49, -2147483648
  %call1.i = tail call i32 @usb_control_msg(ptr noundef %udev, i32 noundef %or.i, i8 noundef zeroext 10, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 5000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp16 = icmp slt i32 %call1.i, 0
  br i1 %cmp16, label %do.end20, label %if.then14.do.body24_crit_edge

if.then14.do.body24_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body24

do.end20:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %dev21 = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.61, i32 noundef %call1.i) #12
  br label %exit

do.body24:                                        ; preds = %if.then14.do.body24_crit_edge, %do.end12.do.body24_crit_edge
  %61 = load i32, ptr @at76_debug, align 4
  %and25 = and i32 %61, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.body24.do.end35_crit_edge, label %do.end30

do.body24.do.end35_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end35

do.end30:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #11
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #12
  br label %do.end35

do.end35:                                         ; preds = %do.end30, %do.body24.do.end35_crit_edge
  %call36 = tail call i32 @schedule_timeout_interruptible(i32 noundef 201) #9
  %call37 = tail call i32 @usb_reset_device(ptr noundef %udev) #9
  br label %exit

exit:                                             ; preds = %do.end35, %do.end20, %do.end
  %ret.1 = phi i32 [ %retval.0.i52, %do.end ], [ %call1.i, %do.end20 ], [ 0, %do.end35 ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @at76_delete_device(ptr noundef %priv) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @at76_debug, align 4
  %and = and i32 %0, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.380, ptr noundef nonnull @.str.408) #12
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %device_unplugged = getelementptr inbounds %struct.at76_priv, ptr %priv, i32 0, i32 49
  %1 = ptrtoint ptr %device_unplugged to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %device_unplugged, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %device_unplugged, align 4
  %rx_tasklet = getelementptr inbounds %struct.at76_priv, ptr %priv, i32 0, i32 13
  tail call void @tasklet_kill(ptr noundef %rx_tasklet) #9
  %mac80211_registered = getelementptr inbounds %struct.at76_priv, ptr %priv, i32 0, i32 54
  %2 = ptrtoint ptr %mac80211_registered to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mac80211_registered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %do.end2.if.end5_crit_edge, label %if.then4

do.end2.if.end5_crit_edge:                        ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then4:                                         ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #11
  %hw = getelementptr inbounds %struct.at76_priv, ptr %priv, i32 0, i32 53
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_unregister_hw(ptr noundef %5) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %do.end2.if.end5_crit_edge
  %tx_urb = getelementptr inbounds %struct.at76_priv, ptr %priv, i32 0, i32 4
  %6 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_urb, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.end5.if.end10_crit_edge, label %if.then7

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_kill_urb(ptr noundef nonnull %7) #9
  %8 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_urb, align 4
  tail call void @usb_free_urb(ptr noundef %9) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end5.if.end10_crit_edge
  %rx_urb = getelementptr inbounds %struct.at76_priv, ptr %priv, i32 0, i32 5
  %10 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_urb, align 4
  %tobool11.not = icmp eq ptr %11, null
  br i1 %tobool11.not, label %if.end10.do.body16_crit_edge, label %if.then12

if.end10.do.body16_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body16

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_kill_urb(ptr noundef nonnull %11) #9
  %12 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_urb, align 4
  tail call void @usb_free_urb(ptr noundef %13) #9
  br label %do.body16

do.body16:                                        ; preds = %if.then12, %if.end10.do.body16_crit_edge
  %14 = load i32, ptr @at76_debug, align 4
  %and17 = and i32 %14, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %do.body16.do.end25_crit_edge, label %do.end21

do.body16.do.end25_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end25

do.end21:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #11
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.410, ptr noundef nonnull @.str.408) #12
  br label %do.end25

do.end25:                                         ; preds = %do.end21, %do.body16.do.end25_crit_edge
  %bulk_out_buffer = getelementptr inbounds %struct.at76_priv, ptr %priv, i32 0, i32 3
  %15 = ptrtoint ptr %bulk_out_buffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bulk_out_buffer, align 4
  tail call void @kfree(ptr noundef %16) #9
  %call26 = tail call i32 @del_timer_sync(ptr noundef nonnull @ledtrig_tx_timer) #9
  %rx_skb = getelementptr inbounds %struct.at76_priv, ptr %priv, i32 0, i32 1
  %17 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rx_skb, align 4
  tail call void @kfree_skb_reason(ptr noundef %18, i32 noundef 0) #9
  %19 = load i32, ptr @at76_debug, align 4
  %and28 = and i32 %19, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %do.end25.do.end36_crit_edge, label %do.end32

do.end25.do.end36_crit_edge:                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end36

do.end32:                                         ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #11
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.413, ptr noundef nonnull @.str.408) #12
  br label %do.end36

do.end36:                                         ; preds = %do.end32, %do.end25.do.end36_crit_edge
  %hw37 = getelementptr inbounds %struct.at76_priv, ptr %priv, i32 0, i32 53
  %20 = ptrtoint ptr %hw37 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw37, align 4
  tail call void @ieee80211_free_hw(ptr noundef %21) #9
  %22 = load i32, ptr @at76_debug, align 4
  %and39 = and i32 %22, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %do.end36.do.end47_crit_edge, label %do.end43

do.end36.do.end47_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end47

do.end43:                                         ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #11
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.395, ptr noundef nonnull @.str.408) #12
  br label %do.end47

do.end47:                                         ; preds = %do.end43, %do.end36.do.end47_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_reset_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at76_work_set_promisc(ptr noundef %work) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device_unplugged = getelementptr i8, ptr %work, i32 556
  %0 = ptrtoint ptr %device_unplugged to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %device_unplugged, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %work, i32 -124
  %mtx = getelementptr i8, ptr %work, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #9
  %mib_buf = getelementptr i8, ptr %work, i32 557
  %1 = ptrtoint ptr %mib_buf to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %mib_buf, align 1
  %size = getelementptr i8, ptr %work, i32 558
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %size, align 1
  %index = getelementptr i8, ptr %work, i32 559
  %3 = ptrtoint ptr %index to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 6, ptr %index, align 1
  %promisc = getelementptr i8, ptr %work, i32 376
  %4 = ptrtoint ptr %promisc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %promisc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp ne i32 %5, 0
  %conv = zext i1 %tobool3.not to i8
  %data = getelementptr i8, ptr %work, i32 561
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %data, align 1
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 4
  %call.i = tail call fastcc i32 @at76_set_card_command(ptr noundef %8, i8 noundef zeroext 1, ptr noundef %mib_buf, i32 noundef 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.do.end_crit_edge, label %if.end.i

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.i:                                         ; preds = %if.end
  %call2.i = tail call fastcc i32 @at76_wait_completion(ptr noundef %add.ptr, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i)
  %cmp3.not.i = icmp eq i32 %call2.i, 1
  br i1 %cmp3.not.i, label %if.end.i.if.end8_crit_edge, label %do.end.i

if.end.i.if.end8_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %hw.i = getelementptr i8, ptr %work, i32 632
  %9 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw.i, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wiphy.i, align 8
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %12, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.253, i32 noundef %call2.i) #12
  br label %do.end

do.end:                                           ; preds = %do.end.i, %if.end.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ -5, %do.end.i ], [ %call.i, %if.end.do.end_crit_edge ]
  %hw = getelementptr i8, ptr %work, i32 632
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %16, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.343, i32 noundef %retval.0.i.ph) #12
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.end.i.if.end8_crit_edge
  tail call void @mutex_unlock(ptr noundef %mtx) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at76_work_submit_rx(ptr noundef %work) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -168
  %mtx = getelementptr i8, ptr %work, i32 -136
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #9
  %call = tail call fastcc i32 @at76_submit_rx_urb(ptr noundef %add.ptr)
  tail call void @mutex_unlock(ptr noundef %mtx) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at76_work_join_bssid(ptr noundef %work) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -212
  %device_unplugged = getelementptr i8, ptr %work, i32 468
  %0 = ptrtoint ptr %device_unplugged to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %device_unplugged, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mtx = getelementptr i8, ptr %work, i32 -180
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #9
  %bssid = getelementptr i8, ptr %work, i32 240
  %1 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %bssid, align 4
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not.i = icmp eq i32 %3, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

is_valid_ether_addr.exit:                         ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %work, i32 244
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %5 to i32
  %or.i.i = or i32 %2, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.end3_crit_edge, label %if.then1

is_valid_ether_addr.exit.if.end3_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then1:                                         ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @at76_join(ptr noundef %add.ptr)
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %is_valid_ether_addr.exit.if.end3_crit_edge, %if.end.if.end3_crit_edge
  tail call void @mutex_unlock(ptr noundef %mtx) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at76_dwork_hw_scan(ptr noundef %work) #4 align 64 {
entry:
  %info = alloca %struct.cfg80211_scan_info, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -256
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #9
  %0 = call ptr @memset(ptr %info, i32 0, i32 16)
  %device_unplugged = getelementptr i8, ptr %work, i32 424
  %1 = ptrtoint ptr %device_unplugged to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %device_unplugged, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mtx = getelementptr i8, ptr %work, i32 -224
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #9
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3072, i32 noundef 40) #13
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end.at76_get_cmd_status.exit_crit_edge, label %if.end.i

if.end.at76_get_cmd_status.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_get_cmd_status.exit

if.end.i:                                         ; preds = %if.end
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %6, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or2.i, i8 noundef zeroext 34, i8 noundef zeroext -63, i16 noundef zeroext 3, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 40, i32 noundef 5000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3.i)
  %cmp.i = icmp sgt i32 %call3.i, -1
  br i1 %cmp.i, label %if.then5.i, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr i8, ptr %call7.i.i, i32 5
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  %conv6.i = zext i8 %8 to i32
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end.i.if.end7.i_crit_edge
  %ret.0.i = phi i32 [ %conv6.i, %if.then5.i ], [ %call3.i, %if.end.i.if.end7.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %at76_get_cmd_status.exit

at76_get_cmd_status.exit:                         ; preds = %if.end7.i, %if.end.at76_get_cmd_status.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %if.end7.i ], [ -12, %if.end.at76_get_cmd_status.exit_crit_edge ]
  %9 = load i32, ptr @at76_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %tobool1.not = icmp sgt i32 %9, -1
  br i1 %tobool1.not, label %at76_get_cmd_status.exit.do.end8_crit_edge, label %do.end

at76_get_cmd_status.exit.do.end8_crit_edge:       ; preds = %at76_get_cmd_status.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

do.end:                                           ; preds = %at76_get_cmd_status.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.345, ptr noundef nonnull @.str.346, i32 noundef %retval.0.i) #12
  br label %do.end8

do.end8:                                          ; preds = %do.end, %at76_get_cmd_status.exit.do.end8_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i)
  %cmp.not = icmp eq i32 %retval.0.i, 1
  br i1 %cmp.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  %hw = getelementptr i8, ptr %work, i32 500
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_queue_delayed_work(ptr noundef %11, ptr noundef %work, i32 noundef 25) #9
  tail call void @mutex_unlock(ptr noundef %mtx) #9
  br label %cleanup

if.end11:                                         ; preds = %do.end8
  %bssid = getelementptr i8, ptr %work, i32 196
  %12 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bssid, align 4
  %14 = and i32 %13, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.not.i = icmp eq i32 %14, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end11.if.end15_crit_edge

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

is_valid_ether_addr.exit:                         ; preds = %if.end11
  %add.ptr.i.i = getelementptr i8, ptr %work, i32 200
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %16 to i32
  %or.i.i = or i32 %13, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.end15_crit_edge, label %if.then13

is_valid_ether_addr.exit.if.end15_crit_edge:      ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then13:                                        ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @at76_join(ptr noundef %add.ptr)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %is_valid_ether_addr.exit.if.end15_crit_edge, %if.end11.if.end15_crit_edge
  %scanning = getelementptr i8, ptr %work, i32 288
  %17 = ptrtoint ptr %scanning to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %scanning, align 4
  tail call void @mutex_unlock(ptr noundef %mtx) #9
  %hw17 = getelementptr i8, ptr %work, i32 500
  %18 = ptrtoint ptr %hw17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw17, align 4
  call void @ieee80211_scan_completed(ptr noundef %19, ptr noundef nonnull %info) #9
  %20 = ptrtoint ptr %hw17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw17, align 4
  call void @ieee80211_wake_queues(ptr noundef %21) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then9, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at76_rx_tasklet(ptr noundef %t) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -356
  %rx_urb = getelementptr i8, ptr %t, i32 -336
  %0 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_urb, align 4
  %device_unplugged = getelementptr i8, ptr %t, i32 324
  %2 = ptrtoint ptr %device_unplugged to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %device_unplugged, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end19, label %do.body

do.body:                                          ; preds = %entry
  %3 = load i32, ptr @at76_debug, align 4
  %and = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.do.body7_crit_edge, label %do.end

do.body.do.body7_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.347) #12
  br label %do.body7

do.body7:                                         ; preds = %do.end, %do.body.do.body7_crit_edge
  %4 = load i32, ptr @at76_debug, align 4
  %and8 = and i32 %4, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.body7.cleanup_crit_edge, label %do.end13

do.body7.cleanup_crit_edge:                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end13:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  %status = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.350, i32 noundef %6) #12
  br label %cleanup

if.end19:                                         ; preds = %entry
  %rx_skb = getelementptr i8, ptr %t, i32 -352
  %7 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_skb, align 4
  %tobool20.not = icmp eq ptr %8, null
  br i1 %tobool20.not, label %if.end19.cleanup_crit_edge, label %lor.lhs.false

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end19
  %data = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 19
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %tobool22.not = icmp eq ptr %10, null
  br i1 %tobool22.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end24

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %lor.lhs.false
  %status27 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %status27 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status27, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.438)
  switch i32 %12, label %do.body34 [
    i32 0, label %do.body50
    i32 -2, label %if.end24.cleanup_crit_edge
    i32 -104, label %if.end24.cleanup_crit_edge172
  ]

if.end24.cleanup_crit_edge172:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body34:                                        ; preds = %if.end24
  %14 = load i32, ptr @at76_debug, align 4
  %and35 = and i32 %14, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %do.body34.cleanup_crit_edge, label %do.end40

do.body34.cleanup_crit_edge:                      ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end40:                                         ; preds = %do.body34
  %hw = getelementptr i8, ptr %t, i32 400
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wiphy, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %18, i32 0, i32 56, i32 3
  %19 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end40.wiphy_name.exit_crit_edge

do.end40.wiphy_name.exit_crit_edge:               ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %18, i32 0, i32 56
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %do.end40.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %22, %if.end.i.i ], [ %20, %do.end40.wiphy_name.exit_crit_edge ]
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.348, ptr noundef %retval.0.i.i, i32 noundef %12) #12
  br label %cleanup

do.body50:                                        ; preds = %if.end24
  %23 = load i32, ptr @at76_debug, align 4
  %and51 = and i32 %23, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %do.body50.do.end67_crit_edge, label %do.end56

do.body50.do.end67_crit_edge:                     ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

do.end56:                                         ; preds = %do.body50
  %hw58 = getelementptr i8, ptr %t, i32 400
  %24 = ptrtoint ptr %hw58 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw58, align 4
  %wiphy59 = getelementptr inbounds %struct.ieee80211_hw, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %wiphy59 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wiphy59, align 8
  %init_name.i.i165 = getelementptr inbounds %struct.wiphy, ptr %27, i32 0, i32 56, i32 3
  %28 = ptrtoint ptr %init_name.i.i165 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %init_name.i.i165, align 8
  %tobool.not.i.i166 = icmp eq ptr %29, null
  br i1 %tobool.not.i.i166, label %if.end.i.i168, label %do.end56.wiphy_name.exit170_crit_edge

do.end56.wiphy_name.exit170_crit_edge:            ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %wiphy_name.exit170

if.end.i.i168:                                    ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i167 = getelementptr inbounds %struct.wiphy, ptr %27, i32 0, i32 56
  %30 = ptrtoint ptr %dev.i167 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i167, align 4
  br label %wiphy_name.exit170

wiphy_name.exit170:                               ; preds = %if.end.i.i168, %do.end56.wiphy_name.exit170_crit_edge
  %retval.0.i.i169 = phi ptr [ %31, %if.end.i.i168 ], [ %29, %do.end56.wiphy_name.exit170_crit_edge ]
  %rx_rate = getelementptr inbounds %struct.at76_rx_buffer, ptr %10, i32 0, i32 1
  %32 = ptrtoint ptr %rx_rate to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %rx_rate, align 1
  %conv = zext i8 %33 to i32
  %rssi = getelementptr inbounds %struct.at76_rx_buffer, ptr %10, i32 0, i32 4
  %34 = ptrtoint ptr %rssi to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %rssi, align 1
  %conv61 = zext i8 %35 to i32
  %noise_level = getelementptr inbounds %struct.at76_rx_buffer, ptr %10, i32 0, i32 6
  %36 = ptrtoint ptr %noise_level to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %noise_level, align 1
  %conv62 = zext i8 %37 to i32
  %link_quality = getelementptr inbounds %struct.at76_rx_buffer, ptr %10, i32 0, i32 5
  %38 = ptrtoint ptr %link_quality to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %link_quality, align 1
  %conv63 = zext i8 %39 to i32
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.356, ptr noundef %retval.0.i.i169, i32 noundef %conv, i32 noundef %conv61, i32 noundef %conv62, i32 noundef %conv63) #12
  br label %do.end67

do.end67:                                         ; preds = %wiphy_name.exit170, %do.body50.do.end67_crit_edge
  %40 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rx_skb, align 4
  %call69 = tail call ptr @skb_pull(ptr noundef %41, i32 noundef 12) #9
  %42 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rx_skb, align 4
  %44 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %10, align 1
  %46 = tail call i16 @llvm.bswap.i16(i16 %45)
  %conv71 = zext i16 %46 to i32
  tail call void @skb_trim(ptr noundef %43, i32 noundef %conv71) #9
  %47 = load i32, ptr @at76_debug, align 4
  %and73 = and i32 %47, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %do.end67.do.end98_crit_edge, label %do.end78

do.end67.do.end98_crit_edge:                      ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end98

do.end78:                                         ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rx_skb, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %49, i32 0, i32 6
  %50 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len, align 4
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.359, i32 noundef %51) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at76_rx_tasklet.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@at76_rx_tasklet, %if.then88)) #9
          to label %do.end98 [label %if.then88], !srcloc !813

if.then88:                                        ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rx_skb, align 4
  %data90 = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 19
  %54 = ptrtoint ptr %data90 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data90, align 4
  %len92 = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 6
  %56 = ptrtoint ptr %len92 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len92, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.163, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %55, i32 noundef %57, i1 noundef zeroext true) #9
  br label %do.end98

do.end98:                                         ; preds = %if.then88, %do.end78, %do.end67.do.end98_crit_edge
  %rssi99 = getelementptr inbounds %struct.at76_rx_buffer, ptr %10, i32 0, i32 4
  %58 = ptrtoint ptr %rssi99 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %rssi99, align 1
  %channel1.i = getelementptr i8, ptr %t, i32 88
  %60 = ptrtoint ptr %channel1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %channel1.i, align 4
  %62 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rx_skb, align 4
  %len2.i = getelementptr inbounds %struct.sk_buff, ptr %63, i32 0, i32 6
  %64 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %len2.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %63, i32 0, i32 19
  %66 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data.i, align 4
  %scanning.i = getelementptr i8, ptr %t, i32 188
  %68 = ptrtoint ptr %scanning.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %scanning.i, align 4, !range !814
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i = icmp eq i8 %69, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %65)
  %cmp.i = icmp slt i32 %65, 24
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp.i
  br i1 %or.cond.i, label %do.end98.at76_guess_freq.exit_crit_edge, label %if.end5.i

do.end98.at76_guess_freq.exit_crit_edge:          ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_guess_freq.exit

if.end5.i:                                        ; preds = %do.end98
  %70 = ptrtoint ptr %67 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %67, align 2
  %72 = and i16 %71, -1024
  %73 = zext i16 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.439)
  switch i16 %72, label %if.end5.i.at76_guess_freq.exit_crit_edge [
    i16 20480, label %if.end5.i.if.end15.i_crit_edge
    i16 -32768, label %if.end5.i.if.end15.i_crit_edge173
  ]

if.end5.i.if.end15.i_crit_edge173:                ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.end5.i.if.end15.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.end5.i.at76_guess_freq.exit_crit_edge:         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_guess_freq.exit

if.end15.i:                                       ; preds = %if.end5.i.if.end15.i_crit_edge, %if.end5.i.if.end15.i_crit_edge173
  %el.0.i = getelementptr inbounds %struct.ieee80211_mgmt, ptr %67, i32 0, i32 6, i32 1, i32 2
  %sub.i = add nsw i32 %65, -36
  %call.i.i.i = tail call ptr @cfg80211_find_elem_match(i8 noundef zeroext 3, ptr noundef %el.0.i, i32 noundef %sub.i, ptr noundef null, i32 noundef 0, i32 noundef 0) #9
  %tobool17.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool17.not.i, label %if.end15.i.at76_guess_freq.exit_crit_edge, label %land.lhs.true.i

if.end15.i.at76_guess_freq.exit_crit_edge:        ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_guess_freq.exit

land.lhs.true.i:                                  ; preds = %if.end15.i
  %arrayidx.i = getelementptr i8, ptr %call.i.i.i, i32 1
  %74 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %cmp18.not.i = icmp eq i8 %75, 0
  br i1 %cmp18.not.i, label %land.lhs.true.i.at76_guess_freq.exit_crit_edge, label %if.then20.i

land.lhs.true.i.at76_guess_freq.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_guess_freq.exit

if.then20.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx21.i = getelementptr i8, ptr %call.i.i.i, i32 2
  %76 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx21.i, align 1
  %conv22.i = zext i8 %77 to i32
  br label %at76_guess_freq.exit

at76_guess_freq.exit:                             ; preds = %if.then20.i, %land.lhs.true.i.at76_guess_freq.exit_crit_edge, %if.end15.i.at76_guess_freq.exit_crit_edge, %if.end5.i.at76_guess_freq.exit_crit_edge, %do.end98.at76_guess_freq.exit_crit_edge
  %channel.0.i = phi i32 [ %conv22.i, %if.then20.i ], [ %61, %land.lhs.true.i.at76_guess_freq.exit_crit_edge ], [ %61, %if.end15.i.at76_guess_freq.exit_crit_edge ], [ %61, %do.end98.at76_guess_freq.exit_crit_edge ], [ %61, %if.end5.i.at76_guess_freq.exit_crit_edge ]
  %call.i.i = tail call i32 @ieee80211_channel_to_freq_khz(i32 noundef %channel.0.i, i32 noundef 0) #9
  %div.i.i = udiv i32 %call.i.i, 1000
  %conv103 = trunc i32 %div.i.i to i16
  %bf.shl = shl i16 %conv103, 3
  %78 = load i32, ptr @at76_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %78)
  %tobool107.not = icmp sgt i32 %78, -1
  br i1 %tobool107.not, label %at76_guess_freq.exit.do.end119_crit_edge, label %do.end111

at76_guess_freq.exit.do.end119_crit_edge:         ; preds = %at76_guess_freq.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end119

do.end111:                                        ; preds = %at76_guess_freq.exit
  call void @__sanitizer_cov_trace_pc() #11
  %79 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rx_skb, align 4
  %len114 = getelementptr inbounds %struct.sk_buff, ptr %80, i32 0, i32 6
  %81 = ptrtoint ptr %len114 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %len114, align 4
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %80, i32 0, i32 7
  %83 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %data_len, align 8
  %call116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.362, i32 noundef %82, i32 noundef %84) #12
  br label %do.end119

do.end119:                                        ; preds = %do.end111, %at76_guess_freq.exit.do.end119_crit_edge
  %85 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %rx_skb, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %86, i32 0, i32 3
  %87 = call ptr @memset(ptr %cb.i, i32 0, i32 24)
  %rx_status.sroa.4.0.call121.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %86, i32 0, i32 3, i32 24
  %88 = ptrtoint ptr %rx_status.sroa.4.0.call121.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 18, ptr %rx_status.sroa.4.0.call121.sroa_idx, align 8
  %rx_status.sroa.8.0.call121.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %86, i32 0, i32 3, i32 28
  %89 = ptrtoint ptr %rx_status.sroa.8.0.call121.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %bf.shl, ptr %rx_status.sroa.8.0.call121.sroa_idx, align 4
  %rx_status.sroa.10.0.call121.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %86, i32 0, i32 3, i32 30
  %rx_status.sroa.11131.0.call121.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %86, i32 0, i32 3, i32 38
  %90 = ptrtoint ptr %rx_status.sroa.10.0.call121.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %90, i32 8)
  store i64 0, ptr %rx_status.sroa.10.0.call121.sroa_idx, align 2
  %91 = ptrtoint ptr %rx_status.sroa.11131.0.call121.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %59, ptr %rx_status.sroa.11131.0.call121.sroa_idx, align 2
  %rx_status.sroa.12.0.call121.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %86, i32 0, i32 3, i32 39
  %92 = call ptr @memset(ptr %rx_status.sroa.12.0.call121.sroa_idx, i32 0, i32 9)
  %hw122 = getelementptr i8, ptr %t, i32 400
  %93 = ptrtoint ptr %hw122 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %hw122, align 4
  %95 = load ptr, ptr %rx_skb, align 4
  tail call void @ieee80211_rx_irqsafe(ptr noundef %94, ptr noundef %95) #9
  %96 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %rx_skb, align 4
  %call125 = tail call fastcc i32 @at76_submit_rx_urb(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %do.end119, %wiphy_name.exit, %do.body34.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end24.cleanup_crit_edge172, %lor.lhs.false.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %do.end13, %do.body7.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee80211_alloc_hw_nm(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at76_mac80211_tx(ptr noundef %hw, ptr nocapture noundef readnone %control, ptr noundef %skb) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %bulk_out_buffer = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bulk_out_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bulk_out_buffer, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = load i32, ptr @at76_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %tobool.not = icmp sgt i32 %6, -1
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.152) #12
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %tx_urb = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx_urb, align 4
  %status = getelementptr inbounds %struct.urb, ptr %8, i32 0, i32 12
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %10)
  %cmp = icmp eq i32 %10, -115
  br i1 %cmp, label %do.end9, label %if.end11

do.end9:                                          ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  %hw10 = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 53
  %11 = ptrtoint ptr %hw10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw10, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %14, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.152) #12
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #9
  br label %cleanup

if.end11:                                         ; preds = %do.end5
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %5, align 2
  %17 = and i16 %16, -20480
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool13.not = icmp eq i16 %17, 0
  br i1 %tobool13.not, label %if.end11.if.end24_crit_edge, label %if.then14

if.end11.if.end24_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then14:                                        ; preds = %if.end11
  %bssid = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 20
  %bssid15 = getelementptr inbounds %struct.ieee80211_mgmt, ptr %5, i32 0, i32 4
  %18 = ptrtoint ptr %bssid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bssid, align 4
  %20 = ptrtoint ptr %bssid15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bssid15, align 4
  %xor.i.i = xor i32 %21, %19
  %add.ptr.i.i = getelementptr %struct.at76_priv, ptr %1, i32 0, i32 20, i32 4
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.ieee80211_mgmt, ptr %5, i32 0, i32 4, i32 4
  %24 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %25, %23
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.then14.if.end24_crit_edge, label %if.then18

if.then14.if.end24_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then18:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %26 = call ptr @memcpy(ptr %bssid, ptr %bssid15, i32 6)
  %work_join_bssid = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 11
  tail call void @ieee80211_queue_work(ptr noundef %hw, ptr noundef %work_join_bssid) #9
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #9
  br label %cleanup

if.end24:                                         ; preds = %if.then14.if.end24_crit_edge, %if.end11.if.end24_crit_edge
  tail call void @ieee80211_stop_queues(ptr noundef %hw) #9
  %27 = load i32, ptr @tx_activity, align 4
  %inc.i = add i32 %27, 1
  store i32 %inc.i, ptr @tx_activity, align 4
  %28 = load volatile ptr, ptr getelementptr inbounds (%struct.timer_list, ptr @ledtrig_tx_timer, i32 0, i32 0, i32 1), align 4
  %tobool.not.i.i.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i.not.i, label %if.then.i, label %if.end24.at76_ledtrig_tx_activity.exit_crit_edge

if.end24.at76_ledtrig_tx_activity.exit_crit_edge: ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_ledtrig_tx_activity.exit

if.then.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %29, 25
  %call1.i = tail call i32 @mod_timer(ptr noundef nonnull @ledtrig_tx_timer, i32 noundef %add.i) #9
  br label %at76_ledtrig_tx_activity.exit

at76_ledtrig_tx_activity.exit:                    ; preds = %if.then.i, %if.end24.at76_ledtrig_tx_activity.exit_crit_edge
  %tx_skb = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tx_skb, align 4
  %cmp25.not = icmp eq ptr %31, null
  br i1 %cmp25.not, label %at76_ledtrig_tx_activity.exit.if.end44_crit_edge, label %do.end38, !prof !815

at76_ledtrig_tx_activity.exit.if.end44_crit_edge: ; preds = %at76_ledtrig_tx_activity.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

do.end38:                                         ; preds = %at76_ledtrig_tx_activity.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1799, i32 noundef 9, ptr noundef null) #9
  br label %if.end44

if.end44:                                         ; preds = %do.end38, %at76_ledtrig_tx_activity.exit.if.end44_crit_edge
  %32 = ptrtoint ptr %tx_skb to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %skb, ptr %tx_skb, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %33 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len, align 4
  %add.i192 = add i32 %34, 8
  %rem.i = srem i32 %add.i192, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %rem.i)
  %cmp.i = icmp slt i32 %rem.i, 50
  %sub.i = sub nsw i32 50, %rem.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %rem.i)
  %cmp1.i = icmp sgt i32 %rem.i, 60
  %sub3.i = sub nsw i32 114, %rem.i
  %spec.select.i = select i1 %cmp1.i, i32 %sub3.i, i32 0
  %retval.0.i193 = select i1 %cmp.i, i32 %sub.i, i32 %spec.select.i
  %add55 = add i32 %retval.0.i193, %add.i192
  %35 = call ptr @memset(ptr %3, i32 0, i32 2360)
  %conv56 = trunc i32 %retval.0.i193 to i8
  %padding57 = getelementptr inbounds %struct.at76_tx_buffer, ptr %3, i32 0, i32 2
  %36 = ptrtoint ptr %padding57 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv56, ptr %padding57, align 1
  %37 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len, align 4
  %conv59 = trunc i32 %38 to i16
  %39 = tail call i16 @llvm.bswap.i16(i16 %conv59)
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 %39, ptr %3, align 1
  %41 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %41, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp.i194 = icmp slt i8 %43, 0
  br i1 %cmp.i194, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end44
  %.b49.i = load i1, ptr @ieee80211_get_tx_rate.__already_done, align 1
  br i1 %.b49.i, label %land.rhs.i.ieee80211_get_tx_rate.exit_crit_edge, label %if.then.i195, !prof !815

land.rhs.i.ieee80211_get_tx_rate.exit_crit_edge:  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ieee80211_get_tx_rate.exit

if.then.i195:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ieee80211_get_tx_rate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.171, i32 noundef 2737, i32 noundef 9, ptr noundef null) #9
  br label %ieee80211_get_tx_rate.exit

if.end39.i:                                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 1
  %44 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %wiphy.i, align 8
  %band.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %46 = ptrtoint ptr %band.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %bf.load.i = load i32, ptr %band.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 29
  %arrayidx40.i = getelementptr %struct.wiphy, ptr %45, i32 0, i32 53, i32 %bf.lshr.i
  %47 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx40.i, align 4
  %bitrates.i = getelementptr inbounds %struct.ieee80211_supported_band, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %bitrates.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bitrates.i, align 4
  %idxprom51.i = zext i8 %43 to i32
  %arrayidx44.i = getelementptr %struct.ieee80211_rate, ptr %50, i32 %idxprom51.i
  br label %ieee80211_get_tx_rate.exit

ieee80211_get_tx_rate.exit:                       ; preds = %if.end39.i, %if.then.i195, %land.rhs.i.ieee80211_get_tx_rate.exit_crit_edge
  %retval.0.i196 = phi ptr [ %arrayidx44.i, %if.end39.i ], [ null, %if.then.i195 ], [ null, %land.rhs.i.ieee80211_get_tx_rate.exit_crit_edge ]
  %hw_value = getelementptr inbounds %struct.ieee80211_rate, ptr %retval.0.i196, i32 0, i32 2
  %51 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %hw_value, align 2
  %conv61 = trunc i16 %52 to i8
  %tx_rate = getelementptr inbounds %struct.at76_tx_buffer, ptr %3, i32 0, i32 1
  %53 = ptrtoint ptr %tx_rate to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv61, ptr %tx_rate, align 1
  %reserved = getelementptr inbounds %struct.at76_tx_buffer, ptr %3, i32 0, i32 3
  %54 = ptrtoint ptr %reserved to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 0, ptr %reserved, align 1
  %packet = getelementptr inbounds %struct.at76_tx_buffer, ptr %3, i32 0, i32 4
  %55 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data, align 4
  %57 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %len, align 4
  %59 = call ptr @memcpy(ptr %packet, ptr %56, i32 %58)
  %60 = load i32, ptr @at76_debug, align 4
  %and67 = and i32 %60, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %ieee80211_get_tx_rate.exit.do.body87_crit_edge, label %do.end72

ieee80211_get_tx_rate.exit.do.body87_crit_edge:   ; preds = %ieee80211_get_tx_rate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body87

do.end72:                                         ; preds = %ieee80211_get_tx_rate.exit
  %hw74 = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 53
  %61 = ptrtoint ptr %hw74 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hw74, align 4
  %wiphy75 = getelementptr inbounds %struct.ieee80211_hw, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %wiphy75 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %wiphy75, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %64, i32 0, i32 56, i32 3
  %65 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %66, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end72.wiphy_name.exit_crit_edge

do.end72.wiphy_name.exit_crit_edge:               ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %64, i32 0, i32 56
  %67 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %do.end72.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %68, %if.end.i.i ], [ %66, %do.end72.wiphy_name.exit_crit_edge ]
  %69 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %69, i32 2)
  %70 = load i16, ptr %3, align 1
  %71 = tail call i16 @llvm.bswap.i16(i16 %70)
  %conv78 = zext i16 %71 to i32
  %72 = ptrtoint ptr %padding57 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %padding57, align 1
  %conv80 = zext i8 %73 to i32
  %conv61.mask = and i16 %52, 255
  %conv82 = zext i16 %conv61.mask to i32
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157, ptr noundef %retval.0.i.i, i32 noundef %conv78, i32 noundef %conv80, i32 noundef %conv82) #12
  br label %do.body87

do.body87:                                        ; preds = %wiphy_name.exit, %ieee80211_get_tx_rate.exit.do.body87_crit_edge
  %74 = load i32, ptr @at76_debug, align 4
  %and88 = and i32 %74, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %do.body87.do.end112_crit_edge, label %do.end93

do.body87.do.end112_crit_edge:                    ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end112

do.end93:                                         ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #11
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.152, i32 noundef %add55) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at76_mac80211_tx.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@at76_mac80211_tx, %if.then106)) #9
          to label %do.end112 [label %if.then106], !srcloc !813

if.then106:                                       ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @print_hex_dump(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.163, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %3, i32 noundef %add55, i1 noundef zeroext true) #9
  br label %do.end112

do.end112:                                        ; preds = %if.then106, %do.end93, %do.body87.do.end112_crit_edge
  %75 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tx_urb, align 4
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %1, align 4
  %tx_pipe = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 6
  %79 = ptrtoint ptr %tx_pipe to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tx_pipe, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %76, i32 0, i32 8
  %81 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %78, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %76, i32 0, i32 10
  %82 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %80, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %76, i32 0, i32 14
  %83 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %3, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %76, i32 0, i32 19
  %84 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %add55, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %76, i32 0, i32 28
  %85 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @at76_mac80211_tx_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %76, i32 0, i32 27
  %86 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %1, ptr %context4.i, align 4
  %87 = load ptr, ptr %tx_urb, align 4
  %call115 = tail call i32 @usb_submit_urb(ptr noundef %87, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %do.end112.cleanup_crit_edge, label %do.end120

do.end112.cleanup_crit_edge:                      ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end120:                                        ; preds = %do.end112
  %hw121 = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 53
  %88 = ptrtoint ptr %hw121 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hw121, align 4
  %wiphy122 = getelementptr inbounds %struct.ieee80211_hw, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %wiphy122 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %wiphy122, align 8
  %dev123 = getelementptr inbounds %struct.wiphy, ptr %91, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev123, ptr noundef nonnull @.str.165, i32 noundef %call115) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call115)
  %cmp124 = icmp eq i32 %call115, -22
  br i1 %cmp124, label %do.end129, label %do.end120.cleanup_crit_edge

do.end120.cleanup_crit_edge:                      ; preds = %do.end120
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end129:                                        ; preds = %do.end120
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %hw121 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hw121, align 4
  %wiphy131 = getelementptr inbounds %struct.ieee80211_hw, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %wiphy131 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %wiphy131, align 8
  %dev132 = getelementptr inbounds %struct.wiphy, ptr %95, i32 0, i32 56
  %96 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %tx_urb, align 4
  %hcpriv = getelementptr inbounds %struct.urb, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %hcpriv, align 4
  %complete = getelementptr inbounds %struct.urb, ptr %97, i32 0, i32 28
  %100 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %complete, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev132, ptr noundef nonnull @.str.168, ptr noundef %97, ptr noundef %99, ptr noundef %101) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end129, %do.end120.cleanup_crit_edge, %do.end112.cleanup_crit_edge, %if.then18, %do.end9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at76_mac80211_start(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = load i32, ptr @at76_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %tobool.not = icmp sgt i32 %2, -1
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.176) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %mtx = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #9
  %call5 = tail call fastcc i32 @at76_submit_rx_urb(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end9, label %if.end11

do.end9:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  %hw10 = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 53
  %3 = ptrtoint ptr %hw10 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw10, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %6, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.178, i32 noundef %call5) #12
  br label %error

if.end11:                                         ; preds = %do.end4
  %card_config.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 45
  %7 = load i32, ptr @at76_debug, align 4
  %and.i = and i32 %7, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end11.do.body10.i_crit_edge, label %do.end.i

if.end11.do.body10.i_crit_edge:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body10.i

do.end.i:                                         ; preds = %if.end11
  %hw.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 53
  %8 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw.i, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wiphy.i, align 8
  %init_name.i.i.i = getelementptr inbounds %struct.wiphy, ptr %11, i32 0, i32 56, i32 3
  %12 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end.i.wiphy_name.exit.i_crit_edge

do.end.i.wiphy_name.exit.i_crit_edge:             ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wiphy_name.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.wiphy, ptr %11, i32 0, i32 56
  %14 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i.i, align 4
  br label %wiphy_name.exit.i

wiphy_name.exit.i:                                ; preds = %if.end.i.i.i, %do.end.i.wiphy_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %15, %if.end.i.i.i ], [ %13, %do.end.i.wiphy_name.exit.i_crit_edge ]
  %essid_size.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 23
  %16 = ptrtoint ptr %essid_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %essid_size.i, align 4
  %essid.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 21
  %iw_mode.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 19
  %18 = ptrtoint ptr %iw_mode.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iw_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp.i = icmp eq i32 %19, 1
  %cond.i = select i1 %cmp.i, ptr @.str.196, ptr @.str.197
  %channel.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 18
  %20 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channel.i, align 4
  %wep_enabled.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 14
  %22 = ptrtoint ptr %wep_enabled.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %wep_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool4.not.i = icmp eq i32 %23, 0
  %cond5.i = select i1 %tobool4.not.i, ptr @.str.199, ptr @.str.198
  %wep_key_id.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 15
  %24 = ptrtoint ptr %wep_key_id.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %wep_key_id.i, align 4
  %arrayidx.i = getelementptr %struct.at76_priv, ptr %1, i32 0, i32 17, i32 %25
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %27 to i32
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.194, ptr noundef %retval.0.i.i.i, i32 noundef %17, ptr noundef %essid.i, i32 noundef 32, ptr noundef %essid.i, ptr noundef nonnull %cond.i, i32 noundef %21, ptr noundef nonnull %cond5.i, i32 noundef %25, i32 noundef %conv.i) #12
  br label %do.body10.i

do.body10.i:                                      ; preds = %wiphy_name.exit.i, %if.end11.do.body10.i_crit_edge
  %28 = load i32, ptr @at76_debug, align 4
  %and11.i = and i32 %28, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %do.body10.i.do.body54.i_crit_edge, label %do.end16.i

do.body10.i.do.body54.i_crit_edge:                ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body54.i

do.end16.i:                                       ; preds = %do.body10.i
  %hw18.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 53
  %29 = ptrtoint ptr %hw18.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw18.i, align 4
  %wiphy19.i = getelementptr inbounds %struct.ieee80211_hw, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %wiphy19.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wiphy19.i, align 8
  %init_name.i.i3.i = getelementptr inbounds %struct.wiphy, ptr %32, i32 0, i32 56, i32 3
  %33 = ptrtoint ptr %init_name.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %init_name.i.i3.i, align 8
  %tobool.not.i.i4.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i4.i, label %if.end.i.i6.i, label %do.end16.i.wiphy_name.exit8.i_crit_edge

do.end16.i.wiphy_name.exit8.i_crit_edge:          ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wiphy_name.exit8.i

if.end.i.i6.i:                                    ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i5.i = getelementptr inbounds %struct.wiphy, ptr %32, i32 0, i32 56
  %35 = ptrtoint ptr %dev.i5.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i5.i, align 4
  br label %wiphy_name.exit8.i

wiphy_name.exit8.i:                               ; preds = %if.end.i.i6.i, %do.end16.i.wiphy_name.exit8.i_crit_edge
  %retval.0.i.i7.i = phi ptr [ %36, %if.end.i.i6.i ], [ %34, %do.end16.i.wiphy_name.exit8.i_crit_edge ]
  %preamble_type.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 26
  %37 = ptrtoint ptr %preamble_type.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %preamble_type.i, align 4
  %arrayidx21.i = getelementptr [3 x ptr], ptr @preambles, i32 0, i32 %38
  %39 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx21.i, align 4
  %rts_threshold.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 30
  %41 = ptrtoint ptr %rts_threshold.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rts_threshold.i, align 4
  %short_retry_limit.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 31
  %43 = ptrtoint ptr %short_retry_limit.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %short_retry_limit.i, align 4
  %frag_threshold.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 29
  %45 = ptrtoint ptr %frag_threshold.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %frag_threshold.i, align 4
  %txrate.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 28
  %47 = ptrtoint ptr %txrate.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %txrate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %48)
  %49 = icmp ult i32 %48, 4
  br i1 %49, label %switch.lookup, label %cond.false38.i

cond.false38.i:                                   ; preds = %wiphy_name.exit8.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %48)
  %cmp40.i = icmp eq i32 %48, 4
  %cond42.i = select i1 %cmp40.i, ptr @.str.207, ptr @.str.208
  br label %cond.end48.i

switch.lookup:                                    ; preds = %wiphy_name.exit8.i
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.at76_mac80211_start, i32 0, i32 %48
  %50 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %50)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %cond.end48.i

cond.end48.i:                                     ; preds = %switch.lookup, %cond.false38.i
  %cond49.i = phi ptr [ %cond42.i, %cond.false38.i ], [ %switch.load, %switch.lookup ]
  %auth_mode.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 27
  %51 = ptrtoint ptr %auth_mode.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %auth_mode.i, align 4
  %call50.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.201, ptr noundef %retval.0.i.i7.i, ptr noundef %40, i32 noundef %42, i32 noundef %44, i32 noundef %46, ptr noundef nonnull %cond49.i, i32 noundef %52) #12
  br label %do.body54.i

do.body54.i:                                      ; preds = %cond.end48.i, %do.body10.i.do.body54.i_crit_edge
  %53 = load i32, ptr @at76_debug, align 4
  %and55.i = and i32 %53, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %tobool56.not.i = icmp eq i32 %and55.i, 0
  br i1 %tobool56.not.i, label %do.body54.i.do.end76.i_crit_edge, label %do.end60.i

do.body54.i.do.end76.i_crit_edge:                 ; preds = %do.body54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end76.i

do.end60.i:                                       ; preds = %do.body54.i
  %hw62.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 53
  %54 = ptrtoint ptr %hw62.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hw62.i, align 4
  %wiphy63.i = getelementptr inbounds %struct.ieee80211_hw, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %wiphy63.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %wiphy63.i, align 8
  %init_name.i.i9.i = getelementptr inbounds %struct.wiphy, ptr %57, i32 0, i32 56, i32 3
  %58 = ptrtoint ptr %init_name.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %init_name.i.i9.i, align 8
  %tobool.not.i.i10.i = icmp eq ptr %59, null
  br i1 %tobool.not.i.i10.i, label %if.end.i.i12.i, label %do.end60.i.wiphy_name.exit14.i_crit_edge

do.end60.i.wiphy_name.exit14.i_crit_edge:         ; preds = %do.end60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wiphy_name.exit14.i

if.end.i.i12.i:                                   ; preds = %do.end60.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i11.i = getelementptr inbounds %struct.wiphy, ptr %57, i32 0, i32 56
  %60 = ptrtoint ptr %dev.i11.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i11.i, align 4
  br label %wiphy_name.exit14.i

wiphy_name.exit14.i:                              ; preds = %if.end.i.i12.i, %do.end60.i.wiphy_name.exit14.i_crit_edge
  %retval.0.i.i13.i = phi ptr [ %61, %if.end.i.i12.i ], [ %59, %do.end60.i.wiphy_name.exit14.i_crit_edge ]
  %pm_mode.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 39
  %62 = ptrtoint ptr %pm_mode.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %pm_mode.i, align 4
  %conv65.i = zext i8 %63 to i32
  %pm_period.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 41
  %64 = ptrtoint ptr %pm_period.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pm_period.i, align 4
  %auth_mode66.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 27
  %66 = ptrtoint ptr %auth_mode66.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %auth_mode66.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp67.i = icmp eq i32 %67, 0
  %cond69.i = select i1 %cmp67.i, ptr @.str.212, ptr @.str.213
  %scan_min_time.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 32
  %68 = ptrtoint ptr %scan_min_time.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %scan_min_time.i, align 4
  %scan_max_time.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 33
  %70 = ptrtoint ptr %scan_max_time.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %scan_max_time.i, align 4
  %scan_mode.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 34
  %72 = ptrtoint ptr %scan_mode.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %scan_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp70.i = icmp eq i32 %73, 0
  %cond72.i = select i1 %cmp70.i, ptr @.str.214, ptr @.str.215
  %call73.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.210, ptr noundef %retval.0.i.i13.i, i32 noundef %conv65.i, i32 noundef %65, ptr noundef nonnull %cond69.i, i32 noundef %69, i32 noundef %71, ptr noundef nonnull %cond72.i) #12
  br label %do.end76.i

do.end76.i:                                       ; preds = %wiphy_name.exit14.i, %do.body54.i.do.end76.i_crit_edge
  %short_retry_limit77.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 31
  %74 = call ptr @memset(ptr %card_config.i, i32 0, i32 104)
  %75 = ptrtoint ptr %short_retry_limit77.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %short_retry_limit77.i, align 4
  %conv78.i = trunc i32 %76 to i8
  %short_retry_limit79.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 45, i32 2
  %77 = ptrtoint ptr %short_retry_limit79.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv78.i, ptr %short_retry_limit79.i, align 1
  %wep_enabled80.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 14
  %78 = ptrtoint ptr %wep_enabled80.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %wep_enabled80.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool81.not.i = icmp eq i32 %79, 0
  br i1 %tobool81.not.i, label %do.end76.i.if.end95.i_crit_edge, label %if.then82.i

do.end76.i.if.end95.i_crit_edge:                  ; preds = %do.end76.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95.i

if.then82.i:                                      ; preds = %do.end76.i
  call void @__sanitizer_cov_trace_pc() #11
  %wep_key_id84.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 15
  %80 = ptrtoint ptr %wep_key_id84.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %wep_key_id84.i, align 4
  %arrayidx85.i = getelementptr %struct.at76_priv, ptr %1, i32 0, i32 17, i32 %81
  %82 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx85.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %83)
  %cmp87.i = icmp ugt i8 %83, 5
  %spec.select.i = select i1 %cmp87.i, i8 2, i8 1
  %84 = ptrtoint ptr %card_config.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %card_config.i, align 1
  br label %if.end95.i

if.end95.i:                                       ; preds = %if.then82.i, %do.end76.i.if.end95.i_crit_edge
  %spec.select.i.sink = phi i8 [ %spec.select.i, %if.then82.i ], [ 0, %do.end76.i.if.end95.i_crit_edge ]
  %85 = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 45, i32 3
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %spec.select.i.sink, ptr %85, align 1
  %rts_threshold96.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 30
  %87 = ptrtoint ptr %rts_threshold96.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %rts_threshold96.i, align 4
  %conv97.i = trunc i32 %88 to i16
  %89 = tail call i16 @llvm.bswap.i16(i16 %conv97.i) #9
  %rts_threshold98.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 45, i32 4
  %90 = ptrtoint ptr %rts_threshold98.i to i32
  call void @__asan_storeN_noabort(i32 %90, i32 2)
  store i16 %89, ptr %rts_threshold98.i, align 1
  %frag_threshold99.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 29
  %91 = ptrtoint ptr %frag_threshold99.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %frag_threshold99.i, align 4
  %conv100.i = trunc i32 %92 to i16
  %93 = tail call i16 @llvm.bswap.i16(i16 %conv100.i) #9
  %fragmentation_threshold.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 45, i32 5
  %94 = ptrtoint ptr %fragmentation_threshold.i to i32
  call void @__asan_storeN_noabort(i32 %94, i32 2)
  store i16 %93, ptr %fragmentation_threshold.i, align 1
  %basic_rate_set.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 45, i32 6
  %95 = ptrtoint ptr %basic_rate_set.i to i32
  call void @__asan_storeN_noabort(i32 %95, i32 4)
  store i32 -2105275626, ptr %basic_rate_set.i, align 1
  %txrate102.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 28
  %96 = ptrtoint ptr %txrate102.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %txrate102.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %97)
  %cmp103.i = icmp eq i32 %97, 4
  %conv106.i = zext i1 %cmp103.i to i8
  %auto_rate_fallback.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 45, i32 7
  %98 = ptrtoint ptr %auto_rate_fallback.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv106.i, ptr %auto_rate_fallback.i, align 1
  %channel107.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 18
  %99 = ptrtoint ptr %channel107.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %channel107.i, align 4
  %conv108.i = trunc i32 %100 to i8
  %channel109.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 45, i32 8
  %101 = ptrtoint ptr %channel109.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %conv108.i, ptr %channel109.i, align 1
  %conv111.i = trunc i32 %79 to i8
  %privacy_invoked.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 45, i32 9
  %102 = ptrtoint ptr %privacy_invoked.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %conv111.i, ptr %privacy_invoked.i, align 1
  %current_ssid.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 45, i32 11
  %essid113.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 21
  %103 = call ptr @memcpy(ptr %current_ssid.i, ptr %essid113.i, i32 32)
  %essid_size115.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 23
  %104 = ptrtoint ptr %essid_size115.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %essid_size115.i, align 4
  %conv116.i = trunc i32 %105 to i8
  %ssid_len.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 45, i32 13
  %106 = ptrtoint ptr %ssid_len.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %conv116.i, ptr %ssid_len.i, align 1
  %wep_key_id117.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 15
  %107 = ptrtoint ptr %wep_key_id117.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %wep_key_id117.i, align 4
  %conv118.i = trunc i32 %108 to i8
  %wep_default_key_id.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 45, i32 10
  %109 = ptrtoint ptr %wep_default_key_id.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv118.i, ptr %wep_default_key_id.i, align 1
  %wep_default_key_value.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 45, i32 12
  %wep_keys.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 16
  %110 = call ptr @memcpy(ptr %wep_default_key_value.i, ptr %wep_keys.i, i32 52)
  %preamble_type121.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 26
  %111 = ptrtoint ptr %preamble_type121.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %preamble_type121.i, align 4
  %conv122.i = trunc i32 %112 to i8
  %short_preamble.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 45, i32 14
  %113 = ptrtoint ptr %short_preamble.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %conv122.i, ptr %short_preamble.i, align 1
  %beacon_period.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 52
  %114 = ptrtoint ptr %beacon_period.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %beacon_period.i, align 4
  %conv123.i = trunc i32 %115 to i16
  %116 = tail call i16 @llvm.bswap.i16(i16 %conv123.i) #9
  %beacon_period124.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 45, i32 15
  %117 = ptrtoint ptr %beacon_period124.i to i32
  call void @__asan_storeN_noabort(i32 %117, i32 2)
  store i16 %116, ptr %beacon_period124.i, align 1
  %118 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %1, align 4
  %call126.i = tail call fastcc i32 @at76_set_card_command(ptr noundef %119, i8 noundef zeroext 11, ptr noundef %card_config.i, i32 noundef 104) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126.i)
  %cmp127.i = icmp slt i32 %call126.i, 0
  br i1 %cmp127.i, label %do.end132.i, label %if.end135.i

do.end132.i:                                      ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #11
  %hw133.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 53
  %120 = ptrtoint ptr %hw133.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %hw133.i, align 4
  %wiphy134.i = getelementptr inbounds %struct.ieee80211_hw, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %wiphy134.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %wiphy134.i, align 8
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %123, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.217, i32 noundef %call126.i) #12
  br label %at76_startup_device.exit

if.end135.i:                                      ; preds = %if.end95.i
  %call136.i = tail call fastcc i32 @at76_wait_completion(ptr noundef %1, i32 noundef 11) #9
  %bssid.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 20
  %124 = call ptr @memset(ptr %bssid.i, i32 0, i32 6)
  %scanning.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 36
  %125 = ptrtoint ptr %scanning.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 0, ptr %scanning.i, align 4
  %radio_on.i.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 24
  %126 = ptrtoint ptr %radio_on.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %radio_on.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %127)
  %cmp.i.i = icmp eq i32 %127, 1
  br i1 %cmp.i.i, label %if.end135.i.if.end143.i_crit_edge, label %if.end.i.i

if.end135.i.if.end143.i_crit_edge:                ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end143.i

if.end.i.i:                                       ; preds = %if.end135.i
  %128 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %1, align 4
  %call.i.i = tail call fastcc i32 @at76_set_card_command(ptr noundef %129, i8 noundef zeroext 6, ptr noundef null, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp1.i.i, label %at76_set_radio.exit.i, label %if.then141.i

at76_set_radio.exit.i:                            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %hw.i.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 53
  %130 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %hw.i.i, align 4
  %wiphy.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %wiphy.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %wiphy.i.i, align 8
  %dev.i15.i = getelementptr inbounds %struct.wiphy, ptr %133, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i15.i, ptr noundef nonnull @.str.249, i32 noundef 6, i32 noundef %call.i.i) #12
  %134 = ptrtoint ptr %radio_on.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 1, ptr %radio_on.i.i, align 4
  br label %if.end143.i

if.then141.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %135 = ptrtoint ptr %radio_on.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 1, ptr %radio_on.i.i, align 4
  %call142.i = tail call fastcc i32 @at76_wait_completion(ptr noundef %1, i32 noundef 6) #9
  br label %if.end143.i

if.end143.i:                                      ; preds = %if.then141.i, %at76_set_radio.exit.i, %if.end135.i.if.end143.i_crit_edge
  %136 = ptrtoint ptr %preamble_type121.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %preamble_type121.i, align 4
  %conv145.i = trunc i32 %137 to i8
  %mib_buf.i.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 50
  %138 = ptrtoint ptr %mib_buf.i.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 1, ptr %mib_buf.i.i, align 1
  %size.i.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 50, i32 1
  %139 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 1, ptr %size.i.i, align 1
  %index.i.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 50, i32 2
  %140 = ptrtoint ptr %index.i.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 9, ptr %index.i.i, align 1
  %data.i.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 50, i32 4
  %141 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %conv145.i, ptr %data.i.i, align 1
  %142 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %1, align 4
  %call.i.i.i = tail call fastcc i32 @at76_set_card_command(ptr noundef %143, i8 noundef zeroext 1, ptr noundef %mib_buf.i.i, i32 noundef 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end143.i.at76_set_preamble.exit.thread.i_crit_edge, label %if.end.i.i16.i

if.end143.i.at76_set_preamble.exit.thread.i_crit_edge: ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_set_preamble.exit.thread.i

if.end.i.i16.i:                                   ; preds = %if.end143.i
  %call2.i.i.i = tail call fastcc i32 @at76_wait_completion(ptr noundef %1, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i.i.i)
  %cmp3.not.i.i.i = icmp eq i32 %call2.i.i.i, 1
  br i1 %cmp3.not.i.i.i, label %if.end150.i, label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.end.i.i16.i
  call void @__sanitizer_cov_trace_pc() #11
  %hw.i.i.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 53
  %144 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %hw.i.i.i, align 4
  %wiphy.i.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %wiphy.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %wiphy.i.i.i, align 8
  %dev.i.i.i = getelementptr inbounds %struct.wiphy, ptr %147, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.253, i32 noundef %call2.i.i.i) #12
  br label %at76_set_preamble.exit.thread.i

at76_set_preamble.exit.thread.i:                  ; preds = %do.end.i.i.i, %if.end143.i.at76_set_preamble.exit.thread.i_crit_edge
  %retval.0.i.ph.i.i = phi i32 [ -5, %do.end.i.i.i ], [ %call.i.i.i, %if.end143.i.at76_set_preamble.exit.thread.i_crit_edge ]
  %hw.i17.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 53
  %148 = ptrtoint ptr %hw.i17.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %hw.i17.i, align 4
  %wiphy.i18.i = getelementptr inbounds %struct.ieee80211_hw, ptr %149, i32 0, i32 1
  %150 = ptrtoint ptr %wiphy.i18.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %wiphy.i18.i, align 8
  %dev.i19.i = getelementptr inbounds %struct.wiphy, ptr %151, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i19.i, ptr noundef nonnull @.str.251, i32 noundef %retval.0.i.ph.i.i) #12
  br label %at76_startup_device.exit

if.end150.i:                                      ; preds = %if.end.i.i16.i
  %152 = ptrtoint ptr %frag_threshold99.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %frag_threshold99.i, align 4
  %conv152.i = trunc i32 %153 to i16
  %154 = ptrtoint ptr %mib_buf.i.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 3, ptr %mib_buf.i.i, align 1
  %155 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 2, ptr %size.i.i, align 1
  %156 = ptrtoint ptr %index.i.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 8, ptr %index.i.i, align 1
  %157 = tail call i16 @llvm.bswap.i16(i16 %conv152.i) #9
  %158 = ptrtoint ptr %data.i.i to i32
  call void @__asan_storeN_noabort(i32 %158, i32 2)
  store i16 %157, ptr %data.i.i, align 1
  %159 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %1, align 4
  %call.i.i25.i = tail call fastcc i32 @at76_set_card_command(ptr noundef %160, i8 noundef zeroext 1, ptr noundef %mib_buf.i.i, i32 noundef 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i25.i)
  %cmp.i.i26.i = icmp slt i32 %call.i.i25.i, 0
  br i1 %cmp.i.i26.i, label %if.end150.i.at76_set_frag.exit.thread.i_crit_edge, label %if.end.i.i29.i

if.end150.i.at76_set_frag.exit.thread.i_crit_edge: ; preds = %if.end150.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_set_frag.exit.thread.i

if.end.i.i29.i:                                   ; preds = %if.end150.i
  %call2.i.i27.i = tail call fastcc i32 @at76_wait_completion(ptr noundef %1, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i.i27.i)
  %cmp3.not.i.i28.i = icmp eq i32 %call2.i.i27.i, 1
  br i1 %cmp3.not.i.i28.i, label %if.end157.i, label %do.end.i.i33.i

do.end.i.i33.i:                                   ; preds = %if.end.i.i29.i
  call void @__sanitizer_cov_trace_pc() #11
  %hw.i.i30.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 53
  %161 = ptrtoint ptr %hw.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %hw.i.i30.i, align 4
  %wiphy.i.i31.i = getelementptr inbounds %struct.ieee80211_hw, ptr %162, i32 0, i32 1
  %163 = ptrtoint ptr %wiphy.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %wiphy.i.i31.i, align 8
  %dev.i.i32.i = getelementptr inbounds %struct.wiphy, ptr %164, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i32.i, ptr noundef nonnull @.str.253, i32 noundef %call2.i.i27.i) #12
  br label %at76_set_frag.exit.thread.i

at76_set_frag.exit.thread.i:                      ; preds = %do.end.i.i33.i, %if.end150.i.at76_set_frag.exit.thread.i_crit_edge
  %retval.0.i.ph.i34.i = phi i32 [ -5, %do.end.i.i33.i ], [ %call.i.i25.i, %if.end150.i.at76_set_frag.exit.thread.i_crit_edge ]
  %hw.i35.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 53
  %165 = ptrtoint ptr %hw.i35.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %hw.i35.i, align 4
  %wiphy.i36.i = getelementptr inbounds %struct.ieee80211_hw, ptr %166, i32 0, i32 1
  %167 = ptrtoint ptr %wiphy.i36.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %wiphy.i36.i, align 8
  %dev.i37.i = getelementptr inbounds %struct.wiphy, ptr %168, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i37.i, ptr noundef nonnull @.str.256, i32 noundef %retval.0.i.ph.i34.i) #12
  br label %at76_startup_device.exit

if.end157.i:                                      ; preds = %if.end.i.i29.i
  %169 = ptrtoint ptr %rts_threshold96.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %rts_threshold96.i, align 4
  %conv159.i = trunc i32 %170 to i16
  %171 = ptrtoint ptr %mib_buf.i.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 3, ptr %mib_buf.i.i, align 1
  %172 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 2, ptr %size.i.i, align 1
  %173 = ptrtoint ptr %index.i.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 10, ptr %index.i.i, align 1
  %174 = tail call i16 @llvm.bswap.i16(i16 %conv159.i) #9
  %175 = ptrtoint ptr %data.i.i to i32
  call void @__asan_storeN_noabort(i32 %175, i32 2)
  store i16 %174, ptr %data.i.i, align 1
  %176 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %1, align 4
  %call.i.i45.i = tail call fastcc i32 @at76_set_card_command(ptr noundef %177, i8 noundef zeroext 1, ptr noundef %mib_buf.i.i, i32 noundef 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i45.i)
  %cmp.i.i46.i = icmp slt i32 %call.i.i45.i, 0
  br i1 %cmp.i.i46.i, label %if.end157.i.at76_set_rts.exit.thread.i_crit_edge, label %if.end.i.i49.i

if.end157.i.at76_set_rts.exit.thread.i_crit_edge: ; preds = %if.end157.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_set_rts.exit.thread.i

if.end.i.i49.i:                                   ; preds = %if.end157.i
  %call2.i.i47.i = tail call fastcc i32 @at76_wait_completion(ptr noundef %1, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i.i47.i)
  %cmp3.not.i.i48.i = icmp eq i32 %call2.i.i47.i, 1
  br i1 %cmp3.not.i.i48.i, label %if.end164.i, label %do.end.i.i53.i

do.end.i.i53.i:                                   ; preds = %if.end.i.i49.i
  call void @__sanitizer_cov_trace_pc() #11
  %hw.i.i50.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 53
  %178 = ptrtoint ptr %hw.i.i50.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %hw.i.i50.i, align 4
  %wiphy.i.i51.i = getelementptr inbounds %struct.ieee80211_hw, ptr %179, i32 0, i32 1
  %180 = ptrtoint ptr %wiphy.i.i51.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %wiphy.i.i51.i, align 8
  %dev.i.i52.i = getelementptr inbounds %struct.wiphy, ptr %181, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i52.i, ptr noundef nonnull @.str.253, i32 noundef %call2.i.i47.i) #12
  br label %at76_set_rts.exit.thread.i

at76_set_rts.exit.thread.i:                       ; preds = %do.end.i.i53.i, %if.end157.i.at76_set_rts.exit.thread.i_crit_edge
  %retval.0.i.ph.i54.i = phi i32 [ -5, %do.end.i.i53.i ], [ %call.i.i45.i, %if.end157.i.at76_set_rts.exit.thread.i_crit_edge ]
  %hw.i55.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 53
  %182 = ptrtoint ptr %hw.i55.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %hw.i55.i, align 4
  %wiphy.i56.i = getelementptr inbounds %struct.ieee80211_hw, ptr %183, i32 0, i32 1
  %184 = ptrtoint ptr %wiphy.i56.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %wiphy.i56.i, align 8
  %dev.i57.i = getelementptr inbounds %struct.wiphy, ptr %185, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i57.i, ptr noundef nonnull @.str.258, i32 noundef %retval.0.i.ph.i54.i) #12
  br label %at76_startup_device.exit

if.end164.i:                                      ; preds = %if.end.i.i49.i
  %186 = ptrtoint ptr %txrate102.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %txrate102.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %187)
  %cmp166.i = icmp eq i32 %187, 4
  %188 = ptrtoint ptr %mib_buf.i.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 1, ptr %mib_buf.i.i, align 1
  %189 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 1, ptr %size.i.i, align 1
  %190 = ptrtoint ptr %index.i.i to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 3, ptr %index.i.i, align 1
  %conv.i.i = zext i1 %cmp166.i to i8
  %191 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 %conv.i.i, ptr %data.i.i, align 1
  %192 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %1, align 4
  %call.i.i65.i = tail call fastcc i32 @at76_set_card_command(ptr noundef %193, i8 noundef zeroext 1, ptr noundef %mib_buf.i.i, i32 noundef 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i65.i)
  %cmp.i.i66.i = icmp slt i32 %call.i.i65.i, 0
  br i1 %cmp.i.i66.i, label %if.end164.i.at76_set_autorate_fallback.exit.thread.i_crit_edge, label %if.end.i.i69.i

if.end164.i.at76_set_autorate_fallback.exit.thread.i_crit_edge: ; preds = %if.end164.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_set_autorate_fallback.exit.thread.i

if.end.i.i69.i:                                   ; preds = %if.end164.i
  %call2.i.i67.i = tail call fastcc i32 @at76_wait_completion(ptr noundef %1, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i.i67.i)
  %cmp3.not.i.i68.i = icmp eq i32 %call2.i.i67.i, 1
  br i1 %cmp3.not.i.i68.i, label %if.end173.i, label %do.end.i.i73.i

do.end.i.i73.i:                                   ; preds = %if.end.i.i69.i
  call void @__sanitizer_cov_trace_pc() #11
  %hw.i.i70.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 53
  %194 = ptrtoint ptr %hw.i.i70.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %hw.i.i70.i, align 4
  %wiphy.i.i71.i = getelementptr inbounds %struct.ieee80211_hw, ptr %195, i32 0, i32 1
  %196 = ptrtoint ptr %wiphy.i.i71.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %wiphy.i.i71.i, align 8
  %dev.i.i72.i = getelementptr inbounds %struct.wiphy, ptr %197, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i72.i, ptr noundef nonnull @.str.253, i32 noundef %call2.i.i67.i) #12
  br label %at76_set_autorate_fallback.exit.thread.i

at76_set_autorate_fallback.exit.thread.i:         ; preds = %do.end.i.i73.i, %if.end164.i.at76_set_autorate_fallback.exit.thread.i_crit_edge
  %retval.0.i.ph.i74.i = phi i32 [ -5, %do.end.i.i73.i ], [ %call.i.i65.i, %if.end164.i.at76_set_autorate_fallback.exit.thread.i_crit_edge ]
  %hw.i75.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 53
  %198 = ptrtoint ptr %hw.i75.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %hw.i75.i, align 4
  %wiphy.i76.i = getelementptr inbounds %struct.ieee80211_hw, ptr %199, i32 0, i32 1
  %200 = ptrtoint ptr %wiphy.i76.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %wiphy.i76.i, align 8
  %dev.i77.i = getelementptr inbounds %struct.wiphy, ptr %201, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i77.i, ptr noundef nonnull @.str.260, i32 noundef %retval.0.i.ph.i74.i) #12
  br label %at76_startup_device.exit

if.end173.i:                                      ; preds = %if.end.i.i69.i
  %202 = ptrtoint ptr %mib_buf.i.i to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 5, ptr %mib_buf.i.i, align 1
  %203 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store1_noabort(i32 %203)
  store i8 1, ptr %size.i.i, align 1
  %204 = ptrtoint ptr %index.i.i to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 53, ptr %index.i.i, align 1
  %pm_mode.i.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 39
  %205 = ptrtoint ptr %pm_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %pm_mode.i.i, align 4
  %207 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 %206, ptr %data.i.i, align 1
  %208 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %1, align 4
  %call.i.i85.i = tail call fastcc i32 @at76_set_card_command(ptr noundef %209, i8 noundef zeroext 1, ptr noundef %mib_buf.i.i, i32 noundef 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i85.i)
  %cmp.i.i86.i = icmp slt i32 %call.i.i85.i, 0
  br i1 %cmp.i.i86.i, label %if.end173.i.at76_set_pm_mode.exit.thread.i_crit_edge, label %if.end.i.i89.i

if.end173.i.at76_set_pm_mode.exit.thread.i_crit_edge: ; preds = %if.end173.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_set_pm_mode.exit.thread.i

if.end.i.i89.i:                                   ; preds = %if.end173.i
  %call2.i.i87.i = tail call fastcc i32 @at76_wait_completion(ptr noundef %1, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i.i87.i)
  %cmp3.not.i.i88.i = icmp eq i32 %call2.i.i87.i, 1
  br i1 %cmp3.not.i.i88.i, label %if.end178.i, label %do.end.i.i93.i

do.end.i.i93.i:                                   ; preds = %if.end.i.i89.i
  call void @__sanitizer_cov_trace_pc() #11
  %hw.i.i90.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 53
  %210 = ptrtoint ptr %hw.i.i90.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %hw.i.i90.i, align 4
  %wiphy.i.i91.i = getelementptr inbounds %struct.ieee80211_hw, ptr %211, i32 0, i32 1
  %212 = ptrtoint ptr %wiphy.i.i91.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %wiphy.i.i91.i, align 8
  %dev.i.i92.i = getelementptr inbounds %struct.wiphy, ptr %213, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i92.i, ptr noundef nonnull @.str.253, i32 noundef %call2.i.i87.i) #12
  br label %at76_set_pm_mode.exit.thread.i

at76_set_pm_mode.exit.thread.i:                   ; preds = %do.end.i.i93.i, %if.end173.i.at76_set_pm_mode.exit.thread.i_crit_edge
  %retval.0.i.ph.i94.i = phi i32 [ -5, %do.end.i.i93.i ], [ %call.i.i85.i, %if.end173.i.at76_set_pm_mode.exit.thread.i_crit_edge ]
  %hw.i95.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 53
  %214 = ptrtoint ptr %hw.i95.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %hw.i95.i, align 4
  %wiphy.i96.i = getelementptr inbounds %struct.ieee80211_hw, ptr %215, i32 0, i32 1
  %216 = ptrtoint ptr %wiphy.i96.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %wiphy.i96.i, align 8
  %dev.i97.i = getelementptr inbounds %struct.wiphy, ptr %217, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i97.i, ptr noundef nonnull @.str.262, i32 noundef %retval.0.i.ph.i94.i) #12
  br label %at76_startup_device.exit

if.end178.i:                                      ; preds = %if.end.i.i89.i
  %218 = load i32, ptr @at76_debug, align 4
  %and179.i = and i32 %218, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and179.i)
  %tobool180.not.i = icmp eq i32 %and179.i, 0
  br i1 %tobool180.not.i, label %if.end178.i.at76_startup_device.exit_crit_edge, label %if.then181.i

if.end178.i.at76_startup_device.exit_crit_edge:   ; preds = %if.end178.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_startup_device.exit

if.then181.i:                                     ; preds = %if.end178.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %219 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %219, i32 noundef 3264, i32 noundef 68) #13
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then181.i.at76_dump_mib_mac.exit.i_crit_edge, label %if.end.i104.i

if.then181.i.at76_dump_mib_mac.exit.i_crit_edge:  ; preds = %if.then181.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_dump_mib_mac.exit.i

if.end.i104.i:                                    ; preds = %if.then181.i
  %220 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %1, align 4
  %222 = ptrtoint ptr %221 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %221, align 8
  %shl.i.i.i.i = shl i32 %223, 8
  %or1.i.i.i = or i32 %shl.i.i.i.i, -2147483520
  %call4.i.i.i = tail call i32 @usb_control_msg(ptr noundef %221, i32 noundef %or1.i.i.i, i8 noundef zeroext 51, i8 noundef zeroext -63, i16 noundef zeroext 768, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i.i, i16 noundef zeroext 68, i32 noundef 5000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %cmp.i.i101.i = icmp slt i32 %call4.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %call4.i.i.i)
  %cmp6.not.i.i.i = icmp eq i32 %call4.i.i.i, 68
  %or.cond.i.i.i = or i1 %cmp.i.i101.i, %cmp6.not.i.i.i
  %retval.0.i.i102.i = select i1 %or.cond.i.i.i, i32 %call4.i.i.i, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i102.i)
  %cmp.i103.i = icmp slt i32 %retval.0.i.i102.i, 0
  br i1 %cmp.i103.i, label %do.end.i108.i, label %do.body4.i.i

do.end.i108.i:                                    ; preds = %if.end.i104.i
  call void @__sanitizer_cov_trace_pc() #11
  %hw.i105.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 53
  %224 = ptrtoint ptr %hw.i105.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %hw.i105.i, align 4
  %wiphy.i106.i = getelementptr inbounds %struct.ieee80211_hw, ptr %225, i32 0, i32 1
  %226 = ptrtoint ptr %wiphy.i106.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %wiphy.i106.i, align 8
  %dev.i107.i = getelementptr inbounds %struct.wiphy, ptr %227, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i107.i, ptr noundef nonnull @.str.264, i32 noundef %retval.0.i.i102.i) #12
  br label %exit.i.i

do.body4.i.i:                                     ; preds = %if.end.i104.i
  %228 = load i32, ptr @at76_debug, align 4
  %and.i.i = and i32 %228, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool5.not.i.i, label %do.body4.i.i.exit.i.i_crit_edge, label %do.end9.i.i

do.body4.i.i.exit.i.i_crit_edge:                  ; preds = %do.body4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit.i.i

do.end9.i.i:                                      ; preds = %do.body4.i.i
  %hw10.i.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 53
  %229 = ptrtoint ptr %hw10.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %hw10.i.i, align 4
  %wiphy11.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %230, i32 0, i32 1
  %231 = ptrtoint ptr %wiphy11.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %wiphy11.i.i, align 8
  %init_name.i.i.i.i = getelementptr inbounds %struct.wiphy, ptr %232, i32 0, i32 56, i32 3
  %233 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %234, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %do.end9.i.i.wiphy_name.exit.i.i_crit_edge

do.end9.i.i.wiphy_name.exit.i.i_crit_edge:        ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wiphy_name.exit.i.i

if.end.i.i.i.i:                                   ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i109.i = getelementptr inbounds %struct.wiphy, ptr %232, i32 0, i32 56
  %235 = ptrtoint ptr %dev.i.i109.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %dev.i.i109.i, align 4
  br label %wiphy_name.exit.i.i

wiphy_name.exit.i.i:                              ; preds = %if.end.i.i.i.i, %do.end9.i.i.wiphy_name.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %236, %if.end.i.i.i.i ], [ %234, %do.end9.i.i.wiphy_name.exit.i.i_crit_edge ]
  %237 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %call7.i.i.i, align 8
  %239 = tail call i32 @llvm.bswap.i32(i32 %238) #9
  %max_rx_lifetime.i.i = getelementptr inbounds %struct.mib_mac, ptr %call7.i.i.i, i32 0, i32 1
  %240 = ptrtoint ptr %max_rx_lifetime.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %max_rx_lifetime.i.i, align 4
  %242 = tail call i32 @llvm.bswap.i32(i32 %241) #9
  %frag_threshold.i.i = getelementptr inbounds %struct.mib_mac, ptr %call7.i.i.i, i32 0, i32 2
  %243 = ptrtoint ptr %frag_threshold.i.i to i32
  call void @__asan_load2_noabort(i32 %243)
  %244 = load i16, ptr %frag_threshold.i.i, align 8
  %245 = tail call i16 @llvm.bswap.i16(i16 %244) #9
  %conv.i110.i = zext i16 %245 to i32
  %rts_threshold.i.i = getelementptr inbounds %struct.mib_mac, ptr %call7.i.i.i, i32 0, i32 3
  %246 = ptrtoint ptr %rts_threshold.i.i to i32
  call void @__asan_load2_noabort(i32 %246)
  %247 = load i16, ptr %rts_threshold.i.i, align 2
  %248 = tail call i16 @llvm.bswap.i16(i16 %247) #9
  %conv13.i.i = zext i16 %248 to i32
  %cwmin.i.i = getelementptr inbounds %struct.mib_mac, ptr %call7.i.i.i, i32 0, i32 4
  %249 = ptrtoint ptr %cwmin.i.i to i32
  call void @__asan_load2_noabort(i32 %249)
  %250 = load i16, ptr %cwmin.i.i, align 4
  %251 = tail call i16 @llvm.bswap.i16(i16 %250) #9
  %conv14.i.i = zext i16 %251 to i32
  %cwmax.i.i = getelementptr inbounds %struct.mib_mac, ptr %call7.i.i.i, i32 0, i32 5
  %252 = ptrtoint ptr %cwmax.i.i to i32
  call void @__asan_load2_noabort(i32 %252)
  %253 = load i16, ptr %cwmax.i.i, align 2
  %254 = tail call i16 @llvm.bswap.i16(i16 %253) #9
  %conv15.i.i = zext i16 %254 to i32
  %short_retry_time.i.i = getelementptr inbounds %struct.mib_mac, ptr %call7.i.i.i, i32 0, i32 6
  %255 = ptrtoint ptr %short_retry_time.i.i to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %short_retry_time.i.i, align 8
  %conv16.i.i = zext i8 %256 to i32
  %long_retry_time.i.i = getelementptr inbounds %struct.mib_mac, ptr %call7.i.i.i, i32 0, i32 7
  %257 = ptrtoint ptr %long_retry_time.i.i to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %long_retry_time.i.i, align 1
  %conv17.i.i = zext i8 %258 to i32
  %scan_type.i.i = getelementptr inbounds %struct.mib_mac, ptr %call7.i.i.i, i32 0, i32 8
  %259 = ptrtoint ptr %scan_type.i.i to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %scan_type.i.i, align 2
  %conv18.i.i = zext i8 %260 to i32
  %scan_channel.i.i = getelementptr inbounds %struct.mib_mac, ptr %call7.i.i.i, i32 0, i32 9
  %261 = ptrtoint ptr %scan_channel.i.i to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %scan_channel.i.i, align 1
  %conv19.i.i = zext i8 %262 to i32
  %probe_delay.i.i = getelementptr inbounds %struct.mib_mac, ptr %call7.i.i.i, i32 0, i32 10
  %263 = ptrtoint ptr %probe_delay.i.i to i32
  call void @__asan_load2_noabort(i32 %263)
  %264 = load i16, ptr %probe_delay.i.i, align 4
  %265 = tail call i16 @llvm.bswap.i16(i16 %264) #9
  %conv20.i.i = zext i16 %265 to i32
  %min_channel_time.i.i = getelementptr inbounds %struct.mib_mac, ptr %call7.i.i.i, i32 0, i32 11
  %266 = ptrtoint ptr %min_channel_time.i.i to i32
  call void @__asan_load2_noabort(i32 %266)
  %267 = load i16, ptr %min_channel_time.i.i, align 2
  %268 = tail call i16 @llvm.bswap.i16(i16 %267) #9
  %conv21.i.i = zext i16 %268 to i32
  %max_channel_time.i.i = getelementptr inbounds %struct.mib_mac, ptr %call7.i.i.i, i32 0, i32 12
  %269 = ptrtoint ptr %max_channel_time.i.i to i32
  call void @__asan_load2_noabort(i32 %269)
  %270 = load i16, ptr %max_channel_time.i.i, align 8
  %271 = tail call i16 @llvm.bswap.i16(i16 %270) #9
  %conv22.i.i = zext i16 %271 to i32
  %listen_interval.i.i = getelementptr inbounds %struct.mib_mac, ptr %call7.i.i.i, i32 0, i32 13
  %272 = ptrtoint ptr %listen_interval.i.i to i32
  call void @__asan_load2_noabort(i32 %272)
  %273 = load i16, ptr %listen_interval.i.i, align 2
  %274 = tail call i16 @llvm.bswap.i16(i16 %273) #9
  %conv23.i.i = zext i16 %274 to i32
  %desired_ssid.i.i = getelementptr inbounds %struct.mib_mac, ptr %call7.i.i.i, i32 0, i32 14
  %desired_bssid.i.i = getelementptr inbounds %struct.mib_mac, ptr %call7.i.i.i, i32 0, i32 15
  %desired_bsstype.i.i = getelementptr inbounds %struct.mib_mac, ptr %call7.i.i.i, i32 0, i32 16
  %275 = ptrtoint ptr %desired_bsstype.i.i to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %desired_bsstype.i.i, align 2
  %conv25.i.i = zext i8 %276 to i32
  %call26.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.267, ptr noundef %retval.0.i.i.i.i, i32 noundef %239, i32 noundef %242, i32 noundef %conv.i110.i, i32 noundef %conv13.i.i, i32 noundef %conv14.i.i, i32 noundef %conv15.i.i, i32 noundef %conv16.i.i, i32 noundef %conv17.i.i, i32 noundef %conv18.i.i, i32 noundef %conv19.i.i, i32 noundef %conv20.i.i, i32 noundef %conv21.i.i, i32 noundef %conv22.i.i, i32 noundef %conv23.i.i, i32 noundef 32, ptr noundef %desired_ssid.i.i, ptr noundef %desired_bssid.i.i, i32 noundef %conv25.i.i) #12
  br label %exit.i.i

exit.i.i:                                         ; preds = %wiphy_name.exit.i.i, %do.body4.i.i.exit.i.i_crit_edge, %do.end.i108.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %at76_dump_mib_mac.exit.i

at76_dump_mib_mac.exit.i:                         ; preds = %exit.i.i, %if.then181.i.at76_dump_mib_mac.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %277 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i111.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %277, i32 noundef 3264, i32 noundef 36) #13
  %tobool.not.i112.i = icmp eq ptr %call7.i.i111.i, null
  br i1 %tobool.not.i112.i, label %at76_dump_mib_mac.exit.i.at76_dump_mib_mac_addr.exit.i_crit_edge, label %if.end.i121.i

at76_dump_mib_mac.exit.i.at76_dump_mib_mac_addr.exit.i_crit_edge: ; preds = %at76_dump_mib_mac.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_dump_mib_mac_addr.exit.i

if.end.i121.i:                                    ; preds = %at76_dump_mib_mac.exit.i
  %278 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %1, align 4
  %280 = ptrtoint ptr %279 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %279, align 8
  %shl.i.i.i113.i = shl i32 %281, 8
  %or1.i.i114.i = or i32 %shl.i.i.i113.i, -2147483520
  %call4.i.i115.i = tail call i32 @usb_control_msg(ptr noundef %279, i32 noundef %or1.i.i114.i, i8 noundef zeroext 51, i8 noundef zeroext -63, i16 noundef zeroext 512, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i111.i, i16 noundef zeroext 36, i32 noundef 5000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i115.i)
  %cmp.i.i116.i = icmp slt i32 %call4.i.i115.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %call4.i.i115.i)
  %cmp6.not.i.i117.i = icmp eq i32 %call4.i.i115.i, 36
  %or.cond.i.i118.i = or i1 %cmp.i.i116.i, %cmp6.not.i.i117.i
  %retval.0.i.i119.i = select i1 %or.cond.i.i118.i, i32 %call4.i.i115.i, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i119.i)
  %cmp.i120.i = icmp slt i32 %retval.0.i.i119.i, 0
  br i1 %cmp.i120.i, label %do.end.i125.i, label %do.body4.i128.i

do.end.i125.i:                                    ; preds = %if.end.i121.i
  call void @__sanitizer_cov_trace_pc() #11
  %hw.i122.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 53
  %282 = ptrtoint ptr %hw.i122.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %hw.i122.i, align 4
  %wiphy.i123.i = getelementptr inbounds %struct.ieee80211_hw, ptr %283, i32 0, i32 1
  %284 = ptrtoint ptr %wiphy.i123.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %wiphy.i123.i, align 8
  %dev.i124.i = getelementptr inbounds %struct.wiphy, ptr %285, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i124.i, ptr noundef nonnull @.str.269, i32 noundef %retval.0.i.i119.i) #12
  br label %exit.i140.i

do.body4.i128.i:                                  ; preds = %if.end.i121.i
  %286 = load i32, ptr @at76_debug, align 4
  %and.i126.i = and i32 %286, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i126.i)
  %tobool5.not.i127.i = icmp eq i32 %and.i126.i, 0
  br i1 %tobool5.not.i127.i, label %do.body4.i128.i.do.end19.i.i_crit_edge, label %do.end9.i133.i

do.body4.i128.i.do.end19.i.i_crit_edge:           ; preds = %do.body4.i128.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end19.i.i

do.end9.i133.i:                                   ; preds = %do.body4.i128.i
  %hw10.i129.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 53
  %287 = ptrtoint ptr %hw10.i129.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %hw10.i129.i, align 4
  %wiphy11.i130.i = getelementptr inbounds %struct.ieee80211_hw, ptr %288, i32 0, i32 1
  %289 = ptrtoint ptr %wiphy11.i130.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %wiphy11.i130.i, align 8
  %init_name.i.i.i131.i = getelementptr inbounds %struct.wiphy, ptr %290, i32 0, i32 56, i32 3
  %291 = ptrtoint ptr %init_name.i.i.i131.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %init_name.i.i.i131.i, align 8
  %tobool.not.i.i.i132.i = icmp eq ptr %292, null
  br i1 %tobool.not.i.i.i132.i, label %if.end.i.i.i135.i, label %do.end9.i133.i.wiphy_name.exit.i139.i_crit_edge

do.end9.i133.i.wiphy_name.exit.i139.i_crit_edge:  ; preds = %do.end9.i133.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wiphy_name.exit.i139.i

if.end.i.i.i135.i:                                ; preds = %do.end9.i133.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i134.i = getelementptr inbounds %struct.wiphy, ptr %290, i32 0, i32 56
  %293 = ptrtoint ptr %dev.i.i134.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %dev.i.i134.i, align 4
  br label %wiphy_name.exit.i139.i

wiphy_name.exit.i139.i:                           ; preds = %if.end.i.i.i135.i, %do.end9.i133.i.wiphy_name.exit.i139.i_crit_edge
  %retval.0.i.i.i136.i = phi ptr [ %294, %if.end.i.i.i135.i ], [ %292, %do.end9.i133.i.wiphy_name.exit.i139.i_crit_edge ]
  %res.i.i = getelementptr inbounds %struct.mib_mac_addr, ptr %call7.i.i111.i, i32 0, i32 1
  %295 = ptrtoint ptr %res.i.i to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %res.i.i, align 2
  %conv.i137.i = zext i8 %296 to i32
  %arrayidx14.i.i = getelementptr %struct.mib_mac_addr, ptr %call7.i.i111.i, i32 0, i32 1, i32 1
  %297 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %arrayidx14.i.i, align 1
  %conv15.i138.i = zext i8 %298 to i32
  %call16.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.272, ptr noundef %retval.0.i.i.i136.i, ptr noundef nonnull %call7.i.i111.i, i32 noundef %conv.i137.i, i32 noundef %conv15.i138.i) #12
  br label %do.end19.i.i

do.end19.i.i:                                     ; preds = %wiphy_name.exit.i139.i, %do.body4.i128.i.do.end19.i.i_crit_edge
  %hw30.i.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 53
  %299 = load i32, ptr @at76_debug, align 4
  %and23.i.i = and i32 %299, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i.i)
  %tobool24.not.i.i = icmp eq i32 %and23.i.i, 0
  br i1 %tobool24.not.i.i, label %do.end19.i.i.for.inc.i.i_crit_edge, label %do.end28.i.i

do.end19.i.i.for.inc.i.i_crit_edge:               ; preds = %do.end19.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

do.end28.i.i:                                     ; preds = %do.end19.i.i
  %300 = ptrtoint ptr %hw30.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %hw30.i.i, align 4
  %wiphy31.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %301, i32 0, i32 1
  %302 = ptrtoint ptr %wiphy31.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %wiphy31.i.i, align 8
  %init_name.i.i58.i.i = getelementptr inbounds %struct.wiphy, ptr %303, i32 0, i32 56, i32 3
  %304 = ptrtoint ptr %init_name.i.i58.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %init_name.i.i58.i.i, align 8
  %tobool.not.i.i59.i.i = icmp eq ptr %305, null
  br i1 %tobool.not.i.i59.i.i, label %if.end.i.i61.i.i, label %do.end28.i.i.wiphy_name.exit63.i.i_crit_edge

do.end28.i.i.wiphy_name.exit63.i.i_crit_edge:     ; preds = %do.end28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wiphy_name.exit63.i.i

if.end.i.i61.i.i:                                 ; preds = %do.end28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i60.i.i = getelementptr inbounds %struct.wiphy, ptr %303, i32 0, i32 56
  %306 = ptrtoint ptr %dev.i60.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %dev.i60.i.i, align 4
  br label %wiphy_name.exit63.i.i

wiphy_name.exit63.i.i:                            ; preds = %if.end.i.i61.i.i, %do.end28.i.i.wiphy_name.exit63.i.i_crit_edge
  %retval.0.i.i62.i.i = phi ptr [ %307, %if.end.i.i61.i.i ], [ %305, %do.end28.i.i.wiphy_name.exit63.i.i_crit_edge ]
  %arrayidx33.i.i = getelementptr %struct.mib_mac_addr, ptr %call7.i.i111.i, i32 0, i32 2, i32 0
  %arrayidx35.i.i = getelementptr %struct.mib_mac_addr, ptr %call7.i.i111.i, i32 0, i32 3, i32 0
  %308 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_load1_noabort(i32 %308)
  %309 = load i8, ptr %arrayidx35.i.i, align 8
  %conv36.i.i = zext i8 %309 to i32
  %call37.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.275, ptr noundef %retval.0.i.i62.i.i, i32 noundef 0, ptr noundef %arrayidx33.i.i, i32 noundef %conv36.i.i) #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %wiphy_name.exit63.i.i, %do.end19.i.i.for.inc.i.i_crit_edge
  %310 = load i32, ptr @at76_debug, align 4
  %and23.1.i.i = and i32 %310, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.1.i.i)
  %tobool24.not.1.i.i = icmp eq i32 %and23.1.i.i, 0
  br i1 %tobool24.not.1.i.i, label %for.inc.i.i.for.inc.1.i.i_crit_edge, label %do.end28.1.i.i

for.inc.i.i.for.inc.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i.i

do.end28.1.i.i:                                   ; preds = %for.inc.i.i
  %311 = ptrtoint ptr %hw30.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %hw30.i.i, align 4
  %wiphy31.1.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %312, i32 0, i32 1
  %313 = ptrtoint ptr %wiphy31.1.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %wiphy31.1.i.i, align 8
  %init_name.i.i58.1.i.i = getelementptr inbounds %struct.wiphy, ptr %314, i32 0, i32 56, i32 3
  %315 = ptrtoint ptr %init_name.i.i58.1.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %init_name.i.i58.1.i.i, align 8
  %tobool.not.i.i59.1.i.i = icmp eq ptr %316, null
  br i1 %tobool.not.i.i59.1.i.i, label %if.end.i.i61.1.i.i, label %do.end28.1.i.i.wiphy_name.exit63.1.i.i_crit_edge

do.end28.1.i.i.wiphy_name.exit63.1.i.i_crit_edge: ; preds = %do.end28.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wiphy_name.exit63.1.i.i

if.end.i.i61.1.i.i:                               ; preds = %do.end28.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i60.1.i.i = getelementptr inbounds %struct.wiphy, ptr %314, i32 0, i32 56
  %317 = ptrtoint ptr %dev.i60.1.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %dev.i60.1.i.i, align 4
  br label %wiphy_name.exit63.1.i.i

wiphy_name.exit63.1.i.i:                          ; preds = %if.end.i.i61.1.i.i, %do.end28.1.i.i.wiphy_name.exit63.1.i.i_crit_edge
  %retval.0.i.i62.1.i.i = phi ptr [ %318, %if.end.i.i61.1.i.i ], [ %316, %do.end28.1.i.i.wiphy_name.exit63.1.i.i_crit_edge ]
  %arrayidx33.1.i.i = getelementptr %struct.mib_mac_addr, ptr %call7.i.i111.i, i32 0, i32 2, i32 1
  %arrayidx35.1.i.i = getelementptr %struct.mib_mac_addr, ptr %call7.i.i111.i, i32 0, i32 3, i32 1
  %319 = ptrtoint ptr %arrayidx35.1.i.i to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %arrayidx35.1.i.i, align 1
  %conv36.1.i.i = zext i8 %320 to i32
  %call37.1.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.275, ptr noundef %retval.0.i.i62.1.i.i, i32 noundef 1, ptr noundef %arrayidx33.1.i.i, i32 noundef %conv36.1.i.i) #12
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %wiphy_name.exit63.1.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge
  %321 = load i32, ptr @at76_debug, align 4
  %and23.2.i.i = and i32 %321, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.2.i.i)
  %tobool24.not.2.i.i = icmp eq i32 %and23.2.i.i, 0
  br i1 %tobool24.not.2.i.i, label %for.inc.1.i.i.for.inc.2.i.i_crit_edge, label %do.end28.2.i.i

for.inc.1.i.i.for.inc.2.i.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.i.i

do.end28.2.i.i:                                   ; preds = %for.inc.1.i.i
  %322 = ptrtoint ptr %hw30.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %hw30.i.i, align 4
  %wiphy31.2.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %323, i32 0, i32 1
  %324 = ptrtoint ptr %wiphy31.2.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %wiphy31.2.i.i, align 8
  %init_name.i.i58.2.i.i = getelementptr inbounds %struct.wiphy, ptr %325, i32 0, i32 56, i32 3
  %326 = ptrtoint ptr %init_name.i.i58.2.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %init_name.i.i58.2.i.i, align 8
  %tobool.not.i.i59.2.i.i = icmp eq ptr %327, null
  br i1 %tobool.not.i.i59.2.i.i, label %if.end.i.i61.2.i.i, label %do.end28.2.i.i.wiphy_name.exit63.2.i.i_crit_edge

do.end28.2.i.i.wiphy_name.exit63.2.i.i_crit_edge: ; preds = %do.end28.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wiphy_name.exit63.2.i.i

if.end.i.i61.2.i.i:                               ; preds = %do.end28.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i60.2.i.i = getelementptr inbounds %struct.wiphy, ptr %325, i32 0, i32 56
  %328 = ptrtoint ptr %dev.i60.2.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %dev.i60.2.i.i, align 4
  br label %wiphy_name.exit63.2.i.i

wiphy_name.exit63.2.i.i:                          ; preds = %if.end.i.i61.2.i.i, %do.end28.2.i.i.wiphy_name.exit63.2.i.i_crit_edge
  %retval.0.i.i62.2.i.i = phi ptr [ %329, %if.end.i.i61.2.i.i ], [ %327, %do.end28.2.i.i.wiphy_name.exit63.2.i.i_crit_edge ]
  %arrayidx33.2.i.i = getelementptr %struct.mib_mac_addr, ptr %call7.i.i111.i, i32 0, i32 2, i32 2
  %arrayidx35.2.i.i = getelementptr %struct.mib_mac_addr, ptr %call7.i.i111.i, i32 0, i32 3, i32 2
  %330 = ptrtoint ptr %arrayidx35.2.i.i to i32
  call void @__asan_load1_noabort(i32 %330)
  %331 = load i8, ptr %arrayidx35.2.i.i, align 2
  %conv36.2.i.i = zext i8 %331 to i32
  %call37.2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.275, ptr noundef %retval.0.i.i62.2.i.i, i32 noundef 2, ptr noundef %arrayidx33.2.i.i, i32 noundef %conv36.2.i.i) #12
  br label %for.inc.2.i.i

for.inc.2.i.i:                                    ; preds = %wiphy_name.exit63.2.i.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge
  %332 = load i32, ptr @at76_debug, align 4
  %and23.3.i.i = and i32 %332, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.3.i.i)
  %tobool24.not.3.i.i = icmp eq i32 %and23.3.i.i, 0
  br i1 %tobool24.not.3.i.i, label %for.inc.2.i.i.exit.i140.i_crit_edge, label %do.end28.3.i.i

for.inc.2.i.i.exit.i140.i_crit_edge:              ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit.i140.i

do.end28.3.i.i:                                   ; preds = %for.inc.2.i.i
  %333 = ptrtoint ptr %hw30.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %hw30.i.i, align 4
  %wiphy31.3.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %334, i32 0, i32 1
  %335 = ptrtoint ptr %wiphy31.3.i.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %wiphy31.3.i.i, align 8
  %init_name.i.i58.3.i.i = getelementptr inbounds %struct.wiphy, ptr %336, i32 0, i32 56, i32 3
  %337 = ptrtoint ptr %init_name.i.i58.3.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %init_name.i.i58.3.i.i, align 8
  %tobool.not.i.i59.3.i.i = icmp eq ptr %338, null
  br i1 %tobool.not.i.i59.3.i.i, label %if.end.i.i61.3.i.i, label %do.end28.3.i.i.wiphy_name.exit63.3.i.i_crit_edge

do.end28.3.i.i.wiphy_name.exit63.3.i.i_crit_edge: ; preds = %do.end28.3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wiphy_name.exit63.3.i.i

if.end.i.i61.3.i.i:                               ; preds = %do.end28.3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i60.3.i.i = getelementptr inbounds %struct.wiphy, ptr %336, i32 0, i32 56
  %339 = ptrtoint ptr %dev.i60.3.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %dev.i60.3.i.i, align 4
  br label %wiphy_name.exit63.3.i.i

wiphy_name.exit63.3.i.i:                          ; preds = %if.end.i.i61.3.i.i, %do.end28.3.i.i.wiphy_name.exit63.3.i.i_crit_edge
  %retval.0.i.i62.3.i.i = phi ptr [ %340, %if.end.i.i61.3.i.i ], [ %338, %do.end28.3.i.i.wiphy_name.exit63.3.i.i_crit_edge ]
  %arrayidx33.3.i.i = getelementptr %struct.mib_mac_addr, ptr %call7.i.i111.i, i32 0, i32 2, i32 3
  %arrayidx35.3.i.i = getelementptr %struct.mib_mac_addr, ptr %call7.i.i111.i, i32 0, i32 3, i32 3
  %341 = ptrtoint ptr %arrayidx35.3.i.i to i32
  call void @__asan_load1_noabort(i32 %341)
  %342 = load i8, ptr %arrayidx35.3.i.i, align 1
  %conv36.3.i.i = zext i8 %342 to i32
  %call37.3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.275, ptr noundef %retval.0.i.i62.3.i.i, i32 noundef 3, ptr noundef %arrayidx33.3.i.i, i32 noundef %conv36.3.i.i) #12
  br label %exit.i140.i

exit.i140.i:                                      ; preds = %wiphy_name.exit63.3.i.i, %for.inc.2.i.i.exit.i140.i_crit_edge, %do.end.i125.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i111.i) #9
  br label %at76_dump_mib_mac_addr.exit.i

at76_dump_mib_mac_addr.exit.i:                    ; preds = %exit.i140.i, %at76_dump_mib_mac.exit.i.at76_dump_mib_mac_addr.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %343 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i141.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %343, i32 noundef 3264, i32 noundef 64) #13
  %tobool.not.i142.i = icmp eq ptr %call7.i.i141.i, null
  br i1 %tobool.not.i142.i, label %at76_dump_mib_mac_addr.exit.i.at76_dump_mib_mac_mgmt.exit.i_crit_edge, label %if.end.i151.i

at76_dump_mib_mac_addr.exit.i.at76_dump_mib_mac_mgmt.exit.i_crit_edge: ; preds = %at76_dump_mib_mac_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_dump_mib_mac_mgmt.exit.i

if.end.i151.i:                                    ; preds = %at76_dump_mib_mac_addr.exit.i
  %344 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %1, align 4
  %346 = ptrtoint ptr %345 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %345, align 8
  %shl.i.i.i143.i = shl i32 %347, 8
  %or1.i.i144.i = or i32 %shl.i.i.i143.i, -2147483520
  %call4.i.i145.i = tail call i32 @usb_control_msg(ptr noundef %345, i32 noundef %or1.i.i144.i, i8 noundef zeroext 51, i8 noundef zeroext -63, i16 noundef zeroext 1280, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i141.i, i16 noundef zeroext 64, i32 noundef 5000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i145.i)
  %cmp.i.i146.i = icmp slt i32 %call4.i.i145.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call4.i.i145.i)
  %cmp6.not.i.i147.i = icmp eq i32 %call4.i.i145.i, 64
  %or.cond.i.i148.i = or i1 %cmp.i.i146.i, %cmp6.not.i.i147.i
  %retval.0.i.i149.i = select i1 %or.cond.i.i148.i, i32 %call4.i.i145.i, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i149.i)
  %cmp.i150.i = icmp slt i32 %retval.0.i.i149.i, 0
  br i1 %cmp.i150.i, label %do.end.i155.i, label %do.body4.i158.i

do.end.i155.i:                                    ; preds = %if.end.i151.i
  call void @__sanitizer_cov_trace_pc() #11
  %hw.i152.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 53
  %348 = ptrtoint ptr %hw.i152.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %hw.i152.i, align 4
  %wiphy.i153.i = getelementptr inbounds %struct.ieee80211_hw, ptr %349, i32 0, i32 1
  %350 = ptrtoint ptr %wiphy.i153.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %wiphy.i153.i, align 8
  %dev.i154.i = getelementptr inbounds %struct.wiphy, ptr %351, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i154.i, ptr noundef nonnull @.str.277, i32 noundef %retval.0.i.i149.i) #12
  br label %exit.i181.i

do.body4.i158.i:                                  ; preds = %if.end.i151.i
  %352 = load i32, ptr @at76_debug, align 4
  %and.i156.i = and i32 %352, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i156.i)
  %tobool5.not.i157.i = icmp eq i32 %and.i156.i, 0
  br i1 %tobool5.not.i157.i, label %do.body4.i158.i.exit.i181.i_crit_edge, label %do.end9.i163.i

do.body4.i158.i.exit.i181.i_crit_edge:            ; preds = %do.body4.i158.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit.i181.i

do.end9.i163.i:                                   ; preds = %do.body4.i158.i
  %hw10.i159.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 53
  %353 = ptrtoint ptr %hw10.i159.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %hw10.i159.i, align 4
  %wiphy11.i160.i = getelementptr inbounds %struct.ieee80211_hw, ptr %354, i32 0, i32 1
  %355 = ptrtoint ptr %wiphy11.i160.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %wiphy11.i160.i, align 8
  %init_name.i.i.i161.i = getelementptr inbounds %struct.wiphy, ptr %356, i32 0, i32 56, i32 3
  %357 = ptrtoint ptr %init_name.i.i.i161.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %init_name.i.i.i161.i, align 8
  %tobool.not.i.i.i162.i = icmp eq ptr %358, null
  br i1 %tobool.not.i.i.i162.i, label %if.end.i.i.i165.i, label %do.end9.i163.i.wiphy_name.exit.i180.i_crit_edge

do.end9.i163.i.wiphy_name.exit.i180.i_crit_edge:  ; preds = %do.end9.i163.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wiphy_name.exit.i180.i

if.end.i.i.i165.i:                                ; preds = %do.end9.i163.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i164.i = getelementptr inbounds %struct.wiphy, ptr %356, i32 0, i32 56
  %359 = ptrtoint ptr %dev.i.i164.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %dev.i.i164.i, align 4
  br label %wiphy_name.exit.i180.i

wiphy_name.exit.i180.i:                           ; preds = %if.end.i.i.i165.i, %do.end9.i163.i.wiphy_name.exit.i180.i_crit_edge
  %retval.0.i.i.i166.i = phi ptr [ %360, %if.end.i.i.i165.i ], [ %358, %do.end9.i163.i.wiphy_name.exit.i180.i_crit_edge ]
  %361 = ptrtoint ptr %call7.i.i141.i to i32
  call void @__asan_load2_noabort(i32 %361)
  %362 = load i16, ptr %call7.i.i141.i, align 8
  %363 = tail call i16 @llvm.bswap.i16(i16 %362) #9
  %conv.i167.i = zext i16 %363 to i32
  %CFP_max_duration.i.i = getelementptr inbounds %struct.mib_mac_mgmt, ptr %call7.i.i141.i, i32 0, i32 1
  %364 = ptrtoint ptr %CFP_max_duration.i.i to i32
  call void @__asan_load2_noabort(i32 %364)
  %365 = load i16, ptr %CFP_max_duration.i.i, align 2
  %366 = tail call i16 @llvm.bswap.i16(i16 %365) #9
  %conv13.i168.i = zext i16 %366 to i32
  %medium_occupancy_limit.i.i = getelementptr inbounds %struct.mib_mac_mgmt, ptr %call7.i.i141.i, i32 0, i32 2
  %367 = ptrtoint ptr %medium_occupancy_limit.i.i to i32
  call void @__asan_load2_noabort(i32 %367)
  %368 = load i16, ptr %medium_occupancy_limit.i.i, align 4
  %369 = tail call i16 @llvm.bswap.i16(i16 %368) #9
  %conv14.i169.i = zext i16 %369 to i32
  %station_id.i.i = getelementptr inbounds %struct.mib_mac_mgmt, ptr %call7.i.i141.i, i32 0, i32 3
  %370 = ptrtoint ptr %station_id.i.i to i32
  call void @__asan_load2_noabort(i32 %370)
  %371 = load i16, ptr %station_id.i.i, align 2
  %372 = tail call i16 @llvm.bswap.i16(i16 %371) #9
  %conv15.i170.i = zext i16 %372 to i32
  %ATIM_window.i.i = getelementptr inbounds %struct.mib_mac_mgmt, ptr %call7.i.i141.i, i32 0, i32 4
  %373 = ptrtoint ptr %ATIM_window.i.i to i32
  call void @__asan_load2_noabort(i32 %373)
  %374 = load i16, ptr %ATIM_window.i.i, align 8
  %375 = tail call i16 @llvm.bswap.i16(i16 %374) #9
  %conv16.i171.i = zext i16 %375 to i32
  %CFP_mode.i.i = getelementptr inbounds %struct.mib_mac_mgmt, ptr %call7.i.i141.i, i32 0, i32 5
  %376 = ptrtoint ptr %CFP_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %376)
  %377 = load i8, ptr %CFP_mode.i.i, align 2
  %conv17.i172.i = zext i8 %377 to i32
  %privacy_option_implemented.i.i = getelementptr inbounds %struct.mib_mac_mgmt, ptr %call7.i.i141.i, i32 0, i32 6
  %378 = ptrtoint ptr %privacy_option_implemented.i.i to i32
  call void @__asan_load1_noabort(i32 %378)
  %379 = load i8, ptr %privacy_option_implemented.i.i, align 1
  %conv18.i173.i = zext i8 %379 to i32
  %DTIM_period.i.i = getelementptr inbounds %struct.mib_mac_mgmt, ptr %call7.i.i141.i, i32 0, i32 7
  %380 = ptrtoint ptr %DTIM_period.i.i to i32
  call void @__asan_load1_noabort(i32 %380)
  %381 = load i8, ptr %DTIM_period.i.i, align 4
  %conv19.i174.i = zext i8 %381 to i32
  %CFP_period.i.i = getelementptr inbounds %struct.mib_mac_mgmt, ptr %call7.i.i141.i, i32 0, i32 8
  %382 = ptrtoint ptr %CFP_period.i.i to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %CFP_period.i.i, align 1
  %conv20.i175.i = zext i8 %383 to i32
  %current_bssid.i.i = getelementptr inbounds %struct.mib_mac_mgmt, ptr %call7.i.i141.i, i32 0, i32 9
  %current_essid.i.i = getelementptr inbounds %struct.mib_mac_mgmt, ptr %call7.i.i141.i, i32 0, i32 10
  %current_bss_type.i.i = getelementptr inbounds %struct.mib_mac_mgmt, ptr %call7.i.i141.i, i32 0, i32 11
  %384 = ptrtoint ptr %current_bss_type.i.i to i32
  call void @__asan_load1_noabort(i32 %384)
  %385 = load i8, ptr %current_bss_type.i.i, align 4
  %conv22.i176.i = zext i8 %385 to i32
  %power_mgmt_mode.i.i = getelementptr inbounds %struct.mib_mac_mgmt, ptr %call7.i.i141.i, i32 0, i32 12
  %386 = ptrtoint ptr %power_mgmt_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %386)
  %387 = load i8, ptr %power_mgmt_mode.i.i, align 1
  %conv23.i177.i = zext i8 %387 to i32
  %ibss_change.i.i = getelementptr inbounds %struct.mib_mac_mgmt, ptr %call7.i.i141.i, i32 0, i32 13
  %388 = ptrtoint ptr %ibss_change.i.i to i32
  call void @__asan_load1_noabort(i32 %388)
  %389 = load i8, ptr %ibss_change.i.i, align 2
  %conv24.i.i = zext i8 %389 to i32
  %res.i178.i = getelementptr inbounds %struct.mib_mac_mgmt, ptr %call7.i.i141.i, i32 0, i32 14
  %390 = ptrtoint ptr %res.i178.i to i32
  call void @__asan_load1_noabort(i32 %390)
  %391 = load i8, ptr %res.i178.i, align 1
  %conv25.i179.i = zext i8 %391 to i32
  %multi_domain_capability_implemented.i.i = getelementptr inbounds %struct.mib_mac_mgmt, ptr %call7.i.i141.i, i32 0, i32 15
  %392 = ptrtoint ptr %multi_domain_capability_implemented.i.i to i32
  call void @__asan_load1_noabort(i32 %392)
  %393 = load i8, ptr %multi_domain_capability_implemented.i.i, align 8
  %conv26.i.i = zext i8 %393 to i32
  %multi_domain_capability_enabled.i.i = getelementptr inbounds %struct.mib_mac_mgmt, ptr %call7.i.i141.i, i32 0, i32 16
  %394 = ptrtoint ptr %multi_domain_capability_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %394)
  %395 = load i8, ptr %multi_domain_capability_enabled.i.i, align 1
  %conv27.i.i = zext i8 %395 to i32
  %country_string.i.i = getelementptr inbounds %struct.mib_mac_mgmt, ptr %call7.i.i141.i, i32 0, i32 17
  %call29.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.280, ptr noundef %retval.0.i.i.i166.i, i32 noundef %conv.i167.i, i32 noundef %conv13.i168.i, i32 noundef %conv14.i169.i, i32 noundef %conv15.i170.i, i32 noundef %conv16.i171.i, i32 noundef %conv17.i172.i, i32 noundef %conv18.i173.i, i32 noundef %conv19.i174.i, i32 noundef %conv20.i175.i, ptr noundef %current_bssid.i.i, i32 noundef 32, ptr noundef %current_essid.i.i, i32 noundef %conv22.i176.i, i32 noundef %conv23.i177.i, i32 noundef %conv24.i.i, i32 noundef %conv25.i179.i, i32 noundef %conv26.i.i, i32 noundef %conv27.i.i, ptr noundef %country_string.i.i) #12
  br label %exit.i181.i

exit.i181.i:                                      ; preds = %wiphy_name.exit.i180.i, %do.body4.i158.i.exit.i181.i_crit_edge, %do.end.i155.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i141.i) #9
  br label %at76_dump_mib_mac_mgmt.exit.i

at76_dump_mib_mac_mgmt.exit.i:                    ; preds = %exit.i181.i, %at76_dump_mib_mac_addr.exit.i.at76_dump_mib_mac_mgmt.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %396 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i182.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %396, i32 noundef 3264, i32 noundef 65) #13
  %tobool.not.i183.i = icmp eq ptr %call7.i.i182.i, null
  br i1 %tobool.not.i183.i, label %at76_dump_mib_mac_mgmt.exit.i.at76_dump_mib_mac_wep.exit.i_crit_edge, label %if.end.i192.i

at76_dump_mib_mac_mgmt.exit.i.at76_dump_mib_mac_wep.exit.i_crit_edge: ; preds = %at76_dump_mib_mac_mgmt.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_dump_mib_mac_wep.exit.i

if.end.i192.i:                                    ; preds = %at76_dump_mib_mac_mgmt.exit.i
  %397 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %1, align 4
  %399 = ptrtoint ptr %398 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %398, align 8
  %shl.i.i.i184.i = shl i32 %400, 8
  %or1.i.i185.i = or i32 %shl.i.i.i184.i, -2147483520
  %call4.i.i186.i = tail call i32 @usb_control_msg(ptr noundef %398, i32 noundef %or1.i.i185.i, i8 noundef zeroext 51, i8 noundef zeroext -63, i16 noundef zeroext 1536, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i182.i, i16 noundef zeroext 65, i32 noundef 5000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i186.i)
  %cmp.i.i187.i = icmp slt i32 %call4.i.i186.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %call4.i.i186.i)
  %cmp6.not.i.i188.i = icmp eq i32 %call4.i.i186.i, 65
  %or.cond.i.i189.i = or i1 %cmp.i.i187.i, %cmp6.not.i.i188.i
  %retval.0.i.i190.i = select i1 %or.cond.i.i189.i, i32 %call4.i.i186.i, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i190.i)
  %cmp.i191.i = icmp slt i32 %retval.0.i.i190.i, 0
  br i1 %cmp.i191.i, label %do.end.i196.i, label %do.body4.i199.i

do.end.i196.i:                                    ; preds = %if.end.i192.i
  call void @__sanitizer_cov_trace_pc() #11
  %hw.i193.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 53
  %401 = ptrtoint ptr %hw.i193.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %hw.i193.i, align 4
  %wiphy.i194.i = getelementptr inbounds %struct.ieee80211_hw, ptr %402, i32 0, i32 1
  %403 = ptrtoint ptr %wiphy.i194.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %wiphy.i194.i, align 8
  %dev.i195.i = getelementptr inbounds %struct.wiphy, ptr %404, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i195.i, ptr noundef nonnull @.str.282, i32 noundef %retval.0.i.i190.i) #12
  br label %exit.i217.i

do.body4.i199.i:                                  ; preds = %if.end.i192.i
  %405 = load i32, ptr @at76_debug, align 4
  %and.i197.i = and i32 %405, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i197.i)
  %tobool5.not.i198.i = icmp eq i32 %and.i197.i, 0
  br i1 %tobool5.not.i198.i, label %do.body4.i199.i.do.end22.i.i_crit_edge, label %do.end9.i204.i

do.body4.i199.i.do.end22.i.i_crit_edge:           ; preds = %do.body4.i199.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end22.i.i

do.end9.i204.i:                                   ; preds = %do.body4.i199.i
  %hw10.i200.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 53
  %406 = ptrtoint ptr %hw10.i200.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %hw10.i200.i, align 4
  %wiphy11.i201.i = getelementptr inbounds %struct.ieee80211_hw, ptr %407, i32 0, i32 1
  %408 = ptrtoint ptr %wiphy11.i201.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %wiphy11.i201.i, align 8
  %init_name.i.i.i202.i = getelementptr inbounds %struct.wiphy, ptr %409, i32 0, i32 56, i32 3
  %410 = ptrtoint ptr %init_name.i.i.i202.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %init_name.i.i.i202.i, align 8
  %tobool.not.i.i.i203.i = icmp eq ptr %411, null
  br i1 %tobool.not.i.i.i203.i, label %if.end.i.i.i206.i, label %do.end9.i204.i.wiphy_name.exit.i213.i_crit_edge

do.end9.i204.i.wiphy_name.exit.i213.i_crit_edge:  ; preds = %do.end9.i204.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wiphy_name.exit.i213.i

if.end.i.i.i206.i:                                ; preds = %do.end9.i204.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i205.i = getelementptr inbounds %struct.wiphy, ptr %409, i32 0, i32 56
  %412 = ptrtoint ptr %dev.i.i205.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %dev.i.i205.i, align 4
  br label %wiphy_name.exit.i213.i

wiphy_name.exit.i213.i:                           ; preds = %if.end.i.i.i206.i, %do.end9.i204.i.wiphy_name.exit.i213.i_crit_edge
  %retval.0.i.i.i207.i = phi ptr [ %413, %if.end.i.i.i206.i ], [ %411, %do.end9.i204.i.wiphy_name.exit.i213.i_crit_edge ]
  %414 = ptrtoint ptr %call7.i.i182.i to i32
  call void @__asan_load1_noabort(i32 %414)
  %415 = load i8, ptr %call7.i.i182.i, align 8
  %conv.i208.i = zext i8 %415 to i32
  %wep_default_key_id.i.i = getelementptr inbounds %struct.mib_mac_wep, ptr %call7.i.i182.i, i32 0, i32 1
  %416 = ptrtoint ptr %wep_default_key_id.i.i to i32
  call void @__asan_load1_noabort(i32 %416)
  %417 = load i8, ptr %wep_default_key_id.i.i, align 1
  %conv13.i209.i = zext i8 %417 to i32
  %wep_key_mapping_len.i.i = getelementptr inbounds %struct.mib_mac_wep, ptr %call7.i.i182.i, i32 0, i32 2
  %418 = ptrtoint ptr %wep_key_mapping_len.i.i to i32
  call void @__asan_load1_noabort(i32 %418)
  %419 = load i8, ptr %wep_key_mapping_len.i.i, align 2
  %conv14.i210.i = zext i8 %419 to i32
  %exclude_unencrypted.i.i = getelementptr inbounds %struct.mib_mac_wep, ptr %call7.i.i182.i, i32 0, i32 3
  %420 = ptrtoint ptr %exclude_unencrypted.i.i to i32
  call void @__asan_load1_noabort(i32 %420)
  %421 = load i8, ptr %exclude_unencrypted.i.i, align 1
  %conv15.i211.i = zext i8 %421 to i32
  %wep_icv_error_count.i.i = getelementptr inbounds %struct.mib_mac_wep, ptr %call7.i.i182.i, i32 0, i32 4
  %422 = ptrtoint ptr %wep_icv_error_count.i.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %wep_icv_error_count.i.i, align 4
  %424 = tail call i32 @llvm.bswap.i32(i32 %423) #9
  %wep_excluded_count.i.i = getelementptr inbounds %struct.mib_mac_wep, ptr %call7.i.i182.i, i32 0, i32 5
  %425 = ptrtoint ptr %wep_excluded_count.i.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load i32, ptr %wep_excluded_count.i.i, align 8
  %427 = tail call i32 @llvm.bswap.i32(i32 %426) #9
  %encryption_level.i.i = getelementptr inbounds %struct.mib_mac_wep, ptr %call7.i.i182.i, i32 0, i32 7
  %428 = ptrtoint ptr %encryption_level.i.i to i32
  call void @__asan_load1_noabort(i32 %428)
  %429 = load i8, ptr %encryption_level.i.i, align 8
  %conv16.i212.i = zext i8 %429 to i32
  %call19.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.285, ptr noundef %retval.0.i.i.i207.i, i32 noundef %conv.i208.i, i32 noundef %conv13.i209.i, i32 noundef %conv14.i210.i, i32 noundef %conv15.i211.i, i32 noundef %424, i32 noundef %427, i32 noundef %conv16.i212.i, i32 noundef %conv13.i209.i) #12
  br label %do.end22.i.i

do.end22.i.i:                                     ; preds = %wiphy_name.exit.i213.i, %do.body4.i199.i.do.end22.i.i_crit_edge
  %encryption_level23.i.i = getelementptr inbounds %struct.mib_mac_wep, ptr %call7.i.i182.i, i32 0, i32 7
  %430 = ptrtoint ptr %encryption_level23.i.i to i32
  call void @__asan_load1_noabort(i32 %430)
  %431 = load i8, ptr %encryption_level23.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %431)
  %cmp25.i.i = icmp eq i8 %431, 1
  %cond.i.i = select i1 %cmp25.i.i, i32 5, i32 13
  %hw37.i.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 53
  %432 = load i32, ptr @at76_debug, align 4
  %and30.i.i = and i32 %432, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i.i)
  %tobool31.not.i.i = icmp eq i32 %and30.i.i, 0
  br i1 %tobool31.not.i.i, label %do.end22.i.i.for.inc.i214.i_crit_edge, label %do.end35.i.i

do.end22.i.i.for.inc.i214.i_crit_edge:            ; preds = %do.end22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i214.i

do.end35.i.i:                                     ; preds = %do.end22.i.i
  %433 = ptrtoint ptr %hw37.i.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %hw37.i.i, align 4
  %wiphy38.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %434, i32 0, i32 1
  %435 = ptrtoint ptr %wiphy38.i.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %wiphy38.i.i, align 8
  %init_name.i.i66.i.i = getelementptr inbounds %struct.wiphy, ptr %436, i32 0, i32 56, i32 3
  %437 = ptrtoint ptr %init_name.i.i66.i.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %init_name.i.i66.i.i, align 8
  %tobool.not.i.i67.i.i = icmp eq ptr %438, null
  br i1 %tobool.not.i.i67.i.i, label %if.end.i.i69.i.i, label %do.end35.i.i.wiphy_name.exit71.i.i_crit_edge

do.end35.i.i.wiphy_name.exit71.i.i_crit_edge:     ; preds = %do.end35.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wiphy_name.exit71.i.i

if.end.i.i69.i.i:                                 ; preds = %do.end35.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i68.i.i = getelementptr inbounds %struct.wiphy, ptr %436, i32 0, i32 56
  %439 = ptrtoint ptr %dev.i68.i.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %dev.i68.i.i, align 4
  br label %wiphy_name.exit71.i.i

wiphy_name.exit71.i.i:                            ; preds = %if.end.i.i69.i.i, %do.end35.i.i.wiphy_name.exit71.i.i_crit_edge
  %retval.0.i.i70.i.i = phi ptr [ %440, %if.end.i.i69.i.i ], [ %438, %do.end35.i.i.wiphy_name.exit71.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.mib_mac_wep, ptr %call7.i.i182.i, i32 0, i32 6, i32 0
  %call40.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.288, ptr noundef %retval.0.i.i70.i.i, i32 noundef 0, i32 noundef %cond.i.i, ptr noundef %arrayidx.i.i) #12
  br label %for.inc.i214.i

for.inc.i214.i:                                   ; preds = %wiphy_name.exit71.i.i, %do.end22.i.i.for.inc.i214.i_crit_edge
  %441 = load i32, ptr @at76_debug, align 4
  %and30.1.i.i = and i32 %441, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.1.i.i)
  %tobool31.not.1.i.i = icmp eq i32 %and30.1.i.i, 0
  br i1 %tobool31.not.1.i.i, label %for.inc.i214.i.for.inc.1.i215.i_crit_edge, label %do.end35.1.i.i

for.inc.i214.i.for.inc.1.i215.i_crit_edge:        ; preds = %for.inc.i214.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i215.i

do.end35.1.i.i:                                   ; preds = %for.inc.i214.i
  %442 = ptrtoint ptr %hw37.i.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %hw37.i.i, align 4
  %wiphy38.1.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %443, i32 0, i32 1
  %444 = ptrtoint ptr %wiphy38.1.i.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %wiphy38.1.i.i, align 8
  %init_name.i.i66.1.i.i = getelementptr inbounds %struct.wiphy, ptr %445, i32 0, i32 56, i32 3
  %446 = ptrtoint ptr %init_name.i.i66.1.i.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %init_name.i.i66.1.i.i, align 8
  %tobool.not.i.i67.1.i.i = icmp eq ptr %447, null
  br i1 %tobool.not.i.i67.1.i.i, label %if.end.i.i69.1.i.i, label %do.end35.1.i.i.wiphy_name.exit71.1.i.i_crit_edge

do.end35.1.i.i.wiphy_name.exit71.1.i.i_crit_edge: ; preds = %do.end35.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wiphy_name.exit71.1.i.i

if.end.i.i69.1.i.i:                               ; preds = %do.end35.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i68.1.i.i = getelementptr inbounds %struct.wiphy, ptr %445, i32 0, i32 56
  %448 = ptrtoint ptr %dev.i68.1.i.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %dev.i68.1.i.i, align 4
  br label %wiphy_name.exit71.1.i.i

wiphy_name.exit71.1.i.i:                          ; preds = %if.end.i.i69.1.i.i, %do.end35.1.i.i.wiphy_name.exit71.1.i.i_crit_edge
  %retval.0.i.i70.1.i.i = phi ptr [ %449, %if.end.i.i69.1.i.i ], [ %447, %do.end35.1.i.i.wiphy_name.exit71.1.i.i_crit_edge ]
  %arrayidx.1.i.i = getelementptr %struct.mib_mac_wep, ptr %call7.i.i182.i, i32 0, i32 6, i32 1
  %call40.1.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.288, ptr noundef %retval.0.i.i70.1.i.i, i32 noundef 1, i32 noundef %cond.i.i, ptr noundef %arrayidx.1.i.i) #12
  br label %for.inc.1.i215.i

for.inc.1.i215.i:                                 ; preds = %wiphy_name.exit71.1.i.i, %for.inc.i214.i.for.inc.1.i215.i_crit_edge
  %450 = load i32, ptr @at76_debug, align 4
  %and30.2.i.i = and i32 %450, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.2.i.i)
  %tobool31.not.2.i.i = icmp eq i32 %and30.2.i.i, 0
  br i1 %tobool31.not.2.i.i, label %for.inc.1.i215.i.for.inc.2.i216.i_crit_edge, label %do.end35.2.i.i

for.inc.1.i215.i.for.inc.2.i216.i_crit_edge:      ; preds = %for.inc.1.i215.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.i216.i

do.end35.2.i.i:                                   ; preds = %for.inc.1.i215.i
  %451 = ptrtoint ptr %hw37.i.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %hw37.i.i, align 4
  %wiphy38.2.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %452, i32 0, i32 1
  %453 = ptrtoint ptr %wiphy38.2.i.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %wiphy38.2.i.i, align 8
  %init_name.i.i66.2.i.i = getelementptr inbounds %struct.wiphy, ptr %454, i32 0, i32 56, i32 3
  %455 = ptrtoint ptr %init_name.i.i66.2.i.i to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %init_name.i.i66.2.i.i, align 8
  %tobool.not.i.i67.2.i.i = icmp eq ptr %456, null
  br i1 %tobool.not.i.i67.2.i.i, label %if.end.i.i69.2.i.i, label %do.end35.2.i.i.wiphy_name.exit71.2.i.i_crit_edge

do.end35.2.i.i.wiphy_name.exit71.2.i.i_crit_edge: ; preds = %do.end35.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wiphy_name.exit71.2.i.i

if.end.i.i69.2.i.i:                               ; preds = %do.end35.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i68.2.i.i = getelementptr inbounds %struct.wiphy, ptr %454, i32 0, i32 56
  %457 = ptrtoint ptr %dev.i68.2.i.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %dev.i68.2.i.i, align 4
  br label %wiphy_name.exit71.2.i.i

wiphy_name.exit71.2.i.i:                          ; preds = %if.end.i.i69.2.i.i, %do.end35.2.i.i.wiphy_name.exit71.2.i.i_crit_edge
  %retval.0.i.i70.2.i.i = phi ptr [ %458, %if.end.i.i69.2.i.i ], [ %456, %do.end35.2.i.i.wiphy_name.exit71.2.i.i_crit_edge ]
  %arrayidx.2.i.i = getelementptr %struct.mib_mac_wep, ptr %call7.i.i182.i, i32 0, i32 6, i32 2
  %call40.2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.288, ptr noundef %retval.0.i.i70.2.i.i, i32 noundef 2, i32 noundef %cond.i.i, ptr noundef %arrayidx.2.i.i) #12
  br label %for.inc.2.i216.i

for.inc.2.i216.i:                                 ; preds = %wiphy_name.exit71.2.i.i, %for.inc.1.i215.i.for.inc.2.i216.i_crit_edge
  %459 = load i32, ptr @at76_debug, align 4
  %and30.3.i.i = and i32 %459, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.3.i.i)
  %tobool31.not.3.i.i = icmp eq i32 %and30.3.i.i, 0
  br i1 %tobool31.not.3.i.i, label %for.inc.2.i216.i.exit.i217.i_crit_edge, label %do.end35.3.i.i

for.inc.2.i216.i.exit.i217.i_crit_edge:           ; preds = %for.inc.2.i216.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit.i217.i

do.end35.3.i.i:                                   ; preds = %for.inc.2.i216.i
  %460 = ptrtoint ptr %hw37.i.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %hw37.i.i, align 4
  %wiphy38.3.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %461, i32 0, i32 1
  %462 = ptrtoint ptr %wiphy38.3.i.i to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %wiphy38.3.i.i, align 8
  %init_name.i.i66.3.i.i = getelementptr inbounds %struct.wiphy, ptr %463, i32 0, i32 56, i32 3
  %464 = ptrtoint ptr %init_name.i.i66.3.i.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %init_name.i.i66.3.i.i, align 8
  %tobool.not.i.i67.3.i.i = icmp eq ptr %465, null
  br i1 %tobool.not.i.i67.3.i.i, label %if.end.i.i69.3.i.i, label %do.end35.3.i.i.wiphy_name.exit71.3.i.i_crit_edge

do.end35.3.i.i.wiphy_name.exit71.3.i.i_crit_edge: ; preds = %do.end35.3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wiphy_name.exit71.3.i.i

if.end.i.i69.3.i.i:                               ; preds = %do.end35.3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i68.3.i.i = getelementptr inbounds %struct.wiphy, ptr %463, i32 0, i32 56
  %466 = ptrtoint ptr %dev.i68.3.i.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %dev.i68.3.i.i, align 4
  br label %wiphy_name.exit71.3.i.i

wiphy_name.exit71.3.i.i:                          ; preds = %if.end.i.i69.3.i.i, %do.end35.3.i.i.wiphy_name.exit71.3.i.i_crit_edge
  %retval.0.i.i70.3.i.i = phi ptr [ %467, %if.end.i.i69.3.i.i ], [ %465, %do.end35.3.i.i.wiphy_name.exit71.3.i.i_crit_edge ]
  %arrayidx.3.i.i = getelementptr %struct.mib_mac_wep, ptr %call7.i.i182.i, i32 0, i32 6, i32 3
  %call40.3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.288, ptr noundef %retval.0.i.i70.3.i.i, i32 noundef 3, i32 noundef %cond.i.i, ptr noundef %arrayidx.3.i.i) #12
  br label %exit.i217.i

exit.i217.i:                                      ; preds = %wiphy_name.exit71.3.i.i, %for.inc.2.i216.i.exit.i217.i_crit_edge, %do.end.i196.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i182.i) #9
  br label %at76_dump_mib_mac_wep.exit.i

at76_dump_mib_mac_wep.exit.i:                     ; preds = %exit.i217.i, %at76_dump_mib_mac_mgmt.exit.i.at76_dump_mib_mac_wep.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %468 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i218.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %468, i32 noundef 3264, i32 noundef 28) #13
  %tobool.not.i219.i = icmp eq ptr %call7.i.i218.i, null
  br i1 %tobool.not.i219.i, label %at76_dump_mib_mac_wep.exit.i.at76_dump_mib_mdomain.exit.i_crit_edge, label %if.end.i228.i

at76_dump_mib_mac_wep.exit.i.at76_dump_mib_mdomain.exit.i_crit_edge: ; preds = %at76_dump_mib_mac_wep.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_dump_mib_mdomain.exit.i

if.end.i228.i:                                    ; preds = %at76_dump_mib_mac_wep.exit.i
  %469 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %1, align 4
  %471 = ptrtoint ptr %470 to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load i32, ptr %470, align 8
  %shl.i.i.i220.i = shl i32 %472, 8
  %or1.i.i221.i = or i32 %shl.i.i.i220.i, -2147483520
  %call4.i.i222.i = tail call i32 @usb_control_msg(ptr noundef %470, i32 noundef %or1.i.i221.i, i8 noundef zeroext 51, i8 noundef zeroext -63, i16 noundef zeroext 2304, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i218.i, i16 noundef zeroext 28, i32 noundef 5000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i222.i)
  %cmp.i.i223.i = icmp slt i32 %call4.i.i222.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %call4.i.i222.i)
  %cmp6.not.i.i224.i = icmp eq i32 %call4.i.i222.i, 28
  %or.cond.i.i225.i = or i1 %cmp.i.i223.i, %cmp6.not.i.i224.i
  %retval.0.i.i226.i = select i1 %or.cond.i.i225.i, i32 %call4.i.i222.i, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i226.i)
  %cmp.i227.i = icmp slt i32 %retval.0.i.i226.i, 0
  br i1 %cmp.i227.i, label %do.end.i232.i, label %do.body4.i235.i

do.end.i232.i:                                    ; preds = %if.end.i228.i
  call void @__sanitizer_cov_trace_pc() #11
  %hw.i229.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 53
  %473 = ptrtoint ptr %hw.i229.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %hw.i229.i, align 4
  %wiphy.i230.i = getelementptr inbounds %struct.ieee80211_hw, ptr %474, i32 0, i32 1
  %475 = ptrtoint ptr %wiphy.i230.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %wiphy.i230.i, align 8
  %dev.i231.i = getelementptr inbounds %struct.wiphy, ptr %476, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i231.i, ptr noundef nonnull @.str.290, i32 noundef %retval.0.i.i226.i) #12
  br label %exit.i246.i

do.body4.i235.i:                                  ; preds = %if.end.i228.i
  %477 = load i32, ptr @at76_debug, align 4
  %and.i233.i = and i32 %477, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i233.i)
  %tobool5.not.i234.i = icmp eq i32 %and.i233.i, 0
  br i1 %tobool5.not.i234.i, label %do.body4.i235.i.do.body17.i.i_crit_edge, label %do.end9.i240.i

do.body4.i235.i.do.body17.i.i_crit_edge:          ; preds = %do.body4.i235.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body17.i.i

do.end9.i240.i:                                   ; preds = %do.body4.i235.i
  %hw10.i236.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 53
  %478 = ptrtoint ptr %hw10.i236.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %hw10.i236.i, align 4
  %wiphy11.i237.i = getelementptr inbounds %struct.ieee80211_hw, ptr %479, i32 0, i32 1
  %480 = ptrtoint ptr %wiphy11.i237.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %wiphy11.i237.i, align 8
  %init_name.i.i.i238.i = getelementptr inbounds %struct.wiphy, ptr %481, i32 0, i32 56, i32 3
  %482 = ptrtoint ptr %init_name.i.i.i238.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %init_name.i.i.i238.i, align 8
  %tobool.not.i.i.i239.i = icmp eq ptr %483, null
  br i1 %tobool.not.i.i.i239.i, label %if.end.i.i.i242.i, label %do.end9.i240.i.wiphy_name.exit.i244.i_crit_edge

do.end9.i240.i.wiphy_name.exit.i244.i_crit_edge:  ; preds = %do.end9.i240.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wiphy_name.exit.i244.i

if.end.i.i.i242.i:                                ; preds = %do.end9.i240.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i241.i = getelementptr inbounds %struct.wiphy, ptr %481, i32 0, i32 56
  %484 = ptrtoint ptr %dev.i.i241.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %dev.i.i241.i, align 4
  br label %wiphy_name.exit.i244.i

wiphy_name.exit.i244.i:                           ; preds = %if.end.i.i.i242.i, %do.end9.i240.i.wiphy_name.exit.i244.i_crit_edge
  %retval.0.i.i.i243.i = phi ptr [ %485, %if.end.i.i.i242.i ], [ %483, %do.end9.i240.i.wiphy_name.exit.i244.i_crit_edge ]
  %channel_list.i.i = getelementptr inbounds %struct.mib_mdomain, ptr %call7.i.i218.i, i32 0, i32 1
  %call13.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.293, ptr noundef %retval.0.i.i.i243.i, i32 noundef 14, ptr noundef %channel_list.i.i) #12
  br label %do.body17.i.i

do.body17.i.i:                                    ; preds = %wiphy_name.exit.i244.i, %do.body4.i235.i.do.body17.i.i_crit_edge
  %486 = load i32, ptr @at76_debug, align 4
  %and18.i.i = and i32 %486, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i)
  %tobool19.not.i.i = icmp eq i32 %and18.i.i, 0
  br i1 %tobool19.not.i.i, label %do.body17.i.i.exit.i246.i_crit_edge, label %do.end23.i.i

do.body17.i.i.exit.i246.i_crit_edge:              ; preds = %do.body17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit.i246.i

do.end23.i.i:                                     ; preds = %do.body17.i.i
  %hw25.i.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 53
  %487 = ptrtoint ptr %hw25.i.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %hw25.i.i, align 4
  %wiphy26.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %488, i32 0, i32 1
  %489 = ptrtoint ptr %wiphy26.i.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %wiphy26.i.i, align 8
  %init_name.i.i42.i.i = getelementptr inbounds %struct.wiphy, ptr %490, i32 0, i32 56, i32 3
  %491 = ptrtoint ptr %init_name.i.i42.i.i to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %init_name.i.i42.i.i, align 8
  %tobool.not.i.i43.i.i = icmp eq ptr %492, null
  br i1 %tobool.not.i.i43.i.i, label %if.end.i.i45.i.i, label %do.end23.i.i.wiphy_name.exit47.i.i_crit_edge

do.end23.i.i.wiphy_name.exit47.i.i_crit_edge:     ; preds = %do.end23.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wiphy_name.exit47.i.i

if.end.i.i45.i.i:                                 ; preds = %do.end23.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i44.i.i = getelementptr inbounds %struct.wiphy, ptr %490, i32 0, i32 56
  %493 = ptrtoint ptr %dev.i44.i.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %dev.i44.i.i, align 4
  br label %wiphy_name.exit47.i.i

wiphy_name.exit47.i.i:                            ; preds = %if.end.i.i45.i.i, %do.end23.i.i.wiphy_name.exit47.i.i_crit_edge
  %retval.0.i.i46.i.i = phi ptr [ %494, %if.end.i.i45.i.i ], [ %492, %do.end23.i.i.wiphy_name.exit47.i.i_crit_edge ]
  %call29.i245.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.296, ptr noundef %retval.0.i.i46.i.i, i32 noundef 14, ptr noundef nonnull %call7.i.i218.i) #12
  br label %exit.i246.i

exit.i246.i:                                      ; preds = %wiphy_name.exit47.i.i, %do.body17.i.i.exit.i246.i_crit_edge, %do.end.i232.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i218.i) #9
  br label %at76_dump_mib_mdomain.exit.i

at76_dump_mib_mdomain.exit.i:                     ; preds = %exit.i246.i, %at76_dump_mib_mac_wep.exit.i.at76_dump_mib_mdomain.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %495 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i247.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %495, i32 noundef 3264, i32 noundef 24) #13
  %tobool.not.i248.i = icmp eq ptr %call7.i.i247.i, null
  br i1 %tobool.not.i248.i, label %at76_dump_mib_mdomain.exit.i.at76_dump_mib_phy.exit.i_crit_edge, label %if.end.i257.i

at76_dump_mib_mdomain.exit.i.at76_dump_mib_phy.exit.i_crit_edge: ; preds = %at76_dump_mib_mdomain.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_dump_mib_phy.exit.i

if.end.i257.i:                                    ; preds = %at76_dump_mib_mdomain.exit.i
  %496 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %1, align 4
  %498 = ptrtoint ptr %497 to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load i32, ptr %497, align 8
  %shl.i.i.i249.i = shl i32 %499, 8
  %or1.i.i250.i = or i32 %shl.i.i.i249.i, -2147483520
  %call4.i.i251.i = tail call i32 @usb_control_msg(ptr noundef %497, i32 noundef %or1.i.i250.i, i8 noundef zeroext 51, i8 noundef zeroext -63, i16 noundef zeroext 1792, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i247.i, i16 noundef zeroext 24, i32 noundef 5000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i251.i)
  %cmp.i.i252.i = icmp slt i32 %call4.i.i251.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %call4.i.i251.i)
  %cmp6.not.i.i253.i = icmp eq i32 %call4.i.i251.i, 24
  %or.cond.i.i254.i = or i1 %cmp.i.i252.i, %cmp6.not.i.i253.i
  %retval.0.i.i255.i = select i1 %or.cond.i.i254.i, i32 %call4.i.i251.i, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i255.i)
  %cmp.i256.i = icmp slt i32 %retval.0.i.i255.i, 0
  br i1 %cmp.i256.i, label %do.end.i261.i, label %do.body4.i264.i

do.end.i261.i:                                    ; preds = %if.end.i257.i
  call void @__sanitizer_cov_trace_pc() #11
  %hw.i258.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 53
  %500 = ptrtoint ptr %hw.i258.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %hw.i258.i, align 4
  %wiphy.i259.i = getelementptr inbounds %struct.ieee80211_hw, ptr %501, i32 0, i32 1
  %502 = ptrtoint ptr %wiphy.i259.i to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %wiphy.i259.i, align 8
  %dev.i260.i = getelementptr inbounds %struct.wiphy, ptr %503, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i260.i, ptr noundef nonnull @.str.298, i32 noundef %retval.0.i.i255.i) #12
  br label %exit.i284.i

do.body4.i264.i:                                  ; preds = %if.end.i257.i
  %504 = load i32, ptr @at76_debug, align 4
  %and.i262.i = and i32 %504, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i262.i)
  %tobool5.not.i263.i = icmp eq i32 %and.i262.i, 0
  br i1 %tobool5.not.i263.i, label %do.body4.i264.i.exit.i284.i_crit_edge, label %do.end9.i269.i

do.body4.i264.i.exit.i284.i_crit_edge:            ; preds = %do.body4.i264.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit.i284.i

do.end9.i269.i:                                   ; preds = %do.body4.i264.i
  %hw10.i265.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 53
  %505 = ptrtoint ptr %hw10.i265.i to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %hw10.i265.i, align 4
  %wiphy11.i266.i = getelementptr inbounds %struct.ieee80211_hw, ptr %506, i32 0, i32 1
  %507 = ptrtoint ptr %wiphy11.i266.i to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %wiphy11.i266.i, align 8
  %init_name.i.i.i267.i = getelementptr inbounds %struct.wiphy, ptr %508, i32 0, i32 56, i32 3
  %509 = ptrtoint ptr %init_name.i.i.i267.i to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %init_name.i.i.i267.i, align 8
  %tobool.not.i.i.i268.i = icmp eq ptr %510, null
  br i1 %tobool.not.i.i.i268.i, label %if.end.i.i.i271.i, label %do.end9.i269.i.wiphy_name.exit.i283.i_crit_edge

do.end9.i269.i.wiphy_name.exit.i283.i_crit_edge:  ; preds = %do.end9.i269.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wiphy_name.exit.i283.i

if.end.i.i.i271.i:                                ; preds = %do.end9.i269.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i270.i = getelementptr inbounds %struct.wiphy, ptr %508, i32 0, i32 56
  %511 = ptrtoint ptr %dev.i.i270.i to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %dev.i.i270.i, align 4
  br label %wiphy_name.exit.i283.i

wiphy_name.exit.i283.i:                           ; preds = %if.end.i.i.i271.i, %do.end9.i269.i.wiphy_name.exit.i283.i_crit_edge
  %retval.0.i.i.i272.i = phi ptr [ %512, %if.end.i.i.i271.i ], [ %510, %do.end9.i269.i.wiphy_name.exit.i283.i_crit_edge ]
  %513 = ptrtoint ptr %call7.i.i247.i to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load i32, ptr %call7.i.i247.i, align 8
  %515 = tail call i32 @llvm.bswap.i32(i32 %514) #9
  %slot_time.i.i = getelementptr inbounds %struct.mib_phy, ptr %call7.i.i247.i, i32 0, i32 1
  %516 = ptrtoint ptr %slot_time.i.i to i32
  call void @__asan_load2_noabort(i32 %516)
  %517 = load i16, ptr %slot_time.i.i, align 4
  %518 = tail call i16 @llvm.bswap.i16(i16 %517) #9
  %conv.i273.i = zext i16 %518 to i32
  %sifs_time.i.i = getelementptr inbounds %struct.mib_phy, ptr %call7.i.i247.i, i32 0, i32 2
  %519 = ptrtoint ptr %sifs_time.i.i to i32
  call void @__asan_load2_noabort(i32 %519)
  %520 = load i16, ptr %sifs_time.i.i, align 2
  %521 = tail call i16 @llvm.bswap.i16(i16 %520) #9
  %conv13.i274.i = zext i16 %521 to i32
  %preamble_length.i.i = getelementptr inbounds %struct.mib_phy, ptr %call7.i.i247.i, i32 0, i32 3
  %522 = ptrtoint ptr %preamble_length.i.i to i32
  call void @__asan_load2_noabort(i32 %522)
  %523 = load i16, ptr %preamble_length.i.i, align 8
  %524 = tail call i16 @llvm.bswap.i16(i16 %523) #9
  %conv14.i275.i = zext i16 %524 to i32
  %plcp_header_length.i.i = getelementptr inbounds %struct.mib_phy, ptr %call7.i.i247.i, i32 0, i32 4
  %525 = ptrtoint ptr %plcp_header_length.i.i to i32
  call void @__asan_load2_noabort(i32 %525)
  %526 = load i16, ptr %plcp_header_length.i.i, align 2
  %527 = tail call i16 @llvm.bswap.i16(i16 %526) #9
  %conv15.i276.i = zext i16 %527 to i32
  %mpdu_max_length.i.i = getelementptr inbounds %struct.mib_phy, ptr %call7.i.i247.i, i32 0, i32 5
  %528 = ptrtoint ptr %mpdu_max_length.i.i to i32
  call void @__asan_load2_noabort(i32 %528)
  %529 = load i16, ptr %mpdu_max_length.i.i, align 4
  %530 = tail call i16 @llvm.bswap.i16(i16 %529) #9
  %conv16.i277.i = zext i16 %530 to i32
  %cca_mode_supported.i.i = getelementptr inbounds %struct.mib_phy, ptr %call7.i.i247.i, i32 0, i32 6
  %531 = ptrtoint ptr %cca_mode_supported.i.i to i32
  call void @__asan_load2_noabort(i32 %531)
  %532 = load i16, ptr %cca_mode_supported.i.i, align 2
  %533 = tail call i16 @llvm.bswap.i16(i16 %532) #9
  %conv17.i278.i = zext i16 %533 to i32
  %operation_rate_set.i.i = getelementptr inbounds %struct.mib_phy, ptr %call7.i.i247.i, i32 0, i32 7
  %534 = ptrtoint ptr %operation_rate_set.i.i to i32
  call void @__asan_load1_noabort(i32 %534)
  %535 = load i8, ptr %operation_rate_set.i.i, align 8
  %conv18.i279.i = zext i8 %535 to i32
  %arrayidx20.i.i = getelementptr %struct.mib_phy, ptr %call7.i.i247.i, i32 0, i32 7, i32 1
  %536 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_load1_noabort(i32 %536)
  %537 = load i8, ptr %arrayidx20.i.i, align 1
  %conv21.i280.i = zext i8 %537 to i32
  %arrayidx23.i.i = getelementptr %struct.mib_phy, ptr %call7.i.i247.i, i32 0, i32 7, i32 2
  %538 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load1_noabort(i32 %538)
  %539 = load i8, ptr %arrayidx23.i.i, align 2
  %conv24.i281.i = zext i8 %539 to i32
  %arrayidx26.i.i = getelementptr %struct.mib_phy, ptr %call7.i.i247.i, i32 0, i32 7, i32 3
  %540 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_load1_noabort(i32 %540)
  %541 = load i8, ptr %arrayidx26.i.i, align 1
  %conv27.i282.i = zext i8 %541 to i32
  %channel_id.i.i = getelementptr inbounds %struct.mib_phy, ptr %call7.i.i247.i, i32 0, i32 8
  %542 = ptrtoint ptr %channel_id.i.i to i32
  call void @__asan_load1_noabort(i32 %542)
  %543 = load i8, ptr %channel_id.i.i, align 4
  %conv28.i.i = zext i8 %543 to i32
  %current_cca_mode.i.i = getelementptr inbounds %struct.mib_phy, ptr %call7.i.i247.i, i32 0, i32 9
  %544 = ptrtoint ptr %current_cca_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %544)
  %545 = load i8, ptr %current_cca_mode.i.i, align 1
  %conv29.i.i = zext i8 %545 to i32
  %phy_type.i.i = getelementptr inbounds %struct.mib_phy, ptr %call7.i.i247.i, i32 0, i32 10
  %546 = ptrtoint ptr %phy_type.i.i to i32
  call void @__asan_load1_noabort(i32 %546)
  %547 = load i8, ptr %phy_type.i.i, align 2
  %conv30.i.i = zext i8 %547 to i32
  %current_reg_domain.i.i = getelementptr inbounds %struct.mib_phy, ptr %call7.i.i247.i, i32 0, i32 11
  %548 = ptrtoint ptr %current_reg_domain.i.i to i32
  call void @__asan_load1_noabort(i32 %548)
  %549 = load i8, ptr %current_reg_domain.i.i, align 1
  %conv31.i.i = zext i8 %549 to i32
  %call32.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.301, ptr noundef %retval.0.i.i.i272.i, i32 noundef %515, i32 noundef %conv.i273.i, i32 noundef %conv13.i274.i, i32 noundef %conv14.i275.i, i32 noundef %conv15.i276.i, i32 noundef %conv16.i277.i, i32 noundef %conv17.i278.i, i32 noundef %conv18.i279.i, i32 noundef %conv21.i280.i, i32 noundef %conv24.i281.i, i32 noundef %conv27.i282.i, i32 noundef %conv28.i.i, i32 noundef %conv29.i.i, i32 noundef %conv30.i.i, i32 noundef %conv31.i.i) #12
  br label %exit.i284.i

exit.i284.i:                                      ; preds = %wiphy_name.exit.i283.i, %do.body4.i264.i.exit.i284.i_crit_edge, %do.end.i261.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i247.i) #9
  br label %at76_dump_mib_phy.exit.i

at76_dump_mib_phy.exit.i:                         ; preds = %exit.i284.i, %at76_dump_mib_mdomain.exit.i.at76_dump_mib_phy.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %550 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i285.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %550, i32 noundef 3264, i32 noundef 12) #13
  %tobool.not.i286.i = icmp eq ptr %call7.i.i285.i, null
  br i1 %tobool.not.i286.i, label %at76_dump_mib_phy.exit.i.at76_startup_device.exit_crit_edge, label %if.end.i295.i

at76_dump_mib_phy.exit.i.at76_startup_device.exit_crit_edge: ; preds = %at76_dump_mib_phy.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_startup_device.exit

if.end.i295.i:                                    ; preds = %at76_dump_mib_phy.exit.i
  %551 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load ptr, ptr %1, align 4
  %553 = ptrtoint ptr %552 to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load i32, ptr %552, align 8
  %shl.i.i.i287.i = shl i32 %554, 8
  %or1.i.i288.i = or i32 %shl.i.i.i287.i, -2147483520
  %call4.i.i289.i = tail call i32 @usb_control_msg(ptr noundef %552, i32 noundef %or1.i.i288.i, i8 noundef zeroext 51, i8 noundef zeroext -63, i16 noundef zeroext 256, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i285.i, i16 noundef zeroext 12, i32 noundef 5000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i289.i)
  %cmp.i.i290.i = icmp slt i32 %call4.i.i289.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call4.i.i289.i)
  %cmp6.not.i.i291.i = icmp eq i32 %call4.i.i289.i, 12
  %or.cond.i.i292.i = or i1 %cmp.i.i290.i, %cmp6.not.i.i291.i
  %retval.0.i.i293.i = select i1 %or.cond.i.i292.i, i32 %call4.i.i289.i, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i293.i)
  %cmp.i294.i = icmp slt i32 %retval.0.i.i293.i, 0
  br i1 %cmp.i294.i, label %do.end.i299.i, label %do.body4.i302.i

do.end.i299.i:                                    ; preds = %if.end.i295.i
  call void @__sanitizer_cov_trace_pc() #11
  %hw.i296.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 53
  %555 = ptrtoint ptr %hw.i296.i to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load ptr, ptr %hw.i296.i, align 4
  %wiphy.i297.i = getelementptr inbounds %struct.ieee80211_hw, ptr %556, i32 0, i32 1
  %557 = ptrtoint ptr %wiphy.i297.i to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load ptr, ptr %wiphy.i297.i, align 8
  %dev.i298.i = getelementptr inbounds %struct.wiphy, ptr %558, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i298.i, ptr noundef nonnull @.str.303, i32 noundef %retval.0.i.i293.i) #12
  br label %exit.i317.i

do.body4.i302.i:                                  ; preds = %if.end.i295.i
  %559 = load i32, ptr @at76_debug, align 4
  %and.i300.i = and i32 %559, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i300.i)
  %tobool5.not.i301.i = icmp eq i32 %and.i300.i, 0
  br i1 %tobool5.not.i301.i, label %do.body4.i302.i.exit.i317.i_crit_edge, label %do.end9.i307.i

do.body4.i302.i.exit.i317.i_crit_edge:            ; preds = %do.body4.i302.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit.i317.i

do.end9.i307.i:                                   ; preds = %do.body4.i302.i
  %hw10.i303.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 53
  %560 = ptrtoint ptr %hw10.i303.i to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %hw10.i303.i, align 4
  %wiphy11.i304.i = getelementptr inbounds %struct.ieee80211_hw, ptr %561, i32 0, i32 1
  %562 = ptrtoint ptr %wiphy11.i304.i to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load ptr, ptr %wiphy11.i304.i, align 8
  %init_name.i.i.i305.i = getelementptr inbounds %struct.wiphy, ptr %563, i32 0, i32 56, i32 3
  %564 = ptrtoint ptr %init_name.i.i.i305.i to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %init_name.i.i.i305.i, align 8
  %tobool.not.i.i.i306.i = icmp eq ptr %565, null
  br i1 %tobool.not.i.i.i306.i, label %if.end.i.i.i309.i, label %do.end9.i307.i.wiphy_name.exit.i316.i_crit_edge

do.end9.i307.i.wiphy_name.exit.i316.i_crit_edge:  ; preds = %do.end9.i307.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wiphy_name.exit.i316.i

if.end.i.i.i309.i:                                ; preds = %do.end9.i307.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i308.i = getelementptr inbounds %struct.wiphy, ptr %563, i32 0, i32 56
  %566 = ptrtoint ptr %dev.i.i308.i to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load ptr, ptr %dev.i.i308.i, align 4
  br label %wiphy_name.exit.i316.i

wiphy_name.exit.i316.i:                           ; preds = %if.end.i.i.i309.i, %do.end9.i307.i.wiphy_name.exit.i316.i_crit_edge
  %retval.0.i.i.i310.i = phi ptr [ %567, %if.end.i.i.i309.i ], [ %565, %do.end9.i307.i.wiphy_name.exit.i316.i_crit_edge ]
  %beacon_enable.i.i = getelementptr inbounds %struct.mib_local, ptr %call7.i.i285.i, i32 0, i32 1
  %568 = ptrtoint ptr %beacon_enable.i.i to i32
  call void @__asan_load1_noabort(i32 %568)
  %569 = load i8, ptr %beacon_enable.i.i, align 2
  %conv.i311.i = zext i8 %569 to i32
  %txautorate_fallback.i.i = getelementptr inbounds %struct.mib_local, ptr %call7.i.i285.i, i32 0, i32 2
  %570 = ptrtoint ptr %txautorate_fallback.i.i to i32
  call void @__asan_load1_noabort(i32 %570)
  %571 = load i8, ptr %txautorate_fallback.i.i, align 1
  %conv13.i312.i = zext i8 %571 to i32
  %ssid_size.i.i = getelementptr inbounds %struct.mib_local, ptr %call7.i.i285.i, i32 0, i32 4
  %572 = ptrtoint ptr %ssid_size.i.i to i32
  call void @__asan_load1_noabort(i32 %572)
  %573 = load i8, ptr %ssid_size.i.i, align 1
  %conv14.i313.i = zext i8 %573 to i32
  %promiscuous_mode.i.i = getelementptr inbounds %struct.mib_local, ptr %call7.i.i285.i, i32 0, i32 5
  %574 = ptrtoint ptr %promiscuous_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %574)
  %575 = load i8, ptr %promiscuous_mode.i.i, align 2
  %conv15.i314.i = zext i8 %575 to i32
  %preamble_type.i.i = getelementptr inbounds %struct.mib_local, ptr %call7.i.i285.i, i32 0, i32 7
  %576 = ptrtoint ptr %preamble_type.i.i to i32
  call void @__asan_load1_noabort(i32 %576)
  %577 = load i8, ptr %preamble_type.i.i, align 1
  %conv16.i315.i = zext i8 %577 to i32
  %call17.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.306, ptr noundef %retval.0.i.i.i310.i, i32 noundef %conv.i311.i, i32 noundef %conv13.i312.i, i32 noundef %conv14.i313.i, i32 noundef %conv15.i314.i, i32 noundef %conv16.i315.i) #12
  br label %exit.i317.i

exit.i317.i:                                      ; preds = %wiphy_name.exit.i316.i, %do.body4.i302.i.exit.i317.i_crit_edge, %do.end.i299.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i285.i) #9
  br label %at76_startup_device.exit

at76_startup_device.exit:                         ; preds = %exit.i317.i, %at76_dump_mib_phy.exit.i.at76_startup_device.exit_crit_edge, %if.end178.i.at76_startup_device.exit_crit_edge, %at76_set_pm_mode.exit.thread.i, %at76_set_autorate_fallback.exit.thread.i, %at76_set_rts.exit.thread.i, %at76_set_frag.exit.thread.i, %at76_set_preamble.exit.thread.i, %do.end132.i
  tail call fastcc void @at76_start_monitor(ptr noundef %1)
  br label %error

error:                                            ; preds = %at76_startup_device.exit, %do.end9
  tail call void @mutex_unlock(ptr noundef %mtx) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at76_mac80211_stop(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = load i32, ptr @at76_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %tobool.not = icmp sgt i32 %2, -1
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.308) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %dwork_hw_scan = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 12
  %call5 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %dwork_hw_scan) #9
  %work_join_bssid = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 11
  %call6 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work_join_bssid) #9
  %work_set_promisc = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 9
  %call7 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work_set_promisc) #9
  %mtx = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #9
  %device_unplugged = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 49
  %3 = ptrtoint ptr %device_unplugged to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %device_unplugged, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool8.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool8.not, label %if.then9, label %do.end4.if.end11_crit_edge

do.end4.if.end11_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then9:                                         ; preds = %do.end4
  %radio_on.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 24
  %4 = ptrtoint ptr %radio_on.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %radio_on.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %if.then9.at76_set_radio.exit_crit_edge, label %if.end.i

if.then9.at76_set_radio.exit_crit_edge:           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_set_radio.exit

if.end.i:                                         ; preds = %if.then9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call.i = tail call fastcc i32 @at76_set_card_command(ptr noundef %7, i8 noundef zeroext 7, ptr noundef null, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %do.end.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %hw.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 53
  %8 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw.i, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wiphy.i, align 8
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %11, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.249, i32 noundef 7, i32 noundef %call.i) #12
  br label %if.end4.i

if.end4.i:                                        ; preds = %do.end.i, %if.end.i.if.end4.i_crit_edge
  %12 = ptrtoint ptr %radio_on.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %radio_on.i, align 4
  br label %at76_set_radio.exit

at76_set_radio.exit:                              ; preds = %if.end4.i, %if.then9.at76_set_radio.exit_crit_edge
  %rx_urb = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %14) #9
  br label %if.end11

if.end11:                                         ; preds = %at76_set_radio.exit, %do.end4.if.end11_crit_edge
  tail call void @mutex_unlock(ptr noundef %mtx) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at76_add_interface(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %vif) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = load i32, ptr @at76_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %tobool.not = icmp sgt i32 %2, -1
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.309) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %mtx = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #9
  %3 = ptrtoint ptr %vif to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cond = icmp eq i32 %4, 2
  br i1 %cond, label %sw.bb, label %do.end4.exit_crit_edge

do.end4.exit_crit_edge:                           ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

sw.bb:                                            ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  %iw_mode = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 19
  %5 = ptrtoint ptr %iw_mode to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %iw_mode, align 4
  br label %exit

exit:                                             ; preds = %sw.bb, %do.end4.exit_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb ], [ -95, %do.end4.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mtx) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at76_remove_interface(ptr nocapture noundef readnone %hw, ptr nocapture noundef readnone %vif) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @at76_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %tobool.not = icmp sgt i32 %0, -1
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.310) #12
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at76_config(ptr nocapture noundef readonly %hw, i32 noundef %changed) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = load i32, ptr @at76_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %tobool.not = icmp sgt i32 %2, -1
  br i1 %tobool.not, label %entry.do.end26_crit_edge, label %do.body5

entry.do.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end26

do.body5:                                         ; preds = %entry
  %chandef = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 7
  %3 = ptrtoint ptr %chandef to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chandef, align 4
  %hw_value = getelementptr inbounds %struct.ieee80211_channel, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %hw_value to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %hw_value, align 2
  %conv = zext i16 %6 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.311, ptr noundef nonnull @.str.312, i32 noundef %conv) #12
  %.pr = load i32, ptr @at76_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr)
  %tobool7.not = icmp sgt i32 %.pr, -1
  br i1 %tobool7.not, label %do.body5.do.end26_crit_edge, label %do.end11

do.body5.do.end26_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end26

do.end11:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.314) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at76_config.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@at76_config, %if.then20)) #9
          to label %do.end26 [label %if.then20], !srcloc !813

if.then20:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #11
  %bssid = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 20
  tail call void @print_hex_dump(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.163, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %bssid, i32 noundef 6, i1 noundef zeroext true) #9
  br label %do.end26

do.end26:                                         ; preds = %if.then20, %do.end11, %do.body5.do.end26_crit_edge, %entry.do.end26_crit_edge
  %mtx = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #9
  %chandef28 = getelementptr inbounds %struct.ieee80211_conf, ptr %hw, i32 0, i32 7
  %7 = ptrtoint ptr %chandef28 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chandef28, align 4
  %hw_value30 = getelementptr inbounds %struct.ieee80211_channel, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %hw_value30 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %hw_value30, align 2
  %conv31 = zext i16 %10 to i32
  %channel = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 18
  %11 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv31, ptr %channel, align 4
  %bssid32 = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 20
  %12 = ptrtoint ptr %bssid32 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bssid32, align 4
  %14 = and i32 %13, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.not.i = icmp eq i32 %14, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %do.end26.if.else_crit_edge

do.end26.if.else_crit_edge:                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

is_valid_ether_addr.exit:                         ; preds = %do.end26
  %add.ptr.i.i = getelementptr %struct.at76_priv, ptr %1, i32 0, i32 20, i32 4
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %16 to i32
  %or.i.i = or i32 %13, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.else_crit_edge, label %if.then35

is_valid_ether_addr.exit.if.else_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then35:                                        ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @at76_join(ptr noundef %1)
  br label %if.end38

if.else:                                          ; preds = %is_valid_ether_addr.exit.if.else_crit_edge, %do.end26.if.else_crit_edge
  tail call fastcc void @at76_start_monitor(ptr noundef %1)
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then35
  tail call void @mutex_unlock(ptr noundef %mtx) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at76_bss_info_changed(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %vif, ptr nocapture noundef readonly %conf, i32 noundef %changed) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = load i32, ptr @at76_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %tobool.not = icmp sgt i32 %2, -1
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.326, ptr noundef nonnull @.str.327) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %and5 = and i32 %changed, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %do.end4.cleanup_crit_edge, label %do.body9

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body9:                                         ; preds = %do.end4
  %3 = load i32, ptr @at76_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool11.not = icmp sgt i32 %3, -1
  br i1 %tobool11.not, label %do.body9.do.end30_crit_edge, label %do.end15

do.body9.do.end30_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30

do.end15:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.314) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at76_bss_info_changed.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@at76_bss_info_changed, %if.then24)) #9
          to label %do.end30 [label %if.then24], !srcloc !813

if.then24:                                        ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %conf, align 8
  tail call void @print_hex_dump(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.163, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %5, i32 noundef 6, i1 noundef zeroext true) #9
  br label %do.end30

do.end30:                                         ; preds = %if.then24, %do.end15, %do.body9.do.end30_crit_edge
  %mtx = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #9
  %bssid31 = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %conf, align 8
  %8 = call ptr @memcpy(ptr %bssid31, ptr %7, i32 6)
  %9 = ptrtoint ptr %bssid31 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bssid31, align 4
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %do.end30.if.end38_crit_edge

do.end30.if.end38_crit_edge:                      ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

is_valid_ether_addr.exit:                         ; preds = %do.end30
  %add.ptr.i.i = getelementptr %struct.at76_priv, ptr %1, i32 0, i32 20, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %13 to i32
  %or.i.i = or i32 %10, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.end38_crit_edge, label %if.then36

is_valid_ether_addr.exit.if.end38_crit_edge:      ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then36:                                        ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @at76_join(ptr noundef %1)
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %is_valid_ether_addr.exit.if.end38_crit_edge, %do.end30.if.end38_crit_edge
  tail call void @mutex_unlock(ptr noundef %mtx) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %do.end4.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at76_configure_filter(ptr noundef %hw, i32 noundef %changed_flags, ptr nocapture noundef %total_flags, i64 noundef %multicast) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = load i32, ptr @at76_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %tobool.not = icmp sgt i32 %2, -1
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %total_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %total_flags, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.330, ptr noundef nonnull @.str.331, i32 noundef %changed_flags, i32 noundef %4) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %5 = ptrtoint ptr %total_flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %total_flags, align 4
  %device_unplugged = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 49
  %6 = ptrtoint ptr %device_unplugged to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %device_unplugged, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool6.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool6.not, label %land.lhs.true14, label %do.end4.cleanup_crit_edge

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true14:                                  ; preds = %do.end4
  %promisc15 = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 25
  %7 = ptrtoint ptr %promisc15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %promisc15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool16.not = icmp eq i32 %8, 0
  br i1 %tobool16.not, label %land.lhs.true14.cleanup_crit_edge, label %if.then17

land.lhs.true14.cleanup_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then17:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %promisc15 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %promisc15, align 4
  %work_set_promisc = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 9
  tail call void @ieee80211_queue_work(ptr noundef %hw, ptr noundef %work_set_promisc) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %land.lhs.true14.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at76_set_key(ptr nocapture noundef readonly %hw, i32 noundef %cmd, ptr nocapture noundef readnone %vif, ptr nocapture noundef readnone %sta, ptr nocapture noundef %key) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = load i32, ptr @at76_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %tobool.not = icmp sgt i32 %2, -1
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %cipher = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 1
  %3 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cipher, align 8
  %keyidx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 5
  %5 = ptrtoint ptr %keyidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %keyidx, align 1
  %conv = sext i8 %6 to i32
  %keylen = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 7
  %7 = ptrtoint ptr %keylen to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %keylen, align 2
  %conv3 = zext i8 %8 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.332, ptr noundef nonnull @.str.333, i32 noundef %cmd, i32 noundef %4, i32 noundef %conv, i32 noundef %conv3) #12
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %cipher6 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 1
  %9 = ptrtoint ptr %cipher6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cipher6, align 8
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.440)
  switch i32 %10, label %do.end5.cleanup_crit_edge [
    i32 1027073, label %do.end5.if.end12_crit_edge
    i32 1027077, label %do.end5.if.end12_crit_edge72
  ]

do.end5.if.end12_crit_edge72:                     ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

do.end5.if.end12_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %do.end5.if.end12_crit_edge, %do.end5.if.end12_crit_edge72
  %keyidx13 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 5
  %12 = ptrtoint ptr %keyidx13 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %keyidx13, align 1
  %hw_key_idx = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 4
  %14 = ptrtoint ptr %hw_key_idx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %hw_key_idx, align 2
  %mtx = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmd)
  %cond = icmp eq i32 %cmd, 0
  %15 = ptrtoint ptr %keyidx13 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %keyidx13, align 1
  %idxprom = sext i8 %16 to i32
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.at76_priv, ptr %1, i32 0, i32 16, i32 %idxprom
  %key15 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 8
  %keylen17 = getelementptr inbounds %struct.ieee80211_key_conf, ptr %key, i32 0, i32 7
  %17 = ptrtoint ptr %keylen17 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %keylen17, align 2
  %conv18 = zext i8 %18 to i32
  %19 = call ptr @memcpy(ptr %arrayidx, ptr %key15, i32 %conv18)
  %20 = load i8, ptr %keylen17, align 2
  %21 = ptrtoint ptr %keyidx13 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %keyidx13, align 1
  %idxprom21 = sext i8 %22 to i32
  %arrayidx22 = getelementptr %struct.at76_priv, ptr %1, i32 0, i32 17, i32 %idxprom21
  %23 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %20, ptr %arrayidx22, align 1
  %24 = load i8, ptr %keyidx13, align 1
  %conv24 = sext i8 %24 to i32
  %wep_key_id = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 15
  %25 = ptrtoint ptr %wep_key_id to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv24, ptr %wep_key_id, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx29 = getelementptr %struct.at76_priv, ptr %1, i32 0, i32 17, i32 %idxprom
  %26 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %arrayidx29, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %wep_enabled = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 14
  %27 = ptrtoint ptr %wep_enabled to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %wep_enabled, align 4
  %arrayidx33 = getelementptr %struct.at76_priv, ptr %1, i32 0, i32 17, i32 0
  %28 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx33, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp35.not = icmp ne i8 %29, 0
  %spec.store.select = zext i1 %cmp35.not to i32
  %30 = ptrtoint ptr %wep_enabled to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %spec.store.select, ptr %wep_enabled, align 4
  %arrayidx33.1 = getelementptr %struct.at76_priv, ptr %1, i32 0, i32 17, i32 1
  %31 = ptrtoint ptr %arrayidx33.1 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx33.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp35.not.1 = icmp eq i8 %32, 0
  %spec.store.select69 = select i1 %cmp35.not.1, i32 %spec.store.select, i32 1
  %33 = ptrtoint ptr %wep_enabled to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %spec.store.select69, ptr %wep_enabled, align 4
  %arrayidx33.2 = getelementptr %struct.at76_priv, ptr %1, i32 0, i32 17, i32 2
  %34 = ptrtoint ptr %arrayidx33.2 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx33.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp35.not.2 = icmp eq i8 %35, 0
  %spec.store.select70 = select i1 %cmp35.not.2, i32 %spec.store.select69, i32 1
  %36 = ptrtoint ptr %wep_enabled to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %spec.store.select70, ptr %wep_enabled, align 4
  %arrayidx33.3 = getelementptr %struct.at76_priv, ptr %1, i32 0, i32 17, i32 3
  %37 = ptrtoint ptr %arrayidx33.3 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx33.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp35.not.3 = icmp eq i8 %38, 0
  %spec.store.select71 = select i1 %cmp35.not.3, i32 %spec.store.select70, i32 1
  %39 = ptrtoint ptr %wep_enabled to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %spec.store.select71, ptr %wep_enabled, align 4
  %mib_buf.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 50
  %data.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 50, i32 4
  %40 = ptrtoint ptr %mib_buf.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 6, ptr %mib_buf.i, align 1
  %size.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 50, i32 1
  %41 = ptrtoint ptr %size.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 65, ptr %size.i, align 1
  %index.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 50, i32 2
  %42 = ptrtoint ptr %index.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %index.i, align 1
  %43 = call ptr @memset(ptr %data.i, i32 0, i32 65)
  %44 = load i32, ptr %wep_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i = icmp eq i32 %44, 0
  br i1 %tobool.not.i, label %sw.epilog.if.end10.i_crit_edge, label %if.then.i

sw.epilog.if.end10.i_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %wep_key_id.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 15
  %45 = ptrtoint ptr %wep_key_id.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %wep_key_id.i, align 4
  %arrayidx.i = getelementptr %struct.at76_priv, ptr %1, i32 0, i32 17, i32 %46
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %48)
  %cmp.i = icmp ugt i8 %48, 5
  %spec.select.i = select i1 %cmp.i, i8 2, i8 1
  %49 = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 50, i32 4, i32 1, i32 62
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %spec.select.i, ptr %49, align 1
  %exclude_unencrypted.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 50, i32 4, i32 1, i32 1
  %51 = ptrtoint ptr %exclude_unencrypted.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %exclude_unencrypted.i, align 1
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then.i, %sw.epilog.if.end10.i_crit_edge
  %conv12.i = trunc i32 %44 to i8
  %52 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv12.i, ptr %data.i, align 1
  %wep_key_id13.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 15
  %53 = ptrtoint ptr %wep_key_id13.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %wep_key_id13.i, align 4
  %conv14.i = trunc i32 %54 to i8
  %wep_default_key_id.i = getelementptr inbounds %struct.mib_mac_wep, ptr %data.i, i32 0, i32 1
  %55 = ptrtoint ptr %wep_default_key_id.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv14.i, ptr %wep_default_key_id.i, align 1
  %wep_default_keyvalue.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 50, i32 4, i32 1, i32 10
  %wep_keys.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 16
  %56 = call ptr @memcpy(ptr %wep_default_keyvalue.i, ptr %wep_keys.i, i32 52)
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  %59 = ptrtoint ptr %size.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %size.i, align 1
  %conv.i.i = zext i8 %60 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 4
  %call.i.i = tail call fastcc i32 @at76_set_card_command(ptr noundef %58, i8 noundef zeroext 1, ptr noundef %mib_buf.i, i32 noundef %add.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end10.i.do.end.i_crit_edge, label %if.end.i.i

if.end10.i.do.end.i_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.end.i.i:                                       ; preds = %if.end10.i
  %call2.i.i = tail call fastcc i32 @at76_wait_completion(ptr noundef %1, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i.i)
  %cmp3.not.i.i = icmp eq i32 %call2.i.i, 1
  br i1 %cmp3.not.i.i, label %if.end.i.i.at76_set_wep.exit_crit_edge, label %do.end.i.i

if.end.i.i.at76_set_wep.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_set_wep.exit

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %hw.i.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 53
  %61 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hw.i.i, align 4
  %wiphy.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %wiphy.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %wiphy.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.wiphy, ptr %64, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.253, i32 noundef %call2.i.i) #12
  br label %do.end.i

do.end.i:                                         ; preds = %do.end.i.i, %if.end10.i.do.end.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -5, %do.end.i.i ], [ %call.i.i, %if.end10.i.do.end.i_crit_edge ]
  %hw.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 53
  %65 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hw.i, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %wiphy.i, align 8
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %68, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.334, i32 noundef %retval.0.i.ph.i) #12
  br label %at76_set_wep.exit

at76_set_wep.exit:                                ; preds = %do.end.i, %if.end.i.i.at76_set_wep.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mtx) #9
  br label %cleanup

cleanup:                                          ; preds = %at76_set_wep.exit, %do.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %at76_set_wep.exit ], [ -95, %do.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at76_hw_scan(ptr noundef %hw, ptr nocapture noundef readnone %vif, ptr nocapture noundef readonly %hw_req) #4 align 64 {
entry:
  %scan = alloca %struct.at76_req_scan, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %req1 = getelementptr inbounds %struct.ieee80211_scan_request, ptr %hw_req, i32 0, i32 1
  %priv2 = getelementptr inbounds %struct.ieee80211_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv2, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %scan) #9
  %2 = load i32, ptr @at76_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %tobool.not = icmp sgt i32 %2, -1
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.326, ptr noundef nonnull @.str.336) #12
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %device_unplugged = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 49
  %3 = ptrtoint ptr %device_unplugged to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %device_unplugged, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool6.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool6.not, label %if.end8, label %do.end5.cleanup_crit_edge

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %do.end5
  %mtx = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mtx, i32 noundef 0) #9
  tail call void @ieee80211_stop_queues(ptr noundef %hw) #9
  %4 = getelementptr inbounds i8, ptr %scan, i32 6
  %5 = call ptr @memset(ptr %4, i32 0, i32 41)
  %6 = call ptr @memset(ptr %scan, i32 255, i32 6)
  %n_ssids = getelementptr inbounds %struct.ieee80211_scan_request, ptr %hw_req, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %n_ssids to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n_ssids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool9.not = icmp eq i32 %8, 0
  br i1 %tobool9.not, label %if.end16.thread, label %if.end16

if.end16.thread:                                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %scan_type15 = getelementptr inbounds %struct.at76_req_scan, ptr %scan, i32 0, i32 2
  %9 = ptrtoint ptr %scan_type15 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %scan_type15, align 1
  br label %if.end21

if.end16:                                         ; preds = %if.end8
  %10 = ptrtoint ptr %req1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %req1, align 8
  %ssid_len = getelementptr inbounds %struct.cfg80211_ssid, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %ssid_len to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ssid_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool17.not = icmp eq i8 %13, 0
  br i1 %tobool17.not, label %if.end16.if.end21_crit_edge, label %if.then18

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %13 to i32
  %essid = getelementptr inbounds %struct.at76_req_scan, ptr %scan, i32 0, i32 1
  %14 = call ptr @memcpy(ptr %essid, ptr %11, i32 %conv)
  %essid_size = getelementptr inbounds %struct.at76_req_scan, ptr %scan, i32 0, i32 7
  %15 = ptrtoint ptr %essid_size to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %13, ptr %essid_size, align 1
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end16.if.end21_crit_edge, %if.end16.thread
  %scan_min_time = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 32
  %16 = ptrtoint ptr %scan_min_time to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %scan_min_time, align 4
  %conv22 = trunc i32 %17 to i16
  %18 = tail call i16 @llvm.bswap.i16(i16 %conv22)
  %min_channel_time = getelementptr inbounds %struct.at76_req_scan, ptr %scan, i32 0, i32 5
  %19 = ptrtoint ptr %min_channel_time to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 %18, ptr %min_channel_time, align 1
  %scan_max_time = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 33
  %20 = ptrtoint ptr %scan_max_time to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %scan_max_time, align 4
  %conv23 = trunc i32 %21 to i16
  %22 = tail call i16 @llvm.bswap.i16(i16 %conv23)
  %max_channel_time = getelementptr inbounds %struct.at76_req_scan, ptr %scan, i32 0, i32 6
  %23 = ptrtoint ptr %max_channel_time to i32
  call void @__asan_storeN_noabort(i32 %23, i32 2)
  store i16 %22, ptr %max_channel_time, align 1
  %conv25 = mul i16 %conv22, 1000
  %24 = tail call i16 @llvm.bswap.i16(i16 %conv25)
  %probe_delay = getelementptr inbounds %struct.at76_req_scan, ptr %scan, i32 0, i32 4
  %25 = ptrtoint ptr %probe_delay to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 %24, ptr %probe_delay, align 1
  %international_scan = getelementptr inbounds %struct.at76_req_scan, ptr %scan, i32 0, i32 8
  %26 = ptrtoint ptr %international_scan to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %international_scan, align 1
  %27 = load i32, ptr @at76_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %tobool28.not = icmp sgt i32 %27, -1
  br i1 %tobool28.not, label %if.end21.do.end37_crit_edge, label %do.end32

if.end21.do.end37_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end37

do.end32:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.338, ptr noundef nonnull @.str.336) #12
  br label %do.end37

do.end37:                                         ; preds = %do.end32, %if.end21.do.end37_crit_edge
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %call38 = call fastcc i32 @at76_set_card_command(ptr noundef %29, i8 noundef zeroext 3, ptr noundef nonnull %scan, i32 noundef 48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp = icmp slt i32 %call38, 0
  br i1 %cmp, label %do.end43, label %if.end45

do.end43:                                         ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #11
  %hw44 = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 53
  %30 = ptrtoint ptr %hw44 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw44, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %33, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.341, i32 noundef %call38) #12
  br label %exit

if.end45:                                         ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #11
  %scanning = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 36
  %34 = ptrtoint ptr %scanning to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %scanning, align 4
  %hw46 = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 53
  %35 = ptrtoint ptr %hw46 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw46, align 4
  %dwork_hw_scan = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 12
  tail call void @ieee80211_queue_delayed_work(ptr noundef %36, ptr noundef %dwork_hw_scan, i32 noundef 25) #9
  br label %exit

exit:                                             ; preds = %if.end45, %do.end43
  tail call void @mutex_unlock(ptr noundef %mtx) #9
  br label %cleanup

cleanup:                                          ; preds = %exit, %do.end5.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %scan) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_stop_queues(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at76_mac80211_tx_callback(ptr nocapture noundef readonly %urb) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %tx_skb = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_skb, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3
  %4 = load i32, ptr @at76_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %tobool.not = icmp sgt i32 %4, -1
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.172) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.441)
  switch i32 %6, label %do.body6 [
    i32 0, label %sw.bb
    i32 -2, label %do.end4.sw.epilog_crit_edge
    i32 -104, label %do.end4.sw.epilog_crit_edge29
  ]

do.end4.sw.epilog_crit_edge29:                    ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end4.sw.epilog_crit_edge:                      ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cb.i, align 8
  %or = or i32 %9, 512
  store i32 %or, ptr %cb.i, align 8
  br label %sw.epilog

do.body6:                                         ; preds = %do.end4
  %10 = load i32, ptr @at76_debug, align 4
  %and7 = and i32 %10, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %do.body6.sw.epilog_crit_edge, label %do.end12

do.body6.sw.epilog_crit_edge:                     ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end12:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.174, ptr noundef nonnull @.str.172, i32 noundef %6) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end12, %do.body6.sw.epilog_crit_edge, %sw.bb, %do.end4.sw.epilog_crit_edge, %do.end4.sw.epilog_crit_edge29
  %11 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 40)
  %hw = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 53
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 4
  %15 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tx_skb, align 4
  tail call void @ieee80211_tx_status_irqsafe(ptr noundef %14, ptr noundef %16) #9
  %17 = ptrtoint ptr %tx_skb to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %tx_skb, align 4
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 4
  tail call void @ieee80211_wake_queues(ptr noundef %19) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at76_ledtrig_tx_timerfunc(ptr nocapture noundef readnone %unused) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @at76_ledtrig_tx_timerfunc.tx_lastactivity, align 4
  %1 = load i32, ptr @tx_activity, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %1)
  %cmp.not = icmp eq i32 %0, %1
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  store i32 %1, ptr @at76_ledtrig_tx_timerfunc.tx_lastactivity, align 4
  %2 = load ptr, ptr @ledtrig_tx, align 4
  tail call void @led_trigger_event(ptr noundef %2, i32 noundef 255) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %3, 25
  %call = tail call i32 @mod_timer(ptr noundef nonnull @ledtrig_tx_timer, i32 noundef %add) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = load ptr, ptr @ledtrig_tx, align 4
  tail call void @led_trigger_event(ptr noundef %4, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_event(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_tx_status_irqsafe(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_wake_queues(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @at76_submit_rx_urb(ptr noundef %priv) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_skb = getelementptr inbounds %struct.at76_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_skb, align 4
  %rx_urb = getelementptr inbounds %struct.at76_priv, ptr %priv, i32 0, i32 5
  %2 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_urb, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %hw = getelementptr inbounds %struct.at76_priv, ptr %priv, i32 0, i32 53
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %7, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.181) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2364, i32 noundef 2592) #9
  %tobool3.not = icmp eq ptr %call.i.i, null
  br i1 %tobool3.not, label %exit.thread, label %if.end11

exit.thread:                                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %hw8 = getelementptr inbounds %struct.at76_priv, ptr %priv, i32 0, i32 53
  %8 = ptrtoint ptr %hw8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw8, align 4
  %wiphy9 = getelementptr inbounds %struct.ieee80211_hw, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %wiphy9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wiphy9, align 8
  %dev10 = getelementptr inbounds %struct.wiphy, ptr %11, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.183) #12
  br label %do.end48

if.end11:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i.i, ptr %rx_skb, align 4
  br label %if.end15

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %15 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %14 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %16 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %call14 = tail call ptr @skb_push(ptr noundef nonnull %1, i32 noundef %sub.ptr.sub.i) #9
  tail call void @skb_trim(ptr noundef nonnull %1, i32 noundef 0) #9
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.end11
  %skb.0 = phi ptr [ %1, %if.else ], [ %call.i.i, %if.end11 ]
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 7
  %17 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i.not.i = icmp eq i32 %18, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %if.end15.skb_tailroom.exit_crit_edge

if.end15.skb_tailroom.exit_crit_edge:             ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 17
  %19 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 16
  %21 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i79 = ptrtoint ptr %20 to i32
  %sub.ptr.rhs.cast.i80 = ptrtoint ptr %22 to i32
  %sub.ptr.sub.i81 = sub i32 %sub.ptr.lhs.cast.i79, %sub.ptr.rhs.cast.i80
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %if.end15.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i81, %cond.false.i ], [ 0, %if.end15.skb_tailroom.exit_crit_edge ]
  %23 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rx_urb, align 4
  %25 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv, align 4
  %rx_pipe = getelementptr inbounds %struct.at76_priv, ptr %priv, i32 0, i32 7
  %27 = ptrtoint ptr %rx_pipe to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx_pipe, align 4
  %call18 = tail call ptr @skb_put(ptr noundef nonnull %skb.0, i32 noundef %cond.i) #9
  %dev1.i = getelementptr inbounds %struct.urb, ptr %24, i32 0, i32 8
  %29 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %24, i32 0, i32 10
  %30 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %28, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %24, i32 0, i32 14
  %31 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call18, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %24, i32 0, i32 19
  %32 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %cond.i, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %24, i32 0, i32 28
  %33 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @at76_rx_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %24, i32 0, i32 27
  %34 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %priv, ptr %context4.i, align 4
  %35 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rx_urb, align 4
  %call20 = tail call i32 @usb_submit_urb(ptr noundef %36, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp = icmp slt i32 %call20, 0
  br i1 %cmp, label %if.then21, label %skb_tailroom.exit.cleanup_crit_edge

skb_tailroom.exit.cleanup_crit_edge:              ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then21:                                        ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call20)
  %cmp22 = icmp eq i32 %call20, -19
  br i1 %cmp22, label %do.body24, label %exit

do.body24:                                        ; preds = %if.then21
  %37 = load i32, ptr @at76_debug, align 4
  %and = and i32 %37, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %do.body24.cleanup_crit_edge, label %do.end29

do.body24.cleanup_crit_edge:                      ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end29:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #11
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.186) #12
  br label %cleanup

exit:                                             ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  %hw38 = getelementptr inbounds %struct.at76_priv, ptr %priv, i32 0, i32 53
  %38 = ptrtoint ptr %hw38 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw38, align 4
  %wiphy39 = getelementptr inbounds %struct.ieee80211_hw, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %wiphy39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %wiphy39, align 8
  %dev40 = getelementptr inbounds %struct.wiphy, ptr %41, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev40, ptr noundef nonnull @.str.189, i32 noundef %call20) #12
  br label %do.end48

do.end48:                                         ; preds = %exit, %exit.thread
  %ret.088 = phi i32 [ -12, %exit.thread ], [ %call20, %exit ]
  %hw49 = getelementptr inbounds %struct.at76_priv, ptr %priv, i32 0, i32 53
  %42 = ptrtoint ptr %hw49 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw49, align 4
  %wiphy50 = getelementptr inbounds %struct.ieee80211_hw, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %wiphy50 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %wiphy50, align 8
  %dev51 = getelementptr inbounds %struct.wiphy, ptr %45, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev51, ptr noundef nonnull @.str.192) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end48, %do.end29, %do.body24.cleanup_crit_edge, %skb_tailroom.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -14, %do.end ], [ %ret.088, %do.end48 ], [ %call20, %skb_tailroom.exit.cleanup_crit_edge ], [ -19, %do.body24.cleanup_crit_edge ], [ -19, %do.end29 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @at76_start_monitor(ptr nocapture noundef readonly %priv) unnamed_addr #4 align 64 {
entry:
  %scan = alloca %struct.at76_req_scan, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %scan) #9
  %0 = getelementptr inbounds i8, ptr %scan, i32 6
  %1 = call ptr @memset(ptr %0, i32 0, i32 41)
  %2 = call ptr @memset(ptr %scan, i32 255, i32 6)
  %channel = getelementptr inbounds %struct.at76_priv, ptr %priv, i32 0, i32 18
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel, align 4
  %conv = trunc i32 %4 to i8
  %channel1 = getelementptr inbounds %struct.at76_req_scan, ptr %scan, i32 0, i32 3
  %5 = ptrtoint ptr %channel1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %channel1, align 1
  %scan_type = getelementptr inbounds %struct.at76_req_scan, ptr %scan, i32 0, i32 2
  %6 = ptrtoint ptr %scan_type to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %scan_type, align 1
  %international_scan = getelementptr inbounds %struct.at76_req_scan, ptr %scan, i32 0, i32 8
  %7 = ptrtoint ptr %international_scan to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %international_scan, align 1
  %scan_min_time = getelementptr inbounds %struct.at76_priv, ptr %priv, i32 0, i32 32
  %8 = ptrtoint ptr %scan_min_time to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scan_min_time, align 4
  %conv2 = trunc i32 %9 to i16
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv2)
  %min_channel_time = getelementptr inbounds %struct.at76_req_scan, ptr %scan, i32 0, i32 5
  %11 = ptrtoint ptr %min_channel_time to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %10, ptr %min_channel_time, align 1
  %scan_max_time = getelementptr inbounds %struct.at76_priv, ptr %priv, i32 0, i32 33
  %12 = ptrtoint ptr %scan_max_time to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %scan_max_time, align 4
  %conv3 = trunc i32 %13 to i16
  %14 = tail call i16 @llvm.bswap.i16(i16 %conv3)
  %max_channel_time = getelementptr inbounds %struct.at76_req_scan, ptr %scan, i32 0, i32 6
  %15 = ptrtoint ptr %max_channel_time to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %14, ptr %max_channel_time, align 1
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 4
  %call = call fastcc i32 @at76_set_card_command(ptr noundef %17, i8 noundef zeroext 3, ptr noundef nonnull %scan, i32 noundef 48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3072, i32 noundef 40) #13
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %19, align 8
  %shl.i.i = shl i32 %22, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %19, i32 noundef %or2.i, i8 noundef zeroext 34, i8 noundef zeroext -63, i16 noundef zeroext 3, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 40, i32 noundef 5000) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %if.end

if.end:                                           ; preds = %if.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %scan) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at76_rx_callback(ptr nocapture noundef readonly %urb) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %state.i = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 13, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.tasklet_schedule.exit_crit_edge

entry.tasklet_schedule.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rx_tasklet = getelementptr inbounds %struct.at76_priv, ptr %1, i32 0, i32 13
  tail call void @__tasklet_schedule(ptr noundef %rx_tasklet) #9
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %entry.tasklet_schedule.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @at76_set_card_command(ptr noundef %udev, i8 noundef zeroext %cmd, ptr nocapture noundef readonly %buf, i32 noundef %buf_size) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %buf_size, 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #14
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call9.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %cmd, ptr %call9.i, align 128
  %reserved = getelementptr inbounds %struct.at76_command, ptr %call9.i, i32 0, i32 1
  %1 = ptrtoint ptr %reserved to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %reserved, align 1
  %conv = trunc i32 %buf_size to i16
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %size = getelementptr inbounds %struct.at76_command, ptr %call9.i, i32 0, i32 2
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %size, align 2
  %data = getelementptr inbounds %struct.at76_command, ptr %call9.i, i32 0, i32 3
  %4 = call ptr @memcpy(ptr %data, ptr %buf, i32 %buf_size)
  %5 = load i32, ptr @at76_debug, align 4
  %and = and i32 %5, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.do.end21_crit_edge, label %do.end

if.end.do.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21

do.end:                                           ; preds = %if.end
  %switch.tableidx = add i8 %cmd, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %switch.tableidx)
  %6 = icmp ult i8 %switch.tableidx, 11
  br i1 %6, label %switch.lookup, label %do.end.at76_get_cmd_string.exit_crit_edge

do.end.at76_get_cmd_string.exit_crit_edge:        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_get_cmd_string.exit

switch.lookup:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [11 x ptr], ptr @switch.table.at76_set_card_command, i32 0, i32 %7
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %at76_get_cmd_string.exit

at76_get_cmd_string.exit:                         ; preds = %switch.lookup, %do.end.at76_get_cmd_string.exit_crit_edge
  %retval.0.i41 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.231, %do.end.at76_get_cmd_string.exit_crit_edge ]
  %conv6 = zext i8 %cmd to i32
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.221, ptr noundef nonnull %retval.0.i41, i32 noundef %conv6) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at76_set_card_command.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@at76_set_card_command, %if.then14)) #9
          to label %do.end21 [label %if.then14], !srcloc !813

if.then14:                                        ; preds = %at76_get_cmd_string.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @print_hex_dump(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.163, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %call9.i, i32 noundef %add, i1 noundef zeroext true) #9
  br label %do.end21

do.end21:                                         ; preds = %if.then14, %at76_get_cmd_string.exit, %if.end.do.end21_crit_edge
  %9 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %udev, align 8
  %shl.i = shl i32 %10, 8
  %or = or i32 %shl.i, -2147483648
  %conv24 = trunc i32 %add to i16
  %call25 = tail call i32 @usb_control_msg(ptr noundef %udev, i32 noundef %or, i8 noundef zeroext 14, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call9.i, i16 noundef zeroext %conv24, i32 noundef 5000) #9
  tail call void @kfree(ptr noundef nonnull %call9.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25, %do.end21 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @at76_wait_completion(ptr nocapture noundef readonly %priv, i32 noundef %cmd) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 500
  %1 = trunc i32 %cmd to i16
  %conv.i = and i16 %1, 255
  %hw8 = getelementptr inbounds %struct.at76_priv, ptr %priv, i32 0, i32 53
  br label %do.body

do.body:                                          ; preds = %if.end22.do.body_crit_edge, %entry
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3072, i32 noundef 40) #13
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %do.body.do.end_crit_edge, label %if.end.i

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.i:                                         ; preds = %do.body
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %6, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or2.i, i8 noundef zeroext 34, i8 noundef zeroext -63, i16 noundef zeroext %conv.i, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 40, i32 noundef 5000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3.i)
  %cmp.i = icmp sgt i32 %call3.i, -1
  br i1 %cmp.i, label %at76_get_cmd_status.exit, label %at76_get_cmd_status.exit.thread51

at76_get_cmd_status.exit.thread51:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %do.end

at76_get_cmd_status.exit:                         ; preds = %if.end.i
  %arrayidx.i = getelementptr i8, ptr %call7.i.i, i32 5
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  %conv6.i = zext i8 %8 to i32
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  %9 = load i32, ptr @at76_debug, align 4
  %and = and i32 %9, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %at76_get_cmd_status.exit.do.end16_crit_edge, label %do.end7

at76_get_cmd_status.exit.do.end16_crit_edge:      ; preds = %at76_get_cmd_status.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

do.end:                                           ; preds = %at76_get_cmd_status.exit.thread51, %do.body.do.end_crit_edge
  %retval.0.i50 = phi i32 [ %call3.i, %at76_get_cmd_status.exit.thread51 ], [ -12, %do.body.do.end_crit_edge ]
  %10 = ptrtoint ptr %hw8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw8, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %13, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.232, i32 noundef %retval.0.i50) #12
  br label %do.end35

do.end7:                                          ; preds = %at76_get_cmd_status.exit
  %14 = ptrtoint ptr %hw8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw8, align 4
  %wiphy9 = getelementptr inbounds %struct.ieee80211_hw, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %wiphy9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wiphy9, align 8
  %init_name.i.i = getelementptr inbounds %struct.wiphy, ptr %17, i32 0, i32 56, i32 3
  %18 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end7.wiphy_name.exit_crit_edge

do.end7.wiphy_name.exit_crit_edge:                ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %wiphy_name.exit

if.end.i.i:                                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %17, i32 0, i32 56
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  br label %wiphy_name.exit

wiphy_name.exit:                                  ; preds = %if.end.i.i, %do.end7.wiphy_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %21, %if.end.i.i ], [ %19, %do.end7.wiphy_name.exit_crit_edge ]
  %22 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.442)
  switch i8 %8, label %sw.epilog.i [
    i8 0, label %wiphy_name.exit.at76_get_cmd_status_string.exit_crit_edge
    i8 1, label %sw.bb1.i
    i8 2, label %sw.bb2.i
    i8 3, label %sw.bb3.i
    i8 4, label %sw.bb4.i
    i8 7, label %sw.bb5.i
    i8 8, label %sw.bb6.i
    i8 -1, label %sw.bb7.i
    i8 -16, label %sw.bb8.i
  ]

wiphy_name.exit.at76_get_cmd_status_string.exit_crit_edge: ; preds = %wiphy_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_get_cmd_status_string.exit

sw.bb1.i:                                         ; preds = %wiphy_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_get_cmd_status_string.exit

sw.bb2.i:                                         ; preds = %wiphy_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_get_cmd_status_string.exit

sw.bb3.i:                                         ; preds = %wiphy_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_get_cmd_status_string.exit

sw.bb4.i:                                         ; preds = %wiphy_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_get_cmd_status_string.exit

sw.bb5.i:                                         ; preds = %wiphy_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_get_cmd_status_string.exit

sw.bb6.i:                                         ; preds = %wiphy_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_get_cmd_status_string.exit

sw.bb7.i:                                         ; preds = %wiphy_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_get_cmd_status_string.exit

sw.bb8.i:                                         ; preds = %wiphy_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_get_cmd_status_string.exit

sw.epilog.i:                                      ; preds = %wiphy_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %at76_get_cmd_status_string.exit

at76_get_cmd_status_string.exit:                  ; preds = %sw.epilog.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %wiphy_name.exit.at76_get_cmd_status_string.exit_crit_edge
  %retval.0.i47 = phi ptr [ @.str.231, %sw.epilog.i ], [ @.str.248, %sw.bb8.i ], [ @.str.247, %sw.bb7.i ], [ @.str.246, %sw.bb6.i ], [ @.str.245, %sw.bb5.i ], [ @.str.244, %sw.bb4.i ], [ @.str.243, %sw.bb3.i ], [ @.str.242, %sw.bb2.i ], [ @.str.241, %sw.bb1.i ], [ @.str.240, %wiphy_name.exit.at76_get_cmd_status_string.exit_crit_edge ]
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.235, ptr noundef %retval.0.i.i, i32 noundef %cmd, i32 noundef %conv6.i, ptr noundef nonnull %retval.0.i47) #12
  br label %do.end16

do.end16:                                         ; preds = %at76_get_cmd_status_string.exit, %at76_get_cmd_status.exit.do.end16_crit_edge
  %23 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.443)
  switch i8 %8, label %do.end35.loopexit [
    i8 8, label %do.end16.if.end22_crit_edge
    i8 0, label %do.end16.if.end22_crit_edge91
  ]

do.end16.if.end22_crit_edge91:                    ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

do.end16.if.end22_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.end22:                                         ; preds = %do.end16.if.end22_crit_edge, %do.end16.if.end22_crit_edge91
  %call23 = tail call i32 @schedule_timeout_interruptible(i32 noundef 10) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %24
  %cmp24 = icmp slt i32 %sub, 0
  br i1 %cmp24, label %do.end29, label %if.end22.do.body_crit_edge

if.end22.do.body_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %hw8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw8, align 4
  %wiphy31 = getelementptr inbounds %struct.ieee80211_hw, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %wiphy31 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wiphy31, align 8
  %dev32 = getelementptr inbounds %struct.wiphy, ptr %28, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32, ptr noundef nonnull @.str.238, i32 noundef %cmd) #12
  br label %do.end35

do.end35.loopexit:                                ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i.le = zext i8 %8 to i32
  br label %do.end35

do.end35:                                         ; preds = %do.end35.loopexit, %do.end29, %do.end
  %status.0 = phi i32 [ %retval.0.i50, %do.end ], [ -110, %do.end29 ], [ %conv6.i.le, %do.end35.loopexit ]
  ret i32 %status.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @at76_join(ptr nocapture noundef %priv) unnamed_addr #4 align 64 {
entry:
  %join = alloca %struct.at76_req_join, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %join) #9
  %0 = getelementptr inbounds i8, ptr %join, i32 6
  %1 = call ptr @memset(ptr %0, i32 0, i32 38)
  %essid = getelementptr inbounds %struct.at76_req_join, ptr %join, i32 0, i32 1
  %essid1 = getelementptr inbounds %struct.at76_priv, ptr %priv, i32 0, i32 21
  %essid_size = getelementptr inbounds %struct.at76_priv, ptr %priv, i32 0, i32 23
  %2 = ptrtoint ptr %essid_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %essid_size, align 4
  %4 = call ptr @memcpy(ptr %essid, ptr %essid1, i32 %3)
  %conv = trunc i32 %3 to i8
  %essid_size4 = getelementptr inbounds %struct.at76_req_join, ptr %join, i32 0, i32 5
  %5 = ptrtoint ptr %essid_size4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %essid_size4, align 1
  %bssid6 = getelementptr inbounds %struct.at76_priv, ptr %priv, i32 0, i32 20
  %6 = call ptr @memcpy(ptr %join, ptr %bssid6, i32 6)
  %bss_type = getelementptr inbounds %struct.at76_req_join, ptr %join, i32 0, i32 2
  %7 = ptrtoint ptr %bss_type to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %bss_type, align 1
  %channel = getelementptr inbounds %struct.at76_priv, ptr %priv, i32 0, i32 18
  %8 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel, align 4
  %conv8 = trunc i32 %9 to i8
  %channel9 = getelementptr inbounds %struct.at76_req_join, ptr %join, i32 0, i32 3
  %10 = ptrtoint ptr %channel9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv8, ptr %channel9, align 1
  %timeout = getelementptr inbounds %struct.at76_req_join, ptr %join, i32 0, i32 4
  %11 = ptrtoint ptr %timeout to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 -12281, ptr %timeout, align 1
  %12 = load i32, ptr @at76_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %tobool.not = icmp sgt i32 %12, -1
  br i1 %tobool.not, label %entry.do.end12_crit_edge, label %do.end

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.316, ptr noundef nonnull @.str.317) #12
  br label %do.end12

do.end12:                                         ; preds = %do.end, %entry.do.end12_crit_edge
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 4
  %call13 = call fastcc i32 @at76_set_card_command(ptr noundef %14, i8 noundef zeroext 4, ptr noundef nonnull %join, i32 noundef 44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %do.end18, label %if.end19

do.end18:                                         ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  %hw = getelementptr inbounds %struct.at76_priv, ptr %priv, i32 0, i32 53
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 4
  %wiphy = getelementptr inbounds %struct.ieee80211_hw, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %wiphy to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wiphy, align 8
  %dev = getelementptr inbounds %struct.wiphy, ptr %18, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.217, i32 noundef %call13) #12
  br label %cleanup

if.end19:                                         ; preds = %do.end12
  %call20 = tail call fastcc i32 @at76_wait_completion(ptr noundef %priv, i32 noundef 4)
  %19 = load i32, ptr @at76_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %tobool23.not = icmp sgt i32 %19, -1
  br i1 %tobool23.not, label %if.end19.do.end32_crit_edge, label %do.end27

if.end19.do.end32_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end32

do.end27:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.321, ptr noundef nonnull @.str.317, i32 noundef %call20) #12
  br label %do.end32

do.end32:                                         ; preds = %do.end27, %if.end19.do.end32_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call20)
  %cmp33.not = icmp eq i32 %call20, 1
  br i1 %cmp33.not, label %if.end42, label %do.end38

do.end38:                                         ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #11
  %hw39 = getelementptr inbounds %struct.at76_priv, ptr %priv, i32 0, i32 53
  %20 = ptrtoint ptr %hw39 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw39, align 4
  %wiphy40 = getelementptr inbounds %struct.ieee80211_hw, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %wiphy40 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wiphy40, align 8
  %dev41 = getelementptr inbounds %struct.wiphy, ptr %23, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev41, ptr noundef nonnull @.str.324, i32 noundef %call20) #12
  br label %cleanup

if.end42:                                         ; preds = %do.end32
  %mib_buf.i = getelementptr inbounds %struct.at76_priv, ptr %priv, i32 0, i32 50
  %24 = ptrtoint ptr %mib_buf.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 5, ptr %mib_buf.i, align 1
  %size.i = getelementptr inbounds %struct.at76_priv, ptr %priv, i32 0, i32 50, i32 1
  %25 = ptrtoint ptr %size.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %size.i, align 1
  %index.i = getelementptr inbounds %struct.at76_priv, ptr %priv, i32 0, i32 50, i32 2
  %26 = ptrtoint ptr %index.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 53, ptr %index.i, align 1
  %pm_mode.i = getelementptr inbounds %struct.at76_priv, ptr %priv, i32 0, i32 39
  %27 = ptrtoint ptr %pm_mode.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %pm_mode.i, align 4
  %data.i = getelementptr inbounds %struct.at76_priv, ptr %priv, i32 0, i32 50, i32 4
  %29 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %data.i, align 1
  %30 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv, align 4
  %call.i.i = tail call fastcc i32 @at76_set_card_command(ptr noundef %31, i8 noundef zeroext 1, ptr noundef %mib_buf.i, i32 noundef 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end42.do.end.i_crit_edge, label %if.end.i.i

if.end42.do.end.i_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.end.i.i:                                       ; preds = %if.end42
  %call2.i.i = tail call fastcc i32 @at76_wait_completion(ptr noundef %priv, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i.i)
  %cmp3.not.i.i = icmp eq i32 %call2.i.i, 1
  br i1 %cmp3.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %do.end.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %hw.i.i = getelementptr inbounds %struct.at76_priv, ptr %priv, i32 0, i32 53
  %32 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw.i.i, align 4
  %wiphy.i.i = getelementptr inbounds %struct.ieee80211_hw, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %wiphy.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wiphy.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.wiphy, ptr %35, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i.i, ptr noundef nonnull @.str.253, i32 noundef %call2.i.i) #12
  br label %do.end.i

do.end.i:                                         ; preds = %do.end.i.i, %if.end42.do.end.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -5, %do.end.i.i ], [ %call.i.i, %if.end42.do.end.i_crit_edge ]
  %hw.i = getelementptr inbounds %struct.at76_priv, ptr %priv, i32 0, i32 53
  %36 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw.i, align 4
  %wiphy.i = getelementptr inbounds %struct.ieee80211_hw, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %wiphy.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wiphy.i, align 8
  %dev.i = getelementptr inbounds %struct.wiphy, ptr %39, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.262, i32 noundef %retval.0.i.ph.i) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.end.i.i.cleanup_crit_edge, %do.end38, %do.end18
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %join) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_queue_delayed_work(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_scan_completed(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_rx_irqsafe(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfg80211_find_elem_match(i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_to_freq_khz(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_register_hw(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_unregister_hw(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_free_hw(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_register_simple(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 408)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 408)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !54, !56, !58, !60, !62, !63, !64, !65, !67, !68, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !199, !201, !202, !203, !205, !206, !207, !209, !210, !211, !213, !214, !215, !217, !218, !219, !221, !222, !223, !225, !226, !227, !229, !230, !231, !233, !234, !235, !237, !238, !239, !241, !242, !243, !245, !246, !247, !249, !250, !251, !253, !254, !255, !256, !258, !259, !261, !262, !264, !265, !267, !268, !270, !271, !272, !273, !275, !277, !278, !279, !280, !282, !283, !284, !286, !287, !288, !290, !291, !292, !293, !294, !295, !297, !298, !299, !301, !302, !303, !305, !307, !308, !310, !312, !313, !315, !316, !317, !319, !320, !321, !323, !324, !325, !327, !328, !329, !331, !332, !333, !334, !336, !337, !338, !340, !341, !342, !344, !345, !346, !348, !349, !350, !352, !353, !354, !355, !356, !357, !358, !359, !361, !362, !363, !364, !365, !366, !367, !368, !369, !371, !372, !373, !374, !375, !376, !377, !379, !380, !381, !383, !385, !387, !389, !391, !392, !393, !394, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !416, !417, !418, !420, !421, !422, !424, !425, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !447, !448, !449, !451, !452, !453, !454, !456, !457, !458, !459, !460, !462, !463, !464, !465, !467, !468, !469, !470, !472, !473, !474, !475, !477, !478, !479, !480, !482, !483, !484, !485, !487, !488, !489, !491, !492, !493, !494, !496, !497, !498, !500, !501, !502, !504, !505, !506, !507, !509, !510, !511, !513, !514, !515, !516, !518, !519, !520, !522, !523, !524, !526, !527, !528, !529, !531, !532, !533, !535, !536, !537, !539, !540, !541, !542, !544, !545, !546, !548, !549, !550, !551, !553, !554, !555, !557, !558, !559, !561, !562, !563, !565, !566, !567, !569, !570, !571, !572, !574, !575, !576, !577, !579, !580, !581, !582, !584, !585, !587, !588, !589, !591, !592, !593, !595, !596, !597, !598, !600, !601, !602, !604, !605, !606, !607, !609, !610, !611, !612, !614, !615, !616, !617, !619, !620, !621, !623, !624, !625, !627, !628, !629, !631, !632, !633, !634, !636, !637, !638, !639, !641, !642, !643, !644, !646, !647, !648, !650, !651, !652, !654, !655, !656, !658, !659, !660, !661, !663, !664, !665, !667, !669, !670, !671, !672, !674, !675, !676, !678, !680, !681, !682, !684, !685, !686, !688, !689, !690, !692, !693, !694, !695, !697, !698, !699, !701, !702, !703, !705, !706, !707, !709, !710, !711, !713, !714, !715, !717, !718, !719, !720, !722, !724, !726, !728, !730, !732, !734, !736, !738, !740, !742, !744, !746, !748, !749, !750, !752, !753, !754, !756, !757, !758, !760, !761, !763, !764, !765, !766, !768, !769, !770, !772, !774, !776, !778, !780, !782, !784, !786, !788, !790, !791, !793, !795, !796, !797, !798, !800, !801, !802}
!llvm.module.flags = !{!804, !805, !806, !807, !808, !809, !810, !811}
!llvm.ident = !{!812}

!0 = !{ptr @__UNIQUE_ID_firmware353, !1, !"__UNIQUE_ID_firmware353", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 117, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware354, !3, !"__UNIQUE_ID_firmware354", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 118, i32 1}
!4 = !{ptr @__UNIQUE_ID_firmware355, !5, !"__UNIQUE_ID_firmware355", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 119, i32 1}
!6 = !{ptr @__UNIQUE_ID_firmware356, !7, !"__UNIQUE_ID_firmware356", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 120, i32 1}
!8 = !{ptr @__UNIQUE_ID_firmware357, !9, !"__UNIQUE_ID_firmware357", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 121, i32 1}
!10 = !{ptr @__UNIQUE_ID_firmware358, !11, !"__UNIQUE_ID_firmware358", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 122, i32 1}
!12 = !{ptr @__UNIQUE_ID_firmware359, !13, !"__UNIQUE_ID_firmware359", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 123, i32 1}
!14 = !{ptr @__UNIQUE_ID_firmware360, !15, !"__UNIQUE_ID_firmware360", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 124, i32 1}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2589, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @at76_mod_exit._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @at76_mod_exit._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @__param_debug, !23, !"__param_debug", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2596, i32 1}
!24 = !{ptr @__UNIQUE_ID_debugtype370, !23, !"__UNIQUE_ID_debugtype370", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_debug371, !26, !"__UNIQUE_ID_debug371", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2597, i32 1}
!27 = !{ptr @__initcall__kmod_at76c50x_usb__372_2599_at76_mod_init6, !28, !"__initcall__kmod_at76c50x_usb__372_2599_at76_mod_init6", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2599, i32 1}
!29 = !{ptr @__exitcall_at76_mod_exit, !30, !"__exitcall_at76_mod_exit", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2600, i32 1}
!31 = !{ptr @__UNIQUE_ID_author373, !32, !"__UNIQUE_ID_author373", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2602, i32 1}
!33 = !{ptr @__UNIQUE_ID_author374, !34, !"__UNIQUE_ID_author374", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2603, i32 1}
!35 = !{ptr @__UNIQUE_ID_author375, !36, !"__UNIQUE_ID_author375", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2604, i32 1}
!37 = !{ptr @__UNIQUE_ID_author376, !38, !"__UNIQUE_ID_author376", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2605, i32 1}
!39 = !{ptr @__UNIQUE_ID_author377, !40, !"__UNIQUE_ID_author377", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2606, i32 1}
!41 = !{ptr @__UNIQUE_ID_author378, !42, !"__UNIQUE_ID_author378", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2607, i32 1}
!43 = !{ptr @__UNIQUE_ID_author379, !44, !"__UNIQUE_ID_author379", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2608, i32 1}
!45 = !{ptr @__UNIQUE_ID_author380, !46, !"__UNIQUE_ID_author380", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2609, i32 1}
!47 = !{ptr @__UNIQUE_ID_author381, !48, !"__UNIQUE_ID_author381", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2610, i32 1}
!49 = !{ptr @__UNIQUE_ID_description382, !50, !"__UNIQUE_ID_description382", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2611, i32 1}
!51 = !{ptr @__UNIQUE_ID_file383, !52, !"__UNIQUE_ID_file383", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2612, i32 1}
!53 = !{ptr @__UNIQUE_ID_license384, !52, !"__UNIQUE_ID_license384", i1 false, i1 false}
!54 = !{ptr @ledtrig_tx, !55, !"ledtrig_tx", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 518, i32 1}
!56 = !{ptr @.str.3, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2562, i32 10}
!58 = !{ptr @at76_driver, !59, !"at76_driver", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2561, i32 26}
!60 = !{ptr @.str.4, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2461, i32 2}
!62 = !{ptr @.str.5, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @at76_probe._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @at76_probe._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.7, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2467, i32 3}
!67 = !{ptr @.str.8, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.9, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @at76_probe._entry.6, !66, !"_entry", i1 false, i1 false}
!70 = !{ptr @at76_probe._entry_ptr.10, !66, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.12, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2476, i32 3}
!73 = !{ptr @.str.13, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @at76_probe._entry.11, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @at76_probe._entry_ptr.14, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.16, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2480, i32 4}
!78 = !{ptr @at76_probe._entry.15, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @at76_probe._entry_ptr.17, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.19, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2505, i32 3}
!82 = !{ptr @at76_probe._entry.18, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @at76_probe._entry_ptr.20, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.22, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2515, i32 4}
!86 = !{ptr @at76_probe._entry.21, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @at76_probe._entry_ptr.23, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.24, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1613, i32 3}
!90 = !{ptr @.str.25, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @at76_load_firmware._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @at76_load_firmware._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.27, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1617, i32 2}
!95 = !{ptr @at76_load_firmware._entry.26, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @at76_load_firmware._entry_ptr.28, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.30, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1620, i32 3}
!99 = !{ptr @at76_load_firmware._entry.29, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @at76_load_firmware._entry_ptr.31, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.33, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1622, i32 3}
!103 = !{ptr @at76_load_firmware._entry.32, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @at76_load_firmware._entry_ptr.34, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.36, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1627, i32 2}
!107 = !{ptr @at76_load_firmware._entry.35, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @at76_load_firmware._entry_ptr.37, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.39, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1631, i32 3}
!111 = !{ptr @at76_load_firmware._entry.38, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @at76_load_firmware._entry_ptr.40, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.42, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1639, i32 3}
!115 = !{ptr @at76_load_firmware._entry.41, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @at76_load_firmware._entry_ptr.43, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.45, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1658, i32 2}
!119 = !{ptr @at76_load_firmware._entry.44, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @at76_load_firmware._entry_ptr.46, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.48, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1662, i32 2}
!123 = !{ptr @at76_load_firmware._entry.47, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @at76_load_firmware._entry_ptr.49, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.51, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1665, i32 2}
!127 = !{ptr @at76_load_firmware._entry.50, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @at76_load_firmware._entry_ptr.52, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.53, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 104, i32 8}
!131 = !{ptr @.str.54, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @fw_mutex, !130, !"fw_mutex", i1 false, i1 false}
!133 = !{ptr @.str.55, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1323, i32 3}
!135 = !{ptr @.str.56, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @at76_load_internal_fw._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @at76_load_internal_fw._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.58, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1328, i32 2}
!140 = !{ptr @at76_load_internal_fw._entry.57, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @at76_load_internal_fw._entry_ptr.59, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.61, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1334, i32 4}
!144 = !{ptr @at76_load_internal_fw._entry.60, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @at76_load_internal_fw._entry_ptr.62, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.64, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1340, i32 2}
!148 = !{ptr @at76_load_internal_fw._entry.63, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @at76_load_internal_fw._entry_ptr.65, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.66, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 373, i32 2}
!152 = !{ptr @.str.67, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @at76_usbdfu_download._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @at76_usbdfu_download._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.69, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 377, i32 3}
!157 = !{ptr @at76_usbdfu_download._entry.68, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @at76_usbdfu_download._entry_ptr.70, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.72, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 404, i32 5}
!161 = !{ptr @at76_usbdfu_download._entry.71, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @at76_usbdfu_download._entry_ptr.73, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.75, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 413, i32 4}
!165 = !{ptr @at76_usbdfu_download._entry.74, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @at76_usbdfu_download._entry_ptr.76, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.78, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 420, i32 5}
!169 = !{ptr @at76_usbdfu_download._entry.77, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @at76_usbdfu_download._entry_ptr.79, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.81, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 426, i32 4}
!173 = !{ptr @at76_usbdfu_download._entry.80, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @at76_usbdfu_download._entry_ptr.82, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.84, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 429, i32 4}
!177 = !{ptr @at76_usbdfu_download._entry.83, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @at76_usbdfu_download._entry_ptr.85, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.87, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 434, i32 4}
!181 = !{ptr @at76_usbdfu_download._entry.86, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @at76_usbdfu_download._entry_ptr.88, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.90, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 437, i32 4}
!185 = !{ptr @at76_usbdfu_download._entry.89, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @at76_usbdfu_download._entry_ptr.91, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.93, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 441, i32 4}
!189 = !{ptr @at76_usbdfu_download._entry.92, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @at76_usbdfu_download._entry_ptr.94, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.96, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 451, i32 5}
!193 = !{ptr @at76_usbdfu_download._entry.95, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @at76_usbdfu_download._entry_ptr.97, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.99, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 458, i32 4}
!197 = !{ptr @at76_usbdfu_download._entry.98, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @at76_usbdfu_download._entry_ptr.100, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.102, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 473, i32 4}
!201 = !{ptr @at76_usbdfu_download._entry.101, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @at76_usbdfu_download._entry_ptr.103, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.105, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 478, i32 4}
!205 = !{ptr @at76_usbdfu_download._entry.104, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @at76_usbdfu_download._entry_ptr.106, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.108, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 483, i32 4}
!209 = !{ptr @at76_usbdfu_download._entry.107, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @at76_usbdfu_download._entry_ptr.109, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.111, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 488, i32 4}
!213 = !{ptr @at76_usbdfu_download._entry.110, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @at76_usbdfu_download._entry_ptr.112, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.114, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 492, i32 4}
!217 = !{ptr @at76_usbdfu_download._entry.113, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @at76_usbdfu_download._entry_ptr.115, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.117, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 497, i32 4}
!221 = !{ptr @at76_usbdfu_download._entry.116, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @at76_usbdfu_download._entry_ptr.118, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.119, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1267, i32 2}
!225 = !{ptr @at76_load_external_fw._entry, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @at76_load_external_fw._entry_ptr, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.121, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1270, i32 3}
!229 = !{ptr @at76_load_external_fw._entry.120, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @at76_load_external_fw._entry_ptr.122, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.124, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1278, i32 2}
!233 = !{ptr @at76_load_external_fw._entry.123, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @at76_load_external_fw._entry_ptr.125, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.127, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1284, i32 3}
!237 = !{ptr @at76_load_external_fw._entry.126, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @at76_load_external_fw._entry_ptr.128, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.130, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1289, i32 4}
!241 = !{ptr @at76_load_external_fw._entry.129, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @at76_load_external_fw._entry_ptr.131, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.133, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1301, i32 3}
!245 = !{ptr @at76_load_external_fw._entry.132, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @at76_load_external_fw._entry_ptr.134, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.136, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1308, i32 3}
!249 = !{ptr @at76_load_external_fw._entry.135, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @at76_load_external_fw._entry_ptr.137, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.138, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2201, i32 3}
!253 = !{ptr @.str.139, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @at76_alloc_new_device._entry, !252, !"_entry", i1 false, i1 false}
!255 = !{ptr @at76_alloc_new_device._entry_ptr, !252, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @at76_alloc_new_device.__key, !257, !"__key", i1 false, i1 false}
!257 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2211, i32 2}
!258 = !{ptr @.str.140, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @at76_alloc_new_device.__key.141, !260, !"__key", i1 false, i1 false}
!260 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2212, i32 2}
!261 = !{ptr @.str.142, !260, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @at76_alloc_new_device.__key.143, !263, !"__key", i1 false, i1 false}
!263 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2213, i32 2}
!264 = !{ptr @.str.144, !263, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @at76_alloc_new_device.__key.145, !266, !"__key", i1 false, i1 false}
!266 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2214, i32 2}
!267 = !{ptr @.str.146, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @at76_alloc_new_device.__key.147, !269, !"__key", i1 false, i1 false}
!269 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2215, i32 2}
!270 = !{ptr @.str.148, !269, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @at76_alloc_new_device.__key.149, !269, !"__key", i1 false, i1 false}
!272 = !{ptr @.str.150, !269, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @at76_ops, !274, !"at76_ops", i1 false, i1 false}
!274 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2180, i32 35}
!275 = !{ptr @.str.151, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1770, i32 2}
!277 = !{ptr @.str.152, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @at76_mac80211_tx._entry, !276, !"_entry", i1 false, i1 false}
!279 = !{ptr @at76_mac80211_tx._entry_ptr, !276, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.154, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1773, i32 3}
!282 = !{ptr @at76_mac80211_tx._entry.153, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @at76_mac80211_tx._entry_ptr.155, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.157, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1813, i32 2}
!286 = !{ptr @at76_mac80211_tx._entry.156, !285, !"_entry", i1 false, i1 false}
!287 = !{ptr @at76_mac80211_tx._entry_ptr.158, !285, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.160, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1818, i32 2}
!290 = !{ptr @at76_mac80211_tx._entry.159, !289, !"_entry", i1 false, i1 false}
!291 = !{ptr @at76_mac80211_tx._entry_ptr.161, !289, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.162, !289, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @.str.163, !289, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @at76_mac80211_tx.__UNIQUE_ID_ddebug367, !289, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!295 = !{ptr @.str.165, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1824, i32 3}
!297 = !{ptr @at76_mac80211_tx._entry.164, !296, !"_entry", i1 false, i1 false}
!298 = !{ptr @at76_mac80211_tx._entry_ptr.166, !296, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.168, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1826, i32 4}
!301 = !{ptr @at76_mac80211_tx._entry.167, !300, !"_entry", i1 false, i1 false}
!302 = !{ptr @at76_mac80211_tx._entry_ptr.169, !300, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @tx_activity, !304, !"tx_activity", i1 false, i1 false}
!304 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 515, i32 12}
!305 = !{ptr @.str.170, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 517, i32 8}
!307 = !{ptr @ledtrig_tx_timer, !306, !"ledtrig_tx_timer", i1 false, i1 false}
!308 = !{ptr @at76_ledtrig_tx_timerfunc.tx_lastactivity, !309, !"tx_lastactivity", i1 false, i1 false}
!309 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 522, i32 13}
!310 = distinct !{null, !311, !"__already_done", i1 false, i1 false}
!311 = !{!"../include/net/mac80211.h", i32 2737, i32 6}
!312 = !{ptr @.str.171, !311, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @.str.172, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1733, i32 2}
!315 = !{ptr @at76_mac80211_tx_callback._entry, !314, !"_entry", i1 false, i1 false}
!316 = !{ptr @at76_mac80211_tx_callback._entry_ptr, !314, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @.str.174, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1746, i32 3}
!319 = !{ptr @at76_mac80211_tx_callback._entry.173, !318, !"_entry", i1 false, i1 false}
!320 = !{ptr @at76_mac80211_tx_callback._entry_ptr.175, !318, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.176, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1838, i32 2}
!323 = !{ptr @at76_mac80211_start._entry, !322, !"_entry", i1 false, i1 false}
!324 = !{ptr @at76_mac80211_start._entry_ptr, !322, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.178, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1844, i32 3}
!327 = !{ptr @at76_mac80211_start._entry.177, !326, !"_entry", i1 false, i1 false}
!328 = !{ptr @at76_mac80211_start._entry_ptr.179, !326, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @.str.180, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1212, i32 3}
!331 = !{ptr @.str.181, !330, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @at76_submit_rx_urb._entry, !330, !"_entry", i1 false, i1 false}
!333 = !{ptr @at76_submit_rx_urb._entry_ptr, !330, !"_entry_ptr", i1 false, i1 false}
!334 = !{ptr @.str.183, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1220, i32 4}
!336 = !{ptr @at76_submit_rx_urb._entry.182, !335, !"_entry", i1 false, i1 false}
!337 = !{ptr @at76_submit_rx_urb._entry_ptr.184, !335, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @.str.186, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1237, i32 4}
!340 = !{ptr @at76_submit_rx_urb._entry.185, !339, !"_entry", i1 false, i1 false}
!341 = !{ptr @at76_submit_rx_urb._entry_ptr.187, !339, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @.str.189, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1240, i32 4}
!344 = !{ptr @at76_submit_rx_urb._entry.188, !343, !"_entry", i1 false, i1 false}
!345 = !{ptr @at76_submit_rx_urb._entry_ptr.190, !343, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.192, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1246, i32 3}
!348 = !{ptr @at76_submit_rx_urb._entry.191, !347, !"_entry", i1 false, i1 false}
!349 = !{ptr @at76_submit_rx_urb._entry_ptr.193, !347, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @.str.194, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1353, i32 2}
!352 = !{ptr @.str.195, !351, !"<string literal>", i1 false, i1 false}
!353 = !{ptr @at76_startup_device._entry, !351, !"_entry", i1 false, i1 false}
!354 = !{ptr @at76_startup_device._entry_ptr, !351, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @.str.196, !351, !"<string literal>", i1 false, i1 false}
!356 = !{ptr @.str.197, !351, !"<string literal>", i1 false, i1 false}
!357 = !{ptr @.str.198, !351, !"<string literal>", i1 false, i1 false}
!358 = !{ptr @.str.199, !351, !"<string literal>", i1 false, i1 false}
!359 = !{ptr @.str.201, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1360, i32 2}
!361 = !{ptr @at76_startup_device._entry.200, !360, !"_entry", i1 false, i1 false}
!362 = !{ptr @at76_startup_device._entry_ptr.202, !360, !"_entry_ptr", i1 false, i1 false}
!363 = !{ptr @.str.203, !360, !"<string literal>", i1 false, i1 false}
!364 = !{ptr @.str.204, !360, !"<string literal>", i1 false, i1 false}
!365 = !{ptr @.str.205, !360, !"<string literal>", i1 false, i1 false}
!366 = !{ptr @.str.206, !360, !"<string literal>", i1 false, i1 false}
!367 = !{ptr @.str.207, !360, !"<string literal>", i1 false, i1 false}
!368 = !{ptr @.str.208, !360, !"<string literal>", i1 false, i1 false}
!369 = !{ptr @.str.210, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1370, i32 2}
!371 = !{ptr @at76_startup_device._entry.209, !370, !"_entry", i1 false, i1 false}
!372 = !{ptr @at76_startup_device._entry_ptr.211, !370, !"_entry_ptr", i1 false, i1 false}
!373 = !{ptr @.str.212, !370, !"<string literal>", i1 false, i1 false}
!374 = !{ptr @.str.213, !370, !"<string literal>", i1 false, i1 false}
!375 = !{ptr @.str.214, !370, !"<string literal>", i1 false, i1 false}
!376 = !{ptr @.str.215, !370, !"<string literal>", i1 false, i1 false}
!377 = !{ptr @.str.217, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1416, i32 3}
!379 = !{ptr @at76_startup_device._entry.216, !378, !"_entry", i1 false, i1 false}
!380 = !{ptr @at76_startup_device._entry_ptr.218, !378, !"_entry_ptr", i1 false, i1 false}
!381 = !{ptr @.str.219, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 269, i32 42}
!383 = !{ptr @.str.220, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 269, i32 50}
!385 = !{ptr @preambles, !386, !"preambles", i1 false, i1 false}
!386 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 269, i32 26}
!387 = distinct !{null, !388, !"hw_rates", i1 false, i1 false}
!388 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 267, i32 17}
!389 = !{ptr @.str.221, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 735, i32 2}
!391 = !{ptr @.str.222, !390, !"<string literal>", i1 false, i1 false}
!392 = !{ptr @at76_set_card_command._entry, !390, !"_entry", i1 false, i1 false}
!393 = !{ptr @at76_set_card_command._entry_ptr, !390, !"_entry_ptr", i1 false, i1 false}
!394 = !{ptr @at76_set_card_command.__UNIQUE_ID_ddebug363, !390, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!395 = !{ptr @.str.223, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 707, i32 3}
!397 = !{ptr @.str.224, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 708, i32 3}
!399 = !{ptr @.str.225, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 709, i32 3}
!401 = !{ptr @.str.226, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 710, i32 3}
!403 = !{ptr @.str.227, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 711, i32 3}
!405 = !{ptr @.str.228, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 712, i32 3}
!407 = !{ptr @.str.229, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 713, i32 3}
!409 = !{ptr @.str.230, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 714, i32 3}
!411 = !{ptr @.str.231, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 717, i32 9}
!413 = !{ptr @.str.232, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 775, i32 4}
!415 = !{ptr @.str.233, !414, !"<string literal>", i1 false, i1 false}
!416 = !{ptr @at76_wait_completion._entry, !414, !"_entry", i1 false, i1 false}
!417 = !{ptr @at76_wait_completion._entry_ptr, !414, !"_entry_ptr", i1 false, i1 false}
!418 = !{ptr @.str.235, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 781, i32 3}
!420 = !{ptr @at76_wait_completion._entry.234, !419, !"_entry", i1 false, i1 false}
!421 = !{ptr @at76_wait_completion._entry_ptr.236, !419, !"_entry_ptr", i1 false, i1 false}
!422 = !{ptr @.str.238, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 792, i32 4}
!424 = !{ptr @at76_wait_completion._entry.237, !423, !"_entry", i1 false, i1 false}
!425 = !{ptr @at76_wait_completion._entry_ptr.239, !423, !"_entry_ptr", i1 false, i1 false}
!426 = !{ptr @.str.240, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 752, i32 3}
!428 = !{ptr @.str.241, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 753, i32 3}
!430 = !{ptr @.str.242, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 754, i32 3}
!432 = !{ptr @.str.243, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 755, i32 3}
!434 = !{ptr @.str.244, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 756, i32 3}
!436 = !{ptr @.str.245, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 757, i32 3}
!438 = !{ptr @.str.246, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 758, i32 3}
!440 = !{ptr @.str.247, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 759, i32 3}
!442 = !{ptr @.str.248, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 760, i32 3}
!444 = !{ptr @.str.249, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 836, i32 3}
!446 = !{ptr @.str.250, !445, !"<string literal>", i1 false, i1 false}
!447 = !{ptr @at76_set_radio._entry, !445, !"_entry", i1 false, i1 false}
!448 = !{ptr @at76_set_radio._entry_ptr, !445, !"_entry_ptr", i1 false, i1 false}
!449 = !{ptr @.str.251, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 874, i32 3}
!451 = !{ptr @.str.252, !450, !"<string literal>", i1 false, i1 false}
!452 = !{ptr @at76_set_preamble._entry, !450, !"_entry", i1 false, i1 false}
!453 = !{ptr @at76_set_preamble._entry_ptr, !450, !"_entry_ptr", i1 false, i1 false}
!454 = !{ptr @.str.253, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 814, i32 3}
!456 = !{ptr @.str.254, !455, !"<string literal>", i1 false, i1 false}
!457 = !{ptr @.str.255, !455, !"<string literal>", i1 false, i1 false}
!458 = !{ptr @at76_set_mib._entry, !455, !"_entry", i1 false, i1 false}
!459 = !{ptr @at76_set_mib._entry_ptr, !455, !"_entry_ptr", i1 false, i1 false}
!460 = !{ptr @.str.256, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 891, i32 3}
!462 = !{ptr @.str.257, !461, !"<string literal>", i1 false, i1 false}
!463 = !{ptr @at76_set_frag._entry, !461, !"_entry", i1 false, i1 false}
!464 = !{ptr @at76_set_frag._entry_ptr, !461, !"_entry_ptr", i1 false, i1 false}
!465 = !{ptr @.str.258, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 908, i32 3}
!467 = !{ptr @.str.259, !466, !"<string literal>", i1 false, i1 false}
!468 = !{ptr @at76_set_rts._entry, !466, !"_entry", i1 false, i1 false}
!469 = !{ptr @at76_set_rts._entry_ptr, !466, !"_entry_ptr", i1 false, i1 false}
!470 = !{ptr @.str.260, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 924, i32 3}
!472 = !{ptr @.str.261, !471, !"<string literal>", i1 false, i1 false}
!473 = !{ptr @at76_set_autorate_fallback._entry, !471, !"_entry", i1 false, i1 false}
!474 = !{ptr @at76_set_autorate_fallback._entry_ptr, !471, !"_entry_ptr", i1 false, i1 false}
!475 = !{ptr @.str.262, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 857, i32 3}
!477 = !{ptr @.str.263, !476, !"<string literal>", i1 false, i1 false}
!478 = !{ptr @at76_set_pm_mode._entry, !476, !"_entry", i1 false, i1 false}
!479 = !{ptr @at76_set_pm_mode._entry_ptr, !476, !"_entry_ptr", i1 false, i1 false}
!480 = !{ptr @.str.264, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1045, i32 3}
!482 = !{ptr @.str.265, !481, !"<string literal>", i1 false, i1 false}
!483 = !{ptr @at76_dump_mib_mac._entry, !481, !"_entry", i1 false, i1 false}
!484 = !{ptr @at76_dump_mib_mac._entry_ptr, !481, !"_entry_ptr", i1 false, i1 false}
!485 = !{ptr @.str.267, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1050, i32 2}
!487 = !{ptr @at76_dump_mib_mac._entry.266, !486, !"_entry", i1 false, i1 false}
!488 = !{ptr @at76_dump_mib_mac._entry_ptr.268, !486, !"_entry_ptr", i1 false, i1 false}
!489 = !{ptr @.str.269, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 943, i32 3}
!491 = !{ptr @.str.270, !490, !"<string literal>", i1 false, i1 false}
!492 = !{ptr @at76_dump_mib_mac_addr._entry, !490, !"_entry", i1 false, i1 false}
!493 = !{ptr @at76_dump_mib_mac_addr._entry_ptr, !490, !"_entry_ptr", i1 false, i1 false}
!494 = !{ptr @.str.272, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 948, i32 2}
!496 = !{ptr @at76_dump_mib_mac_addr._entry.271, !495, !"_entry", i1 false, i1 false}
!497 = !{ptr @at76_dump_mib_mac_addr._entry_ptr.273, !495, !"_entry_ptr", i1 false, i1 false}
!498 = !{ptr @.str.275, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 952, i32 3}
!500 = !{ptr @at76_dump_mib_mac_addr._entry.274, !499, !"_entry", i1 false, i1 false}
!501 = !{ptr @at76_dump_mib_mac_addr._entry_ptr.276, !499, !"_entry_ptr", i1 false, i1 false}
!502 = !{ptr @.str.277, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1009, i32 3}
!504 = !{ptr @.str.278, !503, !"<string literal>", i1 false, i1 false}
!505 = !{ptr @at76_dump_mib_mac_mgmt._entry, !503, !"_entry", i1 false, i1 false}
!506 = !{ptr @at76_dump_mib_mac_mgmt._entry_ptr, !503, !"_entry_ptr", i1 false, i1 false}
!507 = !{ptr @.str.280, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1014, i32 2}
!509 = !{ptr @at76_dump_mib_mac_mgmt._entry.279, !508, !"_entry", i1 false, i1 false}
!510 = !{ptr @at76_dump_mib_mac_mgmt._entry_ptr.281, !508, !"_entry_ptr", i1 false, i1 false}
!511 = !{ptr @.str.282, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 972, i32 3}
!513 = !{ptr @.str.283, !512, !"<string literal>", i1 false, i1 false}
!514 = !{ptr @at76_dump_mib_mac_wep._entry, !512, !"_entry", i1 false, i1 false}
!515 = !{ptr @at76_dump_mib_mac_wep._entry_ptr, !512, !"_entry_ptr", i1 false, i1 false}
!516 = !{ptr @.str.285, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 977, i32 2}
!518 = !{ptr @at76_dump_mib_mac_wep._entry.284, !517, !"_entry", i1 false, i1 false}
!519 = !{ptr @at76_dump_mib_mac_wep._entry_ptr.286, !517, !"_entry_ptr", i1 false, i1 false}
!520 = !{ptr @.str.288, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 990, i32 3}
!522 = !{ptr @at76_dump_mib_mac_wep._entry.287, !521, !"_entry", i1 false, i1 false}
!523 = !{ptr @at76_dump_mib_mac_wep._entry_ptr.289, !521, !"_entry_ptr", i1 false, i1 false}
!524 = !{ptr @.str.290, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1141, i32 3}
!526 = !{ptr @.str.291, !525, !"<string literal>", i1 false, i1 false}
!527 = !{ptr @at76_dump_mib_mdomain._entry, !525, !"_entry", i1 false, i1 false}
!528 = !{ptr @at76_dump_mib_mdomain._entry_ptr, !525, !"_entry_ptr", i1 false, i1 false}
!529 = !{ptr @.str.293, !530, !"<string literal>", i1 false, i1 false}
!530 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1146, i32 2}
!531 = !{ptr @at76_dump_mib_mdomain._entry.292, !530, !"_entry", i1 false, i1 false}
!532 = !{ptr @at76_dump_mib_mdomain._entry_ptr.294, !530, !"_entry_ptr", i1 false, i1 false}
!533 = !{ptr @.str.296, !534, !"<string literal>", i1 false, i1 false}
!534 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1150, i32 2}
!535 = !{ptr @at76_dump_mib_mdomain._entry.295, !534, !"_entry", i1 false, i1 false}
!536 = !{ptr @at76_dump_mib_mdomain._entry_ptr.297, !534, !"_entry_ptr", i1 false, i1 false}
!537 = !{ptr @.str.298, !538, !"<string literal>", i1 false, i1 false}
!538 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1082, i32 3}
!539 = !{ptr @.str.299, !538, !"<string literal>", i1 false, i1 false}
!540 = !{ptr @at76_dump_mib_phy._entry, !538, !"_entry", i1 false, i1 false}
!541 = !{ptr @at76_dump_mib_phy._entry_ptr, !538, !"_entry_ptr", i1 false, i1 false}
!542 = !{ptr @.str.301, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1087, i32 2}
!544 = !{ptr @at76_dump_mib_phy._entry.300, !543, !"_entry", i1 false, i1 false}
!545 = !{ptr @at76_dump_mib_phy._entry_ptr.302, !543, !"_entry_ptr", i1 false, i1 false}
!546 = !{ptr @.str.303, !547, !"<string literal>", i1 false, i1 false}
!547 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1115, i32 3}
!548 = !{ptr @.str.304, !547, !"<string literal>", i1 false, i1 false}
!549 = !{ptr @at76_dump_mib_local._entry, !547, !"_entry", i1 false, i1 false}
!550 = !{ptr @at76_dump_mib_local._entry_ptr, !547, !"_entry_ptr", i1 false, i1 false}
!551 = !{ptr @.str.306, !552, !"<string literal>", i1 false, i1 false}
!552 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1120, i32 2}
!553 = !{ptr @at76_dump_mib_local._entry.305, !552, !"_entry", i1 false, i1 false}
!554 = !{ptr @at76_dump_mib_local._entry_ptr.307, !552, !"_entry_ptr", i1 false, i1 false}
!555 = !{ptr @.str.308, !556, !"<string literal>", i1 false, i1 false}
!556 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1863, i32 2}
!557 = !{ptr @at76_mac80211_stop._entry, !556, !"_entry", i1 false, i1 false}
!558 = !{ptr @at76_mac80211_stop._entry_ptr, !556, !"_entry_ptr", i1 false, i1 false}
!559 = !{ptr @.str.309, !560, !"<string literal>", i1 false, i1 false}
!560 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1890, i32 2}
!561 = !{ptr @at76_add_interface._entry, !560, !"_entry", i1 false, i1 false}
!562 = !{ptr @at76_add_interface._entry_ptr, !560, !"_entry_ptr", i1 false, i1 false}
!563 = !{ptr @.str.310, !564, !"<string literal>", i1 false, i1 false}
!564 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1912, i32 2}
!565 = !{ptr @at76_remove_interface._entry, !564, !"_entry", i1 false, i1 false}
!566 = !{ptr @at76_remove_interface._entry_ptr, !564, !"_entry_ptr", i1 false, i1 false}
!567 = !{ptr @.str.311, !568, !"<string literal>", i1 false, i1 false}
!568 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2015, i32 2}
!569 = !{ptr @.str.312, !568, !"<string literal>", i1 false, i1 false}
!570 = !{ptr @at76_config._entry, !568, !"_entry", i1 false, i1 false}
!571 = !{ptr @at76_config._entry_ptr, !568, !"_entry_ptr", i1 false, i1 false}
!572 = !{ptr @.str.314, !573, !"<string literal>", i1 false, i1 false}
!573 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2017, i32 2}
!574 = !{ptr @at76_config._entry.313, !573, !"_entry", i1 false, i1 false}
!575 = !{ptr @at76_config._entry_ptr.315, !573, !"_entry_ptr", i1 false, i1 false}
!576 = !{ptr @at76_config.__UNIQUE_ID_ddebug368, !573, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!577 = !{ptr @.str.316, !578, !"<string literal>", i1 false, i1 false}
!578 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1689, i32 2}
!579 = !{ptr @.str.317, !578, !"<string literal>", i1 false, i1 false}
!580 = !{ptr @at76_join._entry, !578, !"_entry", i1 false, i1 false}
!581 = !{ptr @at76_join._entry_ptr, !578, !"_entry_ptr", i1 false, i1 false}
!582 = !{ptr @at76_join._entry.318, !583, !"_entry", i1 false, i1 false}
!583 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1694, i32 3}
!584 = !{ptr @at76_join._entry_ptr.319, !583, !"_entry_ptr", i1 false, i1 false}
!585 = !{ptr @.str.321, !586, !"<string literal>", i1 false, i1 false}
!586 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1700, i32 2}
!587 = !{ptr @at76_join._entry.320, !586, !"_entry", i1 false, i1 false}
!588 = !{ptr @at76_join._entry_ptr.322, !586, !"_entry_ptr", i1 false, i1 false}
!589 = !{ptr @.str.324, !590, !"<string literal>", i1 false, i1 false}
!590 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1702, i32 3}
!591 = !{ptr @at76_join._entry.323, !590, !"_entry", i1 false, i1 false}
!592 = !{ptr @at76_join._entry_ptr.325, !590, !"_entry_ptr", i1 false, i1 false}
!593 = !{ptr @.str.326, !594, !"<string literal>", i1 false, i1 false}
!594 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2040, i32 2}
!595 = !{ptr @.str.327, !594, !"<string literal>", i1 false, i1 false}
!596 = !{ptr @at76_bss_info_changed._entry, !594, !"_entry", i1 false, i1 false}
!597 = !{ptr @at76_bss_info_changed._entry_ptr, !594, !"_entry_ptr", i1 false, i1 false}
!598 = !{ptr @at76_bss_info_changed._entry.328, !599, !"_entry", i1 false, i1 false}
!599 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2045, i32 2}
!600 = !{ptr @at76_bss_info_changed._entry_ptr.329, !599, !"_entry_ptr", i1 false, i1 false}
!601 = !{ptr @at76_bss_info_changed.__UNIQUE_ID_ddebug369, !599, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!602 = !{ptr @.str.330, !603, !"<string literal>", i1 false, i1 false}
!603 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2066, i32 2}
!604 = !{ptr @.str.331, !603, !"<string literal>", i1 false, i1 false}
!605 = !{ptr @at76_configure_filter._entry, !603, !"_entry", i1 false, i1 false}
!606 = !{ptr @at76_configure_filter._entry_ptr, !603, !"_entry_ptr", i1 false, i1 false}
!607 = !{ptr @.str.332, !608, !"<string literal>", i1 false, i1 false}
!608 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2139, i32 2}
!609 = !{ptr @.str.333, !608, !"<string literal>", i1 false, i1 false}
!610 = !{ptr @at76_set_key._entry, !608, !"_entry", i1 false, i1 false}
!611 = !{ptr @at76_set_key._entry_ptr, !608, !"_entry_ptr", i1 false, i1 false}
!612 = !{ptr @.str.334, !613, !"<string literal>", i1 false, i1 false}
!613 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2125, i32 3}
!614 = !{ptr @.str.335, !613, !"<string literal>", i1 false, i1 false}
!615 = !{ptr @at76_set_wep._entry, !613, !"_entry", i1 false, i1 false}
!616 = !{ptr @at76_set_wep._entry_ptr, !613, !"_entry_ptr", i1 false, i1 false}
!617 = !{ptr @.str.336, !618, !"<string literal>", i1 false, i1 false}
!618 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1963, i32 2}
!619 = !{ptr @at76_hw_scan._entry, !618, !"_entry", i1 false, i1 false}
!620 = !{ptr @at76_hw_scan._entry_ptr, !618, !"_entry_ptr", i1 false, i1 false}
!621 = !{ptr @.str.338, !622, !"<string literal>", i1 false, i1 false}
!622 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1993, i32 2}
!623 = !{ptr @at76_hw_scan._entry.337, !622, !"_entry", i1 false, i1 false}
!624 = !{ptr @at76_hw_scan._entry_ptr.339, !622, !"_entry_ptr", i1 false, i1 false}
!625 = !{ptr @.str.341, !626, !"<string literal>", i1 false, i1 false}
!626 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1997, i32 3}
!627 = !{ptr @at76_hw_scan._entry.340, !626, !"_entry", i1 false, i1 false}
!628 = !{ptr @at76_hw_scan._entry_ptr.342, !626, !"_entry_ptr", i1 false, i1 false}
!629 = !{ptr @.str.343, !630, !"<string literal>", i1 false, i1 false}
!630 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1484, i32 3}
!631 = !{ptr @.str.344, !630, !"<string literal>", i1 false, i1 false}
!632 = !{ptr @at76_work_set_promisc._entry, !630, !"_entry", i1 false, i1 false}
!633 = !{ptr @at76_work_set_promisc._entry_ptr, !630, !"_entry_ptr", i1 false, i1 false}
!634 = !{ptr @.str.345, !635, !"<string literal>", i1 false, i1 false}
!635 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1930, i32 2}
!636 = !{ptr @.str.346, !635, !"<string literal>", i1 false, i1 false}
!637 = !{ptr @at76_dwork_hw_scan._entry, !635, !"_entry", i1 false, i1 false}
!638 = !{ptr @at76_dwork_hw_scan._entry_ptr, !635, !"_entry_ptr", i1 false, i1 false}
!639 = !{ptr @.str.347, !640, !"<string literal>", i1 false, i1 false}
!640 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1555, i32 3}
!641 = !{ptr @.str.348, !640, !"<string literal>", i1 false, i1 false}
!642 = !{ptr @at76_rx_tasklet._entry, !640, !"_entry", i1 false, i1 false}
!643 = !{ptr @at76_rx_tasklet._entry_ptr, !640, !"_entry_ptr", i1 false, i1 false}
!644 = !{ptr @.str.350, !645, !"<string literal>", i1 false, i1 false}
!645 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1556, i32 3}
!646 = !{ptr @at76_rx_tasklet._entry.349, !645, !"_entry", i1 false, i1 false}
!647 = !{ptr @at76_rx_tasklet._entry_ptr.351, !645, !"_entry_ptr", i1 false, i1 false}
!648 = !{ptr @.str.353, !649, !"<string literal>", i1 false, i1 false}
!649 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1567, i32 4}
!650 = !{ptr @at76_rx_tasklet._entry.352, !649, !"_entry", i1 false, i1 false}
!651 = !{ptr @at76_rx_tasklet._entry_ptr.354, !649, !"_entry_ptr", i1 false, i1 false}
!652 = !{ptr @.str.356, !653, !"<string literal>", i1 false, i1 false}
!653 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1574, i32 2}
!654 = !{ptr @at76_rx_tasklet._entry.355, !653, !"_entry", i1 false, i1 false}
!655 = !{ptr @at76_rx_tasklet._entry_ptr.357, !653, !"_entry_ptr", i1 false, i1 false}
!656 = !{ptr @.str.359, !657, !"<string literal>", i1 false, i1 false}
!657 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1581, i32 2}
!658 = !{ptr @at76_rx_tasklet._entry.358, !657, !"_entry", i1 false, i1 false}
!659 = !{ptr @at76_rx_tasklet._entry_ptr.360, !657, !"_entry_ptr", i1 false, i1 false}
!660 = !{ptr @at76_rx_tasklet.__UNIQUE_ID_ddebug366, !657, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!661 = !{ptr @.str.362, !662, !"<string literal>", i1 false, i1 false}
!662 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 1590, i32 2}
!663 = !{ptr @at76_rx_tasklet._entry.361, !662, !"_entry", i1 false, i1 false}
!664 = !{ptr @at76_rx_tasklet._entry_ptr.363, !662, !"_entry_ptr", i1 false, i1 false}
!665 = distinct !{null, !666, !"<string literal>", i1 false, i1 false}
!666 = !{!"../include/net/cfg80211.h", i32 5969, i32 6}
!667 = !{ptr @.str.365, !668, !"<string literal>", i1 false, i1 false}
!668 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2324, i32 2}
!669 = !{ptr @.str.366, !668, !"<string literal>", i1 false, i1 false}
!670 = !{ptr @at76_init_new_device._entry, !668, !"_entry", i1 false, i1 false}
!671 = !{ptr @at76_init_new_device._entry_ptr, !668, !"_entry_ptr", i1 false, i1 false}
!672 = !{ptr @.str.368, !673, !"<string literal>", i1 false, i1 false}
!673 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2334, i32 3}
!674 = !{ptr @at76_init_new_device._entry.367, !673, !"_entry", i1 false, i1 false}
!675 = !{ptr @at76_init_new_device._entry_ptr.369, !673, !"_entry_ptr", i1 false, i1 false}
!676 = !{ptr @.str.370, !677, !"<string literal>", i1 false, i1 false}
!677 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2368, i32 35}
!678 = !{ptr @.str.372, !679, !"<string literal>", i1 false, i1 false}
!679 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2378, i32 3}
!680 = !{ptr @at76_init_new_device._entry.371, !679, !"_entry", i1 false, i1 false}
!681 = !{ptr @at76_init_new_device._entry_ptr.373, !679, !"_entry_ptr", i1 false, i1 false}
!682 = !{ptr @.str.375, !683, !"<string literal>", i1 false, i1 false}
!683 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2385, i32 2}
!684 = !{ptr @at76_init_new_device._entry.374, !683, !"_entry", i1 false, i1 false}
!685 = !{ptr @at76_init_new_device._entry_ptr.376, !683, !"_entry_ptr", i1 false, i1 false}
!686 = !{ptr @.str.378, !687, !"<string literal>", i1 false, i1 false}
!687 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2389, i32 2}
!688 = !{ptr @at76_init_new_device._entry.377, !687, !"_entry", i1 false, i1 false}
!689 = !{ptr @at76_init_new_device._entry_ptr.379, !687, !"_entry_ptr", i1 false, i1 false}
!690 = !{ptr @.str.380, !691, !"<string literal>", i1 false, i1 false}
!691 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2235, i32 2}
!692 = !{ptr @.str.381, !691, !"<string literal>", i1 false, i1 false}
!693 = !{ptr @at76_alloc_urbs._entry, !691, !"_entry", i1 false, i1 false}
!694 = !{ptr @at76_alloc_urbs._entry_ptr, !691, !"_entry_ptr", i1 false, i1 false}
!695 = !{ptr @.str.383, !696, !"<string literal>", i1 false, i1 false}
!696 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2237, i32 2}
!697 = !{ptr @at76_alloc_urbs._entry.382, !696, !"_entry", i1 false, i1 false}
!698 = !{ptr @at76_alloc_urbs._entry_ptr.384, !696, !"_entry_ptr", i1 false, i1 false}
!699 = !{ptr @.str.386, !700, !"<string literal>", i1 false, i1 false}
!700 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2246, i32 3}
!701 = !{ptr @at76_alloc_urbs._entry.385, !700, !"_entry", i1 false, i1 false}
!702 = !{ptr @at76_alloc_urbs._entry_ptr.387, !700, !"_entry_ptr", i1 false, i1 false}
!703 = !{ptr @.str.389, !704, !"<string literal>", i1 false, i1 false}
!704 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2258, i32 3}
!705 = !{ptr @at76_alloc_urbs._entry.388, !704, !"_entry", i1 false, i1 false}
!706 = !{ptr @at76_alloc_urbs._entry_ptr.390, !704, !"_entry_ptr", i1 false, i1 false}
!707 = !{ptr @.str.392, !708, !"<string literal>", i1 false, i1 false}
!708 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2268, i32 3}
!709 = !{ptr @at76_alloc_urbs._entry.391, !708, !"_entry", i1 false, i1 false}
!710 = !{ptr @at76_alloc_urbs._entry_ptr.393, !708, !"_entry_ptr", i1 false, i1 false}
!711 = !{ptr @.str.395, !712, !"<string literal>", i1 false, i1 false}
!712 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2277, i32 2}
!713 = !{ptr @at76_alloc_urbs._entry.394, !712, !"_entry", i1 false, i1 false}
!714 = !{ptr @at76_alloc_urbs._entry_ptr.396, !712, !"_entry_ptr", i1 false, i1 false}
!715 = !{ptr @.str.397, !716, !"<string literal>", i1 false, i1 false}
!716 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 639, i32 3}
!717 = !{ptr @.str.398, !716, !"<string literal>", i1 false, i1 false}
!718 = !{ptr @at76_get_hw_config._entry, !716, !"_entry", i1 false, i1 false}
!719 = !{ptr @at76_get_hw_config._entry_ptr, !716, !"_entry_ptr", i1 false, i1 false}
!720 = !{ptr @.str.399, !721, !"<string literal>", i1 false, i1 false}
!721 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 649, i32 11}
!722 = !{ptr @.str.400, !723, !"<string literal>", i1 false, i1 false}
!723 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 650, i32 11}
!724 = !{ptr @.str.401, !725, !"<string literal>", i1 false, i1 false}
!725 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 651, i32 11}
!726 = !{ptr @.str.402, !727, !"<string literal>", i1 false, i1 false}
!727 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 652, i32 11}
!728 = !{ptr @.str.403, !729, !"<string literal>", i1 false, i1 false}
!729 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 653, i32 11}
!730 = !{ptr @.str.404, !731, !"<string literal>", i1 false, i1 false}
!731 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 654, i32 11}
!732 = !{ptr @.str.405, !733, !"<string literal>", i1 false, i1 false}
!733 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 655, i32 11}
!734 = !{ptr @.str.406, !735, !"<string literal>", i1 false, i1 false}
!735 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 656, i32 11}
!736 = !{ptr @.str.407, !737, !"<string literal>", i1 false, i1 false}
!737 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 657, i32 11}
!738 = !{ptr @at76_get_reg_domain.fd_tab, !739, !"fd_tab", i1 false, i1 false}
!739 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 648, i32 33}
!740 = !{ptr @at76_supported_band, !741, !"at76_supported_band", i1 false, i1 false}
!741 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2306, i32 40}
!742 = !{ptr @at76_channels, !743, !"at76_channels", i1 false, i1 false}
!743 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2289, i32 33}
!744 = !{ptr @at76_rates, !745, !"at76_rates", i1 false, i1 false}
!745 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2282, i32 30}
!746 = !{ptr @.str.408, !747, !"<string literal>", i1 false, i1 false}
!747 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2398, i32 2}
!748 = !{ptr @at76_delete_device._entry, !747, !"_entry", i1 false, i1 false}
!749 = !{ptr @at76_delete_device._entry_ptr, !747, !"_entry_ptr", i1 false, i1 false}
!750 = !{ptr @.str.410, !751, !"<string literal>", i1 false, i1 false}
!751 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2417, i32 2}
!752 = !{ptr @at76_delete_device._entry.409, !751, !"_entry", i1 false, i1 false}
!753 = !{ptr @at76_delete_device._entry_ptr.411, !751, !"_entry_ptr", i1 false, i1 false}
!754 = !{ptr @.str.413, !755, !"<string literal>", i1 false, i1 false}
!755 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2425, i32 2}
!756 = !{ptr @at76_delete_device._entry.412, !755, !"_entry", i1 false, i1 false}
!757 = !{ptr @at76_delete_device._entry_ptr.414, !755, !"_entry_ptr", i1 false, i1 false}
!758 = !{ptr @at76_delete_device._entry.415, !759, !"_entry", i1 false, i1 false}
!759 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2429, i32 2}
!760 = !{ptr @at76_delete_device._entry_ptr.416, !759, !"_entry_ptr", i1 false, i1 false}
!761 = !{ptr @.str.417, !762, !"<string literal>", i1 false, i1 false}
!762 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2554, i32 2}
!763 = !{ptr @.str.418, !762, !"<string literal>", i1 false, i1 false}
!764 = !{ptr @at76_disconnect._entry, !762, !"_entry", i1 false, i1 false}
!765 = !{ptr @at76_disconnect._entry_ptr, !762, !"_entry_ptr", i1 false, i1 false}
!766 = !{ptr @.str.420, !767, !"<string literal>", i1 false, i1 false}
!767 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2557, i32 2}
!768 = !{ptr @at76_disconnect._entry.419, !767, !"_entry", i1 false, i1 false}
!769 = !{ptr @at76_disconnect._entry_ptr.421, !767, !"_entry_ptr", i1 false, i1 false}
!770 = !{ptr @dev_table, !771, !"dev_table", i1 false, i1 false}
!771 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 128, i32 35}
!772 = !{ptr @.str.422, !773, !"<string literal>", i1 false, i1 false}
!773 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 108, i32 26}
!774 = !{ptr @.str.423, !775, !"<string literal>", i1 false, i1 false}
!775 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 109, i32 26}
!776 = !{ptr @.str.424, !777, !"<string literal>", i1 false, i1 false}
!777 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 110, i32 18}
!778 = !{ptr @.str.425, !779, !"<string literal>", i1 false, i1 false}
!779 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 111, i32 22}
!780 = !{ptr @.str.426, !781, !"<string literal>", i1 false, i1 false}
!781 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 112, i32 18}
!782 = !{ptr @.str.427, !783, !"<string literal>", i1 false, i1 false}
!783 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 113, i32 23}
!784 = !{ptr @.str.428, !785, !"<string literal>", i1 false, i1 false}
!785 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 114, i32 19}
!786 = !{ptr @.str.429, !787, !"<string literal>", i1 false, i1 false}
!787 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 115, i32 21}
!788 = !{ptr @firmwares, !789, !"firmwares", i1 false, i1 false}
!789 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 106, i32 23}
!790 = !{ptr @__param_str_debug, !23, !"__param_str_debug", i1 false, i1 false}
!791 = !{ptr @at76_debug, !792, !"at76_debug", i1 false, i1 false}
!792 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 101, i32 13}
!793 = !{ptr @.str.430, !794, !"<string literal>", i1 false, i1 false}
!794 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2573, i32 2}
!795 = !{ptr @.str.431, !794, !"<string literal>", i1 false, i1 false}
!796 = !{ptr @at76_mod_init._entry, !794, !"_entry", i1 false, i1 false}
!797 = !{ptr @at76_mod_init._entry_ptr, !794, !"_entry_ptr", i1 false, i1 false}
!798 = !{ptr @.str.433, !799, !"<string literal>", i1 false, i1 false}
!799 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2578, i32 3}
!800 = !{ptr @at76_mod_init._entry.432, !799, !"_entry", i1 false, i1 false}
!801 = !{ptr @at76_mod_init._entry_ptr.434, !799, !"_entry_ptr", i1 false, i1 false}
!802 = !{ptr @.str.435, !803, !"<string literal>", i1 false, i1 false}
!803 = !{!"../drivers/net/wireless/atmel/at76c50x-usb.c", i32 2581, i32 31}
!804 = !{i32 1, !"wchar_size", i32 2}
!805 = !{i32 1, !"min_enum_size", i32 4}
!806 = !{i32 8, !"branch-target-enforcement", i32 0}
!807 = !{i32 8, !"sign-return-address", i32 0}
!808 = !{i32 8, !"sign-return-address-all", i32 0}
!809 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!810 = !{i32 7, !"uwtable", i32 1}
!811 = !{i32 7, !"frame-pointer", i32 2}
!812 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!813 = !{i64 2148761940, i64 2148761945, i64 2148761958, i64 2148762002, i64 2148762036, i64 2148762057}
!814 = !{i8 0, i8 2}
!815 = !{!"branch_weights", i32 2000, i32 1}
