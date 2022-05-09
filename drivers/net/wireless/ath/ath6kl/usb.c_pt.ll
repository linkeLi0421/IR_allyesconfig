; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath6kl/usb.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath6kl/usb.c"
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
%struct.ath6kl_hif_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ath6kl_usb = type { %struct.spinlock, ptr, ptr, [8 x %struct.ath6kl_usb_pipe], ptr, ptr, ptr }
%struct.ath6kl_usb_pipe = type { %struct.list_head, %struct.usb_anchor, i32, i32, i32, i32, i32, i8, i8, ptr, i16, %struct.work_struct, %struct.sk_buff_head, ptr }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.ath6kl_urb_context = type { %struct.list_head, ptr, ptr, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.ath6kl = type <{ ptr, ptr, i32, i32, %struct.ath6kl_bmi, ptr, ptr, ptr, [9 x i32], i32, ptr, i32, ptr, %struct.list_head, %struct.spinlock, i8, [3 x i8], i32, i8, i8, [2 x i8], %struct.spinlock, %struct.semaphore, i8, [3 x i8], %struct.ath6kl_version, i32, i8, [15 x %struct.ath6kl_node_mapping], i8, i8, i8, i8, [3 x i8], ptr, i32, [4 x i32], [4 x i8], [4 x i8], i8, [9 x i8], [2 x i8], i32, %struct.ath6kl_htc_credit_info, i32, i32, i8, [3 x i8], [10 x %struct.ath6kl_sta], i8, [3 x i8], %struct.ath6kl_req_key, %struct.sk_buff_head, i32, i16, [2 x i8], %struct.spinlock, i8, %struct.wmi_ap_mode_stat, [3 x i8], %struct.list_head, i8, [3 x i8], i32, [6 x i8], [2 x i8], %struct.anon.131, %struct.ath6kl_hw, i16, i16, i16, [2 x i8], %struct.wait_queue_head, %struct.ath6kl_mbox_info, [198 x %struct.ath6kl_cookie], i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, [1 x i32], ptr, ptr, i8, i8, [2 x i8], %struct.ath6kl_fw_recovery, %struct.anon.132 }>
%struct.ath6kl_bmi = type { i32, i8, ptr, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.ath6kl_version = type { i32, i32, i32 }
%struct.ath6kl_node_mapping = type { [6 x i8], i8, i8 }
%struct.ath6kl_htc_credit_info = type { i32, i32, %struct.list_head }
%struct.ath6kl_sta = type { i16, [6 x i8], i8, i8, i8, i8, [256 x i8], %struct.sk_buff_head, %struct.spinlock, %struct.list_head, i32, i8, %struct.sk_buff_head, ptr }
%struct.ath6kl_req_key = type { i8, i8, i32, [32 x i8], i8 }
%struct.wmi_ap_mode_stat = type { i32, [11 x %struct.wmi_per_sta_stat] }
%struct.wmi_per_sta_stat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.131 = type { ptr, i32 }
%struct.ath6kl_hw = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i32, %struct.ath6kl_hw_fw, ptr, ptr }
%struct.ath6kl_hw_fw = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ath6kl_mbox_info = type { i32, i32, i32, i32, i32, i32 }
%struct.ath6kl_cookie = type { ptr, i32, %struct.htc_packet, ptr }
%struct.htc_packet = type { %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, %union.anon.128, ptr, ptr, ptr }
%union.anon.128 = type { %struct.htc_tx_packet_info }
%struct.htc_tx_packet_info = type { i16, i32, i8, i32 }
%struct.ath6kl_fw_recovery = type { %struct.work_struct, i32, i32, %struct.timer_list, i32, i8, i8, i8 }
%struct.anon.132 = type { %struct.sk_buff_head, %struct.completion, i8, i32, i32, i32, i32, %struct.anon.133, ptr, i32, i8, i8 }
%struct.anon.133 = type { i32 }
%struct.ath6kl_usb_ctrl_diag_cmd_read = type { i32, i32 }
%struct.ath6kl_usb_ctrl_diag_cmd_write = type { i32, i32, i32, [1 x i32] }
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
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }

@__initcall__kmod_ath6kl_usb__375_1236_ath6kl_usb_driver_init6 = internal global ptr @ath6kl_usb_driver_init, section ".initcall6.init", align 4
@ath6kl_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @ath6kl_usb_probe, ptr @ath6kl_usb_remove, ptr null, ptr @ath6kl_usb_pm_suspend, ptr @ath6kl_usb_pm_resume, ptr null, ptr null, ptr null, ptr @ath6kl_usb_ids, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 96 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_ath6kl_usb_driver_exit = internal global ptr @ath6kl_usb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author376 = internal constant [47 x i8] c"ath6kl_usb.author=Atheros Communications, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description377 = internal constant [69 x i8] c"ath6kl_usb.description=Driver support for Atheros AR600x USB devices\00", section ".modinfo", align 1
@__UNIQUE_ID_file378 = internal constant [59 x i8] c"ath6kl_usb.file=drivers/net/wireless/ath/ath6kl/ath6kl_usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license379 = internal constant [32 x i8] c"ath6kl_usb.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware380 = internal constant [31 x i8] c"ath6kl_usb.firmware=fw.ram.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware381 = internal constant [49 x i8] c"ath6kl_usb.firmware=ath6k/AR6004/hw1.0/bdata.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware382 = internal constant [55 x i8] c"ath6kl_usb.firmware=ath6k/AR6004/hw1.0/bdata.DB132.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware383 = internal constant [31 x i8] c"ath6kl_usb.firmware=fw.ram.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware384 = internal constant [49 x i8] c"ath6kl_usb.firmware=ath6k/AR6004/hw1.1/bdata.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware385 = internal constant [55 x i8] c"ath6kl_usb.firmware=ath6k/AR6004/hw1.1/bdata.DB132.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware386 = internal constant [31 x i8] c"ath6kl_usb.firmware=fw.ram.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware387 = internal constant [49 x i8] c"ath6kl_usb.firmware=ath6k/AR6004/hw1.2/bdata.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware388 = internal constant [49 x i8] c"ath6kl_usb.firmware=ath6k/AR6004/hw1.2/bdata.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware389 = internal constant [50 x i8] c"ath6kl_usb.firmware=ath6k/AR6004/hw1.3/fw.ram.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware390 = internal constant [49 x i8] c"ath6kl_usb.firmware=ath6k/AR6004/hw1.3/bdata.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware391 = internal constant [49 x i8] c"ath6kl_usb.firmware=ath6k/AR6004/hw1.3/bdata.bin\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ath6kl_usb\00", [21 x i8] zeroinitializer }, align 32
@ath6kl_usb_ids = internal constant { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 3315, i16 -27787, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3315, i16 -27788, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vendor_id = %04x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"product_id = %04x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"USB Interface %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"USB 2.0 Host\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"USB 1.1 Host\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to alloc ath6kl core\0A\00", [35 x i8] zeroinitializer }, align 32
@ath6kl_usb_ops = internal constant { %struct.ath6kl_hif_ops, [40 x i8] } { %struct.ath6kl_hif_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ath6kl_usb_cleanup_scatter, ptr @ath6kl_usb_suspend, ptr @ath6kl_usb_resume, ptr @ath6kl_usb_diag_read32, ptr @ath6kl_usb_diag_write32, ptr @ath6kl_usb_bmi_read, ptr @ath6kl_usb_bmi_write, ptr @ath6kl_usb_power_on, ptr @ath6kl_usb_power_off, ptr @ath6kl_usb_stop, ptr @ath6kl_usb_send, ptr @ath6kl_usb_get_default_pipe, ptr @ath6kl_usb_map_service_pipe, ptr @ath6kl_usb_get_free_queue_number }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to init ath6kl core: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@ath6kl_usb_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&(ar_usb->cs_lock)\00", [45 x i8] zeroinitializer }, align 32
@ath6kl_usb_create.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&pipe->io_complete_work)\00", [53 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ath6kl usb xmit callback buf:0x%p\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ath6kl usb recv callback buf:0x%p\0A\00", [61 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"setting up USB Pipes using interface\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s Bulk Ep:0x%2.2X maxpktsz:%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RX\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TX\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s Int Ep:0x%2.2X maxpktsz:%d interval:%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s ISOC Ep:0x%2.2X maxpktsz:%d interval:%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"ath6kl usb: alloc resources lpipe:%d hpipe:0x%X urbs:%d\0A\00", [39 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->wait\00", [18 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->lock\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"diag read32 failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to submit usb control message: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to read usb control message: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"diag_write32 failed: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Unable to read the bmi data from the device: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"unable to send the bmi data to the device: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"ath6kl usb: bulk recv submit:%d, 0x%X (ep:0x%2.2X), %d bytes buf:0x%p\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ath6kl usb : usb bulk recv failed %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: recv pipe: %d, stat:%d, len:%d urb:0x%p\0A\00", [51 x i8] zeroinitializer }, align 32
@__func__.ath6kl_usb_recv_complete = private unnamed_addr constant [25 x i8] c"ath6kl_usb_recv_complete\00", align 1
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s recv pipe: %d (ep:0x%2.2X), failed:%d\0A\00", [54 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"+%s pipe : %d, buf:0x%p\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.ath6kl_usb_send = private unnamed_addr constant [16 x i8] c"ath6kl_usb_send\00", align 1
@.str.35 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s pipe:%d no urbs left. URB Cnt : %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"athusb bulk send submit:%d, 0x%X (ep:0x%2.2X), %d bytes\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ath6kl usb : usb bulk transmit failed %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: pipe: %d, stat:%d, len:%d\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.ath6kl_usb_usb_transmit_complete = private unnamed_addr constant [33 x i8] c"ath6kl_usb_usb_transmit_complete\00", align 1
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s:  pipe: %d, failed:%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"ath6kl usb: free resources lpipe:%dhpipe:0x%X urbs:%d avail:%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"ath6kl usb: urb leak! lpipe:%dhpipe:0x%X urbs:%d avail:%d\0A\00", [37 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 2, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.42 = internal global [10 x i64] [i64 8, i64 8, i64 1, i64 2, i64 3, i64 4, i64 129, i64 130, i64 131, i64 132]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 2, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.44 = internal global [8 x i64] [i64 6, i64 16, i64 1, i64 256, i64 257, i64 258, i64 259, i64 260]
@__sancov_gen_cov_switch_values.45 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@___asan_gen_.46 = private unnamed_addr constant [18 x i8] c"ath6kl_usb_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1225, i32 26 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1236, i32 1 }
@___asan_gen_.52 = private unnamed_addr constant [15 x i8] c"ath6kl_usb_ids\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1217, i32 35 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1125, i32 29 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1126, i32 29 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1129, i32 30 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1134, i32 30 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1136, i32 30 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1147, i32 14 }
@___asan_gen_.73 = private unnamed_addr constant [15 x i8] c"ath6kl_usb_ops\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1093, i32 36 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1162, i32 14 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 639, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 645, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 598, i32 8 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 602, i32 8 }
@___asan_gen_.101 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 1984, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 312, i32 29 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 320, i32 8 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 323, i32 8 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 323, i32 15 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 327, i32 8 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 336, i32 8 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 210, i32 6 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1367, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1368, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 978, i32 15 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 886, i32 15 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 918, i32 15 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1009, i32 15 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1026, i32 14 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1044, i32 14 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 443, i32 7 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 453, i32 8 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 510, i32 6 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 528, i32 8 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 716, i32 34 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 727, i32 7 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 759, i32 6 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 768, i32 7 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 566, i32 6 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 572, i32 7 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 228, i32 6 }
@___asan_gen_.187 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.188 = private constant [41 x i8] c"../drivers/net/wireless/ath/ath6kl/usb.c\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 235, i32 7 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_author376, ptr @__UNIQUE_ID_description377, ptr @__UNIQUE_ID_file378, ptr @__UNIQUE_ID_firmware380, ptr @__UNIQUE_ID_firmware381, ptr @__UNIQUE_ID_firmware382, ptr @__UNIQUE_ID_firmware383, ptr @__UNIQUE_ID_firmware384, ptr @__UNIQUE_ID_firmware385, ptr @__UNIQUE_ID_firmware386, ptr @__UNIQUE_ID_firmware387, ptr @__UNIQUE_ID_firmware388, ptr @__UNIQUE_ID_firmware389, ptr @__UNIQUE_ID_firmware390, ptr @__UNIQUE_ID_firmware391, ptr @__UNIQUE_ID_license379, ptr @__exitcall_ath6kl_usb_driver_exit, ptr @__initcall__kmod_ath6kl_usb__375_1236_ath6kl_usb_driver_init6, ptr @ath6kl_usb_driver_exit, ptr @ath6kl_usb_driver, ptr @.str, ptr @ath6kl_usb_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ath6kl_usb_ops, ptr @.str.7, ptr @ath6kl_usb_create.__key, ptr @.str.8, ptr @ath6kl_usb_create.__key.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @skb_queue_head_init.__key, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @init_usb_anchor.__key, ptr @.str.21, ptr @init_usb_anchor.__key.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_usb_ids to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_usb_ops to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_usb_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath6kl_usb_create.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_usb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @ath6kl_usb_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ath6kl_usb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_deregister(ptr noundef nonnull @ath6kl_usb_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_usb_probe(ptr noundef %interface, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %call1 = tail call ptr @usb_get_dev(ptr noundef %add.ptr.i) #10
  %idVendor = getelementptr i8, ptr %1, i32 936
  %2 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %idVendor, align 8
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv = zext i16 %4 to i32
  %idProduct = getelementptr i8, ptr %1, i32 938
  %5 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %idProduct, align 2
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %conv3 = zext i16 %7 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 2097152, ptr noundef nonnull @.str.1, i32 noundef %conv) #10
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 2097152, ptr noundef nonnull @.str.2, i32 noundef %conv3) #10
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 1
  %8 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur_altsetting, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bInterfaceNumber, align 2
  %conv5 = zext i8 %11 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 2097152, ptr noundef nonnull @.str.3, i32 noundef %conv5) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %speed = getelementptr i8, ptr %1, i32 -100
  %12 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp = icmp eq i32 %13, 3
  %.str.4..str.5 = select i1 %cmp, ptr @.str.4, ptr @.str.5
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 2097152, ptr noundef nonnull %.str.4..str.5) #10
  %14 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 2112) #13
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %if.end.err_usb_put_crit_edge, label %if.end.i

if.end.err_usb_put_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_usb_put

if.end.i:                                         ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 -128
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %17 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i.i, ptr %driver_data.i.i.i, align 4
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @ath6kl_usb_create.__key, i16 noundef signext 3) #10
  %udev.i = getelementptr inbounds %struct.ath6kl_usb, ptr %call7.i.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %udev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr.i.i, ptr %udev.i, align 4
  %interface3.i = getelementptr inbounds %struct.ath6kl_usb, ptr %call7.i.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %interface3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %interface, ptr %interface3.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i
  %i.053.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %io_complete_work.i = getelementptr %struct.ath6kl_usb, ptr %call7.i.i.i, i32 0, i32 3, i32 %i.053.i, i32 11
  tail call void @__init_work(ptr noundef %io_complete_work.i, i32 noundef 0) #10
  %20 = ptrtoint ptr %io_complete_work.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -64, ptr %io_complete_work.i, align 4
  %lockdep_map.i = getelementptr %struct.ath6kl_usb, ptr %call7.i.i.i, i32 0, i32 3, i32 %i.053.i, i32 11, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @ath6kl_usb_create.__key.9, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry9.i = getelementptr %struct.ath6kl_usb, ptr %call7.i.i.i, i32 0, i32 3, i32 %i.053.i, i32 11, i32 1
  %21 = ptrtoint ptr %entry9.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %entry9.i, ptr %entry9.i, align 8
  %prev.i.i = getelementptr %struct.ath6kl_usb, ptr %call7.i.i.i, i32 0, i32 3, i32 %i.053.i, i32 11, i32 1, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %entry9.i, ptr %prev.i.i, align 4
  %func.i = getelementptr %struct.ath6kl_usb, ptr %call7.i.i.i, i32 0, i32 3, i32 %i.053.i, i32 11, i32 2
  %23 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @ath6kl_usb_io_comp_work, ptr %func.i, align 8
  %io_comp_queue.i = getelementptr %struct.ath6kl_usb, ptr %call7.i.i.i, i32 0, i32 3, i32 %i.053.i, i32 12
  %lock.i.i = getelementptr %struct.ath6kl_usb, ptr %call7.i.i.i, i32 0, i32 3, i32 %i.053.i, i32 12, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #10
  %24 = ptrtoint ptr %io_comp_queue.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %io_comp_queue.i, ptr %io_comp_queue.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.anon.65, ptr %io_comp_queue.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %io_comp_queue.i, ptr %prev.i.i.i, align 4
  %qlen.i.i.i = getelementptr %struct.ath6kl_usb, ptr %call7.i.i.i, i32 0, i32 3, i32 %i.053.i, i32 12, i32 1
  %26 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %qlen.i.i.i, align 8
  %inc.i = add nuw nsw i32 %i.053.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i49.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3520, i32 noundef 16) #13
  %diag_cmd_buffer.i = getelementptr inbounds %struct.ath6kl_usb, ptr %call7.i.i.i, i32 0, i32 4
  %28 = ptrtoint ptr %diag_cmd_buffer.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i.i49.i, ptr %diag_cmd_buffer.i, align 4
  %cmp15.i = icmp eq ptr %call7.i.i49.i, null
  br i1 %cmp15.i, label %for.end.i.if.then25.i_crit_edge, label %if.end17.i

for.end.i.if.then25.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then25.i

if.end17.i:                                       ; preds = %for.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i50.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 4) #13
  %diag_resp_buffer.i = getelementptr inbounds %struct.ath6kl_usb, ptr %call7.i.i.i, i32 0, i32 5
  %30 = ptrtoint ptr %diag_resp_buffer.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i.i50.i, ptr %diag_resp_buffer.i, align 8
  %cmp20.i = icmp eq ptr %call7.i.i50.i, null
  br i1 %cmp20.i, label %if.end17.i.if.then25.i_crit_edge, label %if.end22.i

if.end17.i.if.then25.i_crit_edge:                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then25.i

if.end22.i:                                       ; preds = %if.end17.i
  %31 = ptrtoint ptr %interface3.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %interface3.i, align 8
  %cur_altsetting.i.i = getelementptr inbounds %struct.usb_interface, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %cur_altsetting.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur_altsetting.i.i, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 2097152, ptr noundef nonnull @.str.14) #10
  %bNumEndpoints.i.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %bNumEndpoints.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bNumEndpoints.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp243.not.i.i = icmp eq i8 %36, 0
  br i1 %cmp243.not.i.i, label %if.end22.i.if.end13_crit_edge, label %for.body.lr.ph.i.i

if.end22.i.if.end13_crit_edge:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

for.body.lr.ph.i.i:                               ; preds = %if.end22.i
  %endpoint3.i.i = getelementptr inbounds %struct.usb_host_interface, ptr %34, i32 0, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.0244.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %37 = ptrtoint ptr %endpoint3.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %endpoint3.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.usb_host_endpoint, ptr %38, i32 %i.0244.i.i
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i.i, i32 0, i32 3
  %39 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %bmAttributes.i.i, align 1
  %trunc.i.i = trunc i8 %40 to i2
  %41 = zext i2 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values)
  switch i2 %trunc.i.i, label %for.body.i.i.if.end48.i.i_crit_edge [
    i2 -2, label %if.then.i.i
    i2 -1, label %if.then18.i.i
    i2 1, label %if.then35.i.i
  ]

for.body.i.i.if.end48.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i.i, i32 0, i32 2
  %42 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %bEndpointAddress.i.i, align 1
  %conv8.i.i = zext i8 %43 to i32
  %and9.i.i = and i32 %conv8.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i)
  %tobool.not.i.i = icmp eq i32 %and9.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, ptr @.str.17, ptr @.str.16
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i.i, i32 0, i32 4
  %44 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %46 = tail call i16 @llvm.bswap.i16(i16 %45) #10
  %conv12.i.i = zext i16 %46 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 2097152, ptr noundef nonnull @.str.15, ptr noundef nonnull %cond.i.i, i32 noundef %conv8.i.i, i32 noundef %conv12.i.i) #10
  br label %if.end48.i.i

if.then18.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %bEndpointAddress19.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i.i, i32 0, i32 2
  %47 = ptrtoint ptr %bEndpointAddress19.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %bEndpointAddress19.i.i, align 1
  %conv20.i.i = zext i8 %48 to i32
  %and21.i.i = and i32 %conv20.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i.i)
  %tobool22.not.i.i = icmp eq i32 %and21.i.i, 0
  %cond23.i.i = select i1 %tobool22.not.i.i, ptr @.str.17, ptr @.str.16
  %wMaxPacketSize26.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i.i, i32 0, i32 4
  %49 = ptrtoint ptr %wMaxPacketSize26.i.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %50 = load i16, ptr %wMaxPacketSize26.i.i, align 1
  %51 = tail call i16 @llvm.bswap.i16(i16 %50) #10
  %conv27.i.i = zext i16 %51 to i32
  %bInterval.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i.i, i32 0, i32 5
  %52 = ptrtoint ptr %bInterval.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %bInterval.i.i, align 1
  %conv28.i.i = zext i8 %53 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 2097152, ptr noundef nonnull @.str.18, ptr noundef nonnull %cond23.i.i, i32 noundef %conv20.i.i, i32 noundef %conv27.i.i, i32 noundef %conv28.i.i) #10
  br label %if.end48.i.i

if.then35.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %bEndpointAddress36.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i.i, i32 0, i32 2
  %54 = ptrtoint ptr %bEndpointAddress36.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %bEndpointAddress36.i.i, align 1
  %conv37.i.i = zext i8 %55 to i32
  %and38.i.i = and i32 %conv37.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i.i)
  %tobool39.not.i.i = icmp eq i32 %and38.i.i, 0
  %cond40.i.i = select i1 %tobool39.not.i.i, ptr @.str.17, ptr @.str.16
  %wMaxPacketSize43.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i.i, i32 0, i32 4
  %56 = ptrtoint ptr %wMaxPacketSize43.i.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %57 = load i16, ptr %wMaxPacketSize43.i.i, align 1
  %58 = tail call i16 @llvm.bswap.i16(i16 %57) #10
  %conv44.i.i = zext i16 %58 to i32
  %bInterval45.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i.i, i32 0, i32 5
  %59 = ptrtoint ptr %bInterval45.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %bInterval45.i.i, align 1
  %conv46.i.i = zext i8 %60 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 2097152, ptr noundef nonnull @.str.19, ptr noundef nonnull %cond40.i.i, i32 noundef %conv37.i.i, i32 noundef %conv44.i.i, i32 noundef %conv46.i.i) #10
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.then35.i.i, %if.then18.i.i, %if.then.i.i, %for.body.i.i.if.end48.i.i_crit_edge
  %wMaxPacketSize.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i.i, i32 0, i32 4
  %61 = ptrtoint ptr %wMaxPacketSize.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %61, i32 2)
  %62 = load i16, ptr %wMaxPacketSize.i.i.i, align 1
  %63 = and i16 %62, -249
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %cmp49.i.i = icmp eq i16 %63, 0
  br i1 %cmp49.i.i, label %if.end48.i.i.for.inc.i.i_crit_edge, label %if.end52.i.i

if.end48.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.end52.i.i:                                     ; preds = %if.end48.i.i
  %bEndpointAddress53.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx.i.i, i32 0, i32 2
  %64 = ptrtoint ptr %bEndpointAddress53.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %bEndpointAddress53.i.i, align 1
  %66 = zext i8 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.42)
  switch i8 %65, label %if.end52.i.i.for.inc.i.i_crit_edge [
    i8 -127, label %if.end52.i.i.if.end59.i.i_crit_edge
    i8 -126, label %sw.bb1.i.i.i
    i8 -124, label %sw.bb2.i.i.i
    i8 -125, label %sw.bb3.i.i.i
    i8 1, label %sw.bb4.i.i.i
    i8 2, label %sw.bb5.i.i.i
    i8 3, label %sw.bb6.i.i.i
    i8 4, label %sw.bb7.i.i.i
  ]

if.end52.i.i.if.end59.i.i_crit_edge:              ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59.i.i

if.end52.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

sw.bb1.i.i.i:                                     ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59.i.i

sw.bb2.i.i.i:                                     ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59.i.i

sw.bb3.i.i.i:                                     ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59.i.i

sw.bb4.i.i.i:                                     ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59.i.i

sw.bb5.i.i.i:                                     ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59.i.i

sw.bb6.i.i.i:                                     ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59.i.i

sw.bb7.i.i.i:                                     ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59.i.i

if.end59.i.i:                                     ; preds = %sw.bb7.i.i.i, %sw.bb6.i.i.i, %sw.bb5.i.i.i, %sw.bb4.i.i.i, %sw.bb3.i.i.i, %sw.bb2.i.i.i, %sw.bb1.i.i.i, %if.end52.i.i.if.end59.i.i_crit_edge
  %pipe_num.0.ph.i.i.i = phi i8 [ 5, %sw.bb1.i.i.i ], [ 7, %sw.bb2.i.i.i ], [ 6, %sw.bb3.i.i.i ], [ 0, %sw.bb4.i.i.i ], [ 1, %sw.bb5.i.i.i ], [ 2, %sw.bb6.i.i.i ], [ 3, %sw.bb7.i.i.i ], [ 4, %if.end52.i.i.if.end59.i.i_crit_edge ]
  %conv55.i.i = zext i8 %pipe_num.0.ph.i.i.i to i32
  %arrayidx60.i.i = getelementptr %struct.ath6kl_usb, ptr %call7.i.i.i, i32 0, i32 3, i32 %conv55.i.i
  %ar_usb61.i.i = getelementptr %struct.ath6kl_usb, ptr %call7.i.i.i, i32 0, i32 3, i32 %conv55.i.i, i32 9
  %67 = ptrtoint ptr %ar_usb61.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ar_usb61.i.i, align 4
  %cmp62.not.i.i = icmp eq ptr %68, null
  br i1 %cmp62.not.i.i, label %if.end65.i.i, label %if.end59.i.i.for.inc.i.i_crit_edge

if.end59.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.end65.i.i:                                     ; preds = %if.end59.i.i
  %69 = ptrtoint ptr %ar_usb61.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call7.i.i.i, ptr %ar_usb61.i.i, align 4
  %logical_pipe_num.i.i = getelementptr %struct.ath6kl_usb, ptr %call7.i.i.i, i32 0, i32 3, i32 %conv55.i.i, i32 8
  %70 = ptrtoint ptr %logical_pipe_num.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %pipe_num.0.ph.i.i.i, ptr %logical_pipe_num.i.i, align 1
  %71 = ptrtoint ptr %bEndpointAddress53.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %bEndpointAddress53.i.i, align 1
  %ep_address.i.i = getelementptr %struct.ath6kl_usb, ptr %call7.i.i.i, i32 0, i32 3, i32 %conv55.i.i, i32 7
  %73 = ptrtoint ptr %ep_address.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %ep_address.i.i, align 8
  %74 = ptrtoint ptr %wMaxPacketSize.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %74, i32 2)
  %75 = load i16, ptr %wMaxPacketSize.i.i.i, align 1
  %76 = tail call i16 @llvm.bswap.i16(i16 %75) #10
  %max_packet_size.i.i = getelementptr %struct.ath6kl_usb, ptr %call7.i.i.i, i32 0, i32 3, i32 %conv55.i.i, i32 10
  %77 = ptrtoint ptr %max_packet_size.i.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %max_packet_size.i.i, align 8
  %78 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %bmAttributes.i.i, align 1
  %trunc240.i.i = trunc i8 %79 to i2
  %80 = zext i2 %trunc240.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.43)
  switch i2 %trunc240.i.i, label %if.end65.i.i.if.end148.i.i_crit_edge [
    i2 -2, label %if.then74.i.i
    i2 -1, label %if.then98.i.i
    i2 1, label %if.then125.i.i
  ]

if.end65.i.i.if.end148.i.i_crit_edge:             ; preds = %if.end65.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end148.i.i

if.then74.i.i:                                    ; preds = %if.end65.i.i
  %conv76.i.i = zext i8 %72 to i32
  %and77.i.i = and i32 %conv76.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77.i.i)
  %tobool78.not.i.i = icmp eq i32 %and77.i.i, 0
  %81 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %udev.i, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %82, align 8
  %shl.i220.i.i = shl i32 %84, 8
  %shl1.i221.i.i = shl nuw nsw i32 %conv76.i.i, 15
  %or.i222.i.i = or i32 %shl.i220.i.i, %shl1.i221.i.i
  br i1 %tobool78.not.i.i, label %if.else84.i.i, label %if.then79.i.i

if.then79.i.i:                                    ; preds = %if.then74.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %or83.i.i = or i32 %or.i222.i.i, -1073741696
  br label %if.end148.sink.split.i.i

if.else84.i.i:                                    ; preds = %if.then74.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %or89.i.i = or i32 %or.i222.i.i, -1073741824
  br label %if.end148.sink.split.i.i

if.then98.i.i:                                    ; preds = %if.end65.i.i
  %conv100.i.i = zext i8 %72 to i32
  %and101.i.i = and i32 %conv100.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101.i.i)
  %tobool102.not.i.i = icmp eq i32 %and101.i.i, 0
  %85 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %udev.i, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %86, align 8
  %shl.i226.i.i = shl i32 %88, 8
  %shl1.i227.i.i = shl nuw nsw i32 %conv100.i.i, 15
  %or.i228.i.i = or i32 %shl.i226.i.i, %shl1.i227.i.i
  br i1 %tobool102.not.i.i, label %if.else111.i.i, label %if.then103.i.i

if.then103.i.i:                                   ; preds = %if.then98.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %or109.i.i = or i32 %or.i228.i.i, 1073741952
  br label %if.end148.sink.split.i.i

if.else111.i.i:                                   ; preds = %if.then98.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %or116.i.i = or i32 %or.i228.i.i, 1073741824
  br label %if.end148.sink.split.i.i

if.then125.i.i:                                   ; preds = %if.end65.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv127.i.i = zext i8 %72 to i32
  %and128.i.i = and i32 %conv127.i.i, 128
  %89 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %udev.i, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %90, align 8
  %shl.i232.i.i = shl i32 %92, 8
  %shl1.i233.i.i = shl nuw nsw i32 %conv127.i.i, 15
  %or.i234.i.i = or i32 %and128.i.i, %shl1.i233.i.i
  %93 = or i32 %or.i234.i.i, %shl.i232.i.i
  br label %if.end148.sink.split.i.i

if.end148.sink.split.i.i:                         ; preds = %if.then125.i.i, %if.else111.i.i, %if.then103.i.i, %if.else84.i.i, %if.then79.i.i
  %or116.sink.i.i = phi i32 [ %or116.i.i, %if.else111.i.i ], [ %or109.i.i, %if.then103.i.i ], [ %or83.i.i, %if.then79.i.i ], [ %or89.i.i, %if.else84.i.i ], [ %93, %if.then125.i.i ]
  %usb_pipe_handle117.i.i = getelementptr %struct.ath6kl_usb, ptr %call7.i.i.i, i32 0, i32 3, i32 %conv55.i.i, i32 5
  %94 = ptrtoint ptr %usb_pipe_handle117.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %or116.sink.i.i, ptr %usb_pipe_handle117.i.i, align 8
  br label %if.end148.i.i

if.end148.i.i:                                    ; preds = %if.end148.sink.split.i.i, %if.end65.i.i.if.end148.i.i_crit_edge
  %ep_desc.i.i = getelementptr %struct.ath6kl_usb, ptr %call7.i.i.i, i32 0, i32 3, i32 %conv55.i.i, i32 13
  %95 = ptrtoint ptr %ep_desc.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %arrayidx.i.i, ptr %ep_desc.i.i, align 8
  %96 = ptrtoint ptr %ep_address.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %ep_address.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %97)
  %tobool152.not.i.i = icmp sgt i8 %97, -1
  br i1 %tobool152.not.i.i, label %if.then153.i.i, label %if.end148.i.i.for.body.lr.ph.i.i.i_crit_edge

if.end148.i.i.for.body.lr.ph.i.i.i_crit_edge:     ; preds = %if.end148.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.lr.ph.i.i.i

if.then153.i.i:                                   ; preds = %if.end148.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %flags.i.i = getelementptr %struct.ath6kl_usb, ptr %call7.i.i.i, i32 0, i32 3, i32 %conv55.i.i, i32 6
  %98 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %flags.i.i, align 4
  %or154.i.i = or i32 %99, 1
  store i32 %or154.i.i, ptr %flags.i.i, align 4
  br label %for.body.lr.ph.i.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.then153.i.i, %if.end148.i.i.for.body.lr.ph.i.i.i_crit_edge
  %100 = ptrtoint ptr %arrayidx60.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %arrayidx60.i.i, ptr %arrayidx60.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx60.i.i, i32 0, i32 1
  %101 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %arrayidx60.i.i, ptr %prev.i.i.i.i, align 8
  %urb_submitted.i.i.i = getelementptr %struct.ath6kl_usb, ptr %call7.i.i.i, i32 0, i32 3, i32 %conv55.i.i, i32 1
  %102 = getelementptr %struct.ath6kl_usb, ptr %call7.i.i.i, i32 0, i32 3, i32 %conv55.i.i, i32 1, i32 1
  %103 = call ptr @memset(ptr %102, i32 0, i32 104)
  %104 = ptrtoint ptr %urb_submitted.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %urb_submitted.i.i.i, ptr %urb_submitted.i.i.i, align 4
  %prev.i.i.i.i.i = getelementptr %struct.ath6kl_usb, ptr %call7.i.i.i, i32 0, i32 3, i32 %conv55.i.i, i32 1, i32 0, i32 1
  %105 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %urb_submitted.i.i.i, ptr %prev.i.i.i.i.i, align 8
  tail call void @__init_waitqueue_head(ptr noundef %102, ptr noundef nonnull @.str.21, ptr noundef nonnull @init_usb_anchor.__key) #10
  %lock.i.i.i.i = getelementptr %struct.ath6kl_usb, ptr %call7.i.i.i, i32 0, i32 3, i32 %conv55.i.i, i32 1, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i.i.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @init_usb_anchor.__key.22, i16 noundef signext 3) #10
  %urb_alloc.i.i.i = getelementptr %struct.ath6kl_usb, ptr %call7.i.i.i, i32 0, i32 3, i32 %conv55.i.i, i32 2
  %urb_cnt.i.i.i.i = getelementptr %struct.ath6kl_usb, ptr %call7.i.i.i, i32 0, i32 3, i32 %conv55.i.i, i32 3
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %ath6kl_usb_free_urb_to_pipe.exit.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.016.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc3.i.i.i, %ath6kl_usb_free_urb_to_pipe.exit.i.i.i.for.body.i.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %106 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %106, i32 noundef 3520, i32 noundef 20) #13
  %cmp1.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %cmp1.i.i.i, label %for.body.i.i.i.if.then25.i_crit_edge, label %if.end.i.i.i

for.body.i.i.i.if.then25.i_crit_edge:             ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then25.i

if.end.i.i.i:                                     ; preds = %for.body.i.i.i
  %pipe2.i.i.i = getelementptr inbounds %struct.ath6kl_urb_context, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %107 = ptrtoint ptr %pipe2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %arrayidx60.i.i, ptr %pipe2.i.i.i, align 8
  %108 = ptrtoint ptr %urb_alloc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %urb_alloc.i.i.i, align 4
  %inc.i.i.i = add i32 %109, 1
  store i32 %inc.i.i.i, ptr %urb_alloc.i.i.i, align 4
  %110 = ptrtoint ptr %ar_usb61.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ar_usb61.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %111, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.ath6kl_usb_free_urb_to_pipe.exit.i.i.i_crit_edge, label %do.body1.i.i.i.i

if.end.i.i.i.ath6kl_usb_free_urb_to_pipe.exit.i.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_usb_free_urb_to_pipe.exit.i.i.i

do.body1.i.i.i.i:                                 ; preds = %if.end.i.i.i
  %call3.i.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %111) #10
  %112 = ptrtoint ptr %urb_cnt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %urb_cnt.i.i.i.i, align 8
  %inc.i.i.i.i = add i32 %113, 1
  store i32 %inc.i.i.i.i, ptr %urb_cnt.i.i.i.i, align 8
  %114 = ptrtoint ptr %arrayidx60.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx60.i.i, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i.i, ptr noundef %arrayidx60.i.i, ptr noundef %115) #10
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %do.body1.i.i.i.i.list_add.exit.i.i.i.i_crit_edge

do.body1.i.i.i.i.list_add.exit.i.i.i.i_crit_edge: ; preds = %do.body1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %do.body1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %call7.i.i.i.i.i, ptr %prev1.i.i.i.i.i.i, align 4
  %117 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %115, ptr %call7.i.i.i.i.i, align 8
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %118 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %arrayidx60.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %119 = ptrtoint ptr %arrayidx60.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store volatile ptr %call7.i.i.i.i.i, ptr %arrayidx60.i.i, align 4
  br label %list_add.exit.i.i.i.i

list_add.exit.i.i.i.i:                            ; preds = %if.end.i.i.i.i.i.i, %do.body1.i.i.i.i.list_add.exit.i.i.i.i_crit_edge
  %120 = ptrtoint ptr %ar_usb61.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ar_usb61.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %121, i32 noundef %call3.i.i.i.i) #10
  br label %ath6kl_usb_free_urb_to_pipe.exit.i.i.i

ath6kl_usb_free_urb_to_pipe.exit.i.i.i:           ; preds = %list_add.exit.i.i.i.i, %if.end.i.i.i.ath6kl_usb_free_urb_to_pipe.exit.i.i.i_crit_edge
  %inc3.i.i.i = add nuw nsw i32 %i.016.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc3.i.i.i, 32
  br i1 %exitcond.not.i.i.i, label %ath6kl_usb_alloc_pipe_resources.exit.thread.i.i, label %ath6kl_usb_free_urb_to_pipe.exit.i.i.i.for.body.i.i.i_crit_edge

ath6kl_usb_free_urb_to_pipe.exit.i.i.i.for.body.i.i.i_crit_edge: ; preds = %ath6kl_usb_free_urb_to_pipe.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

ath6kl_usb_alloc_pipe_resources.exit.thread.i.i:  ; preds = %ath6kl_usb_free_urb_to_pipe.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %122 = ptrtoint ptr %logical_pipe_num.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %logical_pipe_num.i.i, align 1
  %conv.i.i.i = zext i8 %123 to i32
  %usb_pipe_handle.i.i.i = getelementptr %struct.ath6kl_usb, ptr %call7.i.i.i, i32 0, i32 3, i32 %conv55.i.i, i32 5
  %124 = ptrtoint ptr %usb_pipe_handle.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %usb_pipe_handle.i.i.i, align 8
  %126 = ptrtoint ptr %urb_alloc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %urb_alloc.i.i.i, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 2097152, ptr noundef nonnull @.str.20, i32 noundef %conv.i.i.i, i32 noundef %125, i32 noundef %127) #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %ath6kl_usb_alloc_pipe_resources.exit.thread.i.i, %if.end59.i.i.for.inc.i.i_crit_edge, %if.end52.i.i.for.inc.i.i_crit_edge, %if.end48.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.0244.i.i, 1
  %128 = ptrtoint ptr %bNumEndpoints.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %bNumEndpoints.i.i, align 4
  %conv.i.i = zext i8 %129 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.if.end13_crit_edge

for.inc.i.i.if.end13_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

if.then25.i:                                      ; preds = %for.body.i.i.i.if.then25.i_crit_edge, %if.end17.i.if.then25.i_crit_edge, %for.end.i.if.then25.i_crit_edge
  tail call fastcc void @ath6kl_usb_destroy(ptr noundef %call7.i.i.i) #10
  br label %err_usb_put

if.end13:                                         ; preds = %for.inc.i.i.if.end13_crit_edge, %if.end22.i.if.end13_crit_edge
  %130 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %udev.i, align 4
  %dev14 = getelementptr inbounds %struct.usb_device, ptr %131, i32 0, i32 15
  %call15 = tail call ptr @ath6kl_core_create(ptr noundef %dev14) #10
  %cmp16 = icmp eq ptr %call15, null
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.6) #10
  br label %err_usb_destroy

if.end19:                                         ; preds = %if.end13
  %hif_priv = getelementptr inbounds %struct.ath6kl, ptr %call15, i32 0, i32 12
  %132 = ptrtoint ptr %hif_priv to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %call7.i.i.i, ptr %hif_priv, align 4
  %hif_type = getelementptr inbounds %struct.ath6kl, ptr %call15, i32 0, i32 11
  %133 = ptrtoint ptr %hif_type to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 1, ptr %hif_type, align 4
  %hif_ops = getelementptr inbounds %struct.ath6kl, ptr %call15, i32 0, i32 5
  %134 = ptrtoint ptr %hif_ops to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr @ath6kl_usb_ops, ptr %hif_ops, align 4
  %block_size = getelementptr inbounds %struct.ath6kl, ptr %call15, i32 0, i32 73, i32 3
  %135 = ptrtoint ptr %block_size to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 16, ptr %block_size, align 4
  %max_data_size = getelementptr inbounds %struct.ath6kl, ptr %call15, i32 0, i32 4, i32 3
  %136 = ptrtoint ptr %max_data_size to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 252, ptr %max_data_size, align 4
  %ar20 = getelementptr inbounds %struct.ath6kl_usb, ptr %call7.i.i.i, i32 0, i32 6
  %137 = ptrtoint ptr %ar20 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %call15, ptr %ar20, align 4
  %call21 = tail call i32 @ath6kl_core_init(ptr noundef nonnull %call15, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end19.cleanup_crit_edge, label %if.then23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.7, i32 noundef %call21) #10
  tail call void @ath6kl_core_destroy(ptr noundef nonnull %call15) #10
  br label %err_usb_destroy

err_usb_destroy:                                  ; preds = %if.then23, %if.then18
  %ret.0 = phi i32 [ -12, %if.then18 ], [ %call21, %if.then23 ]
  tail call fastcc void @ath6kl_usb_destroy(ptr noundef nonnull %call7.i.i.i)
  br label %err_usb_put

err_usb_put:                                      ; preds = %err_usb_destroy, %if.then25.i, %if.end.err_usb_put_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_usb_destroy ], [ -12, %if.then25.i ], [ -12, %if.end.err_usb_put_crit_edge ]
  tail call void @usb_put_dev(ptr noundef %add.ptr.i) #10
  br label %cleanup

cleanup:                                          ; preds = %err_usb_put, %if.end19.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err_usb_put ], [ 0, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath6kl_usb_remove(ptr nocapture noundef readonly %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  tail call void @usb_put_dev(ptr noundef %add.ptr.i) #10
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %cmp.i = icmp eq ptr %3, null
  br i1 %cmp.i, label %entry.ath6kl_usb_device_detached.exit_crit_edge, label %if.end.i

entry.ath6kl_usb_device_detached.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_usb_device_detached.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ar.i = getelementptr inbounds %struct.ath6kl_usb, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ar.i, align 4
  tail call void @ath6kl_stop_txrx(ptr noundef %5) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #10
  %26 = ptrtoint ptr %ar.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ar.i, align 4
  tail call void @ath6kl_core_cleanup(ptr noundef %27) #10
  tail call fastcc void @ath6kl_usb_destroy(ptr noundef nonnull %3) #10
  br label %ath6kl_usb_device_detached.exit

ath6kl_usb_device_detached.exit:                  ; preds = %if.end.i, %entry.ath6kl_usb_device_detached.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_usb_pm_suspend(ptr nocapture noundef readonly %interface, [1 x i32] %message.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @ath6kl_usb_flush_all(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_usb_pm_resume(ptr nocapture noundef readonly %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx = getelementptr %struct.ath6kl_usb, ptr %1, i32 0, i32 3, i32 5
  tail call fastcc void @ath6kl_usb_post_recv_transfers(ptr noundef %arrayidx)
  %arrayidx2 = getelementptr %struct.ath6kl_usb, ptr %1, i32 0, i32 3, i32 6
  tail call fastcc void @ath6kl_usb_post_recv_transfers(ptr noundef %arrayidx2)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath6kl_core_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath6kl_core_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_core_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath6kl_usb_destroy(ptr noundef %ar_usb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ath6kl_usb_flush_all(ptr noundef %ar_usb)
  br label %for.body.i

for.body.i:                                       ; preds = %ath6kl_usb_free_pipe_resources.exit.i.for.body.i_crit_edge, %entry
  %i.04.i = phi i32 [ 0, %entry ], [ %inc.i, %ath6kl_usb_free_pipe_resources.exit.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ath6kl_usb, ptr %ar_usb, i32 0, i32 3, i32 %i.04.i
  %ar_usb.i.i = getelementptr %struct.ath6kl_usb, ptr %ar_usb, i32 0, i32 3, i32 %i.04.i, i32 9
  %0 = ptrtoint ptr %ar_usb.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar_usb.i.i, align 4
  %cmp.i.i = icmp eq ptr %1, null
  br i1 %cmp.i.i, label %for.body.i.ath6kl_usb_free_pipe_resources.exit.i_crit_edge, label %if.end.i.i

for.body.i.ath6kl_usb_free_pipe_resources.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_usb_free_pipe_resources.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  %logical_pipe_num.i.i = getelementptr %struct.ath6kl_usb, ptr %ar_usb, i32 0, i32 3, i32 %i.04.i, i32 8
  %2 = ptrtoint ptr %logical_pipe_num.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %logical_pipe_num.i.i, align 1
  %conv.i.i = zext i8 %3 to i32
  %usb_pipe_handle.i.i = getelementptr %struct.ath6kl_usb, ptr %ar_usb, i32 0, i32 3, i32 %i.04.i, i32 5
  %4 = ptrtoint ptr %usb_pipe_handle.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usb_pipe_handle.i.i, align 4
  %urb_alloc.i.i = getelementptr %struct.ath6kl_usb, ptr %ar_usb, i32 0, i32 3, i32 %i.04.i, i32 2
  %6 = ptrtoint ptr %urb_alloc.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %urb_alloc.i.i, align 4
  %urb_cnt.i.i = getelementptr %struct.ath6kl_usb, ptr %ar_usb, i32 0, i32 3, i32 %i.04.i, i32 3
  %8 = ptrtoint ptr %urb_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %urb_cnt.i.i, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 2097152, ptr noundef nonnull @.str.40, i32 noundef %conv.i.i, i32 noundef %5, i32 noundef %7, i32 noundef %9) #10
  %10 = ptrtoint ptr %urb_alloc.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %urb_alloc.i.i, align 4
  %12 = ptrtoint ptr %urb_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %urb_cnt.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp3.not.i.i = icmp eq i32 %11, %13
  br i1 %cmp3.not.i.i, label %if.end.i.i.if.end11.i.i_crit_edge, label %if.then5.i.i

if.end.i.i.if.end11.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %logical_pipe_num.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %logical_pipe_num.i.i, align 1
  %conv7.i.i = zext i8 %15 to i32
  %16 = ptrtoint ptr %usb_pipe_handle.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %usb_pipe_handle.i.i, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 2097152, ptr noundef nonnull @.str.41, i32 noundef %conv7.i.i, i32 noundef %17, i32 noundef %11, i32 noundef %13) #10
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then5.i.i, %if.end.i.i.if.end11.i.i_crit_edge
  %18 = ptrtoint ptr %ar_usb.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ar_usb.i.i, align 4
  %tobool.not.i34.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i34.i.i, label %if.end11.i.i.ath6kl_usb_free_pipe_resources.exit.i_crit_edge, label %if.end11.i.i.do.body1.i.i.i_crit_edge

if.end11.i.i.do.body1.i.i.i_crit_edge:            ; preds = %if.end11.i.i
  br label %do.body1.i.i.i

if.end11.i.i.ath6kl_usb_free_pipe_resources.exit.i_crit_edge: ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_usb_free_pipe_resources.exit.i

do.body1.i.i.i:                                   ; preds = %if.end15.i.i.do.body1.i.i.i_crit_edge, %if.end11.i.i.do.body1.i.i.i_crit_edge
  %20 = phi ptr [ %38, %if.end15.i.i.do.body1.i.i.i_crit_edge ], [ %19, %if.end11.i.i.do.body1.i.i.i_crit_edge ]
  %call3.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %20) #10
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %22, %arrayidx.i
  br i1 %cmp.i.not.i.i.i, label %ath6kl_usb_alloc_urb_from_pipe.exit.thread31.i.i, label %if.then8.i.i.i

ath6kl_usb_alloc_urb_from_pipe.exit.thread31.i.i: ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %ar_usb.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ar_usb.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %24, i32 noundef %call3.i.i.i) #10
  br label %ath6kl_usb_free_pipe_resources.exit.i

if.then8.i.i.i:                                   ; preds = %do.body1.i.i.i
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %22) #10
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then8.i.i.i.ath6kl_usb_alloc_urb_from_pipe.exit.i.i_crit_edge

if.then8.i.i.i.ath6kl_usb_alloc_urb_from_pipe.exit.i.i_crit_edge: ; preds = %if.then8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_usb_alloc_urb_from_pipe.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %27 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %22, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %ath6kl_usb_alloc_urb_from_pipe.exit.i.i

ath6kl_usb_alloc_urb_from_pipe.exit.i.i:          ; preds = %if.end.i.i.i.i.i, %if.then8.i.i.i.ath6kl_usb_alloc_urb_from_pipe.exit.i.i_crit_edge
  %31 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %22, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i, align 4
  %33 = ptrtoint ptr %urb_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %urb_cnt.i.i, align 4
  %dec.i.i.i = add i32 %34, -1
  store i32 %dec.i.i.i, ptr %urb_cnt.i.i, align 4
  %35 = ptrtoint ptr %ar_usb.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ar_usb.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %36, i32 noundef %call3.i.i.i) #10
  %cmp12.i.i = icmp eq ptr %22, null
  br i1 %cmp12.i.i, label %ath6kl_usb_alloc_urb_from_pipe.exit.i.i.ath6kl_usb_free_pipe_resources.exit.i_crit_edge, label %if.end15.i.i

ath6kl_usb_alloc_urb_from_pipe.exit.i.i.ath6kl_usb_free_pipe_resources.exit.i_crit_edge: ; preds = %ath6kl_usb_alloc_urb_from_pipe.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_usb_free_pipe_resources.exit.i

if.end15.i.i:                                     ; preds = %ath6kl_usb_alloc_urb_from_pipe.exit.i.i
  tail call void @kfree(ptr noundef nonnull %22) #10
  %37 = ptrtoint ptr %ar_usb.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ar_usb.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i.i, label %if.end15.i.i.ath6kl_usb_free_pipe_resources.exit.i_crit_edge, label %if.end15.i.i.do.body1.i.i.i_crit_edge

if.end15.i.i.do.body1.i.i.i_crit_edge:            ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1.i.i.i

if.end15.i.i.ath6kl_usb_free_pipe_resources.exit.i_crit_edge: ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_usb_free_pipe_resources.exit.i

ath6kl_usb_free_pipe_resources.exit.i:            ; preds = %if.end15.i.i.ath6kl_usb_free_pipe_resources.exit.i_crit_edge, %ath6kl_usb_alloc_urb_from_pipe.exit.i.i.ath6kl_usb_free_pipe_resources.exit.i_crit_edge, %ath6kl_usb_alloc_urb_from_pipe.exit.thread31.i.i, %if.end11.i.i.ath6kl_usb_free_pipe_resources.exit.i_crit_edge, %for.body.i.ath6kl_usb_free_pipe_resources.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %ath6kl_usb_cleanup_pipe_resources.exit, label %ath6kl_usb_free_pipe_resources.exit.i.for.body.i_crit_edge

ath6kl_usb_free_pipe_resources.exit.i.for.body.i_crit_edge: ; preds = %ath6kl_usb_free_pipe_resources.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

ath6kl_usb_cleanup_pipe_resources.exit:           ; preds = %ath6kl_usb_free_pipe_resources.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %interface = getelementptr inbounds %struct.ath6kl_usb, ptr %ar_usb, i32 0, i32 2
  %39 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %interface, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %40, i32 0, i32 7, i32 8
  %41 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %driver_data.i.i, align 4
  %diag_cmd_buffer = getelementptr inbounds %struct.ath6kl_usb, ptr %ar_usb, i32 0, i32 4
  %42 = ptrtoint ptr %diag_cmd_buffer to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %diag_cmd_buffer, align 4
  tail call void @kfree(ptr noundef %43) #10
  %diag_resp_buffer = getelementptr inbounds %struct.ath6kl_usb, ptr %ar_usb, i32 0, i32 5
  %44 = ptrtoint ptr %diag_resp_buffer to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %diag_resp_buffer, align 4
  tail call void @kfree(ptr noundef %45) #10
  tail call void @kfree(ptr noundef %ar_usb) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath6kl_usb_io_comp_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ar_usb1 = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %ar_usb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar_usb1, align 4
  %io_comp_queue = getelementptr i8, ptr %work, i32 44
  %call11 = tail call ptr @skb_dequeue(ptr noundef %io_comp_queue) #10
  %tobool.not12 = icmp eq ptr %call11, null
  br i1 %tobool.not12, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %flags = getelementptr i8, ptr %work, i32 -16
  %ar = getelementptr inbounds %struct.ath6kl_usb, ptr %1, i32 0, i32 6
  %logical_pipe_num = getelementptr i8, ptr %work, i32 -11
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %call13 = phi ptr [ %call11, %while.body.lr.ph ], [ %call, %if.end.while.body_crit_edge ]
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 4194304, ptr noundef nonnull @.str.11, ptr noundef nonnull %call13) #10
  %4 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ar, align 4
  tail call void @ath6kl_core_tx_complete(ptr noundef %5, ptr noundef nonnull %call13) #10
  br label %if.end

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 4194304, ptr noundef nonnull @.str.12, ptr noundef nonnull %call13) #10
  %6 = ptrtoint ptr %ar to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ar, align 4
  %8 = ptrtoint ptr %logical_pipe_num to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %logical_pipe_num, align 1
  tail call void @ath6kl_core_rx_complete(ptr noundef %7, ptr noundef nonnull %call13, i8 noundef zeroext %9) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call = tail call ptr @skb_dequeue(ptr noundef %io_comp_queue) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_core_tx_complete(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_core_rx_complete(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ath6kl_usb_cleanup_scatter(ptr nocapture noundef %ar) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath6kl_usb_suspend(ptr nocapture noundef readnone %ar, ptr nocapture noundef readnone %wow) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath6kl_usb_resume(ptr nocapture noundef readnone %ar) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_usb_diag_read32(ptr nocapture noundef readonly %ar, i32 noundef %address, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hif_priv = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 12
  %0 = ptrtoint ptr %hif_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hif_priv, align 4
  %diag_cmd_buffer = getelementptr inbounds %struct.ath6kl_usb, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %diag_cmd_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %diag_cmd_buffer, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 0, ptr %3, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %address)
  %address2 = getelementptr inbounds %struct.ath6kl_usb_ctrl_diag_cmd_read, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %address2 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %5, ptr %address2, align 1
  %diag_resp_buffer = getelementptr inbounds %struct.ath6kl_usb, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %diag_resp_buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %diag_resp_buffer, align 4
  %call.i.i = tail call ptr @kmemdup(ptr noundef %3, i32 noundef 16, i32 noundef 3264) #10
  %cmp1.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp1.i.i, label %entry.if.then_crit_edge, label %if.end3.i.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end3.i.i:                                      ; preds = %entry
  %udev.i.i = getelementptr inbounds %struct.ath6kl_usb, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %udev.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  %shl.i.i.i = shl i32 %12, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call6.i.i = tail call i32 @usb_control_msg(ptr noundef %10, i32 noundef %or.i.i, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call.i.i, i16 noundef zeroext 16, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp7.i.i = icmp slt i32 %call6.i.i, 0
  br i1 %cmp7.i.i, label %ath6kl_usb_submit_ctrl_out.exit.i, label %if.end.i

ath6kl_usb_submit_ctrl_out.exit.i:                ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.25, i32 noundef %call6.i.i) #10
  br label %if.then.sink.split

if.end.i:                                         ; preds = %if.end3.i.i
  tail call void @kfree(ptr noundef nonnull %call.i.i) #10
  %cmp1.i = icmp eq ptr %8, null
  br i1 %cmp1.i, label %if.end.i.if.end_crit_edge, label %kmalloc.exit.i.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

kmalloc.exit.i.i:                                 ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3264, i32 noundef 4) #13
  %cmp1.i1.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp1.i1.i, label %kmalloc.exit.i.i.if.then_crit_edge, label %if.end3.i4.i

kmalloc.exit.i.i.if.then_crit_edge:               ; preds = %kmalloc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end3.i4.i:                                     ; preds = %kmalloc.exit.i.i
  %14 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %udev.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %shl.i.i3.i = shl i32 %17, 8
  %or6.i.i = or i32 %shl.i.i3.i, -2147483520
  %call7.i.i = tail call i32 @usb_control_msg(ptr noundef %15, i32 noundef %or6.i.i, i8 noundef zeroext 4, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i.i, i16 noundef zeroext 4, i32 noundef 2000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %cmp8.i.i = icmp slt i32 %call7.i.i, 0
  br i1 %cmp8.i.i, label %ath6kl_usb_ctrl_msg_exchange.exit, label %ath6kl_usb_ctrl_msg_exchange.exit.thread25

ath6kl_usb_ctrl_msg_exchange.exit.thread25:       ; preds = %if.end3.i4.i
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call7.i.i.i, align 8
  %20 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %8, align 1
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %if.end

ath6kl_usb_ctrl_msg_exchange.exit:                ; preds = %if.end3.i4.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.26, i32 noundef %call7.i.i) #10
  br label %if.then.sink.split

if.then.sink.split:                               ; preds = %ath6kl_usb_ctrl_msg_exchange.exit, %ath6kl_usb_submit_ctrl_out.exit.i
  %call.i.i.sink = phi ptr [ %call.i.i, %ath6kl_usb_submit_ctrl_out.exit.i ], [ %call7.i.i.i, %ath6kl_usb_ctrl_msg_exchange.exit ]
  %retval.0.i20.ph = phi i32 [ %call6.i.i, %ath6kl_usb_submit_ctrl_out.exit.i ], [ %call7.i.i, %ath6kl_usb_ctrl_msg_exchange.exit ]
  tail call void @kfree(ptr noundef nonnull %call.i.i.sink) #10
  br label %if.then

if.then:                                          ; preds = %if.then.sink.split, %kmalloc.exit.i.i.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i20 = phi i32 [ -12, %entry.if.then_crit_edge ], [ -12, %kmalloc.exit.i.i.if.then_crit_edge ], [ %retval.0.i20.ph, %if.then.sink.split ]
  tail call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.24, i32 noundef %retval.0.i20) #10
  br label %cleanup

if.end:                                           ; preds = %ath6kl_usb_ctrl_msg_exchange.exit.thread25, %if.end.i.if.end_crit_edge
  %21 = ptrtoint ptr %diag_resp_buffer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %diag_resp_buffer, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %22, align 1
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %26 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0.i19 = phi i32 [ 0, %if.end ], [ %retval.0.i20, %if.then ]
  ret i32 %retval.0.i19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_usb_diag_write32(ptr nocapture noundef readonly %ar, i32 noundef %address, i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hif_priv = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 12
  %0 = ptrtoint ptr %hif_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hif_priv, align 4
  %diag_cmd_buffer = getelementptr inbounds %struct.ath6kl_usb, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %diag_cmd_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %diag_cmd_buffer, align 4
  %4 = getelementptr inbounds i8, ptr %3, i32 12
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 0, ptr %4, align 1
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 16777216, ptr %3, align 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %address)
  %address2 = getelementptr inbounds %struct.ath6kl_usb_ctrl_diag_cmd_write, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %address2 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %7, ptr %address2, align 1
  %value = getelementptr inbounds %struct.ath6kl_usb_ctrl_diag_cmd_write, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %data, ptr %value, align 1
  %call.i.i = tail call ptr @kmemdup(ptr noundef %3, i32 noundef 16, i32 noundef 3264) #10
  %cmp1.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp1.i.i, label %entry.if.then_crit_edge, label %if.end3.i.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end3.i.i:                                      ; preds = %entry
  %udev.i.i = getelementptr inbounds %struct.ath6kl_usb, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %udev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %udev.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i.i.i = shl i32 %13, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call6.i.i = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or.i.i, i8 noundef zeroext 3, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call.i.i, i16 noundef zeroext 16, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp7.i.i = icmp slt i32 %call6.i.i, 0
  br i1 %cmp7.i.i, label %ath6kl_usb_submit_ctrl_out.exit.i, label %ath6kl_usb_ctrl_msg_exchange.exit

ath6kl_usb_submit_ctrl_out.exit.i:                ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.25, i32 noundef %call6.i.i) #10
  tail call void @kfree(ptr noundef nonnull %call.i.i) #10
  br label %if.then

ath6kl_usb_ctrl_msg_exchange.exit:                ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call.i.i) #10
  br label %cleanup

if.then:                                          ; preds = %ath6kl_usb_submit_ctrl_out.exit.i, %entry.if.then_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %entry.if.then_crit_edge ], [ %call6.i.i, %ath6kl_usb_submit_ctrl_out.exit.i ]
  tail call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.27, i32 noundef %retval.0.i.ph) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then, %ath6kl_usb_ctrl_msg_exchange.exit
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.then ], [ 0, %ath6kl_usb_ctrl_msg_exchange.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_usb_bmi_read(ptr nocapture noundef readonly %ar, ptr nocapture noundef writeonly %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hif_priv = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 12
  %0 = ptrtoint ptr %hif_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hif_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp.not.i = icmp eq i32 %len, 0
  br i1 %cmp.not.i, label %entry.if.end3.i_crit_edge, label %if.end8.i.i

entry.if.end3.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i

if.end8.i.i:                                      ; preds = %entry
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %len, i32 noundef 3264) #14
  %cmp1.i = icmp eq ptr %call9.i.i, null
  br i1 %cmp1.i, label %if.end8.i.i.if.then_crit_edge, label %if.end8.i.i.if.end3.i_crit_edge

if.end8.i.i.if.end3.i_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i

if.end8.i.i.if.then_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end3.i:                                        ; preds = %if.end8.i.i.if.end3.i_crit_edge, %entry.if.end3.i_crit_edge
  %buf.0.i = phi ptr [ %call9.i.i, %if.end8.i.i.if.end3.i_crit_edge ], [ null, %entry.if.end3.i_crit_edge ]
  %udev.i = getelementptr inbounds %struct.ath6kl_usb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %5, 8
  %or6.i = or i32 %shl.i.i, -2147483520
  %conv.i = trunc i32 %len to i16
  %call7.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or6.i, i8 noundef zeroext 2, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %buf.0.i, i16 noundef zeroext %conv.i, i32 noundef 2000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %ath6kl_usb_submit_ctrl_in.exit, label %ath6kl_usb_submit_ctrl_in.exit.thread7

ath6kl_usb_submit_ctrl_in.exit.thread7:           ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  %6 = call ptr @memcpy(ptr %buf, ptr %buf.0.i, i32 %len)
  tail call void @kfree(ptr noundef %buf.0.i) #10
  br label %cleanup

ath6kl_usb_submit_ctrl_in.exit:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.26, i32 noundef %call7.i) #10
  tail call void @kfree(ptr noundef %buf.0.i) #10
  br label %if.then

if.then:                                          ; preds = %ath6kl_usb_submit_ctrl_in.exit, %if.end8.i.i.if.then_crit_edge
  %retval.0.i6 = phi i32 [ %call7.i, %ath6kl_usb_submit_ctrl_in.exit ], [ -12, %if.end8.i.i.if.then_crit_edge ]
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.28, i32 noundef %retval.0.i6) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then, %ath6kl_usb_submit_ctrl_in.exit.thread7
  %retval.0 = phi i32 [ %retval.0.i6, %if.then ], [ 0, %ath6kl_usb_submit_ctrl_in.exit.thread7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_usb_bmi_write(ptr nocapture noundef readonly %ar, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hif_priv = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 12
  %0 = ptrtoint ptr %hif_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hif_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp.not.i = icmp eq i32 %len, 0
  br i1 %cmp.not.i, label %entry.if.end3.i_crit_edge, label %if.then.i

entry.if.end3.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i

if.then.i:                                        ; preds = %entry
  %call.i = tail call ptr @kmemdup(ptr noundef %buf, i32 noundef %len, i32 noundef 3264) #10
  %cmp1.i = icmp eq ptr %call.i, null
  br i1 %cmp1.i, label %if.then.i.if.then_crit_edge, label %if.then.i.if.end3.i_crit_edge

if.then.i.if.end3.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.i

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end3.i:                                        ; preds = %if.then.i.if.end3.i_crit_edge, %entry.if.end3.i_crit_edge
  %buf.0.i = phi ptr [ %call.i, %if.then.i.if.end3.i_crit_edge ], [ null, %entry.if.end3.i_crit_edge ]
  %udev.i = getelementptr inbounds %struct.ath6kl_usb, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %5, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %conv.i = trunc i32 %len to i16
  %call6.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %buf.0.i, i16 noundef zeroext %conv.i, i32 noundef 1000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %ath6kl_usb_submit_ctrl_out.exit, label %ath6kl_usb_submit_ctrl_out.exit.thread7

ath6kl_usb_submit_ctrl_out.exit.thread7:          ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef %buf.0.i) #10
  br label %cleanup

ath6kl_usb_submit_ctrl_out.exit:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @ath6kl_warn(ptr noundef nonnull @.str.25, i32 noundef %call6.i) #10
  tail call void @kfree(ptr noundef %buf.0.i) #10
  br label %if.then

if.then:                                          ; preds = %ath6kl_usb_submit_ctrl_out.exit, %if.then.i.if.then_crit_edge
  %retval.0.i6 = phi i32 [ %call6.i, %ath6kl_usb_submit_ctrl_out.exit ], [ -12, %if.then.i.if.then_crit_edge ]
  tail call void (ptr, ...) @ath6kl_err(ptr noundef nonnull @.str.29, i32 noundef %retval.0.i6) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then, %ath6kl_usb_submit_ctrl_out.exit.thread7
  %retval.0 = phi i32 [ %retval.0.i6, %if.then ], [ 0, %ath6kl_usb_submit_ctrl_out.exit.thread7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_usb_power_on(ptr nocapture noundef readonly %ar) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hif_priv.i.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 12
  %0 = ptrtoint ptr %hif_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hif_priv.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.ath6kl_usb, ptr %1, i32 0, i32 3, i32 5
  %urb_cnt_thresh.i.i = getelementptr %struct.ath6kl_usb, ptr %1, i32 0, i32 3, i32 5, i32 4
  %2 = ptrtoint ptr %urb_cnt_thresh.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %urb_cnt_thresh.i.i, align 4
  tail call fastcc void @ath6kl_usb_post_recv_transfers(ptr noundef %arrayidx.i.i) #10
  %urb_alloc.i = getelementptr %struct.ath6kl_usb, ptr %1, i32 0, i32 3, i32 0, i32 2
  %3 = ptrtoint ptr %urb_alloc.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %urb_alloc.i, align 4
  %div8.i = lshr i32 %4, 1
  %urb_cnt_thresh.i = getelementptr %struct.ath6kl_usb, ptr %1, i32 0, i32 3, i32 0, i32 4
  %5 = ptrtoint ptr %urb_cnt_thresh.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div8.i, ptr %urb_cnt_thresh.i, align 4
  %urb_alloc.1.i = getelementptr %struct.ath6kl_usb, ptr %1, i32 0, i32 3, i32 1, i32 2
  %6 = ptrtoint ptr %urb_alloc.1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %urb_alloc.1.i, align 4
  %div8.1.i = lshr i32 %7, 1
  %urb_cnt_thresh.1.i = getelementptr %struct.ath6kl_usb, ptr %1, i32 0, i32 3, i32 1, i32 4
  %8 = ptrtoint ptr %urb_cnt_thresh.1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div8.1.i, ptr %urb_cnt_thresh.1.i, align 4
  %urb_alloc.2.i = getelementptr %struct.ath6kl_usb, ptr %1, i32 0, i32 3, i32 2, i32 2
  %9 = ptrtoint ptr %urb_alloc.2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %urb_alloc.2.i, align 4
  %div8.2.i = lshr i32 %10, 1
  %urb_cnt_thresh.2.i = getelementptr %struct.ath6kl_usb, ptr %1, i32 0, i32 3, i32 2, i32 4
  %11 = ptrtoint ptr %urb_cnt_thresh.2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div8.2.i, ptr %urb_cnt_thresh.2.i, align 4
  %urb_alloc.3.i = getelementptr %struct.ath6kl_usb, ptr %1, i32 0, i32 3, i32 3, i32 2
  %12 = ptrtoint ptr %urb_alloc.3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %urb_alloc.3.i, align 4
  %div8.3.i = lshr i32 %13, 1
  %urb_cnt_thresh.3.i = getelementptr %struct.ath6kl_usb, ptr %1, i32 0, i32 3, i32 3, i32 4
  %14 = ptrtoint ptr %urb_cnt_thresh.3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div8.3.i, ptr %urb_cnt_thresh.3.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_usb_power_off(ptr nocapture noundef readonly %ar) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hif_priv.i.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 12
  %0 = ptrtoint ptr %hif_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hif_priv.i.i, align 4
  tail call fastcc void @ath6kl_usb_flush_all(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath6kl_usb_stop(ptr nocapture noundef readonly %ar) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hif_priv.i.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 12
  %0 = ptrtoint ptr %hif_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hif_priv.i.i, align 4
  tail call fastcc void @ath6kl_usb_flush_all(ptr noundef %1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath6kl_usb_send(ptr nocapture noundef readonly %ar, i8 noundef zeroext %PipeID, ptr nocapture noundef readnone %hdr_skb, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hif_priv.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 12
  %0 = ptrtoint ptr %hif_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hif_priv.i, align 4
  %idxprom = zext i8 %PipeID to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 4194304, ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.ath6kl_usb_send, i32 noundef %idxprom, ptr noundef %skb) #10
  %ar_usb.i = getelementptr %struct.ath6kl_usb, ptr %1, i32 0, i32 3, i32 %idxprom, i32 9
  %2 = ptrtoint ptr %ar_usb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ar_usb.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %do.body1.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

do.body1.i:                                       ; preds = %entry
  %arrayidx = getelementptr %struct.ath6kl_usb, ptr %1, i32 0, i32 3, i32 %idxprom
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %3) #10
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.i.not.i = icmp eq ptr %5, %arrayidx
  br i1 %cmp.i.not.i, label %ath6kl_usb_alloc_urb_from_pipe.exit.thread74, label %if.then8.i

ath6kl_usb_alloc_urb_from_pipe.exit.thread74:     ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %ar_usb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ar_usb.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %call3.i) #10
  br label %if.then

if.then8.i:                                       ; preds = %do.body1.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then8.i.ath6kl_usb_alloc_urb_from_pipe.exit_crit_edge

if.then8.i.ath6kl_usb_alloc_urb_from_pipe.exit_crit_edge: ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_usb_alloc_urb_from_pipe.exit

if.end.i.i.i:                                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i.i, align 4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %ath6kl_usb_alloc_urb_from_pipe.exit

ath6kl_usb_alloc_urb_from_pipe.exit:              ; preds = %if.end.i.i.i, %if.then8.i.ath6kl_usb_alloc_urb_from_pipe.exit_crit_edge
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %urb_cnt.i = getelementptr %struct.ath6kl_usb, ptr %1, i32 0, i32 3, i32 %idxprom, i32 3
  %16 = ptrtoint ptr %urb_cnt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %urb_cnt.i, align 4
  %dec.i = add i32 %17, -1
  store i32 %dec.i, ptr %urb_cnt.i, align 4
  %18 = ptrtoint ptr %ar_usb.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ar_usb.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %call3.i) #10
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %ath6kl_usb_alloc_urb_from_pipe.exit.if.then_crit_edge, label %if.end

ath6kl_usb_alloc_urb_from_pipe.exit.if.then_crit_edge: ; preds = %ath6kl_usb_alloc_urb_from_pipe.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %ath6kl_usb_alloc_urb_from_pipe.exit.if.then_crit_edge, %ath6kl_usb_alloc_urb_from_pipe.exit.thread74, %entry.if.then_crit_edge
  %urb_cnt = getelementptr %struct.ath6kl_usb, ptr %1, i32 0, i32 3, i32 %idxprom, i32 3
  %20 = ptrtoint ptr %urb_cnt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %urb_cnt, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 4194304, ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.ath6kl_usb_send, i32 noundef %idxprom, i32 noundef %21) #10
  br label %fail_hif_send

if.end:                                           ; preds = %ath6kl_usb_alloc_urb_from_pipe.exit
  %skb4 = getelementptr inbounds %struct.ath6kl_urb_context, ptr %5, i32 0, i32 2
  %22 = ptrtoint ptr %skb4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %skb, ptr %skb4, align 4
  %data5 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %23 = ptrtoint ptr %data5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data5, align 4
  %len6 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %25 = ptrtoint ptr %len6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len6, align 4
  %call7 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #10
  %cmp8 = icmp eq ptr %call7, null
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end
  %pipe11 = getelementptr inbounds %struct.ath6kl_urb_context, ptr %5, i32 0, i32 1
  %27 = ptrtoint ptr %pipe11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pipe11, align 4
  %ar_usb.i53 = getelementptr inbounds %struct.ath6kl_usb_pipe, ptr %28, i32 0, i32 9
  %29 = ptrtoint ptr %ar_usb.i53 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ar_usb.i53, align 4
  %tobool.not.i54 = icmp eq ptr %30, null
  br i1 %tobool.not.i54, label %if.then10.fail_hif_send_crit_edge, label %do.body1.i58

if.then10.fail_hif_send_crit_edge:                ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_hif_send

do.body1.i58:                                     ; preds = %if.then10
  %call3.i55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %30) #10
  %urb_cnt.i56 = getelementptr inbounds %struct.ath6kl_usb_pipe, ptr %28, i32 0, i32 3
  %31 = ptrtoint ptr %urb_cnt.i56 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %urb_cnt.i56, align 4
  %inc.i = add i32 %32, 1
  store i32 %inc.i, ptr %urb_cnt.i56, align 4
  %33 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %28, align 4
  %call.i.i.i57 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %5, ptr noundef %28, ptr noundef %34) #10
  br i1 %call.i.i.i57, label %if.end.i.i.i59, label %do.body1.i58.list_add.exit.i_crit_edge

do.body1.i58.list_add.exit.i_crit_edge:           ; preds = %do.body1.i58
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit.i

if.end.i.i.i59:                                   ; preds = %do.body1.i58
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %34, ptr %5, align 4
  %37 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %28, ptr %prev.i.i, align 4
  %38 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %5, ptr %28, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i59, %do.body1.i58.list_add.exit.i_crit_edge
  %39 = ptrtoint ptr %ar_usb.i53 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ar_usb.i53, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %40, i32 noundef %call3.i55) #10
  br label %fail_hif_send

if.end12:                                         ; preds = %if.end
  %udev = getelementptr inbounds %struct.ath6kl_usb, ptr %1, i32 0, i32 1
  %41 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %udev, align 4
  %usb_pipe_handle = getelementptr %struct.ath6kl_usb, ptr %1, i32 0, i32 3, i32 %idxprom, i32 5
  %43 = ptrtoint ptr %usb_pipe_handle to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %usb_pipe_handle, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 8
  %45 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 10
  %46 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %44, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 14
  %47 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %24, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 19
  %48 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %26, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 28
  %49 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @ath6kl_usb_usb_transmit_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 27
  %50 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %5, ptr %context4.i, align 4
  %max_packet_size = getelementptr %struct.ath6kl_usb, ptr %1, i32 0, i32 3, i32 %idxprom, i32 10
  %51 = ptrtoint ptr %max_packet_size to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %max_packet_size, align 4
  %conv13 = zext i16 %52 to i32
  %rem = urem i32 %26, %conv13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp14 = icmp eq i32 %rem, 0
  br i1 %cmp14, label %if.then16, label %if.end12.if.end17_crit_edge

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %call7, i32 0, i32 13
  %53 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %transfer_flags, align 4
  %or = or i32 %54, 64
  store i32 %or, ptr %transfer_flags, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end12.if.end17_crit_edge
  %logical_pipe_num = getelementptr %struct.ath6kl_usb, ptr %1, i32 0, i32 3, i32 %idxprom, i32 8
  %55 = ptrtoint ptr %logical_pipe_num to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %logical_pipe_num, align 1
  %conv18 = zext i8 %56 to i32
  %57 = ptrtoint ptr %usb_pipe_handle to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %usb_pipe_handle, align 4
  %ep_address = getelementptr %struct.ath6kl_usb, ptr %1, i32 0, i32 3, i32 %idxprom, i32 7
  %59 = ptrtoint ptr %ep_address to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %ep_address, align 4
  %conv20 = zext i8 %60 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 4194304, ptr noundef nonnull @.str.36, i32 noundef %conv18, i32 noundef %58, i32 noundef %conv20, i32 noundef %26) #10
  %urb_submitted = getelementptr %struct.ath6kl_usb, ptr %1, i32 0, i32 3, i32 %idxprom, i32 1
  tail call void @usb_anchor_urb(ptr noundef nonnull %call7, ptr noundef %urb_submitted) #10
  %call21 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call7, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool.not = icmp eq i32 %call21, 0
  br i1 %tobool.not, label %if.end17.if.end24_crit_edge, label %if.then22

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then22:                                        ; preds = %if.end17
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 4194304, ptr noundef nonnull @.str.37, i32 noundef %call21) #10
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call7) #10
  %pipe23 = getelementptr inbounds %struct.ath6kl_urb_context, ptr %5, i32 0, i32 1
  %61 = ptrtoint ptr %pipe23 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pipe23, align 4
  %ar_usb.i60 = getelementptr inbounds %struct.ath6kl_usb_pipe, ptr %62, i32 0, i32 9
  %63 = ptrtoint ptr %ar_usb.i60 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ar_usb.i60, align 4
  %tobool.not.i61 = icmp eq ptr %64, null
  br i1 %tobool.not.i61, label %if.then22.if.end24_crit_edge, label %do.body1.i66

if.then22.if.end24_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

do.body1.i66:                                     ; preds = %if.then22
  %call3.i62 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %64) #10
  %urb_cnt.i63 = getelementptr inbounds %struct.ath6kl_usb_pipe, ptr %62, i32 0, i32 3
  %65 = ptrtoint ptr %urb_cnt.i63 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %urb_cnt.i63, align 4
  %inc.i64 = add i32 %66, 1
  store i32 %inc.i64, ptr %urb_cnt.i63, align 4
  %67 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %62, align 4
  %call.i.i.i65 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %5, ptr noundef %62, ptr noundef %68) #10
  br i1 %call.i.i.i65, label %if.end.i.i.i69, label %do.body1.i66.list_add.exit.i70_crit_edge

do.body1.i66.list_add.exit.i70_crit_edge:         ; preds = %do.body1.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit.i70

if.end.i.i.i69:                                   ; preds = %do.body1.i66
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i67 = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %prev1.i.i.i67 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %5, ptr %prev1.i.i.i67, align 4
  %70 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %68, ptr %5, align 4
  %71 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %62, ptr %prev.i.i, align 4
  %72 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %5, ptr %62, align 4
  br label %list_add.exit.i70

list_add.exit.i70:                                ; preds = %if.end.i.i.i69, %do.body1.i66.list_add.exit.i70_crit_edge
  %73 = ptrtoint ptr %ar_usb.i60 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ar_usb.i60, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %74, i32 noundef %call3.i62) #10
  br label %if.end24

if.end24:                                         ; preds = %list_add.exit.i70, %if.then22.if.end24_crit_edge, %if.end17.if.end24_crit_edge
  %status.0 = phi i32 [ 0, %if.end17.if.end24_crit_edge ], [ -22, %if.then22.if.end24_crit_edge ], [ -22, %list_add.exit.i70 ]
  tail call void @usb_free_urb(ptr noundef nonnull %call7) #10
  br label %fail_hif_send

fail_hif_send:                                    ; preds = %if.end24, %list_add.exit.i, %if.then10.fail_hif_send_crit_edge, %if.then
  %status.1 = phi i32 [ -12, %if.then ], [ %status.0, %if.end24 ], [ -12, %if.then10.fail_hif_send_crit_edge ], [ -12, %list_add.exit.i ]
  ret i32 %status.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @ath6kl_usb_get_default_pipe(ptr nocapture noundef readnone %ar, ptr nocapture noundef writeonly %ul_pipe, ptr nocapture noundef writeonly %dl_pipe) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ul_pipe to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %ul_pipe, align 1
  %1 = ptrtoint ptr %dl_pipe to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 4, ptr %dl_pipe, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ath6kl_usb_map_service_pipe(ptr noundef %ar, i16 noundef zeroext %svc_id, ptr nocapture noundef writeonly %ul_pipe, ptr nocapture noundef writeonly %dl_pipe) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i16 %svc_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.44)
  switch i16 %svc_id, label %entry.sw.epilog_crit_edge [
    i16 1, label %entry.sw.epilog.sink.split_crit_edge
    i16 256, label %entry.sw.epilog.sink.split_crit_edge24
    i16 257, label %entry.sw.bb1_crit_edge
    i16 258, label %entry.sw.bb1_crit_edge25
    i16 259, label %sw.bb2
    i16 260, label %sw.bb3
  ]

entry.sw.bb1_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

entry.sw.epilog.sink.split_crit_edge24:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge25
  br label %sw.epilog.sink.split

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fw_capabilities = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 87
  %1 = ptrtoint ptr %fw_capabilities to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %fw_capabilities, align 4
  %3 = and i32 %2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %. = select i1 %tobool.not, i8 2, i8 1
  br label %sw.epilog.sink.split

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %fw_capabilities4 = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 87
  %4 = ptrtoint ptr %fw_capabilities4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %fw_capabilities4, align 4
  %6 = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool7.not = icmp eq i32 %6, 0
  %.21 = select i1 %tobool7.not, i8 2, i8 1
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog.sink.split_crit_edge, %entry.sw.epilog.sink.split_crit_edge24
  %.21.sink = phi i8 [ %.21, %sw.bb3 ], [ %., %sw.bb2 ], [ 1, %sw.bb1 ], [ 0, %entry.sw.epilog.sink.split_crit_edge ], [ 0, %entry.sw.epilog.sink.split_crit_edge24 ]
  %7 = ptrtoint ptr %ul_pipe to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %.21.sink, ptr %ul_pipe, align 1
  %8 = ptrtoint ptr %dl_pipe to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 5, ptr %dl_pipe, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %status.0 = phi i32 [ -1, %entry.sw.epilog_crit_edge ], [ 0, %sw.epilog.sink.split ]
  ret i32 %status.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @ath6kl_usb_get_free_queue_number(ptr nocapture noundef readonly %ar, i8 noundef zeroext %pipe_id) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hif_priv.i = getelementptr inbounds %struct.ath6kl, ptr %ar, i32 0, i32 12
  %0 = ptrtoint ptr %hif_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hif_priv.i, align 4
  %idxprom = zext i8 %pipe_id to i32
  %urb_cnt = getelementptr %struct.ath6kl_usb, ptr %1, i32 0, i32 3, i32 %idxprom, i32 3
  %2 = ptrtoint ptr %urb_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %urb_cnt, align 4
  %conv = trunc i32 %3 to i16
  ret i16 %conv
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_warn(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath6kl_usb_post_recv_transfers(ptr noundef %recv_pipe) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ar_usb.i = getelementptr inbounds %struct.ath6kl_usb_pipe, ptr %recv_pipe, i32 0, i32 9
  %0 = ptrtoint ptr %ar_usb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar_usb.i, align 4
  %tobool.not.i18 = icmp eq ptr %1, null
  br i1 %tobool.not.i18, label %entry.cleanup_crit_edge, label %do.body1.i.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body1.i.lr.ph:                                 ; preds = %entry
  %urb_cnt.i = getelementptr inbounds %struct.ath6kl_usb_pipe, ptr %recv_pipe, i32 0, i32 3
  %usb_pipe_handle = getelementptr inbounds %struct.ath6kl_usb_pipe, ptr %recv_pipe, i32 0, i32 5
  %logical_pipe_num = getelementptr inbounds %struct.ath6kl_usb_pipe, ptr %recv_pipe, i32 0, i32 8
  %ep_address = getelementptr inbounds %struct.ath6kl_usb_pipe, ptr %recv_pipe, i32 0, i32 7
  %urb_submitted = getelementptr inbounds %struct.ath6kl_usb_pipe, ptr %recv_pipe, i32 0, i32 1
  br label %do.body1.i

do.body1.i:                                       ; preds = %if.end16.do.body1.i_crit_edge, %do.body1.i.lr.ph
  %2 = phi ptr [ %1, %do.body1.i.lr.ph ], [ %41, %if.end16.do.body1.i_crit_edge ]
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %2) #10
  %3 = ptrtoint ptr %recv_pipe to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %recv_pipe, align 4
  %cmp.i.not.i = icmp eq ptr %4, %recv_pipe
  br i1 %cmp.i.not.i, label %do.body1.i.cleanup.sink.split_crit_edge, label %if.then8.i

do.body1.i.cleanup.sink.split_crit_edge:          ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then8.i:                                       ; preds = %do.body1.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then8.i.ath6kl_usb_alloc_urb_from_pipe.exit_crit_edge

if.then8.i.ath6kl_usb_alloc_urb_from_pipe.exit_crit_edge: ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_usb_alloc_urb_from_pipe.exit

if.end.i.i.i:                                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %ath6kl_usb_alloc_urb_from_pipe.exit

ath6kl_usb_alloc_urb_from_pipe.exit:              ; preds = %if.end.i.i.i, %if.then8.i.ath6kl_usb_alloc_urb_from_pipe.exit_crit_edge
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %urb_cnt.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %urb_cnt.i, align 4
  %dec.i = add i32 %14, -1
  store i32 %dec.i, ptr %urb_cnt.i, align 4
  %15 = ptrtoint ptr %ar_usb.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ar_usb.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %call3.i) #10
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %ath6kl_usb_alloc_urb_from_pipe.exit.cleanup_crit_edge, label %if.end

ath6kl_usb_alloc_urb_from_pipe.exit.cleanup_crit_edge: ; preds = %ath6kl_usb_alloc_urb_from_pipe.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %ath6kl_usb_alloc_urb_from_pipe.exit
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 4096, i32 noundef 2592) #10
  %skb = getelementptr inbounds %struct.ath6kl_urb_context, ptr %4, i32 0, i32 2
  %17 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i.i, ptr %skb, align 4
  %cmp3 = icmp eq ptr %call.i.i, null
  br i1 %cmp3, label %if.end.err_cleanup_urb_crit_edge, label %if.end5

if.end.err_cleanup_urb_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_cleanup_urb

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #10
  %cmp7 = icmp eq ptr %call6, null
  br i1 %cmp7, label %if.end5.err_cleanup_urb_crit_edge, label %if.end9

if.end5.err_cleanup_urb_crit_edge:                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_cleanup_urb

if.end9:                                          ; preds = %if.end5
  %18 = ptrtoint ptr %ar_usb.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ar_usb.i, align 4
  %udev = getelementptr inbounds %struct.ath6kl_usb, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %udev, align 4
  %22 = ptrtoint ptr %usb_pipe_handle to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %usb_pipe_handle, align 4
  %24 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 19
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %call6, i32 0, i32 8
  %28 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %21, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %call6, i32 0, i32 10
  %29 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %23, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %call6, i32 0, i32 14
  %30 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %call6, i32 0, i32 19
  %31 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 4096, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %call6, i32 0, i32 28
  %32 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @ath6kl_usb_recv_complete, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %call6, i32 0, i32 27
  %33 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %4, ptr %context4.i, align 4
  %34 = ptrtoint ptr %logical_pipe_num to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %logical_pipe_num, align 1
  %conv = zext i8 %35 to i32
  %36 = load i32, ptr %usb_pipe_handle, align 4
  %37 = ptrtoint ptr %ep_address to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ep_address, align 4
  %conv12 = zext i8 %38 to i32
  %39 = load ptr, ptr %skb, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 4194304, ptr noundef nonnull @.str.30, i32 noundef %conv, i32 noundef %36, i32 noundef %conv12, i32 noundef 4096, ptr noundef %39) #10
  tail call void @usb_anchor_urb(ptr noundef nonnull %call6, ptr noundef %urb_submitted) #10
  %call14 = tail call i32 @usb_submit_urb(ptr noundef nonnull %call6, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 4194304, ptr noundef nonnull @.str.31, i32 noundef %call14) #10
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call6) #10
  tail call void @usb_free_urb(ptr noundef nonnull %call6) #10
  br label %err_cleanup_urb

if.end16:                                         ; preds = %if.end9
  tail call void @usb_free_urb(ptr noundef nonnull %call6) #10
  %40 = ptrtoint ptr %ar_usb.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ar_usb.i, align 4
  %tobool.not.i = icmp eq ptr %41, null
  br i1 %tobool.not.i, label %if.end16.cleanup_crit_edge, label %if.end16.do.body1.i_crit_edge

if.end16.do.body1.i_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1.i

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_cleanup_urb:                                  ; preds = %if.then15, %if.end5.err_cleanup_urb_crit_edge, %if.end.err_cleanup_urb_crit_edge
  %prev.i.i37 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %42 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %skb, align 4
  tail call void @consume_skb(ptr noundef %43) #10
  %44 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %skb, align 4
  %pipe.i = getelementptr inbounds %struct.ath6kl_urb_context, ptr %4, i32 0, i32 1
  %45 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pipe.i, align 4
  %ar_usb.i.i = getelementptr inbounds %struct.ath6kl_usb_pipe, ptr %46, i32 0, i32 9
  %47 = ptrtoint ptr %ar_usb.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ar_usb.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %48, null
  br i1 %tobool.not.i.i, label %err_cleanup_urb.cleanup_crit_edge, label %do.body1.i.i

err_cleanup_urb.cleanup_crit_edge:                ; preds = %err_cleanup_urb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body1.i.i:                                     ; preds = %err_cleanup_urb
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %48) #10
  %urb_cnt.i.i = getelementptr inbounds %struct.ath6kl_usb_pipe, ptr %46, i32 0, i32 3
  %49 = ptrtoint ptr %urb_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %urb_cnt.i.i, align 4
  %inc.i.i = add i32 %50, 1
  store i32 %inc.i.i, ptr %urb_cnt.i.i, align 4
  %51 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %46, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %4, ptr noundef %46, ptr noundef %52) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %do.body1.i.i.cleanup.sink.split_crit_edge

do.body1.i.i.cleanup.sink.split_crit_edge:        ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end.i.i.i.i:                                   ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i.i1 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %prev1.i.i.i.i1 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %4, ptr %prev1.i.i.i.i1, align 4
  %54 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %52, ptr %4, align 4
  %55 = ptrtoint ptr %prev.i.i37 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %46, ptr %prev.i.i37, align 4
  %56 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %4, ptr %46, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.i.i.i.i, %do.body1.i.i.cleanup.sink.split_crit_edge, %do.body1.i.cleanup.sink.split_crit_edge
  %ar_usb.i.i.sink = phi ptr [ %ar_usb.i.i, %if.end.i.i.i.i ], [ %ar_usb.i.i, %do.body1.i.i.cleanup.sink.split_crit_edge ], [ %ar_usb.i, %do.body1.i.cleanup.sink.split_crit_edge ]
  %call3.i.i.sink = phi i32 [ %call3.i.i, %if.end.i.i.i.i ], [ %call3.i.i, %do.body1.i.i.cleanup.sink.split_crit_edge ], [ %call3.i, %do.body1.i.cleanup.sink.split_crit_edge ]
  %57 = ptrtoint ptr %ar_usb.i.i.sink to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ar_usb.i.i.sink, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %58, i32 noundef %call3.i.i.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %err_cleanup_urb.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %ath6kl_usb_alloc_urb_from_pipe.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath6kl_usb_recv_complete(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %pipe1 = getelementptr inbounds %struct.ath6kl_urb_context, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pipe1, align 4
  %logical_pipe_num = getelementptr inbounds %struct.ath6kl_usb_pipe, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %logical_pipe_num to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %logical_pipe_num, align 1
  %conv = zext i8 %5 to i32
  %status2 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %6 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status2, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %8 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %actual_length, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 4194304, ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.ath6kl_usb_recv_complete, i32 noundef %conv, i32 noundef %7, i32 noundef %9, ptr noundef %urb) #10
  %10 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status2, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %11, label %sw.default [
    i32 0, label %if.end
    i32 -104, label %entry.if.end24.critedge_crit_edge
    i32 -2, label %entry.if.end24.critedge_crit_edge91
    i32 -108, label %entry.if.end24.critedge_crit_edge92
  ]

entry.if.end24.critedge_crit_edge92:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.critedge

entry.if.end24.critedge_crit_edge91:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.critedge

entry.if.end24.critedge_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.critedge

sw.default:                                       ; preds = %entry
  %13 = ptrtoint ptr %logical_pipe_num to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %logical_pipe_num, align 1
  %conv7 = zext i8 %14 to i32
  %ep_address = getelementptr inbounds %struct.ath6kl_usb_pipe, ptr %3, i32 0, i32 7
  %15 = ptrtoint ptr %ep_address to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ep_address, align 4
  %conv8 = zext i8 %16 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 4194304, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.ath6kl_usb_recv_complete, i32 noundef %conv7, i32 noundef %conv8, i32 noundef %11) #10
  %skb.i = getelementptr inbounds %struct.ath6kl_urb_context, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %skb.i, align 4
  tail call void @consume_skb(ptr noundef %18) #10
  %19 = ptrtoint ptr %skb.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %skb.i, align 4
  %20 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pipe1, align 4
  %ar_usb.i.i = getelementptr inbounds %struct.ath6kl_usb_pipe, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %ar_usb.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ar_usb.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i, label %sw.default.if.end24_crit_edge, label %do.body1.i.i

sw.default.if.end24_crit_edge:                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

do.body1.i.i:                                     ; preds = %sw.default
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %23) #10
  %urb_cnt.i.i = getelementptr inbounds %struct.ath6kl_usb_pipe, ptr %21, i32 0, i32 3
  %24 = ptrtoint ptr %urb_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %urb_cnt.i.i, align 4
  %inc.i.i = add i32 %25, 1
  store i32 %inc.i.i, ptr %urb_cnt.i.i, align 4
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %21, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %21, ptr noundef %27) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %do.body1.i.i.list_add.exit.i.i_crit_edge

do.body1.i.i.list_add.exit.i.i_crit_edge:         ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit.i.i

if.end.i.i.i.i:                                   ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %1, ptr %prev1.i.i.i.i, align 4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %27, ptr %1, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %21, ptr %prev3.i.i.i.i, align 4
  %31 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %1, ptr %21, align 4
  br label %list_add.exit.i.i

list_add.exit.i.i:                                ; preds = %if.end.i.i.i.i, %do.body1.i.i.list_add.exit.i.i_crit_edge
  %32 = ptrtoint ptr %ar_usb.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ar_usb.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %call3.i.i) #10
  br label %if.end24

if.end:                                           ; preds = %entry
  %34 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp11 = icmp eq i32 %35, 0
  %skb.i60 = getelementptr inbounds %struct.ath6kl_urb_context, ptr %1, i32 0, i32 2
  %36 = ptrtoint ptr %skb.i60 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %skb.i60, align 4
  br i1 %cmp11, label %land.lhs.true.critedge, label %if.end14

if.end14:                                         ; preds = %if.end
  %38 = ptrtoint ptr %skb.i60 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %skb.i60, align 4
  %39 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %actual_length, align 4
  %call = tail call ptr @skb_put(ptr noundef %37, i32 noundef %40) #10
  %io_comp_queue = getelementptr inbounds %struct.ath6kl_usb_pipe, ptr %3, i32 0, i32 12
  tail call void @skb_queue_tail(ptr noundef %io_comp_queue, ptr noundef %37) #10
  %io_complete_work = getelementptr inbounds %struct.ath6kl_usb_pipe, ptr %3, i32 0, i32 11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %41 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %41, ptr noundef %io_complete_work) #10
  %42 = ptrtoint ptr %skb.i60 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %skb.i60, align 4
  tail call void @consume_skb(ptr noundef %43) #10
  %44 = ptrtoint ptr %skb.i60 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %skb.i60, align 4
  %45 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pipe1, align 4
  %ar_usb.i.i48 = getelementptr inbounds %struct.ath6kl_usb_pipe, ptr %46, i32 0, i32 9
  %47 = ptrtoint ptr %ar_usb.i.i48 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ar_usb.i.i48, align 4
  %tobool.not.i.i49 = icmp eq ptr %48, null
  br i1 %tobool.not.i.i49, label %if.end14.land.lhs.true_crit_edge, label %do.body1.i.i54

if.end14.land.lhs.true_crit_edge:                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

do.body1.i.i54:                                   ; preds = %if.end14
  %call3.i.i50 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %48) #10
  %urb_cnt.i.i51 = getelementptr inbounds %struct.ath6kl_usb_pipe, ptr %46, i32 0, i32 3
  %49 = ptrtoint ptr %urb_cnt.i.i51 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %urb_cnt.i.i51, align 4
  %inc.i.i52 = add i32 %50, 1
  store i32 %inc.i.i52, ptr %urb_cnt.i.i51, align 4
  %51 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %46, align 4
  %call.i.i.i.i53 = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %46, ptr noundef %52) #10
  br i1 %call.i.i.i.i53, label %do.body1.i.i54.land.lhs.true.sink.split.sink.split_crit_edge, label %do.body1.i.i54.land.lhs.true.sink.split_crit_edge

do.body1.i.i54.land.lhs.true.sink.split_crit_edge: ; preds = %do.body1.i.i54
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.sink.split

do.body1.i.i54.land.lhs.true.sink.split.sink.split_crit_edge: ; preds = %do.body1.i.i54
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.sink.split.sink.split

land.lhs.true.critedge:                           ; preds = %if.end
  tail call void @consume_skb(ptr noundef %37) #10
  %53 = ptrtoint ptr %skb.i60 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %skb.i60, align 4
  %54 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pipe1, align 4
  %ar_usb.i.i62 = getelementptr inbounds %struct.ath6kl_usb_pipe, ptr %55, i32 0, i32 9
  %56 = ptrtoint ptr %ar_usb.i.i62 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ar_usb.i.i62, align 4
  %tobool.not.i.i63 = icmp eq ptr %57, null
  br i1 %tobool.not.i.i63, label %land.lhs.true.critedge.land.lhs.true_crit_edge, label %do.body1.i.i68

land.lhs.true.critedge.land.lhs.true_crit_edge:   ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

do.body1.i.i68:                                   ; preds = %land.lhs.true.critedge
  %call3.i.i64 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %57) #10
  %urb_cnt.i.i65 = getelementptr inbounds %struct.ath6kl_usb_pipe, ptr %55, i32 0, i32 3
  %58 = ptrtoint ptr %urb_cnt.i.i65 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %urb_cnt.i.i65, align 4
  %inc.i.i66 = add i32 %59, 1
  store i32 %inc.i.i66, ptr %urb_cnt.i.i65, align 4
  %60 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %55, align 4
  %call.i.i.i.i67 = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %55, ptr noundef %61) #10
  br i1 %call.i.i.i.i67, label %do.body1.i.i68.land.lhs.true.sink.split.sink.split_crit_edge, label %do.body1.i.i68.land.lhs.true.sink.split_crit_edge

do.body1.i.i68.land.lhs.true.sink.split_crit_edge: ; preds = %do.body1.i.i68
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.sink.split

do.body1.i.i68.land.lhs.true.sink.split.sink.split_crit_edge: ; preds = %do.body1.i.i68
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.sink.split.sink.split

land.lhs.true.sink.split.sink.split:              ; preds = %do.body1.i.i68.land.lhs.true.sink.split.sink.split_crit_edge, %do.body1.i.i54.land.lhs.true.sink.split.sink.split_crit_edge
  %.sink90 = phi ptr [ %52, %do.body1.i.i54.land.lhs.true.sink.split.sink.split_crit_edge ], [ %61, %do.body1.i.i68.land.lhs.true.sink.split.sink.split_crit_edge ]
  %.sink88 = phi ptr [ %46, %do.body1.i.i54.land.lhs.true.sink.split.sink.split_crit_edge ], [ %55, %do.body1.i.i68.land.lhs.true.sink.split.sink.split_crit_edge ]
  %ar_usb.i.i62.sink.ph = phi ptr [ %ar_usb.i.i48, %do.body1.i.i54.land.lhs.true.sink.split.sink.split_crit_edge ], [ %ar_usb.i.i62, %do.body1.i.i68.land.lhs.true.sink.split.sink.split_crit_edge ]
  %call3.i.i64.sink.ph = phi i32 [ %call3.i.i50, %do.body1.i.i54.land.lhs.true.sink.split.sink.split_crit_edge ], [ %call3.i.i64, %do.body1.i.i68.land.lhs.true.sink.split.sink.split_crit_edge ]
  %prev1.i.i.i.i69 = getelementptr inbounds %struct.list_head, ptr %.sink90, i32 0, i32 1
  %62 = ptrtoint ptr %prev1.i.i.i.i69 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %1, ptr %prev1.i.i.i.i69, align 4
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %.sink90, ptr %1, align 4
  %prev3.i.i.i.i70 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %64 = ptrtoint ptr %prev3.i.i.i.i70 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %.sink88, ptr %prev3.i.i.i.i70, align 4
  %65 = ptrtoint ptr %.sink88 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %1, ptr %.sink88, align 4
  br label %land.lhs.true.sink.split

land.lhs.true.sink.split:                         ; preds = %land.lhs.true.sink.split.sink.split, %do.body1.i.i68.land.lhs.true.sink.split_crit_edge, %do.body1.i.i54.land.lhs.true.sink.split_crit_edge
  %ar_usb.i.i62.sink = phi ptr [ %ar_usb.i.i48, %do.body1.i.i54.land.lhs.true.sink.split_crit_edge ], [ %ar_usb.i.i62, %do.body1.i.i68.land.lhs.true.sink.split_crit_edge ], [ %ar_usb.i.i62.sink.ph, %land.lhs.true.sink.split.sink.split ]
  %call3.i.i64.sink = phi i32 [ %call3.i.i50, %do.body1.i.i54.land.lhs.true.sink.split_crit_edge ], [ %call3.i.i64, %do.body1.i.i68.land.lhs.true.sink.split_crit_edge ], [ %call3.i.i64.sink.ph, %land.lhs.true.sink.split.sink.split ]
  %66 = ptrtoint ptr %ar_usb.i.i62.sink to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ar_usb.i.i62.sink, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %67, i32 noundef %call3.i.i64.sink) #10
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %land.lhs.true.sink.split, %land.lhs.true.critedge.land.lhs.true_crit_edge, %if.end14.land.lhs.true_crit_edge
  %urb_cnt = getelementptr inbounds %struct.ath6kl_usb_pipe, ptr %3, i32 0, i32 3
  %68 = ptrtoint ptr %urb_cnt to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %urb_cnt, align 4
  %urb_cnt_thresh = getelementptr inbounds %struct.ath6kl_usb_pipe, ptr %3, i32 0, i32 4
  %70 = ptrtoint ptr %urb_cnt_thresh to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %urb_cnt_thresh, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %71)
  %cmp21.not = icmp ult i32 %69, %71
  br i1 %cmp21.not, label %land.lhs.true.if.end24_crit_edge, label %if.then23

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @ath6kl_usb_post_recv_transfers(ptr noundef %3)
  br label %if.end24

if.end24.critedge:                                ; preds = %entry.if.end24.critedge_crit_edge, %entry.if.end24.critedge_crit_edge91, %entry.if.end24.critedge_crit_edge92
  %skb.i74 = getelementptr inbounds %struct.ath6kl_urb_context, ptr %1, i32 0, i32 2
  %72 = ptrtoint ptr %skb.i74 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %skb.i74, align 4
  tail call void @consume_skb(ptr noundef %73) #10
  %74 = ptrtoint ptr %skb.i74 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %skb.i74, align 4
  %75 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pipe1, align 4
  %ar_usb.i.i76 = getelementptr inbounds %struct.ath6kl_usb_pipe, ptr %76, i32 0, i32 9
  %77 = ptrtoint ptr %ar_usb.i.i76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ar_usb.i.i76, align 4
  %tobool.not.i.i77 = icmp eq ptr %78, null
  br i1 %tobool.not.i.i77, label %if.end24.critedge.if.end24_crit_edge, label %do.body1.i.i82

if.end24.critedge.if.end24_crit_edge:             ; preds = %if.end24.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

do.body1.i.i82:                                   ; preds = %if.end24.critedge
  %call3.i.i78 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %78) #10
  %urb_cnt.i.i79 = getelementptr inbounds %struct.ath6kl_usb_pipe, ptr %76, i32 0, i32 3
  %79 = ptrtoint ptr %urb_cnt.i.i79 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %urb_cnt.i.i79, align 4
  %inc.i.i80 = add i32 %80, 1
  store i32 %inc.i.i80, ptr %urb_cnt.i.i79, align 4
  %81 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %76, align 4
  %call.i.i.i.i81 = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %76, ptr noundef %82) #10
  br i1 %call.i.i.i.i81, label %if.end.i.i.i.i85, label %do.body1.i.i82.list_add.exit.i.i86_crit_edge

do.body1.i.i82.list_add.exit.i.i86_crit_edge:     ; preds = %do.body1.i.i82
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit.i.i86

if.end.i.i.i.i85:                                 ; preds = %do.body1.i.i82
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i.i83 = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %prev1.i.i.i.i83 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %1, ptr %prev1.i.i.i.i83, align 4
  %84 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %82, ptr %1, align 4
  %prev3.i.i.i.i84 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %85 = ptrtoint ptr %prev3.i.i.i.i84 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %76, ptr %prev3.i.i.i.i84, align 4
  %86 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %1, ptr %76, align 4
  br label %list_add.exit.i.i86

list_add.exit.i.i86:                              ; preds = %if.end.i.i.i.i85, %do.body1.i.i82.list_add.exit.i.i86_crit_edge
  %87 = ptrtoint ptr %ar_usb.i.i76 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ar_usb.i.i76, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %88, i32 noundef %call3.i.i78) #10
  br label %if.end24

if.end24:                                         ; preds = %list_add.exit.i.i86, %if.end24.critedge.if.end24_crit_edge, %if.then23, %land.lhs.true.if.end24_crit_edge, %list_add.exit.i.i, %sw.default.if.end24_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_anchor_urb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_unanchor_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath6kl_usb_flush_all(ptr noundef %ar_usb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ar_usb1 = getelementptr %struct.ath6kl_usb, ptr %ar_usb, i32 0, i32 3, i32 0, i32 9
  %0 = ptrtoint ptr %ar_usb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ar_usb1, align 4
  %cmp2.not = icmp eq ptr %1, null
  br i1 %cmp2.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %urb_submitted = getelementptr %struct.ath6kl_usb, ptr %ar_usb, i32 0, i32 3, i32 0, i32 1
  tail call void @usb_kill_anchored_urbs(ptr noundef %urb_submitted) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %ar_usb1.1 = getelementptr %struct.ath6kl_usb, ptr %ar_usb, i32 0, i32 3, i32 1, i32 9
  %2 = ptrtoint ptr %ar_usb1.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ar_usb1.1, align 4
  %cmp2.not.1 = icmp eq ptr %3, null
  br i1 %cmp2.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %urb_submitted.1 = getelementptr %struct.ath6kl_usb, ptr %ar_usb, i32 0, i32 3, i32 1, i32 1
  tail call void @usb_kill_anchored_urbs(ptr noundef %urb_submitted.1) #10
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %ar_usb1.2 = getelementptr %struct.ath6kl_usb, ptr %ar_usb, i32 0, i32 3, i32 2, i32 9
  %4 = ptrtoint ptr %ar_usb1.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ar_usb1.2, align 4
  %cmp2.not.2 = icmp eq ptr %5, null
  br i1 %cmp2.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  %urb_submitted.2 = getelementptr %struct.ath6kl_usb, ptr %ar_usb, i32 0, i32 3, i32 2, i32 1
  tail call void @usb_kill_anchored_urbs(ptr noundef %urb_submitted.2) #10
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %ar_usb1.3 = getelementptr %struct.ath6kl_usb, ptr %ar_usb, i32 0, i32 3, i32 3, i32 9
  %6 = ptrtoint ptr %ar_usb1.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ar_usb1.3, align 4
  %cmp2.not.3 = icmp eq ptr %7, null
  br i1 %cmp2.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  %urb_submitted.3 = getelementptr %struct.ath6kl_usb, ptr %ar_usb, i32 0, i32 3, i32 3, i32 1
  tail call void @usb_kill_anchored_urbs(ptr noundef %urb_submitted.3) #10
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %ar_usb1.4 = getelementptr %struct.ath6kl_usb, ptr %ar_usb, i32 0, i32 3, i32 4, i32 9
  %8 = ptrtoint ptr %ar_usb1.4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ar_usb1.4, align 4
  %cmp2.not.4 = icmp eq ptr %9, null
  br i1 %cmp2.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  %urb_submitted.4 = getelementptr %struct.ath6kl_usb, ptr %ar_usb, i32 0, i32 3, i32 4, i32 1
  tail call void @usb_kill_anchored_urbs(ptr noundef %urb_submitted.4) #10
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %ar_usb1.5 = getelementptr %struct.ath6kl_usb, ptr %ar_usb, i32 0, i32 3, i32 5, i32 9
  %10 = ptrtoint ptr %ar_usb1.5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ar_usb1.5, align 4
  %cmp2.not.5 = icmp eq ptr %11, null
  br i1 %cmp2.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  %urb_submitted.5 = getelementptr %struct.ath6kl_usb, ptr %ar_usb, i32 0, i32 3, i32 5, i32 1
  tail call void @usb_kill_anchored_urbs(ptr noundef %urb_submitted.5) #10
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %ar_usb1.6 = getelementptr %struct.ath6kl_usb, ptr %ar_usb, i32 0, i32 3, i32 6, i32 9
  %12 = ptrtoint ptr %ar_usb1.6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ar_usb1.6, align 4
  %cmp2.not.6 = icmp eq ptr %13, null
  br i1 %cmp2.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  %urb_submitted.6 = getelementptr %struct.ath6kl_usb, ptr %ar_usb, i32 0, i32 3, i32 6, i32 1
  tail call void @usb_kill_anchored_urbs(ptr noundef %urb_submitted.6) #10
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5.for.inc.6_crit_edge
  %ar_usb1.7 = getelementptr %struct.ath6kl_usb, ptr %ar_usb, i32 0, i32 3, i32 7, i32 9
  %14 = ptrtoint ptr %ar_usb1.7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ar_usb1.7, align 4
  %cmp2.not.7 = icmp eq ptr %15, null
  br i1 %cmp2.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.7

if.then.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  %urb_submitted.7 = getelementptr %struct.ath6kl_usb, ptr %ar_usb, i32 0, i32 3, i32 7, i32 1
  tail call void @usb_kill_anchored_urbs(ptr noundef %urb_submitted.7) #10
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then.7, %for.inc.6.for.inc.7_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %16 = load ptr, ptr @system_wq, align 4
  tail call void @flush_workqueue(ptr noundef %16) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_anchored_urbs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath6kl_usb_usb_transmit_complete(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %pipe1 = getelementptr inbounds %struct.ath6kl_urb_context, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pipe1, align 4
  %logical_pipe_num = getelementptr inbounds %struct.ath6kl_usb_pipe, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %logical_pipe_num to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %logical_pipe_num, align 1
  %conv = zext i8 %5 to i32
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %8 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %actual_length, align 4
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 4194304, ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.ath6kl_usb_usb_transmit_complete, i32 noundef %conv, i32 noundef %7, i32 noundef %9) #10
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %logical_pipe_num to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %logical_pipe_num, align 1
  %conv5 = zext i8 %13 to i32
  tail call void (i32, ptr, ...) @ath6kl_dbg(i32 noundef 4194304, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.ath6kl_usb_usb_transmit_complete, i32 noundef %conv5, i32 noundef %11) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %skb7 = getelementptr inbounds %struct.ath6kl_urb_context, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %skb7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %skb7, align 4
  store ptr null, ptr %skb7, align 4
  %16 = ptrtoint ptr %pipe1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pipe1, align 4
  %ar_usb.i = getelementptr inbounds %struct.ath6kl_usb_pipe, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %ar_usb.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ar_usb.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end.ath6kl_usb_free_urb_to_pipe.exit_crit_edge, label %do.body1.i

if.end.ath6kl_usb_free_urb_to_pipe.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ath6kl_usb_free_urb_to_pipe.exit

do.body1.i:                                       ; preds = %if.end
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %19) #10
  %urb_cnt.i = getelementptr inbounds %struct.ath6kl_usb_pipe, ptr %17, i32 0, i32 3
  %20 = ptrtoint ptr %urb_cnt.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %urb_cnt.i, align 4
  %inc.i = add i32 %21, 1
  store i32 %inc.i, ptr %urb_cnt.i, align 4
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %17, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %17, ptr noundef %23) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.body1.i.list_add.exit.i_crit_edge

do.body1.i.list_add.exit.i_crit_edge:             ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %23, ptr %1, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %17, ptr %prev3.i.i.i, align 4
  %27 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %1, ptr %17, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %do.body1.i.list_add.exit.i_crit_edge
  %28 = ptrtoint ptr %ar_usb.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ar_usb.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %29, i32 noundef %call3.i) #10
  br label %ath6kl_usb_free_urb_to_pipe.exit

ath6kl_usb_free_urb_to_pipe.exit:                 ; preds = %list_add.exit.i, %if.end.ath6kl_usb_free_urb_to_pipe.exit_crit_edge
  %io_comp_queue = getelementptr inbounds %struct.ath6kl_usb_pipe, ptr %3, i32 0, i32 12
  tail call void @skb_queue_tail(ptr noundef %io_comp_queue, ptr noundef %15) #10
  %io_complete_work = getelementptr inbounds %struct.ath6kl_usb_pipe, ptr %3, i32 0, i32 11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %30 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %30, ptr noundef %io_complete_work) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_stop_txrx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath6kl_core_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !54, !56, !57, !59, !61, !63, !64, !66, !68, !70, !72, !74, !76, !78, !80, !81, !83, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128}
!llvm.module.flags = !{!130, !131, !132, !133, !134, !135, !136, !137}
!llvm.ident = !{!138}

!0 = !{ptr @__initcall__kmod_ath6kl_usb__375_1236_ath6kl_usb_driver_init6, !1, !"__initcall__kmod_ath6kl_usb__375_1236_ath6kl_usb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 1236, i32 1}
!2 = !{ptr @__exitcall_ath6kl_usb_driver_exit, !1, !"__exitcall_ath6kl_usb_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author376, !4, !"__UNIQUE_ID_author376", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 1238, i32 1}
!5 = !{ptr @__UNIQUE_ID_description377, !6, !"__UNIQUE_ID_description377", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 1239, i32 1}
!7 = !{ptr @__UNIQUE_ID_file378, !8, !"__UNIQUE_ID_file378", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 1240, i32 1}
!9 = !{ptr @__UNIQUE_ID_license379, !8, !"__UNIQUE_ID_license379", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_firmware380, !11, !"__UNIQUE_ID_firmware380", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 1241, i32 1}
!12 = !{ptr @__UNIQUE_ID_firmware381, !13, !"__UNIQUE_ID_firmware381", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 1242, i32 1}
!14 = !{ptr @__UNIQUE_ID_firmware382, !15, !"__UNIQUE_ID_firmware382", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 1243, i32 1}
!16 = !{ptr @__UNIQUE_ID_firmware383, !17, !"__UNIQUE_ID_firmware383", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 1244, i32 1}
!18 = !{ptr @__UNIQUE_ID_firmware384, !19, !"__UNIQUE_ID_firmware384", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 1245, i32 1}
!20 = !{ptr @__UNIQUE_ID_firmware385, !21, !"__UNIQUE_ID_firmware385", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 1246, i32 1}
!22 = !{ptr @__UNIQUE_ID_firmware386, !23, !"__UNIQUE_ID_firmware386", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 1247, i32 1}
!24 = !{ptr @__UNIQUE_ID_firmware387, !25, !"__UNIQUE_ID_firmware387", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 1248, i32 1}
!26 = !{ptr @__UNIQUE_ID_firmware388, !27, !"__UNIQUE_ID_firmware388", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 1249, i32 1}
!28 = !{ptr @__UNIQUE_ID_firmware389, !29, !"__UNIQUE_ID_firmware389", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 1250, i32 1}
!30 = !{ptr @__UNIQUE_ID_firmware390, !31, !"__UNIQUE_ID_firmware390", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 1251, i32 1}
!32 = !{ptr @__UNIQUE_ID_firmware391, !33, !"__UNIQUE_ID_firmware391", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 1252, i32 1}
!34 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @ath6kl_usb_driver, !36, !"ath6kl_usb_driver", i1 false, i1 false}
!36 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 1225, i32 26}
!37 = !{ptr @.str.1, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 1125, i32 29}
!39 = !{ptr @.str.2, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 1126, i32 29}
!41 = !{ptr @.str.3, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 1129, i32 30}
!43 = !{ptr @.str.4, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 1134, i32 30}
!45 = !{ptr @.str.5, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 1136, i32 30}
!47 = !{ptr @.str.6, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 1147, i32 14}
!49 = !{ptr @.str.7, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 1162, i32 14}
!51 = !{ptr @ath6kl_usb_create.__key, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 639, i32 2}
!53 = !{ptr @.str.8, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @ath6kl_usb_create.__key.9, !55, !"__key", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 645, i32 3}
!56 = !{ptr @.str.10, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.11, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 598, i32 8}
!59 = !{ptr @.str.12, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 602, i32 8}
!61 = !{ptr @skb_queue_head_init.__key, !62, !"__key", i1 false, i1 false}
!62 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!63 = !{ptr @.str.13, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.14, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 312, i32 29}
!66 = !{ptr @.str.15, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 320, i32 8}
!68 = !{ptr @.str.16, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 323, i32 8}
!70 = !{ptr @.str.17, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 323, i32 15}
!72 = !{ptr @.str.18, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 327, i32 8}
!74 = !{ptr @.str.19, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 336, i32 8}
!76 = !{ptr @.str.20, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 210, i32 6}
!78 = !{ptr @init_usb_anchor.__key, !79, !"__key", i1 false, i1 false}
!79 = !{!"../include/linux/usb.h", i32 1367, i32 2}
!80 = !{ptr @.str.21, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @init_usb_anchor.__key.22, !82, !"__key", i1 false, i1 false}
!82 = !{!"../include/linux/usb.h", i32 1368, i32 2}
!83 = !{ptr @.str.23, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @ath6kl_usb_ops, !85, !"ath6kl_usb_ops", i1 false, i1 false}
!85 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 1093, i32 36}
!86 = !{ptr @.str.24, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 978, i32 15}
!88 = !{ptr @.str.25, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 886, i32 15}
!90 = !{ptr @.str.26, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 918, i32 15}
!92 = !{ptr @.str.27, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 1009, i32 15}
!94 = !{ptr @.str.28, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 1026, i32 14}
!96 = !{ptr @.str.29, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 1044, i32 14}
!98 = !{ptr @.str.30, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 443, i32 7}
!100 = !{ptr @.str.31, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 453, i32 8}
!102 = !{ptr @.str.32, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 510, i32 6}
!104 = !{ptr @__func__.ath6kl_usb_recv_complete, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 510, i32 55}
!106 = !{ptr @.str.33, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 528, i32 8}
!108 = !{ptr @.str.34, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 716, i32 34}
!110 = !{ptr @__func__.ath6kl_usb_send, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 717, i32 6}
!112 = !{ptr @.str.35, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 727, i32 7}
!114 = !{ptr @.str.36, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 759, i32 6}
!116 = !{ptr @.str.37, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 768, i32 7}
!118 = !{ptr @.str.38, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 566, i32 6}
!120 = !{ptr @__func__.ath6kl_usb_usb_transmit_complete, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 567, i32 6}
!122 = !{ptr @.str.39, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 572, i32 7}
!124 = !{ptr @.str.40, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 228, i32 6}
!126 = !{ptr @.str.41, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 235, i32 7}
!128 = !{ptr @ath6kl_usb_ids, !129, !"ath6kl_usb_ids", i1 false, i1 false}
!129 = !{!"../drivers/net/wireless/ath/ath6kl/usb.c", i32 1217, i32 35}
!130 = !{i32 1, !"wchar_size", i32 2}
!131 = !{i32 1, !"min_enum_size", i32 4}
!132 = !{i32 8, !"branch-target-enforcement", i32 0}
!133 = !{i32 8, !"sign-return-address", i32 0}
!134 = !{i32 8, !"sign-return-address-all", i32 0}
!135 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!136 = !{i32 7, !"uwtable", i32 1}
!137 = !{i32 7, !"frame-pointer", i32 2}
!138 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
