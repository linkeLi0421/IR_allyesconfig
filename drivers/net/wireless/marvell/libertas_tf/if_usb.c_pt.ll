; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/marvell/libertas_tf/if_usb.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/libertas_tf/if_usb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lbtf_ops = type { ptr, ptr, ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.if_usb_card = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i32, ptr, i32, ptr, %struct.timer_list, %struct.wait_queue_head, i32, i32, i32, i8, i8, i8, i16 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.lbtf_private = type { ptr, ptr, ptr, [2312 x i8], ptr, %struct.work_struct, %struct.work_struct, i32, i32, %struct.mutex, i16, ptr, ptr, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.timer_list, i32, i32, i8, i16, [6 x i8], [32 x [6 x i8]], i32, i32, ptr, ptr, i16, i16, %struct.channel_range, i8, i32, [14 x %struct.ieee80211_channel], [12 x %struct.ieee80211_rate], %struct.ieee80211_supported_band, %struct.lbtf_offset_value, i8, %struct.sk_buff_head, i8 }
%struct.channel_range = type { i8, i8, i8 }
%struct.ieee80211_channel = type { i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_rate = type { i32, i16, i16, i16 }
%struct.ieee80211_supported_band = type { ptr, ptr, i32, i32, i32, %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_s1g_cap, %struct.ieee80211_edmg, i16, ptr }
%struct.ieee80211_sta_ht_cap = type <{ i16, i8, i8, i8, %struct.ieee80211_mcs_info, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.ieee80211_sta_vht_cap = type { i8, i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.ieee80211_sta_s1g_cap = type { i8, [10 x i8], [5 x i8] }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.lbtf_offset_value = type { i32, i32 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.cmd_ds_set_boot2_ver = type { %struct.cmd_header, i16, i16 }
%struct.cmd_header = type { i16, i16, i16, i16 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.firmware = type { i32, ptr, ptr }
%struct.fwheader = type { i32, i32, i32, i32 }
%struct.bootcmd = type { i32, i8, [11 x i8] }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.fwdata = type { %struct.fwheader, i32, [0 x i8] }
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

@__param_str_fw_name = internal constant [24 x i8] c"libertas_tf_usb.fw_name\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@lbtf_fw_name = internal global { ptr, [28 x i8] } { ptr @.str, [28 x i8] zeroinitializer }, align 32
@__param_fw_name = internal constant %struct.kernel_param { ptr @__param_str_fw_name, ptr null, ptr @param_ops_charp, i16 420, i8 -1, i8 0, %union.anon.97 { ptr @lbtf_fw_name } }, section "__param", align 4
@__UNIQUE_ID_fw_nametype354 = internal constant [39 x i8] c"libertas_tf_usb.parmtype=fw_name:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware355 = internal constant [38 x i8] c"libertas_tf_usb.firmware=lbtf_usb.bin\00", section ".modinfo", align 1
@__initcall__kmod_libertas_tf_usb__356_918_if_usb_driver_init6 = internal global ptr @if_usb_driver_init, section ".initcall6.init", align 4
@if_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.2, ptr @if_usb_probe, ptr @if_usb_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @if_usb_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 32 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_if_usb_driver_exit = internal global ptr @if_usb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description357 = internal constant [58 x i8] c"libertas_tf_usb.description=8388 USB WLAN Thinfirm Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author358 = internal constant [36 x i8] c"libertas_tf_usb.author=Cozybit Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_file359 = internal constant [78 x i8] c"libertas_tf_usb.file=drivers/net/wireless/marvell/libertas_tf/libertas_tf_usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license360 = internal constant [28 x i8] c"libertas_tf_usb.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lbtf_usb.bin\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"libertas_tf_usb\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lbtf_usb\00", [23 x i8] zeroinitializer }, align 32
@if_usb_table = internal constant { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 4742, i16 8193, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1443, i16 -31864, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@lbtf_debug = external dso_local local_unnamed_addr global i32, align 4
@if_usb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017lbtf_usb enter: %s()\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"if_usb_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/wireless/marvell/libertas_tf/if_usb.c\00", [46 x i8] zeroinitializer }, align 32
@if_usb_probe._entry_ptr = internal global ptr @if_usb_probe._entry, section ".printk_index", align 4
@if_usb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(&cardp->fw_timeout)\00", [43 x i8] zeroinitializer }, align 32
@if_usb_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&cardp->fw_wq\00", [18 x i8] zeroinitializer }, align 32
@if_usb_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c"\017lbtf_usb usbd: %s:bcdUSB = 0x%X bDeviceClass = 0x%X bDeviceSubClass = 0x%X, bDeviceProtocol = 0x%X\0A\00", [58 x i8] zeroinitializer }, align 32
@if_usb_probe._entry_ptr.11 = internal global ptr @if_usb_probe._entry.9, section ".printk_index", align 4
@if_usb_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017lbtf_usb usbd: %s:in_endpoint = %d\0A\00", [58 x i8] zeroinitializer }, align 32
@if_usb_probe._entry_ptr.14 = internal global ptr @if_usb_probe._entry.12, section ".printk_index", align 4
@if_usb_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017lbtf_usb usbd: %s:Bulk in size is %d\0A\00", [56 x i8] zeroinitializer }, align 32
@if_usb_probe._entry_ptr.17 = internal global ptr @if_usb_probe._entry.15, section ".printk_index", align 4
@if_usb_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.4, ptr @.str.5, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017lbtf_usb usbd: %s:out_endpoint = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@if_usb_probe._entry_ptr.20 = internal global ptr @if_usb_probe._entry.18, section ".printk_index", align 4
@if_usb_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.4, ptr @.str.5, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017lbtf_usb usbd: %s:Bulk out size is %d\0A\00", [55 x i8] zeroinitializer }, align 32
@if_usb_probe._entry_ptr.23 = internal global ptr @if_usb_probe._entry.21, section ".printk_index", align 4
@if_usb_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.4, ptr @.str.5, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017lbtf_usb usbd: %s:Endpoints not found\0A\00", [55 x i8] zeroinitializer }, align 32
@if_usb_probe._entry_ptr.26 = internal global ptr @if_usb_probe._entry.24, section ".printk_index", align 4
@if_usb_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.4, ptr @.str.5, i32 217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017lbtf_usb usbd: %s:Could not allocate buffer\0A\00", [49 x i8] zeroinitializer }, align 32
@if_usb_probe._entry_ptr.29 = internal global ptr @if_usb_probe._entry.27, section ".printk_index", align 4
@if_usb_ops = internal constant { %struct.lbtf_ops, [20 x i8] } { %struct.lbtf_ops { ptr @if_usb_host_to_card, ptr @if_usb_prog_firmware, ptr @if_usb_reset_device }, [20 x i8] zeroinitializer }, align 32
@if_usb_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.4, ptr @.str.5, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017lbtf_usb leave: %s()\0A\00", [40 x i8] zeroinitializer }, align 32
@if_usb_probe._entry_ptr.32 = internal global ptr @if_usb_probe._entry.30, section ".printk_index", align 4
@if_usb_fw_timeo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.33, ptr @.str.5, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"if_usb_fw_timeo\00", [16 x i8] zeroinitializer }, align 32
@if_usb_fw_timeo._entry_ptr = internal global ptr @if_usb_fw_timeo._entry, section ".printk_index", align 4
@if_usb_fw_timeo._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.5, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013libertas_tf_usb: Download timed out\0A\00", [57 x i8] zeroinitializer }, align 32
@if_usb_fw_timeo._entry_ptr.36 = internal global ptr @if_usb_fw_timeo._entry.34, section ".printk_index", align 4
@if_usb_fw_timeo._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.5, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\017lbtf_usb usb: Download complete, no event. Assuming success\0A\00", [33 x i8] zeroinitializer }, align 32
@if_usb_fw_timeo._entry_ptr.39 = internal global ptr @if_usb_fw_timeo._entry.37, section ".printk_index", align 4
@if_usb_fw_timeo._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.33, ptr @.str.5, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@if_usb_fw_timeo._entry_ptr.41 = internal global ptr @if_usb_fw_timeo._entry.40, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@if_usb_host_to_card._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.5, i32 720, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017lbtf_usb usbd: %s:*** type = %u\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"if_usb_host_to_card\00", [44 x i8] zeroinitializer }, align 32
@if_usb_host_to_card._entry_ptr = internal global ptr @if_usb_host_to_card._entry, section ".printk_index", align 4
@if_usb_host_to_card._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.5, i32 721, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017lbtf_usb usbd: %s:size after = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@if_usb_host_to_card._entry_ptr.46 = internal global ptr @if_usb_host_to_card._entry.44, section ".printk_index", align 4
@usb_tx_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.47, ptr @.str.5, i32 378, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usb_tx_block\00", [19 x i8] zeroinitializer }, align 32
@usb_tx_block._entry_ptr = internal global ptr @usb_tx_block._entry, section ".printk_index", align 4
@usb_tx_block._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.5, i32 381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017lbtf_usb usbd: %s:Device removed\0A\00", [60 x i8] zeroinitializer }, align 32
@usb_tx_block._entry_ptr.50 = internal global ptr @usb_tx_block._entry.48, section ".printk_index", align 4
@usb_tx_block._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.47, ptr @.str.5, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017lbtf_usb usbd: %s:usb_submit_urb failed: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@usb_tx_block._entry_ptr.53 = internal global ptr @usb_tx_block._entry.51, section ".printk_index", align 4
@usb_tx_block._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.47, ptr @.str.5, i32 408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@usb_tx_block._entry_ptr.55 = internal global ptr @usb_tx_block._entry.54, section ".printk_index", align 4
@if_usb_write_bulk_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.5, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016libertas_tf_usb: URB in failure status: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"if_usb_write_bulk_callback\00", [37 x i8] zeroinitializer }, align 32
@if_usb_write_bulk_callback._entry_ptr = internal global ptr @if_usb_write_bulk_callback._entry, section ".printk_index", align 4
@if_usb_prog_firmware.reset_count = internal global { i32, [28 x i8] } { i32 10, [28 x i8] zeroinitializer }, align 32
@if_usb_prog_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.58, ptr @.str.5, i32 816, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"if_usb_prog_firmware\00", [43 x i8] zeroinitializer }, align 32
@if_usb_prog_firmware._entry_ptr = internal global ptr @if_usb_prog_firmware._entry, section ".printk_index", align 4
@if_usb_prog_firmware._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.5, i32 823, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013libertas_tf_usb: request_firmware() failed with %#x\0A\00", [41 x i8] zeroinitializer }, align 32
@if_usb_prog_firmware._entry_ptr.61 = internal global ptr @if_usb_prog_firmware._entry.59, section ".printk_index", align 4
@if_usb_prog_firmware._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.58, ptr @.str.5, i32 824, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013libertas_tf_usb: firmware %s not found\0A\00", [54 x i8] zeroinitializer }, align 32
@if_usb_prog_firmware._entry_ptr.64 = internal global ptr @if_usb_prog_firmware._entry.62, section ".printk_index", align 4
@if_usb_prog_firmware._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.58, ptr @.str.5, i32 835, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017lbtf_usb usbd: %s:URB submission is failed\0A\00", [50 x i8] zeroinitializer }, align 32
@if_usb_prog_firmware._entry_ptr.67 = internal global ptr @if_usb_prog_firmware._entry.65, section ".printk_index", align 4
@if_usb_prog_firmware._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.58, ptr @.str.5, i32 882, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016libertas_tf_usb: failed to load fw, resetting device!\0A\00", [39 x i8] zeroinitializer }, align 32
@if_usb_prog_firmware._entry_ptr.70 = internal global ptr @if_usb_prog_firmware._entry.68, section ".printk_index", align 4
@if_usb_prog_firmware._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.58, ptr @.str.5, i32 888, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016libertas_tf_usb: FW download failure, time = %d ms\0A\00", [42 x i8] zeroinitializer }, align 32
@if_usb_prog_firmware._entry_ptr.73 = internal global ptr @if_usb_prog_firmware._entry.71, section ".printk_index", align 4
@if_usb_prog_firmware._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.58, ptr @.str.5, i32 900, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017lbtf_usb leave: %s(), ret %d\0A\00", [32 x i8] zeroinitializer }, align 32
@if_usb_prog_firmware._entry_ptr.76 = internal global ptr @if_usb_prog_firmware._entry.74, section ".printk_index", align 4
@check_fwfile_format._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.5, i32 801, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013libertas_tf_usb: firmware file format check FAIL\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"check_fwfile_format\00", [44 x i8] zeroinitializer }, align 32
@check_fwfile_format._entry_ptr = internal global ptr @check_fwfile_format._entry, section ".printk_index", align 4
@check_fwfile_format._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.5, i32 803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017lbtf_usb fw: firmware file format check PASS\0A\00", [48 x i8] zeroinitializer }, align 32
@check_fwfile_format._entry_ptr.81 = internal global ptr @check_fwfile_format._entry.79, section ".printk_index", align 4
@__if_usb_submit_rx_urb._entry = internal constant %struct.pi_entry { ptr @.str.3, ptr @.str.82, ptr @.str.5, i32 418, ptr null, ptr null }, align 1
@.str.82 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__if_usb_submit_rx_urb\00", [41 x i8] zeroinitializer }, align 32
@__if_usb_submit_rx_urb._entry_ptr = internal global ptr @__if_usb_submit_rx_urb._entry, section ".printk_index", align 4
@__if_usb_submit_rx_urb._entry.83 = internal constant %struct.pi_entry { ptr @.str.84, ptr @.str.82, ptr @.str.5, i32 422, ptr null, ptr null }, align 1
@.str.84 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013libertas_tf_usb: No free skb\0A\00", [32 x i8] zeroinitializer }, align 32
@__if_usb_submit_rx_urb._entry_ptr.85 = internal global ptr @__if_usb_submit_rx_urb._entry.83, section ".printk_index", align 4
@__if_usb_submit_rx_urb._entry.86 = internal constant %struct.pi_entry { ptr @.str.31, ptr @.str.82, ptr @.str.5, i32 423, ptr null, ptr null }, align 1
@__if_usb_submit_rx_urb._entry_ptr.87 = internal global ptr @__if_usb_submit_rx_urb._entry.86, section ".printk_index", align 4
@__if_usb_submit_rx_urb._entry.88 = internal constant %struct.pi_entry { ptr @.str.89, ptr @.str.82, ptr @.str.5, i32 440, ptr null, ptr null }, align 1
@.str.89 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017lbtf_usb usbd: %s:Submit Rx URB failed: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@__if_usb_submit_rx_urb._entry_ptr.90 = internal global ptr @__if_usb_submit_rx_urb._entry.88, section ".printk_index", align 4
@__if_usb_submit_rx_urb._entry.91 = internal constant %struct.pi_entry { ptr @.str.31, ptr @.str.82, ptr @.str.5, i32 443, ptr null, ptr null }, align 1
@__if_usb_submit_rx_urb._entry_ptr.92 = internal global ptr @__if_usb_submit_rx_urb._entry.91, section ".printk_index", align 4
@__if_usb_submit_rx_urb._entry.93 = internal constant %struct.pi_entry { ptr @.str.31, ptr @.str.82, ptr @.str.5, i32 447, ptr null, ptr null }, align 1
@__if_usb_submit_rx_urb._entry_ptr.94 = internal global ptr @__if_usb_submit_rx_urb._entry.93, section ".printk_index", align 4
@if_usb_receive_fwload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.95, ptr @.str.5, i32 469, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"if_usb_receive_fwload\00", [42 x i8] zeroinitializer }, align 32
@if_usb_receive_fwload._entry_ptr = internal global ptr @if_usb_receive_fwload._entry, section ".printk_index", align 4
@if_usb_receive_fwload._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str.5, i32 472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017lbtf_usb usbd: %s:URB status is failed during fw load\0A\00", [39 x i8] zeroinitializer }, align 32
@if_usb_receive_fwload._entry_ptr.98 = internal global ptr @if_usb_receive_fwload._entry.96, section ".printk_index", align 4
@if_usb_receive_fwload._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.95, ptr @.str.5, i32 474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@if_usb_receive_fwload._entry_ptr.100 = internal global ptr @if_usb_receive_fwload._entry.99, section ".printk_index", align 4
@if_usb_receive_fwload._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.95, ptr @.str.5, i32 484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016libertas_tf_usb: Firmware ready event received\0A\00", [46 x i8] zeroinitializer }, align 32
@if_usb_receive_fwload._entry_ptr.103 = internal global ptr @if_usb_receive_fwload._entry.101, section ".printk_index", align 4
@if_usb_receive_fwload._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.95, ptr @.str.5, i32 488, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017lbtf_usb usb: Waiting for confirmation; got %x %x\0A\00", [43 x i8] zeroinitializer }, align 32
@if_usb_receive_fwload._entry_ptr.106 = internal global ptr @if_usb_receive_fwload._entry.104, section ".printk_index", align 4
@if_usb_receive_fwload._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.95, ptr @.str.5, i32 492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@if_usb_receive_fwload._entry_ptr.108 = internal global ptr @if_usb_receive_fwload._entry.107, section ".printk_index", align 4
@if_usb_receive_fwload._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.95, ptr @.str.5, i32 504, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\017lbtf_usb usbd: %s:Received valid boot command response\0A\00", [38 x i8] zeroinitializer }, align 32
@if_usb_receive_fwload._entry_ptr.111 = internal global ptr @if_usb_receive_fwload._entry.109, section ".printk_index", align 4
@if_usb_receive_fwload._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.95, ptr @.str.5, i32 505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@if_usb_receive_fwload._entry_ptr.113 = internal global ptr @if_usb_receive_fwload._entry.112, section ".printk_index", align 4
@if_usb_receive_fwload._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.95, ptr @.str.5, i32 513, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016libertas_tf_usb: Firmware already seems alive; resetting\0A\00", [36 x i8] zeroinitializer }, align 32
@if_usb_receive_fwload._entry_ptr.116 = internal global ptr @if_usb_receive_fwload._entry.114, section ".printk_index", align 4
@if_usb_receive_fwload._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.95, ptr @.str.5, i32 517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016libertas_tf_usb: boot cmd response wrong magic number (0x%x)\0A\00", [32 x i8] zeroinitializer }, align 32
@if_usb_receive_fwload._entry_ptr.119 = internal global ptr @if_usb_receive_fwload._entry.117, section ".printk_index", align 4
@if_usb_receive_fwload._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.95, ptr @.str.5, i32 521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016libertas_tf_usb: boot cmd response cmd_tag error (%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@if_usb_receive_fwload._entry_ptr.122 = internal global ptr @if_usb_receive_fwload._entry.120, section ".printk_index", align 4
@if_usb_receive_fwload._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.95, ptr @.str.5, i32 524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016libertas_tf_usb: boot cmd response result error (%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@if_usb_receive_fwload._entry_ptr.125 = internal global ptr @if_usb_receive_fwload._entry.123, section ".printk_index", align 4
@if_usb_receive_fwload._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.95, ptr @.str.5, i32 528, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@if_usb_receive_fwload._entry_ptr.127 = internal global ptr @if_usb_receive_fwload._entry.126, section ".printk_index", align 4
@if_usb_receive_fwload._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.95, ptr @.str.5, i32 533, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@if_usb_receive_fwload._entry_ptr.129 = internal global ptr @if_usb_receive_fwload._entry.128, section ".printk_index", align 4
@if_usb_receive_fwload._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.95, ptr @.str.5, i32 541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017lbtf_usb usbd: %s:Failure to allocate syncfwheader\0A\00", [42 x i8] zeroinitializer }, align 32
@if_usb_receive_fwload._entry_ptr.132 = internal global ptr @if_usb_receive_fwload._entry.130, section ".printk_index", align 4
@if_usb_receive_fwload._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.95, ptr @.str.5, i32 543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@if_usb_receive_fwload._entry_ptr.134 = internal global ptr @if_usb_receive_fwload._entry.133, section ".printk_index", align 4
@if_usb_receive_fwload._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.95, ptr @.str.5, i32 556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017lbtf_usb usbd: %s:FW received Blk with CRC error\0A\00", [44 x i8] zeroinitializer }, align 32
@if_usb_receive_fwload._entry_ptr.137 = internal global ptr @if_usb_receive_fwload._entry.135, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@if_usb_receive_fwload._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.95, ptr @.str.5, i32 577, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@if_usb_receive_fwload._entry_ptr.139 = internal global ptr @if_usb_receive_fwload._entry.138, section ".printk_index", align 4
@if_usb_send_fw_pkt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.140, ptr @.str.5, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"if_usb_send_fw_pkt\00", [45 x i8] zeroinitializer }, align 32
@if_usb_send_fw_pkt._entry_ptr = internal global ptr @if_usb_send_fw_pkt._entry, section ".printk_index", align 4
@if_usb_send_fw_pkt._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.140, ptr @.str.5, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@if_usb_send_fw_pkt._entry_ptr.142 = internal global ptr @if_usb_send_fw_pkt._entry.141, section ".printk_index", align 4
@if_usb_setup_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.143, ptr @.str.5, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"if_usb_setup_firmware\00", [42 x i8] zeroinitializer }, align 32
@if_usb_setup_firmware._entry_ptr = internal global ptr @if_usb_setup_firmware._entry, section ".printk_index", align 4
@if_usb_setup_firmware._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.143, ptr @.str.5, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017lbtf_usb usb: Setting boot2 version failed\0A\00", [50 x i8] zeroinitializer }, align 32
@if_usb_setup_firmware._entry_ptr.146 = internal global ptr @if_usb_setup_firmware._entry.144, section ".printk_index", align 4
@if_usb_setup_firmware._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.143, ptr @.str.5, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@if_usb_setup_firmware._entry_ptr.148 = internal global ptr @if_usb_setup_firmware._entry.147, section ".printk_index", align 4
@if_usb_receive._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.149, ptr @.str.5, i32 636, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"if_usb_receive\00", [17 x i8] zeroinitializer }, align 32
@if_usb_receive._entry_ptr = internal global ptr @if_usb_receive._entry, section ".printk_index", align 4
@if_usb_receive._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.149, ptr @.str.5, i32 641, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017lbtf_usb usbd: %s:RX URB failed: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@if_usb_receive._entry_ptr.152 = internal global ptr @if_usb_receive._entry.150, section ".printk_index", align 4
@if_usb_receive._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.149, ptr @.str.5, i32 650, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\017lbtf_usb usbd: %s:Recv length = 0x%x, Recv type = 0x%X\0A\00", [38 x i8] zeroinitializer }, align 32
@if_usb_receive._entry_ptr.155 = internal global ptr @if_usb_receive._entry.153, section ".printk_index", align 4
@if_usb_receive._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.149, ptr @.str.5, i32 653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@if_usb_receive._entry_ptr.157 = internal global ptr @if_usb_receive._entry.156, section ".printk_index", align 4
@if_usb_receive._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.149, ptr @.str.5, i32 671, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017lbtf_usb usbd: %s:**EVENT** 0x%X\0A\00", [60 x i8] zeroinitializer }, align 32
@if_usb_receive._entry_ptr.160 = internal global ptr @if_usb_receive._entry.158, section ".printk_index", align 4
@if_usb_receive._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.149, ptr @.str.5, i32 688, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\017lbtf_usb usbd: %s:Unsupported notification %d received\0A\00", [38 x i8] zeroinitializer }, align 32
@if_usb_receive._entry_ptr.163 = internal global ptr @if_usb_receive._entry.161, section ".printk_index", align 4
@if_usb_receive._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.149, ptr @.str.5, i32 694, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017lbtf_usb usbd: %s:libertastf: unknown command type 0x%X\0A\00", [37 x i8] zeroinitializer }, align 32
@if_usb_receive._entry_ptr.166 = internal global ptr @if_usb_receive._entry.164, section ".printk_index", align 4
@if_usb_receive._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.149, ptr @.str.5, i32 701, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@if_usb_receive._entry_ptr.168 = internal global ptr @if_usb_receive._entry.167, section ".printk_index", align 4
@process_cmdtypedata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.170, ptr @.str.5, i32 588, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017lbtf_usb usbd: %s:Packet length is Invalid\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"process_cmdtypedata\00", [44 x i8] zeroinitializer }, align 32
@process_cmdtypedata._entry_ptr = internal global ptr @process_cmdtypedata._entry, section ".printk_index", align 4
@process_cmdrequest._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.172, ptr @.str.5, i32 608, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017lbtf_usb usbd: %s:The receive buffer is invalid: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"process_cmdrequest\00", [45 x i8] zeroinitializer }, align 32
@process_cmdrequest._entry_ptr = internal global ptr @process_cmdrequest._entry, section ".printk_index", align 4
@if_usb_reset_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.173, ptr @.str.5, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"if_usb_reset_device\00", [44 x i8] zeroinitializer }, align 32
@if_usb_reset_device._entry_ptr = internal global ptr @if_usb_reset_device._entry, section ".printk_index", align 4
@if_usb_reset_device._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.173, ptr @.str.5, i32 357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@if_usb_reset_device._entry_ptr.175 = internal global ptr @if_usb_reset_device._entry.174, section ".printk_index", align 4
@if_usb_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.176, ptr @.str.5, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"if_usb_free\00", [20 x i8] zeroinitializer }, align 32
@if_usb_free._entry_ptr = internal global ptr @if_usb_free._entry, section ".printk_index", align 4
@if_usb_free._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.176, ptr @.str.5, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@if_usb_free._entry_ptr.178 = internal global ptr @if_usb_free._entry.177, section ".printk_index", align 4
@if_usb_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.179, ptr @.str.5, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"if_usb_disconnect\00", [46 x i8] zeroinitializer }, align 32
@if_usb_disconnect._entry_ptr = internal global ptr @if_usb_disconnect._entry, section ".printk_index", align 4
@if_usb_disconnect._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.179, ptr @.str.5, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@if_usb_disconnect._entry_ptr.181 = internal global ptr @if_usb_disconnect._entry.180, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.182 = internal global [6 x i64] [i64 4, i64 32, i64 1297241676, i64 3472494064, i64 3472551870, i64 3737169342]
@__sancov_gen_cov_switch_values.183 = internal global [5 x i64] [i64 3, i64 32, i64 3199058142, i64 3203398350, i64 4027448014]
@___asan_gen_.184 = private unnamed_addr constant [13 x i8] c"lbtf_fw_name\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 25, i32 14 }
@___asan_gen_.187 = private unnamed_addr constant [14 x i8] c"if_usb_driver\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 908, i32 26 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 25, i32 29 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 918, i32 1 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 909, i32 10 }
@___asan_gen_.199 = private unnamed_addr constant [13 x i8] c"if_usb_table\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 30, i32 35 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 154, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 161, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 162, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 167, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 181, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 183, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 190, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 192, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 197, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 217, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant [11 x i8] c"if_usb_ops\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 130, i32 30 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 235, i32 1 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 118, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 122, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 124, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 127, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 720, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 721, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 378, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 381, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 398, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 408, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 59, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant [12 x i8] c"reset_count\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 813, i32 13 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 816, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 823, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 824, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 835, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 882, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 888, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 900, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 801, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 803, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 418, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 422, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 439, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 469, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 471, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 474, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 484, i32 4 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 487, i32 4 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 492, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 503, i32 4 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 505, i32 4 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 513, i32 6 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 516, i32 5 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 520, i32 4 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 523, i32 4 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 527, i32 4 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 533, i32 3 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 540, i32 3 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 543, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 555, i32 3 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 577, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 278, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 331, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 101, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 109, i32 3 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 111, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 636, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 640, i32 4 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 648, i32 3 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 653, i32 3 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 670, i32 3 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 686, i32 4 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 693, i32 3 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 701, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 588, i32 3 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 607, i32 3 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 341, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 357, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 74, i32 2 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 93, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 249, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.608 = private constant [53 x i8] c"../drivers/net/wireless/marvell/libertas_tf/if_usb.c\00", align 1
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.608, i32 263, i32 2 }
@llvm.compiler.used = appending global [232 x ptr] [ptr @__UNIQUE_ID_author358, ptr @__UNIQUE_ID_description357, ptr @__UNIQUE_ID_file359, ptr @__UNIQUE_ID_firmware355, ptr @__UNIQUE_ID_fw_nametype354, ptr @__UNIQUE_ID_license360, ptr @__exitcall_if_usb_driver_exit, ptr @__if_usb_submit_rx_urb._entry, ptr @__if_usb_submit_rx_urb._entry.83, ptr @__if_usb_submit_rx_urb._entry.86, ptr @__if_usb_submit_rx_urb._entry.88, ptr @__if_usb_submit_rx_urb._entry.91, ptr @__if_usb_submit_rx_urb._entry.93, ptr @__if_usb_submit_rx_urb._entry_ptr, ptr @__if_usb_submit_rx_urb._entry_ptr.85, ptr @__if_usb_submit_rx_urb._entry_ptr.87, ptr @__if_usb_submit_rx_urb._entry_ptr.90, ptr @__if_usb_submit_rx_urb._entry_ptr.92, ptr @__if_usb_submit_rx_urb._entry_ptr.94, ptr @__initcall__kmod_libertas_tf_usb__356_918_if_usb_driver_init6, ptr @__param_fw_name, ptr @check_fwfile_format._entry, ptr @check_fwfile_format._entry.79, ptr @check_fwfile_format._entry_ptr, ptr @check_fwfile_format._entry_ptr.81, ptr @if_usb_disconnect._entry, ptr @if_usb_disconnect._entry.180, ptr @if_usb_disconnect._entry_ptr, ptr @if_usb_disconnect._entry_ptr.181, ptr @if_usb_driver_exit, ptr @if_usb_free._entry, ptr @if_usb_free._entry.177, ptr @if_usb_free._entry_ptr, ptr @if_usb_free._entry_ptr.178, ptr @if_usb_fw_timeo._entry, ptr @if_usb_fw_timeo._entry.34, ptr @if_usb_fw_timeo._entry.37, ptr @if_usb_fw_timeo._entry.40, ptr @if_usb_fw_timeo._entry_ptr, ptr @if_usb_fw_timeo._entry_ptr.36, ptr @if_usb_fw_timeo._entry_ptr.39, ptr @if_usb_fw_timeo._entry_ptr.41, ptr @if_usb_host_to_card._entry, ptr @if_usb_host_to_card._entry.44, ptr @if_usb_host_to_card._entry_ptr, ptr @if_usb_host_to_card._entry_ptr.46, ptr @if_usb_probe._entry, ptr @if_usb_probe._entry.12, ptr @if_usb_probe._entry.15, ptr @if_usb_probe._entry.18, ptr @if_usb_probe._entry.21, ptr @if_usb_probe._entry.24, ptr @if_usb_probe._entry.27, ptr @if_usb_probe._entry.30, ptr @if_usb_probe._entry.9, ptr @if_usb_probe._entry_ptr, ptr @if_usb_probe._entry_ptr.11, ptr @if_usb_probe._entry_ptr.14, ptr @if_usb_probe._entry_ptr.17, ptr @if_usb_probe._entry_ptr.20, ptr @if_usb_probe._entry_ptr.23, ptr @if_usb_probe._entry_ptr.26, ptr @if_usb_probe._entry_ptr.29, ptr @if_usb_probe._entry_ptr.32, ptr @if_usb_prog_firmware._entry, ptr @if_usb_prog_firmware._entry.59, ptr @if_usb_prog_firmware._entry.62, ptr @if_usb_prog_firmware._entry.65, ptr @if_usb_prog_firmware._entry.68, ptr @if_usb_prog_firmware._entry.71, ptr @if_usb_prog_firmware._entry.74, ptr @if_usb_prog_firmware._entry_ptr, ptr @if_usb_prog_firmware._entry_ptr.61, ptr @if_usb_prog_firmware._entry_ptr.64, ptr @if_usb_prog_firmware._entry_ptr.67, ptr @if_usb_prog_firmware._entry_ptr.70, ptr @if_usb_prog_firmware._entry_ptr.73, ptr @if_usb_prog_firmware._entry_ptr.76, ptr @if_usb_receive._entry, ptr @if_usb_receive._entry.150, ptr @if_usb_receive._entry.153, ptr @if_usb_receive._entry.156, ptr @if_usb_receive._entry.158, ptr @if_usb_receive._entry.161, ptr @if_usb_receive._entry.164, ptr @if_usb_receive._entry.167, ptr @if_usb_receive._entry_ptr, ptr @if_usb_receive._entry_ptr.152, ptr @if_usb_receive._entry_ptr.155, ptr @if_usb_receive._entry_ptr.157, ptr @if_usb_receive._entry_ptr.160, ptr @if_usb_receive._entry_ptr.163, ptr @if_usb_receive._entry_ptr.166, ptr @if_usb_receive._entry_ptr.168, ptr @if_usb_receive_fwload._entry, ptr @if_usb_receive_fwload._entry.101, ptr @if_usb_receive_fwload._entry.104, ptr @if_usb_receive_fwload._entry.107, ptr @if_usb_receive_fwload._entry.109, ptr @if_usb_receive_fwload._entry.112, ptr @if_usb_receive_fwload._entry.114, ptr @if_usb_receive_fwload._entry.117, ptr @if_usb_receive_fwload._entry.120, ptr @if_usb_receive_fwload._entry.123, ptr @if_usb_receive_fwload._entry.126, ptr @if_usb_receive_fwload._entry.128, ptr @if_usb_receive_fwload._entry.130, ptr @if_usb_receive_fwload._entry.133, ptr @if_usb_receive_fwload._entry.135, ptr @if_usb_receive_fwload._entry.138, ptr @if_usb_receive_fwload._entry.96, ptr @if_usb_receive_fwload._entry.99, ptr @if_usb_receive_fwload._entry_ptr, ptr @if_usb_receive_fwload._entry_ptr.100, ptr @if_usb_receive_fwload._entry_ptr.103, ptr @if_usb_receive_fwload._entry_ptr.106, ptr @if_usb_receive_fwload._entry_ptr.108, ptr @if_usb_receive_fwload._entry_ptr.111, ptr @if_usb_receive_fwload._entry_ptr.113, ptr @if_usb_receive_fwload._entry_ptr.116, ptr @if_usb_receive_fwload._entry_ptr.119, ptr @if_usb_receive_fwload._entry_ptr.122, ptr @if_usb_receive_fwload._entry_ptr.125, ptr @if_usb_receive_fwload._entry_ptr.127, ptr @if_usb_receive_fwload._entry_ptr.129, ptr @if_usb_receive_fwload._entry_ptr.132, ptr @if_usb_receive_fwload._entry_ptr.134, ptr @if_usb_receive_fwload._entry_ptr.137, ptr @if_usb_receive_fwload._entry_ptr.139, ptr @if_usb_receive_fwload._entry_ptr.98, ptr @if_usb_reset_device._entry, ptr @if_usb_reset_device._entry.174, ptr @if_usb_reset_device._entry_ptr, ptr @if_usb_reset_device._entry_ptr.175, ptr @if_usb_send_fw_pkt._entry, ptr @if_usb_send_fw_pkt._entry.141, ptr @if_usb_send_fw_pkt._entry_ptr, ptr @if_usb_send_fw_pkt._entry_ptr.142, ptr @if_usb_setup_firmware._entry, ptr @if_usb_setup_firmware._entry.144, ptr @if_usb_setup_firmware._entry.147, ptr @if_usb_setup_firmware._entry_ptr, ptr @if_usb_setup_firmware._entry_ptr.146, ptr @if_usb_setup_firmware._entry_ptr.148, ptr @if_usb_write_bulk_callback._entry, ptr @if_usb_write_bulk_callback._entry_ptr, ptr @process_cmdrequest._entry, ptr @process_cmdrequest._entry_ptr, ptr @process_cmdtypedata._entry, ptr @process_cmdtypedata._entry_ptr, ptr @usb_tx_block._entry, ptr @usb_tx_block._entry.48, ptr @usb_tx_block._entry.51, ptr @usb_tx_block._entry.54, ptr @usb_tx_block._entry_ptr, ptr @usb_tx_block._entry_ptr.50, ptr @usb_tx_block._entry_ptr.53, ptr @usb_tx_block._entry_ptr.55, ptr @lbtf_fw_name, ptr @if_usb_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @if_usb_table, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @if_usb_probe.__key, ptr @.str.6, ptr @if_usb_probe.__key.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @if_usb_ops, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.56, ptr @.str.57, ptr @if_usb_prog_firmware.reset_count, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.82, ptr @.str.84, ptr @.str.89, ptr @.str.95, ptr @.str.97, ptr @.str.102, ptr @.str.105, ptr @.str.110, ptr @.str.115, ptr @.str.118, ptr @.str.121, ptr @.str.124, ptr @.str.131, ptr @.str.136, ptr @.str.140, ptr @.str.143, ptr @.str.145, ptr @.str.149, ptr @.str.151, ptr @.str.154, ptr @.str.159, ptr @.str.162, ptr @.str.165, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.176, ptr @.str.179], section "llvm.metadata"
@0 = internal global [142 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lbtf_fw_name to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_fw_timeo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_fw_timeo._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_fw_timeo._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_fw_timeo._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_host_to_card._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_host_to_card._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_tx_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_tx_block._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_tx_block._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_tx_block._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_write_bulk_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_prog_firmware.reset_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_prog_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_prog_firmware._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_prog_firmware._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_prog_firmware._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_prog_firmware._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_prog_firmware._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_prog_firmware._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_fwfile_format._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_fwfile_format._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_receive_fwload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_receive_fwload._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_receive_fwload._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_receive_fwload._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_receive_fwload._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_receive_fwload._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_receive_fwload._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_receive_fwload._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_receive_fwload._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_receive_fwload._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_receive_fwload._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_receive_fwload._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_receive_fwload._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_receive_fwload._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_receive_fwload._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_receive_fwload._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_receive_fwload._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_receive_fwload._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_send_fw_pkt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_send_fw_pkt._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_setup_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_setup_firmware._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_setup_firmware._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_receive._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_receive._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_receive._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_receive._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_receive._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_receive._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_receive._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_receive._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_cmdtypedata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_cmdrequest._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_reset_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_reset_device._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_free._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_disconnect._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @if_usb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @if_usb_driver, ptr noundef null, ptr noundef nonnull @.str.1) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @if_usb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_deregister(ptr noundef nonnull @if_usb_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @if_usb_probe(ptr nocapture noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %0 = load i32, ptr @lbtf_debug, align 4
  %and = and i32 %0, 131073
  call void @__sanitizer_cov_trace_const_cmp4(i32 131073, i32 %and)
  %cmp = icmp eq i32 %and, 131073
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %1 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %2, i32 -128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 164) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end3.do.body183_crit_edge, label %do.body8

do.end3.do.body183_crit_edge:                     ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body183

do.body8:                                         ; preds = %do.end3
  %fw_timeout = getelementptr inbounds %struct.if_usb_card, ptr %call7.i.i, i32 0, i32 13
  tail call void @init_timer_key(ptr noundef %fw_timeout, ptr noundef nonnull @if_usb_fw_timeo, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @if_usb_probe.__key) #7
  %fw_wq = getelementptr inbounds %struct.if_usb_card, ptr %call7.i.i, i32 0, i32 14
  tail call void @__init_waitqueue_head(ptr noundef %fw_wq, ptr noundef nonnull @.str.8, ptr noundef nonnull @if_usb_probe.__key.7) #7
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr.i, ptr %call7.i.i, align 8
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %5 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cur_altsetting, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %7 = load i32, ptr @lbtf_debug, align 4
  %and16 = and i32 %7, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %cmp17.not = icmp eq i32 %and16, 0
  br i1 %cmp17.not, label %do.body8.do.end33_crit_edge, label %do.end21

do.body8.do.end33_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end33

do.end21:                                         ; preds = %do.body8
  %init_name.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3
  %8 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end21.dev_name.exit_crit_edge

do.end21.dev_name.exit_crit_edge:                 ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %2, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end21.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %11, %if.end.i ], [ %9, %do.end21.dev_name.exit_crit_edge ]
  %bcdUSB = getelementptr i8, ptr %2, i32 930
  %12 = ptrtoint ptr %bcdUSB to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %bcdUSB, align 2
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %conv = zext i16 %14 to i32
  %bDeviceClass = getelementptr i8, ptr %2, i32 932
  %15 = ptrtoint ptr %bDeviceClass to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bDeviceClass, align 4
  %conv25 = zext i8 %16 to i32
  %bDeviceSubClass = getelementptr i8, ptr %2, i32 933
  %17 = ptrtoint ptr %bDeviceSubClass to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bDeviceSubClass, align 1
  %conv27 = zext i8 %18 to i32
  %bDeviceProtocol = getelementptr i8, ptr %2, i32 934
  %19 = ptrtoint ptr %bDeviceProtocol to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bDeviceProtocol, align 2
  %conv29 = zext i8 %20 to i32
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %retval.0.i, i32 noundef %conv, i32 noundef %conv25, i32 noundef %conv27, i32 noundef %conv29) #10
  br label %do.end33

do.end33:                                         ; preds = %dev_name.exit, %do.body8.do.end33_crit_edge
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %6, i32 0, i32 4
  %21 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp35290.not = icmp eq i8 %22, 0
  br i1 %cmp35290.not, label %do.end33.for.end_crit_edge, label %for.body.lr.ph

do.end33.for.end_crit_edge:                       ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end33
  %endpoint37 = getelementptr inbounds %struct.usb_host_interface, ptr %6, i32 0, i32 3
  %ep_in_size = getelementptr inbounds %struct.if_usb_card, ptr %call7.i.i, i32 0, i32 9
  %ep_in = getelementptr inbounds %struct.if_usb_card, ptr %call7.i.i, i32 0, i32 6
  %init_name.i251 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3
  %ep_out_size = getelementptr inbounds %struct.if_usb_card, ptr %call7.i.i, i32 0, i32 11
  %ep_out = getelementptr inbounds %struct.if_usb_card, ptr %call7.i.i, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0291 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %23 = ptrtoint ptr %endpoint37 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %endpoint37, align 4
  %arrayidx = getelementptr %struct.usb_host_endpoint, ptr %24, i32 %i.0291
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 3
  %25 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bmAttributes.i.i, align 1
  %27 = and i8 %26, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %27)
  %cmp.i.not.i = icmp eq i8 %27, 2
  br i1 %cmp.i.not.i, label %usb_endpoint_is_bulk_in.exit, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

usb_endpoint_is_bulk_in.exit:                     ; preds = %for.body
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %28 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %29)
  %tobool40.not = icmp sgt i8 %29, -1
  br i1 %tobool40.not, label %usb_endpoint_is_bulk_out.exit, label %if.then41

if.then41:                                        ; preds = %usb_endpoint_is_bulk_in.exit
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 4
  %30 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %wMaxPacketSize, align 1
  %32 = tail call i16 @llvm.bswap.i16(i16 %31)
  %conv42 = zext i16 %32 to i32
  %33 = ptrtoint ptr %ep_in_size to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv42, ptr %ep_in_size, align 4
  %34 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bEndpointAddress.i.i, align 1
  %36 = and i8 %35, 15
  %and.i = zext i8 %36 to i32
  %37 = ptrtoint ptr %ep_in to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %ep_in, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %38 = load i32, ptr @lbtf_debug, align 4
  %and46 = and i32 %38, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %cmp47.not = icmp eq i32 %and46, 0
  br i1 %cmp47.not, label %if.then41.do.body62_crit_edge, label %do.end52

if.then41.do.body62_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body62

do.end52:                                         ; preds = %if.then41
  %39 = ptrtoint ptr %init_name.i251 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %init_name.i251, align 8
  %tobool.not.i252 = icmp eq ptr %40, null
  br i1 %tobool.not.i252, label %if.end.i253, label %do.end52.dev_name.exit255_crit_edge

do.end52.dev_name.exit255_crit_edge:              ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit255

if.end.i253:                                      ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %2, align 4
  br label %dev_name.exit255

dev_name.exit255:                                 ; preds = %if.end.i253, %do.end52.dev_name.exit255_crit_edge
  %retval.0.i254 = phi ptr [ %42, %if.end.i253 ], [ %40, %do.end52.dev_name.exit255_crit_edge ]
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %retval.0.i254, i32 noundef %and.i) #10
  br label %do.body62

do.body62:                                        ; preds = %dev_name.exit255, %if.then41.do.body62_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %43 = load i32, ptr @lbtf_debug, align 4
  %and63 = and i32 %43, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %cmp64.not = icmp eq i32 %and63, 0
  br i1 %cmp64.not, label %do.body62.for.inc_crit_edge, label %do.end69

do.body62.for.inc_crit_edge:                      ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end69:                                         ; preds = %do.body62
  %44 = ptrtoint ptr %init_name.i251 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %init_name.i251, align 8
  %tobool.not.i257 = icmp eq ptr %45, null
  br i1 %tobool.not.i257, label %if.end.i258, label %do.end69.dev_name.exit260_crit_edge

do.end69.dev_name.exit260_crit_edge:              ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit260

if.end.i258:                                      ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %2, align 4
  br label %dev_name.exit260

dev_name.exit260:                                 ; preds = %if.end.i258, %do.end69.dev_name.exit260_crit_edge
  %retval.0.i259 = phi ptr [ %47, %if.end.i258 ], [ %45, %do.end69.dev_name.exit260_crit_edge ]
  %48 = ptrtoint ptr %ep_in_size to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ep_in_size, align 4
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %retval.0.i259, i32 noundef %49) #10
  br label %for.inc

usb_endpoint_is_bulk_out.exit:                    ; preds = %usb_endpoint_is_bulk_in.exit
  %50 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool79.not = icmp slt i8 %51, 0
  br i1 %tobool79.not, label %usb_endpoint_is_bulk_out.exit.for.inc_crit_edge, label %if.then80

usb_endpoint_is_bulk_out.exit.for.inc_crit_edge:  ; preds = %usb_endpoint_is_bulk_out.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then80:                                        ; preds = %usb_endpoint_is_bulk_out.exit
  %wMaxPacketSize81 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 4
  %52 = ptrtoint ptr %wMaxPacketSize81 to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %wMaxPacketSize81, align 1
  %54 = tail call i16 @llvm.bswap.i16(i16 %53)
  %conv82 = zext i16 %54 to i32
  %55 = ptrtoint ptr %ep_out_size to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv82, ptr %ep_out_size, align 4
  %56 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %bEndpointAddress.i.i, align 1
  %58 = and i8 %57, 15
  %and.i266 = zext i8 %58 to i32
  %59 = ptrtoint ptr %ep_out to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %ep_out, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %60 = load i32, ptr @lbtf_debug, align 4
  %and86 = and i32 %60, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %cmp87.not = icmp eq i32 %and86, 0
  br i1 %cmp87.not, label %if.then80.do.body102_crit_edge, label %do.end92

if.then80.do.body102_crit_edge:                   ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body102

do.end92:                                         ; preds = %if.then80
  %61 = ptrtoint ptr %init_name.i251 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %init_name.i251, align 8
  %tobool.not.i268 = icmp eq ptr %62, null
  br i1 %tobool.not.i268, label %if.end.i269, label %do.end92.dev_name.exit271_crit_edge

do.end92.dev_name.exit271_crit_edge:              ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit271

if.end.i269:                                      ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %2, align 4
  br label %dev_name.exit271

dev_name.exit271:                                 ; preds = %if.end.i269, %do.end92.dev_name.exit271_crit_edge
  %retval.0.i270 = phi ptr [ %64, %if.end.i269 ], [ %62, %do.end92.dev_name.exit271_crit_edge ]
  %call98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %retval.0.i270, i32 noundef %and.i266) #10
  br label %do.body102

do.body102:                                       ; preds = %dev_name.exit271, %if.then80.do.body102_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %65 = load i32, ptr @lbtf_debug, align 4
  %and103 = and i32 %65, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %cmp104.not = icmp eq i32 %and103, 0
  br i1 %cmp104.not, label %do.body102.for.inc_crit_edge, label %do.end109

do.body102.for.inc_crit_edge:                     ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end109:                                        ; preds = %do.body102
  %66 = ptrtoint ptr %init_name.i251 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %init_name.i251, align 8
  %tobool.not.i273 = icmp eq ptr %67, null
  br i1 %tobool.not.i273, label %if.end.i274, label %do.end109.dev_name.exit276_crit_edge

do.end109.dev_name.exit276_crit_edge:             ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit276

if.end.i274:                                      ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %2, align 4
  br label %dev_name.exit276

dev_name.exit276:                                 ; preds = %if.end.i274, %do.end109.dev_name.exit276_crit_edge
  %retval.0.i275 = phi ptr [ %69, %if.end.i274 ], [ %67, %do.end109.dev_name.exit276_crit_edge ]
  %70 = ptrtoint ptr %ep_out_size to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ep_out_size, align 4
  %call114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %retval.0.i275, i32 noundef %71) #10
  br label %for.inc

for.inc:                                          ; preds = %dev_name.exit276, %do.body102.for.inc_crit_edge, %usb_endpoint_is_bulk_out.exit.for.inc_crit_edge, %dev_name.exit260, %do.body62.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0291, 1
  %72 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %bNumEndpoints, align 4
  %conv34 = zext i8 %73 to i32
  %cmp35 = icmp ult i32 %inc, %conv34
  br i1 %cmp35, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end33.for.end_crit_edge
  %ep_out_size120 = getelementptr inbounds %struct.if_usb_card, ptr %call7.i.i, i32 0, i32 11
  %74 = ptrtoint ptr %ep_out_size120 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ep_out_size120, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool121.not = icmp eq i32 %75, 0
  br i1 %tobool121.not, label %for.end.do.body125_crit_edge, label %lor.lhs.false

for.end.do.body125_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body125

lor.lhs.false:                                    ; preds = %for.end
  %ep_in_size122 = getelementptr inbounds %struct.if_usb_card, ptr %call7.i.i, i32 0, i32 9
  %76 = ptrtoint ptr %ep_in_size122 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ep_in_size122, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool123.not = icmp eq i32 %77, 0
  br i1 %tobool123.not, label %lor.lhs.false.do.body125_crit_edge, label %if.end140

lor.lhs.false.do.body125_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body125

do.body125:                                       ; preds = %lor.lhs.false.do.body125_crit_edge, %for.end.do.body125_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %78 = load i32, ptr @lbtf_debug, align 4
  %and126 = and i32 %78, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %cmp127.not = icmp eq i32 %and126, 0
  br i1 %cmp127.not, label %do.body125.dealloc_crit_edge, label %do.end132

do.body125.dealloc_crit_edge:                     ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #9
  br label %dealloc

do.end132:                                        ; preds = %do.body125
  %init_name.i277 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3
  %79 = ptrtoint ptr %init_name.i277 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %init_name.i277, align 8
  %tobool.not.i278 = icmp eq ptr %80, null
  br i1 %tobool.not.i278, label %if.end.i279, label %do.end132.dev_name.exit281_crit_edge

do.end132.dev_name.exit281_crit_edge:             ; preds = %do.end132
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit281

if.end.i279:                                      ; preds = %do.end132
  call void @__sanitizer_cov_trace_pc() #9
  %81 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %2, align 4
  br label %dev_name.exit281

dev_name.exit281:                                 ; preds = %if.end.i279, %do.end132.dev_name.exit281_crit_edge
  %retval.0.i280 = phi ptr [ %82, %if.end.i279 ], [ %80, %do.end132.dev_name.exit281_crit_edge ]
  %call136 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %retval.0.i280) #10
  br label %dealloc

if.end140:                                        ; preds = %lor.lhs.false
  %call141 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #7
  %rx_urb = getelementptr inbounds %struct.if_usb_card, ptr %call7.i.i, i32 0, i32 1
  %83 = ptrtoint ptr %rx_urb to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call141, ptr %rx_urb, align 4
  %tobool143.not = icmp eq ptr %call141, null
  br i1 %tobool143.not, label %if.end140.dealloc_crit_edge, label %if.end145

if.end140.dealloc_crit_edge:                      ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #9
  br label %dealloc

if.end145:                                        ; preds = %if.end140
  %call146 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #7
  %tx_urb = getelementptr inbounds %struct.if_usb_card, ptr %call7.i.i, i32 0, i32 2
  %84 = ptrtoint ptr %tx_urb to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call146, ptr %tx_urb, align 8
  %tobool148.not = icmp eq ptr %call146, null
  br i1 %tobool148.not, label %if.end145.dealloc_crit_edge, label %if.end150

if.end145.dealloc_crit_edge:                      ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #9
  br label %dealloc

if.end150:                                        ; preds = %if.end145
  %call151 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #7
  %cmd_urb = getelementptr inbounds %struct.if_usb_card, ptr %call7.i.i, i32 0, i32 3
  %85 = ptrtoint ptr %cmd_urb to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call151, ptr %cmd_urb, align 4
  %tobool153.not = icmp eq ptr %call151, null
  br i1 %tobool153.not, label %if.end150.dealloc_crit_edge, label %if.end155

if.end150.dealloc_crit_edge:                      ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #9
  br label %dealloc

if.end155:                                        ; preds = %if.end150
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %86 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %86, i32 noundef 3264, i32 noundef 1574) #11
  %ep_out_buf = getelementptr inbounds %struct.if_usb_card, ptr %call7.i.i, i32 0, i32 10
  %87 = ptrtoint ptr %ep_out_buf to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call7.i, ptr %ep_out_buf, align 8
  %tobool158.not = icmp eq ptr %call7.i, null
  br i1 %tobool158.not, label %do.body160, label %if.end175

do.body160:                                       ; preds = %if.end155
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %88 = load i32, ptr @lbtf_debug, align 4
  %and161 = and i32 %88, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161)
  %cmp162.not = icmp eq i32 %and161, 0
  br i1 %cmp162.not, label %do.body160.dealloc_crit_edge, label %do.end167

do.body160.dealloc_crit_edge:                     ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #9
  br label %dealloc

do.end167:                                        ; preds = %do.body160
  %init_name.i282 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3
  %89 = ptrtoint ptr %init_name.i282 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %init_name.i282, align 8
  %tobool.not.i283 = icmp eq ptr %90, null
  br i1 %tobool.not.i283, label %if.end.i284, label %do.end167.dev_name.exit286_crit_edge

do.end167.dev_name.exit286_crit_edge:             ; preds = %do.end167
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit286

if.end.i284:                                      ; preds = %do.end167
  call void @__sanitizer_cov_trace_pc() #9
  %91 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %2, align 4
  br label %dev_name.exit286

dev_name.exit286:                                 ; preds = %if.end.i284, %do.end167.dev_name.exit286_crit_edge
  %retval.0.i285 = phi ptr [ %92, %if.end.i284 ], [ %90, %do.end167.dev_name.exit286_crit_edge ]
  %call171 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %retval.0.i285) #10
  br label %dealloc

if.end175:                                        ; preds = %if.end155
  %bcdDevice = getelementptr i8, ptr %2, i32 940
  %93 = ptrtoint ptr %bcdDevice to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %bcdDevice, align 4
  %boot2_version = getelementptr inbounds %struct.if_usb_card, ptr %call7.i.i, i32 0, i32 21
  %95 = ptrtoint ptr %boot2_version to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %94, ptr %boot2_version, align 8
  %call178 = tail call ptr @lbtf_add_card(ptr noundef nonnull %call7.i.i, ptr noundef %2, ptr noundef nonnull @if_usb_ops) #7
  %tobool179.not = icmp eq ptr %call178, null
  br i1 %tobool179.not, label %if.end175.dealloc_crit_edge, label %if.end181

if.end175.dealloc_crit_edge:                      ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #9
  br label %dealloc

if.end181:                                        ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #9
  %call182 = tail call ptr @usb_get_dev(ptr noundef %add.ptr.i) #7
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %96 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

dealloc:                                          ; preds = %if.end175.dealloc_crit_edge, %dev_name.exit286, %do.body160.dealloc_crit_edge, %if.end150.dealloc_crit_edge, %if.end145.dealloc_crit_edge, %if.end140.dealloc_crit_edge, %dev_name.exit281, %do.body125.dealloc_crit_edge
  tail call fastcc void @if_usb_free(ptr noundef nonnull %call7.i.i)
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %do.body183

do.body183:                                       ; preds = %dealloc, %do.end3.do.body183_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %97 = load i32, ptr @lbtf_debug, align 4
  %and184 = and i32 %97, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and184)
  %cmp185 = icmp eq i32 %and184, 6
  br i1 %cmp185, label %do.end190, label %do.body183.cleanup_crit_edge

do.body183.cleanup_crit_edge:                     ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end190:                                        ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #9
  %call192 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.4) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end190, %do.body183.cleanup_crit_edge, %if.end181
  %retval.0 = phi i32 [ 0, %if.end181 ], [ -12, %do.end190 ], [ -12, %do.body183.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @if_usb_disconnect(ptr nocapture noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv1 = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %4 = load i32, ptr @lbtf_debug, align 4
  %and = and i32 %4, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and)
  %cmp = icmp eq i32 %and, 5
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.179) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end5.if.end9_crit_edge, label %if.then6

do.end5.if.end9_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then6:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 @if_usb_reset_device(ptr noundef nonnull %3)
  %call8 = tail call i32 @lbtf_remove_card(ptr noundef nonnull %3) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %do.end5.if.end9_crit_edge
  tail call fastcc void @if_usb_free(ptr noundef %1)
  tail call void @kfree(ptr noundef %1) #7
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %driver_data.i.i, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 -128
  tail call void @usb_put_dev(ptr noundef %add.ptr.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %8 = load i32, ptr @lbtf_debug, align 4
  %and12 = and i32 %8, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and12)
  %cmp13 = icmp eq i32 %and12, 6
  br i1 %cmp13, label %do.end17, label %if.end9.do.end22_crit_edge

if.end9.do.end22_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end22

do.end17:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.179) #10
  br label %do.end22

do.end22:                                         ; preds = %do.end17, %if.end9.do.end22_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @if_usb_fw_timeo(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %0 = load i32, ptr @lbtf_debug, align 4
  %and = and i32 %0, 131073
  call void @__sanitizer_cov_trace_const_cmp4(i32 131073, i32 %and)
  %cmp = icmp eq i32 %and, 131073
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.33) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %fwdnldover = getelementptr i8, ptr %t, i32 113
  %1 = ptrtoint ptr %fwdnldover to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %fwdnldover, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.then5, label %do.body11

if.then5:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  %priv = getelementptr i8, ptr %t, i32 -28
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  %surpriseremoved = getelementptr inbounds %struct.lbtf_private, ptr %4, i32 0, i32 36
  %5 = ptrtoint ptr %surpriseremoved to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %surpriseremoved, align 4
  br label %if.end23.sink.split

do.body11:                                        ; preds = %do.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %6 = load i32, ptr @lbtf_debug, align 4
  %and12 = and i32 %6, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %cmp13.not = icmp eq i32 %and12, 0
  br i1 %cmp13.not, label %do.body11.if.end23_crit_edge, label %do.body11.if.end23.sink.split_crit_edge

do.body11.if.end23.sink.split_crit_edge:          ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.sink.split

do.body11.if.end23_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.end23.sink.split:                              ; preds = %do.body11.if.end23.sink.split_crit_edge, %if.then5
  %.str.38.sink = phi ptr [ @.str.35, %if.then5 ], [ @.str.38, %do.body11.if.end23.sink.split_crit_edge ]
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.38.sink) #10
  br label %if.end23

if.end23:                                         ; preds = %if.end23.sink.split, %do.body11.if.end23_crit_edge
  %fw_wq = getelementptr i8, ptr %t, i32 48
  tail call void @__wake_up(ptr noundef %fw_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %7 = load i32, ptr @lbtf_debug, align 4
  %and25 = and i32 %7, 131074
  call void @__sanitizer_cov_trace_const_cmp4(i32 131074, i32 %and25)
  %cmp26 = icmp eq i32 %and25, 131074
  br i1 %cmp26, label %do.end30, label %if.end23.do.end35_crit_edge

if.end23.do.end35_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end35

do.end30:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.33) #10
  br label %do.end35

do.end35:                                         ; preds = %do.end30, %if.end23.do.end35_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lbtf_add_card(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @if_usb_free(ptr nocapture noundef %cardp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %0 = load i32, ptr @lbtf_debug, align 4
  %and = and i32 %0, 131073
  call void @__sanitizer_cov_trace_const_cmp4(i32 131073, i32 %and)
  %cmp = icmp eq i32 %and, 131073
  br i1 %cmp, label %do.end, label %entry.do.end2_crit_edge

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.176) #10
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %tx_urb = getelementptr inbounds %struct.if_usb_card, ptr %cardp, i32 0, i32 2
  %1 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tx_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %2) #7
  %rx_urb = getelementptr inbounds %struct.if_usb_card, ptr %cardp, i32 0, i32 1
  %3 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rx_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %4) #7
  %cmd_urb = getelementptr inbounds %struct.if_usb_card, ptr %cardp, i32 0, i32 3
  %5 = ptrtoint ptr %cmd_urb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cmd_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %6) #7
  %7 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx_urb, align 4
  tail call void @usb_free_urb(ptr noundef %8) #7
  %9 = ptrtoint ptr %tx_urb to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %tx_urb, align 4
  %10 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_urb, align 4
  tail call void @usb_free_urb(ptr noundef %11) #7
  %12 = ptrtoint ptr %rx_urb to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %rx_urb, align 4
  %13 = ptrtoint ptr %cmd_urb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmd_urb, align 4
  tail call void @usb_free_urb(ptr noundef %14) #7
  %15 = ptrtoint ptr %cmd_urb to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %cmd_urb, align 4
  %ep_out_buf = getelementptr inbounds %struct.if_usb_card, ptr %cardp, i32 0, i32 10
  %16 = ptrtoint ptr %ep_out_buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ep_out_buf, align 4
  tail call void @kfree(ptr noundef %17) #7
  %18 = ptrtoint ptr %ep_out_buf to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %ep_out_buf, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %19 = load i32, ptr @lbtf_debug, align 4
  %and11 = and i32 %19, 131074
  call void @__sanitizer_cov_trace_const_cmp4(i32 131074, i32 %and11)
  %cmp12 = icmp eq i32 %and11, 131074
  br i1 %cmp12, label %do.end15, label %do.end2.do.end19_crit_edge

do.end2.do.end19_crit_edge:                       ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end19

do.end15:                                         ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.176) #10
  br label %do.end19

do.end19:                                         ; preds = %do.end15, %do.end2.do.end19_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @if_usb_host_to_card(ptr nocapture noundef readonly %priv, i8 noundef zeroext %type, ptr nocapture noundef readonly %payload, i16 noundef zeroext %nb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %2 = load i32, ptr @lbtf_debug, align 4
  %and = and i32 %2, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %entry.do.body5_crit_edge, label %do.end

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body5

do.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %init_name.i = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 15, i32 3
  %5 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 15
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %8, %if.end.i ], [ %6, %do.end.dev_name.exit_crit_edge ]
  %conv = zext i8 %type to i32
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %retval.0.i, i32 noundef %conv) #10
  br label %do.body5

do.body5:                                         ; preds = %dev_name.exit, %entry.do.body5_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %9 = load i32, ptr @lbtf_debug, align 4
  %and6 = and i32 %9, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %cmp7.not = icmp eq i32 %and6, 0
  br i1 %cmp7.not, label %do.body5.do.end21_crit_edge, label %do.end12

do.body5.do.end21_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end21

do.end12:                                         ; preds = %do.body5
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %init_name.i43 = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15, i32 3
  %12 = ptrtoint ptr %init_name.i43 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i43, align 8
  %tobool.not.i44 = icmp eq ptr %13, null
  br i1 %tobool.not.i44, label %if.end.i45, label %do.end12.dev_name.exit47_crit_edge

do.end12.dev_name.exit47_crit_edge:               ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit47

if.end.i45:                                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #9
  %dev15 = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  %14 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev15, align 4
  br label %dev_name.exit47

dev_name.exit47:                                  ; preds = %if.end.i45, %do.end12.dev_name.exit47_crit_edge
  %retval.0.i46 = phi ptr [ %15, %if.end.i45 ], [ %13, %do.end12.dev_name.exit47_crit_edge ]
  %conv17 = zext i16 %nb to i32
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %retval.0.i46, i32 noundef %conv17) #10
  br label %do.end21

do.end21:                                         ; preds = %dev_name.exit47, %do.body5.do.end21_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %type)
  %cmp23 = icmp eq i8 %type, 1
  %ep_out_buf = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 10
  %16 = ptrtoint ptr %ep_out_buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ep_out_buf, align 4
  %. = select i1 %cmp23, i32 -822473232, i32 -557797954
  %not.cmp23 = xor i1 %cmp23, true
  %.48 = zext i1 %not.cmp23 to i8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %., ptr %17, align 4
  %ep_out_buf28 = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 10
  %19 = ptrtoint ptr %ep_out_buf28 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ep_out_buf28, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 4
  %conv29 = zext i16 %nb to i32
  %21 = call ptr @memcpy(ptr %add.ptr, ptr %payload, i32 %conv29)
  %22 = load ptr, ptr %ep_out_buf28, align 4
  %add = add i16 %nb, 4
  %call33 = tail call fastcc i32 @usb_tx_block(ptr noundef %1, ptr noundef %22, i16 noundef zeroext %add, i8 noundef zeroext %.48)
  ret i32 %call33
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @if_usb_prog_firmware(ptr noundef %priv) #2 align 64 {
entry:
  %b2_cmd.i = alloca %struct.cmd_ds_set_boot2_ver, align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %2 = load i32, ptr @lbtf_debug, align 4
  %and = and i32 %2, 131073
  call void @__sanitizer_cov_trace_const_cmp4(i32 131073, i32 %and)
  %cmp = icmp eq i32 %and, 131073
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.58) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %priv4 = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %priv4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %priv, ptr %priv4, align 4
  tail call void @kernel_param_lock(ptr noundef null) #7
  %fw = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 12
  %4 = load ptr, ptr @lbtf_fw_name, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 15
  %call5 = tail call i32 @request_firmware(ptr noundef %fw, ptr noundef %4, ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %do.end10, label %if.end18

do.end10:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %call5) #10
  %7 = load ptr, ptr @lbtf_fw_name, align 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %7) #10
  tail call void @kernel_param_unlock(ptr noundef null) #7
  br label %do.body134

if.end18:                                         ; preds = %do.end3
  tail call void @kernel_param_unlock(ptr noundef null) #7
  %8 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %9, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %sw.bb.i.do.body.i_crit_edge, %if.end18
  %len.0.i = phi i32 [ 0, %if.end18 ], [ %add1.i, %sw.bb.i.do.body.i_crit_edge ]
  %data.addr.0.i = phi ptr [ %11, %if.end18 ], [ %add.ptr.i, %sw.bb.i.do.body.i_crit_edge ]
  %14 = ptrtoint ptr %data.addr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data.addr.0.i, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #7
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %do.body.i.check_fwfile_format.exit.thread212_crit_edge [
    i32 1, label %sw.bb.i
    i32 4, label %do.body8.i
  ]

do.body.i.check_fwfile_format.exit.thread212_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %check_fwfile_format.exit.thread212

sw.bb.i:                                          ; preds = %do.body.i
  %datalength.i = getelementptr inbounds %struct.fwheader, ptr %data.addr.0.i, i32 0, i32 2
  %18 = ptrtoint ptr %datalength.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %datalength.i, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #7
  %add.i = add i32 %20, 16
  %add.ptr.i = getelementptr i8, ptr %data.addr.0.i, i32 %add.i
  %add1.i = add i32 %add.i, %len.0.i
  %cmp.not.i = icmp ult i32 %add1.i, %13
  br i1 %cmp.not.i, label %sw.bb.i.do.body.i_crit_edge, label %sw.bb.i.check_fwfile_format.exit.thread212_crit_edge

sw.bb.i.check_fwfile_format.exit.thread212_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %check_fwfile_format.exit.thread212

sw.bb.i.do.body.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

do.body8.i:                                       ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %21 = load i32, ptr @lbtf_debug, align 4
  %and.i = and i32 %21, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp9.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp9.not.i, label %do.body8.i.restart.preheader_crit_edge, label %check_fwfile_format.exit

do.body8.i.restart.preheader_crit_edge:           ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %restart.preheader

check_fwfile_format.exit.thread212:               ; preds = %sw.bb.i.check_fwfile_format.exit.thread212_crit_edge, %do.body.i.check_fwfile_format.exit.thread212_crit_edge
  %call15.i215 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #10
  br label %release_fw

check_fwfile_format.exit:                         ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80) #10
  br label %restart.preheader

restart.preheader:                                ; preds = %check_fwfile_format.exit, %do.body8.i.restart.preheader_crit_edge
  %call.i207 = call fastcc i32 @__if_usb_submit_rx_urb(ptr noundef %1, ptr noundef nonnull @if_usb_receive_fwload) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i207)
  %cmp25208 = icmp slt i32 %call.i207, 0
  br i1 %cmp25208, label %restart.preheader.do.body27_crit_edge, label %if.end42.lr.ph

restart.preheader.do.body27_crit_edge:            ; preds = %restart.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body27

if.end42.lr.ph:                                   ; preds = %restart.preheader
  %bootcmdresp = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 8
  %ep_out_buf.i = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 10
  %totalbytes = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 16
  %fwlastblksent = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 17
  %CRC_OK = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 18
  %fwdnldover = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 19
  %fwseqnum = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 15
  %fwfinalblk = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 20
  %fw_wq = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 14
  %fw_timeout = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 13
  %rx_urb = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 1
  br label %if.end42

do.body27:                                        ; preds = %restart.backedge.do.body27_crit_edge, %restart.preheader.do.body27_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %22 = load i32, ptr @lbtf_debug, align 4
  %and28 = and i32 %22, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %cmp29.not = icmp eq i32 %and28, 0
  br i1 %cmp29.not, label %do.body27.release_fw_crit_edge, label %do.end33

do.body27.release_fw_crit_edge:                   ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #9
  br label %release_fw

do.end33:                                         ; preds = %do.body27
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %init_name.i = getelementptr inbounds %struct.usb_device, ptr %24, i32 0, i32 15, i32 3
  %25 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end33.dev_name.exit_crit_edge

do.end33.dev_name.exit_crit_edge:                 ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #9
  %dev36 = getelementptr inbounds %struct.usb_device, ptr %24, i32 0, i32 15
  %27 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev36, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end33.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %28, %if.end.i ], [ %26, %do.end33.dev_name.exit_crit_edge ]
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %retval.0.i) #10
  br label %release_fw

if.end42:                                         ; preds = %restart.backedge.if.end42_crit_edge, %if.end42.lr.ph
  %i.0209 = phi i32 [ 0, %if.end42.lr.ph ], [ %i.0.be, %restart.backedge.if.end42_crit_edge ]
  %29 = ptrtoint ptr %bootcmdresp to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %bootcmdresp, align 2
  br label %do.body43

do.body43:                                        ; preds = %do.end54.do.body43_crit_edge, %if.end42
  %i.1 = phi i32 [ %i.0209, %if.end42 ], [ %inc, %do.end54.do.body43_crit_edge ]
  %30 = ptrtoint ptr %ep_out_buf.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ep_out_buf.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1297241676, ptr %31, align 4
  %cmd.i = getelementptr inbounds %struct.bootcmd, ptr %31, i32 0, i32 1
  %33 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %cmd.i, align 4
  %pad.i = getelementptr inbounds %struct.bootcmd, ptr %31, i32 0, i32 2
  %34 = call ptr @memset(ptr %pad.i, i32 0, i32 11)
  %35 = load ptr, ptr %ep_out_buf.i, align 4
  %call.i192 = call fastcc i32 @usb_tx_block(ptr noundef %1, ptr noundef %35, i16 noundef zeroext 16, i8 noundef zeroext 0) #7
  br label %do.body45

do.body45:                                        ; preds = %do.body45.do.body45_crit_edge, %do.body43
  %j.0 = phi i32 [ 0, %do.body43 ], [ %inc46, %do.body45.do.body45_crit_edge ]
  %call47 = call i32 @msleep_interruptible(i32 noundef 100) #7
  %36 = ptrtoint ptr %bootcmdresp to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %bootcmdresp, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp50 = icmp eq i8 %37, 0
  %inc46 = add nuw nsw i32 %j.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %j.0)
  %cmp52 = icmp ult i32 %j.0, 9
  %or.cond = select i1 %cmp50, i1 %cmp52, i1 false
  br i1 %or.cond, label %do.body45.do.body45_crit_edge, label %do.end54

do.body45.do.body45_crit_edge:                    ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body45

do.end54:                                         ; preds = %do.body45
  %inc = add i32 %i.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %inc)
  %cmp61 = icmp slt i32 %inc, 5
  %or.cond191 = select i1 %cmp50, i1 %cmp61, i1 false
  br i1 %or.cond191, label %do.end54.do.body43_crit_edge, label %do.end64

do.end54.do.body43_crit_edge:                     ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body43

do.end64:                                         ; preds = %do.end54
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %37)
  %cmp67 = icmp slt i8 %37, 1
  br i1 %cmp67, label %if.then69, label %if.end75

if.then69:                                        ; preds = %do.end64
  %38 = load i32, ptr @if_usb_prog_firmware.reset_count, align 4
  %dec = add i32 %38, -1
  store i32 %dec, ptr @if_usb_prog_firmware.reset_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec)
  %cmp70 = icmp sgt i32 %dec, -1
  br i1 %cmp70, label %if.then69.restart.backedge_crit_edge, label %if.then69.cleanup147_crit_edge

if.then69.cleanup147_crit_edge:                   ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup147

if.then69.restart.backedge_crit_edge:             ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #9
  br label %restart.backedge

restart.backedge:                                 ; preds = %do.end116.restart.backedge_crit_edge, %if.then69.restart.backedge_crit_edge
  %i.0.be = phi i32 [ 0, %do.end116.restart.backedge_crit_edge ], [ %inc, %if.then69.restart.backedge_crit_edge ]
  %call73 = call i32 @if_usb_reset_device(ptr noundef %priv)
  %call.i = call fastcc i32 @__if_usb_submit_rx_urb(ptr noundef %1, ptr noundef nonnull @if_usb_receive_fwload) #7
  %cmp25 = icmp slt i32 %call.i, 0
  br i1 %cmp25, label %restart.backedge.do.body27_crit_edge, label %restart.backedge.if.end42_crit_edge

restart.backedge.if.end42_crit_edge:              ; preds = %restart.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

restart.backedge.do.body27_crit_edge:             ; preds = %restart.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body27

if.end75:                                         ; preds = %do.end64
  %39 = ptrtoint ptr %fwlastblksent to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %fwlastblksent, align 4
  %40 = ptrtoint ptr %CRC_OK to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %CRC_OK, align 4
  %41 = ptrtoint ptr %fwdnldover to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %fwdnldover, align 1
  %42 = ptrtoint ptr %fwseqnum to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %fwseqnum, align 4
  %43 = ptrtoint ptr %totalbytes to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %totalbytes, align 4
  %44 = ptrtoint ptr %fwfinalblk to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %fwfinalblk, align 2
  call fastcc void @if_usb_send_fw_pkt(ptr noundef %1)
  call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 876) #7
  %45 = ptrtoint ptr %priv4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %priv4, align 4
  %surpriseremoved = getelementptr inbounds %struct.lbtf_private, ptr %46, i32 0, i32 36
  %47 = ptrtoint ptr %surpriseremoved to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %surpriseremoved, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool86.not = icmp eq i8 %48, 0
  br i1 %tobool86.not, label %lor.lhs.false, label %if.end75.if.end108_crit_edge

if.end75.if.end108_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end108

lor.lhs.false:                                    ; preds = %if.end75
  %49 = ptrtoint ptr %fwdnldover to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %fwdnldover, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool89.not = icmp eq i8 %50, 0
  br i1 %tobool89.not, label %if.then90, label %lor.lhs.false.if.end108_crit_edge

lor.lhs.false.if.end108_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end108

if.then90:                                        ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %51 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %call92202 = call i32 @prepare_to_wait_event(ptr noundef %fw_wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %52 = ptrtoint ptr %priv4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %priv4, align 4
  %surpriseremoved94203 = getelementptr inbounds %struct.lbtf_private, ptr %53, i32 0, i32 36
  %54 = ptrtoint ptr %surpriseremoved94203 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %surpriseremoved94203, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool96.not204 = icmp eq i8 %55, 0
  br i1 %tobool96.not204, label %if.then90.lor.lhs.false97_crit_edge, label %if.then90.for.end_crit_edge

if.then90.for.end_crit_edge:                      ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then90.lor.lhs.false97_crit_edge:              ; preds = %if.then90
  br label %lor.lhs.false97

lor.lhs.false97:                                  ; preds = %cleanup.lor.lhs.false97_crit_edge, %if.then90.lor.lhs.false97_crit_edge
  %call92205 = phi i32 [ %call92, %cleanup.lor.lhs.false97_crit_edge ], [ %call92202, %if.then90.lor.lhs.false97_crit_edge ]
  %56 = ptrtoint ptr %fwdnldover to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %fwdnldover, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool100.not = icmp eq i8 %57, 0
  br i1 %tobool100.not, label %if.end102, label %lor.lhs.false97.for.end_crit_edge

lor.lhs.false97.for.end_crit_edge:                ; preds = %lor.lhs.false97
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end102:                                        ; preds = %lor.lhs.false97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92205)
  %tobool103.not = icmp eq i32 %call92205, 0
  br i1 %tobool103.not, label %cleanup, label %if.end102.__out_crit_edge

if.end102.__out_crit_edge:                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #9
  br label %__out

cleanup:                                          ; preds = %if.end102
  call void @schedule() #7
  %call92 = call i32 @prepare_to_wait_event(ptr noundef %fw_wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %58 = ptrtoint ptr %priv4 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %priv4, align 4
  %surpriseremoved94 = getelementptr inbounds %struct.lbtf_private, ptr %59, i32 0, i32 36
  %60 = ptrtoint ptr %surpriseremoved94 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %surpriseremoved94, align 4
  %tobool96.not = icmp eq i8 %61, 0
  br i1 %tobool96.not, label %cleanup.lor.lhs.false97_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cleanup.lor.lhs.false97_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false97

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.lhs.false97.for.end_crit_edge, %if.then90.for.end_crit_edge
  call void @finish_wait(ptr noundef %fw_wq, ptr noundef nonnull %__wq_entry) #7
  br label %__out

__out:                                            ; preds = %for.end, %if.end102.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %if.end108

if.end108:                                        ; preds = %__out, %lor.lhs.false.if.end108_crit_edge, %if.end75.if.end108_crit_edge
  %call110 = call i32 @del_timer_sync(ptr noundef %fw_timeout) #7
  %62 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rx_urb, align 4
  call void @usb_kill_urb(ptr noundef %63) #7
  %64 = ptrtoint ptr %fwdnldover to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %fwdnldover, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool112.not = icmp eq i8 %65, 0
  br i1 %tobool112.not, label %do.end116, label %if.end108.release_fw_crit_edge

if.end108.release_fw_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #9
  br label %release_fw

do.end116:                                        ; preds = %if.end108
  %call118 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69) #10
  %66 = load i32, ptr @if_usb_prog_firmware.reset_count, align 4
  %dec119 = add i32 %66, -1
  store i32 %dec119, ptr @if_usb_prog_firmware.reset_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec119)
  %cmp120 = icmp sgt i32 %dec119, -1
  br i1 %cmp120, label %do.end116.restart.backedge_crit_edge, label %do.end127

do.end116.restart.backedge_crit_edge:             ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #9
  br label %restart.backedge

do.end127:                                        ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #9
  %call129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef 0) #10
  br label %release_fw

release_fw:                                       ; preds = %do.end127, %if.end108.release_fw_crit_edge, %dev_name.exit, %do.body27.release_fw_crit_edge, %check_fwfile_format.exit.thread212
  %ret.0 = phi i32 [ -1, %do.end127 ], [ -1, %dev_name.exit ], [ -1, %do.body27.release_fw_crit_edge ], [ %call5, %check_fwfile_format.exit.thread212 ], [ %call5, %if.end108.release_fw_crit_edge ]
  %67 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %68) #7
  %69 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %fw, align 4
  %70 = ptrtoint ptr %priv4 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %priv4, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %b2_cmd.i) #7
  %74 = getelementptr inbounds %struct.cmd_ds_set_boot2_ver, ptr %b2_cmd.i, i32 0, i32 1
  %75 = getelementptr inbounds %struct.cmd_ds_set_boot2_ver, ptr %b2_cmd.i, i32 0, i32 2
  %76 = ptrtoint ptr %b2_cmd.i to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 -268276542210049, ptr %b2_cmd.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %77 = load i32, ptr @lbtf_debug, align 4
  %and.i193 = and i32 %77, 131073
  call void @__sanitizer_cov_trace_const_cmp4(i32 131073, i32 %and.i193)
  %cmp.i = icmp eq i32 %and.i193, 131073
  br i1 %cmp.i, label %do.end.i, label %release_fw.do.end3.i_crit_edge

release_fw.do.end3.i_crit_edge:                   ; preds = %release_fw
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i

do.end.i:                                         ; preds = %release_fw
  call void @__sanitizer_cov_trace_pc() #9
  %call.i194 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.143) #10
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %release_fw.do.end3.i_crit_edge
  %call.i.i = call fastcc i32 @__if_usb_submit_rx_urb(ptr noundef %73, ptr noundef nonnull @if_usb_receive) #7
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 0, ptr %74, align 8
  %boot2_version.i = getelementptr inbounds %struct.if_usb_card, ptr %73, i32 0, i32 21
  %79 = ptrtoint ptr %boot2_version.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %boot2_version.i, align 4
  %81 = ptrtoint ptr %75 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %80, ptr %75, align 2
  %82 = ptrtoint ptr %b2_cmd.i to i32
  %call11.i = call i32 @__lbtf_cmd(ptr noundef %71, i16 noundef zeroext 165, ptr noundef nonnull %b2_cmd.i, i32 noundef 12, ptr noundef nonnull @lbtf_cmd_copyback, i32 noundef %82) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool.not.i195 = icmp eq i32 %call11.i, 0
  br i1 %tobool.not.i195, label %do.end3.i.do.body27.i_crit_edge, label %do.body13.i

do.end3.i.do.body27.i_crit_edge:                  ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body27.i

do.body13.i:                                      ; preds = %do.end3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %83 = load i32, ptr @lbtf_debug, align 4
  %and14.i = and i32 %83, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %cmp15.not.i = icmp eq i32 %and14.i, 0
  br i1 %cmp15.not.i, label %do.body13.i.do.body27.i_crit_edge, label %do.end20.i

do.body13.i.do.body27.i_crit_edge:                ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body27.i

do.end20.i:                                       ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #9
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145) #10
  br label %do.body27.i

do.body27.i:                                      ; preds = %do.end20.i, %do.body13.i.do.body27.i_crit_edge, %do.end3.i.do.body27.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %84 = load i32, ptr @lbtf_debug, align 4
  %and28.i = and i32 %84, 131074
  call void @__sanitizer_cov_trace_const_cmp4(i32 131074, i32 %and28.i)
  %cmp29.i = icmp eq i32 %and28.i, 131074
  br i1 %cmp29.i, label %do.end34.i, label %do.body27.i.if_usb_setup_firmware.exit_crit_edge

do.body27.i.if_usb_setup_firmware.exit_crit_edge: ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if_usb_setup_firmware.exit

do.end34.i:                                       ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #9
  %call36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.143) #10
  br label %if_usb_setup_firmware.exit

if_usb_setup_firmware.exit:                       ; preds = %do.end34.i, %do.body27.i.if_usb_setup_firmware.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %b2_cmd.i) #7
  br label %do.body134

do.body134:                                       ; preds = %if_usb_setup_firmware.exit, %do.end10
  %ret.1 = phi i32 [ %call5, %do.end10 ], [ %ret.0, %if_usb_setup_firmware.exit ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %85 = load i32, ptr @lbtf_debug, align 4
  %and135 = and i32 %85, 131074
  call void @__sanitizer_cov_trace_const_cmp4(i32 131074, i32 %and135)
  %cmp136 = icmp eq i32 %and135, 131074
  br i1 %cmp136, label %do.end141, label %do.body134.cleanup147_crit_edge

do.body134.cleanup147_crit_edge:                  ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup147

do.end141:                                        ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #9
  %call143 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.58, i32 noundef %ret.1) #10
  br label %cleanup147

cleanup147:                                       ; preds = %do.end141, %do.body134.cleanup147_crit_edge, %if.then69.cleanup147_crit_edge
  %retval.0 = phi i32 [ %ret.1, %do.end141 ], [ %ret.1, %do.body134.cleanup147_crit_edge ], [ -1, %if.then69.cleanup147_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @if_usb_reset_device(ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %ep_out_buf = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %ep_out_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ep_out_buf, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %4 = load i32, ptr @lbtf_debug, align 4
  %and = and i32 %4, 131073
  call void @__sanitizer_cov_trace_const_cmp4(i32 131073, i32 %and)
  %cmp = icmp eq i32 %and, 131073
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.173) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %5 = ptrtoint ptr %ep_out_buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ep_out_buf, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -822473232, ptr %6, align 4
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 1280, ptr %add.ptr, align 1
  %size = getelementptr i8, ptr %3, i32 6
  %9 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 2560, ptr %size, align 1
  %result = getelementptr i8, ptr %3, i32 10
  %10 = ptrtoint ptr %result to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 0, ptr %result, align 1
  %seqnum = getelementptr i8, ptr %3, i32 8
  %11 = ptrtoint ptr %seqnum to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 23130, ptr %seqnum, align 1
  %action = getelementptr i8, ptr %3, i32 12
  %12 = ptrtoint ptr %action to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 768, ptr %action, align 1
  %13 = load ptr, ptr %ep_out_buf, align 4
  %call9 = tail call fastcc i32 @usb_tx_block(ptr noundef %1, ptr noundef %13, i16 noundef zeroext 14, i8 noundef zeroext 0)
  tail call void @msleep(i32 noundef 100) #7
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call10 = tail call i32 @usb_reset_device(ptr noundef %15) #7
  tail call void @msleep(i32 noundef 100) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %16 = load i32, ptr @lbtf_debug, align 4
  %and12 = and i32 %16, 131074
  call void @__sanitizer_cov_trace_const_cmp4(i32 131074, i32 %and12)
  %cmp13 = icmp eq i32 %and12, 131074
  br i1 %cmp13, label %do.end17, label %do.end3.do.end22_crit_edge

do.end3.do.end22_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end22

do.end17:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.173, i32 noundef %call10) #10
  br label %do.end22

do.end22:                                         ; preds = %do.end17, %do.end3.do.end22_crit_edge
  ret i32 %call10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usb_tx_block(ptr noundef %cardp, ptr noundef %payload, i16 noundef zeroext %nb, i8 noundef zeroext %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %0 = load i32, ptr @lbtf_debug, align 4
  %and = and i32 %0, 131073
  call void @__sanitizer_cov_trace_const_cmp4(i32 131073, i32 %and)
  %cmp = icmp eq i32 %and, 131073
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.47) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %priv = getelementptr inbounds %struct.if_usb_card, ptr %cardp, i32 0, i32 4
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 4
  %surpriseremoved = getelementptr inbounds %struct.lbtf_private, ptr %2, i32 0, i32 36
  %3 = ptrtoint ptr %surpriseremoved to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %surpriseremoved, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end18, label %do.body5

do.body5:                                         ; preds = %do.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %5 = load i32, ptr @lbtf_debug, align 4
  %and6 = and i32 %5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %cmp7.not = icmp eq i32 %and6, 0
  br i1 %cmp7.not, label %do.body5.do.body50_crit_edge, label %do.end11

do.body5.do.body50_crit_edge:                     ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body50

do.end11:                                         ; preds = %do.body5
  %6 = ptrtoint ptr %cardp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cardp, align 4
  %init_name.i = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15, i32 3
  %8 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end11.dev_name.exit_crit_edge

do.end11.dev_name.exit_crit_edge:                 ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end11.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %11, %if.end.i ], [ %9, %do.end11.dev_name.exit_crit_edge ]
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %retval.0.i) #10
  br label %do.body50

if.end18:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %data)
  %tobool19.not = icmp eq i8 %data, 0
  %tx_urb = getelementptr inbounds %struct.if_usb_card, ptr %cardp, i32 0, i32 2
  %cmd_urb = getelementptr inbounds %struct.if_usb_card, ptr %cardp, i32 0, i32 3
  %urb.0.in = select i1 %tobool19.not, ptr %cmd_urb, ptr %tx_urb
  %12 = ptrtoint ptr %urb.0.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %urb.0 = load ptr, ptr %urb.0.in, align 4
  %13 = ptrtoint ptr %cardp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cardp, align 4
  %ep_out = getelementptr inbounds %struct.if_usb_card, ptr %cardp, i32 0, i32 7
  %15 = ptrtoint ptr %ep_out to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ep_out, align 1
  %conv = zext i8 %16 to i32
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %14, align 8
  %shl.i = shl i32 %18, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i, -1073741824
  %conv25 = zext i16 %nb to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %urb.0, i32 0, i32 8
  %19 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %14, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %urb.0, i32 0, i32 10
  %20 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %urb.0, i32 0, i32 14
  %21 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %payload, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %urb.0, i32 0, i32 19
  %22 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv25, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %urb.0, i32 0, i32 28
  %23 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @if_usb_write_bulk_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %urb.0, i32 0, i32 27
  %24 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %cardp, ptr %context4.i, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %urb.0, i32 0, i32 13
  %25 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %transfer_flags, align 4
  %or26 = or i32 %26, 64
  store i32 %or26, ptr %transfer_flags, align 4
  %call27 = tail call i32 @usb_submit_urb(ptr noundef %urb.0, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end18.do.body50_crit_edge, label %do.body30

if.end18.do.body50_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body50

do.body30:                                        ; preds = %if.end18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %27 = load i32, ptr @lbtf_debug, align 4
  %and31 = and i32 %27, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %cmp32.not = icmp eq i32 %and31, 0
  br i1 %cmp32.not, label %do.body30.do.body50_crit_edge, label %do.end37

do.body30.do.body50_crit_edge:                    ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body50

do.end37:                                         ; preds = %do.body30
  %28 = ptrtoint ptr %cardp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cardp, align 4
  %init_name.i74 = getelementptr inbounds %struct.usb_device, ptr %29, i32 0, i32 15, i32 3
  %30 = ptrtoint ptr %init_name.i74 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %init_name.i74, align 8
  %tobool.not.i75 = icmp eq ptr %31, null
  br i1 %tobool.not.i75, label %if.end.i76, label %do.end37.dev_name.exit78_crit_edge

do.end37.dev_name.exit78_crit_edge:               ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit78

if.end.i76:                                       ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #9
  %dev40 = getelementptr inbounds %struct.usb_device, ptr %29, i32 0, i32 15
  %32 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev40, align 4
  br label %dev_name.exit78

dev_name.exit78:                                  ; preds = %if.end.i76, %do.end37.dev_name.exit78_crit_edge
  %retval.0.i77 = phi ptr [ %33, %if.end.i76 ], [ %31, %do.end37.dev_name.exit78_crit_edge ]
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %retval.0.i77, i32 noundef -1) #10
  br label %do.body50

do.body50:                                        ; preds = %dev_name.exit78, %do.body30.do.body50_crit_edge, %if.end18.do.body50_crit_edge, %dev_name.exit, %do.body5.do.body50_crit_edge
  %ret.0 = phi i32 [ -1, %dev_name.exit ], [ -1, %do.body5.do.body50_crit_edge ], [ -1, %dev_name.exit78 ], [ -1, %do.body30.do.body50_crit_edge ], [ 0, %if.end18.do.body50_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %34 = load i32, ptr @lbtf_debug, align 4
  %and51 = and i32 %34, 131074
  call void @__sanitizer_cov_trace_const_cmp4(i32 131074, i32 %and51)
  %cmp52 = icmp eq i32 %and51, 131074
  br i1 %cmp52, label %do.end57, label %do.body50.do.end62_crit_edge

do.body50.do.end62_crit_edge:                     ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end62

do.end57:                                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #9
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.47) #10
  br label %do.end62

do.end62:                                         ; preds = %do.end57, %do.body50.do.end62_crit_edge
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @if_usb_write_bulk_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %1) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_param_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernel_param_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @if_usb_send_fw_pkt(ptr noundef %cardp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ep_out_buf = getelementptr inbounds %struct.if_usb_card, ptr %cardp, i32 0, i32 10
  %0 = ptrtoint ptr %ep_out_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ep_out_buf, align 4
  %fw = getelementptr inbounds %struct.if_usb_card, ptr %cardp, i32 0, i32 12
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %6 = load i32, ptr @lbtf_debug, align 4
  %and = and i32 %6, 524289
  call void @__sanitizer_cov_trace_const_cmp4(i32 524289, i32 %and)
  %cmp = icmp eq i32 %and, 524289
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.140) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %CRC_OK = getelementptr inbounds %struct.if_usb_card, ptr %cardp, i32 0, i32 18
  %7 = ptrtoint ptr %CRC_OK to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %CRC_OK, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.then4, label %do.end3.do.end8_crit_edge

do.end3.do.end8_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

if.then4:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  %fwlastblksent = getelementptr inbounds %struct.if_usb_card, ptr %cardp, i32 0, i32 17
  %9 = ptrtoint ptr %fwlastblksent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fwlastblksent, align 4
  %totalbytes = getelementptr inbounds %struct.if_usb_card, ptr %cardp, i32 0, i32 16
  %11 = ptrtoint ptr %totalbytes to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %totalbytes, align 4
  %fwseqnum = getelementptr inbounds %struct.if_usb_card, ptr %cardp, i32 0, i32 15
  %12 = ptrtoint ptr %fwseqnum to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fwseqnum, align 4
  %dec = add i32 %13, -1
  store i32 %dec, ptr %fwseqnum, align 4
  br label %do.end8

do.end8:                                          ; preds = %if.then4, %do.end3.do.end8_crit_edge
  %totalbytes9 = getelementptr inbounds %struct.if_usb_card, ptr %cardp, i32 0, i32 16
  %14 = ptrtoint ptr %totalbytes9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %totalbytes9, align 4
  %arrayidx = getelementptr i8, ptr %5, i32 %15
  %16 = call ptr @memcpy(ptr %1, ptr %arrayidx, i32 16)
  %17 = load i32, ptr %totalbytes9, align 4
  %fwlastblksent11 = getelementptr inbounds %struct.if_usb_card, ptr %cardp, i32 0, i32 17
  %18 = ptrtoint ptr %fwlastblksent11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %fwlastblksent11, align 4
  %add = add i32 %17, 16
  store i32 %add, ptr %totalbytes9, align 4
  %data13 = getelementptr inbounds %struct.fwdata, ptr %1, i32 0, i32 2
  %arrayidx15 = getelementptr i8, ptr %5, i32 %add
  %datalength = getelementptr inbounds %struct.fwheader, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %datalength to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %datalength, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %22 = call ptr @memcpy(ptr %data13, ptr %arrayidx15, i32 %21)
  %fwseqnum20 = getelementptr inbounds %struct.if_usb_card, ptr %cardp, i32 0, i32 15
  %23 = ptrtoint ptr %fwseqnum20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fwseqnum20, align 4
  %inc = add i32 %24, 1
  store i32 %inc, ptr %fwseqnum20, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %inc)
  %seqnum = getelementptr inbounds %struct.fwdata, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %seqnum to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %seqnum, align 4
  %27 = ptrtoint ptr %datalength to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %datalength, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %30 = ptrtoint ptr %totalbytes9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %totalbytes9, align 4
  %add24 = add i32 %31, %29
  store i32 %add24, ptr %totalbytes9, align 4
  %32 = ptrtoint ptr %ep_out_buf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ep_out_buf, align 4
  %34 = ptrtoint ptr %datalength to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %datalength, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %37 = trunc i32 %36 to i16
  %conv = add i16 %37, 20
  %call29 = tail call fastcc i32 @usb_tx_block(ptr noundef %cardp, ptr noundef %33, i16 noundef zeroext %conv, i8 noundef zeroext 0)
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %39)
  %cond = icmp eq i32 %39, 67108864
  br i1 %cond, label %do.end50, label %do.end8.do.body56_crit_edge

do.end8.do.body56_crit_edge:                      ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body56

do.end50:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  %fwfinalblk = getelementptr inbounds %struct.if_usb_card, ptr %cardp, i32 0, i32 20
  %40 = ptrtoint ptr %fwfinalblk to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %fwfinalblk, align 2
  br label %do.body56

do.body56:                                        ; preds = %do.end50, %do.end8.do.body56_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %41 = load i32, ptr @lbtf_debug, align 4
  %and57 = and i32 %41, 524290
  call void @__sanitizer_cov_trace_const_cmp4(i32 524290, i32 %and57)
  %cmp58 = icmp eq i32 %and57, 524290
  br i1 %cmp58, label %do.end63, label %do.body56.do.end68_crit_edge

do.body56.do.end68_crit_edge:                     ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end68

do.end63:                                         ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #9
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.140) #10
  br label %do.end68

do.end68:                                         ; preds = %do.end63, %do.body56.do.end68_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__if_usb_submit_rx_urb(ptr noundef %cardp, ptr noundef %callbackfn) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %0 = load i32, ptr @lbtf_debug, align 4
  %and = and i32 %0, 131073
  call void @__sanitizer_cov_trace_const_cmp4(i32 131073, i32 %and)
  %cmp = icmp eq i32 %and, 131073
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.82) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 1578, i32 noundef 2592) #7
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %do.end8, label %if.end23

do.end8:                                          ; preds = %do.end3
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %1 = load i32, ptr @lbtf_debug, align 4
  %and12 = and i32 %1, 131074
  call void @__sanitizer_cov_trace_const_cmp4(i32 131074, i32 %and12)
  %cmp13 = icmp eq i32 %and12, 131074
  br i1 %cmp13, label %do.end8.cleanup.sink.split_crit_edge, label %do.end8.cleanup_crit_edge

do.end8.cleanup_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end8.cleanup.sink.split_crit_edge:             ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end23:                                         ; preds = %do.end3
  %rx_skb = getelementptr inbounds %struct.if_usb_card, ptr %cardp, i32 0, i32 5
  %2 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i.i, ptr %rx_skb, align 4
  %rx_urb = getelementptr inbounds %struct.if_usb_card, ptr %cardp, i32 0, i32 1
  %3 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rx_urb, align 4
  %5 = ptrtoint ptr %cardp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cardp, align 4
  %ep_in = getelementptr inbounds %struct.if_usb_card, ptr %cardp, i32 0, i32 6
  %7 = ptrtoint ptr %ep_in to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ep_in, align 4
  %conv = zext i8 %8 to i32
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %6, align 8
  %shl.i = shl i32 %10, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or26 = or i32 %or.i, -1073741696
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %11 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tail.i, align 8
  %dev1.i = getelementptr inbounds %struct.urb, ptr %4, i32 0, i32 8
  %13 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %6, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %4, i32 0, i32 10
  %14 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or26, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %4, i32 0, i32 14
  %15 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %4, i32 0, i32 19
  %16 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1578, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %4, i32 0, i32 28
  %17 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %callbackfn, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %4, i32 0, i32 27
  %18 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %cardp, ptr %context4.i, align 4
  %19 = load ptr, ptr %rx_urb, align 4
  %call32 = tail call i32 @usb_submit_urb(ptr noundef %19, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %20 = load i32, ptr @lbtf_debug, align 4
  br i1 %tobool33.not, label %do.body67, label %do.body35

do.body35:                                        ; preds = %if.end23
  %and36 = and i32 %20, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %cmp37.not = icmp eq i32 %and36, 0
  br i1 %cmp37.not, label %do.body35.do.end49_crit_edge, label %do.end42

do.body35.do.end49_crit_edge:                     ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end49

do.end42:                                         ; preds = %do.body35
  %21 = ptrtoint ptr %cardp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cardp, align 4
  %init_name.i = getelementptr inbounds %struct.usb_device, ptr %22, i32 0, i32 15, i32 3
  %23 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end42.dev_name.exit_crit_edge

do.end42.dev_name.exit_crit_edge:                 ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.usb_device, ptr %22, i32 0, i32 15
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end42.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %26, %if.end.i ], [ %24, %do.end42.dev_name.exit_crit_edge ]
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef %retval.0.i, i32 noundef %call32) #10
  br label %do.end49

do.end49:                                         ; preds = %dev_name.exit, %do.body35.do.end49_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #7
  %27 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %rx_skb, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %28 = load i32, ptr @lbtf_debug, align 4
  %and52 = and i32 %28, 131074
  call void @__sanitizer_cov_trace_const_cmp4(i32 131074, i32 %and52)
  %cmp53 = icmp eq i32 %and52, 131074
  br i1 %cmp53, label %do.end49.cleanup.sink.split_crit_edge, label %do.end49.cleanup_crit_edge

do.end49.cleanup_crit_edge:                       ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end49.cleanup.sink.split_crit_edge:            ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.body67:                                        ; preds = %if.end23
  %and68 = and i32 %20, 131074
  call void @__sanitizer_cov_trace_const_cmp4(i32 131074, i32 %and68)
  %cmp69 = icmp eq i32 %and68, 131074
  br i1 %cmp69, label %do.body67.cleanup.sink.split_crit_edge, label %do.body67.cleanup_crit_edge

do.body67.cleanup_crit_edge:                      ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body67.cleanup.sink.split_crit_edge:           ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.body67.cleanup.sink.split_crit_edge, %do.end49.cleanup.sink.split_crit_edge, %do.end8.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -1, %do.end8.cleanup.sink.split_crit_edge ], [ -1, %do.end49.cleanup.sink.split_crit_edge ], [ 0, %do.body67.cleanup.sink.split_crit_edge ]
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.82) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body67.cleanup_crit_edge, %do.end49.cleanup_crit_edge, %do.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end8.cleanup_crit_edge ], [ -1, %do.end49.cleanup_crit_edge ], [ 0, %do.body67.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @if_usb_receive_fwload(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %rx_skb = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_skb, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %4 = load i32, ptr @lbtf_debug, align 4
  %and = and i32 %4, 131073
  call void @__sanitizer_cov_trace_const_cmp4(i32 131073, i32 %and)
  %cmp = icmp eq i32 %and, 131073
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.95) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end30, label %do.body5

do.body5:                                         ; preds = %do.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %7 = load i32, ptr @lbtf_debug, align 4
  %and6 = and i32 %7, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %cmp7.not = icmp eq i32 %and6, 0
  br i1 %cmp7.not, label %do.body5.do.end17_crit_edge, label %do.end11

do.body5.do.end17_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

do.end11:                                         ; preds = %do.body5
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %init_name.i = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 15, i32 3
  %10 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end11.dev_name.exit_crit_edge

do.end11.dev_name.exit_crit_edge:                 ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 15
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end11.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %13, %if.end.i ], [ %11, %do.end11.dev_name.exit_crit_edge ]
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef %retval.0.i) #10
  br label %do.end17

do.end17:                                         ; preds = %dev_name.exit, %do.body5.do.end17_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %14 = load i32, ptr @lbtf_debug, align 4
  %and19 = and i32 %14, 131074
  call void @__sanitizer_cov_trace_const_cmp4(i32 131074, i32 %and19)
  %cmp20 = icmp eq i32 %and19, 131074
  br i1 %cmp20, label %do.end17.cleanup.sink.split_crit_edge, label %do.end17.cleanup_crit_edge

do.end17.cleanup_crit_edge:                       ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end17.cleanup.sink.split_crit_edge:            ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end30:                                         ; preds = %do.end3
  %fwdnldover = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 19
  %15 = ptrtoint ptr %fwdnldover to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %fwdnldover, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool31.not = icmp eq i8 %16, 0
  br i1 %tobool31.not, label %if.end71, label %if.then32

if.then32:                                        ; preds = %if.end30
  %data = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 19
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -822415426, i32 %20)
  %cmp34 = icmp eq i32 %20, -822415426
  br i1 %cmp34, label %land.lhs.true, label %if.then32.do.body43_crit_edge

if.then32.do.body43_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body43

land.lhs.true:                                    ; preds = %if.then32
  %arrayidx35 = getelementptr i32, ptr %18, i32 1
  %21 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306368, i32 %22)
  %cmp36 = icmp eq i32 %22, 805306368
  br i1 %cmp36, label %do.end40, label %land.lhs.true.do.body43_crit_edge

land.lhs.true.do.body43_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body43

do.end40:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102) #10
  %fw_wq = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 14
  tail call void @__wake_up(ptr noundef %fw_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %if.end58

do.body43:                                        ; preds = %land.lhs.true.do.body43_crit_edge, %if.then32.do.body43_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %23 = load i32, ptr @lbtf_debug, align 4
  %and44 = and i32 %23, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %cmp45.not = icmp eq i32 %and44, 0
  br i1 %cmp45.not, label %do.body43.do.end56_crit_edge, label %do.end49

do.body43.do.end56_crit_edge:                     ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end56

do.end49:                                         ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #9
  %24 = tail call i32 @llvm.bswap.i32(i32 %20)
  %arrayidx52 = getelementptr i32, ptr %18, i32 1
  %25 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx52, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, i32 noundef %24, i32 noundef %27) #10
  br label %do.end56

do.end56:                                         ; preds = %do.end49, %do.body43.do.end56_crit_edge
  %call.i = tail call fastcc i32 @__if_usb_submit_rx_urb(ptr noundef %1, ptr noundef nonnull @if_usb_receive_fwload) #7
  br label %if.end58

if.end58:                                         ; preds = %do.end56, %do.end40
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %28 = load i32, ptr @lbtf_debug, align 4
  %and60 = and i32 %28, 131074
  call void @__sanitizer_cov_trace_const_cmp4(i32 131074, i32 %and60)
  %cmp61 = icmp eq i32 %and60, 131074
  br i1 %cmp61, label %if.end58.cleanup.sink.split_crit_edge, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end58.cleanup.sink.split_crit_edge:            ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end71:                                         ; preds = %if.end30
  %bootcmdresp = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 8
  %29 = ptrtoint ptr %bootcmdresp to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bootcmdresp, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %30)
  %cmp72 = icmp slt i8 %30, 1
  %data75 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 19
  %31 = ptrtoint ptr %data75 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data75, align 4
  br i1 %cmp72, label %if.then74, label %if.end204

if.then74:                                        ; preds = %if.end71
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %bcmdresp.sroa.0.0.copyload = load i32, ptr %32, align 1
  %bcmdresp.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %32, i32 4
  %34 = ptrtoint ptr %bcmdresp.sroa.9.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %34)
  %bcmdresp.sroa.9.0.copyload = load i8, ptr %bcmdresp.sroa.9.0..sroa_idx, align 1
  %bcmdresp.sroa.12.0..sroa_idx = getelementptr inbounds i8, ptr %32, i32 5
  %35 = ptrtoint ptr %bcmdresp.sroa.12.0..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %35)
  %bcmdresp.sroa.12.0.copyload = load i8, ptr %bcmdresp.sroa.12.0..sroa_idx, align 1
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %bcdDevice = getelementptr inbounds %struct.usb_device, ptr %37, i32 0, i32 16, i32 9
  %38 = ptrtoint ptr %bcdDevice to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %bcdDevice, align 4
  %40 = tail call i16 @llvm.bswap.i16(i16 %39)
  call void @__sanitizer_cov_trace_const_cmp2(i16 12550, i16 %40)
  %cmp78 = icmp ult i16 %40, 12550
  br i1 %cmp78, label %if.then80, label %if.end112

if.then80:                                        ; preds = %if.then74
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #7
  %call.i333 = tail call fastcc i32 @__if_usb_submit_rx_urb(ptr noundef %1, ptr noundef nonnull @if_usb_receive_fwload) #7
  %41 = ptrtoint ptr %bootcmdresp to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %bootcmdresp, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %42 = load i32, ptr @lbtf_debug, align 4
  %and84 = and i32 %42, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %cmp85.not = icmp eq i32 %and84, 0
  br i1 %cmp85.not, label %if.then80.do.body99_crit_edge, label %do.end90

if.then80.do.body99_crit_edge:                    ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body99

do.end90:                                         ; preds = %if.then80
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %init_name.i334 = getelementptr inbounds %struct.usb_device, ptr %44, i32 0, i32 15, i32 3
  %45 = ptrtoint ptr %init_name.i334 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %init_name.i334, align 8
  %tobool.not.i335 = icmp eq ptr %46, null
  br i1 %tobool.not.i335, label %if.end.i336, label %do.end90.dev_name.exit338_crit_edge

do.end90.dev_name.exit338_crit_edge:              ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit338

if.end.i336:                                      ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #9
  %dev93 = getelementptr inbounds %struct.usb_device, ptr %44, i32 0, i32 15
  %47 = ptrtoint ptr %dev93 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev93, align 4
  br label %dev_name.exit338

dev_name.exit338:                                 ; preds = %if.end.i336, %do.end90.dev_name.exit338_crit_edge
  %retval.0.i337 = phi ptr [ %48, %if.end.i336 ], [ %46, %do.end90.dev_name.exit338_crit_edge ]
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef %retval.0.i337) #10
  br label %do.body99

do.body99:                                        ; preds = %dev_name.exit338, %if.then80.do.body99_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %49 = load i32, ptr @lbtf_debug, align 4
  %and100 = and i32 %49, 131074
  call void @__sanitizer_cov_trace_const_cmp4(i32 131074, i32 %and100)
  %cmp101 = icmp eq i32 %and100, 131074
  br i1 %cmp101, label %do.body99.cleanup.sink.split_crit_edge, label %do.body99.cleanup_crit_edge

do.body99.cleanup_crit_edge:                      ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body99.cleanup.sink.split_crit_edge:           ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end112:                                        ; preds = %if.then74
  %50 = zext i32 %bcmdresp.sroa.0.0.copyload to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.182)
  switch i32 %bcmdresp.sroa.0.0.copyload, label %do.end140 [
    i32 1297241676, label %if.else145
    i32 -822473232, label %if.end112.if.then126_crit_edge
    i32 -557797954, label %if.end112.if.then126_crit_edge356
    i32 -822415426, label %if.end112.if.then126_crit_edge357
  ]

if.end112.if.then126_crit_edge357:                ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then126

if.end112.if.then126_crit_edge356:                ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then126

if.end112.if.then126_crit_edge:                   ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then126

if.then126:                                       ; preds = %if.end112.if.then126_crit_edge, %if.end112.if.then126_crit_edge356, %if.end112.if.then126_crit_edge357
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool128.not = icmp eq i8 %30, 0
  br i1 %tobool128.not, label %do.end132, label %if.then126.if.end135_crit_edge

if.then126.if.end135_crit_edge:                   ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end135

do.end132:                                        ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #9
  %call134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115) #10
  br label %if.end135

if.end135:                                        ; preds = %do.end132, %if.then126.if.end135_crit_edge
  %51 = ptrtoint ptr %bootcmdresp to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -1, ptr %bootcmdresp, align 2
  br label %if.end189

do.end140:                                        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  %52 = tail call i32 @llvm.bswap.i32(i32 %bcmdresp.sroa.0.0.copyload)
  %call143 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, i32 noundef %52) #10
  br label %if.end189

if.else145:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bcmdresp.sroa.9.0.copyload)
  %cmp147.not = icmp eq i8 %bcmdresp.sroa.9.0.copyload, 1
  br i1 %cmp147.not, label %if.else157, label %do.end152

do.end152:                                        ; preds = %if.else145
  call void @__sanitizer_cov_trace_pc() #9
  %conv146 = zext i8 %bcmdresp.sroa.9.0.copyload to i32
  %call156 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, i32 noundef %conv146) #10
  br label %if.end189

if.else157:                                       ; preds = %if.else145
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bcmdresp.sroa.12.0.copyload)
  %cmp159.not = icmp eq i8 %bcmdresp.sroa.12.0.copyload, 1
  br i1 %cmp159.not, label %if.else169, label %do.end164

do.end164:                                        ; preds = %if.else157
  call void @__sanitizer_cov_trace_pc() #9
  %conv158 = zext i8 %bcmdresp.sroa.12.0.copyload to i32
  %call168 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, i32 noundef %conv158) #10
  br label %if.end189

if.else169:                                       ; preds = %if.else157
  %53 = ptrtoint ptr %bootcmdresp to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %bootcmdresp, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %54 = load i32, ptr @lbtf_debug, align 4
  %and172 = and i32 %54, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172)
  %cmp173.not = icmp eq i32 %and172, 0
  br i1 %cmp173.not, label %if.else169.if.end189_crit_edge, label %do.end178

if.else169.if.end189_crit_edge:                   ; preds = %if.else169
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end189

do.end178:                                        ; preds = %if.else169
  %init_name.i339 = getelementptr inbounds %struct.usb_device, ptr %37, i32 0, i32 15, i32 3
  %55 = ptrtoint ptr %init_name.i339 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %init_name.i339, align 8
  %tobool.not.i340 = icmp eq ptr %56, null
  br i1 %tobool.not.i340, label %if.end.i341, label %do.end178.dev_name.exit343_crit_edge

do.end178.dev_name.exit343_crit_edge:             ; preds = %do.end178
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit343

if.end.i341:                                      ; preds = %do.end178
  call void @__sanitizer_cov_trace_pc() #9
  %dev181 = getelementptr inbounds %struct.usb_device, ptr %37, i32 0, i32 15
  %57 = ptrtoint ptr %dev181 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev181, align 4
  br label %dev_name.exit343

dev_name.exit343:                                 ; preds = %if.end.i341, %do.end178.dev_name.exit343_crit_edge
  %retval.0.i342 = phi ptr [ %58, %if.end.i341 ], [ %56, %do.end178.dev_name.exit343_crit_edge ]
  %call183 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef %retval.0.i342) #10
  br label %if.end189

if.end189:                                        ; preds = %dev_name.exit343, %if.else169.if.end189_crit_edge, %do.end164, %do.end152, %do.end140, %if.end135
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #7
  %call.i344 = tail call fastcc i32 @__if_usb_submit_rx_urb(ptr noundef %1, ptr noundef nonnull @if_usb_receive_fwload) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %59 = load i32, ptr @lbtf_debug, align 4
  %and192 = and i32 %59, 131074
  call void @__sanitizer_cov_trace_const_cmp4(i32 131074, i32 %and192)
  %cmp193 = icmp eq i32 %and192, 131074
  br i1 %cmp193, label %if.end189.cleanup.sink.split_crit_edge, label %if.end189.cleanup_crit_edge

if.end189.cleanup_crit_edge:                      ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end189.cleanup.sink.split_crit_edge:           ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end204:                                        ; preds = %if.end71
  %call206 = tail call ptr @kmemdup(ptr noundef %32, i32 noundef 8, i32 noundef 2592) #7
  %tobool207.not = icmp eq ptr %call206, null
  br i1 %tobool207.not, label %do.body209, label %if.end238

do.body209:                                       ; preds = %if.end204
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %60 = load i32, ptr @lbtf_debug, align 4
  %and210 = and i32 %60, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and210)
  %cmp211.not = icmp eq i32 %and210, 0
  br i1 %cmp211.not, label %do.body209.do.end224_crit_edge, label %do.end216

do.body209.do.end224_crit_edge:                   ; preds = %do.body209
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end224

do.end216:                                        ; preds = %do.body209
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 4
  %init_name.i345 = getelementptr inbounds %struct.usb_device, ptr %62, i32 0, i32 15, i32 3
  %63 = ptrtoint ptr %init_name.i345 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %init_name.i345, align 8
  %tobool.not.i346 = icmp eq ptr %64, null
  br i1 %tobool.not.i346, label %if.end.i347, label %do.end216.dev_name.exit349_crit_edge

do.end216.dev_name.exit349_crit_edge:             ; preds = %do.end216
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit349

if.end.i347:                                      ; preds = %do.end216
  call void @__sanitizer_cov_trace_pc() #9
  %dev219 = getelementptr inbounds %struct.usb_device, ptr %62, i32 0, i32 15
  %65 = ptrtoint ptr %dev219 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev219, align 4
  br label %dev_name.exit349

dev_name.exit349:                                 ; preds = %if.end.i347, %do.end216.dev_name.exit349_crit_edge
  %retval.0.i348 = phi ptr [ %66, %if.end.i347 ], [ %64, %do.end216.dev_name.exit349_crit_edge ]
  %call221 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef %retval.0.i348) #10
  br label %do.end224

do.end224:                                        ; preds = %dev_name.exit349, %do.body209.do.end224_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %67 = load i32, ptr @lbtf_debug, align 4
  %and226 = and i32 %67, 131074
  call void @__sanitizer_cov_trace_const_cmp4(i32 131074, i32 %and226)
  %cmp227 = icmp eq i32 %and226, 131074
  br i1 %cmp227, label %do.end224.cleanup.sink.split_crit_edge, label %do.end224.cleanup_crit_edge

do.end224.cleanup_crit_edge:                      ; preds = %do.end224
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end224.cleanup.sink.split_crit_edge:           ; preds = %do.end224
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end238:                                        ; preds = %if.end204
  %68 = ptrtoint ptr %call206 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %call206, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool240.not = icmp eq i32 %69, 0
  br i1 %tobool240.not, label %if.end238.if.end266_crit_edge, label %do.body249

if.end238.if.end266_crit_edge:                    ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end266

do.body249:                                       ; preds = %if.end238
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %70 = load i32, ptr @lbtf_debug, align 4
  %and250 = and i32 %70, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and250)
  %cmp251.not = icmp eq i32 %and250, 0
  br i1 %cmp251.not, label %do.body249.if.end266_crit_edge, label %do.end256

do.body249.if.end266_crit_edge:                   ; preds = %do.body249
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end266

do.end256:                                        ; preds = %do.body249
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 4
  %init_name.i350 = getelementptr inbounds %struct.usb_device, ptr %72, i32 0, i32 15, i32 3
  %73 = ptrtoint ptr %init_name.i350 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %init_name.i350, align 8
  %tobool.not.i351 = icmp eq ptr %74, null
  br i1 %tobool.not.i351, label %if.end.i352, label %do.end256.dev_name.exit354_crit_edge

do.end256.dev_name.exit354_crit_edge:             ; preds = %do.end256
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit354

if.end.i352:                                      ; preds = %do.end256
  call void @__sanitizer_cov_trace_pc() #9
  %dev259 = getelementptr inbounds %struct.usb_device, ptr %72, i32 0, i32 15
  %75 = ptrtoint ptr %dev259 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev259, align 4
  br label %dev_name.exit354

dev_name.exit354:                                 ; preds = %if.end.i352, %do.end256.dev_name.exit354_crit_edge
  %retval.0.i353 = phi ptr [ %76, %if.end.i352 ], [ %74, %do.end256.dev_name.exit354_crit_edge ]
  %call261 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef %retval.0.i353) #10
  br label %if.end266

if.end266:                                        ; preds = %dev_name.exit354, %do.body249.if.end266_crit_edge, %if.end238.if.end266_crit_edge
  %.sink = phi i8 [ 1, %if.end238.if.end266_crit_edge ], [ 0, %dev_name.exit354 ], [ 0, %do.body249.if.end266_crit_edge ]
  %CRC_OK265 = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 18
  %77 = ptrtoint ptr %CRC_OK265 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %.sink, ptr %CRC_OK265, align 4
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #7
  %fw_timeout = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %78 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %78, 20
  %call267 = tail call i32 @mod_timer(ptr noundef %fw_timeout, i32 noundef %add) #7
  %fwfinalblk = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 20
  %79 = ptrtoint ptr %fwfinalblk to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %fwfinalblk, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool268.not = icmp eq i8 %80, 0
  br i1 %tobool268.not, label %if.end271, label %if.then269

if.then269:                                       ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #9
  %81 = ptrtoint ptr %fwdnldover to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %fwdnldover, align 1
  br label %exit

if.end271:                                        ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @if_usb_send_fw_pkt(ptr noundef %1)
  br label %exit

exit:                                             ; preds = %if.end271, %if.then269
  %call.i355 = tail call fastcc i32 @__if_usb_submit_rx_urb(ptr noundef %1, ptr noundef nonnull @if_usb_receive_fwload) #7
  tail call void @kfree(ptr noundef nonnull %call206) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %82 = load i32, ptr @lbtf_debug, align 4
  %and275 = and i32 %82, 131074
  call void @__sanitizer_cov_trace_const_cmp4(i32 131074, i32 %and275)
  %cmp276 = icmp eq i32 %and275, 131074
  br i1 %cmp276, label %exit.cleanup.sink.split_crit_edge, label %exit.cleanup_crit_edge

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

exit.cleanup.sink.split_crit_edge:                ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %exit.cleanup.sink.split_crit_edge, %do.end224.cleanup.sink.split_crit_edge, %if.end189.cleanup.sink.split_crit_edge, %do.body99.cleanup.sink.split_crit_edge, %if.end58.cleanup.sink.split_crit_edge, %do.end17.cleanup.sink.split_crit_edge
  %call283 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.95) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %exit.cleanup_crit_edge, %do.end224.cleanup_crit_edge, %if.end189.cleanup_crit_edge, %do.body99.cleanup_crit_edge, %if.end58.cleanup_crit_edge, %do.end17.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__lbtf_cmd(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbtf_cmd_copyback(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @if_usb_receive(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %rx_skb = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_skb, align 4
  %priv1 = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv1, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %6 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual_length, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 19
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %10 = load i32, ptr @lbtf_debug, align 4
  %and = and i32 %10, 131073
  call void @__sanitizer_cov_trace_const_cmp4(i32 131073, i32 %and)
  %cmp = icmp eq i32 %and, 131073
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.149) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %status39 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %11 = ptrtoint ptr %status39 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool40.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %do.end4
  br i1 %tobool40.not, label %if.end22, label %do.body8

do.body8:                                         ; preds = %if.then5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %13 = load i32, ptr @lbtf_debug, align 4
  %and9 = and i32 %13, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %cmp10.not = icmp eq i32 %and9, 0
  br i1 %cmp10.not, label %do.body8.do.end21_crit_edge, label %do.end14

do.body8.do.end21_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end21

do.end14:                                         ; preds = %do.body8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %init_name.i = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 15, i32 3
  %16 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end14.dev_name.exit_crit_edge

do.end14.dev_name.exit_crit_edge:                 ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 15
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end14.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %19, %if.end.i ], [ %17, %do.end14.dev_name.exit_crit_edge ]
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, ptr noundef %retval.0.i, i32 noundef %12) #10
  br label %do.end21

do.end21:                                         ; preds = %dev_name.exit, %do.body8.do.end21_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #7
  br label %setup_for_next

if.end22:                                         ; preds = %if.then5
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %22 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %9, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %25 = load i32, ptr @lbtf_debug, align 4
  %and25 = and i32 %25, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %cmp26.not = icmp eq i32 %and25, 0
  br i1 %cmp26.not, label %if.end22.if.end55_crit_edge, label %do.end30

if.end22.if.end55_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

do.end30:                                         ; preds = %if.end22
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %init_name.i179 = getelementptr inbounds %struct.usb_device, ptr %27, i32 0, i32 15, i32 3
  %28 = ptrtoint ptr %init_name.i179 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %init_name.i179, align 8
  %tobool.not.i180 = icmp eq ptr %29, null
  br i1 %tobool.not.i180, label %if.end.i181, label %do.end30.dev_name.exit183_crit_edge

do.end30.dev_name.exit183_crit_edge:              ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit183

if.end.i181:                                      ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #9
  %dev33 = getelementptr inbounds %struct.usb_device, ptr %27, i32 0, i32 15
  %30 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev33, align 4
  br label %dev_name.exit183

dev_name.exit183:                                 ; preds = %if.end.i181, %do.end30.dev_name.exit183_crit_edge
  %retval.0.i182 = phi ptr [ %31, %if.end.i181 ], [ %29, %do.end30.dev_name.exit183_crit_edge ]
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154, ptr noundef %retval.0.i182, i32 noundef %7, i32 noundef %24) #10
  br label %if.end55

if.else:                                          ; preds = %do.end4
  br i1 %tobool40.not, label %if.else.do.body108_crit_edge, label %if.then41

if.else.do.body108_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body108

if.then41:                                        ; preds = %if.else
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %32 = load i32, ptr @lbtf_debug, align 4
  %and43 = and i32 %32, 131074
  call void @__sanitizer_cov_trace_const_cmp4(i32 131074, i32 %and43)
  %cmp44 = icmp eq i32 %and43, 131074
  br i1 %cmp44, label %if.then41.cleanup.sink.split_crit_edge, label %if.then41.cleanup_crit_edge

if.then41.cleanup_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then41.cleanup.sink.split_crit_edge:           ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end55:                                         ; preds = %dev_name.exit183, %if.end22.if.end55_crit_edge
  %33 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.183)
  switch i32 %24, label %if.end55.do.body108_crit_edge [
    i32 -1095909154, label %sw.bb
    i32 -267519282, label %sw.bb56
    i32 -1091568946, label %sw.bb57
  ]

if.end55.do.body108_crit_edge:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body108

sw.bb:                                            ; preds = %if.end55
  %34 = add i32 %7, -1583
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1553, i32 %34)
  %35 = icmp ult i32 %34, -1553
  br i1 %35, label %do.body.i, label %if.end7.i

do.body.i:                                        ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %36 = load i32, ptr @lbtf_debug, align 4
  %and.i = and i32 %36, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp2.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp2.not.i, label %do.body.i.do.end6.i_crit_edge, label %do.end.i

do.body.i.do.end6.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6.i

do.end.i:                                         ; preds = %do.body.i
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %init_name.i.i = getelementptr inbounds %struct.usb_device, ptr %38, i32 0, i32 15, i32 3
  %39 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %40, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.dev_name.exit.i_crit_edge

do.end.i.dev_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %38, i32 0, i32 15
  %41 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.end.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %42, %if.end.i.i ], [ %40, %do.end.i.dev_name.exit.i_crit_edge ]
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, ptr noundef %retval.0.i.i) #10
  br label %do.end6.i

do.end6.i:                                        ; preds = %dev_name.exit.i, %do.body.i.do.end6.i_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #7
  br label %setup_for_next

if.end7.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %call8.i = tail call ptr @skb_put(ptr noundef %3, i32 noundef %7) #7
  %call9.i = tail call ptr @skb_pull(ptr noundef %3, i32 noundef 4) #7
  %call10.i = tail call i32 @lbtf_rx(ptr noundef %5, ptr noundef %3) #7
  br label %setup_for_next

sw.bb56:                                          ; preds = %if.end55
  %43 = add i32 %7, -2049
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2045, i32 %43)
  %44 = icmp ult i32 %43, -2045
  br i1 %44, label %do.body.i186, label %do.body10.i

do.body.i186:                                     ; preds = %sw.bb56
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %45 = load i32, ptr @lbtf_debug, align 4
  %and.i184 = and i32 %45, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i184)
  %cmp2.not.i185 = icmp eq i32 %and.i184, 0
  br i1 %cmp2.not.i185, label %do.body.i186.do.end7.i_crit_edge, label %do.end.i189

do.body.i186.do.end7.i_crit_edge:                 ; preds = %do.body.i186
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i

do.end.i189:                                      ; preds = %do.body.i186
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  %init_name.i.i187 = getelementptr inbounds %struct.usb_device, ptr %47, i32 0, i32 15, i32 3
  %48 = ptrtoint ptr %init_name.i.i187 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %init_name.i.i187, align 8
  %tobool.not.i.i188 = icmp eq ptr %49, null
  br i1 %tobool.not.i.i188, label %if.end.i.i191, label %do.end.i189.dev_name.exit.i194_crit_edge

do.end.i189.dev_name.exit.i194_crit_edge:         ; preds = %do.end.i189
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i194

if.end.i.i191:                                    ; preds = %do.end.i189
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i190 = getelementptr inbounds %struct.usb_device, ptr %47, i32 0, i32 15
  %50 = ptrtoint ptr %dev.i190 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i190, align 4
  br label %dev_name.exit.i194

dev_name.exit.i194:                               ; preds = %if.end.i.i191, %do.end.i189.dev_name.exit.i194_crit_edge
  %retval.0.i.i192 = phi ptr [ %51, %if.end.i.i191 ], [ %49, %do.end.i189.dev_name.exit.i194_crit_edge ]
  %call5.i193 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171, ptr noundef %retval.0.i.i192, i32 noundef %7) #10
  br label %do.end7.i

do.end7.i:                                        ; preds = %dev_name.exit.i194, %do.body.i186.do.end7.i_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #7
  br label %setup_for_next

do.body10.i:                                      ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #9
  %driver_lock.i = getelementptr inbounds %struct.lbtf_private, ptr %5, i32 0, i32 15
  %call14.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %driver_lock.i) #7
  %cmd_resp_buff.i = getelementptr inbounds %struct.lbtf_private, ptr %5, i32 0, i32 3
  %add.ptr.i = getelementptr i8, ptr %21, i32 4
  %sub.i = add nsw i32 %7, -4
  %52 = call ptr @memcpy(ptr %cmd_resp_buff.i, ptr %add.ptr.i, i32 %sub.i)
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #7
  tail call void @lbtf_cmd_response_rx(ptr noundef %5) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %driver_lock.i, i32 noundef %call14.i) #7
  br label %setup_for_next

sw.bb57:                                          ; preds = %if.end55
  %arrayidx58 = getelementptr i32, ptr %9, i32 1
  %53 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx58, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %56 = load i32, ptr @lbtf_debug, align 4
  %and60 = and i32 %56, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %cmp61.not = icmp eq i32 %and60, 0
  br i1 %cmp61.not, label %sw.bb57.do.end73_crit_edge, label %do.end65

sw.bb57.do.end73_crit_edge:                       ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end73

do.end65:                                         ; preds = %sw.bb57
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  %init_name.i195 = getelementptr inbounds %struct.usb_device, ptr %58, i32 0, i32 15, i32 3
  %59 = ptrtoint ptr %init_name.i195 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %init_name.i195, align 8
  %tobool.not.i196 = icmp eq ptr %60, null
  br i1 %tobool.not.i196, label %if.end.i197, label %do.end65.dev_name.exit199_crit_edge

do.end65.dev_name.exit199_crit_edge:              ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit199

if.end.i197:                                      ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #9
  %dev68 = getelementptr inbounds %struct.usb_device, ptr %58, i32 0, i32 15
  %61 = ptrtoint ptr %dev68 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev68, align 4
  br label %dev_name.exit199

dev_name.exit199:                                 ; preds = %if.end.i197, %do.end65.dev_name.exit199_crit_edge
  %retval.0.i198 = phi ptr [ %62, %if.end.i197 ], [ %60, %do.end65.dev_name.exit199_crit_edge ]
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef %retval.0.i198, i32 noundef %55) #10
  br label %do.end73

do.end73:                                         ; preds = %dev_name.exit199, %sw.bb57.do.end73_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %55)
  %tobool75.not = icmp ult i32 %55, 65536
  br i1 %tobool75.not, label %if.else85, label %if.then76

if.then76:                                        ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #9
  %shr = lshr i32 %55, 16
  %conv80 = trunc i32 %shr to i8
  %63 = lshr i32 %55, 24
  %conv84 = trunc i32 %63 to i8
  tail call void @lbtf_send_tx_feedback(ptr noundef %5, i8 noundef zeroext %conv80, i8 noundef zeroext %conv84) #7
  br label %if.end107

if.else85:                                        ; preds = %do.end73
  call void @__sanitizer_cov_trace_const_cmp4(i32 922746880, i32 %54)
  %cmp86 = icmp eq i32 %54, 922746880
  br i1 %cmp86, label %if.then88, label %do.body90

if.then88:                                        ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lbtf_bcn_sent(ptr noundef %5) #7
  br label %if.end107

do.body90:                                        ; preds = %if.else85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %64 = load i32, ptr @lbtf_debug, align 4
  %and91 = and i32 %64, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %cmp92.not = icmp eq i32 %and91, 0
  br i1 %cmp92.not, label %do.body90.if.end107_crit_edge, label %do.end97

do.body90.if.end107_crit_edge:                    ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end107

do.end97:                                         ; preds = %do.body90
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  %init_name.i200 = getelementptr inbounds %struct.usb_device, ptr %66, i32 0, i32 15, i32 3
  %67 = ptrtoint ptr %init_name.i200 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %init_name.i200, align 8
  %tobool.not.i201 = icmp eq ptr %68, null
  br i1 %tobool.not.i201, label %if.end.i202, label %do.end97.dev_name.exit204_crit_edge

do.end97.dev_name.exit204_crit_edge:              ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit204

if.end.i202:                                      ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #9
  %dev100 = getelementptr inbounds %struct.usb_device, ptr %66, i32 0, i32 15
  %69 = ptrtoint ptr %dev100 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev100, align 4
  br label %dev_name.exit204

dev_name.exit204:                                 ; preds = %if.end.i202, %do.end97.dev_name.exit204_crit_edge
  %retval.0.i203 = phi ptr [ %70, %if.end.i202 ], [ %68, %do.end97.dev_name.exit204_crit_edge ]
  %call102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162, ptr noundef %retval.0.i203, i32 noundef %55) #10
  br label %if.end107

if.end107:                                        ; preds = %dev_name.exit204, %do.body90.if.end107_crit_edge, %if.then88, %if.then76
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #7
  br label %setup_for_next

do.body108:                                       ; preds = %if.end55.do.body108_crit_edge, %if.else.do.body108_crit_edge
  %recvtype.0212 = phi i32 [ %24, %if.end55.do.body108_crit_edge ], [ 0, %if.else.do.body108_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %71 = load i32, ptr @lbtf_debug, align 4
  %and109 = and i32 %71, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %cmp110.not = icmp eq i32 %and109, 0
  br i1 %cmp110.not, label %do.body108.do.end123_crit_edge, label %do.end115

do.body108.do.end123_crit_edge:                   ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end123

do.end115:                                        ; preds = %do.body108
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %1, align 4
  %init_name.i205 = getelementptr inbounds %struct.usb_device, ptr %73, i32 0, i32 15, i32 3
  %74 = ptrtoint ptr %init_name.i205 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %init_name.i205, align 8
  %tobool.not.i206 = icmp eq ptr %75, null
  br i1 %tobool.not.i206, label %if.end.i207, label %do.end115.dev_name.exit209_crit_edge

do.end115.dev_name.exit209_crit_edge:             ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit209

if.end.i207:                                      ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #9
  %dev118 = getelementptr inbounds %struct.usb_device, ptr %73, i32 0, i32 15
  %76 = ptrtoint ptr %dev118 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev118, align 4
  br label %dev_name.exit209

dev_name.exit209:                                 ; preds = %if.end.i207, %do.end115.dev_name.exit209_crit_edge
  %retval.0.i208 = phi ptr [ %77, %if.end.i207 ], [ %75, %do.end115.dev_name.exit209_crit_edge ]
  %call120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165, ptr noundef %retval.0.i208, i32 noundef %recvtype.0212) #10
  br label %do.end123

do.end123:                                        ; preds = %dev_name.exit209, %do.body108.do.end123_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #7
  br label %setup_for_next

setup_for_next:                                   ; preds = %do.end123, %if.end107, %do.body10.i, %do.end7.i, %if.end7.i, %do.end6.i, %do.end21
  %call.i = tail call fastcc i32 @__if_usb_submit_rx_urb(ptr noundef %1, ptr noundef nonnull @if_usb_receive) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbtf_debug to i32))
  %78 = load i32, ptr @lbtf_debug, align 4
  %and126 = and i32 %78, 131074
  call void @__sanitizer_cov_trace_const_cmp4(i32 131074, i32 %and126)
  %cmp127 = icmp eq i32 %and126, 131074
  br i1 %cmp127, label %setup_for_next.cleanup.sink.split_crit_edge, label %setup_for_next.cleanup_crit_edge

setup_for_next.cleanup_crit_edge:                 ; preds = %setup_for_next
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

setup_for_next.cleanup.sink.split_crit_edge:      ; preds = %setup_for_next
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %setup_for_next.cleanup.sink.split_crit_edge, %if.then41.cleanup.sink.split_crit_edge
  %call134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.149) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %setup_for_next.cleanup_crit_edge, %if.then41.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lbtf_send_tx_feedback(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lbtf_bcn_sent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbtf_rx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lbtf_cmd_response_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_reset_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbtf_remove_card(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 142)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 142)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !18, !20, !21, !23, !25, !27, !28, !29, !30, !31, !33, !34, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !86, !88, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !112, !113, !114, !115, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !167, !168, !169, !171, !172, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !199, !200, !201, !203, !204, !206, !207, !208, !210, !211, !212, !214, !215, !216, !218, !219, !220, !222, !223, !225, !226, !228, !229, !230, !232, !233, !235, !236, !237, !239, !240, !242, !243, !244, !246, !247, !249, !250, !251, !253, !254, !255, !257, !258, !260, !261, !262, !264, !265, !266, !268, !269, !270, !272, !273, !275, !276, !277, !279, !280, !281, !283, !284, !285, !287, !288, !290, !291, !292, !293, !295, !296, !297, !298, !300, !301, !302, !304, !305, !307, !308, !309, !311, !312, !314, !315, !316, !318, !319}
!llvm.module.flags = !{!321, !322, !323, !324, !325, !326, !327, !328}
!llvm.ident = !{!329}

!0 = !{ptr @__param_fw_name, !1, !"__param_fw_name", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 26, i32 1}
!2 = !{ptr @__UNIQUE_ID_fw_nametype354, !1, !"__UNIQUE_ID_fw_nametype354", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_firmware355, !4, !"__UNIQUE_ID_firmware355", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 28, i32 1}
!5 = !{ptr @__initcall__kmod_libertas_tf_usb__356_918_if_usb_driver_init6, !6, !"__initcall__kmod_libertas_tf_usb__356_918_if_usb_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 918, i32 1}
!7 = !{ptr @__exitcall_if_usb_driver_exit, !6, !"__exitcall_if_usb_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description357, !9, !"__UNIQUE_ID_description357", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 920, i32 1}
!10 = !{ptr @__UNIQUE_ID_author358, !11, !"__UNIQUE_ID_author358", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 921, i32 1}
!12 = !{ptr @__UNIQUE_ID_file359, !13, !"__UNIQUE_ID_file359", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 922, i32 1}
!14 = !{ptr @__UNIQUE_ID_license360, !13, !"__UNIQUE_ID_license360", i1 false, i1 false}
!15 = !{ptr @__param_str_fw_name, !1, !"__param_str_fw_name", i1 false, i1 false}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 25, i32 29}
!18 = !{ptr @lbtf_fw_name, !19, !"lbtf_fw_name", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 25, i32 14}
!20 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 909, i32 10}
!23 = !{ptr @if_usb_driver, !24, !"if_usb_driver", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 908, i32 26}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 154, i32 2}
!27 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @if_usb_probe._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @if_usb_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @if_usb_probe.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 161, i32 2}
!33 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @if_usb_probe.__key.7, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 162, i32 2}
!36 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 167, i32 2}
!39 = !{ptr @if_usb_probe._entry.9, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @if_usb_probe._entry_ptr.11, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 181, i32 4}
!43 = !{ptr @if_usb_probe._entry.12, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @if_usb_probe._entry_ptr.14, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 183, i32 4}
!47 = !{ptr @if_usb_probe._entry.15, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @if_usb_probe._entry_ptr.17, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 190, i32 4}
!51 = !{ptr @if_usb_probe._entry.18, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @if_usb_probe._entry_ptr.20, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 192, i32 4}
!55 = !{ptr @if_usb_probe._entry.21, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @if_usb_probe._entry_ptr.23, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 197, i32 3}
!59 = !{ptr @if_usb_probe._entry.24, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @if_usb_probe._entry_ptr.26, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 217, i32 3}
!63 = !{ptr @if_usb_probe._entry.27, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @if_usb_probe._entry_ptr.29, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 235, i32 1}
!67 = !{ptr @if_usb_probe._entry.30, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @if_usb_probe._entry_ptr.32, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 118, i32 2}
!71 = !{ptr @if_usb_fw_timeo._entry, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @if_usb_fw_timeo._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 122, i32 3}
!75 = !{ptr @if_usb_fw_timeo._entry.34, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @if_usb_fw_timeo._entry_ptr.36, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 124, i32 3}
!79 = !{ptr @if_usb_fw_timeo._entry.37, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @if_usb_fw_timeo._entry_ptr.39, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @if_usb_fw_timeo._entry.40, !82, !"_entry", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 127, i32 2}
!83 = !{ptr @if_usb_fw_timeo._entry_ptr.41, !82, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @if_usb_ops, !85, !"if_usb_ops", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 130, i32 30}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 720, i32 2}
!88 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @if_usb_host_to_card._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @if_usb_host_to_card._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 721, i32 2}
!93 = !{ptr @if_usb_host_to_card._entry.44, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @if_usb_host_to_card._entry_ptr.46, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 378, i32 2}
!97 = !{ptr @usb_tx_block._entry, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @usb_tx_block._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 381, i32 3}
!101 = !{ptr @usb_tx_block._entry.48, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @usb_tx_block._entry_ptr.50, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 398, i32 3}
!105 = !{ptr @usb_tx_block._entry.51, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @usb_tx_block._entry_ptr.53, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @usb_tx_block._entry.54, !108, !"_entry", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 408, i32 2}
!109 = !{ptr @usb_tx_block._entry_ptr.55, !108, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.56, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 59, i32 3}
!112 = !{ptr @.str.57, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @if_usb_write_bulk_callback._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @if_usb_write_bulk_callback._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @if_usb_prog_firmware.reset_count, !116, !"reset_count", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 813, i32 13}
!117 = !{ptr @.str.58, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 816, i32 2}
!119 = !{ptr @if_usb_prog_firmware._entry, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @if_usb_prog_firmware._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.60, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 823, i32 3}
!123 = !{ptr @if_usb_prog_firmware._entry.59, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @if_usb_prog_firmware._entry_ptr.61, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.63, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 824, i32 3}
!127 = !{ptr @if_usb_prog_firmware._entry.62, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @if_usb_prog_firmware._entry_ptr.64, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.66, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 835, i32 3}
!131 = !{ptr @if_usb_prog_firmware._entry.65, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @if_usb_prog_firmware._entry_ptr.67, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.69, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 882, i32 3}
!135 = !{ptr @if_usb_prog_firmware._entry.68, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @if_usb_prog_firmware._entry_ptr.70, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.72, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 888, i32 3}
!139 = !{ptr @if_usb_prog_firmware._entry.71, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @if_usb_prog_firmware._entry_ptr.73, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.75, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 900, i32 2}
!143 = !{ptr @if_usb_prog_firmware._entry.74, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @if_usb_prog_firmware._entry_ptr.76, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.77, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 801, i32 3}
!147 = !{ptr @.str.78, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @check_fwfile_format._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @check_fwfile_format._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.80, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 803, i32 3}
!152 = !{ptr @check_fwfile_format._entry.79, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @check_fwfile_format._entry_ptr.81, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.82, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 418, i32 2}
!156 = !{ptr @__if_usb_submit_rx_urb._entry, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @__if_usb_submit_rx_urb._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.84, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 422, i32 3}
!160 = !{ptr @__if_usb_submit_rx_urb._entry.83, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @__if_usb_submit_rx_urb._entry_ptr.85, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @__if_usb_submit_rx_urb._entry.86, !163, !"_entry", i1 false, i1 false}
!163 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 423, i32 3}
!164 = !{ptr @__if_usb_submit_rx_urb._entry_ptr.87, !163, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.89, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 439, i32 3}
!167 = !{ptr @__if_usb_submit_rx_urb._entry.88, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @__if_usb_submit_rx_urb._entry_ptr.90, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @__if_usb_submit_rx_urb._entry.91, !170, !"_entry", i1 false, i1 false}
!170 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 443, i32 3}
!171 = !{ptr @__if_usb_submit_rx_urb._entry_ptr.92, !170, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @__if_usb_submit_rx_urb._entry.93, !173, !"_entry", i1 false, i1 false}
!173 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 447, i32 3}
!174 = !{ptr @__if_usb_submit_rx_urb._entry_ptr.94, !173, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.95, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 469, i32 2}
!177 = !{ptr @if_usb_receive_fwload._entry, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @if_usb_receive_fwload._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.97, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 471, i32 3}
!181 = !{ptr @if_usb_receive_fwload._entry.96, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @if_usb_receive_fwload._entry_ptr.98, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @if_usb_receive_fwload._entry.99, !184, !"_entry", i1 false, i1 false}
!184 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 474, i32 3}
!185 = !{ptr @if_usb_receive_fwload._entry_ptr.100, !184, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.102, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 484, i32 4}
!188 = !{ptr @if_usb_receive_fwload._entry.101, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @if_usb_receive_fwload._entry_ptr.103, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.105, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 487, i32 4}
!192 = !{ptr @if_usb_receive_fwload._entry.104, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @if_usb_receive_fwload._entry_ptr.106, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @if_usb_receive_fwload._entry.107, !195, !"_entry", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 492, i32 3}
!196 = !{ptr @if_usb_receive_fwload._entry_ptr.108, !195, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.110, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 503, i32 4}
!199 = !{ptr @if_usb_receive_fwload._entry.109, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @if_usb_receive_fwload._entry_ptr.111, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @if_usb_receive_fwload._entry.112, !202, !"_entry", i1 false, i1 false}
!202 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 505, i32 4}
!203 = !{ptr @if_usb_receive_fwload._entry_ptr.113, !202, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.115, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 513, i32 6}
!206 = !{ptr @if_usb_receive_fwload._entry.114, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @if_usb_receive_fwload._entry_ptr.116, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.118, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 516, i32 5}
!210 = !{ptr @if_usb_receive_fwload._entry.117, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @if_usb_receive_fwload._entry_ptr.119, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.121, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 520, i32 4}
!214 = !{ptr @if_usb_receive_fwload._entry.120, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @if_usb_receive_fwload._entry_ptr.122, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.124, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 523, i32 4}
!218 = !{ptr @if_usb_receive_fwload._entry.123, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @if_usb_receive_fwload._entry_ptr.125, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @if_usb_receive_fwload._entry.126, !221, !"_entry", i1 false, i1 false}
!221 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 527, i32 4}
!222 = !{ptr @if_usb_receive_fwload._entry_ptr.127, !221, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @if_usb_receive_fwload._entry.128, !224, !"_entry", i1 false, i1 false}
!224 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 533, i32 3}
!225 = !{ptr @if_usb_receive_fwload._entry_ptr.129, !224, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.131, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 540, i32 3}
!228 = !{ptr @if_usb_receive_fwload._entry.130, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @if_usb_receive_fwload._entry_ptr.132, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @if_usb_receive_fwload._entry.133, !231, !"_entry", i1 false, i1 false}
!231 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 543, i32 3}
!232 = !{ptr @if_usb_receive_fwload._entry_ptr.134, !231, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.136, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 555, i32 3}
!235 = !{ptr @if_usb_receive_fwload._entry.135, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @if_usb_receive_fwload._entry_ptr.137, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @if_usb_receive_fwload._entry.138, !238, !"_entry", i1 false, i1 false}
!238 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 577, i32 2}
!239 = !{ptr @if_usb_receive_fwload._entry_ptr.139, !238, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.140, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 278, i32 2}
!242 = !{ptr @if_usb_send_fw_pkt._entry, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @if_usb_send_fw_pkt._entry_ptr, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @if_usb_send_fw_pkt._entry.141, !245, !"_entry", i1 false, i1 false}
!245 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 331, i32 2}
!246 = !{ptr @if_usb_send_fw_pkt._entry_ptr.142, !245, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.143, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 101, i32 2}
!249 = !{ptr @if_usb_setup_firmware._entry, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @if_usb_setup_firmware._entry_ptr, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.145, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 109, i32 3}
!253 = !{ptr @if_usb_setup_firmware._entry.144, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @if_usb_setup_firmware._entry_ptr.146, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @if_usb_setup_firmware._entry.147, !256, !"_entry", i1 false, i1 false}
!256 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 111, i32 2}
!257 = !{ptr @if_usb_setup_firmware._entry_ptr.148, !256, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.149, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 636, i32 2}
!260 = !{ptr @if_usb_receive._entry, !259, !"_entry", i1 false, i1 false}
!261 = !{ptr @if_usb_receive._entry_ptr, !259, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.151, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 640, i32 4}
!264 = !{ptr @if_usb_receive._entry.150, !263, !"_entry", i1 false, i1 false}
!265 = !{ptr @if_usb_receive._entry_ptr.152, !263, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.154, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 648, i32 3}
!268 = !{ptr @if_usb_receive._entry.153, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @if_usb_receive._entry_ptr.155, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @if_usb_receive._entry.156, !271, !"_entry", i1 false, i1 false}
!271 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 653, i32 3}
!272 = !{ptr @if_usb_receive._entry_ptr.157, !271, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.159, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 670, i32 3}
!275 = !{ptr @if_usb_receive._entry.158, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @if_usb_receive._entry_ptr.160, !274, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.162, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 686, i32 4}
!279 = !{ptr @if_usb_receive._entry.161, !278, !"_entry", i1 false, i1 false}
!280 = !{ptr @if_usb_receive._entry_ptr.163, !278, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.165, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 693, i32 3}
!283 = !{ptr @if_usb_receive._entry.164, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @if_usb_receive._entry_ptr.166, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @if_usb_receive._entry.167, !286, !"_entry", i1 false, i1 false}
!286 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 701, i32 2}
!287 = !{ptr @if_usb_receive._entry_ptr.168, !286, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.169, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 588, i32 3}
!290 = !{ptr @.str.170, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @process_cmdtypedata._entry, !289, !"_entry", i1 false, i1 false}
!292 = !{ptr @process_cmdtypedata._entry_ptr, !289, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.171, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 607, i32 3}
!295 = !{ptr @.str.172, !294, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @process_cmdrequest._entry, !294, !"_entry", i1 false, i1 false}
!297 = !{ptr @process_cmdrequest._entry_ptr, !294, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.173, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 341, i32 2}
!300 = !{ptr @if_usb_reset_device._entry, !299, !"_entry", i1 false, i1 false}
!301 = !{ptr @if_usb_reset_device._entry_ptr, !299, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @if_usb_reset_device._entry.174, !303, !"_entry", i1 false, i1 false}
!303 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 357, i32 2}
!304 = !{ptr @if_usb_reset_device._entry_ptr.175, !303, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @.str.176, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 74, i32 2}
!307 = !{ptr @if_usb_free._entry, !306, !"_entry", i1 false, i1 false}
!308 = !{ptr @if_usb_free._entry_ptr, !306, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @if_usb_free._entry.177, !310, !"_entry", i1 false, i1 false}
!310 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 93, i32 2}
!311 = !{ptr @if_usb_free._entry_ptr.178, !310, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @.str.179, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 249, i32 2}
!314 = !{ptr @if_usb_disconnect._entry, !313, !"_entry", i1 false, i1 false}
!315 = !{ptr @if_usb_disconnect._entry_ptr, !313, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @if_usb_disconnect._entry.180, !317, !"_entry", i1 false, i1 false}
!317 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 263, i32 2}
!318 = !{ptr @if_usb_disconnect._entry_ptr.181, !317, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @if_usb_table, !320, !"if_usb_table", i1 false, i1 false}
!320 = !{!"../drivers/net/wireless/marvell/libertas_tf/if_usb.c", i32 30, i32 35}
!321 = !{i32 1, !"wchar_size", i32 2}
!322 = !{i32 1, !"min_enum_size", i32 4}
!323 = !{i32 8, !"branch-target-enforcement", i32 0}
!324 = !{i32 8, !"sign-return-address", i32 0}
!325 = !{i32 8, !"sign-return-address-all", i32 0}
!326 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!327 = !{i32 7, !"uwtable", i32 1}
!328 = !{i32 7, !"frame-pointer", i32 2}
!329 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
