; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/zydas/zd1201.c_pt.bc'
source_filename = "../drivers/net/wireless/zydas/zd1201.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iw_handler_def = type { ptr, i16, i16, i16, ptr, ptr, ptr }
%struct.iw_priv_args = type { i32, i16, i16, [16 x i8] }
%struct.atomic_t = type { i32 }
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
%struct.firmware = type { i32, ptr, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.127, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.127 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.zd1201 = type { ptr, i32, ptr, %struct.iw_statistics, i32, i32, i32, ptr, ptr, [3000 x i8], i32, %struct.wait_queue_head, i32, %struct.hlist_head, [3000 x i8], i32, [33 x i8], i32, i32, i32, i32, i32, i32, [4 x [13 x i8]], [4 x i32] }
%struct.iw_statistics = type { i16, %struct.iw_quality, %struct.iw_discarded, %struct.iw_missed }
%struct.iw_quality = type { i8, i8, i8, i8 }
%struct.iw_discarded = type { i32, i32, i32, i32, i32 }
%struct.iw_missed = type { i32 }
%struct.zd1201_frag = type { %struct.hlist_node, i32, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%union.iwreq_data = type { %struct.iw_point, [8 x i8] }
%struct.iw_point = type { ptr, i16, i16 }
%struct.sockaddr = type { i16, [14 x i8] }
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
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.iw_freq = type { i32, i16, i8, i8 }
%struct.iw_range = type { i32, i32, i32, i16, i8, i8, [6 x i32], i32, %struct.iw_quality, %struct.iw_quality, i8, [32 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [8 x i16], i8, i8, i8, i16, i8, [8 x i32], i8, i8, i16, i16, i16, i32, i32, i32, i32, i16, i8, [32 x %struct.iw_freq], i32 }
%struct.iw_event = type { i16, i16, %union.iwreq_data }
%struct.iw_param = type { i32, i8, i8, i16 }

@__UNIQUE_ID_author348 = internal constant [48 x i8] c"zd1201.author=Jeroen Vreeken <pe1rxq@amsat.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description349 = internal constant [71 x i8] c"zd1201.description=Driver for ZyDAS ZD1201 based USB Wireless adapters\00", section ".modinfo", align 1
@__UNIQUE_ID_version350 = internal constant [20 x i8] c"zd1201.version=0.15\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"zd1201\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0.15\00", [27 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file351 = internal constant [46 x i8] c"zd1201.file=drivers/net/wireless/zydas/zd1201\00", section ".modinfo", align 1
@__UNIQUE_ID_license352 = internal constant [19 x i8] c"zd1201.license=GPL\00", section ".modinfo", align 1
@__param_str_ap = internal constant [10 x i8] c"zd1201.ap\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@ap = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_ap = internal constant %struct.kernel_param { ptr @__param_str_ap, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @ap } }, section "__param", align 4
@__UNIQUE_ID_aptype353 = internal constant [23 x i8] c"zd1201.parmtype=ap:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ap354 = internal constant [64 x i8] c"zd1201.parm=ap:If non-zero Access Point firmware will be loaded\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware355 = internal constant [29 x i8] c"zd1201.firmware=zd1201-ap.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware356 = internal constant [26 x i8] c"zd1201.firmware=zd1201.fw\00", section ".modinfo", align 1
@__initcall__kmod_zd1201__362_1906_zd1201_usb_init6 = internal global ptr @zd1201_usb_init, section ".initcall6.init", align 4
@zd1201_usb = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @zd1201_probe, ptr @zd1201_disconnect, ptr null, ptr @zd1201_suspend, ptr @zd1201_resume, ptr null, ptr null, ptr null, ptr @zd1201_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 32 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_zd1201_usb_exit = internal global ptr @zd1201_usb_exit, section ".exitcall.exit", align 4
@zd1201_table = internal constant { [7 x %struct.usb_device_id], [56 x i8] } { [7 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1414, i16 13312, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2766, i16 4609, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1293, i16 24657, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3504, i16 26659, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4164, i16 -32764, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 4164, i16 -32763, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@zd1201_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&zd->rxdataq\00", [19 x i8] zeroinitializer }, align 32
@zd1201_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1750, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"zd1201 firmware upload failed: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"zd1201_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/net/wireless/zydas/zd1201.c\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@zd1201_probe._entry_ptr = internal global ptr @zd1201_probe._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@zd1201_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @zd1201_net_open, ptr @zd1201_net_stop, ptr @zd1201_hard_start_xmit, ptr null, ptr null, ptr null, ptr @zd1201_set_multicast, ptr @zd1201_set_mac_address, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @zd1201_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@zd1201_iw_handlers = internal constant { %struct.iw_handler_def, [40 x i8] } { %struct.iw_handler_def { ptr @zd1201_iw_handler, i16 46, i16 6, i16 5, ptr @zd1201_private_handler, ptr @zd1201_private_args, ptr @zd1201_get_wireless_stats }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wlan%d\00", [25 x i8] zeroinitializer }, align 32
@zd1201_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 1809, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: ZD1201 USB Wireless interface\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@zd1201_probe._entry_ptr.13 = internal global ptr @zd1201_probe._entry.10, section ".printk_index", align 4
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"zd1201-ap.fw\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"zd1201.fw\00", [22 x i8] zeroinitializer }, align 32
@zd1201_fw_upload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.6, i32 65, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to load %s firmware file!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"zd1201_fw_upload\00", [47 x i8] zeroinitializer }, align 32
@zd1201_fw_upload._entry_ptr = internal global ptr @zd1201_fw_upload._entry, section ".printk_index", align 4
@zd1201_fw_upload._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.6, i32 66, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Make sure the hotplug firmware loader is installed.\0A\00", [43 x i8] zeroinitializer }, align 32
@zd1201_fw_upload._entry_ptr.20 = internal global ptr @zd1201_fw_upload._entry.18, section ".printk_index", align 4
@zd1201_fw_upload._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.6, i32 67, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Goto http://linux-lc100020.sourceforge.net for more info.\0A\00", [37 x i8] zeroinitializer }, align 32
@zd1201_fw_upload._entry_ptr.23 = internal global ptr @zd1201_fw_upload._entry.21, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@zd1201_usbrx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.6, i32 212, ptr @.str.26, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: rx urb failed: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"zd1201_usbrx\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@zd1201_usbrx._entry_ptr = internal global ptr @zd1201_usbrx._entry, section ".printk_index", align 4
@zd1201_tx_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.6, i32 840, ptr @.str.26, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: TX timeout, shooting down urb\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"zd1201_tx_timeout\00", [46 x i8] zeroinitializer }, align 32
@zd1201_tx_timeout._entry_ptr = internal global ptr @zd1201_tx_timeout._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@zd1201_iw_handler = internal constant { [46 x ptr], [40 x i8] } { [46 x ptr] [ptr @zd1201_config_commit, ptr @zd1201_get_name, ptr null, ptr null, ptr @zd1201_set_freq, ptr @zd1201_get_freq, ptr @zd1201_set_mode, ptr @zd1201_get_mode, ptr null, ptr null, ptr null, ptr @zd1201_get_range, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @zd1201_get_wap, ptr null, ptr null, ptr @zd1201_set_scan, ptr @zd1201_get_scan, ptr @zd1201_set_essid, ptr @zd1201_get_essid, ptr null, ptr @zd1201_get_nick, ptr null, ptr null, ptr @zd1201_set_rate, ptr @zd1201_get_rate, ptr @zd1201_set_rts, ptr @zd1201_get_rts, ptr @zd1201_set_frag, ptr @zd1201_get_frag, ptr null, ptr null, ptr @zd1201_set_retry, ptr @zd1201_get_retry, ptr @zd1201_set_encode, ptr @zd1201_get_encode, ptr @zd1201_set_power, ptr @zd1201_get_power], [40 x i8] zeroinitializer }, align 32
@zd1201_private_handler = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @zd1201_set_hostauth, ptr @zd1201_get_hostauth, ptr @zd1201_auth_sta, ptr null, ptr @zd1201_set_maxassoc, ptr @zd1201_get_maxassoc], [40 x i8] zeroinitializer }, align 32
@zd1201_private_args = internal constant { [5 x %struct.iw_priv_args], [40 x i8] } { [5 x %struct.iw_priv_args] [%struct.iw_priv_args { i32 35808, i16 18433, i16 0, [16 x i8] c"sethostauth\00\00\00\00\00" }, %struct.iw_priv_args { i32 35809, i16 0, i16 18433, [16 x i8] c"gethostauth\00\00\00\00\00" }, %struct.iw_priv_args { i32 35810, i16 26625, i16 0, [16 x i8] c"authstation\00\00\00\00\00" }, %struct.iw_priv_args { i32 35812, i16 18433, i16 0, [16 x i8] c"setmaxassoc\00\00\00\00\00" }, %struct.iw_priv_args { i32 35813, i16 0, i16 18433, [16 x i8] c"getmaxassoc\00\00\00\00\00" }], [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IEEE 802.11b\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\00-*#\00\00", [26 x i8] zeroinitializer }, align 32
@zd1201_get_mode.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str.6, ptr @.str.32, i8 1, i8 2, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"zd1201_get_mode\00", [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unknown porttype: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@zd1201_getconfig.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.6, ptr @.str.34, i8 0, i8 110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"zd1201_getconfig\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"riddatalen mismatches, expected=%u, (packet=%u) length=%u, rid=0x%04X, rid_fid=0x%04X\0A\00", [41 x i8] zeroinitializer }, align 32
@zd1201_getconfig.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.6, ptr @.str.35, i8 0, i8 114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Packet type mismatch: 0x%x not 0x3\0A\00", [60 x i8] zeroinitializer }, align 32
@zd1201_getconfig.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.6, ptr @.str.36, i8 0, i8 118, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Rx Resource packet type error: %02X\0A\00", [59 x i8] zeroinitializer }, align 32
@zd1201_setconfig.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.37, ptr @.str.6, ptr @.str.38, i8 0, i8 -111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"zd1201_setconfig\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wrong or no RID received\0A\00", [38 x i8] zeroinitializer }, align 32
@zd1201_usbfree._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.6, i32 134, ptr @.str.26, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: urb failed: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"zd1201_usbfree\00", [17 x i8] zeroinitializer }, align 32
@zd1201_usbfree._entry_ptr = internal global ptr @zd1201_usbfree._entry, section ".printk_index", align 4
@switch.table.zd1201_get_mode = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 1, i32 2, i32 4, i32 8, i32 1, i32 1, i32 3], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 4294967188, i64 4294967212, i64 4294967221, i64 4294967234, i64 4294967264, i64 4294967277, i64 4294967294]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 16, i64 242, i64 498, i64 754]
@__sancov_gen_cov_switch_values.43 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.44 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 6, i64 8]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 32, i64 1000000, i64 2000000, i64 5500000]
@__sancov_gen_cov_switch_values.46 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 5, i64 11]
@__sancov_gen_cov_switch_values.47 = internal global [9 x i64] [i64 7, i64 32, i64 4294967188, i64 4294967212, i64 4294967221, i64 4294967234, i64 4294967264, i64 4294967277, i64 4294967294]
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 41, i32 1 }
@___asan_gen_.57 = private unnamed_addr constant [3 x i8] c"ap\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 35, i32 12 }
@___asan_gen_.60 = private unnamed_addr constant [11 x i8] c"zd1201_usb\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1896, i32 26 }
@___asan_gen_.63 = private unnamed_addr constant [13 x i8] c"zd1201_table\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 25, i32 35 }
@___asan_gen_.66 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1745, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1750, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [18 x i8] c"zd1201_netdev_ops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1713, i32 36 }
@___asan_gen_.93 = private unnamed_addr constant [19 x i8] c"zd1201_iw_handlers\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1703, i32 36 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1781, i32 20 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1808, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 59, i32 12 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 61, i32 12 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 65, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 66, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 67, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 211, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 839, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant [18 x i8] c"zd1201_iw_handler\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1555, i32 25 }
@___asan_gen_.159 = private unnamed_addr constant [23 x i8] c"zd1201_private_handler\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1681, i32 25 }
@___asan_gen_.162 = private unnamed_addr constant [20 x i8] c"zd1201_private_args\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1690, i32 34 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 900, i32 15 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 967, i32 20 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 1031, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 441, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 458, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 473, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 581, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.201 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.202 = private constant [39 x i8] c"../drivers/net/wireless/zydas/zd1201.c\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 133, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant [29 x i8] c"switch.table.zd1201_get_mode\00", align 1
@llvm.compiler.used = appending global [75 x ptr] [ptr @__UNIQUE_ID_ap354, ptr @__UNIQUE_ID_aptype353, ptr @__UNIQUE_ID_author348, ptr @__UNIQUE_ID_description349, ptr @__UNIQUE_ID_file351, ptr @__UNIQUE_ID_firmware355, ptr @__UNIQUE_ID_firmware356, ptr @__UNIQUE_ID_license352, ptr @__UNIQUE_ID_version350, ptr @__exitcall_zd1201_usb_exit, ptr @__initcall__kmod_zd1201__362_1906_zd1201_usb_init6, ptr @__modver_attr, ptr @__param_ap, ptr @zd1201_fw_upload._entry, ptr @zd1201_fw_upload._entry.18, ptr @zd1201_fw_upload._entry.21, ptr @zd1201_fw_upload._entry_ptr, ptr @zd1201_fw_upload._entry_ptr.20, ptr @zd1201_fw_upload._entry_ptr.23, ptr @zd1201_probe._entry, ptr @zd1201_probe._entry.10, ptr @zd1201_probe._entry_ptr, ptr @zd1201_probe._entry_ptr.13, ptr @zd1201_tx_timeout._entry, ptr @zd1201_tx_timeout._entry_ptr, ptr @zd1201_usb_exit, ptr @zd1201_usbfree._entry, ptr @zd1201_usbfree._entry_ptr, ptr @zd1201_usbrx._entry, ptr @zd1201_usbrx._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ap, ptr @zd1201_usb, ptr @zd1201_table, ptr @zd1201_probe.__key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @zd1201_netdev_ops, ptr @zd1201_iw_handlers, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @zd1201_iw_handler, ptr @zd1201_private_handler, ptr @zd1201_private_args, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @switch.table.zd1201_get_mode], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ap to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1201_usb to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1201_table to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1201_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1201_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1201_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1201_iw_handlers to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1201_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1201_fw_upload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1201_fw_upload._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1201_fw_upload._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1201_usbrx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1201_tx_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1201_iw_handler to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1201_private_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1201_private_args to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zd1201_usbfree._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.zd1201_get_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1201_usb_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @zd1201_usb, ptr noundef null, ptr noundef nonnull @.str.1) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @zd1201_usb_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_deregister(ptr noundef nonnull @zd1201_usb) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1201_probe(ptr nocapture noundef %interface, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %zdval.i140 = alloca i16, align 2
  %zdval.i138 = alloca i16, align 2
  %zdval.i = alloca i16, align 2
  %zdmax.i = alloca i16, align 2
  %fw_entry.i = alloca ptr, align 4
  %buf = alloca [34 x i8], align 2
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %buf) #12
  %0 = call ptr @memset(ptr %buf, i32 255, i32 34)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #12
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 1
  %1 = call ptr @memset(ptr %addr, i32 255, i32 6)
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -128
  %call1 = tail call ptr @alloc_etherdev_mqs(i32 noundef 6260, i32 noundef 1, i32 noundef 1) #12
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i130 = getelementptr i8, ptr %call1, i32 2304
  %dev3 = getelementptr i8, ptr %call1, i32 2312
  %4 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1, ptr %dev3, align 4
  %5 = load i32, ptr @ap, align 4
  %ap = getelementptr i8, ptr %call1, i32 8432
  %6 = ptrtoint ptr %ap to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %ap, align 4
  %7 = ptrtoint ptr %add.ptr.i130 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr.i, ptr %add.ptr.i130, align 4
  %removed = getelementptr i8, ptr %call1, i32 2308
  %8 = ptrtoint ptr %removed to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %removed, align 4
  %rxdataq = getelementptr i8, ptr %call1, i32 5372
  tail call void @__init_waitqueue_head(ptr noundef %rxdataq, ptr noundef nonnull @.str.3, ptr noundef nonnull @zd1201_probe.__key) #12
  %fraglist = getelementptr i8, ptr %call1, i32 5428
  %9 = ptrtoint ptr %fraglist to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %fraglist, align 4
  %10 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ap, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_entry.i) #12
  %12 = ptrtoint ptr %fw_entry.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw_entry.i, align 4, !annotation !124
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  %.str.15..str.14.i = select i1 %tobool.not.i, ptr @.str.15, ptr @.str.14
  %call.i = call i32 @request_firmware(ptr noundef nonnull %fw_entry.i, ptr noundef nonnull %.str.15..str.14.i, ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end13.i, label %zd1201_fw_upload.exit.thread

zd1201_fw_upload.exit.thread:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.16, ptr noundef nonnull %.str.15..str.14.i) #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.19) #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.22) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_entry.i) #12
  br label %do.end11

if.end13.i:                                       ; preds = %if.end
  %13 = ptrtoint ptr %fw_entry.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fw_entry.i, align 4
  %data14.i = getelementptr inbounds %struct.firmware, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %data14.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data14.i, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %14, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 2592, i32 noundef 1024) #16
  %tobool16.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not.i, label %if.end13.i.zd1201_fw_upload.exit_crit_edge, label %if.end13.i.while.cond.i_crit_edge

if.end13.i.while.cond.i_crit_edge:                ; preds = %if.end13.i
  br label %while.cond.i

if.end13.i.zd1201_fw_upload.exit_crit_edge:       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %zd1201_fw_upload.exit

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end13.i.while.cond.i_crit_edge
  %data.0.i = phi ptr [ %add.ptr.i131, %while.body.i.while.cond.i_crit_edge ], [ %16, %if.end13.i.while.cond.i_crit_edge ]
  %len.0.i = phi i32 [ %sub.i, %while.body.i.while.cond.i_crit_edge ], [ %18, %if.end13.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0.i)
  %cmp.not.i = icmp eq i32 %len.0.i, 0
  br i1 %cmp.not.i, label %while.end.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %20 = call i32 @llvm.umin.i32(i32 %len.0.i, i32 1024) #12
  %21 = call ptr @memcpy(ptr %call7.i.i, ptr %data.0.i, i32 %20)
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i, align 8
  %shl.i.i = shl i32 %23, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %conv.i = trunc i32 %20 to i16
  %call21.i = call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext %conv.i, i32 noundef 1000) #12
  %cmp22.i = icmp slt i32 %call21.i, 0
  %sub.i = sub i32 %len.0.i, %20
  %add.ptr.i131 = getelementptr i8, ptr %data.0.i, i32 %20
  br i1 %cmp22.i, label %while.body.i.zd1201_fw_upload.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

while.body.i.zd1201_fw_upload.exit_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %zd1201_fw_upload.exit

while.end.i:                                      ; preds = %while.cond.i
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i, align 8
  %shl.i79.i = shl i32 %25, 8
  %or27.i = or i32 %shl.i79.i, -2147483648
  %call28.i = call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or27.i, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp29.i = icmp slt i32 %call28.i, 0
  br i1 %cmp29.i, label %while.end.i.zd1201_fw_upload.exit_crit_edge, label %if.end32.i

while.end.i.zd1201_fw_upload.exit_crit_edge:      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %zd1201_fw_upload.exit

if.end32.i:                                       ; preds = %while.end.i
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i, align 8
  %shl.i80.i = shl i32 %27, 8
  %or35.i = or i32 %shl.i80.i, -2147483520
  %call36.i = call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or35.i, i8 noundef zeroext 4, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 1, i32 noundef 1000) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %cmp37.i = icmp slt i32 %call36.i, 0
  br i1 %cmp37.i, label %if.end32.i.zd1201_fw_upload.exit_crit_edge, label %if.end40.i

if.end32.i.zd1201_fw_upload.exit_crit_edge:       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %zd1201_fw_upload.exit

if.end40.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %ret.0.copyload.i = load i8, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %ret.0.copyload.i)
  %tobool42.not.i = icmp sgt i8 %ret.0.copyload.i, -1
  %spec.select = select i1 %tobool42.not.i, i32 0, i32 -5
  br label %zd1201_fw_upload.exit

zd1201_fw_upload.exit:                            ; preds = %if.end40.i, %if.end32.i.zd1201_fw_upload.exit_crit_edge, %while.end.i.zd1201_fw_upload.exit_crit_edge, %while.body.i.zd1201_fw_upload.exit_crit_edge, %if.end13.i.zd1201_fw_upload.exit_crit_edge
  %err.0.i = phi i32 [ %call28.i, %while.end.i.zd1201_fw_upload.exit_crit_edge ], [ %call36.i, %if.end32.i.zd1201_fw_upload.exit_crit_edge ], [ -12, %if.end13.i.zd1201_fw_upload.exit_crit_edge ], [ %spec.select, %if.end40.i ], [ %call21.i, %while.body.i.zd1201_fw_upload.exit_crit_edge ]
  call void @kfree(ptr noundef %call7.i.i) #12
  %29 = ptrtoint ptr %fw_entry.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fw_entry.i, align 4
  call void @release_firmware(ptr noundef %30) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_entry.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool7.not = icmp eq i32 %err.0.i, 0
  br i1 %tobool7.not, label %if.end13, label %zd1201_fw_upload.exit.do.end11_crit_edge

zd1201_fw_upload.exit.do.end11_crit_edge:         ; preds = %zd1201_fw_upload.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11

do.end11:                                         ; preds = %zd1201_fw_upload.exit.do.end11_crit_edge, %zd1201_fw_upload.exit.thread
  %retval.0.i144 = phi i32 [ %call.i, %zd1201_fw_upload.exit.thread ], [ %err.0.i, %zd1201_fw_upload.exit.do.end11_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %retval.0.i144) #15
  br label %err_zd

if.end13:                                         ; preds = %zd1201_fw_upload.exit
  %endp_in = getelementptr i8, ptr %call1, i32 2348
  %31 = ptrtoint ptr %endp_in to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %endp_in, align 4
  %endp_out = getelementptr i8, ptr %call1, i32 2352
  %32 = ptrtoint ptr %endp_out to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %endp_out, align 4
  %endp_out2 = getelementptr i8, ptr %call1, i32 2356
  %33 = ptrtoint ptr %endp_out2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %endp_out2, align 4
  %call14 = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #12
  %rx_urb = getelementptr i8, ptr %call1, i32 2360
  %34 = ptrtoint ptr %rx_urb to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call14, ptr %rx_urb, align 4
  %call15 = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #12
  %tx_urb = getelementptr i8, ptr %call1, i32 2364
  %35 = ptrtoint ptr %tx_urb to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call15, ptr %tx_urb, align 4
  %36 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rx_urb, align 4
  %tobool17.not = icmp eq ptr %37, null
  %tobool19.not = icmp eq ptr %call15, null
  %or.cond = select i1 %tobool17.not, i1 true, i1 %tobool19.not
  br i1 %or.cond, label %if.end13.err_zd_crit_edge, label %if.end13.while.body_crit_edge

if.end13.while.body_crit_edge:                    ; preds = %if.end13
  br label %while.body

if.end13.err_zd_crit_edge:                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_zd

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end13.while.body_crit_edge
  %__ms.0148 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 100, %if.end13.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.0148, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %38(i32 noundef 214748000) #12
  %tobool22.not = icmp eq i32 %dec, 0
  br i1 %tobool22.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %zdmax.i) #12
  %39 = ptrtoint ptr %zdmax.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 -1, ptr %zdmax.i, align 2, !annotation !124
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %40 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 3520, i32 noundef 3000) #16
  %tobool.not.i132 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i132, label %while.end.zd1201_drvr_start.exit.thread_crit_edge, label %if.end.i

while.end.zd1201_drvr_start.exit.thread_crit_edge: ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %zd1201_drvr_start.exit.thread

if.end.i:                                         ; preds = %while.end
  %41 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rx_urb, align 4
  %43 = ptrtoint ptr %add.ptr.i130 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr.i130, align 4
  %45 = ptrtoint ptr %endp_in to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %endp_in, align 4
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %44, align 8
  %shl.i.i133 = shl i32 %48, 8
  %shl1.i.i = shl i32 %46, 15
  %or.i.i = or i32 %shl1.i.i, %shl.i.i133
  %or3.i = or i32 %or.i.i, -1073741696
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %42, i32 0, i32 8
  %49 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %44, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %42, i32 0, i32 10
  %50 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or3.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %42, i32 0, i32 14
  %51 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call7.i.i.i, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %42, i32 0, i32 19
  %52 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 3000, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %42, i32 0, i32 28
  %53 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @zd1201_usbrx, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %42, i32 0, i32 27
  %54 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %add.ptr.i130, ptr %context4.i.i, align 4
  %55 = load ptr, ptr %rx_urb, align 4
  %call5.i = call i32 @usb_submit_urb(ptr noundef %55, i32 noundef 3264) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %err_buffer.i

if.end8.i:                                        ; preds = %if.end.i
  %call9.i = call fastcc i32 @zd1201_docmd(ptr noundef %add.ptr.i130, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end8.i.err_urb.i_crit_edge

if.end8.i.err_urb.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_urb.i

if.end12.i:                                       ; preds = %if.end8.i
  %call13.i = call fastcc i32 @zd1201_getconfig(ptr noundef %add.ptr.i130, i32 noundef 64928, ptr noundef nonnull %zdmax.i, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end12.i.err_urb.i_crit_edge

if.end12.i.err_urb.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_urb.i

if.end16.i:                                       ; preds = %if.end12.i
  %56 = ptrtoint ptr %zdmax.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %zdmax.i, align 2
  %58 = call i16 @llvm.bswap.i16(i16 %57) #12
  %conv.i134 = sext i16 %58 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %cmp44.i = icmp sgt i16 %58, 0
  br i1 %cmp44.i, label %if.end16.i.for.body.i_crit_edge, label %if.end16.i.if.end26_crit_edge

if.end16.i.if.end26_crit_edge:                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.end16.i.for.body.i_crit_edge:                  ; preds = %if.end16.i
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.045.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i134
  br i1 %exitcond.not.i, label %for.cond.i.if.end26_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.cond.i.if.end26_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end16.i.for.body.i_crit_edge
  %i.045.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end16.i.for.body.i_crit_edge ]
  %call18.i = call fastcc i32 @zd1201_docmd(ptr noundef %add.ptr.i130, i32 noundef 10, i32 noundef 1514, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %for.cond.i, label %for.body.i.err_urb.i_crit_edge

for.body.i.err_urb.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_urb.i

err_urb.i:                                        ; preds = %for.body.i.err_urb.i_crit_edge, %if.end12.i.err_urb.i_crit_edge, %if.end8.i.err_urb.i_crit_edge
  %err.0.i135 = phi i32 [ %call9.i, %if.end8.i.err_urb.i_crit_edge ], [ %call13.i, %if.end12.i.err_urb.i_crit_edge ], [ %call18.i, %for.body.i.err_urb.i_crit_edge ]
  %59 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rx_urb, align 4
  call void @usb_kill_urb(ptr noundef %60) #12
  br label %zd1201_drvr_start.exit.thread

err_buffer.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %zd1201_drvr_start.exit.thread

zd1201_drvr_start.exit.thread:                    ; preds = %err_buffer.i, %err_urb.i, %while.end.zd1201_drvr_start.exit.thread_crit_edge
  %retval.0.i136.ph = phi i32 [ -12, %while.end.zd1201_drvr_start.exit.thread_crit_edge ], [ %err.0.i135, %err_urb.i ], [ %call5.i, %err_buffer.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdmax.i) #12
  br label %err_zd

if.end26:                                         ; preds = %for.cond.i.if.end26_crit_edge, %if.end16.i.if.end26_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdmax.i) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %zdval.i) #12
  %61 = ptrtoint ptr %zdval.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 2057, ptr %zdval.i, align 2
  %call.i137 = call fastcc i32 @zd1201_setconfig(ptr noundef %add.ptr.i130, i32 noundef 64519, ptr noundef nonnull %zdval.i, i32 noundef 2, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137)
  %tobool28.not = icmp eq i32 %call.i137, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.err_start_crit_edge

if.end26.err_start_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_start

if.end30:                                         ; preds = %if.end26
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %zdval.i138) #12
  %62 = ptrtoint ptr %zdval.i138 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 3840, ptr %zdval.i138, align 2
  %call.i139 = call fastcc i32 @zd1201_setconfig(ptr noundef %add.ptr.i130, i32 noundef 64644, ptr noundef nonnull %zdval.i138, i32 noundef 2, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i138) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139)
  %tobool32.not = icmp eq i32 %call.i139, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.err_start_crit_edge

if.end30.err_start_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_start

if.end34:                                         ; preds = %if.end30
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 16
  %63 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @zd1201_netdev_ops, ptr %netdev_ops, align 8
  %wireless_handlers = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 42
  %64 = ptrtoint ptr %wireless_handlers to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @zd1201_iw_handlers, ptr %wireless_handlers, align 8
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 115
  %65 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 2000, ptr %watchdog_timeo, align 4
  %66 = call ptr @memcpy(ptr %call1, ptr @.str.9, i32 7)
  %call37 = call fastcc i32 @zd1201_getconfig(ptr noundef %add.ptr.i130, i32 noundef 64513, ptr noundef nonnull %addr, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end34.err_start_crit_edge

if.end34.err_start_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_start

if.end40:                                         ; preds = %if.end34
  call void @dev_addr_mod(ptr noundef %call1, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #12
  %67 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 0, ptr %buf, align 2
  %call44 = call fastcc i32 @zd1201_setconfig(ptr noundef %add.ptr.i130, i32 noundef 64514, ptr noundef nonnull %buf, i32 noundef 34, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end40.err_start_crit_edge

if.end40.err_start_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_start

if.end47:                                         ; preds = %if.end40
  %68 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool49.not = icmp eq i32 %69, 0
  %. = select i1 %tobool49.not, i16 256, i16 1536
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %zdval.i140) #12
  %70 = ptrtoint ptr %zdval.i140 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %., ptr %zdval.i140, align 2
  %call.i141 = call fastcc i32 @zd1201_setconfig(ptr noundef %add.ptr.i130, i32 noundef 64512, ptr noundef nonnull %zdval.i140, i32 noundef 2, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i140) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i141)
  %tobool53.not = icmp eq i32 %call.i141, 0
  br i1 %tobool53.not, label %if.end55, label %if.end47.err_start_crit_edge

if.end47.err_start_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_start

if.end55:                                         ; preds = %if.end47
  %parent = getelementptr inbounds %struct.net_device, ptr %call1, i32 0, i32 133, i32 1
  %71 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %3, ptr %parent, align 8
  %call58 = call i32 @register_netdev(ptr noundef nonnull %call1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %do.end64, label %if.end55.err_start_crit_edge

if.end55.err_start_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_start

do.end64:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.11, ptr noundef nonnull %call1) #15
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %72 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %add.ptr.i130, ptr %driver_data.i.i, align 4
  %call68 = call fastcc i32 @zd1201_enable(ptr noundef %add.ptr.i130)
  %call69 = call fastcc i32 @zd1201_disable(ptr noundef %add.ptr.i130)
  br label %cleanup

err_start:                                        ; preds = %if.end55.err_start_crit_edge, %if.end47.err_start_crit_edge, %if.end40.err_start_crit_edge, %if.end34.err_start_crit_edge, %if.end30.err_start_crit_edge, %if.end26.err_start_crit_edge
  %err.0 = phi i32 [ %call.i137, %if.end26.err_start_crit_edge ], [ %call.i139, %if.end30.err_start_crit_edge ], [ %call37, %if.end34.err_start_crit_edge ], [ %call44, %if.end40.err_start_crit_edge ], [ %call.i141, %if.end47.err_start_crit_edge ], [ %call58, %if.end55.err_start_crit_edge ]
  %73 = call fastcc i32 @zd1201_docmd(ptr noundef %add.ptr.i130, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %err_zd

err_zd:                                           ; preds = %err_start, %zd1201_drvr_start.exit.thread, %if.end13.err_zd_crit_edge, %do.end11
  %err.1 = phi i32 [ %retval.0.i144, %do.end11 ], [ %err.0, %err_start ], [ -12, %if.end13.err_zd_crit_edge ], [ %retval.0.i136.ph, %zd1201_drvr_start.exit.thread ]
  %tx_urb71 = getelementptr i8, ptr %call1, i32 2364
  %74 = ptrtoint ptr %tx_urb71 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %tx_urb71, align 4
  call void @usb_free_urb(ptr noundef %75) #12
  %rx_urb72 = getelementptr i8, ptr %call1, i32 2360
  %76 = ptrtoint ptr %rx_urb72 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rx_urb72, align 4
  call void @usb_free_urb(ptr noundef %77) #12
  call void @free_netdev(ptr noundef nonnull %call1) #12
  br label %cleanup

cleanup:                                          ; preds = %err_zd, %do.end64, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_zd ], [ 0, %do.end64 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #12
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %buf) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zd1201_disconnect(ptr nocapture noundef %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i.i, align 4
  %fraglist = getelementptr inbounds %struct.zd1201, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %fraglist to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fraglist, align 4
  %tobool3.not56 = icmp eq ptr %4, null
  br i1 %tobool3.not56, label %if.end.for.end_crit_edge, label %if.end.land.rhs_crit_edge

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  br label %land.rhs

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

land.rhs:                                         ; preds = %hlist_del_init.exit.land.rhs_crit_edge, %if.end.land.rhs_crit_edge
  %frag.057 = phi ptr [ %6, %hlist_del_init.exit.land.rhs_crit_edge ], [ %4, %if.end.land.rhs_crit_edge ]
  %5 = ptrtoint ptr %frag.057 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %frag.057, align 4
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %frag.057, i32 0, i32 1
  %7 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.not.i, label %land.rhs.hlist_del_init.exit_crit_edge, label %if.then.i

land.rhs.hlist_del_init.exit_crit_edge:           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %hlist_del_init.exit

if.then.i:                                        ; preds = %land.rhs
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %6, ptr %8, align 4
  %tobool.not.i3.i = icmp eq ptr %6, null
  br i1 %tobool.not.i3.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %6, i32 0, i32 1
  %10 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %11 = ptrtoint ptr %frag.057 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %frag.057, align 4
  %12 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %pprev.i.i, align 4
  br label %hlist_del_init.exit

hlist_del_init.exit:                              ; preds = %__hlist_del.exit.i, %land.rhs.hlist_del_init.exit_crit_edge
  %skb = getelementptr inbounds %struct.zd1201_frag, ptr %frag.057, i32 0, i32 2
  %13 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %skb, align 4
  tail call void @kfree_skb_reason(ptr noundef %14, i32 noundef 0) #12
  tail call void @kfree(ptr noundef nonnull %frag.057) #12
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %hlist_del_init.exit.for.end_crit_edge, label %hlist_del_init.exit.land.rhs_crit_edge

hlist_del_init.exit.land.rhs_crit_edge:           ; preds = %hlist_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

hlist_del_init.exit.for.end_crit_edge:            ; preds = %hlist_del_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %hlist_del_init.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %tx_urb = getelementptr inbounds %struct.zd1201, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tx_urb, align 4
  %tobool17.not = icmp eq ptr %16, null
  br i1 %tobool17.not, label %for.end.if.end21_crit_edge, label %if.then18

for.end.if.end21_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then18:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_kill_urb(ptr noundef nonnull %16) #12
  %17 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tx_urb, align 4
  tail call void @usb_free_urb(ptr noundef %18) #12
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %for.end.if.end21_crit_edge
  %rx_urb = getelementptr inbounds %struct.zd1201, ptr %1, i32 0, i32 7
  %19 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rx_urb, align 4
  %tobool22.not = icmp eq ptr %20, null
  br i1 %tobool22.not, label %if.end21.if.end26_crit_edge, label %if.then23

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_kill_urb(ptr noundef nonnull %20) #12
  %21 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_urb, align 4
  tail call void @usb_free_urb(ptr noundef %22) #12
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end21.if.end26_crit_edge
  %dev = getelementptr inbounds %struct.zd1201, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %tobool27.not = icmp eq ptr %24, null
  br i1 %tobool27.not, label %if.end26.cleanup_crit_edge, label %if.then28

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @unregister_netdev(ptr noundef nonnull %24) #12
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  tail call void @free_netdev(ptr noundef %26) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.end26.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1201_suspend(ptr nocapture noundef readonly %interface, [1 x i32] %message.coerce) #2 align 64 {
entry:
  %zdval.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.zd1201, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void @netif_device_detach(ptr noundef %3) #12
  %mac_enabled = getelementptr inbounds %struct.zd1201, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %mac_enabled to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mac_enabled, align 4
  %was_enabled = getelementptr inbounds %struct.zd1201, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %was_enabled to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %was_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %monitor.i = getelementptr inbounds %struct.zd1201, ptr %1, i32 0, i32 20
  %7 = ptrtoint ptr %monitor.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %monitor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.not.i = icmp eq i32 %8, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then2.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

if.then2.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %zdval.i.i) #12
  %9 = ptrtoint ptr %zdval.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %zdval.i.i, align 2
  %call.i.i = call fastcc i32 @zd1201_setconfig(ptr noundef %1, i32 noundef 64645, ptr noundef nonnull %zdval.i.i, i32 noundef 2, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not.i, label %if.then2.i.if.end6.i_crit_edge, label %if.then2.i.cleanup_crit_edge

if.then2.i.cleanup_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2.i.if.end6.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then2.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge
  %call7.i = tail call fastcc i32 @zd1201_docmd(ptr noundef %1, i32 noundef 2, i32 noundef 0, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %if.end6.i.cleanup_crit_edge

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %mac_enabled to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %mac_enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then9.i, %if.end6.i.cleanup_crit_edge, %if.then2.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i.i, %if.then2.i.cleanup_crit_edge ], [ 0, %if.then9.i ], [ %call7.i, %if.end6.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1201_resume(ptr nocapture noundef readonly %interface) #2 align 64 {
entry:
  %zdval.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %dev = getelementptr inbounds %struct.zd1201, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  tail call void @netif_device_attach(ptr noundef nonnull %3) #12
  %was_enabled = getelementptr inbounds %struct.zd1201, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %was_enabled to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %was_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4:                                         ; preds = %if.end
  %mac_enabled.i = getelementptr inbounds %struct.zd1201, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %mac_enabled.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mac_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.then4
  %call.i = tail call fastcc i32 @zd1201_docmd(ptr noundef nonnull %1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %mac_enabled.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %mac_enabled.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %monitor.i = getelementptr inbounds %struct.zd1201, ptr %1, i32 0, i32 20
  %9 = ptrtoint ptr %monitor.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %monitor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool5.not.i = icmp eq i32 %10, 0
  br i1 %tobool5.not.i, label %if.end4.i.cleanup_crit_edge, label %if.then6.i

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %zdval.i.i) #12
  %11 = ptrtoint ptr %zdval.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 256, ptr %zdval.i.i, align 2
  %call.i.i = call fastcc i32 @zd1201_setconfig(ptr noundef nonnull %1, i32 noundef 64645, ptr noundef nonnull %zdval.i.i, i32 noundef 2, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then6.i, %if.end4.i.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then4.cleanup_crit_edge ], [ %call.i.i, %if.then6.i ], [ %call.i, %if.end4.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zd1201_getconfig(ptr noundef %zd, i32 noundef %rid, ptr nocapture noundef writeonly %riddata, i32 noundef %riddatalen) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry70 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rxdatas = getelementptr inbounds %struct.zd1201, ptr %zd, i32 0, i32 12
  %0 = ptrtoint ptr %rxdatas to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %rxdatas, align 4
  %call = tail call fastcc i32 @zd1201_docmd(ptr noundef %zd, i32 noundef 33, i32 noundef %rid, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup180_crit_edge

entry.cleanup180_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup180

if.end:                                           ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 425) #12
  %1 = ptrtoint ptr %rxdatas to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rxdatas, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool5.not = icmp eq i32 %2, 0
  br i1 %tobool5.not, label %if.then6, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then6:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %3 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %rxdataq = getelementptr inbounds %struct.zd1201, ptr %zd, i32 0, i32 11
  %call8280 = call i32 @prepare_to_wait_event(ptr noundef %rxdataq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %4 = ptrtoint ptr %rxdatas to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rxdatas, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool10.not281 = icmp eq i32 %5, 0
  br i1 %tobool10.not281, label %if.then6.if.end12_crit_edge, label %if.then6.for.end_crit_edge

if.then6.for.end_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  br label %if.end12

if.end12:                                         ; preds = %cleanup.if.end12_crit_edge, %if.then6.if.end12_crit_edge
  %call8282 = phi i32 [ %call8, %cleanup.if.end12_crit_edge ], [ %call8280, %if.then6.if.end12_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8282)
  %tobool13.not = icmp eq i32 %call8282, 0
  br i1 %tobool13.not, label %cleanup, label %if.end12.__out_crit_edge

if.end12.__out_crit_edge:                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %__out

cleanup:                                          ; preds = %if.end12
  call void @schedule() #12
  %call8 = call i32 @prepare_to_wait_event(ptr noundef %rxdataq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %6 = ptrtoint ptr %rxdatas to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rxdatas, align 4
  %tobool10.not = icmp eq i32 %7, 0
  br i1 %tobool10.not, label %cleanup.if.end12_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

cleanup.if.end12_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then6.for.end_crit_edge
  call void @finish_wait(ptr noundef %rxdataq, ptr noundef nonnull %__wq_entry) #12
  br label %__out

__out:                                            ; preds = %for.end, %if.end12.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %if.end17

if.end17:                                         ; preds = %__out, %if.end.if.end17_crit_edge
  %rxlen = getelementptr inbounds %struct.zd1201, ptr %zd, i32 0, i32 10
  %8 = ptrtoint ptr %rxlen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rxlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool19.not = icmp eq i32 %9, 0
  br i1 %tobool19.not, label %if.end17.cleanup180_crit_edge, label %if.end21

if.end17.cleanup180_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup180

if.end21:                                         ; preds = %if.end17
  %rxdata = getelementptr inbounds %struct.zd1201, ptr %zd, i32 0, i32 9
  %arrayidx = getelementptr %struct.zd1201, ptr %zd, i32 0, i32 9, i32 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx, align 4
  %arrayidx23 = getelementptr %struct.zd1201, ptr %zd, i32 0, i32 9, i32 6
  %12 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx23, align 2
  %14 = call i16 @llvm.bswap.i16(i16 %13)
  %conv24 = zext i16 %14 to i32
  %arrayidx26 = getelementptr %struct.zd1201, ptr %zd, i32 0, i32 9, i32 8
  %15 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx26, align 4
  %17 = call i16 @llvm.bswap.i16(i16 %16)
  %conv27 = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv27)
  %cmp = icmp slt i32 %9, %conv27
  %sub = add i32 %9, -6
  %spec.select = select i1 %cmp, i32 %sub, i32 %conv27
  %18 = and i16 %11, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp33.not.not = icmp ne i16 %18, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %conv24, i32 %rid)
  %cmp35.not = icmp eq i32 %conv24, %rid
  %or.cond = select i1 %cmp33.not.not, i1 %cmp35.not, i1 false
  br i1 %or.cond, label %if.end38, label %if.end21.cleanup180_crit_edge

if.end21.cleanup180_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup180

if.end38:                                         ; preds = %if.end21
  %sub39 = add i32 %spec.select, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub39, i32 %riddatalen)
  %cmp40.not = icmp eq i32 %sub39, %riddatalen
  br i1 %cmp40.not, label %if.end54, label %do.body43

do.body43:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd1201_getconfig.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zd1201_getconfig, %if.then49)) #12
          to label %cleanup180 [label %if.then49], !srcloc !125

if.then49:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %zd to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %zd, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 15
  %21 = ptrtoint ptr %rxlen to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rxlen, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zd1201_getconfig.__UNIQUE_ID_ddebug357, ptr noundef %dev, ptr noundef nonnull @.str.34, i32 noundef %riddatalen, i32 noundef %22, i32 noundef %spec.select, i32 noundef %rid, i32 noundef %rid) #12
  br label %cleanup180

if.end54:                                         ; preds = %if.end38
  %23 = ptrtoint ptr %rxdatas to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %rxdatas, align 4
  %call56 = call fastcc i32 @zd1201_docmd(ptr noundef %zd, i32 noundef 23, i32 noundef %rid, i32 noundef %spec.select)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.end54.cleanup180_crit_edge

if.end54.cleanup180_crit_edge:                    ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup180

if.end59:                                         ; preds = %if.end54
  call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 453) #12
  %24 = ptrtoint ptr %rxdatas to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rxdatas, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool68.not = icmp eq i32 %25, 0
  br i1 %tobool68.not, label %if.then69, label %if.end59.if.end90_crit_edge

if.end59.if.end90_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end90

if.then69:                                        ; preds = %if.end59
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry70) #12
  %26 = call ptr @memset(ptr %__wq_entry70, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry70, i32 noundef 0) #12
  %rxdataq74 = getelementptr inbounds %struct.zd1201, ptr %zd, i32 0, i32 11
  %call75283 = call i32 @prepare_to_wait_event(ptr noundef %rxdataq74, ptr noundef nonnull %__wq_entry70, i32 noundef 1) #12
  %27 = ptrtoint ptr %rxdatas to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rxdatas, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool77.not284 = icmp eq i32 %28, 0
  br i1 %tobool77.not284, label %if.then69.if.end79_crit_edge, label %if.then69.for.end86_crit_edge

if.then69.for.end86_crit_edge:                    ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end86

if.then69.if.end79_crit_edge:                     ; preds = %if.then69
  br label %if.end79

if.end79:                                         ; preds = %cleanup83.if.end79_crit_edge, %if.then69.if.end79_crit_edge
  %call75285 = phi i32 [ %call75, %cleanup83.if.end79_crit_edge ], [ %call75283, %if.then69.if.end79_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75285)
  %tobool80.not = icmp eq i32 %call75285, 0
  br i1 %tobool80.not, label %cleanup83, label %if.end79.__out88_crit_edge

if.end79.__out88_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #14
  br label %__out88

cleanup83:                                        ; preds = %if.end79
  call void @schedule() #12
  %call75 = call i32 @prepare_to_wait_event(ptr noundef %rxdataq74, ptr noundef nonnull %__wq_entry70, i32 noundef 1) #12
  %29 = ptrtoint ptr %rxdatas to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rxdatas, align 4
  %tobool77.not = icmp eq i32 %30, 0
  br i1 %tobool77.not, label %cleanup83.if.end79_crit_edge, label %cleanup83.for.end86_crit_edge

cleanup83.for.end86_crit_edge:                    ; preds = %cleanup83
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end86

cleanup83.if.end79_crit_edge:                     ; preds = %cleanup83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79

for.end86:                                        ; preds = %cleanup83.for.end86_crit_edge, %if.then69.for.end86_crit_edge
  call void @finish_wait(ptr noundef %rxdataq74, ptr noundef nonnull %__wq_entry70) #12
  br label %__out88

__out88:                                          ; preds = %for.end86, %if.end79.__out88_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry70) #12
  br label %if.end90

if.end90:                                         ; preds = %__out88, %if.end59.if.end90_crit_edge
  %31 = ptrtoint ptr %rxlen to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rxlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool93.not = icmp eq i32 %32, 0
  br i1 %tobool93.not, label %if.end90.cleanup180_crit_edge, label %if.end95

if.end90.cleanup180_crit_edge:                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup180

if.end95:                                         ; preds = %if.end90
  %sub98 = add i32 %32, -1
  %arrayidx99 = getelementptr %struct.zd1201, ptr %zd, i32 0, i32 9, i32 %sub98
  %33 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx99, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %34)
  %cmp101.not = icmp eq i8 %34, 3
  br i1 %cmp101.not, label %if.end95.do.body130_crit_edge, label %do.body104

if.end95.do.body130_crit_edge:                    ; preds = %if.end95
  br label %do.body130

do.body104:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd1201_getconfig.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zd1201_getconfig, %if.then116)) #12
          to label %cleanup180 [label %if.then116], !srcloc !125

if.then116:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %zd to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %zd, align 4
  %dev118 = getelementptr inbounds %struct.usb_device, ptr %36, i32 0, i32 15
  %37 = ptrtoint ptr %rxlen to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rxlen, align 4
  %sub121 = add i32 %38, -1
  %arrayidx122 = getelementptr %struct.zd1201, ptr %zd, i32 0, i32 9, i32 %sub121
  %39 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx122, align 1
  %conv123 = zext i8 %40 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zd1201_getconfig.__UNIQUE_ID_ddebug358, ptr noundef %dev118, ptr noundef nonnull @.str.35, i32 noundef %conv123) #12
  br label %cleanup180

do.body130:                                       ; preds = %do.cond176.do.body130_crit_edge, %if.end95.do.body130_crit_edge
  %pdata.0 = phi ptr [ %add.ptr171, %do.cond176.do.body130_crit_edge ], [ %rxdata, %if.end95.do.body130_crit_edge ]
  %length.1 = phi i32 [ %sub172, %do.cond176.do.body130_crit_edge ], [ %32, %if.end95.do.body130_crit_edge ]
  %i.0 = phi i32 [ %inc, %do.cond176.do.body130_crit_edge ], [ 0, %if.end95.do.body130_crit_edge ]
  %riddata.addr.0 = phi ptr [ %add.ptr170, %do.cond176.do.body130_crit_edge ], [ %riddata, %if.end95.do.body130_crit_edge ]
  %41 = ptrtoint ptr %pdata.0 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %pdata.0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %42)
  %cmp135.not = icmp eq i8 %42, 3
  br i1 %cmp135.not, label %do.cond176, label %do.body138

do.body138:                                       ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd1201_getconfig.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zd1201_getconfig, %if.then150)) #12
          to label %cleanup180 [label %if.then150], !srcloc !125

if.then150:                                       ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %zd to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %zd, align 4
  %dev152 = getelementptr inbounds %struct.usb_device, ptr %44, i32 0, i32 15
  %45 = ptrtoint ptr %pdata.0 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %pdata.0, align 1
  %conv154 = zext i8 %46 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zd1201_getconfig.__UNIQUE_ID_ddebug359, ptr noundef %dev152, ptr noundef nonnull @.str.36, i32 noundef %conv154) #12
  br label %cleanup180

do.cond176:                                       ; preds = %do.body130
  %47 = call i32 @llvm.smin.i32(i32 %length.1, i32 64)
  %dec = add i32 %47, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %length.1)
  %cmp159.not.inv = icmp slt i32 %length.1, 64
  %spec.select249 = select i1 %cmp159.not.inv, i32 %dec, i32 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0)
  %cmp163 = icmp eq i32 %i.0, 0
  %pdata.1.v = select i1 %cmp163, i32 8, i32 4
  %pdata.1 = getelementptr i8, ptr %pdata.0, i32 %pdata.1.v
  %actual_length.1.v = select i1 %cmp163, i32 -8, i32 -4
  %actual_length.1 = add i32 %spec.select249, %actual_length.1.v
  %48 = call ptr @memcpy(ptr %riddata.addr.0, ptr %pdata.1, i32 %actual_length.1)
  %add.ptr170 = getelementptr i8, ptr %riddata.addr.0, i32 %actual_length.1
  %add.ptr171 = getelementptr i8, ptr %pdata.1, i32 %actual_length.1
  %sub172 = add i32 %length.1, -64
  %inc = add nuw nsw i32 %i.0, 1
  %cmp177 = icmp sgt i32 %sub172, 0
  br i1 %cmp177, label %do.cond176.do.body130_crit_edge, label %do.cond176.cleanup180_crit_edge

do.cond176.cleanup180_crit_edge:                  ; preds = %do.cond176
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup180

do.cond176.do.body130_crit_edge:                  ; preds = %do.cond176
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body130

cleanup180:                                       ; preds = %do.cond176.cleanup180_crit_edge, %if.then150, %do.body138, %if.then116, %do.body104, %if.end90.cleanup180_crit_edge, %if.end54.cleanup180_crit_edge, %if.then49, %do.body43, %if.end21.cleanup180_crit_edge, %if.end17.cleanup180_crit_edge, %entry.cleanup180_crit_edge
  %retval.2 = phi i32 [ %call, %entry.cleanup180_crit_edge ], [ -5, %if.end17.cleanup180_crit_edge ], [ -22, %if.end21.cleanup180_crit_edge ], [ -61, %if.then49 ], [ %call56, %if.end54.cleanup180_crit_edge ], [ -5, %if.end90.cleanup180_crit_edge ], [ -22, %if.then116 ], [ -61, %do.body43 ], [ -22, %do.body104 ], [ -22, %do.body138 ], [ -22, %if.then150 ], [ 0, %do.cond176.cleanup180_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zd1201_setconfig(ptr noundef %zd, i32 noundef %rid, ptr nocapture noundef readonly %buf, i32 noundef %len, i32 noundef %wait) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait)
  %tobool.not = icmp eq i32 %wait, 0
  %cond = select i1 %tobool.not, i32 2592, i32 3072
  %add = add i32 %len, 4
  %rxdatas = getelementptr inbounds %struct.zd1201, ptr %zd, i32 0, i32 12
  %0 = ptrtoint ptr %rxdatas to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %rxdatas, align 4
  %rxlen = getelementptr inbounds %struct.zd1201, ptr %zd, i32 0, i32 10
  %1 = ptrtoint ptr %rxlen to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %rxlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp193 = icmp sgt i32 %add, 0
  br i1 %cmp193, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %conv18 = trunc i32 %rid to i16
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv18)
  %endp_out2 = getelementptr inbounds %struct.zd1201, ptr %zd, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %buf.addr.0197 = phi ptr [ %buf, %for.body.lr.ph ], [ %buf.addr.1, %for.inc.for.body_crit_edge ]
  %len.addr.0195 = phi i32 [ %add, %for.body.lr.ph ], [ %sub26, %for.inc.for.body_crit_edge ]
  %seq.0194 = phi i8 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef %cond, i32 noundef 16) #16
  %tobool1.not = icmp eq ptr %call7.i, null
  br i1 %tobool1.not, label %for.body.cleanup98_crit_edge, label %if.end

for.body.cleanup98_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup98

if.end:                                           ; preds = %for.body
  %call2 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef %cond) #12
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup98

if.end5:                                          ; preds = %if.end
  %4 = call ptr @memset(ptr %call7.i, i32 0, i32 16)
  %5 = tail call i32 @llvm.umin.i32(i32 %len.addr.0195, i32 12)
  %6 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %call7.i, align 8
  %arrayidx8 = getelementptr i8, ptr %call7.i, i32 1
  %7 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %seq.0194, ptr %arrayidx8, align 1
  %arrayidx10 = getelementptr i8, ptr %call7.i, i32 3
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %seq.0194)
  %cmp12 = icmp eq i8 %seq.0194, 0
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %add15 = add nuw i32 %len.addr.0195, 131071
  %div187188 = lshr i32 %add15, 1
  %conv16 = trunc i32 %div187188 to i16
  %9 = tail call i16 @llvm.bswap.i16(i16 %conv16)
  %arrayidx17 = getelementptr i8, ptr %call7.i, i32 4
  %10 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %arrayidx17, align 4
  %arrayidx19 = getelementptr i8, ptr %call7.i, i32 6
  %11 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %2, ptr %arrayidx19, align 2
  %add.ptr = getelementptr i8, ptr %call7.i, i32 8
  %sub20 = add nsw i32 %5, -4
  %12 = call ptr @memcpy(ptr %add.ptr, ptr %buf.addr.0197, i32 %sub20)
  br label %if.end25

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr23 = getelementptr i8, ptr %call7.i, i32 4
  %13 = call ptr @memcpy(ptr %add.ptr23, ptr %buf.addr.0197, i32 %5)
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then14
  %sub20.pn = phi i32 [ %sub20, %if.then14 ], [ %5, %if.else ]
  %14 = ptrtoint ptr %zd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %zd, align 4
  %16 = ptrtoint ptr %endp_out2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %endp_out2, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %15, align 8
  %shl.i = shl i32 %19, 8
  %shl1.i = shl i32 %17, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i, -1073741824
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 8
  %20 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %15, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 10
  %21 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 14
  %22 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 19
  %23 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 16, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 28
  %24 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @zd1201_usbfree, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call2, i32 0, i32 27
  %25 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %zd, ptr %context4.i, align 4
  %call29 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call2, i32 noundef %cond) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %for.inc, label %if.end25.err97_crit_edge

if.end25.err97_crit_edge:                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %err97

for.inc:                                          ; preds = %if.end25
  %sub26 = sub nsw i32 %len.addr.0195, %5
  %buf.addr.1 = getelementptr i8, ptr %buf.addr.0197, i32 %sub20.pn
  %inc = add i8 %seq.0194, 1
  %cmp = icmp sgt i32 %sub26, 0
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i171 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef %cond, i32 noundef 16) #16
  %tobool34.not = icmp eq ptr %call7.i171, null
  br i1 %tobool34.not, label %for.end.cleanup98_crit_edge, label %if.end36

for.end.cleanup98_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup98

if.end36:                                         ; preds = %for.end
  %call37 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef %cond) #12
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i171) #12
  br label %cleanup98

if.end40:                                         ; preds = %if.end36
  %27 = ptrtoint ptr %call7.i171 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %call7.i171, align 8
  %arrayidx41 = getelementptr i8, ptr %call7.i171, i32 4
  %28 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 8449, ptr %arrayidx41, align 4
  %conv42 = trunc i32 %rid to i16
  %29 = tail call i16 @llvm.bswap.i16(i16 %conv42)
  %arrayidx43 = getelementptr i8, ptr %call7.i171, i32 6
  %30 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %arrayidx43, align 2
  %arrayidx44 = getelementptr i8, ptr %call7.i171, i32 8
  %31 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %arrayidx44, align 8
  %arrayidx45 = getelementptr i8, ptr %call7.i171, i32 10
  %32 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %arrayidx45, align 2
  %33 = ptrtoint ptr %zd to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %zd, align 4
  %endp_out248 = getelementptr inbounds %struct.zd1201, ptr %zd, i32 0, i32 6
  %35 = ptrtoint ptr %endp_out248 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %endp_out248, align 4
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %34, align 8
  %shl.i172 = shl i32 %38, 8
  %shl1.i173 = shl i32 %36, 15
  %or.i174 = or i32 %shl1.i173, %shl.i172
  %or50 = or i32 %or.i174, -1073741824
  %dev1.i175 = getelementptr inbounds %struct.urb, ptr %call37, i32 0, i32 8
  %39 = ptrtoint ptr %dev1.i175 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %34, ptr %dev1.i175, align 4
  %pipe2.i176 = getelementptr inbounds %struct.urb, ptr %call37, i32 0, i32 10
  %40 = ptrtoint ptr %pipe2.i176 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or50, ptr %pipe2.i176, align 4
  %transfer_buffer3.i177 = getelementptr inbounds %struct.urb, ptr %call37, i32 0, i32 14
  %41 = ptrtoint ptr %transfer_buffer3.i177 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call7.i171, ptr %transfer_buffer3.i177, align 4
  %transfer_buffer_length.i178 = getelementptr inbounds %struct.urb, ptr %call37, i32 0, i32 19
  %42 = ptrtoint ptr %transfer_buffer_length.i178 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 16, ptr %transfer_buffer_length.i178, align 4
  %complete.i179 = getelementptr inbounds %struct.urb, ptr %call37, i32 0, i32 28
  %43 = ptrtoint ptr %complete.i179 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @zd1201_usbfree, ptr %complete.i179, align 4
  %context4.i180 = getelementptr inbounds %struct.urb, ptr %call37, i32 0, i32 27
  %44 = ptrtoint ptr %context4.i180 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %zd, ptr %context4.i180, align 4
  %call51 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call37, i32 noundef %cond) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end40.err97_crit_edge

if.end40.err97_crit_edge:                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %err97

if.end54:                                         ; preds = %if.end40
  br i1 %tobool.not, label %if.end54.cleanup98_crit_edge, label %if.then56

if.end54.cleanup98_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup98

if.then56:                                        ; preds = %if.end54
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 579) #12
  %45 = ptrtoint ptr %rxdatas to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rxdatas, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool61.not = icmp eq i32 %46, 0
  br i1 %tobool61.not, label %if.then62, label %if.then56.if.end75_crit_edge

if.then56.if.end75_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75

if.then62:                                        ; preds = %if.then56
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %47 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %rxdataq = getelementptr inbounds %struct.zd1201, ptr %zd, i32 0, i32 11
  %call65198 = call i32 @prepare_to_wait_event(ptr noundef %rxdataq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %48 = ptrtoint ptr %rxdatas to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rxdatas, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool67.not199 = icmp eq i32 %49, 0
  br i1 %tobool67.not199, label %if.then62.if.end69_crit_edge, label %if.then62.for.end73_crit_edge

if.then62.for.end73_crit_edge:                    ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end73

if.then62.if.end69_crit_edge:                     ; preds = %if.then62
  br label %if.end69

if.end69:                                         ; preds = %cleanup.if.end69_crit_edge, %if.then62.if.end69_crit_edge
  %call65200 = phi i32 [ %call65, %cleanup.if.end69_crit_edge ], [ %call65198, %if.then62.if.end69_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65200)
  %tobool70.not = icmp eq i32 %call65200, 0
  br i1 %tobool70.not, label %cleanup, label %if.end69.__out_crit_edge

if.end69.__out_crit_edge:                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %__out

cleanup:                                          ; preds = %if.end69
  call void @schedule() #12
  %call65 = call i32 @prepare_to_wait_event(ptr noundef %rxdataq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %50 = ptrtoint ptr %rxdatas to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rxdatas, align 4
  %tobool67.not = icmp eq i32 %51, 0
  br i1 %tobool67.not, label %cleanup.if.end69_crit_edge, label %cleanup.for.end73_crit_edge

cleanup.for.end73_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end73

cleanup.if.end69_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end69

for.end73:                                        ; preds = %cleanup.for.end73_crit_edge, %if.then62.for.end73_crit_edge
  call void @finish_wait(ptr noundef %rxdataq, ptr noundef nonnull %__wq_entry) #12
  br label %__out

__out:                                            ; preds = %for.end73, %if.end69.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %if.end75

if.end75:                                         ; preds = %__out, %if.then56.if.end75_crit_edge
  %52 = ptrtoint ptr %rxlen to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rxlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool78.not = icmp eq i32 %53, 0
  br i1 %tobool78.not, label %if.end75.do.body84_crit_edge, label %lor.lhs.false

if.end75.do.body84_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body84

lor.lhs.false:                                    ; preds = %if.end75
  %arrayidx79 = getelementptr %struct.zd1201, ptr %zd, i32 0, i32 9, i32 6
  %54 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx79, align 2
  %56 = call i16 @llvm.bswap.i16(i16 %55)
  %conv80 = zext i16 %56 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv80, i32 %rid)
  %cmp81.not = icmp eq i32 %conv80, %rid
  br i1 %cmp81.not, label %lor.lhs.false.cleanup98_crit_edge, label %lor.lhs.false.do.body84_crit_edge

lor.lhs.false.do.body84_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body84

lor.lhs.false.cleanup98_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup98

do.body84:                                        ; preds = %lor.lhs.false.do.body84_crit_edge, %if.end75.do.body84_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd1201_setconfig.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zd1201_setconfig, %if.then90)) #12
          to label %cleanup98 [label %if.then90], !srcloc !125

if.then90:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %zd to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %zd, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %58, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zd1201_setconfig.__UNIQUE_ID_ddebug360, ptr noundef %dev, ptr noundef nonnull @.str.38) #12
  br label %cleanup98

err97:                                            ; preds = %if.end40.err97_crit_edge, %if.end25.err97_crit_edge
  %request.0 = phi ptr [ %call7.i171, %if.end40.err97_crit_edge ], [ %call7.i, %if.end25.err97_crit_edge ]
  %urb.0 = phi ptr [ %call37, %if.end40.err97_crit_edge ], [ %call2, %if.end25.err97_crit_edge ]
  %err.0 = phi i32 [ %call51, %if.end40.err97_crit_edge ], [ %call29, %if.end25.err97_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %request.0) #12
  tail call void @usb_free_urb(ptr noundef nonnull %urb.0) #12
  br label %cleanup98

cleanup98:                                        ; preds = %err97, %if.then90, %do.body84, %lor.lhs.false.cleanup98_crit_edge, %if.end54.cleanup98_crit_edge, %if.then39, %for.end.cleanup98_crit_edge, %if.then4, %for.body.cleanup98_crit_edge
  %retval.0 = phi i32 [ %err.0, %err97 ], [ -12, %if.then4 ], [ -12, %if.then39 ], [ -12, %for.end.cleanup98_crit_edge ], [ 0, %lor.lhs.false.cleanup98_crit_edge ], [ 0, %if.then90 ], [ 0, %if.end54.cleanup98_crit_edge ], [ 0, %do.body84 ], [ -12, %for.body.cleanup98_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zd1201_enable(ptr noundef %zd) unnamed_addr #2 align 64 {
entry:
  %zdval.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_enabled = getelementptr inbounds %struct.zd1201, ptr %zd, i32 0, i32 18
  %0 = ptrtoint ptr %mac_enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mac_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @zd1201_docmd(ptr noundef %zd, i32 noundef 1, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %mac_enabled to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %mac_enabled, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %monitor = getelementptr inbounds %struct.zd1201, ptr %zd, i32 0, i32 20
  %3 = ptrtoint ptr %monitor to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %monitor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool5.not = icmp eq i32 %4, 0
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.then6

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %zdval.i) #12
  %5 = ptrtoint ptr %zdval.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 256, ptr %zdval.i, align 2
  %call.i = call fastcc i32 @zd1201_setconfig(ptr noundef %zd, i32 noundef 64645, ptr noundef nonnull %zdval.i, i32 noundef 2, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i, %if.then6 ], [ %call, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zd1201_disable(ptr noundef %zd) unnamed_addr #2 align 64 {
entry:
  %zdval.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_enabled = getelementptr inbounds %struct.zd1201, ptr %zd, i32 0, i32 18
  %0 = ptrtoint ptr %mac_enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mac_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %monitor = getelementptr inbounds %struct.zd1201, ptr %zd, i32 0, i32 20
  %2 = ptrtoint ptr %monitor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %monitor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %zdval.i) #12
  %4 = ptrtoint ptr %zdval.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %zdval.i, align 2
  %call.i = call fastcc i32 @zd1201_setconfig(ptr noundef %zd, i32 noundef 64645, ptr noundef nonnull %zdval.i, i32 noundef 2, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.then2.if.end6_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2.if.end6_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.end6:                                          ; preds = %if.then2.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %call7 = tail call fastcc i32 @zd1201_docmd(ptr noundef %zd, i32 noundef 2, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %mac_enabled to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %mac_enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end6.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i, %if.then2.cleanup_crit_edge ], [ 0, %if.then9 ], [ %call7, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zd1201_docmd(ptr noundef %zd, i32 noundef %cmd, i32 noundef %parm0, i32 noundef %parm2) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2592, i32 noundef 16) #16
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %call7.i, align 8
  %conv = trunc i32 %cmd to i16
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %arrayidx = getelementptr i8, ptr %call7.i, i32 4
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %arrayidx, align 4
  %conv1 = trunc i32 %parm0 to i16
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv1)
  %arrayidx2 = getelementptr i8, ptr %call7.i, i32 6
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %arrayidx2, align 2
  %arrayidx4 = getelementptr i8, ptr %call7.i, i32 8
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %arrayidx4, align 8
  %conv5 = trunc i32 %parm2 to i16
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv5)
  %arrayidx6 = getelementptr i8, ptr %call7.i, i32 10
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %arrayidx6, align 2
  %call7 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #12
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %9 = ptrtoint ptr %zd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %zd, align 4
  %endp_out2 = getelementptr inbounds %struct.zd1201, ptr %zd, i32 0, i32 6
  %11 = ptrtoint ptr %endp_out2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %endp_out2, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %10, align 8
  %shl.i = shl i32 %14, 8
  %shl1.i = shl i32 %12, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i, -1073741824
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 8
  %15 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %10, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 10
  %16 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 14
  %17 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 19
  %18 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 16, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 28
  %19 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @zd1201_usbfree, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 27
  %20 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %zd, ptr %context4.i, align 4
  %call13 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call7, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end10.cleanup_crit_edge, label %if.then15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  tail call void @usb_free_urb(ptr noundef nonnull %call7) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end10.cleanup_crit_edge, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then9 ], [ -12, %entry.cleanup_crit_edge ], [ %call13, %if.then15 ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zd1201_usbrx(ptr noundef %urb) #2 align 64 {
entry:
  %wrqu = alloca %union.iwreq_data, align 4
  %wrqu58 = alloca %union.iwreq_data, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %2 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transfer_buffer, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup291_crit_edge, label %if.end

entry.cleanup291_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup291

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %if.end.resubmit_crit_edge [
    i32 -84, label %if.end.do.end_crit_edge
    i32 -19, label %if.end.do.end_crit_edge492
    i32 -62, label %if.end.do.end_crit_edge493
    i32 -2, label %if.end.do.end_crit_edge494
    i32 -32, label %if.end.do.end_crit_edge495
    i32 -75, label %if.end.do.end_crit_edge496
    i32 -108, label %if.end.do.end_crit_edge497
    i32 0, label %lor.lhs.false
  ]

if.end.do.end_crit_edge497:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end.do.end_crit_edge496:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end.do.end_crit_edge495:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end.do.end_crit_edge494:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end.do.end_crit_edge493:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end.do.end_crit_edge492:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end.resubmit_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %resubmit

do.end:                                           ; preds = %if.end.do.end_crit_edge, %if.end.do.end_crit_edge492, %if.end.do.end_crit_edge493, %if.end.do.end_crit_edge494, %if.end.do.end_crit_edge495, %if.end.do.end_crit_edge496, %if.end.do.end_crit_edge497
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  %dev1 = getelementptr inbounds %struct.zd1201, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef %10, i32 noundef %5) #15
  br label %if.then285

lor.lhs.false:                                    ; preds = %if.end
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %11 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp4 = icmp eq i32 %12, 0
  br i1 %cmp4, label %lor.lhs.false.resubmit_crit_edge, label %if.end6

lor.lhs.false.resubmit_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %resubmit

if.end6:                                          ; preds = %lor.lhs.false
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %3, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.41)
  switch i8 %14, label %if.end6.if.end97_crit_edge [
    i8 0, label %if.end6.if.then13_crit_edge
    i8 3, label %if.end6.if.then13_crit_edge498
    i8 2, label %if.end6.if.then21_crit_edge
  ]

if.end6.if.then21_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21

if.end6.if.then13_crit_edge498:                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13

if.end6.if.then13_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13

if.end6.if.end97_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end97

if.then13:                                        ; preds = %if.end6.if.then13_crit_edge, %if.end6.if.then13_crit_edge498
  %rxdata = getelementptr inbounds %struct.zd1201, ptr %1, i32 0, i32 9
  %16 = call ptr @memcpy(ptr %rxdata, ptr %3, i32 %12)
  %17 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %actual_length, align 4
  %rxlen = getelementptr inbounds %struct.zd1201, ptr %1, i32 0, i32 10
  %19 = ptrtoint ptr %rxlen to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %rxlen, align 4
  %rxdatas = getelementptr inbounds %struct.zd1201, ptr %1, i32 0, i32 12
  %20 = ptrtoint ptr %rxdatas to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %rxdatas, align 4
  %rxdataq = getelementptr inbounds %struct.zd1201, ptr %1, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %rxdataq, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %cmp19 = icmp eq i8 %14, 2
  br i1 %cmp19, label %if.then13.if.then21_crit_edge, label %if.then13.if.end97_crit_edge

if.then13.if.end97_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end97

if.then13.if.then21_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21

if.then21:                                        ; preds = %if.then13.if.then21_crit_edge, %if.end6.if.then21_crit_edge
  %arrayidx22 = getelementptr i8, ptr %3, i32 6
  %21 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx22, align 2
  %23 = zext i16 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.42)
  switch i16 %22, label %if.end64 [
    i16 242, label %if.then26
    i16 498, label %if.then43
    i16 754, label %if.then57
  ]

if.then26:                                        ; preds = %if.then21
  %arrayidx27 = getelementptr i8, ptr %3, i32 8
  %24 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx27, align 2
  %26 = tail call i16 @llvm.bswap.i16(i16 %25)
  %conv28 = sext i16 %26 to i32
  %27 = zext i32 %conv28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %conv28, label %sw.default [
    i32 1, label %sw.bb29
    i32 2, label %sw.bb31
    i32 3, label %sw.bb33
    i32 4, label %sw.bb35
  ]

sw.bb29:                                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  %dev30 = getelementptr inbounds %struct.zd1201, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev30, align 4
  tail call void @netif_carrier_on(ptr noundef %29) #12
  br label %resubmit

sw.bb31:                                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  %dev32 = getelementptr inbounds %struct.zd1201, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev32, align 4
  tail call void @netif_carrier_off(ptr noundef %31) #12
  br label %resubmit

sw.bb33:                                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  %dev34 = getelementptr inbounds %struct.zd1201, ptr %1, i32 0, i32 2
  %32 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev34, align 4
  tail call void @netif_carrier_off(ptr noundef %33) #12
  br label %resubmit

sw.bb35:                                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  %dev36 = getelementptr inbounds %struct.zd1201, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev36, align 4
  tail call void @netif_carrier_on(ptr noundef %35) #12
  br label %resubmit

sw.default:                                       ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  %dev37 = getelementptr inbounds %struct.zd1201, ptr %1, i32 0, i32 2
  %36 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev37, align 4
  tail call void @netif_carrier_off(ptr noundef %37) #12
  br label %resubmit

if.then43:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %3, i32 8
  %38 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %add.ptr, align 2
  %40 = tail call i16 @llvm.bswap.i16(i16 %39)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrqu) #12
  %conv45 = sext i16 %40 to i32
  %conv45.off = add nsw i32 %conv45, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv45.off)
  %switch = icmp ult i32 %conv45.off, 2
  %. = select i1 %switch, i32 35843, i32 35844
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %wrqu, i32 0, i32 1
  %add.ptr51 = getelementptr i8, ptr %3, i32 10
  %41 = getelementptr inbounds i8, ptr %wrqu, i32 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 8)
  store i64 -1, ptr %41, align 4
  %43 = call ptr @memcpy(ptr %sa_data, ptr %add.ptr51, i32 6)
  %44 = ptrtoint ptr %wrqu to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 1, ptr %wrqu, align 4
  %dev52 = getelementptr inbounds %struct.zd1201, ptr %1, i32 0, i32 2
  %45 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev52, align 4
  call void @wireless_send_event(ptr noundef %46, i32 noundef %., ptr noundef nonnull %wrqu, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrqu) #12
  br label %resubmit

if.then57:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %wrqu58) #12
  %sa_data59 = getelementptr inbounds %struct.sockaddr, ptr %wrqu58, i32 0, i32 1
  %add.ptr61 = getelementptr i8, ptr %3, i32 8
  %47 = getelementptr inbounds i8, ptr %wrqu58, i32 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 8)
  store i64 -1, ptr %47, align 4
  %49 = call ptr @memcpy(ptr %sa_data59, ptr %add.ptr61, i32 6)
  %50 = ptrtoint ptr %wrqu58 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 1, ptr %wrqu58, align 4
  %dev63 = getelementptr inbounds %struct.zd1201, ptr %1, i32 0, i32 2
  %51 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev63, align 4
  call void @wireless_send_event(ptr noundef %52, i32 noundef 35844, ptr noundef nonnull %wrqu58, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %wrqu58) #12
  br label %resubmit

if.end64:                                         ; preds = %if.then21
  %rxlen65 = getelementptr inbounds %struct.zd1201, ptr %1, i32 0, i32 10
  %53 = ptrtoint ptr %rxlen65 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %rxlen65, align 4
  %54 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp67481.not = icmp eq i32 %55, 0
  br i1 %cmp67481.not, label %if.end64.if.then91_crit_edge, label %while.body.lr.ph

if.end64.if.then91_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then91

while.body.lr.ph:                                 ; preds = %if.end64
  %rxdata77 = getelementptr inbounds %struct.zd1201, ptr %1, i32 0, i32 9
  %add.ptr81 = getelementptr i8, ptr %3, i32 4
  br label %while.body

while.body:                                       ; preds = %if.end76.while.body_crit_edge, %while.body.lr.ph
  %i.0482 = phi i32 [ 0, %while.body.lr.ph ], [ %add87, %if.end76.while.body_crit_edge ]
  %add = or i32 %i.0482, 2
  %arrayidx69 = getelementptr i8, ptr %3, i32 %add
  %56 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx69, align 2
  %58 = tail call i16 @llvm.bswap.i16(i16 %57)
  %conv70 = zext i16 %58 to i32
  %59 = ptrtoint ptr %rxlen65 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rxlen65, align 4
  %add72 = add i32 %60, %conv70
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000, i32 %add72)
  %cmp73 = icmp ugt i32 %add72, 3000
  br i1 %cmp73, label %while.body.resubmit_crit_edge, label %if.end76

while.body.resubmit_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %resubmit

if.end76:                                         ; preds = %while.body
  %add.ptr80 = getelementptr i8, ptr %rxdata77, i32 %60
  %add.ptr82 = getelementptr i8, ptr %add.ptr81, i32 %i.0482
  %61 = call ptr @memcpy(ptr %add.ptr80, ptr %add.ptr82, i32 %conv70)
  %62 = ptrtoint ptr %rxlen65 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rxlen65, align 4
  %add86 = add i32 %63, %conv70
  store i32 %add86, ptr %rxlen65, align 4
  %add87 = add i32 %i.0482, 64
  %64 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %actual_length, align 4
  %cmp67 = icmp ult i32 %add87, %65
  br i1 %cmp67, label %if.end76.while.body_crit_edge, label %if.end76.if.then91_crit_edge

if.end76.if.then91_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then91

if.end76.while.body_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.then91:                                        ; preds = %if.end76.if.then91_crit_edge, %if.end64.if.then91_crit_edge
  %rxdatas92 = getelementptr inbounds %struct.zd1201, ptr %1, i32 0, i32 12
  %66 = ptrtoint ptr %rxdatas92 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %rxdatas92, align 4
  %rxdataq93 = getelementptr inbounds %struct.zd1201, ptr %1, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %rxdataq93, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %resubmit

if.end97:                                         ; preds = %if.then13.if.end97_crit_edge, %if.end6.if.end97_crit_edge
  %67 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %actual_length, align 4
  %sub = add i32 %68, -1
  %arrayidx99 = getelementptr i8, ptr %3, i32 %sub
  %69 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx99, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %70)
  %cmp101 = icmp eq i8 %70, 1
  br i1 %cmp101, label %if.then103, label %if.end97.resubmit_crit_edge

if.end97.resubmit_crit_edge:                      ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #14
  br label %resubmit

if.then103:                                       ; preds = %if.end97
  %sub106 = add i32 %68, -3
  %arrayidx107 = getelementptr i8, ptr %3, i32 %sub106
  %71 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %arrayidx107, align 2
  %conv108 = zext i16 %72 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv108)
  %cmp109 = icmp slt i32 %sub, %conv108
  %conv112 = trunc i32 %sub to i16
  %spec.select = select i1 %cmp109, i16 %conv112, i16 %72
  %sub114 = add i32 %68, -17
  %arrayidx115 = getelementptr i8, ptr %3, i32 %sub114
  %sub116 = add i32 %68, -25
  %arrayidx117 = getelementptr i8, ptr %3, i32 %sub116
  %monitor = getelementptr inbounds %struct.zd1201, ptr %1, i32 0, i32 20
  %73 = ptrtoint ptr %monitor to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %monitor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool118.not = icmp eq i32 %74, 0
  br i1 %tobool118.not, label %if.end156, label %if.then119

if.then119:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %sub)
  %cmp120 = icmp slt i32 %sub, 24
  br i1 %cmp120, label %if.then119.resubmit_crit_edge, label %if.end123

if.then119.resubmit_crit_edge:                    ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #14
  br label %resubmit

if.end123:                                        ; preds = %if.then119
  %add124 = add nuw i32 %68, 23
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add124, i32 noundef 2592) #12
  %tobool125.not = icmp eq ptr %call.i.i, null
  br i1 %tobool125.not, label %if.end123.resubmit_crit_edge, label %if.end127

if.end123.resubmit_crit_edge:                     ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #14
  br label %resubmit

if.end127:                                        ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 2) #12
  %75 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_loadN_noabort(i32 %75, i32 2)
  %76 = load i16, ptr %arrayidx115, align 1
  %77 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %77, i32 2)
  store i16 %76, ptr %call.i, align 1
  %call.i458 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 2) #12
  %78 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_loadN_noabort(i32 %78, i32 2)
  %79 = load i16, ptr %arrayidx107, align 1
  %80 = ptrtoint ptr %call.i458 to i32
  call void @__asan_storeN_noabort(i32 %80, i32 2)
  store i16 %79, ptr %call.i458, align 1
  %sub134 = add i32 %68, -15
  %arrayidx135 = getelementptr i8, ptr %3, i32 %sub134
  %call.i459 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 6) #12
  %81 = call ptr @memcpy(ptr %call.i459, ptr %arrayidx135, i32 6)
  %sub137 = add i32 %68, -23
  %arrayidx138 = getelementptr i8, ptr %3, i32 %sub137
  %call.i460 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 6) #12
  %82 = call ptr @memcpy(ptr %call.i460, ptr %arrayidx138, i32 6)
  %sub140 = add i32 %68, -9
  %arrayidx141 = getelementptr i8, ptr %3, i32 %sub140
  %call.i461 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 6) #12
  %83 = call ptr @memcpy(ptr %call.i461, ptr %arrayidx141, i32 6)
  %call.i462 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 2) #12
  %84 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_loadN_noabort(i32 %84, i32 2)
  %85 = load i16, ptr %arrayidx117, align 1
  %86 = ptrtoint ptr %call.i462 to i32
  call void @__asan_storeN_noabort(i32 %86, i32 2)
  store i16 %85, ptr %call.i462, align 1
  %conv146 = zext i16 %spec.select to i32
  %call.i463 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %conv146) #12
  %87 = call ptr @memcpy(ptr %call.i463, ptr %3, i32 %conv146)
  %dev148 = getelementptr inbounds %struct.zd1201, ptr %1, i32 0, i32 2
  %88 = ptrtoint ptr %dev148 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev148, align 4
  %call149 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i.i, ptr noundef %89) #12
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 18
  %90 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %call149, ptr %protocol, align 8
  %91 = ptrtoint ptr %dev148 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev148, align 4
  %stats = getelementptr inbounds %struct.net_device, ptr %92, i32 0, i32 36
  %93 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %stats, align 8
  %inc = add i32 %94, 1
  store i32 %inc, ptr %stats, align 8
  %len151 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %95 = ptrtoint ptr %len151 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %len151, align 4
  %97 = load ptr, ptr %dev148, align 4
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %97, i32 0, i32 36, i32 2
  %98 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %rx_bytes, align 8
  %add154 = add i32 %99, %96
  store i32 %add154, ptr %rx_bytes, align 8
  %call155 = tail call i32 @netif_rx(ptr noundef nonnull %call.i.i) #12
  br label %resubmit

if.end156:                                        ; preds = %if.then103
  %100 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %arrayidx115, align 2
  %102 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %arrayidx117, align 2
  %104 = tail call i16 @llvm.bswap.i16(i16 %103)
  %conv157 = zext i16 %104 to i32
  %and = and i32 %conv157, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool158.not = icmp eq i32 %and, 0
  %105 = and i16 %101, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %105)
  %tobool162.not = icmp eq i16 %105, 0
  %or.cond = select i1 %tobool158.not, i1 %tobool162.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub)
  %cmp236 = icmp slt i32 %sub, 14
  br i1 %or.cond, label %if.else, label %if.then163

if.then163:                                       ; preds = %if.end156
  br i1 %cmp236, label %if.then163.resubmit_crit_edge, label %if.end167

if.then163.resubmit_crit_edge:                    ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #14
  br label %resubmit

if.end167:                                        ; preds = %if.then163
  br i1 %tobool158.not, label %if.then172, label %if.end193

if.then172:                                       ; preds = %if.end167
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %106 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %106, i32 noundef 2592, i32 noundef 16) #16
  %tobool174.not = icmp eq ptr %call7.i, null
  br i1 %tobool174.not, label %if.then172.resubmit_crit_edge, label %if.end176

if.then172.resubmit_crit_edge:                    ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #14
  br label %resubmit

if.end176:                                        ; preds = %if.then172
  %call.i.i464 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 2320, i32 noundef 2592) #12
  %tobool178.not = icmp eq ptr %call.i.i464, null
  br i1 %tobool178.not, label %if.then179, label %if.end180

if.then179:                                       ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %resubmit

if.end180:                                        ; preds = %if.end176
  %skb181 = getelementptr inbounds %struct.zd1201_frag, ptr %call7.i, i32 0, i32 2
  %107 = ptrtoint ptr %skb181 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call.i.i464, ptr %skb181, align 4
  %and183 = and i32 %conv157, 65520
  %seq184 = getelementptr inbounds %struct.zd1201_frag, ptr %call7.i, i32 0, i32 1
  %108 = ptrtoint ptr %seq184 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %and183, ptr %seq184, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i464, i32 0, i32 19
  %109 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %110, i32 2
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i464, i32 0, i32 16
  %111 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %112, i32 2
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %sub185 = add i32 %68, -15
  %arrayidx186 = getelementptr i8, ptr %3, i32 %sub185
  %call.i465 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i464, i32 noundef 12) #12
  %113 = call ptr @memcpy(ptr %call.i465, ptr %arrayidx186, i32 12)
  %arrayidx188 = getelementptr i8, ptr %3, i32 6
  %call.i466 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i464, i32 noundef 2) #12
  %114 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_loadN_noabort(i32 %114, i32 2)
  %115 = load i16, ptr %arrayidx188, align 1
  %116 = ptrtoint ptr %call.i466 to i32
  call void @__asan_storeN_noabort(i32 %116, i32 2)
  store i16 %115, ptr %call.i466, align 1
  %add.ptr190 = getelementptr i8, ptr %3, i32 8
  %conv191 = zext i16 %spec.select to i32
  %call.i467 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i464, i32 noundef %conv191) #12
  %117 = call ptr @memcpy(ptr %call.i467, ptr %add.ptr190, i32 %conv191)
  %fraglist = getelementptr inbounds %struct.zd1201, ptr %1, i32 0, i32 13
  %118 = ptrtoint ptr %fraglist to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %fraglist, align 4
  %120 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store volatile ptr %119, ptr %call7.i, align 8
  %tobool.not.i = icmp eq ptr %119, null
  br i1 %tobool.not.i, label %if.end180.hlist_add_head.exit_crit_edge, label %do.body12.i

if.end180.hlist_add_head.exit_crit_edge:          ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #14
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #14
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %119, i32 0, i32 1
  %121 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile ptr %call7.i, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.end180.hlist_add_head.exit_crit_edge
  %122 = ptrtoint ptr %fraglist to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %call7.i, ptr %fraglist, align 4
  %pprev34.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i, i32 0, i32 1
  %123 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile ptr %fraglist, ptr %pprev34.i, align 4
  br label %resubmit

if.end193:                                        ; preds = %if.end167
  %fraglist194 = getelementptr inbounds %struct.zd1201, ptr %1, i32 0, i32 13
  %and201 = and i32 %conv157, 65520
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end193
  %frag.0.in = phi ptr [ %fraglist194, %if.end193 ], [ %frag.0, %for.body.for.cond_crit_edge ]
  %124 = ptrtoint ptr %frag.0.in to i32
  call void @__asan_load4_noabort(i32 %124)
  %frag.0 = load ptr, ptr %frag.0.in, align 4
  %tobool198.not = icmp eq ptr %frag.0, null
  br i1 %tobool198.not, label %for.cond.resubmit_crit_edge, label %for.body

for.cond.resubmit_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %resubmit

for.body:                                         ; preds = %for.cond
  %seq199 = getelementptr inbounds %struct.zd1201_frag, ptr %frag.0, i32 0, i32 1
  %125 = ptrtoint ptr %seq199 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %seq199, align 4
  %cmp202 = icmp eq i32 %126, %and201
  br i1 %cmp202, label %if.end219, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

if.end219:                                        ; preds = %for.body
  %skb220 = getelementptr inbounds %struct.zd1201_frag, ptr %frag.0, i32 0, i32 2
  %127 = ptrtoint ptr %skb220 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %skb220, align 4
  %conv221 = zext i16 %spec.select to i32
  %call222 = tail call ptr @skb_put(ptr noundef %128, i32 noundef %conv221) #12
  %tobool223.not = icmp eq ptr %call222, null
  br i1 %tobool223.not, label %if.end219.if.end227_crit_edge, label %if.then224

if.end219.if.end227_crit_edge:                    ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end227

if.then224:                                       ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr225 = getelementptr i8, ptr %3, i32 8
  %129 = call ptr @memcpy(ptr %call222, ptr %add.ptr225, i32 %conv221)
  br label %if.end227

if.end227:                                        ; preds = %if.then224, %if.end219.if.end227_crit_edge
  br i1 %tobool162.not, label %if.end232, label %if.end227.resubmit_crit_edge

if.end227.resubmit_crit_edge:                     ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #14
  br label %resubmit

if.end232:                                        ; preds = %if.end227
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %frag.0, i32 0, i32 1
  %130 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %131, null
  br i1 %tobool.not.i.not.i, label %if.end232.cleanup234_crit_edge, label %if.then.i

if.end232.cleanup234_crit_edge:                   ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup234

if.then.i:                                        ; preds = %if.end232
  %132 = ptrtoint ptr %frag.0 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %frag.0, align 4
  %134 = ptrtoint ptr %131 to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile ptr %133, ptr %131, align 4
  %tobool.not.i3.i = icmp eq ptr %133, null
  br i1 %tobool.not.i3.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %133, i32 0, i32 1
  %135 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store volatile ptr %131, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %136 = ptrtoint ptr %frag.0 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr null, ptr %frag.0, align 4
  %137 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr null, ptr %pprev.i.i, align 4
  br label %cleanup234

cleanup234:                                       ; preds = %__hlist_del.exit.i, %if.end232.cleanup234_crit_edge
  tail call void @kfree(ptr noundef nonnull %frag.0) #12
  br label %if.end255

if.else:                                          ; preds = %if.end156
  br i1 %cmp236, label %if.else.resubmit_crit_edge, label %if.end239

if.else.resubmit_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %resubmit

if.end239:                                        ; preds = %if.else
  %conv240 = zext i16 %spec.select to i32
  %add242 = add nuw nsw i32 %conv240, 16
  %call.i.i468 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add242, i32 noundef 2592) #12
  %tobool244.not = icmp eq ptr %call.i.i468, null
  br i1 %tobool244.not, label %if.end239.resubmit_crit_edge, label %if.end246

if.end239.resubmit_crit_edge:                     ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #14
  br label %resubmit

if.end246:                                        ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #14
  %data.i469 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i468, i32 0, i32 19
  %138 = ptrtoint ptr %data.i469 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %data.i469, align 4
  %add.ptr.i470 = getelementptr i8, ptr %139, i32 2
  store ptr %add.ptr.i470, ptr %data.i469, align 4
  %tail.i471 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i468, i32 0, i32 16
  %140 = ptrtoint ptr %tail.i471 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %tail.i471, align 8
  %add.ptr1.i472 = getelementptr i8, ptr %141, i32 2
  store ptr %add.ptr1.i472, ptr %tail.i471, align 8
  %sub247 = add i32 %68, -15
  %arrayidx248 = getelementptr i8, ptr %3, i32 %sub247
  %call.i473 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i468, i32 noundef 12) #12
  %142 = call ptr @memcpy(ptr %call.i473, ptr %arrayidx248, i32 12)
  %arrayidx250 = getelementptr i8, ptr %3, i32 6
  %call.i474 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i468, i32 noundef 2) #12
  %143 = ptrtoint ptr %arrayidx250 to i32
  call void @__asan_loadN_noabort(i32 %143, i32 2)
  %144 = load i16, ptr %arrayidx250, align 1
  %145 = ptrtoint ptr %call.i474 to i32
  call void @__asan_storeN_noabort(i32 %145, i32 2)
  store i16 %144, ptr %call.i474, align 1
  %add.ptr252 = getelementptr i8, ptr %3, i32 8
  %call.i475 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i468, i32 noundef %conv240) #12
  %146 = call ptr @memcpy(ptr %call.i475, ptr %add.ptr252, i32 %conv240)
  br label %if.end255

if.end255:                                        ; preds = %if.end246, %cleanup234
  %skb.1 = phi ptr [ %128, %cleanup234 ], [ %call.i.i468, %if.end246 ]
  %dev256 = getelementptr inbounds %struct.zd1201, ptr %1, i32 0, i32 2
  %147 = ptrtoint ptr %dev256 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dev256, align 4
  %call257 = tail call zeroext i16 @eth_type_trans(ptr noundef %skb.1, ptr noundef %148) #12
  %protocol258 = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 15, i32 0, i32 18
  %149 = ptrtoint ptr %protocol258 to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %call257, ptr %protocol258, align 8
  %150 = ptrtoint ptr %dev256 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dev256, align 4
  %stats260 = getelementptr inbounds %struct.net_device, ptr %151, i32 0, i32 36
  %152 = ptrtoint ptr %stats260 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %stats260, align 8
  %inc262 = add i32 %153, 1
  store i32 %inc262, ptr %stats260, align 8
  %len263 = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 6
  %154 = ptrtoint ptr %len263 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %len263, align 4
  %156 = load ptr, ptr %dev256, align 4
  %rx_bytes266 = getelementptr inbounds %struct.net_device, ptr %156, i32 0, i32 36, i32 2
  %157 = ptrtoint ptr %rx_bytes266 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %rx_bytes266, align 8
  %add267 = add i32 %158, %155
  store i32 %add267, ptr %rx_bytes266, align 8
  %call268 = tail call i32 @netif_rx(ptr noundef %skb.1) #12
  br label %resubmit

resubmit:                                         ; preds = %if.end255, %if.end239.resubmit_crit_edge, %if.else.resubmit_crit_edge, %if.end227.resubmit_crit_edge, %for.cond.resubmit_crit_edge, %hlist_add_head.exit, %if.then179, %if.then172.resubmit_crit_edge, %if.then163.resubmit_crit_edge, %if.end127, %if.end123.resubmit_crit_edge, %if.then119.resubmit_crit_edge, %if.end97.resubmit_crit_edge, %if.then91, %while.body.resubmit_crit_edge, %if.then57, %if.then43, %sw.default, %sw.bb35, %sw.bb33, %sw.bb31, %sw.bb29, %lor.lhs.false.resubmit_crit_edge, %if.end.resubmit_crit_edge
  %159 = call ptr @memset(ptr %3, i32 0, i32 3000)
  %160 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 0, ptr %status, align 4
  %161 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %1, align 4
  %dev279 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %163 = ptrtoint ptr %dev279 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %162, ptr %dev279, align 4
  %call280 = call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call280)
  %tobool281.not = icmp eq i32 %call280, 0
  br i1 %tobool281.not, label %resubmit.cleanup291_crit_edge, label %resubmit.if.then285_crit_edge

resubmit.if.then285_crit_edge:                    ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then285

resubmit.cleanup291_crit_edge:                    ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup291

if.then285:                                       ; preds = %resubmit.if.then285_crit_edge, %do.end
  %rxlen286 = getelementptr inbounds %struct.zd1201, ptr %1, i32 0, i32 10
  %164 = ptrtoint ptr %rxlen286 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 0, ptr %rxlen286, align 4
  %rxdatas287 = getelementptr inbounds %struct.zd1201, ptr %1, i32 0, i32 12
  %165 = ptrtoint ptr %rxdatas287 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 1, ptr %rxdatas287, align 4
  %rxdataq288 = getelementptr inbounds %struct.zd1201, ptr %1, i32 0, i32 11
  call void @__wake_up(ptr noundef %rxdataq288, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  %166 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %transfer_buffer, align 4
  call void @kfree(ptr noundef %167) #12
  br label %cleanup291

cleanup291:                                       ; preds = %if.then285, %resubmit.cleanup291_crit_edge, %entry.cleanup291_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @wireless_send_event(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1201_net_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_enabled = getelementptr i8, ptr %dev, i32 8476
  %0 = ptrtoint ptr %mac_enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mac_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %essid = getelementptr i8, ptr %dev, i32 8436
  %essidlen = getelementptr i8, ptr %dev, i32 8472
  %2 = ptrtoint ptr %essidlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %essidlen, align 4
  %call1 = tail call fastcc i32 @zd1201_join(ptr noundef %add.ptr.i, ptr noundef %essid, i32 noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1201_net_stop(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1201_hard_start_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %txdata = getelementptr i8, ptr %dev, i32 5432
  %tx_urb = getelementptr i8, ptr %dev, i32 2364
  %0 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_urb, align 4
  %mac_enabled = getelementptr i8, ptr %dev, i32 8476
  %2 = ptrtoint ptr %mac_enabled to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mac_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %monitor = getelementptr i8, ptr %dev, i32 8484
  %4 = ptrtoint ptr %monitor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %monitor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %6 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %tx_dropped, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %8 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %9, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %add2 = add i32 %11, 9
  %12 = and i32 %add2, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp eq i32 %12, 0
  %inc4 = add i32 %11, 10
  %spec.select = select i1 %cmp, i32 %inc4, i32 %add2
  %spec.select92 = zext i1 %cmp to i32
  %13 = ptrtoint ptr %txdata to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -86, ptr %txdata, align 1
  %arrayidx6 = getelementptr i8, ptr %dev, i32 5433
  %14 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -86, ptr %arrayidx6, align 1
  %arrayidx7 = getelementptr i8, ptr %dev, i32 5434
  %15 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 3, ptr %arrayidx7, align 1
  %arrayidx8 = getelementptr i8, ptr %dev, i32 5435
  %16 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx8, align 1
  %arrayidx9 = getelementptr i8, ptr %dev, i32 5436
  %17 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx9, align 1
  %arrayidx10 = getelementptr i8, ptr %dev, i32 5437
  %18 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx10, align 1
  %add.ptr = getelementptr i8, ptr %dev, i32 5438
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  %sub = add i32 %20, -12
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i, align 4
  %add.ptr.i93 = getelementptr i8, ptr %22, i32 12
  %23 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr.i93, i32 %sub)
  br i1 %cmp, label %if.then13, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len, align 4
  %add16 = add i32 %25, -6
  %arrayidx17 = getelementptr i8, ptr %txdata, i32 %add16
  %26 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %arrayidx17, align 1
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.end.if.end18_crit_edge
  %add28 = phi i32 [ 7, %if.then13 ], [ 6, %if.end.if.end18_crit_edge ]
  %27 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len, align 4
  %add.ptr20 = getelementptr i8, ptr %txdata, i32 %28
  %add.ptr21 = getelementptr i8, ptr %add.ptr20, i32 -12
  %add.ptr22 = getelementptr i8, ptr %add.ptr21, i32 6
  %add.ptr23 = getelementptr i8, ptr %add.ptr22, i32 %spec.select92
  %29 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i, align 4
  %31 = call ptr @memcpy(ptr %add.ptr23, ptr %30, i32 12)
  %32 = load i32, ptr %len, align 4
  %33 = trunc i32 %32 to i16
  %conv = add i16 %33, -6
  %add29 = add i32 %add28, %32
  %arrayidx30 = getelementptr i8, ptr %txdata, i32 %add29
  %34 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv, ptr %arrayidx30, align 2
  %sub31 = add i32 %spec.select, -1
  %arrayidx32 = getelementptr i8, ptr %txdata, i32 %sub31
  %35 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %arrayidx32, align 1
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i, align 4
  %endp_out = getelementptr i8, ptr %dev, i32 2352
  %38 = ptrtoint ptr %endp_out to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %endp_out, align 4
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %37, align 8
  %shl.i = shl i32 %41, 8
  %shl1.i = shl i32 %39, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i, -1073741824
  %dev1.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 8
  %42 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %37, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 10
  %43 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 14
  %44 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %txdata, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  %45 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %spec.select, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 28
  %46 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @zd1201_usbtx, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 27
  %47 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %add.ptr.i, ptr %context4.i, align 4
  %48 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tx_urb, align 4
  %call36 = tail call i32 @usb_submit_urb(ptr noundef %49, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %50 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tx_errors, align 4
  %inc40 = add i32 %51, 1
  store i32 %inc40, ptr %tx_errors, align 4
  %52 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i96 = getelementptr inbounds %struct.netdev_queue, ptr %53, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i96) #12
  br label %cleanup

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %54 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tx_packets, align 4
  %inc42 = add i32 %55, 1
  store i32 %inc42, ptr %tx_packets, align 4
  %56 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %58 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tx_bytes, align 4
  %add45 = add i32 %59, %57
  store i32 %add45, ptr %tx_bytes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then38, %if.then
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zd1201_set_multicast(ptr noundef %dev) #2 align 64 {
entry:
  %reqbuf = alloca [96 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %reqbuf) #12
  %0 = call ptr @memset(ptr %reqbuf, i32 255, i32 96)
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %1 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %2)
  %cmp = icmp sgt i32 %2, 16
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %3 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %3)
  %ha.027 = load ptr, ptr %mc, align 4
  %cmp5.not28 = icmp eq ptr %ha.027, %mc
  br i1 %cmp5.not28, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %ha.030 = phi ptr [ %ha.0, %for.body.for.body_crit_edge ], [ %ha.027, %for.cond.preheader.for.body_crit_edge ]
  %i.029 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %inc = add i32 %i.029, 1
  %mul = mul i32 %i.029, 6
  %add.ptr6 = getelementptr i8, ptr %reqbuf, i32 %mul
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.030, i32 0, i32 2
  %4 = call ptr @memcpy(ptr %add.ptr6, ptr %addr, i32 6)
  %5 = ptrtoint ptr %ha.030 to i32
  call void @__asan_load4_noabort(i32 %5)
  %ha.0 = load ptr, ptr %ha.030, align 4
  %cmp5.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp5.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %mul16 = mul i32 %2, 6
  %call17 = call fastcc i32 @zd1201_setconfig(ptr noundef %add.ptr.i, i32 noundef 64640, ptr noundef nonnull %reqbuf, i32 noundef %mul16, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %reqbuf) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1201_set_mac_address(ptr noundef %dev, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %0 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %addr_len, align 1
  %conv = zext i8 %1 to i32
  %call1 = tail call fastcc i32 @zd1201_setconfig(ptr noundef nonnull %add.ptr.i, i32 noundef 64513, ptr noundef %sa_data, i32 noundef %conv, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #12
  %call7 = tail call fastcc i32 @zd1201_mac_reset(ptr noundef nonnull %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end4 ], [ -19, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zd1201_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.27, ptr noundef %dev) #15
  %tx_urb = getelementptr i8, ptr %dev, i32 2364
  %2 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_urb, align 4
  %call2 = tail call i32 @usb_unlink_urb(ptr noundef %3) #12
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %4 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %tx_errors, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %7, i32 0, i32 12
  %9 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %8)
  %cmp.not.i.i = icmp eq i32 %10, %8
  br i1 %cmp.not.i.i, label %do.end.cleanup_crit_edge, label %do.body5.i.i

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body5.i.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 %8, ptr %trans_start.i.i, align 16
  br label %cleanup

cleanup:                                          ; preds = %do.body5.i.i, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zd1201_join(ptr noundef %zd, ptr nocapture noundef readonly %essid, i32 noundef %essidlen) unnamed_addr #2 align 64 {
entry:
  %zdval.i.i53 = alloca i16, align 2
  %zdval.i = alloca i16, align 2
  %zdval.i.i = alloca i16, align 2
  %buf = alloca [34 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %buf) #12
  %0 = getelementptr inbounds i8, ptr %buf, i32 2
  %1 = call ptr @memset(ptr %0, i32 255, i32 32)
  %mac_enabled.i = getelementptr inbounds %struct.zd1201, ptr %zd, i32 0, i32 18
  %2 = ptrtoint ptr %mac_enabled.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mac_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  %monitor.i = getelementptr inbounds %struct.zd1201, ptr %zd, i32 0, i32 20
  %4 = ptrtoint ptr %monitor.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %monitor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not.i = icmp eq i32 %5, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then2.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

if.then2.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %zdval.i.i) #12
  %6 = ptrtoint ptr %zdval.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %zdval.i.i, align 2
  %call.i.i = call fastcc i32 @zd1201_setconfig(ptr noundef %zd, i32 noundef 64645, ptr noundef nonnull %zdval.i.i, i32 noundef 2, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not.i, label %if.then2.i.if.end6.i_crit_edge, label %if.then2.i.cleanup_crit_edge

if.then2.i.cleanup_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then2.i.if.end6.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then2.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge
  %call7.i = tail call fastcc i32 @zd1201_docmd(ptr noundef %zd, i32 noundef 2, i32 noundef 0, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %if.end6.i.cleanup_crit_edge

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %mac_enabled.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %mac_enabled.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then9.i, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %zdval.i) #12
  %8 = ptrtoint ptr %zdval.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 768, ptr %zdval.i, align 2
  %call.i = call fastcc i32 @zd1201_setconfig(ptr noundef %zd, i32 noundef 64554, ptr noundef nonnull %zdval.i, i32 noundef 2, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %conv5 = trunc i32 %essidlen to i16
  %9 = tail call i16 @llvm.bswap.i16(i16 %conv5)
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %buf, align 2
  %add.ptr = getelementptr inbounds i8, ptr %buf, i32 2
  %11 = call ptr @memcpy(ptr %add.ptr, ptr %essid, i32 %essidlen)
  %ap = getelementptr inbounds %struct.zd1201, ptr %zd, i32 0, i32 15
  %12 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool7.not = icmp eq i32 %13, 0
  br i1 %tobool7.not, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end4
  %call10 = call fastcc i32 @zd1201_setconfig(ptr noundef %zd, i32 noundef 64514, ptr noundef nonnull %buf, i32 noundef 34, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then8.if.end19_crit_edge, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then8.if.end19_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.else:                                          ; preds = %if.end4
  %call15 = call fastcc i32 @zd1201_setconfig(ptr noundef %zd, i32 noundef 64516, ptr noundef nonnull %buf, i32 noundef 34, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.else.if.end19_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.end19:                                         ; preds = %if.else.if.end19_crit_edge, %if.then8.if.end19_crit_edge
  %dev = getelementptr inbounds %struct.zd1201, ptr %zd, i32 0, i32 2
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 86
  %16 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_addr, align 64
  %addr_len = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 56
  %18 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %addr_len, align 1
  %conv21 = zext i8 %19 to i32
  %call22 = tail call fastcc i32 @zd1201_setconfig(ptr noundef %zd, i32 noundef 64513, ptr noundef %17, i32 noundef %conv21, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end25:                                         ; preds = %if.end19
  %20 = ptrtoint ptr %mac_enabled.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mac_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i55 = icmp eq i32 %21, 0
  br i1 %tobool.not.i55, label %if.end.i58, label %if.end25.if.end29_crit_edge

if.end25.if.end29_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.end.i58:                                       ; preds = %if.end25
  %call.i56 = tail call fastcc i32 @zd1201_docmd(ptr noundef %zd, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %tobool1.not.i57 = icmp eq i32 %call.i56, 0
  br i1 %tobool1.not.i57, label %if.then2.i59, label %if.end.i58.if.end4.i_crit_edge

if.end.i58.if.end4.i_crit_edge:                   ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.then2.i59:                                     ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %mac_enabled.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %mac_enabled.i, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i59, %if.end.i58.if.end4.i_crit_edge
  %monitor.i60 = getelementptr inbounds %struct.zd1201, ptr %zd, i32 0, i32 20
  %23 = ptrtoint ptr %monitor.i60 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %monitor.i60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool5.not.i = icmp eq i32 %24, 0
  br i1 %tobool5.not.i, label %if.end4.i.zd1201_enable.exit_crit_edge, label %if.then6.i

if.end4.i.zd1201_enable.exit_crit_edge:           ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %zd1201_enable.exit

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %zdval.i.i53) #12
  %25 = ptrtoint ptr %zdval.i.i53 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 256, ptr %zdval.i.i53, align 2
  %call.i.i61 = call fastcc i32 @zd1201_setconfig(ptr noundef %zd, i32 noundef 64645, ptr noundef nonnull %zdval.i.i53, i32 noundef 2, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i.i53) #12
  br label %zd1201_enable.exit

zd1201_enable.exit:                               ; preds = %if.then6.i, %if.end4.i.zd1201_enable.exit_crit_edge
  %retval.0.i62 = phi i32 [ %call.i.i61, %if.then6.i ], [ %call.i56, %if.end4.i.zd1201_enable.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i62)
  %tobool27.not = icmp eq i32 %retval.0.i62, 0
  br i1 %tobool27.not, label %zd1201_enable.exit.if.end29_crit_edge, label %zd1201_enable.exit.cleanup_crit_edge

zd1201_enable.exit.cleanup_crit_edge:             ; preds = %zd1201_enable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

zd1201_enable.exit.if.end29_crit_edge:            ; preds = %zd1201_enable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.end29:                                         ; preds = %zd1201_enable.exit.if.end29_crit_edge, %if.end25.if.end29_crit_edge
  tail call void @msleep(i32 noundef 100) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %zd1201_enable.exit.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end6.i.cleanup_crit_edge, %if.then2.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end29 ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call10, %if.then8.cleanup_crit_edge ], [ %call15, %if.else.cleanup_crit_edge ], [ %call22, %if.end19.cleanup_crit_edge ], [ %retval.0.i62, %zd1201_enable.exit.cleanup_crit_edge ], [ %call.i.i, %if.then2.i.cleanup_crit_edge ], [ %call7.i, %if.end6.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %buf) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zd1201_usbtx(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %dev = getelementptr inbounds %struct.zd1201, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %5) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zd1201_mac_reset(ptr noundef %zd) unnamed_addr #2 align 64 {
entry:
  %zdval.i.i4 = alloca i16, align 2
  %zdval.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_enabled = getelementptr inbounds %struct.zd1201, ptr %zd, i32 0, i32 18
  %0 = ptrtoint ptr %mac_enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mac_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end.i:                                         ; preds = %entry
  %monitor.i = getelementptr inbounds %struct.zd1201, ptr %zd, i32 0, i32 20
  %2 = ptrtoint ptr %monitor.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %monitor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not.i = icmp eq i32 %3, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then2.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

if.then2.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %zdval.i.i) #12
  %4 = ptrtoint ptr %zdval.i.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %zdval.i.i, align 2
  %call.i.i = call fastcc i32 @zd1201_setconfig(ptr noundef %zd, i32 noundef 64645, ptr noundef nonnull %zdval.i.i, i32 noundef 2, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not.i, label %if.then2.i.if.end6.i_crit_edge, label %if.then2.i.zd1201_disable.exit_crit_edge

if.then2.i.zd1201_disable.exit_crit_edge:         ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %zd1201_disable.exit

if.then2.i.if.end6.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then2.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge
  %call7.i = tail call fastcc i32 @zd1201_docmd(ptr noundef %zd, i32 noundef 2, i32 noundef 0, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %zd1201_disable.exit.thread, label %if.end6.i.zd1201_disable.exit_crit_edge

if.end6.i.zd1201_disable.exit_crit_edge:          ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %zd1201_disable.exit

zd1201_disable.exit.thread:                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %mac_enabled to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %mac_enabled, align 4
  br label %if.end.i8

zd1201_disable.exit:                              ; preds = %if.end6.i.zd1201_disable.exit_crit_edge, %if.then2.i.zd1201_disable.exit_crit_edge
  %6 = ptrtoint ptr %mac_enabled to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %mac_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not.i6 = icmp eq i32 %.pr, 0
  br i1 %tobool.not.i6, label %zd1201_disable.exit.if.end.i8_crit_edge, label %zd1201_disable.exit.return_crit_edge

zd1201_disable.exit.return_crit_edge:             ; preds = %zd1201_disable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

zd1201_disable.exit.if.end.i8_crit_edge:          ; preds = %zd1201_disable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i8

if.end.i8:                                        ; preds = %zd1201_disable.exit.if.end.i8_crit_edge, %zd1201_disable.exit.thread
  %call.i = tail call fastcc i32 @zd1201_docmd(ptr noundef %zd, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i7 = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i7, label %if.then2.i9, label %if.end.i8.if.end4.i_crit_edge

if.end.i8.if.end4.i_crit_edge:                    ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.then2.i9:                                      ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %mac_enabled to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %mac_enabled, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i9, %if.end.i8.if.end4.i_crit_edge
  %8 = ptrtoint ptr %monitor.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %monitor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not.i = icmp eq i32 %9, 0
  br i1 %tobool5.not.i, label %if.end4.i.return_crit_edge, label %if.then6.i

if.end4.i.return_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %zdval.i.i4) #12
  %10 = ptrtoint ptr %zdval.i.i4 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 256, ptr %zdval.i.i4, align 2
  %call.i.i11 = call fastcc i32 @zd1201_setconfig(ptr noundef %zd, i32 noundef 64645, ptr noundef nonnull %zdval.i.i4, i32 noundef 2, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i.i4) #12
  br label %return

return:                                           ; preds = %if.then6.i, %if.end4.i.return_crit_edge, %zd1201_disable.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 0, %zd1201_disable.exit.return_crit_edge ], [ %call.i.i11, %if.then6.i ], [ %call.i, %if.end4.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_unlink_urb(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @zd1201_get_wireless_stats(ptr noundef readnone %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %iwstats = getelementptr i8, ptr %dev, i32 2316
  ret ptr %iwstats
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1201_config_commit(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %data, ptr nocapture noundef readnone %essid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call1 = tail call fastcc i32 @zd1201_mac_reset(ptr noundef %add.ptr.i)
  ret i32 %call1
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @zd1201_get_name(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %name, ptr nocapture noundef readnone %extra) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %name, ptr @.str.29, i32 13)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1201_set_freq(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %freq, ptr nocapture noundef readnone %extra) #2 align 64 {
entry:
  %zdval.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %e = getelementptr inbounds %struct.iw_freq, ptr %freq, i32 0, i32 1
  %0 = ptrtoint ptr %e to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %e, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  %2 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %freq, align 4
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %mul.i = mul i32 %3, 1000
  %call.i = tail call i32 @ieee80211_freq_khz_to_channel(i32 noundef %mul.i) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %channel.0.in = phi i32 [ %call.i, %if.else ], [ %3, %entry.if.end_crit_edge ]
  %channel.0 = trunc i32 %channel.0.in to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %zdval.i) #12
  %4 = tail call i16 @llvm.bswap.i16(i16 %channel.0) #12
  %5 = ptrtoint ptr %zdval.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %zdval.i, align 2
  %call.i16 = call fastcc i32 @zd1201_setconfig(ptr noundef %add.ptr.i, i32 noundef 64515, ptr noundef nonnull %zdval.i, i32 noundef 2, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %tobool.not = icmp eq i32 %call.i16, 0
  br i1 %tobool.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call9 = tail call fastcc i32 @zd1201_mac_reset(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge
  ret i32 %call.i16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1201_get_freq(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %freq, ptr nocapture noundef readnone %extra) #2 align 64 {
entry:
  %zdval.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %zdval.i) #12
  %0 = ptrtoint ptr %zdval.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %zdval.i, align 2, !annotation !124
  %call.i = call fastcc i32 @zd1201_getconfig(ptr noundef %add.ptr.i, i32 noundef 64515, ptr noundef nonnull %zdval.i, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %zd1201_getconfig16.exit

zd1201_getconfig16.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %zdval.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %zdval.i, align 2
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i) #12
  %e = getelementptr inbounds %struct.iw_freq, ptr %freq, i32 0, i32 1
  %4 = ptrtoint ptr %e to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %e, align 4
  %conv = sext i16 %3 to i32
  %5 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %freq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %zd1201_getconfig16.exit
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1201_set_mode(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %mode, ptr nocapture noundef readnone %extra) #2 align 64 {
entry:
  %zdval.i.i = alloca i16, align 2
  %zdval.i59 = alloca i16, align 2
  %zdval.i = alloca i16, align 2
  %buffer = alloca [34 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %buffer) #12
  %0 = call ptr @memset(ptr %buffer, i32 255, i32 34)
  %ap = getelementptr i8, ptr %dev, i32 8432
  %1 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end2, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp.not = icmp eq i32 %4, 3
  %. = select i1 %cmp.not, i32 0, i32 -22
  br label %cleanup

if.end2:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %zdval.i) #12
  %5 = ptrtoint ptr %zdval.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %zdval.i, align 2
  %call.i = call fastcc i32 @zd1201_setconfig(ptr noundef %add.ptr.i, i32 noundef 64645, ptr noundef nonnull %zdval.i, i32 noundef 2, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end6, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %dev7 = getelementptr i8, ptr %dev, i32 2312
  %6 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev7, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 32
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %type, align 16
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %10, label %if.end6.cleanup_crit_edge [
    i32 6, label %sw.bb
    i32 8, label %if.end6.sw.epilog_crit_edge
    i32 1, label %sw.bb12
    i32 2, label %sw.bb13
  ]

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev7, align 4
  %type9 = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 32
  %14 = ptrtoint ptr %type9 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 801, ptr %type9, align 16
  %call10 = tail call fastcc i32 @zd1201_join(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.30, i32 noundef 5)
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb12, %sw.bb, %if.end6.sw.epilog_crit_edge
  %porttype.0 = phi i16 [ 256, %sw.bb13 ], [ 0, %sw.bb12 ], [ 768, %if.end6.sw.epilog_crit_edge ], [ 768, %sw.bb ]
  %tobool20.not = phi i1 [ true, %sw.bb13 ], [ true, %sw.bb12 ], [ true, %if.end6.sw.epilog_crit_edge ], [ false, %sw.bb ]
  %monitor.1 = phi i32 [ 0, %sw.bb13 ], [ 0, %sw.bb12 ], [ 0, %if.end6.sw.epilog_crit_edge ], [ 1, %sw.bb ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %zdval.i59) #12
  %15 = ptrtoint ptr %zdval.i59 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %porttype.0, ptr %zdval.i59, align 2
  %call.i60 = call fastcc i32 @zd1201_setconfig(ptr noundef %add.ptr.i, i32 noundef 64512, ptr noundef nonnull %zdval.i59, i32 noundef 2, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i59) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %tobool15.not = icmp eq i32 %call.i60, 0
  br i1 %tobool15.not, label %if.end17, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %sw.epilog
  %monitor18 = getelementptr i8, ptr %dev, i32 8484
  %16 = ptrtoint ptr %monitor18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %monitor18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool19.not = icmp ne i32 %17, 0
  %or.cond = and i1 %tobool20.not, %tobool19.not
  br i1 %or.cond, label %if.then21, label %if.end17.if.end31_crit_edge

if.end17.if.end31_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.then21:                                        ; preds = %if.end17
  %mac_enabled.i = getelementptr i8, ptr %dev, i32 8476
  %18 = ptrtoint ptr %mac_enabled.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mac_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %if.then21.zd1201_disable.exit_crit_edge, label %if.then2.i

if.then21.zd1201_disable.exit_crit_edge:          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  br label %zd1201_disable.exit

if.then2.i:                                       ; preds = %if.then21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %zdval.i.i) #12
  %20 = ptrtoint ptr %zdval.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %zdval.i.i, align 2
  %call.i.i = call fastcc i32 @zd1201_setconfig(ptr noundef %add.ptr.i, i32 noundef 64645, ptr noundef nonnull %zdval.i.i, i32 noundef 2, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not.i, label %if.end6.i, label %if.then2.i.zd1201_disable.exit_crit_edge

if.then2.i.zd1201_disable.exit_crit_edge:         ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %zd1201_disable.exit

if.end6.i:                                        ; preds = %if.then2.i
  %call7.i = tail call fastcc i32 @zd1201_docmd(ptr noundef %add.ptr.i, i32 noundef 2, i32 noundef 0, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %if.end6.i.zd1201_disable.exit_crit_edge

if.end6.i.zd1201_disable.exit_crit_edge:          ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %zd1201_disable.exit

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %mac_enabled.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %mac_enabled.i, align 4
  br label %zd1201_disable.exit

zd1201_disable.exit:                              ; preds = %if.then9.i, %if.end6.i.zd1201_disable.exit_crit_edge, %if.then2.i.zd1201_disable.exit_crit_edge, %if.then21.zd1201_disable.exit_crit_edge
  %essidlen = getelementptr i8, ptr %dev, i32 8472
  %22 = ptrtoint ptr %essidlen to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %essidlen, align 4
  %conv = trunc i32 %23 to i16
  %24 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %25 = ptrtoint ptr %buffer to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %buffer, align 2
  %add.ptr = getelementptr inbounds i8, ptr %buffer, i32 2
  %essid = getelementptr i8, ptr %dev, i32 8436
  %26 = call ptr @memcpy(ptr %add.ptr, ptr %essid, i32 %23)
  %call27 = call fastcc i32 @zd1201_setconfig(ptr noundef %add.ptr.i, i32 noundef 64514, ptr noundef nonnull %buffer, i32 noundef 34, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %zd1201_disable.exit.if.end31_crit_edge, label %zd1201_disable.exit.cleanup_crit_edge

zd1201_disable.exit.cleanup_crit_edge:            ; preds = %zd1201_disable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

zd1201_disable.exit.if.end31_crit_edge:           ; preds = %zd1201_disable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31

if.end31:                                         ; preds = %zd1201_disable.exit.if.end31_crit_edge, %if.end17.if.end31_crit_edge
  %27 = ptrtoint ptr %monitor18 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %monitor.1, ptr %monitor18, align 4
  %call34 = tail call fastcc i32 @zd1201_mac_reset(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %zd1201_disable.exit.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.end31 ], [ %., %if.then ], [ %call.i, %if.end2.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ %call.i60, %sw.epilog.cleanup_crit_edge ], [ %call27, %zd1201_disable.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %buffer) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1201_get_mode(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %mode, ptr nocapture noundef readnone %extra) #2 align 64 {
entry:
  %zdval.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %zdval.i) #12
  %0 = ptrtoint ptr %zdval.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %zdval.i, align 2, !annotation !124
  %call.i = call fastcc i32 @zd1201_getconfig(ptr noundef %add.ptr.i, i32 noundef 64512, ptr noundef nonnull %zdval.i, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %zd1201_getconfig16.exit

zd1201_getconfig16.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %zdval.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %zdval.i, align 2
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i) #12
  %conv = sext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %3)
  %4 = icmp ult i16 %3, 7
  br i1 %4, label %switch.hole_check, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %switch.hole_check.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zd1201_get_mode.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zd1201_get_mode, %if.then10)) #12
          to label %sw.epilog [label %if.then10], !srcloc !125

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 4
  %dev11 = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zd1201_get_mode.__UNIQUE_ID_ddebug361, ptr noundef %dev11, ptr noundef nonnull @.str.32, i32 noundef %conv) #12
  br label %sw.epilog

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = trunc i16 %3 to i8
  %switch.shifted = lshr i8 79, %switch.maskindex
  %7 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %switch.lobit.not = icmp eq i8 %7, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.body_crit_edge, label %switch.lookup

switch.hole_check.do.body_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.zd1201_get_mode, i32 0, i32 %conv
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.then10, %do.body
  %.sink = phi i32 [ 0, %do.body ], [ 0, %if.then10 ], [ %switch.load, %switch.lookup ]
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink, ptr %mode, align 4
  %monitor = getelementptr i8, ptr %dev, i32 8484
  %10 = ptrtoint ptr %monitor to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %monitor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool14.not = icmp eq i32 %11, 0
  %spec.store.select = select i1 %tobool14.not, i32 %.sink, i32 6
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %spec.store.select, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %zd1201_getconfig16.exit
  ret i32 %call.i
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @zd1201_get_range(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %wrq, ptr nocapture noundef writeonly %extra) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.iw_point, ptr %wrq, i32 0, i32 1
  %0 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 568, ptr %length, align 4
  %1 = call ptr @memset(ptr %extra, i32 0, i32 568)
  %we_version_compiled = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 30
  %2 = ptrtoint ptr %we_version_compiled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 22, ptr %we_version_compiled, align 4
  %we_version_source = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 31
  %3 = ptrtoint ptr %we_version_source to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 22, ptr %we_version_source, align 1
  %max_qual = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 8
  %4 = ptrtoint ptr %max_qual to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -128, ptr %max_qual, align 4
  %level = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %level to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -128, ptr %level, align 1
  %noise = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 8, i32 2
  %6 = ptrtoint ptr %noise to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -128, ptr %noise, align 2
  %updated = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 8, i32 3
  %7 = ptrtoint ptr %updated to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 7, ptr %updated, align 1
  %encoding_size = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 23
  %8 = ptrtoint ptr %encoding_size to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 5, ptr %encoding_size, align 2
  %arrayidx5 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 23, i32 1
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 13, ptr %arrayidx5, align 2
  %num_encoding_sizes = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 24
  %10 = ptrtoint ptr %num_encoding_sizes to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %num_encoding_sizes, align 2
  %max_encoding_tokens = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 25
  %11 = ptrtoint ptr %max_encoding_tokens to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 4, ptr %max_encoding_tokens, align 1
  %num_bitrates = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 10
  %12 = ptrtoint ptr %num_bitrates to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 4, ptr %num_bitrates, align 4
  %bitrate = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 11
  %13 = ptrtoint ptr %bitrate to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1000000, ptr %bitrate, align 4
  %arrayidx8 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 11, i32 1
  %14 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2000000, ptr %arrayidx8, align 4
  %arrayidx10 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 11, i32 2
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 5500000, ptr %arrayidx10, align 4
  %arrayidx12 = getelementptr %struct.iw_range, ptr %extra, i32 0, i32 11, i32 3
  %16 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 11000000, ptr %arrayidx12, align 4
  %min_frag = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 14
  %max_rts = getelementptr inbounds %struct.iw_range, ptr %extra, i32 0, i32 13
  %17 = ptrtoint ptr %max_rts to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2500, ptr %max_rts, align 4
  %18 = ptrtoint ptr %min_frag to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2500, ptr %min_frag, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1201_get_wap(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %ap_addr, ptr nocapture noundef readnone %extra) #2 align 64 {
entry:
  %buffer = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buffer) #12
  %0 = call ptr @memset(ptr %buffer, i32 255, i32 6)
  %call1 = call fastcc i32 @zd1201_getconfig(ptr noundef %add.ptr.i, i32 noundef 64835, ptr noundef nonnull %buffer, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = getelementptr inbounds [6 x i8], ptr %buffer, i32 0, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %1, align 1
  %4 = lshr i16 %3, 8
  %conv = trunc i16 %4 to i8
  %level = getelementptr i8, ptr %dev, i32 2319
  %5 = ptrtoint ptr %level to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %level, align 1
  %updated = getelementptr i8, ptr %dev, i32 2321
  %6 = ptrtoint ptr %updated to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %updated, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %ap_addr, i32 0, i32 1
  %call6 = tail call fastcc i32 @zd1201_getconfig(ptr noundef %add.ptr.i, i32 noundef 64834, ptr noundef %sa_data, i32 noundef 6)
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buffer) #12
  ret i32 %call6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @zd1201_set_scan(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %srq, ptr nocapture noundef readnone %extra) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1201_get_scan(ptr noundef %dev, ptr noundef %info, ptr nocapture noundef writeonly %srq, ptr noundef %extra) #2 align 64 {
entry:
  %zdval.i.i = alloca i16, align 2
  %iwe = alloca %struct.iw_event, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %iwe) #12
  %0 = getelementptr inbounds %struct.iw_event, ptr %iwe, i32 0, i32 1
  %1 = getelementptr inbounds %struct.iw_event, ptr %iwe, i32 0, i32 2
  %2 = getelementptr inbounds %struct.iw_event, ptr %iwe, i32 0, i32 2, i32 0, i32 1
  %3 = getelementptr inbounds %struct.iw_event, ptr %iwe, i32 0, i32 2, i32 0, i32 2
  %add.ptr = getelementptr i8, ptr %extra, i32 4096
  %ap = getelementptr i8, ptr %dev, i32 8432
  %4 = call ptr @memset(ptr %iwe, i32 255, i32 20)
  %5 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup143_crit_edge

entry.cleanup143_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup143

if.end:                                           ; preds = %entry
  %mac_enabled = getelementptr i8, ptr %dev, i32 8476
  %7 = ptrtoint ptr %mac_enabled to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mac_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.zd1201_enable.exit_crit_edge

if.end.zd1201_enable.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %zd1201_enable.exit

if.end.i:                                         ; preds = %if.end
  %call.i = tail call fastcc i32 @zd1201_docmd(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef 0, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %mac_enabled to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %mac_enabled, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %monitor.i = getelementptr i8, ptr %dev, i32 8484
  %10 = ptrtoint ptr %monitor.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %monitor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool5.not.i = icmp eq i32 %11, 0
  br i1 %tobool5.not.i, label %if.end4.i.zd1201_enable.exit_crit_edge, label %if.then6.i

if.end4.i.zd1201_enable.exit_crit_edge:           ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %zd1201_enable.exit

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %zdval.i.i) #12
  %12 = ptrtoint ptr %zdval.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 256, ptr %zdval.i.i, align 2
  %call.i.i = call fastcc i32 @zd1201_setconfig(ptr noundef %add.ptr.i, i32 noundef 64645, ptr noundef nonnull %zdval.i.i, i32 noundef 2, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i.i) #12
  br label %zd1201_enable.exit

zd1201_enable.exit:                               ; preds = %if.then6.i, %if.end4.i.zd1201_enable.exit_crit_edge, %if.end.zd1201_enable.exit_crit_edge
  %rxdatas = getelementptr i8, ptr %dev, i32 5424
  %13 = ptrtoint ptr %rxdatas to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %rxdatas, align 4
  %call2 = tail call fastcc i32 @zd1201_docmd(ptr noundef %add.ptr.i, i32 noundef 17, i32 noundef 61697, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %zd1201_enable.exit.cleanup143_crit_edge

zd1201_enable.exit.cleanup143_crit_edge:          ; preds = %zd1201_enable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup143

if.end5:                                          ; preds = %zd1201_enable.exit
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 1131) #12
  %14 = ptrtoint ptr %rxdatas to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rxdatas, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool10.not = icmp eq i32 %15, 0
  br i1 %tobool10.not, label %if.then11, label %if.end5.if.end22_crit_edge

if.end5.if.end22_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then11:                                        ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %16 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %rxdataq = getelementptr i8, ptr %dev, i32 5372
  %call13221 = call i32 @prepare_to_wait_event(ptr noundef %rxdataq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %17 = ptrtoint ptr %rxdatas to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rxdatas, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool15.not222 = icmp eq i32 %18, 0
  br i1 %tobool15.not222, label %if.then11.if.end17_crit_edge, label %if.then11.for.end_crit_edge

if.then11.for.end_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.then11.if.end17_crit_edge:                     ; preds = %if.then11
  br label %if.end17

if.end17:                                         ; preds = %cleanup.if.end17_crit_edge, %if.then11.if.end17_crit_edge
  %call13223 = phi i32 [ %call13, %cleanup.if.end17_crit_edge ], [ %call13221, %if.then11.if.end17_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13223)
  %tobool18.not = icmp eq i32 %call13223, 0
  br i1 %tobool18.not, label %cleanup, label %if.end17.__out_crit_edge

if.end17.__out_crit_edge:                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %__out

cleanup:                                          ; preds = %if.end17
  call void @schedule() #12
  %call13 = call i32 @prepare_to_wait_event(ptr noundef %rxdataq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #12
  %19 = ptrtoint ptr %rxdatas to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rxdatas, align 4
  %tobool15.not = icmp eq i32 %20, 0
  br i1 %tobool15.not, label %cleanup.if.end17_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

cleanup.if.end17_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then11.for.end_crit_edge
  call void @finish_wait(ptr noundef %rxdataq, ptr noundef nonnull %__wq_entry) #12
  br label %__out

__out:                                            ; preds = %for.end, %if.end17.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %if.end22

if.end22:                                         ; preds = %__out, %if.end5.if.end22_crit_edge
  %rxlen = getelementptr i8, ptr %dev, i32 5368
  %21 = ptrtoint ptr %rxlen to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rxlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool24.not = icmp eq i32 %22, 0
  br i1 %tobool24.not, label %if.end22.cleanup143_crit_edge, label %if.end26

if.end22.cleanup143_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup143

if.end26:                                         ; preds = %if.end22
  %rxdata = getelementptr i8, ptr %dev, i32 2368
  %arrayidx = getelementptr i8, ptr %dev, i32 2370
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 497, i16 %24)
  %cmp.not = icmp eq i16 %24, 497
  br i1 %cmp.not, label %for.cond30.preheader, label %if.end26.cleanup143_crit_edge

if.end26.cleanup143_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup143

for.cond30.preheader:                             ; preds = %if.end26
  %25 = ptrtoint ptr %rxlen to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rxlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %26)
  %cmp32226 = icmp sgt i32 %26, 8
  br i1 %cmp32226, label %for.body.lr.ph, label %for.cond30.preheader.for.end135_crit_edge

for.cond30.preheader.for.end135_crit_edge:        ; preds = %for.cond30.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end135

for.body.lr.ph:                                   ; preds = %for.cond30.preheader
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %1, i32 0, i32 1
  %disabled = getelementptr inbounds %struct.iw_param, ptr %1, i32 0, i32 2
  %level = getelementptr inbounds %struct.iw_quality, ptr %1, i32 0, i32 1
  %updated = getelementptr inbounds %struct.iw_quality, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.end92.for.body_crit_edge, %for.body.lr.ph
  %cev.0228 = phi ptr [ %extra, %for.body.lr.ph ], [ %call132, %for.end92.for.body_crit_edge ]
  %i.0227 = phi i32 [ 8, %for.body.lr.ph ], [ %add134, %for.end92.for.body_crit_edge ]
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 -29931, ptr %0, align 2
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1, ptr %1, align 4
  %add.ptr37 = getelementptr i8, ptr %rxdata, i32 %i.0227
  %add.ptr38 = getelementptr i8, ptr %add.ptr37, i32 6
  %29 = call ptr @memcpy(ptr %sa_data, ptr %add.ptr38, i32 6)
  %call39 = call ptr @iwe_stream_add_event(ptr noundef %info, ptr noundef %cev.0228, ptr noundef %add.ptr, ptr noundef nonnull %iwe, i32 noundef 20) #12
  %30 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 -29925, ptr %0, align 2
  %add = add i32 %i.0227, 16
  %arrayidx42 = getelementptr %struct.zd1201, ptr %add.ptr.i, i32 0, i32 9, i32 %add
  %31 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %32 to i16
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv43, ptr %2, align 4
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1, ptr %3, align 2
  %add.ptr49 = getelementptr i8, ptr %add.ptr37, i32 18
  %call50 = call ptr @iwe_stream_add_point(ptr noundef %info, ptr noundef %call39, ptr noundef %add.ptr, ptr noundef nonnull %iwe, ptr noundef %add.ptr49) #12
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 -29945, ptr %0, align 2
  %add53 = add i32 %i.0227, 14
  %arrayidx54 = getelementptr %struct.zd1201, ptr %add.ptr.i, i32 0, i32 9, i32 %add53
  %36 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx54, align 1
  %38 = and i8 %37, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool56.not = icmp eq i8 %38, 0
  %. = select i1 %tobool56.not, i32 1, i32 3
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %., ptr %1, align 4
  %call61 = call ptr @iwe_stream_add_event(ptr noundef %info, ptr noundef %call50, ptr noundef %add.ptr, ptr noundef nonnull %iwe, i32 noundef 8) #12
  %40 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 -29947, ptr %0, align 2
  %arrayidx65 = getelementptr %struct.zd1201, ptr %add.ptr.i, i32 0, i32 9, i32 %i.0227
  %41 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx65, align 1
  %conv66 = zext i8 %42 to i32
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv66, ptr %1, align 4
  %44 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %2, align 4
  %call69 = call ptr @iwe_stream_add_event(ptr noundef %info, ptr noundef %call61, ptr noundef %add.ptr, ptr noundef nonnull %iwe, i32 noundef 12) #12
  %45 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 -29919, ptr %0, align 2
  %46 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %2, align 4
  %47 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %disabled, align 1
  %add78 = add i32 %i.0227, 50
  br label %for.body76

for.body76:                                       ; preds = %for.inc.for.body76_crit_edge, %for.body
  %cev.1225 = phi ptr [ %call69, %for.body ], [ %cev.2, %for.inc.for.body76_crit_edge ]
  %j.0224 = phi i32 [ 0, %for.body ], [ %inc, %for.inc.for.body76_crit_edge ]
  %add79 = add i32 %add78, %j.0224
  %arrayidx80 = getelementptr %struct.zd1201, ptr %add.ptr.i, i32 0, i32 9, i32 %add79
  %48 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx80, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool81.not = icmp eq i8 %49, 0
  br i1 %tobool81.not, label %for.body76.for.inc_crit_edge, label %if.then82

for.body76.for.inc_crit_edge:                     ; preds = %for.body76
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then82:                                        ; preds = %for.body76
  call void @__sanitizer_cov_trace_pc() #14
  %50 = and i8 %49, 127
  %and88 = zext i8 %50 to i32
  %mul = mul nuw nsw i32 %and88, 500000
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %mul, ptr %1, align 4
  %call90 = call ptr @iwe_stream_add_event(ptr noundef %info, ptr noundef %cev.1225, ptr noundef %add.ptr, ptr noundef nonnull %iwe, i32 noundef 12) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then82, %for.body76.for.inc_crit_edge
  %cev.2 = phi ptr [ %call90, %if.then82 ], [ %cev.1225, %for.body76.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %j.0224, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.end92, label %for.inc.for.body76_crit_edge

for.inc.for.body76_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body76

for.end92:                                        ; preds = %for.inc
  %52 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 -29909, ptr %0, align 2
  %53 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %2, align 4
  %54 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx54, align 1
  %56 = and i8 %55, 16
  %57 = zext i8 %56 to i16
  %58 = shl nuw i16 %57, 11
  %59 = xor i16 %58, -32768
  %60 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %3, align 2
  %call109 = call ptr @iwe_stream_add_point(ptr noundef %info, ptr noundef %cev.2, ptr noundef %add.ptr, ptr noundef nonnull %iwe, ptr noundef null) #12
  %61 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 -29695, ptr %0, align 2
  %add112 = add i32 %i.0227, 4
  %arrayidx113 = getelementptr %struct.zd1201, ptr %add.ptr.i, i32 0, i32 9, i32 %add112
  %62 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx113, align 1
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %1, align 4
  %add116 = add i32 %i.0227, 2
  %arrayidx117 = getelementptr %struct.zd1201, ptr %add.ptr.i, i32 0, i32 9, i32 %add116
  %65 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx117, align 1
  %67 = udiv i8 %66, 10
  %sub = add nuw nsw i8 %67, -100
  %68 = ptrtoint ptr %sa_data to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %sub, ptr %sa_data, align 2
  %conv124 = zext i8 %63 to i16
  %mul125 = mul nuw nsw i16 %conv124, 100
  %add126 = add nuw nsw i16 %mul125, 256
  %div127 = udiv i16 %add126, 255
  %69 = trunc i16 %div127 to i8
  %conv129 = add nsw i8 %69, -100
  %70 = ptrtoint ptr %level to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv129, ptr %level, align 1
  %71 = ptrtoint ptr %updated to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 7, ptr %updated, align 1
  %call132 = call ptr @iwe_stream_add_event(ptr noundef %info, ptr noundef %call109, ptr noundef %add.ptr, ptr noundef nonnull %iwe, i32 noundef 8) #12
  %add134 = add i32 %i.0227, 62
  %72 = ptrtoint ptr %rxlen to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rxlen, align 4
  %cmp32 = icmp slt i32 %add134, %73
  br i1 %cmp32, label %for.end92.for.body_crit_edge, label %for.end92.for.end135_crit_edge

for.end92.for.end135_crit_edge:                   ; preds = %for.end92
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end135

for.end92.for.body_crit_edge:                     ; preds = %for.end92
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end135:                                       ; preds = %for.end92.for.end135_crit_edge, %for.cond30.preheader.for.end135_crit_edge
  %cev.0.lcssa = phi ptr [ %extra, %for.cond30.preheader.for.end135_crit_edge ], [ %call132, %for.end92.for.end135_crit_edge ]
  br i1 %tobool.not.i, label %if.then137, label %for.end135.if.end139_crit_edge

for.end135.if.end139_crit_edge:                   ; preds = %for.end135
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end139

if.then137:                                       ; preds = %for.end135
  call void @__sanitizer_cov_trace_pc() #14
  %call138 = call fastcc i32 @zd1201_disable(ptr noundef %add.ptr.i)
  br label %if.end139

if.end139:                                        ; preds = %if.then137, %for.end135.if.end139_crit_edge
  %sub.ptr.lhs.cast = ptrtoint ptr %cev.0.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %extra to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv140 = trunc i32 %sub.ptr.sub to i16
  %length141 = getelementptr inbounds %struct.iw_point, ptr %srq, i32 0, i32 1
  %74 = ptrtoint ptr %length141 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv140, ptr %length141, align 4
  %flags142 = getelementptr inbounds %struct.iw_point, ptr %srq, i32 0, i32 2
  %75 = ptrtoint ptr %flags142 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 0, ptr %flags142, align 2
  br label %cleanup143

cleanup143:                                       ; preds = %if.end139, %if.end26.cleanup143_crit_edge, %if.end22.cleanup143_crit_edge, %zd1201_enable.exit.cleanup143_crit_edge, %entry.cleanup143_crit_edge
  %retval.0 = phi i32 [ 0, %if.end139 ], [ -95, %entry.cleanup143_crit_edge ], [ %call2, %zd1201_enable.exit.cleanup143_crit_edge ], [ -5, %if.end22.cleanup143_crit_edge ], [ -5, %if.end26.cleanup143_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %iwe) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1201_set_essid(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef %data, ptr nocapture noundef readonly %essid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %length = getelementptr inbounds %struct.iw_point, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %1)
  %cmp = icmp ugt i16 %1, 32
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp4 = icmp eq i16 %1, 0
  br i1 %cmp4, label %if.then6, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 1, ptr %length, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %3 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %length, align 4
  %conv10 = zext i16 %4 to i32
  %essidlen = getelementptr i8, ptr %dev, i32 8472
  %5 = ptrtoint ptr %essidlen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv10, ptr %essidlen, align 4
  %essid11 = getelementptr i8, ptr %dev, i32 8436
  %6 = call ptr @memset(ptr %essid11, i32 0, i32 33)
  %7 = load i16, ptr %length, align 4
  %conv15 = zext i16 %7 to i32
  %8 = call ptr @memcpy(ptr %essid11, ptr %essid, i32 %conv15)
  %9 = load i32, ptr %essidlen, align 4
  %call19 = tail call fastcc i32 @zd1201_join(ptr noundef %add.ptr.i, ptr noundef %essid11, i32 noundef %9)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %if.end8 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @zd1201_get_essid(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %data, ptr nocapture noundef writeonly %essid) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %essid1 = getelementptr i8, ptr %dev, i32 8436
  %essidlen = getelementptr i8, ptr %dev, i32 8472
  %0 = ptrtoint ptr %essidlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %essidlen, align 4
  %2 = call ptr @memcpy(ptr %essid, ptr %essid1, i32 %1)
  %flags = getelementptr inbounds %struct.iw_point, ptr %data, i32 0, i32 2
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 1, ptr %flags, align 2
  %4 = load i32, ptr %essidlen, align 4
  %conv = trunc i32 %4 to i16
  %length = getelementptr inbounds %struct.iw_point, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %length, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @zd1201_get_nick(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %data, ptr nocapture noundef %nick) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %nick, ptr @.str.1, i32 7)
  %flags = getelementptr inbounds %struct.iw_point, ptr %data, i32 0, i32 2
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 1, ptr %flags, align 2
  %call1 = tail call i32 @strlen(ptr noundef %nick) #17
  %conv = trunc i32 %call1 to i16
  %length = getelementptr inbounds %struct.iw_point, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %length, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1201_set_rate(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %rrq, ptr nocapture noundef readnone %extra) #2 align 64 {
entry:
  %zdval.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %rrq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rrq, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %1, label %sw.default [
    i32 1000000, label %entry.sw.epilog_crit_edge
    i32 2000000, label %sw.bb1
    i32 5500000, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %rate.0 = phi i16 [ 8, %sw.default ], [ 4, %sw.bb2 ], [ 2, %sw.bb1 ], [ 1, %entry.sw.epilog_crit_edge ]
  %fixed = getelementptr inbounds %struct.iw_param, ptr %rrq, i32 0, i32 1
  %3 = ptrtoint ptr %fixed to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %fixed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %sub = add nsw i16 %rate.0, -1
  %or = select i1 %tobool.not, i16 %sub, i16 0
  %rate.1 = or i16 %or, %rate.0
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %zdval.i) #12
  %5 = tail call i16 @llvm.bswap.i16(i16 %rate.1) #12
  %6 = ptrtoint ptr %zdval.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %zdval.i, align 2
  %call.i = call fastcc i32 @zd1201_setconfig(ptr noundef %add.ptr.i, i32 noundef 64644, ptr noundef nonnull %zdval.i, i32 noundef 2, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %if.end9, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %call10 = tail call fastcc i32 @zd1201_mac_reset(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end9 ], [ %call.i, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1201_get_rate(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %rrq, ptr nocapture noundef readnone %extra) #2 align 64 {
entry:
  %zdval.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %zdval.i) #12
  %0 = ptrtoint ptr %zdval.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %zdval.i, align 2, !annotation !124
  %call.i = call fastcc i32 @zd1201_getconfig(ptr noundef %add.ptr.i, i32 noundef 64836, ptr noundef nonnull %zdval.i, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %zd1201_getconfig16.exit

zd1201_getconfig16.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %zdval.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %zdval.i, align 2
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i) #12
  %conv = sext i16 %3 to i32
  %4 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %conv, label %sw.default [
    i32 1, label %if.end.sw.epilog_crit_edge
    i32 2, label %sw.bb2
    i32 5, label %sw.bb4
    i32 11, label %sw.bb6
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %sw.bb4, %sw.bb2, %if.end.sw.epilog_crit_edge
  %.sink = phi i32 [ 0, %sw.default ], [ 11000000, %sw.bb6 ], [ 5500000, %sw.bb4 ], [ 2000000, %sw.bb2 ], [ 1000000, %if.end.sw.epilog_crit_edge ]
  %5 = ptrtoint ptr %rrq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.sink, ptr %rrq, align 4
  %fixed = getelementptr inbounds %struct.iw_param, ptr %rrq, i32 0, i32 1
  %6 = ptrtoint ptr %fixed to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %fixed, align 4
  %disabled = getelementptr inbounds %struct.iw_param, ptr %rrq, i32 0, i32 2
  %7 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %disabled, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %zd1201_getconfig16.exit
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1201_set_rts(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %rts, ptr nocapture noundef readnone %extra) #2 align 64 {
entry:
  %zdval.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %disabled = getelementptr inbounds %struct.iw_param, ptr %rts, i32 0, i32 2
  %0 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %disabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

lor.lhs.false:                                    ; preds = %entry
  %fixed = getelementptr inbounds %struct.iw_param, ptr %rts, i32 0, i32 1
  %2 = ptrtoint ptr %fixed to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fixed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.end11_crit_edge, label %if.end

lor.lhs.false.if.end11_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.end:                                           ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %rts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rts, align 4
  %conv = trunc i32 %5 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 2500, i16 %conv)
  %6 = icmp ugt i16 %conv, 2500
  br i1 %6, label %if.end.cleanup_crit_edge, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %if.end.if.end11_crit_edge, %lor.lhs.false.if.end11_crit_edge, %entry.if.end11_crit_edge
  %val.026 = phi i16 [ %conv, %if.end.if.end11_crit_edge ], [ 2500, %entry.if.end11_crit_edge ], [ 2500, %lor.lhs.false.if.end11_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %zdval.i) #12
  %7 = tail call i16 @llvm.bswap.i16(i16 %val.026) #12
  %8 = ptrtoint ptr %zdval.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %zdval.i, align 2
  %call.i = call fastcc i32 @zd1201_setconfig(ptr noundef %add.ptr.i, i32 noundef 64643, ptr noundef nonnull %zdval.i, i32 noundef 2, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not = icmp eq i32 %call.i, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %call16 = tail call fastcc i32 @zd1201_mac_reset(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end15 ], [ -22, %if.end.cleanup_crit_edge ], [ %call.i, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1201_get_rts(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %rts, ptr nocapture noundef readnone %extra) #2 align 64 {
entry:
  %zdval.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %zdval.i) #12
  %0 = ptrtoint ptr %zdval.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %zdval.i, align 2, !annotation !124
  %call.i = call fastcc i32 @zd1201_getconfig(ptr noundef %add.ptr.i, i32 noundef 64643, ptr noundef nonnull %zdval.i, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %zd1201_getconfig16.exit

zd1201_getconfig16.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %zdval.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %zdval.i, align 2
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i) #12
  %conv = sext i16 %3 to i32
  %4 = ptrtoint ptr %rts to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %rts, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -15351, i16 %2)
  %cmp = icmp eq i16 %2, -15351
  %conv4 = zext i1 %cmp to i8
  %disabled = getelementptr inbounds %struct.iw_param, ptr %rts, i32 0, i32 2
  %5 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv4, ptr %disabled, align 1
  %fixed = getelementptr inbounds %struct.iw_param, ptr %rts, i32 0, i32 1
  %6 = ptrtoint ptr %fixed to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %fixed, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %zd1201_getconfig16.exit
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1201_set_frag(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %frag, ptr nocapture noundef readnone %extra) #2 align 64 {
entry:
  %zdval.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %disabled = getelementptr inbounds %struct.iw_param, ptr %frag, i32 0, i32 2
  %0 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %disabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %frag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frag, align 4
  %conv = trunc i32 %3 to i16
  %fixed = getelementptr inbounds %struct.iw_param, ptr %frag, i32 0, i32 1
  %4 = ptrtoint ptr %fixed to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fixed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %val.0 = phi i16 [ 2500, %if.then ], [ %conv, %lor.lhs.false.if.end_crit_edge ]
  %6 = add i16 %val.0, -256
  call void @__sanitizer_cov_trace_const_cmp2(i16 2245, i16 %6)
  %7 = icmp ult i16 %6, 2245
  %8 = and i16 %val.0, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool13.not = icmp eq i16 %8, 0
  %or.cond31 = and i1 %7, %tobool13.not
  br i1 %or.cond31, label %if.end15, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %zdval.i) #12
  %9 = tail call i16 @llvm.bswap.i16(i16 %val.0) #12
  %10 = ptrtoint ptr %zdval.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %zdval.i, align 2
  %call.i = call fastcc i32 @zd1201_setconfig(ptr noundef %add.ptr.i, i32 noundef 64642, ptr noundef nonnull %zdval.i, i32 noundef 2, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool17.not = icmp eq i32 %call.i, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %call20 = tail call fastcc i32 @zd1201_mac_reset(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end15.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.end19 ], [ -22, %if.end.cleanup_crit_edge ], [ %call.i, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1201_get_frag(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %frag, ptr nocapture noundef readnone %extra) #2 align 64 {
entry:
  %zdval.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %zdval.i) #12
  %0 = ptrtoint ptr %zdval.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %zdval.i, align 2, !annotation !124
  %call.i = call fastcc i32 @zd1201_getconfig(ptr noundef %add.ptr.i, i32 noundef 64642, ptr noundef nonnull %zdval.i, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %zd1201_getconfig16.exit

zd1201_getconfig16.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %zdval.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %zdval.i, align 2
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i) #12
  %conv = sext i16 %3 to i32
  %4 = ptrtoint ptr %frag to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %frag, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -15351, i16 %2)
  %cmp = icmp eq i16 %2, -15351
  %conv4 = zext i1 %cmp to i8
  %disabled = getelementptr inbounds %struct.iw_param, ptr %frag, i32 0, i32 2
  %5 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv4, ptr %disabled, align 1
  %fixed = getelementptr inbounds %struct.iw_param, ptr %frag, i32 0, i32 1
  %6 = ptrtoint ptr %fixed to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %fixed, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %zd1201_getconfig16.exit
  ret i32 %call.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @zd1201_set_retry(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %rrq, ptr nocapture noundef readnone %extra) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @zd1201_get_retry(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readnone %rrq, ptr nocapture noundef readnone %extra) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1201_set_encode(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %erq, ptr nocapture noundef readonly %key) #2 align 64 {
entry:
  %zdval.i109 = alloca i16, align 2
  %zdval.i107 = alloca i16, align 2
  %zdval.i105 = alloca i16, align 2
  %zdval.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %length = getelementptr inbounds %struct.iw_point, ptr %erq, i32 0, i32 1
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %1)
  %cmp = icmp ugt i16 %1, 13
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.iw_point, ptr %erq, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 2
  %4 = and i16 %3, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp5 = icmp eq i16 %4, 0
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %zdval.i) #12
  %5 = ptrtoint ptr %zdval.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %zdval.i, align 2, !annotation !124
  %call.i = call fastcc i32 @zd1201_getconfig(ptr noundef %add.ptr.i, i32 noundef 64547, ptr noundef nonnull %zdval.i, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %zd1201_getconfig16.exit.thread, label %zd1201_getconfig16.exit

zd1201_getconfig16.exit.thread:                   ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %zdval.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %zdval.i, align 2
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i) #12
  br label %if.end15

zd1201_getconfig16.exit:                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i) #12
  br label %cleanup

if.else:                                          ; preds = %if.end
  %sub = add nsw i16 %4, -1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %zdval.i105) #12
  %9 = tail call i16 @llvm.bswap.i16(i16 %sub) #12
  %10 = ptrtoint ptr %zdval.i105 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %zdval.i105, align 2
  %call.i106 = call fastcc i32 @zd1201_setconfig(ptr noundef %add.ptr.i, i32 noundef 64547, ptr noundef nonnull %zdval.i105, i32 noundef 2, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i105) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106)
  %tobool12.not = icmp eq i32 %call.i106, 0
  br i1 %tobool12.not, label %if.else.if.end15_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.end15:                                         ; preds = %if.else.if.end15_crit_edge, %zd1201_getconfig16.exit.thread
  %i.1 = phi i16 [ %sub, %if.else.if.end15_crit_edge ], [ %8, %zd1201_getconfig16.exit.thread ]
  %conv16 = sext i16 %i.1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %i.1)
  %11 = icmp ugt i16 %i.1, 3
  br i1 %11, label %if.end15.cleanup_crit_edge, label %if.end23

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  %add = add nsw i32 %conv16, 64548
  %12 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %length, align 4
  %conv26 = zext i16 %13 to i32
  %call27 = tail call fastcc i32 @zd1201_setconfig(ptr noundef %add.ptr.i, i32 noundef %add, ptr noundef %key, i32 noundef %conv26, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end30:                                         ; preds = %if.end23
  %14 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %length, align 4
  %conv32 = zext i16 %15 to i32
  %arrayidx = getelementptr %struct.zd1201, ptr %add.ptr.i, i32 0, i32 24, i32 %conv16
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv32, ptr %arrayidx, align 4
  %arrayidx34 = getelementptr %struct.zd1201, ptr %add.ptr.i, i32 0, i32 23, i32 %conv16
  %17 = load i16, ptr %length, align 4
  %conv36 = zext i16 %17 to i32
  %18 = call ptr @memcpy(ptr %arrayidx34, ptr %key, i32 %conv36)
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %flags, align 2
  %21 = xor i16 %20, -1
  %22 = lshr i16 %21, 15
  %.not = zext i16 %22 to i32
  %23 = xor i16 %20, -1
  %.lobit.not = lshr i16 %23, 15
  %24 = getelementptr i8, ptr %dev, i32 8488
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.not, ptr %24, align 4
  %26 = load i16, ptr %flags, align 2
  %27 = and i16 %26, 16384
  %.lobit = lshr exact i16 %27, 14
  %28 = zext i16 %.lobit to i32
  %29 = lshr exact i16 %27, 13
  %30 = or i16 %29, %.lobit.not
  %31 = getelementptr i8, ptr %dev, i32 8492
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %28, ptr %31, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %zdval.i107) #12
  %33 = shl nuw nsw i16 %30, 8
  %34 = ptrtoint ptr %zdval.i107 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %zdval.i107, align 2
  %call.i108 = call fastcc i32 @zd1201_setconfig(ptr noundef %add.ptr.i, i32 noundef 64552, ptr noundef nonnull %zdval.i107, i32 noundef 2, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i107) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108)
  %tobool61.not = icmp eq i32 %call.i108, 0
  br i1 %tobool61.not, label %if.end63, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end63:                                         ; preds = %if.end30
  %35 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool65.not = icmp eq i32 %36, 0
  %. = select i1 %tobool65.not, i16 256, i16 512
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %zdval.i109) #12
  %37 = ptrtoint ptr %zdval.i109 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %., ptr %zdval.i109, align 2
  %call.i110 = call fastcc i32 @zd1201_setconfig(ptr noundef %add.ptr.i, i32 noundef 64554, ptr noundef nonnull %zdval.i109, i32 noundef 2, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i109) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %tobool70.not = icmp eq i32 %call.i110, 0
  br i1 %tobool70.not, label %if.end72, label %if.end63.cleanup_crit_edge

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end72:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  %call73 = tail call fastcc i32 @zd1201_mac_reset(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %if.end63.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.else.cleanup_crit_edge, %zd1201_getconfig16.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call73, %if.end72 ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %zd1201_getconfig16.exit ], [ %call.i106, %if.else.cleanup_crit_edge ], [ -22, %if.end15.cleanup_crit_edge ], [ %call27, %if.end23.cleanup_crit_edge ], [ %call.i108, %if.end30.cleanup_crit_edge ], [ %call.i110, %if.end63.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1201_get_encode(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef %erq, ptr nocapture noundef writeonly %key) #2 align 64 {
entry:
  %zdval.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %encode_enabled = getelementptr i8, ptr %dev, i32 8488
  %0 = ptrtoint ptr %encode_enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %encode_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %spec.select = select i1 %tobool.not, i16 -32768, i16 0
  %2 = getelementptr inbounds %struct.iw_point, ptr %erq, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %spec.select, ptr %2, align 2
  %encode_restricted = getelementptr i8, ptr %dev, i32 8492
  %4 = ptrtoint ptr %encode_restricted to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %encode_restricted, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  %. = select i1 %tobool2.not, i16 8192, i16 16384
  %6 = or i16 %spec.select, %.
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %2, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %zdval.i) #12
  %8 = ptrtoint ptr %zdval.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %zdval.i, align 2, !annotation !124
  %call.i = call fastcc i32 @zd1201_getconfig(ptr noundef %add.ptr.i, i32 noundef 64547, ptr noundef nonnull %zdval.i, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %zd1201_getconfig16.exit.thread, label %zd1201_getconfig16.exit

zd1201_getconfig16.exit.thread:                   ; preds = %entry
  %9 = ptrtoint ptr %zdval.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %zdval.i, align 2
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %11)
  %12 = icmp ugt i16 %11, 3
  br i1 %12, label %zd1201_getconfig16.exit.thread.cleanup_crit_edge, label %if.end30

zd1201_getconfig16.exit.thread.cleanup_crit_edge: ; preds = %zd1201_getconfig16.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

zd1201_getconfig16.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i) #12
  br label %cleanup

if.end30:                                         ; preds = %zd1201_getconfig16.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  %add = add nuw nsw i16 %11, 1
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %2, align 2
  %or34 = or i16 %14, %add
  store i16 %or34, ptr %2, align 2
  %idxprom58 = zext i16 %11 to i32
  %arrayidx = getelementptr %struct.zd1201, ptr %add.ptr.i, i32 0, i32 24, i32 %idxprom58
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %conv36 = trunc i32 %16 to i16
  %length = getelementptr inbounds %struct.iw_point, ptr %erq, i32 0, i32 1
  %17 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv36, ptr %length, align 4
  %arrayidx38 = getelementptr %struct.zd1201, ptr %add.ptr.i, i32 0, i32 23, i32 %idxprom58
  %conv40 = and i32 %16, 65535
  %18 = call ptr @memcpy(ptr %key, ptr %arrayidx38, i32 %conv40)
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %zd1201_getconfig16.exit, %zd1201_getconfig16.exit.thread.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end30 ], [ %call.i, %zd1201_getconfig16.exit ], [ -22, %zd1201_getconfig16.exit.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1201_set_power(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %vwrq, ptr nocapture noundef readnone %extra) #2 align 64 {
entry:
  %zdval.i63 = alloca i16, align 2
  %zdval.i61 = alloca i16, align 2
  %zdval.i59 = alloca i16, align 2
  %zdval.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %disabled = getelementptr inbounds %struct.iw_param, ptr %vwrq, i32 0, i32 2
  %0 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %disabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.iw_param, ptr %vwrq, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 2
  %conv3 = zext i16 %3 to i32
  %and = and i32 %conv3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end10, label %if.then5

if.then5:                                         ; preds = %if.then
  %4 = ptrtoint ptr %vwrq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vwrq, align 4
  %conv6 = trunc i32 %5 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %zdval.i) #12
  %6 = tail call i16 @llvm.bswap.i16(i16 %conv6) #12
  %7 = ptrtoint ptr %zdval.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %zdval.i, align 2
  %call.i = call fastcc i32 @zd1201_setconfig(ptr noundef %add.ptr.i, i32 noundef 64524, ptr noundef nonnull %zdval.i, i32 noundef 2, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %if.then5.out_crit_edge, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then5.out_crit_edge:                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end10:                                         ; preds = %if.then
  %and13 = and i32 %conv3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end10.cleanup_crit_edge, label %if.then15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then15:                                        ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %zdval.i59) #12
  %8 = ptrtoint ptr %zdval.i59 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %zdval.i59, align 2, !annotation !124
  %call.i60 = call fastcc i32 @zd1201_getconfig(ptr noundef %add.ptr.i, i32 noundef 64524, ptr noundef nonnull %zdval.i59, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %tobool.not.i = icmp eq i32 %call.i60, 0
  br i1 %tobool.not.i, label %if.end19, label %zd1201_getconfig16.exit

zd1201_getconfig16.exit:                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i59) #12
  br label %cleanup

if.end19:                                         ; preds = %if.then15
  %9 = ptrtoint ptr %zdval.i59 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %zdval.i59, align 2
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i59) #12
  %12 = ptrtoint ptr %vwrq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vwrq, align 4
  %mul = shl i32 %13, 2
  %conv21 = sext i16 %11 to i32
  %div = sdiv i32 %mul, %conv21
  %conv22 = trunc i32 %div to i16
  %sext = shl i32 %div, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %sext)
  %cmp = icmp sgt i32 %sext, 262144
  %14 = tail call i16 @llvm.smax.i16(i16 %conv22, i16 0)
  %15 = select i1 %cmp, i16 4, i16 %14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %zdval.i61) #12
  %16 = tail call i16 @llvm.bswap.i16(i16 %15) #12
  %17 = ptrtoint ptr %zdval.i61 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %zdval.i61, align 2
  %call.i62 = call fastcc i32 @zd1201_setconfig(ptr noundef %add.ptr.i, i32 noundef 64522, ptr noundef nonnull %zdval.i61, i32 noundef 2, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i61) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %tobool33.not = icmp eq i32 %call.i62, 0
  br i1 %tobool33.not, label %if.end19.out_crit_edge, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

out:                                              ; preds = %if.end19.out_crit_edge, %if.then5.out_crit_edge, %entry.out_crit_edge
  %18 = phi i16 [ 0, %entry.out_crit_edge ], [ 256, %if.end19.out_crit_edge ], [ 256, %if.then5.out_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %zdval.i63) #12
  %19 = ptrtoint ptr %zdval.i63 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %zdval.i63, align 2
  %call.i64 = call fastcc i32 @zd1201_setconfig(ptr noundef %add.ptr.i, i32 noundef 64521, ptr noundef nonnull %zdval.i63, i32 noundef 2, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i63) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end19.cleanup_crit_edge, %zd1201_getconfig16.exit, %if.end10.cleanup_crit_edge, %if.then5.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i64, %out ], [ %call.i, %if.then5.cleanup_crit_edge ], [ %call.i60, %zd1201_getconfig16.exit ], [ %call.i62, %if.end19.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1201_get_power(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef %vwrq, ptr nocapture noundef readnone %extra) #2 align 64 {
entry:
  %zdval.i68 = alloca i16, align 2
  %zdval.i63 = alloca i16, align 2
  %zdval.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %zdval.i) #12
  %0 = ptrtoint ptr %zdval.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %zdval.i, align 2, !annotation !124
  %call.i = call fastcc i32 @zd1201_getconfig(ptr noundef %add.ptr.i, i32 noundef 64521, ptr noundef nonnull %zdval.i, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %zd1201_getconfig16.exit

zd1201_getconfig16.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %zdval.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %zdval.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %zdval.i63) #12
  %3 = ptrtoint ptr %zdval.i63 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %zdval.i63, align 2, !annotation !124
  %call.i64 = call fastcc i32 @zd1201_getconfig(ptr noundef %add.ptr.i, i32 noundef 64522, ptr noundef nonnull %zdval.i63, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %tobool.not.i65 = icmp eq i32 %call.i64, 0
  br i1 %tobool.not.i65, label %if.end5, label %zd1201_getconfig16.exit67

zd1201_getconfig16.exit67:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i63) #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %4 = ptrtoint ptr %zdval.i63 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %zdval.i63, align 2
  %6 = tail call i16 @llvm.bswap.i16(i16 %5) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i63) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %zdval.i68) #12
  %7 = ptrtoint ptr %zdval.i68 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %zdval.i68, align 2, !annotation !124
  %call.i69 = call fastcc i32 @zd1201_getconfig(ptr noundef %add.ptr.i, i32 noundef 64524, ptr noundef nonnull %zdval.i68, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %tobool.not.i70 = icmp eq i32 %call.i69, 0
  br i1 %tobool.not.i70, label %if.end9, label %zd1201_getconfig16.exit72

zd1201_getconfig16.exit72:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i68) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %8 = ptrtoint ptr %zdval.i68 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %zdval.i68, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i68) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool10.not = icmp eq i16 %2, 0
  %conv11 = zext i1 %tobool10.not to i8
  %disabled = getelementptr inbounds %struct.iw_param, ptr %vwrq, i32 0, i32 2
  %10 = ptrtoint ptr %disabled to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv11, ptr %disabled, align 1
  %flags = getelementptr inbounds %struct.iw_param, ptr %vwrq, i32 0, i32 3
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %flags, align 2
  %conv12 = zext i16 %12 to i32
  %and = and i32 %conv12, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end9.if.end27_crit_edge, label %if.then14

if.end9.if.end27_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %13 = tail call i16 @llvm.bswap.i16(i16 %9) #12
  %and17 = and i32 %conv12, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %conv22 = sext i16 %13 to i32
  %conv23 = sext i16 %6 to i32
  %mul = mul nsw i32 %conv22, %conv23
  %div = sdiv i32 %mul, 4
  %conv22.sink = select i1 %tobool18.not, i32 %div, i32 %conv22
  %.sink = select i1 %tobool18.not, i16 8192, i16 4096
  %14 = ptrtoint ptr %vwrq to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv22.sink, ptr %vwrq, align 4
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %.sink, ptr %flags, align 2
  br label %if.end27

if.end27:                                         ; preds = %if.then14, %if.end9.if.end27_crit_edge
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %flags, align 2
  %18 = and i16 %17, 3840
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool31.not = icmp eq i16 %18, 0
  br i1 %tobool31.not, label %if.end27.cleanup_crit_edge, label %if.then32

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool36.not = icmp eq i16 %5, 0
  %or.cond = select i1 %tobool10.not, i1 true, i1 %tobool36.not
  br i1 %or.cond, label %if.else39, label %if.then37

if.then37:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 256, ptr %flags, align 2
  br label %cleanup

if.else39:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 768, ptr %flags, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.else39, %if.then37, %if.end27.cleanup_crit_edge, %zd1201_getconfig16.exit72, %zd1201_getconfig16.exit67, %zd1201_getconfig16.exit
  %retval.0 = phi i32 [ %call.i, %zd1201_getconfig16.exit ], [ %call.i64, %zd1201_getconfig16.exit67 ], [ %call.i69, %zd1201_getconfig16.exit72 ], [ 0, %if.then37 ], [ 0, %if.else39 ], [ 0, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_freq_khz_to_channel(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwe_stream_add_event(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iwe_stream_add_point(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1201_set_hostauth(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %rrq, ptr nocapture noundef readnone %extra) #2 align 64 {
entry:
  %zdval.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ap = getelementptr i8, ptr %dev, i32 8432
  %0 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %2 = ptrtoint ptr %rrq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rrq, align 4
  %conv = trunc i32 %3 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %zdval.i) #12
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv) #12
  %5 = ptrtoint ptr %zdval.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %zdval.i, align 2
  %call.i = call fastcc i32 @zd1201_setconfig(ptr noundef %add.ptr.i, i32 noundef 64558, ptr noundef nonnull %zdval.i, i32 noundef 2, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1201_get_hostauth(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %rrq, ptr nocapture noundef readnone %extra) #2 align 64 {
entry:
  %zdval.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ap = getelementptr i8, ptr %dev, i32 8432
  %0 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %zdval.i) #12
  %2 = ptrtoint ptr %zdval.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %zdval.i, align 2, !annotation !124
  %call.i = call fastcc i32 @zd1201_getconfig(ptr noundef %add.ptr.i, i32 noundef 64558, ptr noundef nonnull %zdval.i, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end4, label %zd1201_getconfig16.exit

zd1201_getconfig16.exit:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i) #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %zdval.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %zdval.i, align 2
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i) #12
  %conv = sext i16 %5 to i32
  %6 = ptrtoint ptr %rrq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %rrq, align 4
  %fixed = getelementptr inbounds %struct.iw_param, ptr %rrq, i32 0, i32 1
  %7 = ptrtoint ptr %fixed to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %fixed, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %zd1201_getconfig16.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -95, %entry.cleanup_crit_edge ], [ %call.i, %zd1201_getconfig16.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1201_auth_sta(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %sta, ptr nocapture noundef readnone %extra) #2 align 64 {
entry:
  %buffer = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %buffer) #12
  %ap = getelementptr i8, ptr %dev, i32 8432
  %0 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = getelementptr inbounds [10 x i8], ptr %buffer, i32 0, i32 8
  %3 = getelementptr inbounds [10 x i8], ptr %buffer, i32 0, i32 6
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %sta, i32 0, i32 1
  %4 = call ptr @memcpy(ptr %buffer, ptr %sa_data, i32 6)
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %3, align 2
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %2, align 2
  %call6 = call fastcc i32 @zd1201_setconfig(ptr noundef %add.ptr.i, i32 noundef 64739, ptr noundef nonnull %buffer, i32 noundef 10, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %buffer) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1201_set_maxassoc(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %rrq, ptr nocapture noundef readnone %extra) #2 align 64 {
entry:
  %zdval.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ap = getelementptr i8, ptr %dev, i32 8432
  %0 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %2 = ptrtoint ptr %rrq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rrq, align 4
  %conv = trunc i32 %3 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %zdval.i) #12
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv) #12
  %5 = ptrtoint ptr %zdval.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %zdval.i, align 2
  %call.i = call fastcc i32 @zd1201_setconfig(ptr noundef %add.ptr.i, i32 noundef 64555, ptr noundef nonnull %zdval.i, i32 noundef 2, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zd1201_get_maxassoc(ptr noundef %dev, ptr nocapture noundef readnone %info, ptr nocapture noundef writeonly %rrq, ptr nocapture noundef readnone %extra) #2 align 64 {
entry:
  %zdval.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ap = getelementptr i8, ptr %dev, i32 8432
  %0 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %zdval.i) #12
  %2 = ptrtoint ptr %zdval.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %zdval.i, align 2, !annotation !124
  %call.i = call fastcc i32 @zd1201_getconfig(ptr noundef %add.ptr.i, i32 noundef 64555, ptr noundef nonnull %zdval.i, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end4, label %zd1201_getconfig16.exit

zd1201_getconfig16.exit:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i) #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %zdval.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %zdval.i, align 2
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %zdval.i) #12
  %conv = sext i16 %5 to i32
  %6 = ptrtoint ptr %rrq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %rrq, align 4
  %fixed = getelementptr inbounds %struct.iw_param, ptr %rrq, i32 0, i32 1
  %7 = ptrtoint ptr %fixed to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %fixed, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %zd1201_getconfig16.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -95, %entry.cleanup_crit_edge ], [ %call.i, %zd1201_getconfig16.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zd1201_usbfree(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 -84, label %entry.do.end_crit_edge
    i32 -19, label %entry.do.end_crit_edge8
    i32 -62, label %entry.do.end_crit_edge9
    i32 -2, label %entry.do.end_crit_edge10
    i32 -32, label %entry.do.end_crit_edge11
    i32 -75, label %entry.do.end_crit_edge12
    i32 -108, label %entry.do.end_crit_edge13
  ]

entry.do.end_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

entry.do.end_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

entry.do.end_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

entry.do.end_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

entry.do.end_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

entry.do.end_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.end:                                           ; preds = %entry.do.end_crit_edge, %entry.do.end_crit_edge8, %entry.do.end_crit_edge9, %entry.do.end_crit_edge10, %entry.do.end_crit_edge11, %entry.do.end_crit_edge12, %entry.do.end_crit_edge13
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %3 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %context, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15
  %dev1 = getelementptr inbounds %struct.zd1201, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.39, ptr noundef %8, i32 noundef %1) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %entry.sw.epilog_crit_edge
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %9 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %transfer_buffer, align 4
  tail call void @kfree(ptr noundef %10) #12
  tail call void @usb_free_urb(ptr noundef %urb) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smax.i16(i16, i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !15, !16, !18, !20, !22, !24, !25, !27, !28, !30, !32, !33, !35, !36, !37, !38, !39, !40, !41, !43, !45, !46, !47, !48, !50, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !71, !73, !75, !76, !77, !78, !80, !82, !84, !86, !88, !89, !90, !92, !94, !96, !97, !98, !100, !101, !103, !104, !106, !107, !108, !110, !111, !112, !113}
!llvm.module.flags = !{!115, !116, !117, !118, !119, !120, !121, !122}
!llvm.ident = !{!123}

!0 = !{ptr @__UNIQUE_ID_author348, !1, !"__UNIQUE_ID_author348", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/zydas/zd1201.c", i32 39, i32 1}
!2 = !{ptr @__UNIQUE_ID_description349, !3, !"__UNIQUE_ID_description349", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/zydas/zd1201.c", i32 40, i32 1}
!4 = !{ptr @__UNIQUE_ID_version350, !5, !"__UNIQUE_ID_version350", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/zydas/zd1201.c", i32 41, i32 1}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__modver_attr, !5, !"__modver_attr", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_file351, !11, !"__UNIQUE_ID_file351", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/zydas/zd1201.c", i32 42, i32 1}
!12 = !{ptr @__UNIQUE_ID_license352, !11, !"__UNIQUE_ID_license352", i1 false, i1 false}
!13 = !{ptr @__param_ap, !14, !"__param_ap", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/zydas/zd1201.c", i32 43, i32 1}
!15 = !{ptr @__UNIQUE_ID_aptype353, !14, !"__UNIQUE_ID_aptype353", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_ap354, !17, !"__UNIQUE_ID_ap354", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/zydas/zd1201.c", i32 44, i32 1}
!18 = !{ptr @__UNIQUE_ID_firmware355, !19, !"__UNIQUE_ID_firmware355", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/zydas/zd1201.c", i32 118, i32 1}
!20 = !{ptr @__UNIQUE_ID_firmware356, !21, !"__UNIQUE_ID_firmware356", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/zydas/zd1201.c", i32 119, i32 1}
!22 = !{ptr @__initcall__kmod_zd1201__362_1906_zd1201_usb_init6, !23, !"__initcall__kmod_zd1201__362_1906_zd1201_usb_init6", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/zydas/zd1201.c", i32 1906, i32 1}
!24 = !{ptr @__exitcall_zd1201_usb_exit, !23, !"__exitcall_zd1201_usb_exit", i1 false, i1 false}
!25 = !{ptr @ap, !26, !"ap", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/zydas/zd1201.c", i32 35, i32 12}
!27 = !{ptr @__param_str_ap, !14, !"__param_str_ap", i1 false, i1 false}
!28 = !{ptr @zd1201_usb, !29, !"zd1201_usb", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/zydas/zd1201.c", i32 1896, i32 26}
!30 = !{ptr @zd1201_probe.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/zydas/zd1201.c", i32 1745, i32 2}
!32 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/wireless/zydas/zd1201.c", i32 1750, i32 3}
!35 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @zd1201_probe._entry, !34, !"_entry", i1 false, i1 false}
!40 = !{ptr @zd1201_probe._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/zydas/zd1201.c", i32 1781, i32 20}
!43 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/zydas/zd1201.c", i32 1808, i32 2}
!45 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @zd1201_probe._entry.10, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @zd1201_probe._entry_ptr.13, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/zydas/zd1201.c", i32 59, i32 12}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/zydas/zd1201.c", i32 61, i32 12}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/zydas/zd1201.c", i32 65, i32 3}
!54 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @zd1201_fw_upload._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @zd1201_fw_upload._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/zydas/zd1201.c", i32 66, i32 3}
!59 = !{ptr @zd1201_fw_upload._entry.18, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @zd1201_fw_upload._entry_ptr.20, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/zydas/zd1201.c", i32 67, i32 3}
!63 = !{ptr @zd1201_fw_upload._entry.21, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @zd1201_fw_upload._entry_ptr.23, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/zydas/zd1201.c", i32 211, i32 4}
!67 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @zd1201_usbrx._entry, !66, !"_entry", i1 false, i1 false}
!70 = !{ptr @zd1201_usbrx._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @zd1201_netdev_ops, !72, !"zd1201_netdev_ops", i1 false, i1 false}
!72 = !{!"../drivers/net/wireless/zydas/zd1201.c", i32 1713, i32 36}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/zydas/zd1201.c", i32 839, i32 2}
!75 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @zd1201_tx_timeout._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @zd1201_tx_timeout._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @zd1201_iw_handlers, !79, !"zd1201_iw_handlers", i1 false, i1 false}
!79 = !{!"../drivers/net/wireless/zydas/zd1201.c", i32 1703, i32 36}
!80 = !{ptr @zd1201_iw_handler, !81, !"zd1201_iw_handler", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/zydas/zd1201.c", i32 1555, i32 25}
!82 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/wireless/zydas/zd1201.c", i32 900, i32 15}
!84 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/zydas/zd1201.c", i32 967, i32 20}
!86 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/zydas/zd1201.c", i32 1031, i32 4}
!88 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @zd1201_get_mode.__UNIQUE_ID_ddebug361, !87, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!90 = !{ptr @zd1201_private_handler, !91, !"zd1201_private_handler", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/zydas/zd1201.c", i32 1681, i32 25}
!92 = !{ptr @zd1201_private_args, !93, !"zd1201_private_args", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/zydas/zd1201.c", i32 1690, i32 34}
!94 = !{ptr @.str.33, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/zydas/zd1201.c", i32 441, i32 3}
!96 = !{ptr @.str.34, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @zd1201_getconfig.__UNIQUE_ID_ddebug357, !95, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!98 = !{ptr @.str.35, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/zydas/zd1201.c", i32 458, i32 3}
!100 = !{ptr @zd1201_getconfig.__UNIQUE_ID_ddebug358, !99, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!101 = !{ptr @.str.36, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/zydas/zd1201.c", i32 473, i32 4}
!103 = !{ptr @zd1201_getconfig.__UNIQUE_ID_ddebug359, !102, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!104 = !{ptr @.str.37, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/zydas/zd1201.c", i32 581, i32 4}
!106 = !{ptr @.str.38, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @zd1201_setconfig.__UNIQUE_ID_ddebug360, !105, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!108 = !{ptr @.str.39, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/zydas/zd1201.c", i32 133, i32 4}
!110 = !{ptr @.str.40, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @zd1201_usbfree._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @zd1201_usbfree._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @zd1201_table, !114, !"zd1201_table", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/zydas/zd1201.c", i32 25, i32 35}
!115 = !{i32 1, !"wchar_size", i32 2}
!116 = !{i32 1, !"min_enum_size", i32 4}
!117 = !{i32 8, !"branch-target-enforcement", i32 0}
!118 = !{i32 8, !"sign-return-address", i32 0}
!119 = !{i32 8, !"sign-return-address-all", i32 0}
!120 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!121 = !{i32 7, !"uwtable", i32 1}
!122 = !{i32 7, !"frame-pointer", i32 2}
!123 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!124 = !{!"auto-init"}
!125 = !{i64 2148997966, i64 2148997971, i64 2148997984, i64 2148998028, i64 2148998062, i64 2148998083}
