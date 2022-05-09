; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/marvell/libertas/if_usb.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/libertas/if_usb.c"
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lbs_fw_table = type { i32, ptr, ptr }
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
%struct.if_usb_card = type { ptr, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i32, ptr, i32, ptr, %struct.timer_list, %struct.wait_queue_head, i32, i32, i32, i8, i8, i8, i8, i16 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.lbs_private = type { ptr, i32, %struct.work_struct, i32, [32 x [6 x i8]], ptr, i8, ptr, [6 x i8], [3 x i8], i8, ptr, %struct.lbs_mesh_stats, i16, i8, ptr, ptr, [6 x ptr], ptr, [6 x ptr], ptr, [6 x ptr], i32, i32, i32, i16, i32, i8, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.timer_list, i32, i32, %struct.wait_queue_head, ptr, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, [6 x i8], i8, i8, i16, ptr, ptr, %struct.list_head, %struct.list_head, %struct.timer_list, i32, i8, [2 x [2312 x i8]], [2 x i32], %struct.kfifo, ptr, %struct.wait_queue_head, ptr, i8, i8, [4 x [13 x i8]], [4 x i8], i32, i8, i8, i8, i32, [2312 x i8], i8, ptr, %struct.timer_list, %struct.mutex, %struct.spinlock, i16, i8, i8, i8, i16, i16, i16, %struct.delayed_work, i32, %struct.wait_queue_head, i8, i32, %struct.wait_queue_head, ptr, ptr, ptr, ptr, ptr }
%struct.lbs_mesh_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.kfifo = type { %union.anon.128, [0 x i8] }
%union.anon.128 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.cmd_ds_set_boot2_ver = type { %struct.cmd_header, i16, i16 }
%struct.cmd_header = type { i16, i16, i16, i16 }
%struct.cmd_ds_802_11_fw_wake_method = type { %struct.cmd_header, i16, i16 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.firmware = type { i32, ptr, ptr }
%struct.fwheader = type { i32, i32, i32, i32 }
%struct.bootcmd = type { i32, i8, [11 x i8] }
%struct.fwdata = type { %struct.fwheader, i32, [0 x i8] }
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

@__UNIQUE_ID_firmware348 = internal constant [41 x i8] c"usb8xxx.firmware=libertas/usb8388_v9.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware349 = internal constant [41 x i8] c"usb8xxx.firmware=libertas/usb8388_v5.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware350 = internal constant [38 x i8] c"usb8xxx.firmware=libertas/usb8388.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware351 = internal constant [38 x i8] c"usb8xxx.firmware=libertas/usb8682.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware352 = internal constant [29 x i8] c"usb8xxx.firmware=usb8388.bin\00", section ".modinfo", align 1
@__initcall__kmod_usb8xxx__353_994_if_usb_driver_init6 = internal global ptr @if_usb_driver_init, section ".initcall6.init", align 4
@if_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @if_usb_probe, ptr @if_usb_disconnect, ptr null, ptr @if_usb_suspend, ptr @if_usb_resume, ptr @if_usb_resume, ptr null, ptr null, ptr @if_usb_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 32 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_if_usb_driver_exit = internal global ptr @if_usb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description354 = internal constant [41 x i8] c"usb8xxx.description=8388 USB WLAN Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author355 = internal constant [60 x i8] c"usb8xxx.author=Marvell International Ltd. and Red Hat, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_file356 = internal constant [59 x i8] c"usb8xxx.file=drivers/net/wireless/marvell/libertas/usb8xxx\00", section ".modinfo", align 1
@__UNIQUE_ID_license357 = internal constant [20 x i8] c"usb8xxx.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb8xxx\00", [24 x i8] zeroinitializer }, align 32
@if_usb_table = internal constant { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 4742, i16 8193, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1443, i16 -31864, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@if_usb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(&cardp->fw_timeout)\00", [43 x i8] zeroinitializer }, align 32
@if_usb_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&cardp->fw_wq\00", [18 x i8] zeroinitializer }, align 32
@lbs_debug = external dso_local local_unnamed_addr global i32, align 4
@if_usb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"\017usb8xxx usbd: %s:bcdUSB = 0x%X bDeviceClass = 0x%X bDeviceSubClass = 0x%X, bDeviceProtocol = 0x%X\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"if_usb_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/wireless/marvell/libertas/if_usb.c\00", [49 x i8] zeroinitializer }, align 32
@if_usb_probe._entry_ptr = internal global ptr @if_usb_probe._entry, section ".printk_index", align 4
@if_usb_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.6, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017usb8xxx usbd: %s:in_endpoint = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@if_usb_probe._entry_ptr.9 = internal global ptr @if_usb_probe._entry.7, section ".printk_index", align 4
@if_usb_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017usb8xxx usbd: %s:Bulk in size is %d\0A\00", [57 x i8] zeroinitializer }, align 32
@if_usb_probe._entry_ptr.12 = internal global ptr @if_usb_probe._entry.10, section ".printk_index", align 4
@if_usb_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.6, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017usb8xxx usbd: %s:out_endpoint = %d\0A\00", [58 x i8] zeroinitializer }, align 32
@if_usb_probe._entry_ptr.15 = internal global ptr @if_usb_probe._entry.13, section ".printk_index", align 4
@if_usb_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.5, ptr @.str.6, i32 238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017usb8xxx usbd: %s:Bulk out size is %d\0A\00", [56 x i8] zeroinitializer }, align 32
@if_usb_probe._entry_ptr.18 = internal global ptr @if_usb_probe._entry.16, section ".printk_index", align 4
@if_usb_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.5, ptr @.str.6, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017usb8xxx usbd: %s:Endpoints not found\0A\00", [56 x i8] zeroinitializer }, align 32
@if_usb_probe._entry_ptr.21 = internal global ptr @if_usb_probe._entry.19, section ".printk_index", align 4
@if_usb_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.5, ptr @.str.6, i32 246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017usb8xxx usbd: %s:Rx URB allocation failed\0A\00", [51 x i8] zeroinitializer }, align 32
@if_usb_probe._entry_ptr.24 = internal global ptr @if_usb_probe._entry.22, section ".printk_index", align 4
@if_usb_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.5, ptr @.str.6, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017usb8xxx usbd: %s:Tx URB allocation failed\0A\00", [51 x i8] zeroinitializer }, align 32
@if_usb_probe._entry_ptr.27 = internal global ptr @if_usb_probe._entry.25, section ".printk_index", align 4
@if_usb_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.5, ptr @.str.6, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017usb8xxx usbd: %s:Could not allocate buffer\0A\00", [50 x i8] zeroinitializer }, align 32
@if_usb_probe._entry_ptr.30 = internal global ptr @if_usb_probe._entry.28, section ".printk_index", align 4
@fw_table = internal constant { [7 x %struct.lbs_fw_table], [44 x i8] } { [7 x %struct.lbs_fw_table] [%struct.lbs_fw_table { i32 1, ptr @.str.48, ptr null }, %struct.lbs_fw_table { i32 1, ptr @.str.49, ptr null }, %struct.lbs_fw_table { i32 1, ptr @.str.50, ptr null }, %struct.lbs_fw_table { i32 1, ptr @.str.51, ptr null }, %struct.lbs_fw_table { i32 1, ptr @.str.52, ptr null }, %struct.lbs_fw_table { i32 2, ptr @.str.53, ptr null }, %struct.lbs_fw_table zeroinitializer], [44 x i8] zeroinitializer }, align 32
@if_usb_fw_timeo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.6, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\017usb8xxx usb: Download complete, no event. Assuming success\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"if_usb_fw_timeo\00", [16 x i8] zeroinitializer }, align 32
@if_usb_fw_timeo._entry_ptr = internal global ptr @if_usb_fw_timeo._entry, section ".printk_index", align 4
@if_usb_fw_timeo._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.6, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013usb8xxx: Download timed out\0A\00", [33 x i8] zeroinitializer }, align 32
@if_usb_fw_timeo._entry_ptr.35 = internal global ptr @if_usb_fw_timeo._entry.33, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@if_usb_host_to_card._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.6, i32 732, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017usb8xxx usbd: %s:*** type = %u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"if_usb_host_to_card\00", [44 x i8] zeroinitializer }, align 32
@if_usb_host_to_card._entry_ptr = internal global ptr @if_usb_host_to_card._entry, section ".printk_index", align 4
@if_usb_host_to_card._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.6, i32 733, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017usb8xxx usbd: %s:size after = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@if_usb_host_to_card._entry_ptr.40 = internal global ptr @if_usb_host_to_card._entry.38, section ".printk_index", align 4
@usb_tx_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.6, i32 423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017usb8xxx usbd: %s:Device removed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usb_tx_block\00", [19 x i8] zeroinitializer }, align 32
@usb_tx_block._entry_ptr = internal global ptr @usb_tx_block._entry, section ".printk_index", align 4
@usb_tx_block._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.6, i32 436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017usb8xxx usbd: %s:usb_submit_urb failed: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@usb_tx_block._entry_ptr.45 = internal global ptr @usb_tx_block._entry.43, section ".printk_index", align 4
@if_usb_write_bulk_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.6, i32 105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016usb8xxx: URB in failure status: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"if_usb_write_bulk_callback\00", [37 x i8] zeroinitializer }, align 32
@if_usb_write_bulk_callback._entry_ptr = internal global ptr @if_usb_write_bulk_callback._entry, section ".printk_index", align 4
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"libertas/usb8388_olpc.bin\00", [38 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"libertas/usb8388_v9.bin\00", [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"libertas/usb8388_v5.bin\00", [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"libertas/usb8388.bin\00", [43 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usb8388.bin\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"libertas/usb8682.bin\00", [43 x i8] zeroinitializer }, align 32
@if_usb_prog_firmware.reset_count = internal global { i32, [28 x i8] } { i32 10, [28 x i8] zeroinitializer }, align 32
@if_usb_prog_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.6, i32 827, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013usb8xxx: failed to find firmware (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"if_usb_prog_firmware\00", [43 x i8] zeroinitializer }, align 32
@if_usb_prog_firmware._entry_ptr = internal global ptr @if_usb_prog_firmware._entry, section ".printk_index", align 4
@if_usb_prog_firmware._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.6, i32 849, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017usb8xxx usbd: %s:URB submission is failed\0A\00", [51 x i8] zeroinitializer }, align 32
@if_usb_prog_firmware._entry_ptr.58 = internal global ptr @if_usb_prog_firmware._entry.56, section ".printk_index", align 4
@if_usb_prog_firmware._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.55, ptr @.str.6, i32 903, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016usb8xxx: failed to load fw, resetting device!\0A\00", [47 x i8] zeroinitializer }, align 32
@if_usb_prog_firmware._entry_ptr.61 = internal global ptr @if_usb_prog_firmware._entry.59, section ".printk_index", align 4
@if_usb_prog_firmware._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.55, ptr @.str.6, i32 909, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016usb8xxx: FW download failure, time = %d ms\0A\00", [50 x i8] zeroinitializer }, align 32
@if_usb_prog_firmware._entry_ptr.64 = internal global ptr @if_usb_prog_firmware._entry.62, section ".printk_index", align 4
@check_fwfile_format._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.6, i32 811, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013usb8xxx: firmware file format check FAIL\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"check_fwfile_format\00", [44 x i8] zeroinitializer }, align 32
@check_fwfile_format._entry_ptr = internal global ptr @check_fwfile_format._entry, section ".printk_index", align 4
@check_fwfile_format._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.6, i32 813, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017usb8xxx fw: firmware file format check PASS\0A\00", [49 x i8] zeroinitializer }, align 32
@check_fwfile_format._entry_ptr.69 = internal global ptr @check_fwfile_format._entry.67, section ".printk_index", align 4
@__if_usb_submit_rx_urb._entry = internal constant %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.6, i32 453, ptr null, ptr null }, align 1
@.str.70 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013usb8xxx: No free skb\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__if_usb_submit_rx_urb\00", [41 x i8] zeroinitializer }, align 32
@__if_usb_submit_rx_urb._entry_ptr = internal global ptr @__if_usb_submit_rx_urb._entry, section ".printk_index", align 4
@__if_usb_submit_rx_urb._entry.72 = internal constant %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.6, i32 468, ptr null, ptr null }, align 1
@.str.73 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017usb8xxx usbd: %s:Submit Rx URB failed: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@__if_usb_submit_rx_urb._entry_ptr.74 = internal global ptr @__if_usb_submit_rx_urb._entry.72, section ".printk_index", align 4
@if_usb_receive_fwload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.6, i32 500, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017usb8xxx usbd: %s:URB status is failed during fw load\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"if_usb_receive_fwload\00", [42 x i8] zeroinitializer }, align 32
@if_usb_receive_fwload._entry_ptr = internal global ptr @if_usb_receive_fwload._entry, section ".printk_index", align 4
@if_usb_receive_fwload._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.76, ptr @.str.6, i32 510, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016usb8xxx: Firmware ready event received\0A\00", [54 x i8] zeroinitializer }, align 32
@if_usb_receive_fwload._entry_ptr.79 = internal global ptr @if_usb_receive_fwload._entry.77, section ".printk_index", align 4
@if_usb_receive_fwload._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.76, ptr @.str.6, i32 514, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017usb8xxx usb: Waiting for confirmation; got %x %x\0A\00", [44 x i8] zeroinitializer }, align 32
@if_usb_receive_fwload._entry_ptr.82 = internal global ptr @if_usb_receive_fwload._entry.80, section ".printk_index", align 4
@if_usb_receive_fwload._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.76, ptr @.str.6, i32 529, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017usb8xxx usbd: %s:Received valid boot command response\0A\00", [39 x i8] zeroinitializer }, align 32
@if_usb_receive_fwload._entry_ptr.85 = internal global ptr @if_usb_receive_fwload._entry.83, section ".printk_index", align 4
@if_usb_receive_fwload._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.76, ptr @.str.6, i32 537, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016usb8xxx: Firmware already seems alive; resetting\0A\00", [44 x i8] zeroinitializer }, align 32
@if_usb_receive_fwload._entry_ptr.88 = internal global ptr @if_usb_receive_fwload._entry.86, section ".printk_index", align 4
@if_usb_receive_fwload._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.76, ptr @.str.6, i32 541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016usb8xxx: boot cmd response wrong magic number (0x%x)\0A\00", [40 x i8] zeroinitializer }, align 32
@if_usb_receive_fwload._entry_ptr.91 = internal global ptr @if_usb_receive_fwload._entry.89, section ".printk_index", align 4
@if_usb_receive_fwload._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.76, ptr @.str.6, i32 547, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016usb8xxx: boot cmd response cmd_tag error (%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@if_usb_receive_fwload._entry_ptr.94 = internal global ptr @if_usb_receive_fwload._entry.92, section ".printk_index", align 4
@if_usb_receive_fwload._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.76, ptr @.str.6, i32 550, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016usb8xxx: boot cmd response result error (%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@if_usb_receive_fwload._entry_ptr.97 = internal global ptr @if_usb_receive_fwload._entry.95, section ".printk_index", align 4
@if_usb_receive_fwload._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.76, ptr @.str.6, i32 554, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@if_usb_receive_fwload._entry_ptr.99 = internal global ptr @if_usb_receive_fwload._entry.98, section ".printk_index", align 4
@if_usb_receive_fwload._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.76, ptr @.str.6, i32 564, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017usb8xxx usbd: %s:Failure to allocate syncfwheader\0A\00", [43 x i8] zeroinitializer }, align 32
@if_usb_receive_fwload._entry_ptr.102 = internal global ptr @if_usb_receive_fwload._entry.100, section ".printk_index", align 4
@if_usb_receive_fwload._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.76, ptr @.str.6, i32 575, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017usb8xxx usbd: %s:FW received Blk with CRC error\0A\00", [45 x i8] zeroinitializer }, align 32
@if_usb_receive_fwload._entry_ptr.105 = internal global ptr @if_usb_receive_fwload._entry.103, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@if_usb_receive._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.6, i32 669, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017usb8xxx usbd: %s:RX URB failed: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"if_usb_receive\00", [17 x i8] zeroinitializer }, align 32
@if_usb_receive._entry_ptr = internal global ptr @if_usb_receive._entry, section ".printk_index", align 4
@if_usb_receive._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.107, ptr @.str.6, i32 678, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017usb8xxx usbd: %s:Recv length = 0x%x, Recv type = 0x%X\0A\00", [39 x i8] zeroinitializer }, align 32
@if_usb_receive._entry_ptr.110 = internal global ptr @if_usb_receive._entry.108, section ".printk_index", align 4
@if_usb_receive._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.107, ptr @.str.6, i32 696, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017usb8xxx usbd: %s:**EVENT** 0x%X\0A\00", [61 x i8] zeroinitializer }, align 32
@if_usb_receive._entry_ptr.113 = internal global ptr @if_usb_receive._entry.111, section ".printk_index", align 4
@if_usb_receive._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.107, ptr @.str.6, i32 710, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017usb8xxx usbd: %s:Unknown command type 0x%X\0A\00", [50 x i8] zeroinitializer }, align 32
@if_usb_receive._entry_ptr.116 = internal global ptr @if_usb_receive._entry.114, section ".printk_index", align 4
@process_cmdtypedata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.6, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017usb8xxx usbd: %s:Packet length is Invalid\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"process_cmdtypedata\00", [44 x i8] zeroinitializer }, align 32
@process_cmdtypedata._entry_ptr = internal global ptr @process_cmdtypedata._entry, section ".printk_index", align 4
@process_cmdrequest._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str.6, i32 627, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017usb8xxx usbd: %s:The receive buffer is too large\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"process_cmdrequest\00", [45 x i8] zeroinitializer }, align 32
@process_cmdrequest._entry_ptr = internal global ptr @process_cmdrequest._entry, section ".printk_index", align 4
@process_cmdrequest._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.120, ptr @.str.6, i32 645, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\017usb8xxx usbd: %s:Wake up main thread to handle cmd response\0A\00", [33 x i8] zeroinitializer }, align 32
@process_cmdrequest._entry_ptr.123 = internal global ptr @process_cmdrequest._entry.121, section ".printk_index", align 4
@if_usb_setup_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.125, ptr @.str.6, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017usb8xxx usb: Setting boot2 version failed\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"if_usb_setup_firmware\00", [42 x i8] zeroinitializer }, align 32
@if_usb_setup_firmware._entry_ptr = internal global ptr @if_usb_setup_firmware._entry, section ".printk_index", align 4
@.str.126 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Firmware does not seem to support PS mode\0A\00", [53 x i8] zeroinitializer }, align 32
@if_usb_setup_firmware._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.125, ptr @.str.6, i32 155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\017usb8xxx usb: Firmware seems to support PS with wake-via-command\0A\00", [61 x i8] zeroinitializer }, align 32
@if_usb_setup_firmware._entry_ptr.129 = internal global ptr @if_usb_setup_firmware._entry.127, section ".printk_index", align 4
@.str.130 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Firmware doesn't wake via command interrupt; disabling PS mode\0A\00", [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.131 = internal global [6 x i64] [i64 4, i64 32, i64 1297241676, i64 3472494064, i64 3472551870, i64 3737169342]
@__sancov_gen_cov_switch_values.132 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.133 = internal global [5 x i64] [i64 3, i64 32, i64 3199058142, i64 3203398350, i64 4027448014]
@___asan_gen_.134 = private unnamed_addr constant [14 x i8] c"if_usb_driver\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 983, i32 26 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 994, i32 1 }
@___asan_gen_.140 = private unnamed_addr constant [13 x i8] c"if_usb_table\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 57, i32 35 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 210, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 211, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 217, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 230, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 231, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 237, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 238, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 242, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 246, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 250, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 255, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant [9 x i8] c"fw_table\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 47, i32 34 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 171, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 173, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 732, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 733, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 423, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 436, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 105, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 48, i32 16 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 49, i32 16 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 50, i32 16 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 51, i32 16 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 52, i32 16 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 53, i32 16 }
@___asan_gen_.290 = private unnamed_addr constant [12 x i8] c"reset_count\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 824, i32 13 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 827, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 849, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 903, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 909, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 811, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 813, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 453, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 468, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 499, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 510, i32 4 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 513, i32 4 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 528, i32 4 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 537, i32 6 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 540, i32 5 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 546, i32 4 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 549, i32 4 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 553, i32 4 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 564, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 575, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 668, i32 4 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 676, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 696, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 709, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 605, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 626, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 644, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 141, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 151, i32 26 }
@___asan_gen_.473 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 155, i32 4 }
@___asan_gen_.479 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.480 = private constant [50 x i8] c"../drivers/net/wireless/marvell/libertas/if_usb.c\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 161, i32 9 }
@llvm.compiler.used = appending global [174 x ptr] [ptr @__UNIQUE_ID_author355, ptr @__UNIQUE_ID_description354, ptr @__UNIQUE_ID_file356, ptr @__UNIQUE_ID_firmware348, ptr @__UNIQUE_ID_firmware349, ptr @__UNIQUE_ID_firmware350, ptr @__UNIQUE_ID_firmware351, ptr @__UNIQUE_ID_firmware352, ptr @__UNIQUE_ID_license357, ptr @__exitcall_if_usb_driver_exit, ptr @__if_usb_submit_rx_urb._entry, ptr @__if_usb_submit_rx_urb._entry.72, ptr @__if_usb_submit_rx_urb._entry_ptr, ptr @__if_usb_submit_rx_urb._entry_ptr.74, ptr @__initcall__kmod_usb8xxx__353_994_if_usb_driver_init6, ptr @check_fwfile_format._entry, ptr @check_fwfile_format._entry.67, ptr @check_fwfile_format._entry_ptr, ptr @check_fwfile_format._entry_ptr.69, ptr @if_usb_driver_exit, ptr @if_usb_fw_timeo._entry, ptr @if_usb_fw_timeo._entry.33, ptr @if_usb_fw_timeo._entry_ptr, ptr @if_usb_fw_timeo._entry_ptr.35, ptr @if_usb_host_to_card._entry, ptr @if_usb_host_to_card._entry.38, ptr @if_usb_host_to_card._entry_ptr, ptr @if_usb_host_to_card._entry_ptr.40, ptr @if_usb_probe._entry, ptr @if_usb_probe._entry.10, ptr @if_usb_probe._entry.13, ptr @if_usb_probe._entry.16, ptr @if_usb_probe._entry.19, ptr @if_usb_probe._entry.22, ptr @if_usb_probe._entry.25, ptr @if_usb_probe._entry.28, ptr @if_usb_probe._entry.7, ptr @if_usb_probe._entry_ptr, ptr @if_usb_probe._entry_ptr.12, ptr @if_usb_probe._entry_ptr.15, ptr @if_usb_probe._entry_ptr.18, ptr @if_usb_probe._entry_ptr.21, ptr @if_usb_probe._entry_ptr.24, ptr @if_usb_probe._entry_ptr.27, ptr @if_usb_probe._entry_ptr.30, ptr @if_usb_probe._entry_ptr.9, ptr @if_usb_prog_firmware._entry, ptr @if_usb_prog_firmware._entry.56, ptr @if_usb_prog_firmware._entry.59, ptr @if_usb_prog_firmware._entry.62, ptr @if_usb_prog_firmware._entry_ptr, ptr @if_usb_prog_firmware._entry_ptr.58, ptr @if_usb_prog_firmware._entry_ptr.61, ptr @if_usb_prog_firmware._entry_ptr.64, ptr @if_usb_receive._entry, ptr @if_usb_receive._entry.108, ptr @if_usb_receive._entry.111, ptr @if_usb_receive._entry.114, ptr @if_usb_receive._entry_ptr, ptr @if_usb_receive._entry_ptr.110, ptr @if_usb_receive._entry_ptr.113, ptr @if_usb_receive._entry_ptr.116, ptr @if_usb_receive_fwload._entry, ptr @if_usb_receive_fwload._entry.100, ptr @if_usb_receive_fwload._entry.103, ptr @if_usb_receive_fwload._entry.77, ptr @if_usb_receive_fwload._entry.80, ptr @if_usb_receive_fwload._entry.83, ptr @if_usb_receive_fwload._entry.86, ptr @if_usb_receive_fwload._entry.89, ptr @if_usb_receive_fwload._entry.92, ptr @if_usb_receive_fwload._entry.95, ptr @if_usb_receive_fwload._entry.98, ptr @if_usb_receive_fwload._entry_ptr, ptr @if_usb_receive_fwload._entry_ptr.102, ptr @if_usb_receive_fwload._entry_ptr.105, ptr @if_usb_receive_fwload._entry_ptr.79, ptr @if_usb_receive_fwload._entry_ptr.82, ptr @if_usb_receive_fwload._entry_ptr.85, ptr @if_usb_receive_fwload._entry_ptr.88, ptr @if_usb_receive_fwload._entry_ptr.91, ptr @if_usb_receive_fwload._entry_ptr.94, ptr @if_usb_receive_fwload._entry_ptr.97, ptr @if_usb_receive_fwload._entry_ptr.99, ptr @if_usb_setup_firmware._entry, ptr @if_usb_setup_firmware._entry.127, ptr @if_usb_setup_firmware._entry_ptr, ptr @if_usb_setup_firmware._entry_ptr.129, ptr @if_usb_write_bulk_callback._entry, ptr @if_usb_write_bulk_callback._entry_ptr, ptr @process_cmdrequest._entry, ptr @process_cmdrequest._entry.121, ptr @process_cmdrequest._entry_ptr, ptr @process_cmdrequest._entry_ptr.123, ptr @process_cmdtypedata._entry, ptr @process_cmdtypedata._entry_ptr, ptr @usb_tx_block._entry, ptr @usb_tx_block._entry.43, ptr @usb_tx_block._entry_ptr, ptr @usb_tx_block._entry_ptr.45, ptr @if_usb_driver, ptr @.str, ptr @if_usb_table, ptr @if_usb_probe.__key, ptr @.str.1, ptr @if_usb_probe.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @fw_table, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @if_usb_prog_firmware.reset_count, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @.str.101, ptr @.str.104, ptr @.str.106, ptr @.str.107, ptr @.str.109, ptr @.str.112, ptr @.str.115, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.122, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.128, ptr @.str.130], section "llvm.metadata"
@0 = internal global [116 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_table to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_fw_timeo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_fw_timeo._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_host_to_card._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_host_to_card._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_tx_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_tx_block._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_write_bulk_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_prog_firmware.reset_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_prog_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_prog_firmware._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_prog_firmware._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_prog_firmware._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_fwfile_format._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_fwfile_format._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_receive_fwload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_receive_fwload._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_receive_fwload._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_receive_fwload._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_receive_fwload._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_receive_fwload._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_receive_fwload._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_receive_fwload._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_receive_fwload._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_receive_fwload._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_receive_fwload._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_receive._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_receive._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_receive._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_receive._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_cmdtypedata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_cmdrequest._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_cmdrequest._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_setup_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_usb_setup_firmware._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @if_usb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @if_usb_driver, ptr noundef null, ptr noundef nonnull @.str) #7
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
define internal i32 @if_usb_probe(ptr noundef %intf, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 164) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  %fw_timeout = getelementptr inbounds %struct.if_usb_card, ptr %call7.i.i, i32 0, i32 13
  tail call void @init_timer_key(ptr noundef %fw_timeout, ptr noundef nonnull @if_usb_fw_timeo, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @if_usb_probe.__key) #7
  %fw_wq = getelementptr inbounds %struct.if_usb_card, ptr %call7.i.i, i32 0, i32 14
  tail call void @__init_waitqueue_head(ptr noundef %fw_wq, ptr noundef nonnull @.str.3, ptr noundef nonnull @if_usb_probe.__key.2) #7
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr.i, ptr %call7.i.i, align 8
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %4 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_info, align 4
  %model = getelementptr inbounds %struct.if_usb_card, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %model to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %model, align 4
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %7 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cur_altsetting, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %9 = load i32, ptr @lbs_debug, align 4
  %and = and i32 %9, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %do.body.do.end21_crit_edge, label %do.end10

do.body.do.end21_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end21

do.end10:                                         ; preds = %do.body
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end10.dev_name.exit_crit_edge

do.end10.dev_name.exit_crit_edge:                 ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end10.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %13, %if.end.i ], [ %11, %do.end10.dev_name.exit_crit_edge ]
  %bcdUSB = getelementptr i8, ptr %1, i32 930
  %14 = ptrtoint ptr %bcdUSB to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %bcdUSB, align 2
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  %conv = zext i16 %16 to i32
  %bDeviceClass = getelementptr i8, ptr %1, i32 932
  %17 = ptrtoint ptr %bDeviceClass to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bDeviceClass, align 4
  %conv13 = zext i8 %18 to i32
  %bDeviceSubClass = getelementptr i8, ptr %1, i32 933
  %19 = ptrtoint ptr %bDeviceSubClass to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bDeviceSubClass, align 1
  %conv15 = zext i8 %20 to i32
  %bDeviceProtocol = getelementptr i8, ptr %1, i32 934
  %21 = ptrtoint ptr %bDeviceProtocol to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bDeviceProtocol, align 2
  %conv17 = zext i8 %22 to i32
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %retval.0.i, i32 noundef %conv, i32 noundef %conv13, i32 noundef %conv15, i32 noundef %conv17) #11
  br label %do.end21

do.end21:                                         ; preds = %dev_name.exit, %do.body.do.end21_crit_edge
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %8, i32 0, i32 4
  %23 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp23323.not = icmp eq i8 %24, 0
  br i1 %cmp23323.not, label %do.end21.for.end_crit_edge, label %for.body.lr.ph

do.end21.for.end_crit_edge:                       ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end21
  %endpoint25 = getelementptr inbounds %struct.usb_host_interface, ptr %8, i32 0, i32 3
  %ep_in_size = getelementptr inbounds %struct.if_usb_card, ptr %call7.i.i, i32 0, i32 9
  %ep_in = getelementptr inbounds %struct.if_usb_card, ptr %call7.i.i, i32 0, i32 6
  %init_name.i272 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %ep_out_size = getelementptr inbounds %struct.if_usb_card, ptr %call7.i.i, i32 0, i32 11
  %ep_out = getelementptr inbounds %struct.if_usb_card, ptr %call7.i.i, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0324 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %25 = ptrtoint ptr %endpoint25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %endpoint25, align 4
  %arrayidx = getelementptr %struct.usb_host_endpoint, ptr %26, i32 %i.0324
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 3
  %27 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bmAttributes.i.i, align 1
  %29 = and i8 %28, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %29)
  %cmp.i.not.i = icmp eq i8 %29, 2
  br i1 %cmp.i.not.i, label %usb_endpoint_is_bulk_in.exit, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

usb_endpoint_is_bulk_in.exit:                     ; preds = %for.body
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %30 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %31)
  %tobool28.not = icmp sgt i8 %31, -1
  br i1 %tobool28.not, label %usb_endpoint_is_bulk_out.exit, label %if.then29

if.then29:                                        ; preds = %usb_endpoint_is_bulk_in.exit
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 4
  %32 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %wMaxPacketSize, align 1
  %34 = tail call i16 @llvm.bswap.i16(i16 %33)
  %conv30 = zext i16 %34 to i32
  %35 = ptrtoint ptr %ep_in_size to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv30, ptr %ep_in_size, align 4
  %36 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %bEndpointAddress.i.i, align 1
  %38 = and i8 %37, 15
  %and.i = zext i8 %38 to i32
  %39 = ptrtoint ptr %ep_in to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %ep_in, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %40 = load i32, ptr @lbs_debug, align 4
  %and34 = and i32 %40, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %cmp35.not = icmp eq i32 %and34, 0
  br i1 %cmp35.not, label %if.then29.do.body50_crit_edge, label %do.end40

if.then29.do.body50_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body50

do.end40:                                         ; preds = %if.then29
  %41 = ptrtoint ptr %init_name.i272 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %init_name.i272, align 8
  %tobool.not.i273 = icmp eq ptr %42, null
  br i1 %tobool.not.i273, label %if.end.i274, label %do.end40.dev_name.exit276_crit_edge

do.end40.dev_name.exit276_crit_edge:              ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit276

if.end.i274:                                      ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  br label %dev_name.exit276

dev_name.exit276:                                 ; preds = %if.end.i274, %do.end40.dev_name.exit276_crit_edge
  %retval.0.i275 = phi ptr [ %44, %if.end.i274 ], [ %42, %do.end40.dev_name.exit276_crit_edge ]
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %retval.0.i275, i32 noundef %and.i) #11
  br label %do.body50

do.body50:                                        ; preds = %dev_name.exit276, %if.then29.do.body50_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %45 = load i32, ptr @lbs_debug, align 4
  %and51 = and i32 %45, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %cmp52.not = icmp eq i32 %and51, 0
  br i1 %cmp52.not, label %do.body50.for.inc_crit_edge, label %do.end57

do.body50.for.inc_crit_edge:                      ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end57:                                         ; preds = %do.body50
  %46 = ptrtoint ptr %init_name.i272 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %init_name.i272, align 8
  %tobool.not.i278 = icmp eq ptr %47, null
  br i1 %tobool.not.i278, label %if.end.i279, label %do.end57.dev_name.exit281_crit_edge

do.end57.dev_name.exit281_crit_edge:              ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit281

if.end.i279:                                      ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  br label %dev_name.exit281

dev_name.exit281:                                 ; preds = %if.end.i279, %do.end57.dev_name.exit281_crit_edge
  %retval.0.i280 = phi ptr [ %49, %if.end.i279 ], [ %47, %do.end57.dev_name.exit281_crit_edge ]
  %50 = ptrtoint ptr %ep_in_size to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ep_in_size, align 4
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %retval.0.i280, i32 noundef %51) #11
  br label %for.inc

usb_endpoint_is_bulk_out.exit:                    ; preds = %usb_endpoint_is_bulk_in.exit
  %52 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool67.not = icmp slt i8 %53, 0
  br i1 %tobool67.not, label %usb_endpoint_is_bulk_out.exit.for.inc_crit_edge, label %if.then68

usb_endpoint_is_bulk_out.exit.for.inc_crit_edge:  ; preds = %usb_endpoint_is_bulk_out.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then68:                                        ; preds = %usb_endpoint_is_bulk_out.exit
  %wMaxPacketSize69 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 4
  %54 = ptrtoint ptr %wMaxPacketSize69 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %55 = load i16, ptr %wMaxPacketSize69, align 1
  %56 = tail call i16 @llvm.bswap.i16(i16 %55)
  %conv70 = zext i16 %56 to i32
  %57 = ptrtoint ptr %ep_out_size to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv70, ptr %ep_out_size, align 4
  %58 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %bEndpointAddress.i.i, align 1
  %60 = and i8 %59, 15
  %and.i287 = zext i8 %60 to i32
  %61 = ptrtoint ptr %ep_out to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %ep_out, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %62 = load i32, ptr @lbs_debug, align 4
  %and74 = and i32 %62, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %cmp75.not = icmp eq i32 %and74, 0
  br i1 %cmp75.not, label %if.then68.do.body90_crit_edge, label %do.end80

if.then68.do.body90_crit_edge:                    ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body90

do.end80:                                         ; preds = %if.then68
  %63 = ptrtoint ptr %init_name.i272 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %init_name.i272, align 8
  %tobool.not.i289 = icmp eq ptr %64, null
  br i1 %tobool.not.i289, label %if.end.i290, label %do.end80.dev_name.exit292_crit_edge

do.end80.dev_name.exit292_crit_edge:              ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit292

if.end.i290:                                      ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  br label %dev_name.exit292

dev_name.exit292:                                 ; preds = %if.end.i290, %do.end80.dev_name.exit292_crit_edge
  %retval.0.i291 = phi ptr [ %66, %if.end.i290 ], [ %64, %do.end80.dev_name.exit292_crit_edge ]
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %retval.0.i291, i32 noundef %and.i287) #11
  br label %do.body90

do.body90:                                        ; preds = %dev_name.exit292, %if.then68.do.body90_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %67 = load i32, ptr @lbs_debug, align 4
  %and91 = and i32 %67, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %cmp92.not = icmp eq i32 %and91, 0
  br i1 %cmp92.not, label %do.body90.for.inc_crit_edge, label %do.end97

do.body90.for.inc_crit_edge:                      ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end97:                                         ; preds = %do.body90
  %68 = ptrtoint ptr %init_name.i272 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %init_name.i272, align 8
  %tobool.not.i294 = icmp eq ptr %69, null
  br i1 %tobool.not.i294, label %if.end.i295, label %do.end97.dev_name.exit297_crit_edge

do.end97.dev_name.exit297_crit_edge:              ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit297

if.end.i295:                                      ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 4
  br label %dev_name.exit297

dev_name.exit297:                                 ; preds = %if.end.i295, %do.end97.dev_name.exit297_crit_edge
  %retval.0.i296 = phi ptr [ %71, %if.end.i295 ], [ %69, %do.end97.dev_name.exit297_crit_edge ]
  %72 = ptrtoint ptr %ep_out_size to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ep_out_size, align 4
  %call102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %retval.0.i296, i32 noundef %73) #11
  br label %for.inc

for.inc:                                          ; preds = %dev_name.exit297, %do.body90.for.inc_crit_edge, %usb_endpoint_is_bulk_out.exit.for.inc_crit_edge, %dev_name.exit281, %do.body50.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0324, 1
  %74 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %bNumEndpoints, align 4
  %conv22 = zext i8 %75 to i32
  %cmp23 = icmp ult i32 %inc, %conv22
  br i1 %cmp23, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end21.for.end_crit_edge
  %ep_out_size108 = getelementptr inbounds %struct.if_usb_card, ptr %call7.i.i, i32 0, i32 11
  %76 = ptrtoint ptr %ep_out_size108 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ep_out_size108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool109.not = icmp eq i32 %77, 0
  br i1 %tobool109.not, label %for.end.do.body113_crit_edge, label %lor.lhs.false

for.end.do.body113_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body113

lor.lhs.false:                                    ; preds = %for.end
  %ep_in_size110 = getelementptr inbounds %struct.if_usb_card, ptr %call7.i.i, i32 0, i32 9
  %78 = ptrtoint ptr %ep_in_size110 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ep_in_size110, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool111.not = icmp eq i32 %79, 0
  br i1 %tobool111.not, label %lor.lhs.false.do.body113_crit_edge, label %if.end128

lor.lhs.false.do.body113_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body113

do.body113:                                       ; preds = %lor.lhs.false.do.body113_crit_edge, %for.end.do.body113_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %80 = load i32, ptr @lbs_debug, align 4
  %and114 = and i32 %80, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %cmp115.not = icmp eq i32 %and114, 0
  br i1 %cmp115.not, label %do.body113.dealloc_crit_edge, label %do.end120

do.body113.dealloc_crit_edge:                     ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #9
  br label %dealloc

do.end120:                                        ; preds = %do.body113
  %init_name.i298 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %81 = ptrtoint ptr %init_name.i298 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %init_name.i298, align 8
  %tobool.not.i299 = icmp eq ptr %82, null
  br i1 %tobool.not.i299, label %if.end.i300, label %do.end120.dev_name.exit302_crit_edge

do.end120.dev_name.exit302_crit_edge:             ; preds = %do.end120
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit302

if.end.i300:                                      ; preds = %do.end120
  call void @__sanitizer_cov_trace_pc() #9
  %83 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %1, align 4
  br label %dev_name.exit302

dev_name.exit302:                                 ; preds = %if.end.i300, %do.end120.dev_name.exit302_crit_edge
  %retval.0.i301 = phi ptr [ %84, %if.end.i300 ], [ %82, %do.end120.dev_name.exit302_crit_edge ]
  %call124 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %retval.0.i301) #11
  br label %dealloc

if.end128:                                        ; preds = %lor.lhs.false
  %call129 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #7
  %rx_urb = getelementptr inbounds %struct.if_usb_card, ptr %call7.i.i, i32 0, i32 2
  %85 = ptrtoint ptr %rx_urb to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call129, ptr %rx_urb, align 8
  %tobool130.not = icmp eq ptr %call129, null
  br i1 %tobool130.not, label %do.body132, label %if.end147

do.body132:                                       ; preds = %if.end128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %86 = load i32, ptr @lbs_debug, align 4
  %and133 = and i32 %86, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133)
  %cmp134.not = icmp eq i32 %and133, 0
  br i1 %cmp134.not, label %do.body132.dealloc_crit_edge, label %do.end139

do.body132.dealloc_crit_edge:                     ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #9
  br label %dealloc

do.end139:                                        ; preds = %do.body132
  %init_name.i303 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %87 = ptrtoint ptr %init_name.i303 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %init_name.i303, align 8
  %tobool.not.i304 = icmp eq ptr %88, null
  br i1 %tobool.not.i304, label %if.end.i305, label %do.end139.dev_name.exit307_crit_edge

do.end139.dev_name.exit307_crit_edge:             ; preds = %do.end139
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit307

if.end.i305:                                      ; preds = %do.end139
  call void @__sanitizer_cov_trace_pc() #9
  %89 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %1, align 4
  br label %dev_name.exit307

dev_name.exit307:                                 ; preds = %if.end.i305, %do.end139.dev_name.exit307_crit_edge
  %retval.0.i306 = phi ptr [ %90, %if.end.i305 ], [ %88, %do.end139.dev_name.exit307_crit_edge ]
  %call143 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %retval.0.i306) #11
  br label %dealloc

if.end147:                                        ; preds = %if.end128
  %call148 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #7
  %tx_urb = getelementptr inbounds %struct.if_usb_card, ptr %call7.i.i, i32 0, i32 3
  %91 = ptrtoint ptr %tx_urb to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call148, ptr %tx_urb, align 4
  %tobool149.not = icmp eq ptr %call148, null
  br i1 %tobool149.not, label %do.body151, label %if.end166

do.body151:                                       ; preds = %if.end147
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %92 = load i32, ptr @lbs_debug, align 4
  %and152 = and i32 %92, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152)
  %cmp153.not = icmp eq i32 %and152, 0
  br i1 %cmp153.not, label %do.body151.dealloc_crit_edge, label %do.end158

do.body151.dealloc_crit_edge:                     ; preds = %do.body151
  call void @__sanitizer_cov_trace_pc() #9
  br label %dealloc

do.end158:                                        ; preds = %do.body151
  %init_name.i308 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %93 = ptrtoint ptr %init_name.i308 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %init_name.i308, align 8
  %tobool.not.i309 = icmp eq ptr %94, null
  br i1 %tobool.not.i309, label %if.end.i310, label %do.end158.dev_name.exit312_crit_edge

do.end158.dev_name.exit312_crit_edge:             ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit312

if.end.i310:                                      ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #9
  %95 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %1, align 4
  br label %dev_name.exit312

dev_name.exit312:                                 ; preds = %if.end.i310, %do.end158.dev_name.exit312_crit_edge
  %retval.0.i311 = phi ptr [ %96, %if.end.i310 ], [ %94, %do.end158.dev_name.exit312_crit_edge ]
  %call162 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %retval.0.i311) #11
  br label %dealloc

if.end166:                                        ; preds = %if.end147
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %97 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %97, i32 noundef 3264, i32 noundef 1574) #10
  %ep_out_buf = getelementptr inbounds %struct.if_usb_card, ptr %call7.i.i, i32 0, i32 10
  %98 = ptrtoint ptr %ep_out_buf to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call7.i, ptr %ep_out_buf, align 8
  %tobool169.not = icmp eq ptr %call7.i, null
  br i1 %tobool169.not, label %do.body171, label %if.end186

do.body171:                                       ; preds = %if.end166
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %99 = load i32, ptr @lbs_debug, align 4
  %and172 = and i32 %99, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172)
  %cmp173.not = icmp eq i32 %and172, 0
  br i1 %cmp173.not, label %do.body171.dealloc_crit_edge, label %do.end178

do.body171.dealloc_crit_edge:                     ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #9
  br label %dealloc

do.end178:                                        ; preds = %do.body171
  %init_name.i313 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %100 = ptrtoint ptr %init_name.i313 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %init_name.i313, align 8
  %tobool.not.i314 = icmp eq ptr %101, null
  br i1 %tobool.not.i314, label %if.end.i315, label %do.end178.dev_name.exit317_crit_edge

do.end178.dev_name.exit317_crit_edge:             ; preds = %do.end178
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit317

if.end.i315:                                      ; preds = %do.end178
  call void @__sanitizer_cov_trace_pc() #9
  %102 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %1, align 4
  br label %dev_name.exit317

dev_name.exit317:                                 ; preds = %if.end.i315, %do.end178.dev_name.exit317_crit_edge
  %retval.0.i316 = phi ptr [ %103, %if.end.i315 ], [ %101, %do.end178.dev_name.exit317_crit_edge ]
  %call182 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %retval.0.i316) #11
  br label %dealloc

if.end186:                                        ; preds = %if.end166
  %dev187 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %call188 = tail call ptr @lbs_add_card(ptr noundef nonnull %call7.i.i, ptr noundef %dev187) #7
  %cmp.i = icmp ugt ptr %call188, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then190, label %if.end192

if.then190:                                       ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #9
  %104 = ptrtoint ptr %call188 to i32
  br label %err_add_card

if.end192:                                        ; preds = %if.end186
  %priv193 = getelementptr inbounds %struct.if_usb_card, ptr %call7.i.i, i32 0, i32 4
  %105 = ptrtoint ptr %priv193 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call188, ptr %priv193, align 8
  %hw_host_to_card = getelementptr inbounds %struct.lbs_private, ptr %call188, i32 0, i32 46
  %106 = ptrtoint ptr %hw_host_to_card to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @if_usb_host_to_card, ptr %hw_host_to_card, align 4
  %enter_deep_sleep = getelementptr inbounds %struct.lbs_private, ptr %call188, i32 0, i32 50
  %107 = ptrtoint ptr %enter_deep_sleep to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr null, ptr %enter_deep_sleep, align 4
  %exit_deep_sleep = getelementptr inbounds %struct.lbs_private, ptr %call188, i32 0, i32 51
  %108 = ptrtoint ptr %exit_deep_sleep to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr null, ptr %exit_deep_sleep, align 4
  %reset_deep_sleep_wakeup = getelementptr inbounds %struct.lbs_private, ptr %call188, i32 0, i32 52
  %109 = ptrtoint ptr %reset_deep_sleep_wakeup to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr null, ptr %reset_deep_sleep_wakeup, align 4
  %is_polling = getelementptr inbounds %struct.lbs_private, ptr %call188, i32 0, i32 41
  %110 = ptrtoint ptr %is_polling to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %is_polling, align 1
  %bcdDevice = getelementptr i8, ptr %1, i32 940
  %111 = ptrtoint ptr %bcdDevice to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %bcdDevice, align 4
  %boot2_version = getelementptr inbounds %struct.if_usb_card, ptr %call7.i.i, i32 0, i32 22
  %113 = ptrtoint ptr %boot2_version to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %112, ptr %boot2_version, align 8
  %call195 = tail call ptr @usb_get_dev(ptr noundef %add.ptr.i) #7
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %114 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %115 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %model, align 4
  %call198 = tail call i32 @lbs_get_firmware_async(ptr noundef %call188, ptr noundef %1, i32 noundef %116, ptr noundef nonnull @fw_table, ptr noundef nonnull @if_usb_prog_firmware) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call198)
  %tobool199.not = icmp eq i32 %call198, 0
  br i1 %tobool199.not, label %if.end192.cleanup_crit_edge, label %err_get_fw

if.end192.cleanup_crit_edge:                      ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_get_fw:                                       ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lbs_remove_card(ptr noundef %call188) #7
  br label %err_add_card

err_add_card:                                     ; preds = %err_get_fw, %if.then190
  %r.0 = phi i32 [ %104, %if.then190 ], [ %call198, %err_get_fw ]
  %117 = ptrtoint ptr %ep_out_buf to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ep_out_buf, align 8
  %add.ptr.i318 = getelementptr i8, ptr %118, i32 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 -822473232, ptr %118, align 4
  %120 = ptrtoint ptr %add.ptr.i318 to i32
  call void @__asan_storeN_noabort(i32 %120, i32 2)
  store i16 1280, ptr %add.ptr.i318, align 1
  %size.i = getelementptr i8, ptr %118, i32 6
  %121 = ptrtoint ptr %size.i to i32
  call void @__asan_storeN_noabort(i32 %121, i32 2)
  store i16 1024, ptr %size.i, align 1
  %result.i = getelementptr i8, ptr %118, i32 10
  %122 = ptrtoint ptr %result.i to i32
  call void @__asan_storeN_noabort(i32 %122, i32 2)
  store i16 0, ptr %result.i, align 1
  %seqnum.i = getelementptr i8, ptr %118, i32 8
  %123 = ptrtoint ptr %seqnum.i to i32
  call void @__asan_storeN_noabort(i32 %123, i32 2)
  store i16 23130, ptr %seqnum.i, align 1
  %124 = load ptr, ptr %ep_out_buf, align 8
  %call.i = tail call fastcc i32 @usb_tx_block(ptr noundef %call7.i.i, ptr noundef %124, i16 noundef zeroext 12) #7
  tail call void @msleep(i32 noundef 100) #7
  %125 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %call7.i.i, align 8
  %call3.i = tail call i32 @usb_reset_device(ptr noundef %126) #7
  tail call void @msleep(i32 noundef 100) #7
  br label %dealloc

dealloc:                                          ; preds = %err_add_card, %dev_name.exit317, %do.body171.dealloc_crit_edge, %dev_name.exit312, %do.body151.dealloc_crit_edge, %dev_name.exit307, %do.body132.dealloc_crit_edge, %dev_name.exit302, %do.body113.dealloc_crit_edge
  %r.1 = phi i32 [ %r.0, %err_add_card ], [ -12, %dev_name.exit317 ], [ -12, %do.body171.dealloc_crit_edge ], [ -12, %dev_name.exit312 ], [ -12, %do.body151.dealloc_crit_edge ], [ -12, %dev_name.exit307 ], [ -12, %do.body132.dealloc_crit_edge ], [ -12, %dev_name.exit302 ], [ -12, %do.body113.dealloc_crit_edge ]
  %tx_urb.i = getelementptr inbounds %struct.if_usb_card, ptr %call7.i.i, i32 0, i32 3
  %127 = ptrtoint ptr %tx_urb.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %tx_urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %128) #7
  %rx_urb.i = getelementptr inbounds %struct.if_usb_card, ptr %call7.i.i, i32 0, i32 2
  %129 = ptrtoint ptr %rx_urb.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %rx_urb.i, align 8
  tail call void @usb_kill_urb(ptr noundef %130) #7
  %131 = ptrtoint ptr %tx_urb.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %tx_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %132) #7
  %133 = ptrtoint ptr %tx_urb.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr null, ptr %tx_urb.i, align 4
  %134 = ptrtoint ptr %rx_urb.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %rx_urb.i, align 8
  tail call void @usb_free_urb(ptr noundef %135) #7
  %136 = ptrtoint ptr %rx_urb.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr null, ptr %rx_urb.i, align 8
  %ep_out_buf.i319 = getelementptr inbounds %struct.if_usb_card, ptr %call7.i.i, i32 0, i32 10
  %137 = ptrtoint ptr %ep_out_buf.i319 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %ep_out_buf.i319, align 8
  tail call void @kfree(ptr noundef %138) #7
  %139 = ptrtoint ptr %ep_out_buf.i319 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr null, ptr %ep_out_buf.i319, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %dealloc, %if.end192.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end192.cleanup_crit_edge ], [ %r.1, %dealloc ], [ -12, %entry.cleanup_crit_edge ]
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
  %surprise_removed = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %surprise_removed to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %surprise_removed, align 1
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lbs_stop_card(ptr noundef nonnull %3) #7
  tail call void @lbs_remove_card(ptr noundef nonnull %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tx_urb.i = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %tx_urb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tx_urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %6) #7
  %rx_urb.i = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %rx_urb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %8) #7
  %9 = ptrtoint ptr %tx_urb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %10) #7
  %11 = ptrtoint ptr %tx_urb.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %tx_urb.i, align 4
  %12 = ptrtoint ptr %rx_urb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %13) #7
  %14 = ptrtoint ptr %rx_urb.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %rx_urb.i, align 4
  %ep_out_buf.i = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %ep_out_buf.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ep_out_buf.i, align 4
  tail call void @kfree(ptr noundef %16) #7
  %17 = ptrtoint ptr %ep_out_buf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %ep_out_buf.i, align 4
  tail call void @kfree(ptr noundef %1) #7
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %driver_data.i.i, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %19 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %20, i32 -128
  tail call void @usb_put_dev(ptr noundef %add.ptr.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @if_usb_suspend(ptr nocapture noundef readonly %intf, [1 x i32] %message.coerce) #2 align 64 {
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
  %psstate = getelementptr inbounds %struct.lbs_private, ptr %3, i32 0, i32 26
  %4 = ptrtoint ptr %psstate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %psstate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @lbs_suspend(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %tx_urb = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %7) #7
  %rx_urb = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %9) #7
  br label %out

out:                                              ; preds = %if.end4, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call2, %if.end.out_crit_edge ], [ 0, %if.end4 ], [ -1, %entry.out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @if_usb_resume(ptr nocapture noundef readonly %intf) #2 align 64 {
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
  %call.i = tail call fastcc i32 @__if_usb_submit_rx_urb(ptr noundef %1, ptr noundef nonnull @if_usb_receive) #7
  %call3 = tail call i32 @lbs_resume(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @if_usb_fw_timeo(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fwdnldover = getelementptr i8, ptr %t, i32 113
  %0 = ptrtoint ptr %fwdnldover to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fwdnldover, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.end8, label %do.body

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %2 = load i32, ptr @lbs_debug, align 4
  %and = and i32 %2, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %do.body.if.end11_crit_edge, label %do.end

do.body.if.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #11
  br label %if.end11

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #11
  %surprise_removed = getelementptr i8, ptr %t, i32 115
  %3 = ptrtoint ptr %surprise_removed to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %surprise_removed, align 1
  br label %if.end11

if.end11:                                         ; preds = %do.end8, %do.end, %do.body.if.end11_crit_edge
  %fw_wq = getelementptr i8, ptr %t, i32 48
  tail call void @__wake_up(ptr noundef %fw_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @lbs_add_card(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @if_usb_host_to_card(ptr nocapture noundef %priv, i8 noundef zeroext %type, ptr nocapture noundef readonly %payload, i16 noundef zeroext %nb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 39
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %2 = load i32, ptr @lbs_debug, align 4
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
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %retval.0.i, i32 noundef %conv) #11
  br label %do.body5

do.body5:                                         ; preds = %dev_name.exit, %entry.do.body5_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %9 = load i32, ptr @lbs_debug, align 4
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
  %init_name.i46 = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15, i32 3
  %12 = ptrtoint ptr %init_name.i46 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i46, align 8
  %tobool.not.i47 = icmp eq ptr %13, null
  br i1 %tobool.not.i47, label %if.end.i48, label %do.end12.dev_name.exit50_crit_edge

do.end12.dev_name.exit50_crit_edge:               ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit50

if.end.i48:                                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #9
  %dev15 = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  %14 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev15, align 4
  br label %dev_name.exit50

dev_name.exit50:                                  ; preds = %if.end.i48, %do.end12.dev_name.exit50_crit_edge
  %retval.0.i49 = phi ptr [ %15, %if.end.i48 ], [ %13, %do.end12.dev_name.exit50_crit_edge ]
  %conv17 = zext i16 %nb to i32
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %retval.0.i49, i32 noundef %conv17) #11
  br label %do.end21

do.end21:                                         ; preds = %dev_name.exit50, %do.body5.do.end21_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %type)
  %cmp23 = icmp eq i8 %type, 1
  %ep_out_buf = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 10
  %16 = ptrtoint ptr %ep_out_buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ep_out_buf, align 4
  %. = select i1 %cmp23, i32 -822473232, i32 -557797954
  %.52 = select i1 %cmp23, i8 2, i8 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %., ptr %17, align 4
  %19 = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 58
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %.52, ptr %19, align 1
  %ep_out_buf29 = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 10
  %21 = ptrtoint ptr %ep_out_buf29 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ep_out_buf29, align 4
  %add.ptr = getelementptr i8, ptr %22, i32 4
  %conv30 = zext i16 %nb to i32
  %23 = call ptr @memcpy(ptr %add.ptr, ptr %payload, i32 %conv30)
  %24 = load ptr, ptr %ep_out_buf29, align 4
  %add = add i16 %nb, 4
  %call34 = tail call fastcc i32 @usb_tx_block(ptr noundef %1, ptr noundef %24, i16 noundef zeroext %add)
  ret i32 %call34
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbs_get_firmware_async(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @if_usb_prog_firmware(ptr noundef %priv, i32 noundef %ret, ptr noundef %fw, ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  %b2_cmd.i = alloca %struct.cmd_ds_set_boot2_ver, align 8
  %wake_method.i = alloca %struct.cmd_ds_802_11_fw_wake_method, align 2
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 39
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret)
  %tobool.not = icmp eq i32 %ret, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %ret) #11
  br label %done

if.end:                                           ; preds = %entry
  %fw1 = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %fw1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fw, ptr %fw1, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %5 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %sw.bb.i.do.body.i_crit_edge, %if.end
  %len.0.i = phi i32 [ 0, %if.end ], [ %add1.i, %sw.bb.i.do.body.i_crit_edge ]
  %data.addr.0.i = phi ptr [ %4, %if.end ], [ %add.ptr.i, %sw.bb.i.do.body.i_crit_edge ]
  %7 = ptrtoint ptr %data.addr.0.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data.addr.0.i, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %do.body.i.check_fwfile_format.exit.thread221_crit_edge [
    i32 1, label %sw.bb.i
    i32 4, label %do.body8.i
  ]

do.body.i.check_fwfile_format.exit.thread221_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %check_fwfile_format.exit.thread221

sw.bb.i:                                          ; preds = %do.body.i
  %datalength.i = getelementptr inbounds %struct.fwheader, ptr %data.addr.0.i, i32 0, i32 2
  %11 = ptrtoint ptr %datalength.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %datalength.i, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  %add.i = add i32 %13, 16
  %add.ptr.i = getelementptr i8, ptr %data.addr.0.i, i32 %add.i
  %add1.i = add i32 %add.i, %len.0.i
  %cmp.not.i = icmp ult i32 %add1.i, %6
  br i1 %cmp.not.i, label %sw.bb.i.do.body.i_crit_edge, label %sw.bb.i.check_fwfile_format.exit.thread221_crit_edge

sw.bb.i.check_fwfile_format.exit.thread221_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %check_fwfile_format.exit.thread221

sw.bb.i.do.body.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

do.body8.i:                                       ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %14 = load i32, ptr @lbs_debug, align 4
  %and.i = and i32 %14, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp9.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp9.not.i, label %do.body8.i.if.end7_crit_edge, label %check_fwfile_format.exit

do.body8.i.if.end7_crit_edge:                     ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

check_fwfile_format.exit.thread221:               ; preds = %sw.bb.i.check_fwfile_format.exit.thread221_crit_edge, %do.body.i.check_fwfile_format.exit.thread221_crit_edge
  %call15.i224 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65) #11
  br label %done

check_fwfile_format.exit:                         ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68) #11
  br label %if.end7

if.end7:                                          ; preds = %check_fwfile_format.exit, %do.body8.i.if.end7_crit_edge
  %rx_urb = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %16) #7
  %tx_urb = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tx_urb, align 4
  tail call void @usb_kill_urb(ptr noundef %18) #7
  %fwlastblksent = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 17
  %19 = ptrtoint ptr %fwlastblksent to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %fwlastblksent, align 4
  %fwdnldover = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 19
  %20 = ptrtoint ptr %fwdnldover to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %fwdnldover, align 1
  %totalbytes = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 16
  %21 = ptrtoint ptr %totalbytes to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %totalbytes, align 4
  %fwfinalblk = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 20
  %22 = ptrtoint ptr %fwfinalblk to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %fwfinalblk, align 2
  %bootcmdresp = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 8
  %23 = ptrtoint ptr %bootcmdresp to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %bootcmdresp, align 2
  %call.i236 = call fastcc i32 @__if_usb_submit_rx_urb(ptr noundef %1, ptr noundef nonnull @if_usb_receive_fwload) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i236)
  %cmp237 = icmp slt i32 %call.i236, 0
  br i1 %cmp237, label %if.end7.do.body10_crit_edge, label %if.end22.lr.ph

if.end7.do.body10_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body10

if.end22.lr.ph:                                   ; preds = %if.end7
  %ep_out_buf.i = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 10
  %CRC_OK = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 18
  %fwseqnum = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 15
  %surprise_removed = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 21
  %fw_wq = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 14
  %fw_timeout = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 13
  br label %if.end22

do.body10:                                        ; preds = %restart.backedge.do.body10_crit_edge, %if.end7.do.body10_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %24 = load i32, ptr @lbs_debug, align 4
  %and = and i32 %24, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp11.not = icmp eq i32 %and, 0
  br i1 %cmp11.not, label %do.body10.done_crit_edge, label %do.end15

do.body10.done_crit_edge:                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

do.end15:                                         ; preds = %do.body10
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %init_name.i = getelementptr inbounds %struct.usb_device, ptr %26, i32 0, i32 15, i32 3
  %27 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end15.dev_name.exit_crit_edge

do.end15.dev_name.exit_crit_edge:                 ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.usb_device, ptr %26, i32 0, i32 15
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end15.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %30, %if.end.i ], [ %28, %do.end15.dev_name.exit_crit_edge ]
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %retval.0.i) #11
  br label %done

if.end22:                                         ; preds = %restart.backedge.if.end22_crit_edge, %if.end22.lr.ph
  %i.0238 = phi i32 [ 0, %if.end22.lr.ph ], [ %i.0.be, %restart.backedge.if.end22_crit_edge ]
  %31 = ptrtoint ptr %bootcmdresp to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %bootcmdresp, align 2
  br label %do.body24

do.body24:                                        ; preds = %do.end35.do.body24_crit_edge, %if.end22
  %i.1 = phi i32 [ %i.0238, %if.end22 ], [ %inc, %do.end35.do.body24_crit_edge ]
  %32 = ptrtoint ptr %ep_out_buf.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ep_out_buf.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1297241676, ptr %33, align 4
  %cmd.i = getelementptr inbounds %struct.bootcmd, ptr %33, i32 0, i32 1
  %35 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %cmd.i, align 4
  %pad.i = getelementptr inbounds %struct.bootcmd, ptr %33, i32 0, i32 2
  %36 = call ptr @memset(ptr %pad.i, i32 0, i32 11)
  %37 = load ptr, ptr %ep_out_buf.i, align 4
  %call.i194 = call fastcc i32 @usb_tx_block(ptr noundef %1, ptr noundef %37, i16 noundef zeroext 16) #7
  br label %do.body26

do.body26:                                        ; preds = %do.body26.do.body26_crit_edge, %do.body24
  %j.0 = phi i32 [ 0, %do.body24 ], [ %inc27, %do.body26.do.body26_crit_edge ]
  %call28 = call i32 @msleep_interruptible(i32 noundef 100) #7
  %38 = ptrtoint ptr %bootcmdresp to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bootcmdresp, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp31 = icmp eq i8 %39, 0
  %inc27 = add nuw nsw i32 %j.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %j.0)
  %cmp33 = icmp ult i32 %j.0, 9
  %or.cond = select i1 %cmp31, i1 %cmp33, i1 false
  br i1 %or.cond, label %do.body26.do.body26_crit_edge, label %do.end35

do.body26.do.body26_crit_edge:                    ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body26

do.end35:                                         ; preds = %do.body26
  %inc = add i32 %i.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %inc)
  %cmp42 = icmp slt i32 %inc, 5
  %or.cond193 = select i1 %cmp31, i1 %cmp42, i1 false
  br i1 %or.cond193, label %do.end35.do.body24_crit_edge, label %do.end45

do.end35.do.body24_crit_edge:                     ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body24

do.end45:                                         ; preds = %do.end35
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %39)
  %cmp48 = icmp eq i8 %39, 2
  br i1 %cmp48, label %if.then50, label %if.else

if.then50:                                        ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rx_urb, align 4
  call void @usb_kill_urb(ptr noundef %41) #7
  %42 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tx_urb, align 4
  call void @usb_kill_urb(ptr noundef %43) #7
  %call.i195 = call fastcc i32 @__if_usb_submit_rx_urb(ptr noundef %1, ptr noundef nonnull @if_usb_receive) #7
  br label %done

if.else:                                          ; preds = %do.end45
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %39)
  %cmp60 = icmp slt i8 %39, 1
  br i1 %cmp60, label %if.then62, label %do.end.i

if.then62:                                        ; preds = %if.else
  %44 = load i32, ptr @if_usb_prog_firmware.reset_count, align 4
  %dec = add i32 %44, -1
  store i32 %dec, ptr @if_usb_prog_firmware.reset_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec)
  %cmp63 = icmp sgt i32 %dec, -1
  br i1 %cmp63, label %if.then62.restart.backedge_crit_edge, label %if.then62.done_crit_edge

if.then62.done_crit_edge:                         ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.then62.restart.backedge_crit_edge:             ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  br label %restart.backedge

restart.backedge:                                 ; preds = %do.end113.restart.backedge_crit_edge, %if.then62.restart.backedge_crit_edge
  %i.0.be = phi i32 [ 0, %do.end113.restart.backedge_crit_edge ], [ %inc, %if.then62.restart.backedge_crit_edge ]
  %45 = ptrtoint ptr %ep_out_buf.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ep_out_buf.i, align 4
  %add.ptr.i197 = getelementptr i8, ptr %46, i32 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -822473232, ptr %46, align 4
  %48 = ptrtoint ptr %add.ptr.i197 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 2)
  store i16 1280, ptr %add.ptr.i197, align 1
  %size.i = getelementptr i8, ptr %46, i32 6
  %49 = ptrtoint ptr %size.i to i32
  call void @__asan_storeN_noabort(i32 %49, i32 2)
  store i16 1024, ptr %size.i, align 1
  %result.i = getelementptr i8, ptr %46, i32 10
  %50 = ptrtoint ptr %result.i to i32
  call void @__asan_storeN_noabort(i32 %50, i32 2)
  store i16 0, ptr %result.i, align 1
  %seqnum.i = getelementptr i8, ptr %46, i32 8
  %51 = ptrtoint ptr %seqnum.i to i32
  call void @__asan_storeN_noabort(i32 %51, i32 2)
  store i16 23130, ptr %seqnum.i, align 1
  %52 = load ptr, ptr %ep_out_buf.i, align 4
  %call.i198 = call fastcc i32 @usb_tx_block(ptr noundef %1, ptr noundef %52, i16 noundef zeroext 12) #7
  call void @msleep(i32 noundef 100) #7
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 4
  %call3.i = call i32 @usb_reset_device(ptr noundef %54) #7
  call void @msleep(i32 noundef 100) #7
  %call.i = call fastcc i32 @__if_usb_submit_rx_urb(ptr noundef %1, ptr noundef nonnull @if_usb_receive_fwload) #7
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %restart.backedge.do.body10_crit_edge, label %restart.backedge.if.end22_crit_edge

restart.backedge.if.end22_crit_edge:              ; preds = %restart.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

restart.backedge.do.body10_crit_edge:             ; preds = %restart.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body10

do.end.i:                                         ; preds = %if.else
  %55 = ptrtoint ptr %fwlastblksent to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %fwlastblksent, align 4
  %56 = ptrtoint ptr %CRC_OK to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %CRC_OK, align 4
  %57 = ptrtoint ptr %fwdnldover to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %fwdnldover, align 1
  %58 = ptrtoint ptr %fwseqnum to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -1, ptr %fwseqnum, align 4
  %59 = ptrtoint ptr %totalbytes to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %totalbytes, align 4
  %60 = ptrtoint ptr %fwfinalblk to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %fwfinalblk, align 2
  %61 = ptrtoint ptr %ep_out_buf.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ep_out_buf.i, align 4
  %63 = ptrtoint ptr %fw1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %fw1, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data.i, align 4
  %67 = call ptr @memcpy(ptr %62, ptr %66, i32 16)
  %68 = load i32, ptr %totalbytes, align 4
  store i32 %68, ptr %fwlastblksent, align 4
  %add.i201 = add i32 %68, 16
  store i32 %add.i201, ptr %totalbytes, align 4
  %data5.i = getelementptr inbounds %struct.fwdata, ptr %62, i32 0, i32 2
  %arrayidx7.i = getelementptr i8, ptr %66, i32 %add.i201
  %datalength.i202 = getelementptr inbounds %struct.fwheader, ptr %62, i32 0, i32 2
  %69 = ptrtoint ptr %datalength.i202 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %datalength.i202, align 4
  %71 = call i32 @llvm.bswap.i32(i32 %70) #7
  %72 = call ptr @memcpy(ptr %data5.i, ptr %arrayidx7.i, i32 %71)
  %73 = ptrtoint ptr %fwseqnum to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %fwseqnum, align 4
  %inc.i = add i32 %74, 1
  store i32 %inc.i, ptr %fwseqnum, align 4
  %75 = call i32 @llvm.bswap.i32(i32 %inc.i) #7
  %seqnum.i203 = getelementptr inbounds %struct.fwdata, ptr %62, i32 0, i32 1
  %76 = ptrtoint ptr %seqnum.i203 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %seqnum.i203, align 4
  %77 = ptrtoint ptr %datalength.i202 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %datalength.i202, align 4
  %79 = call i32 @llvm.bswap.i32(i32 %78) #7
  %80 = ptrtoint ptr %totalbytes to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %totalbytes, align 4
  %add16.i = add i32 %81, %79
  store i32 %add16.i, ptr %totalbytes, align 4
  %82 = ptrtoint ptr %ep_out_buf.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ep_out_buf.i, align 4
  %84 = ptrtoint ptr %datalength.i202 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %datalength.i202, align 4
  %86 = call i32 @llvm.bswap.i32(i32 %85) #7
  %87 = trunc i32 %86 to i16
  %conv.i = add i16 %87, 20
  %call.i204 = call fastcc i32 @usb_tx_block(ptr noundef %1, ptr noundef %83, i16 noundef zeroext %conv.i) #7
  %88 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %89)
  %cond.i = icmp eq i32 %89, 67108864
  br i1 %cond.i, label %do.end40.i, label %do.end.i.if_usb_send_fw_pkt.exit_crit_edge

do.end.i.if_usb_send_fw_pkt.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if_usb_send_fw_pkt.exit

do.end40.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %90 = ptrtoint ptr %fwfinalblk to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %fwfinalblk, align 2
  br label %if_usb_send_fw_pkt.exit

if_usb_send_fw_pkt.exit:                          ; preds = %do.end40.i, %do.end.i.if_usb_send_fw_pkt.exit_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 897) #7
  %91 = ptrtoint ptr %surprise_removed to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %surprise_removed, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool83.not = icmp eq i8 %92, 0
  br i1 %tobool83.not, label %lor.lhs.false, label %if_usb_send_fw_pkt.exit.if.end104_crit_edge

if_usb_send_fw_pkt.exit.if.end104_crit_edge:      ; preds = %if_usb_send_fw_pkt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

lor.lhs.false:                                    ; preds = %if_usb_send_fw_pkt.exit
  %93 = ptrtoint ptr %fwdnldover to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %fwdnldover, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool86.not = icmp eq i8 %94, 0
  br i1 %tobool86.not, label %if.then87, label %lor.lhs.false.if.end104_crit_edge

lor.lhs.false.if.end104_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

if.then87:                                        ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %95 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %call89232 = call i32 @prepare_to_wait_event(ptr noundef %fw_wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %96 = ptrtoint ptr %surprise_removed to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %surprise_removed, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool92.not233 = icmp eq i8 %97, 0
  br i1 %tobool92.not233, label %if.then87.lor.lhs.false93_crit_edge, label %if.then87.for.end_crit_edge

if.then87.for.end_crit_edge:                      ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then87.lor.lhs.false93_crit_edge:              ; preds = %if.then87
  br label %lor.lhs.false93

lor.lhs.false93:                                  ; preds = %cleanup.lor.lhs.false93_crit_edge, %if.then87.lor.lhs.false93_crit_edge
  %call89234 = phi i32 [ %call89, %cleanup.lor.lhs.false93_crit_edge ], [ %call89232, %if.then87.lor.lhs.false93_crit_edge ]
  %98 = ptrtoint ptr %fwdnldover to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %fwdnldover, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool96.not = icmp eq i8 %99, 0
  br i1 %tobool96.not, label %if.end98, label %lor.lhs.false93.for.end_crit_edge

lor.lhs.false93.for.end_crit_edge:                ; preds = %lor.lhs.false93
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end98:                                         ; preds = %lor.lhs.false93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89234)
  %tobool99.not = icmp eq i32 %call89234, 0
  br i1 %tobool99.not, label %cleanup, label %if.end98.__out_crit_edge

if.end98.__out_crit_edge:                         ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %__out

cleanup:                                          ; preds = %if.end98
  call void @schedule() #7
  %call89 = call i32 @prepare_to_wait_event(ptr noundef %fw_wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %100 = ptrtoint ptr %surprise_removed to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %surprise_removed, align 1
  %tobool92.not = icmp eq i8 %101, 0
  br i1 %tobool92.not, label %cleanup.lor.lhs.false93_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cleanup.lor.lhs.false93_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false93

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.lhs.false93.for.end_crit_edge, %if.then87.for.end_crit_edge
  call void @finish_wait(ptr noundef %fw_wq, ptr noundef nonnull %__wq_entry) #7
  br label %__out

__out:                                            ; preds = %for.end, %if.end98.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %if.end104

if.end104:                                        ; preds = %__out, %lor.lhs.false.if.end104_crit_edge, %if_usb_send_fw_pkt.exit.if.end104_crit_edge
  %call106 = call i32 @del_timer_sync(ptr noundef %fw_timeout) #7
  %102 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %rx_urb, align 4
  call void @usb_kill_urb(ptr noundef %103) #7
  %104 = ptrtoint ptr %fwdnldover to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %fwdnldover, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool109.not = icmp eq i8 %105, 0
  br i1 %tobool109.not, label %do.end113, label %if.end127

do.end113:                                        ; preds = %if.end104
  %call115 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #11
  %106 = load i32, ptr @if_usb_prog_firmware.reset_count, align 4
  %dec116 = add i32 %106, -1
  store i32 %dec116, ptr @if_usb_prog_firmware.reset_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec116)
  %cmp117 = icmp sgt i32 %dec116, -1
  br i1 %cmp117, label %do.end113.restart.backedge_crit_edge, label %do.end124

do.end113.restart.backedge_crit_edge:             ; preds = %do.end113
  call void @__sanitizer_cov_trace_pc() #9
  br label %restart.backedge

do.end124:                                        ; preds = %do.end113
  call void @__sanitizer_cov_trace_pc() #9
  %call126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef 0) #11
  br label %done

if.end127:                                        ; preds = %if.end104
  %priv128 = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 4
  %107 = ptrtoint ptr %priv128 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %priv128, align 4
  %fw_ready = getelementptr inbounds %struct.lbs_private, ptr %108, i32 0, i32 42
  %109 = ptrtoint ptr %fw_ready to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 1, ptr %fw_ready, align 2
  %call.i212 = call fastcc i32 @__if_usb_submit_rx_urb(ptr noundef %1, ptr noundef nonnull @if_usb_receive) #7
  %call130 = call i32 @lbs_start_card(ptr noundef %priv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.end133, label %if.end127.done_crit_edge

if.end127.done_crit_edge:                         ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.end133:                                        ; preds = %if.end127
  %110 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %card, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %b2_cmd.i) #7
  %112 = getelementptr inbounds %struct.cmd_ds_set_boot2_ver, ptr %b2_cmd.i, i32 0, i32 1
  %113 = getelementptr inbounds %struct.cmd_ds_set_boot2_ver, ptr %b2_cmd.i, i32 0, i32 2
  %114 = ptrtoint ptr %b2_cmd.i to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 -268276542210049, ptr %b2_cmd.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %wake_method.i) #7
  %115 = getelementptr inbounds %struct.cmd_header, ptr %wake_method.i, i32 0, i32 1
  %116 = getelementptr inbounds %struct.cmd_ds_802_11_fw_wake_method, ptr %wake_method.i, i32 0, i32 1
  %117 = getelementptr inbounds %struct.cmd_ds_802_11_fw_wake_method, ptr %wake_method.i, i32 0, i32 2
  %118 = call ptr @memset(ptr %wake_method.i, i32 255, i32 12)
  %119 = ptrtoint ptr %112 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 0, ptr %112, align 8
  %boot2_version.i = getelementptr inbounds %struct.if_usb_card, ptr %111, i32 0, i32 22
  %120 = ptrtoint ptr %boot2_version.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %boot2_version.i, align 4
  %122 = ptrtoint ptr %113 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %121, ptr %113, align 2
  %123 = ptrtoint ptr %b2_cmd.i to i32
  %call.i213 = call i32 @__lbs_cmd(ptr noundef %priv, i16 noundef zeroext 165, ptr noundef nonnull %b2_cmd.i, i32 noundef 12, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %123) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i213)
  %tobool.not.i214 = icmp eq i32 %call.i213, 0
  br i1 %tobool.not.i214, label %if.end133.if.end13.i_crit_edge, label %do.body.i217

if.end133.if.end13.i_crit_edge:                   ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

do.body.i217:                                     ; preds = %if.end133
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %124 = load i32, ptr @lbs_debug, align 4
  %and.i215 = and i32 %124, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i215)
  %cmp.not.i216 = icmp eq i32 %and.i215, 0
  br i1 %cmp.not.i216, label %do.body.i217.if.end13.i_crit_edge, label %do.end.i218

do.body.i217.if.end13.i_crit_edge:                ; preds = %do.body.i217
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

do.end.i218:                                      ; preds = %do.body.i217
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124) #11
  br label %if.end13.i

if.end13.i:                                       ; preds = %do.end.i218, %do.body.i217.if.end13.i_crit_edge, %if.end133.if.end13.i_crit_edge
  %wol_gpio.i = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 78
  %125 = ptrtoint ptr %wol_gpio.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 2, ptr %wol_gpio.i, align 4
  %wol_gap.i = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 79
  %126 = ptrtoint ptr %wol_gap.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 20, ptr %wol_gap.i, align 1
  %call14.i = call i32 @lbs_host_sleep_cfg(ptr noundef %priv, i32 noundef 2, ptr noundef null) #7
  %127 = ptrtoint ptr %116 to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 0, ptr %116, align 2
  %128 = ptrtoint ptr %115 to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 3072, ptr %115, align 2
  %129 = ptrtoint ptr %wake_method.i to i32
  %call26.i = call i32 @__lbs_cmd(ptr noundef %priv, i16 noundef zeroext 116, ptr noundef nonnull %wake_method.i, i32 noundef 12, ptr noundef nonnull @lbs_cmd_copyback, i32 noundef %129) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.else.i, label %if.then28.i

if.then28.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  %130 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %priv, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %131, ptr noundef nonnull @.str.126) #11
  %fwcapinfo.i = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 54
  %132 = ptrtoint ptr %fwcapinfo.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %fwcapinfo.i, align 4
  %and29.i = and i32 %133, -3
  store i32 %and29.i, ptr %fwcapinfo.i, align 4
  br label %if_usb_setup_firmware.exit

if.else.i:                                        ; preds = %if.end13.i
  %134 = ptrtoint ptr %117 to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %117, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %135)
  %cmp31.i = icmp eq i16 %135, 256
  br i1 %cmp31.i, label %do.body34.i, label %if.else47.i

do.body34.i:                                      ; preds = %if.else.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %136 = load i32, ptr @lbs_debug, align 4
  %and35.i = and i32 %136, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %cmp36.not.i = icmp eq i32 %and35.i, 0
  br i1 %cmp36.not.i, label %do.body34.i.if_usb_setup_firmware.exit_crit_edge, label %do.end41.i

do.body34.i.if_usb_setup_firmware.exit_crit_edge: ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if_usb_setup_firmware.exit

do.end41.i:                                       ; preds = %do.body34.i
  call void @__sanitizer_cov_trace_pc() #9
  %call43.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128) #11
  br label %if_usb_setup_firmware.exit

if.else47.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %fwcapinfo48.i = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 54
  %137 = ptrtoint ptr %fwcapinfo48.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %fwcapinfo48.i, align 4
  %and49.i = and i32 %138, -3
  store i32 %and49.i, ptr %fwcapinfo48.i, align 4
  %139 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %priv, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %140, ptr noundef nonnull @.str.130) #11
  br label %if_usb_setup_firmware.exit

if_usb_setup_firmware.exit:                       ; preds = %if.else47.i, %do.end41.i, %do.body34.i.if_usb_setup_firmware.exit_crit_edge, %if.then28.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %wake_method.i) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %b2_cmd.i) #7
  %wol_criteria = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 77
  %141 = ptrtoint ptr %wol_criteria to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 -1, ptr %wol_criteria, align 4
  %call135 = call i32 @lbs_host_sleep_cfg(ptr noundef %priv, i32 noundef -1, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if_usb_setup_firmware.exit.done_crit_edge, label %if.then137

if_usb_setup_firmware.exit.done_crit_edge:        ; preds = %if_usb_setup_firmware.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.then137:                                       ; preds = %if_usb_setup_firmware.exit
  call void @__sanitizer_cov_trace_pc() #9
  %ehs_remove_supported = getelementptr inbounds %struct.lbs_private, ptr %priv, i32 0, i32 80
  %142 = ptrtoint ptr %ehs_remove_supported to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 0, ptr %ehs_remove_supported, align 2
  br label %done

done:                                             ; preds = %if.then137, %if_usb_setup_firmware.exit.done_crit_edge, %if.end127.done_crit_edge, %do.end124, %if.then62.done_crit_edge, %if.then50, %dev_name.exit, %do.body10.done_crit_edge, %check_fwfile_format.exit.thread221, %do.end
  %fw139 = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 12
  %143 = ptrtoint ptr %fw139 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr null, ptr %fw139, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lbs_remove_card(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usb_tx_block(ptr noundef %cardp, ptr noundef %payload, i16 noundef zeroext %nb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %surprise_removed = getelementptr inbounds %struct.if_usb_card, ptr %cardp, i32 0, i32 21
  %0 = ptrtoint ptr %surprise_removed to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %surprise_removed, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end6, label %do.body

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %2 = load i32, ptr @lbs_debug, align 4
  %and = and i32 %2, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %do.body.tx_ret_crit_edge, label %do.end

do.body.tx_ret_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %tx_ret

do.end:                                           ; preds = %do.body
  %3 = ptrtoint ptr %cardp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cardp, align 4
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
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %retval.0.i) #11
  br label %tx_ret

if.end6:                                          ; preds = %entry
  %tx_urb = getelementptr inbounds %struct.if_usb_card, ptr %cardp, i32 0, i32 3
  %9 = ptrtoint ptr %tx_urb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx_urb, align 4
  %11 = ptrtoint ptr %cardp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cardp, align 4
  %ep_out = getelementptr inbounds %struct.if_usb_card, ptr %cardp, i32 0, i32 7
  %13 = ptrtoint ptr %ep_out to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ep_out, align 1
  %conv = zext i8 %14 to i32
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %12, align 8
  %shl.i = shl i32 %16, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i, -1073741824
  %conv10 = zext i16 %nb to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 8
  %17 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %12, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 10
  %18 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 14
  %19 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %payload, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 19
  %20 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv10, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 28
  %21 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @if_usb_write_bulk_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 27
  %22 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %cardp, ptr %context4.i, align 4
  %23 = load ptr, ptr %tx_urb, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %23, i32 0, i32 13
  %24 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %transfer_flags, align 4
  %or12 = or i32 %25, 64
  store i32 %or12, ptr %transfer_flags, align 4
  %26 = load ptr, ptr %tx_urb, align 4
  %call14 = tail call i32 @usb_submit_urb(ptr noundef %26, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end6.tx_ret_crit_edge, label %do.body17

if.end6.tx_ret_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %tx_ret

do.body17:                                        ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %27 = load i32, ptr @lbs_debug, align 4
  %and18 = and i32 %27, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %cmp19.not = icmp eq i32 %and18, 0
  br i1 %cmp19.not, label %do.body17.tx_ret_crit_edge, label %do.end24

do.body17.tx_ret_crit_edge:                       ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  br label %tx_ret

do.end24:                                         ; preds = %do.body17
  %28 = ptrtoint ptr %cardp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cardp, align 4
  %init_name.i47 = getelementptr inbounds %struct.usb_device, ptr %29, i32 0, i32 15, i32 3
  %30 = ptrtoint ptr %init_name.i47 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %init_name.i47, align 8
  %tobool.not.i48 = icmp eq ptr %31, null
  br i1 %tobool.not.i48, label %if.end.i49, label %do.end24.dev_name.exit51_crit_edge

do.end24.dev_name.exit51_crit_edge:               ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit51

if.end.i49:                                       ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #9
  %dev27 = getelementptr inbounds %struct.usb_device, ptr %29, i32 0, i32 15
  %32 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev27, align 4
  br label %dev_name.exit51

dev_name.exit51:                                  ; preds = %if.end.i49, %do.end24.dev_name.exit51_crit_edge
  %retval.0.i50 = phi ptr [ %33, %if.end.i49 ], [ %31, %do.end24.dev_name.exit51_crit_edge ]
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %retval.0.i50, i32 noundef %call14) #11
  br label %tx_ret

tx_ret:                                           ; preds = %dev_name.exit51, %do.body17.tx_ret_crit_edge, %if.end6.tx_ret_crit_edge, %dev_name.exit, %do.body.tx_ret_crit_edge
  %ret.0 = phi i32 [ %call14, %dev_name.exit51 ], [ %call14, %do.body17.tx_ret_crit_edge ], [ -19, %dev_name.exit ], [ -19, %do.body.tx_ret_crit_edge ], [ 0, %if.end6.tx_ret_crit_edge ]
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
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %do.end10

if.then:                                          ; preds = %entry
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  %priv1 = getelementptr inbounds %struct.if_usb_card, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then.if.end12_crit_edge, label %land.lhs.true

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

land.lhs.true:                                    ; preds = %if.then
  %dnld_sent = getelementptr inbounds %struct.lbs_private, ptr %5, i32 0, i32 58
  %6 = ptrtoint ptr %dnld_sent to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dnld_sent, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp5.not = icmp eq i8 %7, 3
  br i1 %cmp5.not, label %land.lhs.true.if.end12_crit_edge, label %if.then7

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lbs_host_to_card_done(ptr noundef nonnull %5) #7
  br label %if.end12

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %1) #11
  br label %if.end12

if.end12:                                         ; preds = %do.end10, %if.then7, %land.lhs.true.if.end12_crit_edge, %if.then.if.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lbs_host_to_card_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #1

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
declare dso_local i32 @lbs_start_card(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbs_host_sleep_cfg(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__if_usb_submit_rx_urb(ptr noundef %cardp, ptr noundef %callbackfn) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 1578, i32 noundef 2592) #7
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #11
  br label %rx_ret

if.end:                                           ; preds = %entry
  %rx_skb = getelementptr inbounds %struct.if_usb_card, ptr %cardp, i32 0, i32 5
  %0 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i.i, ptr %rx_skb, align 4
  %rx_urb = getelementptr inbounds %struct.if_usb_card, ptr %cardp, i32 0, i32 2
  %1 = ptrtoint ptr %rx_urb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rx_urb, align 4
  %3 = ptrtoint ptr %cardp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cardp, align 4
  %ep_in = getelementptr inbounds %struct.if_usb_card, ptr %cardp, i32 0, i32 6
  %5 = ptrtoint ptr %ep_in to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ep_in, align 4
  %conv = zext i8 %6 to i32
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %4, align 8
  %shl.i = shl i32 %8, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or4 = or i32 %or.i, -1073741696
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 2
  %dev1.i = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 8
  %11 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %4, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 10
  %12 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or4, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 14
  %13 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 19
  %14 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1578, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 28
  %15 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %callbackfn, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 27
  %16 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %cardp, ptr %context4.i, align 4
  %17 = load ptr, ptr %rx_urb, align 4
  %call9 = tail call i32 @usb_submit_urb(ptr noundef %17, i32 noundef 2592) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end.rx_ret_crit_edge, label %do.body12

if.end.rx_ret_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rx_ret

do.body12:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %18 = load i32, ptr @lbs_debug, align 4
  %and = and i32 %18, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %do.body12.do.end24_crit_edge, label %do.end17

do.body12.do.end24_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end24

do.end17:                                         ; preds = %do.body12
  %19 = ptrtoint ptr %cardp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cardp, align 4
  %init_name.i = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 15, i32 3
  %21 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end17.dev_name.exit_crit_edge

do.end17.dev_name.exit_crit_edge:                 ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 15
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end17.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %24, %if.end.i ], [ %22, %do.end17.dev_name.exit_crit_edge ]
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %retval.0.i, i32 noundef %call9) #11
  br label %do.end24

do.end24:                                         ; preds = %dev_name.exit, %do.body12.do.end24_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #7
  %25 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %rx_skb, align 4
  br label %rx_ret

rx_ret:                                           ; preds = %do.end24, %if.end.rx_ret_crit_edge, %do.end
  %ret.0 = phi i32 [ -1, %do.end24 ], [ -1, %do.end ], [ 0, %if.end.rx_ret_crit_edge ]
  ret i32 %ret.0
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
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end6, label %do.body

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %6 = load i32, ptr @lbs_debug, align 4
  %and = and i32 %6, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %do.body.do.end5_crit_edge, label %do.end

do.body.do.end5_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %do.body
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %init_name.i = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15, i32 3
  %9 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %12, %if.end.i ], [ %10, %do.end.dev_name.exit_crit_edge ]
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %retval.0.i) #11
  br label %do.end5

do.end5:                                          ; preds = %dev_name.exit, %do.body.do.end5_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #7
  br label %cleanup

if.end6:                                          ; preds = %entry
  %fwdnldover = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 19
  %13 = ptrtoint ptr %fwdnldover to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %fwdnldover, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool7.not = icmp eq i8 %14, 0
  br i1 %tobool7.not, label %if.end35, label %if.then8

if.then8:                                         ; preds = %if.end6
  %data = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 19
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 2
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -822415426, i32 %18)
  %cmp10 = icmp eq i32 %18, -822415426
  br i1 %cmp10, label %land.lhs.true, label %if.then8.do.body19_crit_edge

if.then8.do.body19_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body19

land.lhs.true:                                    ; preds = %if.then8
  %arrayidx11 = getelementptr i8, ptr %16, i32 6
  %19 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306368, i32 %20)
  %cmp12 = icmp eq i32 %20, 805306368
  br i1 %cmp12, label %do.end16, label %land.lhs.true.do.body19_crit_edge

land.lhs.true.do.body19_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body19

do.end16:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78) #11
  %fw_wq = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 14
  tail call void @__wake_up(ptr noundef %fw_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %if.end34

do.body19:                                        ; preds = %land.lhs.true.do.body19_crit_edge, %if.then8.do.body19_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %21 = load i32, ptr @lbs_debug, align 4
  %and20 = and i32 %21, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %cmp21.not = icmp eq i32 %and20, 0
  br i1 %cmp21.not, label %do.body19.do.end32_crit_edge, label %do.end25

do.body19.do.end32_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end32

do.end25:                                         ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  %22 = tail call i32 @llvm.bswap.i32(i32 %18)
  %arrayidx28 = getelementptr i8, ptr %16, i32 6
  %23 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx28, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %22, i32 noundef %25) #11
  br label %do.end32

do.end32:                                         ; preds = %do.end25, %do.body19.do.end32_crit_edge
  %call.i = tail call fastcc i32 @__if_usb_submit_rx_urb(ptr noundef %1, ptr noundef nonnull @if_usb_receive_fwload) #7
  br label %if.end34

if.end34:                                         ; preds = %do.end32, %do.end16
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #7
  br label %cleanup

if.end35:                                         ; preds = %if.end6
  %bootcmdresp36 = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 8
  %26 = ptrtoint ptr %bootcmdresp36 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bootcmdresp36, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %27)
  %cmp37 = icmp slt i8 %27, 1
  %data40 = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 19
  %28 = ptrtoint ptr %data40 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data40, align 4
  %add.ptr41 = getelementptr i8, ptr %29, i32 2
  br i1 %cmp37, label %if.then39, label %if.end154

if.then39:                                        ; preds = %if.end35
  %30 = ptrtoint ptr %add.ptr41 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %bootcmdresp.sroa.0.0.copyload = load i32, ptr %add.ptr41, align 1
  %bootcmdresp.sroa.9.0.add.ptr41.sroa_idx = getelementptr i8, ptr %29, i32 6
  %31 = ptrtoint ptr %bootcmdresp.sroa.9.0.add.ptr41.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %31)
  %bootcmdresp.sroa.9.0.copyload = load i8, ptr %bootcmdresp.sroa.9.0.add.ptr41.sroa_idx, align 1
  %bootcmdresp.sroa.14.0.add.ptr41.sroa_idx = getelementptr i8, ptr %29, i32 7
  %32 = ptrtoint ptr %bootcmdresp.sroa.14.0.add.ptr41.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %32)
  %bootcmdresp.sroa.14.0.copyload = load i8, ptr %bootcmdresp.sroa.14.0.add.ptr41.sroa_idx, align 1
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %bcdDevice = getelementptr inbounds %struct.usb_device, ptr %34, i32 0, i32 16, i32 9
  %35 = ptrtoint ptr %bcdDevice to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %bcdDevice, align 4
  %37 = tail call i16 @llvm.bswap.i16(i16 %36)
  call void @__sanitizer_cov_trace_const_cmp2(i16 12550, i16 %37)
  %cmp44 = icmp ult i16 %37, 12550
  br i1 %cmp44, label %if.then46, label %if.end65

if.then46:                                        ; preds = %if.then39
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #7
  %call.i260 = tail call fastcc i32 @__if_usb_submit_rx_urb(ptr noundef %1, ptr noundef nonnull @if_usb_receive_fwload) #7
  %38 = ptrtoint ptr %bootcmdresp36 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %bootcmdresp36, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %39 = load i32, ptr @lbs_debug, align 4
  %and50 = and i32 %39, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %cmp51.not = icmp eq i32 %and50, 0
  br i1 %cmp51.not, label %if.then46.cleanup_crit_edge, label %do.end56

if.then46.cleanup_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end56:                                         ; preds = %if.then46
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %init_name.i261 = getelementptr inbounds %struct.usb_device, ptr %41, i32 0, i32 15, i32 3
  %42 = ptrtoint ptr %init_name.i261 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %init_name.i261, align 8
  %tobool.not.i262 = icmp eq ptr %43, null
  br i1 %tobool.not.i262, label %if.end.i263, label %do.end56.dev_name.exit265_crit_edge

do.end56.dev_name.exit265_crit_edge:              ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit265

if.end.i263:                                      ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #9
  %dev59 = getelementptr inbounds %struct.usb_device, ptr %41, i32 0, i32 15
  %44 = ptrtoint ptr %dev59 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev59, align 4
  br label %dev_name.exit265

dev_name.exit265:                                 ; preds = %if.end.i263, %do.end56.dev_name.exit265_crit_edge
  %retval.0.i264 = phi ptr [ %45, %if.end.i263 ], [ %43, %do.end56.dev_name.exit265_crit_edge ]
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef %retval.0.i264) #11
  br label %cleanup

if.end65:                                         ; preds = %if.then39
  %46 = zext i32 %bootcmdresp.sroa.0.0.copyload to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %bootcmdresp.sroa.0.0.copyload, label %do.end93 [
    i32 1297241676, label %if.else98
    i32 -822473232, label %if.end65.if.then79_crit_edge
    i32 -557797954, label %if.end65.if.then79_crit_edge285
    i32 -822415426, label %if.end65.if.then79_crit_edge286
  ]

if.end65.if.then79_crit_edge286:                  ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then79

if.end65.if.then79_crit_edge285:                  ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then79

if.end65.if.then79_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then79

if.then79:                                        ; preds = %if.end65.if.then79_crit_edge, %if.end65.if.then79_crit_edge285, %if.end65.if.then79_crit_edge286
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool81.not = icmp eq i8 %27, 0
  br i1 %tobool81.not, label %do.end85, label %if.then79.if.end88_crit_edge

if.then79.if.end88_crit_edge:                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

do.end85:                                         ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #9
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #11
  br label %if.end88

if.end88:                                         ; preds = %do.end85, %if.then79.if.end88_crit_edge
  %47 = ptrtoint ptr %bootcmdresp36 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -1, ptr %bootcmdresp36, align 2
  br label %if.end152

do.end93:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  %48 = tail call i32 @llvm.bswap.i32(i32 %bootcmdresp.sroa.0.0.copyload)
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i32 noundef %48) #11
  br label %if.end152

if.else98:                                        ; preds = %if.end65
  %49 = zext i8 %bootcmdresp.sroa.9.0.copyload to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.132)
  switch i8 %bootcmdresp.sroa.9.0.copyload, label %do.end115 [
    i8 1, label %if.else98.if.else120_crit_edge
    i8 4, label %if.else98.if.else120_crit_edge287
    i8 3, label %if.else98.if.else120_crit_edge288
  ]

if.else98.if.else120_crit_edge288:                ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else120

if.else98.if.else120_crit_edge287:                ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else120

if.else98.if.else120_crit_edge:                   ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else120

do.end115:                                        ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #9
  %conv99 = zext i8 %bootcmdresp.sroa.9.0.copyload to i32
  %call119 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, i32 noundef %conv99) #11
  br label %if.end152

if.else120:                                       ; preds = %if.else98.if.else120_crit_edge, %if.else98.if.else120_crit_edge287, %if.else98.if.else120_crit_edge288
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bootcmdresp.sroa.14.0.copyload)
  %cmp122.not = icmp eq i8 %bootcmdresp.sroa.14.0.copyload, 1
  br i1 %cmp122.not, label %if.else132, label %do.end127

do.end127:                                        ; preds = %if.else120
  call void @__sanitizer_cov_trace_pc() #9
  %conv121 = zext i8 %bootcmdresp.sroa.14.0.copyload to i32
  %call131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, i32 noundef %conv121) #11
  br label %if.end152

if.else132:                                       ; preds = %if.else120
  %50 = ptrtoint ptr %bootcmdresp36 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %bootcmdresp36, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %51 = load i32, ptr @lbs_debug, align 4
  %and135 = and i32 %51, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %cmp136.not = icmp eq i32 %and135, 0
  br i1 %cmp136.not, label %if.else132.if.end152_crit_edge, label %do.end141

if.else132.if.end152_crit_edge:                   ; preds = %if.else132
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end152

do.end141:                                        ; preds = %if.else132
  %init_name.i266 = getelementptr inbounds %struct.usb_device, ptr %34, i32 0, i32 15, i32 3
  %52 = ptrtoint ptr %init_name.i266 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %init_name.i266, align 8
  %tobool.not.i267 = icmp eq ptr %53, null
  br i1 %tobool.not.i267, label %if.end.i268, label %do.end141.dev_name.exit270_crit_edge

do.end141.dev_name.exit270_crit_edge:             ; preds = %do.end141
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit270

if.end.i268:                                      ; preds = %do.end141
  call void @__sanitizer_cov_trace_pc() #9
  %dev144 = getelementptr inbounds %struct.usb_device, ptr %34, i32 0, i32 15
  %54 = ptrtoint ptr %dev144 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev144, align 4
  br label %dev_name.exit270

dev_name.exit270:                                 ; preds = %if.end.i268, %do.end141.dev_name.exit270_crit_edge
  %retval.0.i269 = phi ptr [ %55, %if.end.i268 ], [ %53, %do.end141.dev_name.exit270_crit_edge ]
  %call146 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef %retval.0.i269) #11
  br label %if.end152

if.end152:                                        ; preds = %dev_name.exit270, %if.else132.if.end152_crit_edge, %do.end127, %do.end115, %do.end93, %if.end88
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #7
  %call.i271 = tail call fastcc i32 @__if_usb_submit_rx_urb(ptr noundef %1, ptr noundef nonnull @if_usb_receive_fwload) #7
  br label %cleanup

if.end154:                                        ; preds = %if.end35
  %call157 = tail call ptr @kmemdup(ptr noundef %add.ptr41, i32 noundef 8, i32 noundef 2592) #7
  %tobool158.not = icmp eq ptr %call157, null
  br i1 %tobool158.not, label %do.body160, label %if.end176

do.body160:                                       ; preds = %if.end154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %56 = load i32, ptr @lbs_debug, align 4
  %and161 = and i32 %56, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161)
  %cmp162.not = icmp eq i32 %and161, 0
  br i1 %cmp162.not, label %do.body160.do.end175_crit_edge, label %do.end167

do.body160.do.end175_crit_edge:                   ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end175

do.end167:                                        ; preds = %do.body160
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  %init_name.i272 = getelementptr inbounds %struct.usb_device, ptr %58, i32 0, i32 15, i32 3
  %59 = ptrtoint ptr %init_name.i272 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %init_name.i272, align 8
  %tobool.not.i273 = icmp eq ptr %60, null
  br i1 %tobool.not.i273, label %if.end.i274, label %do.end167.dev_name.exit276_crit_edge

do.end167.dev_name.exit276_crit_edge:             ; preds = %do.end167
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit276

if.end.i274:                                      ; preds = %do.end167
  call void @__sanitizer_cov_trace_pc() #9
  %dev170 = getelementptr inbounds %struct.usb_device, ptr %58, i32 0, i32 15
  %61 = ptrtoint ptr %dev170 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev170, align 4
  br label %dev_name.exit276

dev_name.exit276:                                 ; preds = %if.end.i274, %do.end167.dev_name.exit276_crit_edge
  %retval.0.i275 = phi ptr [ %62, %if.end.i274 ], [ %60, %do.end167.dev_name.exit276_crit_edge ]
  %call172 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef %retval.0.i275) #11
  br label %do.end175

do.end175:                                        ; preds = %dev_name.exit276, %do.body160.do.end175_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #7
  br label %cleanup

if.end176:                                        ; preds = %if.end154
  %63 = ptrtoint ptr %call157 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %call157, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool178.not = icmp eq i32 %64, 0
  br i1 %tobool178.not, label %if.end176.if.end204_crit_edge, label %do.body187

if.end176.if.end204_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end204

do.body187:                                       ; preds = %if.end176
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %65 = load i32, ptr @lbs_debug, align 4
  %and188 = and i32 %65, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and188)
  %cmp189.not = icmp eq i32 %and188, 0
  br i1 %cmp189.not, label %do.body187.if.end204_crit_edge, label %do.end194

do.body187.if.end204_crit_edge:                   ; preds = %do.body187
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end204

do.end194:                                        ; preds = %do.body187
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 4
  %init_name.i277 = getelementptr inbounds %struct.usb_device, ptr %67, i32 0, i32 15, i32 3
  %68 = ptrtoint ptr %init_name.i277 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %init_name.i277, align 8
  %tobool.not.i278 = icmp eq ptr %69, null
  br i1 %tobool.not.i278, label %if.end.i279, label %do.end194.dev_name.exit281_crit_edge

do.end194.dev_name.exit281_crit_edge:             ; preds = %do.end194
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit281

if.end.i279:                                      ; preds = %do.end194
  call void @__sanitizer_cov_trace_pc() #9
  %dev197 = getelementptr inbounds %struct.usb_device, ptr %67, i32 0, i32 15
  %70 = ptrtoint ptr %dev197 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev197, align 4
  br label %dev_name.exit281

dev_name.exit281:                                 ; preds = %if.end.i279, %do.end194.dev_name.exit281_crit_edge
  %retval.0.i280 = phi ptr [ %71, %if.end.i279 ], [ %69, %do.end194.dev_name.exit281_crit_edge ]
  %call199 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef %retval.0.i280) #11
  br label %if.end204

if.end204:                                        ; preds = %dev_name.exit281, %do.body187.if.end204_crit_edge, %if.end176.if.end204_crit_edge
  %.sink = phi i8 [ 1, %if.end176.if.end204_crit_edge ], [ 0, %dev_name.exit281 ], [ 0, %do.body187.if.end204_crit_edge ]
  %CRC_OK203 = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 18
  %72 = ptrtoint ptr %CRC_OK203 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %.sink, ptr %CRC_OK203, align 4
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #7
  %fw_timeout = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %73 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %73, 500
  %call205 = tail call i32 @mod_timer(ptr noundef %fw_timeout, i32 noundef %add) #7
  %fwfinalblk = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 20
  %74 = ptrtoint ptr %fwfinalblk to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %fwfinalblk, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool206.not = icmp eq i8 %75, 0
  br i1 %tobool206.not, label %if.end209, label %if.then207

if.then207:                                       ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %fwdnldover to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %fwdnldover, align 1
  br label %exit

if.end209:                                        ; preds = %if.end204
  %ep_out_buf.i = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 10
  %77 = ptrtoint ptr %ep_out_buf.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ep_out_buf.i, align 4
  %fw.i = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 12
  %79 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %fw.i, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %data.i, align 4
  %CRC_OK.i = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 18
  %83 = ptrtoint ptr %CRC_OK.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %CRC_OK.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool.not.i282 = icmp eq i8 %84, 0
  br i1 %tobool.not.i282, label %if.then.i, label %if.end209.do.end.i_crit_edge

if.end209.do.end.i_crit_edge:                     ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.then.i:                                        ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #9
  %fwlastblksent.i = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 17
  %85 = ptrtoint ptr %fwlastblksent.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %fwlastblksent.i, align 4
  %totalbytes.i = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 16
  %87 = ptrtoint ptr %totalbytes.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %totalbytes.i, align 4
  %fwseqnum.i = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 15
  %88 = ptrtoint ptr %fwseqnum.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %fwseqnum.i, align 4
  %dec.i = add i32 %89, -1
  store i32 %dec.i, ptr %fwseqnum.i, align 4
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end209.do.end.i_crit_edge
  %totalbytes1.i = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 16
  %90 = ptrtoint ptr %totalbytes1.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %totalbytes1.i, align 4
  %arrayidx.i = getelementptr i8, ptr %82, i32 %91
  %92 = call ptr @memcpy(ptr %78, ptr %arrayidx.i, i32 16)
  %93 = load i32, ptr %totalbytes1.i, align 4
  %fwlastblksent3.i = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 17
  %94 = ptrtoint ptr %fwlastblksent3.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %fwlastblksent3.i, align 4
  %add.i = add i32 %93, 16
  store i32 %add.i, ptr %totalbytes1.i, align 4
  %data5.i = getelementptr inbounds %struct.fwdata, ptr %78, i32 0, i32 2
  %arrayidx7.i = getelementptr i8, ptr %82, i32 %add.i
  %datalength.i = getelementptr inbounds %struct.fwheader, ptr %78, i32 0, i32 2
  %95 = ptrtoint ptr %datalength.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %datalength.i, align 4
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #7
  %98 = call ptr @memcpy(ptr %data5.i, ptr %arrayidx7.i, i32 %97)
  %fwseqnum12.i = getelementptr inbounds %struct.if_usb_card, ptr %1, i32 0, i32 15
  %99 = ptrtoint ptr %fwseqnum12.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %fwseqnum12.i, align 4
  %inc.i = add i32 %100, 1
  store i32 %inc.i, ptr %fwseqnum12.i, align 4
  %101 = tail call i32 @llvm.bswap.i32(i32 %inc.i) #7
  %seqnum.i = getelementptr inbounds %struct.fwdata, ptr %78, i32 0, i32 1
  %102 = ptrtoint ptr %seqnum.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %seqnum.i, align 4
  %103 = ptrtoint ptr %datalength.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %datalength.i, align 4
  %105 = tail call i32 @llvm.bswap.i32(i32 %104) #7
  %106 = ptrtoint ptr %totalbytes1.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %totalbytes1.i, align 4
  %add16.i = add i32 %107, %105
  store i32 %add16.i, ptr %totalbytes1.i, align 4
  %108 = ptrtoint ptr %ep_out_buf.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ep_out_buf.i, align 4
  %110 = ptrtoint ptr %datalength.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %datalength.i, align 4
  %112 = tail call i32 @llvm.bswap.i32(i32 %111) #7
  %113 = trunc i32 %112 to i16
  %conv.i = add i16 %113, 20
  %call.i283 = tail call fastcc i32 @usb_tx_block(ptr noundef %1, ptr noundef %109, i16 noundef zeroext %conv.i) #7
  %114 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %115)
  %cond.i = icmp eq i32 %115, 67108864
  br i1 %cond.i, label %do.end40.i, label %do.end.i.exit_crit_edge

do.end.i.exit_crit_edge:                          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

do.end40.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %116 = ptrtoint ptr %fwfinalblk to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 1, ptr %fwfinalblk, align 2
  br label %exit

exit:                                             ; preds = %do.end40.i, %do.end.i.exit_crit_edge, %if.then207
  %call.i284 = tail call fastcc i32 @__if_usb_submit_rx_urb(ptr noundef %1, ptr noundef nonnull @if_usb_receive_fwload) #7
  tail call void @kfree(ptr noundef nonnull %call157) #7
  br label %cleanup

cleanup:                                          ; preds = %exit, %do.end175, %if.end152, %dev_name.exit265, %if.then46.cleanup_crit_edge, %if.end34, %do.end5
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
  %add.ptr = getelementptr i8, ptr %9, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %status28 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %10 = ptrtoint ptr %status28 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool29.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool29.not, label %if.end10, label %do.body

do.body:                                          ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %12 = load i32, ptr @lbs_debug, align 4
  %and = and i32 %12, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %do.body.do.end9_crit_edge, label %do.end

do.body.do.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.end:                                           ; preds = %do.body
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %init_name.i = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 15, i32 3
  %15 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 15
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %18, %if.end.i ], [ %16, %do.end.dev_name.exit_crit_edge ]
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef %retval.0.i, i32 noundef %11) #11
  br label %do.end9

do.end9:                                          ; preds = %dev_name.exit, %do.body.do.end9_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #7
  br label %setup_for_next

if.end10:                                         ; preds = %if.then
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %22 = load i32, ptr @lbs_debug, align 4
  %and14 = and i32 %22, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %cmp15.not = icmp eq i32 %and14, 0
  br i1 %cmp15.not, label %if.end10.if.end32_crit_edge, label %do.end19

if.end10.if.end32_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

do.end19:                                         ; preds = %if.end10
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %init_name.i112 = getelementptr inbounds %struct.usb_device, ptr %24, i32 0, i32 15, i32 3
  %25 = ptrtoint ptr %init_name.i112 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_name.i112, align 8
  %tobool.not.i113 = icmp eq ptr %26, null
  br i1 %tobool.not.i113, label %if.end.i114, label %do.end19.dev_name.exit116_crit_edge

do.end19.dev_name.exit116_crit_edge:              ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit116

if.end.i114:                                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #9
  %dev22 = getelementptr inbounds %struct.usb_device, ptr %24, i32 0, i32 15
  %27 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev22, align 4
  br label %dev_name.exit116

dev_name.exit116:                                 ; preds = %if.end.i114, %do.end19.dev_name.exit116_crit_edge
  %retval.0.i115 = phi ptr [ %28, %if.end.i114 ], [ %26, %do.end19.dev_name.exit116_crit_edge ]
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef %retval.0.i115, i32 noundef %7, i32 noundef %21) #11
  br label %if.end32

if.else:                                          ; preds = %entry
  br i1 %tobool29.not, label %if.else.do.body58_crit_edge, label %if.then30

if.else.do.body58_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body58

if.then30:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #7
  br label %cleanup

if.end32:                                         ; preds = %dev_name.exit116, %if.end10.if.end32_crit_edge
  %29 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %21, label %if.end32.do.body58_crit_edge [
    i32 -1095909154, label %sw.bb
    i32 -267519282, label %sw.bb33
    i32 -1091568946, label %sw.bb34
  ]

if.end32.do.body58_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body58

sw.bb:                                            ; preds = %if.end32
  %30 = add i32 %7, -1583
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1553, i32 %30)
  %31 = icmp ult i32 %30, -1553
  br i1 %31, label %do.body.i, label %if.end7.i

do.body.i:                                        ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %32 = load i32, ptr @lbs_debug, align 4
  %and.i = and i32 %32, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp2.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp2.not.i, label %do.body.i.do.end6.i_crit_edge, label %do.end.i

do.body.i.do.end6.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6.i

do.end.i:                                         ; preds = %do.body.i
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %init_name.i.i = getelementptr inbounds %struct.usb_device, ptr %34, i32 0, i32 15, i32 3
  %35 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.dev_name.exit.i_crit_edge

do.end.i.dev_name.exit.i_crit_edge:               ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %34, i32 0, i32 15
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.end.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %38, %if.end.i.i ], [ %36, %do.end.i.dev_name.exit.i_crit_edge ]
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef %retval.0.i.i) #11
  br label %do.end6.i

do.end6.i:                                        ; preds = %dev_name.exit.i, %do.body.i.do.end6.i_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #7
  br label %setup_for_next

if.end7.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data, align 4
  %add.ptr.i.i = getelementptr i8, ptr %40, i32 2
  store ptr %add.ptr.i.i, ptr %data, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 16
  %41 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %42, i32 2
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call8.i = tail call ptr @skb_put(ptr noundef %3, i32 noundef %7) #7
  %call9.i = tail call ptr @skb_pull(ptr noundef %3, i32 noundef 4) #7
  %call10.i = tail call i32 @lbs_process_rxed_packet(ptr noundef %5, ptr noundef %3) #7
  br label %setup_for_next

sw.bb33:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %7)
  %cmp.i = icmp sgt i32 %7, 2048
  br i1 %cmp.i, label %do.body.i118, label %do.body9.i

do.body.i118:                                     ; preds = %sw.bb33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %43 = load i32, ptr @lbs_debug, align 4
  %and.i117 = and i32 %43, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i117)
  %cmp1.not.i = icmp eq i32 %and.i117, 0
  br i1 %cmp1.not.i, label %do.body.i118.do.end6.i126_crit_edge, label %do.end.i121

do.body.i118.do.end6.i126_crit_edge:              ; preds = %do.body.i118
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6.i126

do.end.i121:                                      ; preds = %do.body.i118
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %init_name.i.i119 = getelementptr inbounds %struct.usb_device, ptr %45, i32 0, i32 15, i32 3
  %46 = ptrtoint ptr %init_name.i.i119 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %init_name.i.i119, align 8
  %tobool.not.i.i120 = icmp eq ptr %47, null
  br i1 %tobool.not.i.i120, label %if.end.i.i123, label %do.end.i121.dev_name.exit.i125_crit_edge

do.end.i121.dev_name.exit.i125_crit_edge:         ; preds = %do.end.i121
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i125

if.end.i.i123:                                    ; preds = %do.end.i121
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i122 = getelementptr inbounds %struct.usb_device, ptr %45, i32 0, i32 15
  %48 = ptrtoint ptr %dev.i122 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i122, align 4
  br label %dev_name.exit.i125

dev_name.exit.i125:                               ; preds = %if.end.i.i123, %do.end.i121.dev_name.exit.i125_crit_edge
  %retval.0.i.i124 = phi ptr [ %49, %if.end.i.i123 ], [ %47, %do.end.i121.dev_name.exit.i125_crit_edge ]
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef %retval.0.i.i124) #11
  br label %do.end6.i126

do.end6.i126:                                     ; preds = %dev_name.exit.i125, %do.body.i118.do.end6.i126_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #7
  br label %setup_for_next

do.body9.i:                                       ; preds = %sw.bb33
  %driver_lock.i = getelementptr inbounds %struct.lbs_private, ptr %5, i32 0, i32 87
  %call13.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %driver_lock.i) #7
  %resp_idx.i = getelementptr inbounds %struct.lbs_private, ptr %5, i32 0, i32 66
  %50 = ptrtoint ptr %resp_idx.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %resp_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %cmp19.i = icmp eq i8 %51, 0
  %idxprom.i = zext i1 %cmp19.i to i32
  %arrayidx.i = getelementptr %struct.lbs_private, ptr %5, i32 0, i32 68, i32 %idxprom.i
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i127 = icmp eq i32 %53, 0
  br i1 %tobool.not.i127, label %do.end34.i, label %do.body26.i, !prof !249

do.body26.i:                                      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/marvell/libertas/if_usb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 635, 0\0A.popsection", ""() #7, !srcloc !250
  unreachable

do.end34.i:                                       ; preds = %do.body9.i
  %conv21.i = zext i1 %cmp19.i to i8
  %sub.i = add i32 %7, -4
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %sub.i, ptr %arrayidx.i, align 4
  %arrayidx39.i = getelementptr %struct.lbs_private, ptr %5, i32 0, i32 67, i32 %idxprom.i
  %add.ptr.i = getelementptr i8, ptr %9, i32 6
  %55 = call ptr @memcpy(ptr %arrayidx39.i, ptr %add.ptr.i, i32 %sub.i)
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #7
  tail call void @lbs_notify_command_response(ptr noundef %5, i8 noundef zeroext %conv21.i) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %driver_lock.i, i32 noundef %call13.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %56 = load i32, ptr @lbs_debug, align 4
  %and45.i = and i32 %56, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %cmp46.not.i = icmp eq i32 %and45.i, 0
  br i1 %cmp46.not.i, label %do.end34.i.setup_for_next_crit_edge, label %do.end51.i

do.end34.i.setup_for_next_crit_edge:              ; preds = %do.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %setup_for_next

do.end51.i:                                       ; preds = %do.end34.i
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  %init_name.i75.i = getelementptr inbounds %struct.usb_device, ptr %58, i32 0, i32 15, i32 3
  %59 = ptrtoint ptr %init_name.i75.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %init_name.i75.i, align 8
  %tobool.not.i76.i = icmp eq ptr %60, null
  br i1 %tobool.not.i76.i, label %if.end.i77.i, label %do.end51.i.dev_name.exit79.i_crit_edge

do.end51.i.dev_name.exit79.i_crit_edge:           ; preds = %do.end51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit79.i

if.end.i77.i:                                     ; preds = %do.end51.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev54.i = getelementptr inbounds %struct.usb_device, ptr %58, i32 0, i32 15
  %61 = ptrtoint ptr %dev54.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev54.i, align 4
  br label %dev_name.exit79.i

dev_name.exit79.i:                                ; preds = %if.end.i77.i, %do.end51.i.dev_name.exit79.i_crit_edge
  %retval.0.i78.i = phi ptr [ %62, %if.end.i77.i ], [ %60, %do.end51.i.dev_name.exit79.i_crit_edge ]
  %call56.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef %retval.0.i78.i) #11
  br label %setup_for_next

sw.bb34:                                          ; preds = %if.end32
  %arrayidx35 = getelementptr i8, ptr %9, i32 6
  %63 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx35, align 4
  %65 = tail call i32 @llvm.bswap.i32(i32 %64)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %66 = load i32, ptr @lbs_debug, align 4
  %and37 = and i32 %66, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %cmp38.not = icmp eq i32 %and37, 0
  br i1 %cmp38.not, label %sw.bb34.do.end50_crit_edge, label %do.end42

sw.bb34.do.end50_crit_edge:                       ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end50

do.end42:                                         ; preds = %sw.bb34
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 4
  %init_name.i128 = getelementptr inbounds %struct.usb_device, ptr %68, i32 0, i32 15, i32 3
  %69 = ptrtoint ptr %init_name.i128 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %init_name.i128, align 8
  %tobool.not.i129 = icmp eq ptr %70, null
  br i1 %tobool.not.i129, label %if.end.i130, label %do.end42.dev_name.exit132_crit_edge

do.end42.dev_name.exit132_crit_edge:              ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit132

if.end.i130:                                      ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #9
  %dev45 = getelementptr inbounds %struct.usb_device, ptr %68, i32 0, i32 15
  %71 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev45, align 4
  br label %dev_name.exit132

dev_name.exit132:                                 ; preds = %if.end.i130, %do.end42.dev_name.exit132_crit_edge
  %retval.0.i131 = phi ptr [ %72, %if.end.i130 ], [ %70, %do.end42.dev_name.exit132_crit_edge ]
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef %retval.0.i131, i32 noundef %65) #11
  br label %do.end50

do.end50:                                         ; preds = %dev_name.exit132, %sw.bb34.do.end50_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %65)
  %tobool52.not = icmp ult i32 %65, 65536
  br i1 %tobool52.not, label %if.else55, label %if.then53

if.then53:                                        ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #9
  %shr = lshr i32 %65, 16
  tail call void @lbs_send_tx_feedback(ptr noundef %5, i32 noundef %shr) #7
  br label %setup_for_next

if.else55:                                        ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #9
  %and56 = and i32 %65, 255
  tail call void @lbs_queue_event(ptr noundef %5, i32 noundef %and56) #7
  br label %setup_for_next

do.body58:                                        ; preds = %if.end32.do.body58_crit_edge, %if.else.do.body58_crit_edge
  %recvtype.0140 = phi i32 [ %21, %if.end32.do.body58_crit_edge ], [ 0, %if.else.do.body58_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lbs_debug to i32))
  %73 = load i32, ptr @lbs_debug, align 4
  %and59 = and i32 %73, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %cmp60.not = icmp eq i32 %and59, 0
  br i1 %cmp60.not, label %do.body58.do.end72_crit_edge, label %do.end64

do.body58.do.end72_crit_edge:                     ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end72

do.end64:                                         ; preds = %do.body58
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %1, align 4
  %init_name.i133 = getelementptr inbounds %struct.usb_device, ptr %75, i32 0, i32 15, i32 3
  %76 = ptrtoint ptr %init_name.i133 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %init_name.i133, align 8
  %tobool.not.i134 = icmp eq ptr %77, null
  br i1 %tobool.not.i134, label %if.end.i135, label %do.end64.dev_name.exit137_crit_edge

do.end64.dev_name.exit137_crit_edge:              ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit137

if.end.i135:                                      ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #9
  %dev67 = getelementptr inbounds %struct.usb_device, ptr %75, i32 0, i32 15
  %78 = ptrtoint ptr %dev67 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev67, align 4
  br label %dev_name.exit137

dev_name.exit137:                                 ; preds = %if.end.i135, %do.end64.dev_name.exit137_crit_edge
  %retval.0.i136 = phi ptr [ %79, %if.end.i135 ], [ %77, %do.end64.dev_name.exit137_crit_edge ]
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef %retval.0.i136, i32 noundef %recvtype.0140) #11
  br label %do.end72

do.end72:                                         ; preds = %dev_name.exit137, %do.body58.do.end72_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #7
  br label %setup_for_next

setup_for_next:                                   ; preds = %do.end72, %if.else55, %if.then53, %dev_name.exit79.i, %do.end34.i.setup_for_next_crit_edge, %do.end6.i126, %if.end7.i, %do.end6.i, %do.end9
  %call.i = tail call fastcc i32 @__if_usb_submit_rx_urb(ptr noundef %1, ptr noundef nonnull @if_usb_receive) #7
  br label %cleanup

cleanup:                                          ; preds = %setup_for_next, %if.then30
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lbs_send_tx_feedback(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lbs_queue_event(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbs_process_rxed_packet(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lbs_notify_command_response(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__lbs_cmd(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbs_cmd_copyback(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_reset_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lbs_stop_card(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbs_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lbs_resume(ptr noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 116)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 116)
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
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !20, !21, !23, !25, !26, !28, !29, !31, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !143, !144, !145, !146, !148, !149, !150, !152, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !199, !201, !202, !203, !205, !206, !207, !209, !210, !211, !213, !214, !215, !216, !218, !219, !220, !221, !223, !224, !225, !227, !228, !229, !230, !232, !234, !235, !236, !238}
!llvm.module.flags = !{!240, !241, !242, !243, !244, !245, !246, !247}
!llvm.ident = !{!248}

!0 = !{ptr @__UNIQUE_ID_firmware348, !1, !"__UNIQUE_ID_firmware348", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 34, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware349, !3, !"__UNIQUE_ID_firmware349", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 35, i32 1}
!4 = !{ptr @__UNIQUE_ID_firmware350, !5, !"__UNIQUE_ID_firmware350", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 36, i32 1}
!6 = !{ptr @__UNIQUE_ID_firmware351, !7, !"__UNIQUE_ID_firmware351", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 37, i32 1}
!8 = !{ptr @__UNIQUE_ID_firmware352, !9, !"__UNIQUE_ID_firmware352", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 38, i32 1}
!10 = !{ptr @__initcall__kmod_usb8xxx__353_994_if_usb_driver_init6, !11, !"__initcall__kmod_usb8xxx__353_994_if_usb_driver_init6", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 994, i32 1}
!12 = !{ptr @__exitcall_if_usb_driver_exit, !11, !"__exitcall_if_usb_driver_exit", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_description354, !14, !"__UNIQUE_ID_description354", i1 false, i1 false}
!14 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 996, i32 1}
!15 = !{ptr @__UNIQUE_ID_author355, !16, !"__UNIQUE_ID_author355", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 997, i32 1}
!17 = !{ptr @__UNIQUE_ID_file356, !18, !"__UNIQUE_ID_file356", i1 false, i1 false}
!18 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 998, i32 1}
!19 = !{ptr @__UNIQUE_ID_license357, !18, !"__UNIQUE_ID_license357", i1 false, i1 false}
!20 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @if_usb_driver, !22, !"if_usb_driver", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 983, i32 26}
!23 = !{ptr @if_usb_probe.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 210, i32 2}
!25 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @if_usb_probe.__key.2, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 211, i32 2}
!28 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 217, i32 2}
!31 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @if_usb_probe._entry, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @if_usb_probe._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 230, i32 4}
!37 = !{ptr @if_usb_probe._entry.7, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @if_usb_probe._entry_ptr.9, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 231, i32 4}
!41 = !{ptr @if_usb_probe._entry.10, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @if_usb_probe._entry_ptr.12, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 237, i32 4}
!45 = !{ptr @if_usb_probe._entry.13, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @if_usb_probe._entry_ptr.15, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 238, i32 4}
!49 = !{ptr @if_usb_probe._entry.16, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @if_usb_probe._entry_ptr.18, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 242, i32 3}
!53 = !{ptr @if_usb_probe._entry.19, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @if_usb_probe._entry_ptr.21, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 246, i32 3}
!57 = !{ptr @if_usb_probe._entry.22, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @if_usb_probe._entry_ptr.24, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 250, i32 3}
!61 = !{ptr @if_usb_probe._entry.25, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @if_usb_probe._entry_ptr.27, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 255, i32 3}
!65 = !{ptr @if_usb_probe._entry.28, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @if_usb_probe._entry_ptr.30, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 171, i32 3}
!69 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @if_usb_fw_timeo._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @if_usb_fw_timeo._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 173, i32 3}
!74 = !{ptr @if_usb_fw_timeo._entry.33, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @if_usb_fw_timeo._entry_ptr.35, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 732, i32 2}
!78 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @if_usb_host_to_card._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @if_usb_host_to_card._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 733, i32 2}
!83 = !{ptr @if_usb_host_to_card._entry.38, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @if_usb_host_to_card._entry_ptr.40, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 423, i32 3}
!87 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @usb_tx_block._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @usb_tx_block._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 436, i32 3}
!92 = !{ptr @usb_tx_block._entry.43, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @usb_tx_block._entry_ptr.45, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 105, i32 3}
!96 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @if_usb_write_bulk_callback._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @if_usb_write_bulk_callback._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 48, i32 16}
!101 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 49, i32 16}
!103 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 50, i32 16}
!105 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 51, i32 16}
!107 = !{ptr @.str.52, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 52, i32 16}
!109 = !{ptr @.str.53, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 53, i32 16}
!111 = !{ptr @fw_table, !112, !"fw_table", i1 false, i1 false}
!112 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 47, i32 34}
!113 = !{ptr @if_usb_prog_firmware.reset_count, !114, !"reset_count", i1 false, i1 false}
!114 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 824, i32 13}
!115 = !{ptr @.str.54, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 827, i32 3}
!117 = !{ptr @.str.55, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @if_usb_prog_firmware._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @if_usb_prog_firmware._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 849, i32 3}
!122 = !{ptr @if_usb_prog_firmware._entry.56, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @if_usb_prog_firmware._entry_ptr.58, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 903, i32 3}
!126 = !{ptr @if_usb_prog_firmware._entry.59, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @if_usb_prog_firmware._entry_ptr.61, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 909, i32 3}
!130 = !{ptr @if_usb_prog_firmware._entry.62, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @if_usb_prog_firmware._entry_ptr.64, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 811, i32 3}
!134 = !{ptr @.str.66, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @check_fwfile_format._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @check_fwfile_format._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.68, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 813, i32 3}
!139 = !{ptr @check_fwfile_format._entry.67, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @check_fwfile_format._entry_ptr.69, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.70, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 453, i32 3}
!143 = !{ptr @.str.71, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @__if_usb_submit_rx_urb._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @__if_usb_submit_rx_urb._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.73, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 468, i32 3}
!148 = !{ptr @__if_usb_submit_rx_urb._entry.72, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @__if_usb_submit_rx_urb._entry_ptr.74, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.75, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 499, i32 3}
!152 = !{ptr @.str.76, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @if_usb_receive_fwload._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @if_usb_receive_fwload._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.78, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 510, i32 4}
!157 = !{ptr @if_usb_receive_fwload._entry.77, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @if_usb_receive_fwload._entry_ptr.79, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.81, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 513, i32 4}
!161 = !{ptr @if_usb_receive_fwload._entry.80, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @if_usb_receive_fwload._entry_ptr.82, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.84, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 528, i32 4}
!165 = !{ptr @if_usb_receive_fwload._entry.83, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @if_usb_receive_fwload._entry_ptr.85, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.87, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 537, i32 6}
!169 = !{ptr @if_usb_receive_fwload._entry.86, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @if_usb_receive_fwload._entry_ptr.88, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.90, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 540, i32 5}
!173 = !{ptr @if_usb_receive_fwload._entry.89, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @if_usb_receive_fwload._entry_ptr.91, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.93, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 546, i32 4}
!177 = !{ptr @if_usb_receive_fwload._entry.92, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @if_usb_receive_fwload._entry_ptr.94, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.96, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 549, i32 4}
!181 = !{ptr @if_usb_receive_fwload._entry.95, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @if_usb_receive_fwload._entry_ptr.97, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @if_usb_receive_fwload._entry.98, !184, !"_entry", i1 false, i1 false}
!184 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 553, i32 4}
!185 = !{ptr @if_usb_receive_fwload._entry_ptr.99, !184, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.101, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 564, i32 3}
!188 = !{ptr @if_usb_receive_fwload._entry.100, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @if_usb_receive_fwload._entry_ptr.102, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.104, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 575, i32 3}
!192 = !{ptr @if_usb_receive_fwload._entry.103, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @if_usb_receive_fwload._entry_ptr.105, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.106, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 668, i32 4}
!196 = !{ptr @.str.107, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @if_usb_receive._entry, !195, !"_entry", i1 false, i1 false}
!198 = !{ptr @if_usb_receive._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.109, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 676, i32 3}
!201 = !{ptr @if_usb_receive._entry.108, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @if_usb_receive._entry_ptr.110, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.112, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 696, i32 3}
!205 = !{ptr @if_usb_receive._entry.111, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @if_usb_receive._entry_ptr.113, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.115, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 709, i32 3}
!209 = !{ptr @if_usb_receive._entry.114, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @if_usb_receive._entry_ptr.116, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.117, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 605, i32 3}
!213 = !{ptr @.str.118, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @process_cmdtypedata._entry, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @process_cmdtypedata._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.119, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 626, i32 3}
!218 = !{ptr @.str.120, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @process_cmdrequest._entry, !217, !"_entry", i1 false, i1 false}
!220 = !{ptr @process_cmdrequest._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.122, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 644, i32 2}
!223 = !{ptr @process_cmdrequest._entry.121, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @process_cmdrequest._entry_ptr.123, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.124, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 141, i32 3}
!227 = !{ptr @.str.125, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @if_usb_setup_firmware._entry, !226, !"_entry", i1 false, i1 false}
!229 = !{ptr @if_usb_setup_firmware._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.126, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 151, i32 26}
!232 = !{ptr @.str.128, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 155, i32 4}
!234 = !{ptr @if_usb_setup_firmware._entry.127, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @if_usb_setup_firmware._entry_ptr.129, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.130, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 161, i32 9}
!238 = !{ptr @if_usb_table, !239, !"if_usb_table", i1 false, i1 false}
!239 = !{!"../drivers/net/wireless/marvell/libertas/if_usb.c", i32 57, i32 35}
!240 = !{i32 1, !"wchar_size", i32 2}
!241 = !{i32 1, !"min_enum_size", i32 4}
!242 = !{i32 8, !"branch-target-enforcement", i32 0}
!243 = !{i32 8, !"sign-return-address", i32 0}
!244 = !{i32 8, !"sign-return-address-all", i32 0}
!245 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!246 = !{i32 7, !"uwtable", i32 1}
!247 = !{i32 7, !"frame-pointer", i32 2}
!248 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!249 = !{!"branch_weights", i32 2000, i32 1}
!250 = !{i64 2157416944, i64 2157417455, i64 2157416981, i64 2157417037, i64 2157417071, i64 2157417095, i64 2157417136, i64 2157417157, i64 2157417185, i64 2157417219}
