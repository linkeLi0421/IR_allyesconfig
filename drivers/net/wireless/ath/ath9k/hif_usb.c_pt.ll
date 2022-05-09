; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ath/ath9k/hif_usb.c_pt.bc'
source_filename = "../drivers/net/wireless/ath/ath9k/hif_usb.c"
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
%struct.ath9k_htc_hif = type { %struct.list_head, i32, ptr, i8, i8, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.hif_device_usb = type { ptr, ptr, ptr, ptr, i32, %struct.completion, ptr, %struct.hif_usb_tx, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, ptr, [32 x i8], i32, i32, i32, i32, i32, %struct.spinlock, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hif_usb_tx = type { i8, i8, i16, %struct.sk_buff_head, %struct.list_head, %struct.list_head, %struct.spinlock }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.htc_target = type { ptr, ptr, ptr, ptr, [22 x %struct.htc_endpoint], %struct.completion, %struct.completion, %struct.list_head, i32, i16, i16, i8, %struct.atomic_t }
%struct.htc_endpoint = type { i16, %struct.htc_ep_callbacks, i32, i32, i8, i8 }
%struct.htc_ep_callbacks = type { ptr, ptr, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%struct.ath9k_htc_priv = type { ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i32, i32, i32, %struct.ath9k_hw_cal_data, %struct.ath_spec_scan_priv, %struct.spinlock, %struct.ath_beacon_config, %struct.htc_beacon, %struct.ath9k_htc_rx, %struct.ath9k_htc_tx, %struct.tasklet_struct, %struct.tasklet_struct, %struct.delayed_work, %struct.tasklet_struct, %struct.work_struct, %struct.work_struct, %struct.mutex, i32, i8, i8, i32, i8, [32 x i8], %struct.led_classdev, %struct.work_struct, i32, [4 x i32], %struct.ath_btcoex, %struct.delayed_work, %struct.delayed_work, %struct.ath9k_debug, %struct.mutex, ptr }
%struct.ath9k_hw_cal_data = type { i16, i16, i32, i32, i8, i8, [2 x i8], [3 x i16], [3 x [24 x i32]], [3 x i32], [8 x [3 x i32]], [3 x [16 x i32]], [3 x [6 x i32]], [6 x %struct.ath9k_nfcal_hist] }
%struct.ath9k_nfcal_hist = type { [5 x i16], i8, i16, i8 }
%struct.ath_spec_scan_priv = type { ptr, ptr, i32, %struct.ath_spec_scan }
%struct.ath_spec_scan = type { i8, i8, i8, i8, i8, i8 }
%struct.ath_beacon_config = type { ptr, i32, i16, i16, i8, i8, i8, i32, i32 }
%struct.htc_beacon = type { i32, [2 x ptr], i32, i32, i32, i32 }
%struct.ath9k_htc_rx = type { %struct.list_head, %struct.spinlock, i8 }
%struct.ath9k_htc_tx = type { i8, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, [8 x i32], %struct.timer_list, %struct.spinlock, i8 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.130, i32 }
%union.anon.130 = type { ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ath_btcoex = type { i32, i32, i32, i32, i32, i32 }
%struct.ath9k_debug = type { ptr, %struct.ath_tx_stats, %struct.ath_rx_stats, %struct.ath_skbrx_stats }
%struct.ath_tx_stats = type { i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.ath_rx_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [39 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath_skbrx_stats = type { i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
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
%struct.cmd_buf = type { ptr, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.tx_buf = type { ptr, i16, i16, ptr, %struct.sk_buff_head, ptr, %struct.list_head }
%struct.rx_buf = type { ptr, ptr }

@__UNIQUE_ID_firmware354 = internal constant [47 x i8] c"ath9k_htc.firmware=ath9k_htc/htc_7010-1.4.0.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware355 = internal constant [47 x i8] c"ath9k_htc.firmware=ath9k_htc/htc_9271-1.4.0.fw\00", section ".modinfo", align 1
@ath9k_hif_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @ath9k_hif_usb_probe, ptr @ath9k_hif_usb_disconnect, ptr null, ptr @ath9k_hif_usb_suspend, ptr @ath9k_hif_usb_resume, ptr @ath9k_hif_usb_resume, ptr null, ptr null, ptr @ath9k_hif_usb_ids, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 48 }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ath9k_htc\00", [22 x i8] zeroinitializer }, align 32
@ath9k_hif_usb_ids = internal constant { [29 x %struct.usb_device_id], [168 x i8] } { [29 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 3315, i16 -28047, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3315, i16 4102, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2118, i16 -28624, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1976, i16 -28047, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2001, i16 14864, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5075, i16 13095, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5075, i16 13096, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5075, i16 13126, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5075, i16 13128, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5075, i16 13129, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5075, i16 13136, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1226, i16 17925, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1037, i16 14337, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3315, i16 -20477, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3315, i16 -20478, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1404, i16 -31741, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1137, i16 8350, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 7898, i16 8981, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3315, i16 28693, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 5736, i16 4608, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 3315, i16 28688, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 2118, i16 -28648, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 2106, i16 -22780, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1041, i16 383, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1041, i16 407, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1242, i16 14596, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 2352, i16 2568, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 3315, i16 8447, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id zeroinitializer], [168 x i8] zeroinitializer }, align 32
@send_eject_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1298, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ath9k_htc: Could not find bulk out endpoint\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"send_eject_command\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/wireless/ath/ath9k/hif_usb.c\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@send_eject_command._entry_ptr = internal global ptr @send_eject_command._entry, section ".printk_index", align 4
@send_eject_command._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1316, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Ejecting storage device...\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@send_eject_command._entry_ptr.9 = internal global ptr @send_eject_command._entry.6, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@htc_use_dev_fw = external dso_local local_unnamed_addr global i32, align 4
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"htc_7010.fw\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"htc_9271.fw\00", [20 x i8] zeroinitializer }, align 32
@ath9k_hif_request_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 1182, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"no suitable firmware found!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ath9k_hif_request_firmware\00", [37 x i8] zeroinitializer }, align 32
@ath9k_hif_request_firmware._entry_ptr = internal global ptr @ath9k_hif_request_firmware._entry, section ".printk_index", align 4
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"7010\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"9271\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s/htc_%s-%d.%s.0.fw\00", [43 x i8] zeroinitializer }, align 32
@ath9k_hif_request_firmware._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.3, i32 1206, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ath9k_htc: Async request for firmware %s failed\0A\00", [47 x i8] zeroinitializer }, align 32
@ath9k_hif_request_firmware._entry_ptr.23 = internal global ptr @ath9k_hif_request_firmware._entry.21, section ".printk_index", align 4
@ath9k_hif_request_firmware._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.17, ptr @.str.3, i32 1211, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ath9k_htc: Firmware %s requested\0A\00", [62 x i8] zeroinitializer }, align 32
@ath9k_hif_request_firmware._entry_ptr.26 = internal global ptr @ath9k_hif_request_firmware._entry.24, section ".printk_index", align 4
@ath9k_hif_usb_firmware_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 1228, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ath9k_htc: Failed to get firmware %s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ath9k_hif_usb_firmware_cb\00", [38 x i8] zeroinitializer }, align 32
@ath9k_hif_usb_firmware_cb._entry_ptr = internal global ptr @ath9k_hif_usb_firmware_cb._entry, section ".printk_index", align 4
@hif_usb = internal global { %struct.ath9k_htc_hif, [60 x i8] } { %struct.ath9k_htc_hif { %struct.list_head zeroinitializer, i32 0, ptr @.str.29, i8 3, i8 4, ptr @hif_usb_start, ptr @hif_usb_stop, ptr @hif_usb_sta_drain, ptr @hif_usb_send }, [60 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ath9k_hif_usb\00", [18 x i8] zeroinitializer }, align 32
@hif_usb_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 483, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ath9k_htc: Invalid TX pipe: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hif_usb_send\00", [19 x i8] zeroinitializer }, align 32
@hif_usb_send._entry_ptr = internal global ptr @hif_usb_send._entry, section ".printk_index", align 4
@ath9k_hif_usb_dev_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 1104, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ath9k_htc: Firmware - %s download failed\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ath9k_hif_usb_dev_init\00", [41 x i8] zeroinitializer }, align 32
@ath9k_hif_usb_dev_init._entry_ptr = internal global ptr @ath9k_hif_usb_dev_init._entry, section ".printk_index", align 4
@ath9k_hif_usb_dev_init._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.3, i32 1112, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ath9k_htc: Unable to allocate URBs\0A\00", [60 x i8] zeroinitializer }, align 32
@ath9k_hif_usb_dev_init._entry_ptr.36 = internal global ptr @ath9k_hif_usb_dev_init._entry.34, section ".printk_index", align 4
@ath9k_hif_usb_download_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 1091, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ath9k_htc: Transferred FW: %s, size: %ld\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ath9k_hif_usb_download_fw\00", [38 x i8] zeroinitializer }, align 32
@ath9k_hif_usb_download_fw._entry_ptr = internal global ptr @ath9k_hif_usb_download_fw._entry, section ".printk_index", align 4
@init_usb_anchor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->wait\00", [18 x i8] zeroinitializer }, align 32
@init_usb_anchor.__key.40 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&anchor->lock\00", [18 x i8] zeroinitializer }, align 32
@ath9k_hif_usb_alloc_tx_urbs.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&hif_dev->tx.tx_lock\00", [43 x i8] zeroinitializer }, align 32
@ath9k_hif_usb_alloc_rx_urbs.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&hif_dev->rx_lock\00", [46 x i8] zeroinitializer }, align 32
@ath9k_hif_usb_rx_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 595, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ath9k_htc: invalid pkt_len (%x)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ath9k_hif_usb_rx_stream\00", [40 x i8] zeroinitializer }, align 32
@ath9k_hif_usb_rx_stream._entry_ptr = internal global ptr @ath9k_hif_usb_rx_stream._entry, section ".printk_index", align 4
@ath9k_hif_usb_rx_stream._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.3, i32 617, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ath9k_htc: RX memory allocation error\0A\00", [57 x i8] zeroinitializer }, align 32
@ath9k_hif_usb_rx_stream._entry_ptr.48 = internal global ptr @ath9k_hif_usb_rx_stream._entry.46, section ".printk_index", align 4
@ath9k_hif_usb_rx_stream._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.45, ptr @.str.3, i32 633, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ath9k_htc: over RX MAX_PKT_NUM\0A\00", [32 x i8] zeroinitializer }, align 32
@ath9k_hif_usb_rx_stream._entry_ptr.51 = internal global ptr @ath9k_hif_usb_rx_stream._entry.49, section ".printk_index", align 4
@ath9k_hif_usb_rx_stream._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.3, i32 639, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@ath9k_hif_usb_rx_stream._entry_ptr.53 = internal global ptr @ath9k_hif_usb_rx_stream._entry.52, section ".printk_index", align 4
@ath9k_hif_usb_reg_in_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 747, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ath9k_htc: REG_IN memory allocation failure\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ath9k_hif_usb_reg_in_cb\00", [40 x i8] zeroinitializer }, align 32
@ath9k_hif_usb_reg_in_cb._entry_ptr = internal global ptr @ath9k_hif_usb_reg_in_cb._entry, section ".printk_index", align 4
@ath9k_hif_usb_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.3, i32 1416, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ath9k_htc: USB layer deinitialized\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ath9k_hif_usb_disconnect\00", [39 x i8] zeroinitializer }, align 32
@ath9k_hif_usb_disconnect._entry_ptr = internal global ptr @ath9k_hif_usb_disconnect._entry, section ".printk_index", align 4
@ath9k_hif_usb_reboot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.3, i32 1385, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ath9k_htc: USB reboot failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ath9k_hif_usb_reboot\00", [43 x i8] zeroinitializer }, align 32
@ath9k_hif_usb_reboot._entry_ptr = internal global ptr @ath9k_hif_usb_reboot._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 4]
@__sancov_gen_cov_switch_values.60 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967277, i64 4294967294]
@__sancov_gen_cov_switch_values.61 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967277, i64 4294967294]
@__sancov_gen_cov_switch_values.62 = internal global [6 x i64] [i64 4, i64 32, i64 4294967188, i64 4294967192, i64 4294967277, i64 4294967294]
@__sancov_gen_cov_switch_values.63 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967277, i64 4294967294]
@__sancov_gen_cov_switch_values.64 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967277, i64 4294967294]
@___asan_gen_.65 = private unnamed_addr constant [21 x i8] c"ath9k_hif_usb_driver\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1486, i32 26 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1502, i32 9 }
@___asan_gen_.71 = private unnamed_addr constant [18 x i8] c"ath9k_hif_usb_ids\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 23, i32 35 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1297, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1316, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 87, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1156, i32 19 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1159, i32 19 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1171, i32 15 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1173, i32 15 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1182, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1187, i32 11 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1189, i32 11 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1196, i32 5 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1204, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1210, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1226, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant [8 x i8] c"hif_usb\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 525, i32 29 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 527, i32 10 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 482, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1102, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1111, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1090, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1367, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 1368, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 823, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 871, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 594, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 616, i32 5 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 632, i32 5 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 638, i32 5 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 746, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1416, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.269 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.270 = private constant [44 x i8] c"../drivers/net/wireless/ath/ath9k/hif_usb.c\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1385, i32 3 }
@llvm.compiler.used = appending global [88 x ptr] [ptr @__UNIQUE_ID_firmware354, ptr @__UNIQUE_ID_firmware355, ptr @ath9k_hif_request_firmware._entry, ptr @ath9k_hif_request_firmware._entry.21, ptr @ath9k_hif_request_firmware._entry.24, ptr @ath9k_hif_request_firmware._entry_ptr, ptr @ath9k_hif_request_firmware._entry_ptr.23, ptr @ath9k_hif_request_firmware._entry_ptr.26, ptr @ath9k_hif_usb_dev_init._entry, ptr @ath9k_hif_usb_dev_init._entry.34, ptr @ath9k_hif_usb_dev_init._entry_ptr, ptr @ath9k_hif_usb_dev_init._entry_ptr.36, ptr @ath9k_hif_usb_disconnect._entry, ptr @ath9k_hif_usb_disconnect._entry_ptr, ptr @ath9k_hif_usb_download_fw._entry, ptr @ath9k_hif_usb_download_fw._entry_ptr, ptr @ath9k_hif_usb_firmware_cb._entry, ptr @ath9k_hif_usb_firmware_cb._entry_ptr, ptr @ath9k_hif_usb_reboot._entry, ptr @ath9k_hif_usb_reboot._entry_ptr, ptr @ath9k_hif_usb_reg_in_cb._entry, ptr @ath9k_hif_usb_reg_in_cb._entry_ptr, ptr @ath9k_hif_usb_rx_stream._entry, ptr @ath9k_hif_usb_rx_stream._entry.46, ptr @ath9k_hif_usb_rx_stream._entry.49, ptr @ath9k_hif_usb_rx_stream._entry.52, ptr @ath9k_hif_usb_rx_stream._entry_ptr, ptr @ath9k_hif_usb_rx_stream._entry_ptr.48, ptr @ath9k_hif_usb_rx_stream._entry_ptr.51, ptr @ath9k_hif_usb_rx_stream._entry_ptr.53, ptr @hif_usb_send._entry, ptr @hif_usb_send._entry_ptr, ptr @send_eject_command._entry, ptr @send_eject_command._entry.6, ptr @send_eject_command._entry_ptr, ptr @send_eject_command._entry_ptr.9, ptr @ath9k_hif_usb_driver, ptr @.str, ptr @ath9k_hif_usb_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @init_completion.__key, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @hif_usb, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @init_usb_anchor.__key, ptr @.str.39, ptr @init_usb_anchor.__key.40, ptr @.str.41, ptr @ath9k_hif_usb_alloc_tx_urbs.__key, ptr @.str.42, ptr @ath9k_hif_usb_alloc_rx_urbs.__key, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_hif_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_hif_usb_ids to i32), i32 696, i32 864, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_eject_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_eject_command._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_hif_request_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_hif_request_firmware._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_hif_request_firmware._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_hif_usb_firmware_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hif_usb to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hif_usb_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_hif_usb_dev_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_hif_usb_dev_init._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_hif_usb_download_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_usb_anchor.__key.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_hif_usb_alloc_tx_urbs.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_hif_usb_alloc_rx_urbs.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_hif_usb_rx_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_hif_usb_rx_stream._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_hif_usb_rx_stream._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_hif_usb_rx_stream._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_hif_usb_reg_in_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_hif_usb_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ath9k_hif_usb_reboot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_hif_usb_dealloc_urbs(ptr noundef %hif_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regout_submitted = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 8
  tail call void @usb_kill_anchored_urbs(ptr noundef %regout_submitted) #8
  %reg_in_submitted.i = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 10
  tail call void @usb_kill_anchored_urbs(ptr noundef %reg_in_submitted.i) #8
  tail call fastcc void @ath9k_hif_usb_dealloc_tx_urbs(ptr noundef %hif_dev)
  %rx_submitted.i = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 9
  tail call void @usb_kill_anchored_urbs(ptr noundef %rx_submitted.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_anchored_urbs(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath9k_hif_usb_dealloc_tx_urbs(ptr noundef %hif_dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 7
  %tx_lock = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 7, i32 6
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock) #8
  %tx_buf6 = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 7, i32 4
  %0 = ptrtoint ptr %tx_buf6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_buf6, align 4
  %cmp15.not177 = icmp eq ptr %1, %tx_buf6
  br i1 %cmp15.not177, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in179 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %flags.0178 = phi i32 [ %call33, %list_del.exit.for.body_crit_edge ], [ %call2, %entry.for.body_crit_edge ]
  %tx_buf.0 = getelementptr i8, ptr %.pn.in179, i32 -72
  %2 = ptrtoint ptr %.pn.in179 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in179, align 4
  %urb = getelementptr i8, ptr %.pn.in179, i32 -64
  %3 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %urb, align 4
  %call17 = tail call ptr @usb_get_urb(ptr noundef %4) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %flags.0178) #8
  %5 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %urb, align 4
  tail call void @usb_kill_urb(ptr noundef %6) #8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in179) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in179, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %.pn.in179 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %.pn.in179, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %13 = ptrtoint ptr %.pn.in179 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in179, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in179, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %15 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %urb, align 4
  tail call void @usb_free_urb(ptr noundef %16) #8
  %17 = ptrtoint ptr %tx_buf.0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tx_buf.0, align 4
  tail call void @kfree(ptr noundef %18) #8
  tail call void @kfree(ptr noundef %tx_buf.0) #8
  %call33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock) #8
  %cmp15.not = icmp eq ptr %.pn, %tx_buf6
  br i1 %cmp15.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %flags.0.lcssa = phi i32 [ %call2, %entry.for.end_crit_edge ], [ %call33, %list_del.exit.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %flags.0.lcssa) #8
  %call55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock) #8
  %19 = ptrtoint ptr %tx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tx, align 4
  %21 = or i8 %20, 2
  store i8 %21, ptr %tx, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %call55) #8
  %call76 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock) #8
  %tx_pending = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 7, i32 5
  %22 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tx_pending, align 4
  %cmp95.not181 = icmp eq ptr %23, %tx_pending
  br i1 %cmp95.not181, label %for.end.for.end128_crit_edge, label %for.end.for.body98_crit_edge

for.end.for.body98_crit_edge:                     ; preds = %for.end
  br label %for.body98

for.end.for.end128_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end128

for.body98:                                       ; preds = %list_del.exit176.for.body98_crit_edge, %for.end.for.body98_crit_edge
  %.pn168.in183 = phi ptr [ %.pn168, %list_del.exit176.for.body98_crit_edge ], [ %23, %for.end.for.body98_crit_edge ]
  %flags.1182 = phi i32 [ %call117, %list_del.exit176.for.body98_crit_edge ], [ %call76, %for.end.for.body98_crit_edge ]
  %tx_buf.1 = getelementptr i8, ptr %.pn168.in183, i32 -72
  %24 = ptrtoint ptr %.pn168.in183 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn168 = load ptr, ptr %.pn168.in183, align 4
  %urb99 = getelementptr i8, ptr %.pn168.in183, i32 -64
  %25 = ptrtoint ptr %urb99 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %urb99, align 4
  %call100 = tail call ptr @usb_get_urb(ptr noundef %26) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %flags.1182) #8
  %27 = ptrtoint ptr %urb99 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %urb99, align 4
  tail call void @usb_kill_urb(ptr noundef %28) #8
  %call.i.i171 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn168.in183) #8
  br i1 %call.i.i171, label %if.end.i.i174, label %for.body98.list_del.exit176_crit_edge

for.body98.list_del.exit176_crit_edge:            ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit176

if.end.i.i174:                                    ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i172 = getelementptr inbounds %struct.list_head, ptr %.pn168.in183, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i172 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i172, align 4
  %31 = ptrtoint ptr %.pn168.in183 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %.pn168.in183, align 4
  %prev1.i.i.i173 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i173 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i173, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %list_del.exit176

list_del.exit176:                                 ; preds = %if.end.i.i174, %for.body98.list_del.exit176_crit_edge
  %35 = ptrtoint ptr %.pn168.in183 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn168.in183, align 4
  %prev.i175 = getelementptr inbounds %struct.list_head, ptr %.pn168.in183, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i175 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i175, align 4
  %37 = ptrtoint ptr %urb99 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %urb99, align 4
  tail call void @usb_free_urb(ptr noundef %38) #8
  %39 = ptrtoint ptr %tx_buf.1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tx_buf.1, align 4
  tail call void @kfree(ptr noundef %40) #8
  tail call void @kfree(ptr noundef %tx_buf.1) #8
  %call117 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock) #8
  %cmp95.not = icmp eq ptr %.pn168, %tx_pending
  br i1 %cmp95.not, label %list_del.exit176.for.end128_crit_edge, label %list_del.exit176.for.body98_crit_edge

list_del.exit176.for.body98_crit_edge:            ; preds = %list_del.exit176
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body98

list_del.exit176.for.end128_crit_edge:            ; preds = %list_del.exit176
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end128

for.end128:                                       ; preds = %list_del.exit176.for.end128_crit_edge, %for.end.for.end128_crit_edge
  %flags.1.lcssa = phi i32 [ %call76, %for.end.for.end128_crit_edge ], [ %call117, %list_del.exit176.for.end128_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %flags.1.lcssa) #8
  %mgmt_submitted = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 11
  tail call void @usb_kill_anchored_urbs(ptr noundef %mgmt_submitted) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ath9k_hif_usb_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @ath9k_hif_usb_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ath9k_hif_usb_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_deregister(ptr noundef nonnull @ath9k_hif_usb_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath9k_hif_usb_probe(ptr noundef %interface, ptr noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %2 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %cur_altsetting.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 1
  %4 = ptrtoint ptr %cur_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur_altsetting.i, align 4
  %bNumEndpoints.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %bNumEndpoints.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bNumEndpoints.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp.i = icmp ult i8 %7, 2
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %for.cond.preheader.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.then
  %endpoint4.i = getelementptr inbounds %struct.usb_host_interface, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %endpoint4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %endpoint4.i, align 4
  %bEndpointAddress.i.i = getelementptr %struct.usb_host_endpoint, ptr %9, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp slt i8 %11, 0
  br i1 %tobool.not.i, label %for.cond.preheader.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.cond.preheader.i.for.inc.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.cond.preheader.i
  %bmAttributes.i.i = getelementptr %struct.usb_host_endpoint, ptr %9, i32 1, i32 0, i32 3
  %12 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bmAttributes.i.i, align 1
  %14 = and i8 %13, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %cmp.i.not.i = icmp eq i8 %14, 2
  br i1 %cmp.i.not.i, label %land.lhs.true.i.if.end14.i_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i.if.end14.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.cond.preheader.i.for.inc.i_crit_edge
  %bEndpointAddress.i.1.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %9, i32 0, i32 2
  %15 = ptrtoint ptr %bEndpointAddress.i.1.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bEndpointAddress.i.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.1.i = icmp slt i8 %16, 0
  br i1 %tobool.not.1.i, label %for.inc.i.do.end.i_crit_edge, label %land.lhs.true.1.i

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true.1.i:                                ; preds = %for.inc.i
  %bmAttributes.i.1.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %9, i32 0, i32 3
  %17 = ptrtoint ptr %bmAttributes.i.1.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bmAttributes.i.1.i, align 1
  %19 = and i8 %18, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %19)
  %cmp.i.not.1.i = icmp eq i8 %19, 2
  br i1 %cmp.i.not.1.i, label %land.lhs.true.1.i.if.end14.i_crit_edge, label %land.lhs.true.1.i.do.end.i_crit_edge

land.lhs.true.1.i.do.end.i_crit_edge:             ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true.1.i.if.end14.i_crit_edge:           ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

do.end.i:                                         ; preds = %land.lhs.true.1.i.do.end.i_crit_edge, %for.inc.i.do.end.i_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end14.i:                                       ; preds = %land.lhs.true.1.i.if.end14.i_crit_edge, %land.lhs.true.i.if.end14.i_crit_edge
  %.lcssa.i = phi i8 [ %11, %land.lhs.true.i.if.end14.i_crit_edge ], [ %16, %land.lhs.true.1.i.if.end14.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 31) #12
  %cmp16.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp16.i, label %if.end14.i.cleanup_crit_edge, label %if.end19.i

if.end14.i.cleanup_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19.i:                                       ; preds = %if.end14.i
  %phi.cast.i = zext i8 %.lcssa.i to i32
  %phi.bo.i = shl nuw nsw i32 %phi.cast.i, 15
  %21 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 85, ptr %call7.i.i.i, align 8
  %arrayidx21.i = getelementptr i8, ptr %call7.i.i.i, i32 1
  %22 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 83, ptr %arrayidx21.i, align 1
  %arrayidx22.i = getelementptr i8, ptr %call7.i.i.i, i32 2
  %23 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 66, ptr %arrayidx22.i, align 2
  %arrayidx23.i = getelementptr i8, ptr %call7.i.i.i, i32 3
  %24 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 67, ptr %arrayidx23.i, align 1
  %arrayidx24.i = getelementptr i8, ptr %call7.i.i.i, i32 14
  %25 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 6, ptr %arrayidx24.i, align 2
  %arrayidx25.i = getelementptr i8, ptr %call7.i.i.i, i32 15
  %26 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 27, ptr %arrayidx25.i, align 1
  %arrayidx26.i = getelementptr i8, ptr %call7.i.i.i, i32 19
  %27 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 2, ptr %arrayidx26.i, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.7) #11
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr.i, align 8
  %shl.i.i = shl i32 %29, 8
  %phi.bo69.i = or i32 %phi.bo.i, %shl.i.i
  %or.i = or i32 %phi.bo69.i, -1073741824
  %call33.i = tail call i32 @usb_bulk_msg(ptr noundef %add.ptr.i, i32 noundef %or.i, ptr noundef nonnull %call7.i.i.i, i32 noundef 31, ptr noundef null, i32 noundef 2000) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.end36.i, label %if.end19.i.cleanup_crit_edge

if.end19.i.cleanup_crit_edge:                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end36.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %30 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %driver_data.i.i.i, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %31 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3520, i32 noundef 752) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @usb_get_dev(ptr noundef %add.ptr.i) #8
  %32 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr.i, ptr %call7.i.i, align 8
  %interface7 = getelementptr inbounds %struct.hif_device_usb, ptr %call7.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %interface7 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %interface, ptr %interface7, align 4
  %usb_device_id = getelementptr inbounds %struct.hif_device_usb, ptr %call7.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %usb_device_id to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %id, ptr %usb_device_id, align 8
  %reset_resume = getelementptr i8, ptr %1, i32 1144
  %35 = ptrtoint ptr %reset_resume to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load = load i8, ptr %reset_resume, align 8
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %reset_resume, align 8
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %36 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %fw_done = getelementptr inbounds %struct.hif_device_usb, ptr %call7.i.i, i32 0, i32 5
  %37 = ptrtoint ptr %fw_done to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %fw_done, align 4
  %wait.i = getelementptr inbounds %struct.hif_device_usb, ptr %call7.i.i, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_completion.__key) #8
  %call8 = tail call fastcc i32 @ath9k_hif_request_firmware(ptr noundef nonnull %call7.i.i, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end4.cleanup_crit_edge, label %err_fw_req

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_fw_req:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  tail call void @usb_put_dev(ptr noundef %add.ptr.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_fw_req, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end36.i, %if.end19.i.cleanup_crit_edge, %if.end14.i.cleanup_crit_edge, %do.end.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4.cleanup_crit_edge ], [ %call8, %err_fw_req ], [ -12, %if.end.cleanup_crit_edge ], [ -19, %do.end.i ], [ 0, %if.end36.i ], [ -19, %if.then.cleanup_crit_edge ], [ -19, %if.end14.i.cleanup_crit_edge ], [ %call33.i, %if.end19.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_hif_usb_disconnect(ptr nocapture noundef %interface) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %state = getelementptr i8, ptr %1, i32 -104
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %fw_done = getelementptr inbounds %struct.hif_device_usb, ptr %3, i32 0, i32 5
  tail call void @wait_for_completion(ptr noundef %fw_done) #8
  %flags = getelementptr inbounds %struct.hif_device_usb, ptr %3, i32 0, i32 20
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %flags, align 4
  %8 = and i8 %7, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not = icmp eq i8 %8, 0
  br i1 %tobool3.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %htc_handle = getelementptr inbounds %struct.hif_device_usb, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %htc_handle to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %htc_handle, align 4
  tail call void @ath9k_htc_hw_deinit(ptr noundef %10, i1 noundef zeroext %cmp) #8
  %regout_submitted.i.i = getelementptr inbounds %struct.hif_device_usb, ptr %3, i32 0, i32 8
  tail call void @usb_kill_anchored_urbs(ptr noundef %regout_submitted.i.i) #8
  %reg_in_submitted.i.i.i = getelementptr inbounds %struct.hif_device_usb, ptr %3, i32 0, i32 10
  tail call void @usb_kill_anchored_urbs(ptr noundef %reg_in_submitted.i.i.i) #8
  tail call fastcc void @ath9k_hif_usb_dealloc_tx_urbs(ptr noundef nonnull %3) #8
  %rx_submitted.i.i.i = getelementptr inbounds %struct.hif_device_usb, ptr %3, i32 0, i32 9
  tail call void @usb_kill_anchored_urbs(ptr noundef %rx_submitted.i.i.i) #8
  %11 = ptrtoint ptr %htc_handle to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %htc_handle, align 4
  %drv_priv = getelementptr inbounds %struct.htc_target, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %drv_priv, align 4
  tail call void @ath9k_destroy_wmi(ptr noundef %14) #8
  %15 = ptrtoint ptr %htc_handle to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %htc_handle, align 4
  tail call void @ath9k_htc_hw_free(ptr noundef %16) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %driver_data.i.i, align 4
  br i1 %cmp, label %if.end8.if.end15_crit_edge, label %land.lhs.true

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end8
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %flags, align 4
  %20 = and i8 %19, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool13.not = icmp eq i8 %20, 0
  br i1 %tobool13.not, label %land.lhs.true.if.end15_crit_edge, label %if.then14

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ath9k_hif_usb_reboot(ptr noundef %add.ptr.i)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %land.lhs.true.if.end15_crit_edge, %if.end8.if.end15_crit_edge
  tail call void @kfree(ptr noundef nonnull %3) #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.56) #11
  tail call void @usb_put_dev(ptr noundef %add.ptr.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath9k_hif_usb_suspend(ptr nocapture noundef readonly %interface, [1 x i32] %message.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %flags = getelementptr inbounds %struct.hif_device_usb, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flags, align 4
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %htc_handle = getelementptr inbounds %struct.hif_device_usb, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %htc_handle to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %htc_handle, align 4
  tail call void @ath9k_htc_suspend(ptr noundef %6) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %fw_done = getelementptr inbounds %struct.hif_device_usb, ptr %1, i32 0, i32 5
  tail call void @wait_for_completion(ptr noundef %fw_done) #8
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %flags, align 4
  %9 = and i8 %8, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %regout_submitted.i = getelementptr inbounds %struct.hif_device_usb, ptr %1, i32 0, i32 8
  tail call void @usb_kill_anchored_urbs(ptr noundef %regout_submitted.i) #8
  %reg_in_submitted.i.i = getelementptr inbounds %struct.hif_device_usb, ptr %1, i32 0, i32 10
  tail call void @usb_kill_anchored_urbs(ptr noundef %reg_in_submitted.i.i) #8
  tail call fastcc void @ath9k_hif_usb_dealloc_tx_urbs(ptr noundef %1) #8
  %rx_submitted.i.i = getelementptr inbounds %struct.hif_device_usb, ptr %1, i32 0, i32 9
  tail call void @usb_kill_anchored_urbs(ptr noundef %rx_submitted.i.i) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ath9k_hif_usb_resume(ptr nocapture noundef readonly %interface) #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %htc_handle1 = getelementptr inbounds %struct.hif_device_usb, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %htc_handle1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %htc_handle1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #8
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !135
  %call2 = tail call fastcc i32 @ath9k_hif_usb_alloc_urbs(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.hif_device_usb, ptr %1, i32 0, i32 20
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %flags, align 4
  %7 = and i8 %6, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %fw_name = getelementptr inbounds %struct.hif_device_usb, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 15
  %call5 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef %fw_name, ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then4.fail_resume_crit_edge

if.then4.fail_resume_crit_edge:                   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_resume

if.end8:                                          ; preds = %if.then4
  %10 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %fw_data = getelementptr inbounds %struct.hif_device_usb, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %fw_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %fw_data, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %11, align 4
  %fw_size = getelementptr inbounds %struct.hif_device_usb, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %fw_size to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %fw_size, align 4
  %call9 = call fastcc i32 @ath9k_hif_usb_download_fw(ptr noundef %1)
  %18 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.while.body_crit_edge, label %if.end8.fail_resume_crit_edge

if.end8.fail_resume_crit_edge:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_resume

if.end8.while.body_crit_edge:                     ; preds = %if.end8
  br label %while.body

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %regout_submitted.i = getelementptr inbounds %struct.hif_device_usb, ptr %1, i32 0, i32 8
  tail call void @usb_kill_anchored_urbs(ptr noundef %regout_submitted.i) #8
  %reg_in_submitted.i.i = getelementptr inbounds %struct.hif_device_usb, ptr %1, i32 0, i32 10
  tail call void @usb_kill_anchored_urbs(ptr noundef %reg_in_submitted.i.i) #8
  tail call fastcc void @ath9k_hif_usb_dealloc_tx_urbs(ptr noundef %1) #8
  %rx_submitted.i.i = getelementptr inbounds %struct.hif_device_usb, ptr %1, i32 0, i32 9
  tail call void @usb_kill_anchored_urbs(ptr noundef %rx_submitted.i.i) #8
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end8.while.body_crit_edge
  %__ms.039 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 100, %if.end8.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.039, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %20(i32 noundef 214748000) #8
  %tobool14.not = icmp eq i32 %dec, 0
  br i1 %tobool14.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %while.body
  %call15 = call i32 @ath9k_htc_resume(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %while.end.cleanup_crit_edge, label %while.end.fail_resume_crit_edge

while.end.fail_resume_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_resume

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

fail_resume:                                      ; preds = %while.end.fail_resume_crit_edge, %if.end8.fail_resume_crit_edge, %if.then4.fail_resume_crit_edge
  %ret.0 = phi i32 [ %call5, %if.then4.fail_resume_crit_edge ], [ %call9, %if.end8.fail_resume_crit_edge ], [ %call15, %while.end.fail_resume_crit_edge ]
  %regout_submitted.i36 = getelementptr inbounds %struct.hif_device_usb, ptr %1, i32 0, i32 8
  call void @usb_kill_anchored_urbs(ptr noundef %regout_submitted.i36) #8
  %reg_in_submitted.i.i37 = getelementptr inbounds %struct.hif_device_usb, ptr %1, i32 0, i32 10
  call void @usb_kill_anchored_urbs(ptr noundef %reg_in_submitted.i.i37) #8
  call fastcc void @ath9k_hif_usb_dealloc_tx_urbs(ptr noundef %1) #8
  %rx_submitted.i.i38 = getelementptr inbounds %struct.hif_device_usb, ptr %1, i32 0, i32 9
  call void @usb_kill_anchored_urbs(ptr noundef %rx_submitted.i.i38) #8
  br label %cleanup

cleanup:                                          ; preds = %fail_resume, %while.end.cleanup_crit_edge, %if.else, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %fail_resume ], [ -5, %if.else ], [ %call2, %entry.cleanup_crit_edge ], [ 0, %while.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath9k_hif_request_firmware(ptr noundef %hif_dev, i1 noundef zeroext %first) unnamed_addr #0 align 64 {
entry:
  %index = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %index) #8
  %0 = ptrtoint ptr %index to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %index, align 8
  br i1 %first, label %if.then, label %if.else7

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @htc_use_dev_fw to i32))
  %1 = load i32, ptr @htc_use_dev_fw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  %fw_minor_index3 = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 14
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %fw_minor_index3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %fw_minor_index3, align 4
  %3 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1684370944, ptr %index, align 8
  br label %if.end12

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %fw_minor_index3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %fw_minor_index3, align 4
  %call6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %index, ptr noundef nonnull @.str.13, i32 noundef 4)
  br label %if.end12

if.else7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %fw_minor_index8 = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 14
  %5 = ptrtoint ptr %fw_minor_index8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_minor_index8, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr %fw_minor_index8, align 4
  %call11 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %index, ptr noundef nonnull @.str.13, i32 noundef %dec)
  br label %if.end12

if.end12:                                         ; preds = %if.else7, %if.else, %if.then2
  %fw_minor_index13 = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 14
  %7 = ptrtoint ptr %fw_minor_index13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fw_minor_index13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp = icmp eq i32 %8, 3
  br i1 %cmp, label %if.then14, label %if.else24

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %usb_device_id = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 2
  %9 = ptrtoint ptr %usb_device_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %usb_device_id, align 4
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %driver_info, align 4
  %.off = add i32 %12, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %spec.select = select i1 %switch, ptr @.str.14, ptr @.str.15
  %fw_name = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 13
  %call23 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_name, i32 noundef 32, ptr noundef nonnull @.str.11, ptr noundef nonnull %spec.select)
  br label %if.end44

if.else24:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp26 = icmp slt i32 %8, 3
  br i1 %cmp26, label %do.end, label %if.else28

do.end:                                           ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %hif_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hif_dev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #11
  br label %cleanup

if.else28:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #10
  %usb_device_id29 = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 2
  %15 = ptrtoint ptr %usb_device_id29 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %usb_device_id29, align 4
  %driver_info30 = getelementptr inbounds %struct.usb_device_id, ptr %16, i32 0, i32 12
  %17 = ptrtoint ptr %driver_info30 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %driver_info30, align 4
  %.off93 = add i32 %18, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off93)
  %switch94 = icmp ult i32 %.off93, 2
  %spec.select95 = select i1 %switch94, ptr @.str.18, ptr @.str.19
  %fw_name39 = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 13
  %call42 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %fw_name39, i32 noundef 32, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str, ptr noundef nonnull %spec.select95, i32 noundef 1, ptr noundef nonnull %index)
  br label %if.end44

if.end44:                                         ; preds = %if.else28, %if.then14
  %fw_name45 = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 13
  %19 = ptrtoint ptr %hif_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hif_dev, align 4
  %dev48 = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 15
  %call49 = call i32 @request_firmware_nowait(ptr noundef null, i1 noundef zeroext true, ptr noundef %fw_name45, ptr noundef %dev48, i32 noundef 3264, ptr noundef %hif_dev, ptr noundef nonnull @ath9k_hif_usb_firmware_cb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  %21 = ptrtoint ptr %hif_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hif_dev, align 4
  %dev64 = getelementptr inbounds %struct.usb_device, ptr %22, i32 0, i32 15
  br i1 %tobool50.not, label %do.end62, label %do.end54

do.end54:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev64, ptr noundef nonnull @.str.22, ptr noundef %fw_name45) #11
  br label %cleanup

do.end62:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev64, ptr noundef nonnull @.str.25, ptr noundef %fw_name45) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end62, %do.end54, %do.end
  %retval.0 = phi i32 [ %call49, %do.end54 ], [ 0, %do.end62 ], [ -2, %do.end ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %index) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_bulk_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_nowait(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_hif_usb_firmware_cb(ptr noundef %fw, ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fw, null
  br i1 %tobool.not, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @ath9k_hif_request_firmware(ptr noundef %context, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  %fw_name = getelementptr inbounds %struct.hif_device_usb, ptr %context, i32 0, i32 13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef %fw_name) #11
  br label %err_fw

if.end3:                                          ; preds = %entry
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  %dev5 = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  %call6 = tail call ptr @ath9k_htc_hw_alloc(ptr noundef %context, ptr noundef nonnull @hif_usb, ptr noundef %dev5) #8
  %htc_handle = getelementptr inbounds %struct.hif_device_usb, ptr %context, i32 0, i32 6
  %4 = ptrtoint ptr %htc_handle to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call6, ptr %htc_handle, align 4
  %cmp = icmp eq ptr %call6, null
  br i1 %cmp, label %if.end3.err_dev_alloc_crit_edge, label %if.end9

if.end3.err_dev_alloc_crit_edge:                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_dev_alloc

if.end9:                                          ; preds = %if.end3
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %fw_data = getelementptr inbounds %struct.hif_device_usb, ptr %context, i32 0, i32 3
  %7 = ptrtoint ptr %fw_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %fw_data, align 4
  %8 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fw, align 4
  %fw_size = getelementptr inbounds %struct.hif_device_usb, ptr %context, i32 0, i32 4
  %10 = ptrtoint ptr %fw_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %fw_size, align 4
  %call.i = tail call fastcc i32 @ath9k_hif_usb_download_fw(ptr noundef %context) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %context, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  %fw_name.i = getelementptr inbounds %struct.hif_device_usb, ptr %context, i32 0, i32 13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.32, ptr noundef %fw_name.i) #11
  br label %err_dev_init

if.end.i:                                         ; preds = %if.end9
  %call1.i = tail call fastcc i32 @ath9k_hif_usb_alloc_urbs(ptr noundef %context) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end13, label %do.end6.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %context, align 4
  %dev8.i = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8.i, ptr noundef nonnull @.str.35) #11
  br label %err_dev_init

if.end13:                                         ; preds = %if.end.i
  %15 = ptrtoint ptr %htc_handle to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %htc_handle, align 4
  %interface = getelementptr inbounds %struct.hif_device_usb, ptr %context, i32 0, i32 1
  %17 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %interface, align 4
  %dev15 = getelementptr inbounds %struct.usb_interface, ptr %18, i32 0, i32 7
  %usb_device_id = getelementptr inbounds %struct.hif_device_usb, ptr %context, i32 0, i32 2
  %19 = ptrtoint ptr %usb_device_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %usb_device_id, align 4
  %idProduct = getelementptr inbounds %struct.usb_device_id, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %idProduct, align 4
  %23 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %context, align 4
  %product = getelementptr inbounds %struct.usb_device, ptr %24, i32 0, i32 31
  %25 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %product, align 8
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %20, i32 0, i32 12
  %27 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %driver_info, align 4
  %call18 = tail call i32 @ath9k_htc_hw_init(ptr noundef %16, ptr noundef %dev15, i16 noundef zeroext %22, ptr noundef %26, i32 noundef %28) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.then20

if.then20:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %regout_submitted.i.i = getelementptr inbounds %struct.hif_device_usb, ptr %context, i32 0, i32 8
  tail call void @usb_kill_anchored_urbs(ptr noundef %regout_submitted.i.i) #8
  %reg_in_submitted.i.i.i = getelementptr inbounds %struct.hif_device_usb, ptr %context, i32 0, i32 10
  tail call void @usb_kill_anchored_urbs(ptr noundef %reg_in_submitted.i.i.i) #8
  tail call fastcc void @ath9k_hif_usb_dealloc_tx_urbs(ptr noundef %context) #8
  %rx_submitted.i.i.i = getelementptr inbounds %struct.hif_device_usb, ptr %context, i32 0, i32 9
  tail call void @usb_kill_anchored_urbs(ptr noundef %rx_submitted.i.i.i) #8
  br label %err_dev_init

if.end21:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @release_firmware(ptr noundef nonnull %fw) #8
  %flags = getelementptr inbounds %struct.hif_device_usb, ptr %context, i32 0, i32 20
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %flags, align 4
  %31 = or i8 %30, 2
  store i8 %31, ptr %flags, align 4
  %fw_done = getelementptr inbounds %struct.hif_device_usb, ptr %context, i32 0, i32 5
  tail call void @complete_all(ptr noundef %fw_done) #8
  br label %cleanup

err_dev_init:                                     ; preds = %if.then20, %do.end6.i, %do.end.i
  %32 = ptrtoint ptr %htc_handle to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %htc_handle, align 4
  tail call void @ath9k_htc_hw_free(ptr noundef %33) #8
  br label %err_dev_alloc

err_dev_alloc:                                    ; preds = %err_dev_init, %if.end3.err_dev_alloc_crit_edge
  tail call void @release_firmware(ptr noundef nonnull %fw) #8
  br label %err_fw

err_fw:                                           ; preds = %err_dev_alloc, %do.end
  %34 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %context, align 4
  %dev1.i = getelementptr inbounds %struct.usb_device, ptr %35, i32 0, i32 15
  %parent2.i = getelementptr inbounds %struct.usb_device, ptr %35, i32 0, i32 15, i32 1
  %36 = ptrtoint ptr %parent2.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %parent2.i, align 8
  %fw_done.i = getelementptr inbounds %struct.hif_device_usb, ptr %context, i32 0, i32 5
  tail call void @complete_all(ptr noundef %fw_done.i) #8
  %tobool.not.i50 = icmp eq ptr %37, null
  br i1 %tobool.not.i50, label %if.end5.critedge.i, label %if.then.i

if.then.i:                                        ; preds = %err_fw
  call void @__sanitizer_cov_trace_pc() #10
  %mutex.i.i = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #8
  tail call void @device_release_driver(ptr noundef %dev1.i) #8
  tail call void @mutex_unlock(ptr noundef %mutex.i.i) #8
  br label %cleanup

if.end5.critedge.i:                               ; preds = %err_fw
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @device_release_driver(ptr noundef %dev1.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5.critedge.i, %if.then.i, %if.end21, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ath9k_htc_hw_alloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_htc_hw_init(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_htc_hw_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hif_usb_start(ptr noundef %hif_handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1 = getelementptr inbounds %struct.hif_device_usb, ptr %hif_handle, i32 0, i32 20
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags1, align 4
  %2 = or i8 %1, 1
  store i8 %2, ptr %flags1, align 4
  %tx = getelementptr inbounds %struct.hif_device_usb, ptr %hif_handle, i32 0, i32 7
  %tx_lock = getelementptr inbounds %struct.hif_device_usb, ptr %hif_handle, i32 0, i32 7, i32 6
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock) #8
  %3 = ptrtoint ptr %tx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %tx, align 4
  %5 = and i8 %4, -2
  store i8 %5, ptr %tx, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %call5) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hif_usb_stop(ptr noundef %hif_handle) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx = getelementptr inbounds %struct.hif_device_usb, ptr %hif_handle, i32 0, i32 7
  %tx_lock = getelementptr inbounds %struct.hif_device_usb, ptr %hif_handle, i32 0, i32 7, i32 6
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock) #8
  %tx_skb_queue = getelementptr inbounds %struct.hif_device_usb, ptr %hif_handle, i32 0, i32 7, i32 3
  %0 = ptrtoint ptr %tx_skb_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_skb_queue, align 4
  %cmp.i.i18.i = icmp eq ptr %1, %tx_skb_queue
  %tobool.not.i1719.i = icmp eq ptr %1, null
  %tobool.not.i20.i = or i1 %cmp.i.i18.i, %tobool.not.i1719.i
  br i1 %tobool.not.i20.i, label %entry.ath9k_skb_queue_complete.exit_crit_edge, label %while.body.lr.ph.i

entry.ath9k_skb_queue_complete.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath9k_skb_queue_complete.exit

while.body.lr.ph.i:                               ; preds = %entry
  %qlen.i.i.i = getelementptr inbounds %struct.hif_device_usb, ptr %hif_handle, i32 0, i32 7, i32 3, i32 1
  %htc_handle.i = getelementptr inbounds %struct.hif_device_usb, ptr %hif_handle, i32 0, i32 6
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %2 = phi ptr [ %1, %while.body.lr.ph.i ], [ %20, %while.body.i.while.body.i_crit_edge ]
  %3 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %4, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.44, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %2, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.44, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %8, ptr %prev17.i.i.i, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %6, ptr %8, align 8
  %11 = ptrtoint ptr %htc_handle.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %htc_handle.i, align 4
  tail call void @ath9k_htc_txcompletion_cb(ptr noundef %12, ptr noundef nonnull %2, i1 noundef zeroext false) #8
  %13 = ptrtoint ptr %htc_handle.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %htc_handle.i, align 4
  %drv_priv.i = getelementptr inbounds %struct.htc_target, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %drv_priv.i, align 4
  %skb_failed.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %16, i32 0, i32 61, i32 1, i32 5
  %17 = ptrtoint ptr %skb_failed.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %skb_failed.i, align 4
  %inc11.i = add i32 %18, 1
  store i32 %inc11.i, ptr %skb_failed.i, align 4
  %19 = ptrtoint ptr %tx_skb_queue to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tx_skb_queue, align 4
  %cmp.i.i.i = icmp eq ptr %20, %tx_skb_queue
  %tobool.not.i17.i = icmp eq ptr %20, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i17.i
  br i1 %tobool.not.i.i, label %while.body.i.ath9k_skb_queue_complete.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.ath9k_skb_queue_complete.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath9k_skb_queue_complete.exit

ath9k_skb_queue_complete.exit:                    ; preds = %while.body.i.ath9k_skb_queue_complete.exit_crit_edge, %entry.ath9k_skb_queue_complete.exit_crit_edge
  %tx_skb_cnt = getelementptr inbounds %struct.hif_device_usb, ptr %hif_handle, i32 0, i32 7, i32 2
  %21 = ptrtoint ptr %tx_skb_cnt to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %tx_skb_cnt, align 2
  %22 = ptrtoint ptr %tx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %tx, align 4
  %24 = or i8 %23, 1
  store i8 %24, ptr %tx, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %call2) #8
  %call23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock) #8
  %tx_pending = getelementptr inbounds %struct.hif_device_usb, ptr %hif_handle, i32 0, i32 7, i32 5
  %25 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tx_pending, align 4
  %cmp37.not90 = icmp eq ptr %26, %tx_pending
  br i1 %cmp37.not90, label %ath9k_skb_queue_complete.exit.for.end_crit_edge, label %ath9k_skb_queue_complete.exit.for.body_crit_edge

ath9k_skb_queue_complete.exit.for.body_crit_edge: ; preds = %ath9k_skb_queue_complete.exit
  br label %for.body

ath9k_skb_queue_complete.exit.for.end_crit_edge:  ; preds = %ath9k_skb_queue_complete.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %ath9k_skb_queue_complete.exit.for.body_crit_edge
  %.pn.in92 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %26, %ath9k_skb_queue_complete.exit.for.body_crit_edge ]
  %flags.091 = phi i32 [ %call55, %list_del.exit.for.body_crit_edge ], [ %call23, %ath9k_skb_queue_complete.exit.for.body_crit_edge ]
  %tx_buf.0 = getelementptr i8, ptr %.pn.in92, i32 -72
  %27 = ptrtoint ptr %.pn.in92 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn = load ptr, ptr %.pn.in92, align 4
  %urb = getelementptr i8, ptr %.pn.in92, i32 -64
  %28 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %urb, align 4
  %call39 = tail call ptr @usb_get_urb(ptr noundef %29) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %flags.091) #8
  %30 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %urb, align 4
  tail call void @usb_kill_urb(ptr noundef %31) #8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in92) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in92, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i, align 4
  %34 = ptrtoint ptr %.pn.in92 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %.pn.in92, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %38 = ptrtoint ptr %.pn.in92 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in92, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in92, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %40 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %urb, align 4
  tail call void @usb_free_urb(ptr noundef %41) #8
  %42 = ptrtoint ptr %tx_buf.0 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tx_buf.0, align 4
  tail call void @kfree(ptr noundef %43) #8
  tail call void @kfree(ptr noundef %tx_buf.0) #8
  %call55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock) #8
  %cmp37.not = icmp eq ptr %.pn, %tx_pending
  br i1 %cmp37.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %ath9k_skb_queue_complete.exit.for.end_crit_edge
  %flags.0.lcssa = phi i32 [ %call23, %ath9k_skb_queue_complete.exit.for.end_crit_edge ], [ %call55, %list_del.exit.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %flags.0.lcssa) #8
  %mgmt_submitted = getelementptr inbounds %struct.hif_device_usb, ptr %hif_handle, i32 0, i32 11
  tail call void @usb_kill_anchored_urbs(ptr noundef %mgmt_submitted) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hif_usb_sta_drain(ptr noundef %hif_handle, i8 noundef zeroext %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_lock = getelementptr inbounds %struct.hif_device_usb, ptr %hif_handle, i32 0, i32 7, i32 6
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock) #8
  %tx_skb_queue = getelementptr inbounds %struct.hif_device_usb, ptr %hif_handle, i32 0, i32 7, i32 3
  %0 = ptrtoint ptr %tx_skb_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_skb_queue, align 4
  %cmp10.not34 = icmp eq ptr %1, %tx_skb_queue
  br i1 %cmp10.not34, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %qlen.i = getelementptr inbounds %struct.hif_device_usb, ptr %hif_handle, i32 0, i32 7, i32 3, i32 1
  %htc_handle = getelementptr inbounds %struct.hif_device_usb, ptr %hif_handle, i32 0, i32 6
  %tx_skb_cnt = getelementptr inbounds %struct.hif_device_usb, ptr %hif_handle, i32 0, i32 7, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %skb.035 = phi ptr [ %1, %for.body.lr.ph ], [ %tmp.036, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %skb.035 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.036 = load ptr, ptr %skb.035, align 8
  %3 = getelementptr inbounds %struct.sk_buff, ptr %skb.035, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp.i = icmp eq i8 %5, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true.i:                                  ; preds = %for.body
  %sta_idx.i = getelementptr inbounds %struct.sk_buff, ptr %skb.035, i32 0, i32 3, i32 11
  %6 = ptrtoint ptr %sta_idx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sta_idx.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %idx)
  %cmp4.i = icmp eq i8 %7, %idx
  br i1 %cmp4.i, label %if.then, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %qlen.i, align 4
  %sub.i = add i32 %9, -1
  store volatile i32 %sub.i, ptr %qlen.i, align 4
  %10 = ptrtoint ptr %skb.035 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %skb.035, align 8
  %prev9.i = getelementptr inbounds %struct.anon.44, ptr %skb.035, i32 0, i32 1
  %12 = ptrtoint ptr %prev9.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev9.i, align 4
  store ptr null, ptr %prev9.i, align 4
  store ptr null, ptr %skb.035, align 8
  %prev17.i = getelementptr inbounds %struct.anon.44, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %prev17.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %13, ptr %prev17.i, align 4
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %11, ptr %13, align 8
  %16 = ptrtoint ptr %htc_handle to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %htc_handle, align 4
  tail call void @ath9k_htc_txcompletion_cb(ptr noundef %17, ptr noundef %skb.035, i1 noundef zeroext false) #8
  %18 = ptrtoint ptr %tx_skb_cnt to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %tx_skb_cnt, align 2
  %dec = add i16 %19, -1
  store i16 %dec, ptr %tx_skb_cnt, align 2
  %20 = ptrtoint ptr %htc_handle to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %htc_handle, align 4
  %drv_priv = getelementptr inbounds %struct.htc_target, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %drv_priv, align 4
  %skb_failed = getelementptr inbounds %struct.ath9k_htc_priv, ptr %23, i32 0, i32 61, i32 1, i32 5
  %24 = ptrtoint ptr %skb_failed to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %skb_failed, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %skb_failed, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp10.not = icmp eq ptr %tmp.036, %tx_skb_queue
  br i1 %cmp10.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %call3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hif_usb_send(ptr noundef %hif_handle, i8 noundef zeroext %pipe_id, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %pipe_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %pipe_id, label %do.end [
    i8 1, label %sw.bb
    i8 4, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %tx.i = getelementptr inbounds %struct.hif_device_usb, ptr %hif_handle, i32 0, i32 7
  %tx_lock.i = getelementptr inbounds %struct.hif_device_usb, ptr %hif_handle, i32 0, i32 7, i32 6
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock.i) #8
  %1 = ptrtoint ptr %tx.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %tx.i, align 4
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.cleanup.sink.split.i_crit_edge

sw.bb.cleanup.sink.split.i_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %sw.bb
  %tx_skb_cnt.i = getelementptr inbounds %struct.hif_device_usb, ptr %hif_handle, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %tx_skb_cnt.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %tx_skb_cnt.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %5)
  %cmp12.i = icmp ugt i16 %5, 256
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock.i, i32 noundef %call2.i) #8
  br i1 %cmp12.i, label %if.end.i.sw.epilog_crit_edge, label %if.end17.i

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end17.i:                                       ; preds = %if.end.i
  %6 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 4
  %.off.i = add i8 %8, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %if.then28.i, label %if.end17.i.do.body32.i_crit_edge

if.end17.i.do.body32.i_crit_edge:                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body32.i

if.then28.i:                                      ; preds = %if.end17.i
  %call.i.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 2592) #8
  %cmp.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i.i, label %if.then28.i.do.body32.i_crit_edge, label %if.end.i.i

if.then28.i.do.body32.i_crit_edge:                ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body32.i

if.end.i.i:                                       ; preds = %if.then28.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 2848, i32 noundef 8) #12
  %cmp2.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %cmp2.i.i, label %if.end.i.i.cleanup.sink.split.i.i_crit_edge, label %if.end4.i.i

if.end.i.i.cleanup.sink.split.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %10 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %skb, ptr %call7.i.i.i.i, align 8
  %hif_dev6.i.i = getelementptr inbounds %struct.cmd_buf, ptr %call7.i.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %hif_dev6.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %hif_handle, ptr %hif_dev6.i.i, align 4
  %call7.i.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 4) #8
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %12 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i.i, align 4
  %14 = trunc i32 %13 to i16
  %conv.i.i = add i16 %14, -4
  %15 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #8
  %incdec.ptr.i.i = getelementptr i16, ptr %call7.i.i, i32 1
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %call7.i.i, align 2
  %17 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 32361, ptr %incdec.ptr.i.i, align 2
  %18 = ptrtoint ptr %hif_handle to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hif_handle, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %shl.i.i.i = shl i32 %21, 8
  %or.i.i = or i32 %shl.i.i.i, -1073709056
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %22 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i.i, align 4
  %24 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len.i.i, align 4
  %dev1.i.i.i = getelementptr inbounds %struct.urb, ptr %call.i.i, i32 0, i32 8
  %26 = ptrtoint ptr %dev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %19, ptr %dev1.i.i.i, align 4
  %pipe2.i.i.i = getelementptr inbounds %struct.urb, ptr %call.i.i, i32 0, i32 10
  %27 = ptrtoint ptr %pipe2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i.i, ptr %pipe2.i.i.i, align 4
  %transfer_buffer3.i.i.i = getelementptr inbounds %struct.urb, ptr %call.i.i, i32 0, i32 14
  %28 = ptrtoint ptr %transfer_buffer3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %23, ptr %transfer_buffer3.i.i.i, align 4
  %transfer_buffer_length.i.i.i = getelementptr inbounds %struct.urb, ptr %call.i.i, i32 0, i32 19
  %29 = ptrtoint ptr %transfer_buffer_length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %25, ptr %transfer_buffer_length.i.i.i, align 4
  %complete.i.i.i = getelementptr inbounds %struct.urb, ptr %call.i.i, i32 0, i32 28
  %30 = ptrtoint ptr %complete.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @hif_usb_mgmt_cb, ptr %complete.i.i.i, align 4
  %context4.i.i.i = getelementptr inbounds %struct.urb, ptr %call.i.i, i32 0, i32 27
  %31 = ptrtoint ptr %context4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i.i.i, ptr %context4.i.i.i, align 4
  %mgmt_submitted.i.i = getelementptr inbounds %struct.hif_device_usb, ptr %hif_handle, i32 0, i32 11
  tail call void @usb_anchor_urb(ptr noundef nonnull %call.i.i, ptr noundef %mgmt_submitted.i.i) #8
  %call12.i.i = tail call i32 @usb_submit_urb(ptr noundef nonnull %call.i.i, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %tobool.not.i.i = icmp eq i32 %call12.i.i, 0
  br i1 %tobool.not.i.i, label %if.end4.i.i.cleanup.sink.split.i.i_crit_edge, label %if.then13.i.i

if.end4.i.i.cleanup.sink.split.i.i_crit_edge:     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i.i

if.then13.i.i:                                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call.i.i) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #8
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.then13.i.i, %if.end4.i.i.cleanup.sink.split.i.i_crit_edge, %if.end.i.i.cleanup.sink.split.i.i_crit_edge
  %retval.0.ph.i.i = phi i32 [ -12, %if.end.i.i.cleanup.sink.split.i.i_crit_edge ], [ %call12.i.i, %if.then13.i.i ], [ 0, %if.end4.i.i.cleanup.sink.split.i.i_crit_edge ]
  tail call void @usb_free_urb(ptr noundef nonnull %call.i.i) #8
  br label %do.body32.i

do.body32.i:                                      ; preds = %cleanup.sink.split.i.i, %if.then28.i.do.body32.i_crit_edge, %if.end17.i.do.body32.i_crit_edge
  %ret.0.i = phi i32 [ 0, %if.end17.i.do.body32.i_crit_edge ], [ -12, %if.then28.i.do.body32.i_crit_edge ], [ %retval.0.ph.i.i, %cleanup.sink.split.i.i ]
  %call41.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock.i) #8
  %32 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %6, align 4
  %.off97.i = add i8 %33, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off97.i)
  %switch98.i = icmp ult i8 %.off97.i, 2
  br i1 %switch98.i, label %if.then55.i, label %do.body32.i.if.end59.i_crit_edge

do.body32.i.if.end59.i_crit_edge:                 ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59.i

if.then55.i:                                      ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #10
  %tx_skb_queue.i = getelementptr inbounds %struct.hif_device_usb, ptr %hif_handle, i32 0, i32 7, i32 3
  %prev.i.i.i = getelementptr inbounds %struct.hif_device_usb, ptr %hif_handle, i32 0, i32 7, i32 3, i32 0, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i.i, align 4
  %36 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %tx_skb_queue.i, ptr %skb, align 8
  %prev10.i.i.i.i = getelementptr inbounds %struct.anon.44, ptr %skb, i32 0, i32 1
  %37 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %prev10.i.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i.i, align 4
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %skb, ptr %35, align 4
  %qlen.i.i.i.i = getelementptr inbounds %struct.hif_device_usb, ptr %hif_handle, i32 0, i32 7, i32 3, i32 1
  %39 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %qlen.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %40, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i.i.i.i, align 4
  %41 = ptrtoint ptr %tx_skb_cnt.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %tx_skb_cnt.i, align 2
  %inc.i = add i16 %42, 1
  store i16 %inc.i, ptr %tx_skb_cnt.i, align 2
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.then55.i, %do.body32.i.if.end59.i_crit_edge
  %tx_buf_cnt.i = getelementptr inbounds %struct.hif_device_usb, ptr %hif_handle, i32 0, i32 7, i32 1
  %43 = ptrtoint ptr %tx_buf_cnt.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %tx_buf_cnt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %44)
  %cmp62.i = icmp eq i8 %44, 8
  br i1 %cmp62.i, label %land.lhs.true.i, label %if.end59.i.cleanup.sink.split.i_crit_edge

if.end59.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

land.lhs.true.i:                                  ; preds = %if.end59.i
  %45 = ptrtoint ptr %tx_skb_cnt.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %tx_skb_cnt.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %46)
  %cmp67.i = icmp ult i16 %46, 2
  br i1 %cmp67.i, label %if.then69.i, label %land.lhs.true.i.cleanup.sink.split.i_crit_edge

land.lhs.true.i.cleanup.sink.split.i_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.then69.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @__hif_usb_tx(ptr noundef %hif_handle) #8
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then69.i, %land.lhs.true.i.cleanup.sink.split.i_crit_edge, %if.end59.i.cleanup.sink.split.i_crit_edge, %sw.bb.cleanup.sink.split.i_crit_edge
  %call41.sink.i = phi i32 [ %call2.i, %sw.bb.cleanup.sink.split.i_crit_edge ], [ %call41.i, %if.then69.i ], [ %call41.i, %land.lhs.true.i.cleanup.sink.split.i_crit_edge ], [ %call41.i, %if.end59.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ -19, %sw.bb.cleanup.sink.split.i_crit_edge ], [ %ret.0.i, %if.then69.i ], [ %ret.0.i, %land.lhs.true.i.cleanup.sink.split.i_crit_edge ], [ %ret.0.i, %if.end59.i.cleanup.sink.split.i_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock.i, i32 noundef %call41.sink.i) #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %call.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #8
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %sw.bb1.sw.epilog_crit_edge, label %if.end.i8

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i8:                                        ; preds = %sw.bb1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %47 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %47, i32 noundef 3520, i32 noundef 8) #12
  %cmp2.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp2.i, label %if.end.i8.cleanup.sink.split.i11_crit_edge, label %if.end4.i

if.end.i8.cleanup.sink.split.i11_crit_edge:       ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i11

if.end4.i:                                        ; preds = %if.end.i8
  %48 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %skb, ptr %call7.i.i.i, align 8
  %hif_dev6.i = getelementptr inbounds %struct.cmd_buf, ptr %call7.i.i.i, i32 0, i32 1
  %49 = ptrtoint ptr %hif_dev6.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %hif_handle, ptr %hif_dev6.i, align 4
  %50 = ptrtoint ptr %hif_handle to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hif_handle, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 8
  %shl.i.i = shl i32 %53, 8
  %or.i = or i32 %shl.i.i, 1073872896
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %54 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %56 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 8
  %58 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %51, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 10
  %59 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %or.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 14
  %60 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %55, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 19
  %61 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %57, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 28
  %62 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @hif_usb_regout_cb, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 27
  %63 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call7.i.i.i, ptr %context4.i.i, align 4
  %64 = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 25
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %64, align 4
  %start_frame.i.i = getelementptr inbounds %struct.urb, ptr %call.i, i32 0, i32 23
  %66 = ptrtoint ptr %start_frame.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -1, ptr %start_frame.i.i, align 4
  %regout_submitted.i = getelementptr inbounds %struct.hif_device_usb, ptr %hif_handle, i32 0, i32 8
  tail call void @usb_anchor_urb(ptr noundef nonnull %call.i, ptr noundef %regout_submitted.i) #8
  %call9.i = tail call i32 @usb_submit_urb(ptr noundef nonnull %call.i, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool.not.i9 = icmp eq i32 %call9.i, 0
  br i1 %tobool.not.i9, label %if.end4.i.cleanup.sink.split.i11_crit_edge, label %if.then10.i

if.end4.i.cleanup.sink.split.i11_crit_edge:       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i11

if.then10.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call.i) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %cleanup.sink.split.i11

cleanup.sink.split.i11:                           ; preds = %if.then10.i, %if.end4.i.cleanup.sink.split.i11_crit_edge, %if.end.i8.cleanup.sink.split.i11_crit_edge
  %retval.0.ph.i10 = phi i32 [ -12, %if.end.i8.cleanup.sink.split.i11_crit_edge ], [ %call9.i, %if.then10.i ], [ 0, %if.end4.i.cleanup.sink.split.i11_crit_edge ]
  tail call void @usb_free_urb(ptr noundef nonnull %call.i) #8
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %pipe_id to i32
  %67 = ptrtoint ptr %hif_handle to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hif_handle, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %68, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %conv) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %cleanup.sink.split.i11, %sw.bb1.sw.epilog_crit_edge, %cleanup.sink.split.i, %if.end.i.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %do.end ], [ -12, %if.end.i.sw.epilog_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ], [ -12, %sw.bb1.sw.epilog_crit_edge ], [ %retval.0.ph.i10, %cleanup.sink.split.i11 ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_htc_txcompletion_cb(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__hif_usb_tx(ptr noundef %hif_dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_skb_cnt1 = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 7, i32 2
  %0 = ptrtoint ptr %tx_skb_cnt1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %tx_skb_cnt1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_buf4 = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 7, i32 4
  %2 = ptrtoint ptr %tx_buf4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %tx_buf4, align 4
  %cmp.i.not = icmp eq ptr %3, %tx_buf4
  br i1 %cmp.i.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %3, i32 -72
  %tx_pending = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 7, i32 5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end6.__list_del_entry.exit.i_crit_edge

if.end6.__list_del_entry.exit.i_crit_edge:        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end6.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 7, i32 5, i32 1
  %10 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %3, ptr noundef %11, ptr noundef %tx_pending) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %3, ptr %prev.i2.i, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %tx_pending, ptr %3, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %3, ptr %11, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %tx_buf_cnt = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %tx_buf_cnt to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tx_buf_cnt, align 1
  %dec = add i8 %17, -1
  store i8 %dec, ptr %tx_buf_cnt, align 1
  %18 = ptrtoint ptr %tx_skb_cnt1 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %tx_skb_cnt1, align 2
  %20 = tail call i16 @llvm.umin.i16(i16 %19, i16 20)
  %cond = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp2214.not = icmp eq i16 %20, 0
  br i1 %cmp2214.not, label %list_move_tail.exit.for.end_crit_edge, label %for.body.lr.ph

list_move_tail.exit.for.end_crit_edge:            ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %list_move_tail.exit
  %tx_skb_queue = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 7, i32 3
  %qlen.i.i = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 7, i32 3, i32 1
  %offset = getelementptr i8, ptr %3, i32 -66
  %len50 = getelementptr i8, ptr %3, i32 -68
  %sub = add nsw i32 %cond, -1
  %skb_queue = getelementptr i8, ptr %3, i32 -60
  %prev.i.i1 = getelementptr i8, ptr %3, i32 -56
  %qlen.i.i.i = getelementptr i8, ptr %3, i32 -52
  %htc_handle = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %if.end75.for.body_crit_edge, %for.body.lr.ph
  %i.015 = phi i32 [ 0, %for.body.lr.ph ], [ %inc76, %if.end75.for.body_crit_edge ]
  %21 = ptrtoint ptr %tx_skb_queue to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tx_skb_queue, align 4
  %cmp.i.i = icmp eq ptr %22, %tx_skb_queue
  %tobool.not.i13 = icmp eq ptr %22, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not.i13
  br i1 %tobool.not.i, label %do.body31, label %do.end37

do.body31:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wireless/ath/ath9k/hif_usb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 336, 0\0A.popsection", ""() #8, !srcloc !136
  unreachable

do.end37:                                         ; preds = %for.body
  %23 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %24, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %22, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.44, ptr %22, i32 0, i32 1
  %27 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %22, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.44, ptr %26, i32 0, i32 1
  %29 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %28, ptr %prev17.i.i, align 4
  %30 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %26, ptr %28, align 8
  %31 = ptrtoint ptr %tx_skb_cnt1 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %tx_skb_cnt1, align 2
  %dec40 = add i16 %32, -1
  store i16 %dec40, ptr %tx_skb_cnt1, align 2
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr, align 4
  %35 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %offset, align 2
  %conv42 = zext i16 %36 to i32
  %add.ptr43 = getelementptr i8, ptr %34, i32 %conv42
  %len = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 6
  %37 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len, align 4
  %conv44 = trunc i32 %38 to i16
  %39 = tail call i16 @llvm.bswap.i16(i16 %conv44)
  %incdec.ptr = getelementptr i16, ptr %add.ptr43, i32 1
  %40 = ptrtoint ptr %add.ptr43 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %add.ptr43, align 2
  %41 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 32361, ptr %incdec.ptr, align 2
  %add.ptr46 = getelementptr i8, ptr %add.ptr43, i32 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %22, i32 0, i32 19
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data, align 4
  %44 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len, align 4
  %46 = call ptr @memcpy(ptr %add.ptr46, ptr %43, i32 %45)
  %47 = load i32, ptr %len, align 4
  %48 = trunc i32 %47 to i16
  %conv49 = add i16 %48, 4
  %49 = ptrtoint ptr %len50 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv49, ptr %len50, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.015, i32 %sub)
  %cmp52 = icmp slt i32 %i.015, %sub
  br i1 %cmp52, label %if.then54, label %do.end37.if.end63_crit_edge

do.end37.if.end63_crit_edge:                      ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then54:                                        ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #10
  %conv56 = zext i16 %conv49 to i32
  %sub57 = add nsw i32 %conv56, -1
  %div = sdiv i32 %sub57, 4
  %50 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %offset, align 2
  %div.tr = trunc i32 %div to i16
  %52 = shl nuw i16 %div.tr, 2
  %53 = add i16 %52, 4
  %conv62 = add i16 %53, %51
  store i16 %conv62, ptr %offset, align 2
  br label %if.end63

if.end63:                                         ; preds = %if.then54, %do.end37.if.end63_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %i.015, i32 %sub)
  %cmp66 = icmp eq i32 %i.015, %sub
  br i1 %cmp66, label %if.then68, label %if.end63.if.end75_crit_edge

if.end63.if.end75_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.then68:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %offset, align 2
  %56 = ptrtoint ptr %len50 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %len50, align 4
  %add73 = add i16 %57, %55
  store i16 %add73, ptr %len50, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then68, %if.end63.if.end75_crit_edge
  %58 = ptrtoint ptr %prev.i.i1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev.i.i1, align 4
  %60 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %skb_queue, ptr %22, align 8
  %61 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %59, ptr %prev9.i.i, align 4
  store volatile ptr %22, ptr %prev.i.i1, align 4
  %62 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %22, ptr %59, align 4
  %63 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %64, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  %65 = ptrtoint ptr %htc_handle to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %htc_handle, align 4
  %drv_priv = getelementptr inbounds %struct.htc_target, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %drv_priv, align 4
  %skb_queued = getelementptr inbounds %struct.ath9k_htc_priv, ptr %68, i32 0, i32 61, i32 1, i32 2
  %69 = ptrtoint ptr %skb_queued to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %skb_queued, align 4
  %inc = add i32 %70, 1
  store i32 %inc, ptr %skb_queued, align 4
  %inc76 = add nuw nsw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc76, %cond
  br i1 %exitcond.not, label %if.end75.for.end_crit_edge, label %if.end75.for.body_crit_edge

if.end75.for.body_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end75.for.end_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end75.for.end_crit_edge, %list_move_tail.exit.for.end_crit_edge
  %urb = getelementptr i8, ptr %3, i32 -64
  %71 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %urb, align 4
  %73 = ptrtoint ptr %hif_dev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hif_dev, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %74, align 8
  %shl.i = shl i32 %76, 8
  %or = or i32 %shl.i, -1073709056
  %77 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %add.ptr, align 4
  %len80 = getelementptr i8, ptr %3, i32 -68
  %79 = ptrtoint ptr %len80 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %len80, align 4
  %conv81 = zext i16 %80 to i32
  %dev1.i = getelementptr inbounds %struct.urb, ptr %72, i32 0, i32 8
  %81 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %74, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %72, i32 0, i32 10
  %82 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %72, i32 0, i32 14
  %83 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %78, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %72, i32 0, i32 19
  %84 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %conv81, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %72, i32 0, i32 28
  %85 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @hif_usb_tx_cb, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %72, i32 0, i32 27
  %86 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %add.ptr, ptr %context4.i, align 4
  %87 = load ptr, ptr %urb, align 4
  %call83 = tail call i32 @usb_submit_urb(ptr noundef %87, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.then98.critedge, label %if.then85

if.then85:                                        ; preds = %for.end
  %offset86 = getelementptr i8, ptr %3, i32 -66
  %88 = ptrtoint ptr %offset86 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 0, ptr %offset86, align 2
  %89 = ptrtoint ptr %len80 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 0, ptr %len80, align 4
  %skb_queue88 = getelementptr i8, ptr %3, i32 -60
  %90 = ptrtoint ptr %skb_queue88 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %skb_queue88, align 4
  %cmp.i.i18.i = icmp eq ptr %91, %skb_queue88
  %tobool.not.i1719.i = icmp eq ptr %91, null
  %tobool.not.i20.i = or i1 %cmp.i.i18.i, %tobool.not.i1719.i
  br i1 %tobool.not.i20.i, label %if.then85.ath9k_skb_queue_complete.exit_crit_edge, label %while.body.lr.ph.i

if.then85.ath9k_skb_queue_complete.exit_crit_edge: ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath9k_skb_queue_complete.exit

while.body.lr.ph.i:                               ; preds = %if.then85
  %qlen.i.i.i2 = getelementptr i8, ptr %3, i32 -52
  %htc_handle.i = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 6
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %92 = phi ptr [ %91, %while.body.lr.ph.i ], [ %110, %while.body.i.while.body.i_crit_edge ]
  %93 = ptrtoint ptr %qlen.i.i.i2 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %qlen.i.i.i2, align 4
  %sub.i.i.i = add i32 %94, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i2, align 4
  %95 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %92, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.44, ptr %92, i32 0, i32 1
  %97 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %92, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.44, ptr %96, i32 0, i32 1
  %99 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile ptr %98, ptr %prev17.i.i.i, align 4
  %100 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %96, ptr %98, align 8
  %101 = ptrtoint ptr %htc_handle.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %htc_handle.i, align 4
  tail call void @ath9k_htc_txcompletion_cb(ptr noundef %102, ptr noundef nonnull %92, i1 noundef zeroext false) #8
  %103 = ptrtoint ptr %htc_handle.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %htc_handle.i, align 4
  %drv_priv.i = getelementptr inbounds %struct.htc_target, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %drv_priv.i, align 4
  %skb_failed.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %106, i32 0, i32 61, i32 1, i32 5
  %107 = ptrtoint ptr %skb_failed.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %skb_failed.i, align 4
  %inc11.i = add i32 %108, 1
  store i32 %inc11.i, ptr %skb_failed.i, align 4
  %109 = ptrtoint ptr %skb_queue88 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %skb_queue88, align 4
  %cmp.i.i.i = icmp eq ptr %110, %skb_queue88
  %tobool.not.i17.i = icmp eq ptr %110, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i17.i
  br i1 %tobool.not.i.i, label %while.body.i.ath9k_skb_queue_complete.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.ath9k_skb_queue_complete.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath9k_skb_queue_complete.exit

ath9k_skb_queue_complete.exit:                    ; preds = %while.body.i.ath9k_skb_queue_complete.exit_crit_edge, %if.then85.ath9k_skb_queue_complete.exit_crit_edge
  %111 = ptrtoint ptr %skb_queue88 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %skb_queue88, ptr %skb_queue88, align 4
  %prev.i = getelementptr i8, ptr %3, i32 -56
  %112 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %skb_queue88, ptr %prev.i, align 4
  %qlen.i = getelementptr i8, ptr %3, i32 -52
  %113 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %qlen.i, align 4
  %call.i.i3 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #8
  br i1 %call.i.i3, label %if.end.i.i6, label %ath9k_skb_queue_complete.exit.__list_del_entry.exit.i9_crit_edge

ath9k_skb_queue_complete.exit.__list_del_entry.exit.i9_crit_edge: ; preds = %ath9k_skb_queue_complete.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i9

if.end.i.i6:                                      ; preds = %ath9k_skb_queue_complete.exit
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %114 = ptrtoint ptr %prev.i.i4 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %prev.i.i4, align 4
  %116 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %3, align 4
  %prev1.i.i.i5 = getelementptr inbounds %struct.list_head, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %prev1.i.i.i5 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %115, ptr %prev1.i.i.i5, align 4
  %119 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %119)
  store volatile ptr %117, ptr %115, align 4
  br label %__list_del_entry.exit.i9

__list_del_entry.exit.i9:                         ; preds = %if.end.i.i6, %ath9k_skb_queue_complete.exit.__list_del_entry.exit.i9_crit_edge
  %prev.i2.i7 = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 7, i32 4, i32 1
  %120 = ptrtoint ptr %prev.i2.i7 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %prev.i2.i7, align 4
  %call.i.i.i8 = tail call zeroext i1 @__list_add_valid(ptr noundef %3, ptr noundef %121, ptr noundef %tx_buf4) #8
  br i1 %call.i.i.i8, label %if.end.i.i.i11, label %__list_del_entry.exit.i9.list_move_tail.exit12_crit_edge

__list_del_entry.exit.i9.list_move_tail.exit12_crit_edge: ; preds = %__list_del_entry.exit.i9
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_move_tail.exit12

if.end.i.i.i11:                                   ; preds = %__list_del_entry.exit.i9
  call void @__sanitizer_cov_trace_pc() #10
  %122 = ptrtoint ptr %prev.i2.i7 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %3, ptr %prev.i2.i7, align 4
  %123 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %tx_buf4, ptr %3, align 4
  %prev3.i.i.i10 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %124 = ptrtoint ptr %prev3.i.i.i10 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %121, ptr %prev3.i.i.i10, align 4
  %125 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile ptr %3, ptr %121, align 4
  br label %list_move_tail.exit12

list_move_tail.exit12:                            ; preds = %if.end.i.i.i11, %__list_del_entry.exit.i9.list_move_tail.exit12_crit_edge
  %126 = ptrtoint ptr %tx_buf_cnt to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %tx_buf_cnt, align 1
  %inc95 = add i8 %127, 1
  store i8 %inc95, ptr %tx_buf_cnt, align 1
  br label %cleanup

if.then98.critedge:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %htc_handle99 = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 6
  %128 = ptrtoint ptr %htc_handle99 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %htc_handle99, align 4
  %drv_priv100 = getelementptr inbounds %struct.htc_target, ptr %129, i32 0, i32 1
  %130 = ptrtoint ptr %drv_priv100 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %drv_priv100, align 4
  %tx_stats102 = getelementptr inbounds %struct.ath9k_htc_priv, ptr %131, i32 0, i32 61, i32 1
  %132 = ptrtoint ptr %tx_stats102 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %tx_stats102, align 4
  %inc103 = add i32 %133, 1
  store i32 %inc103, ptr %tx_stats102, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then98.critedge, %list_move_tail.exit12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hif_usb_mgmt_cb(ptr nocapture noundef readonly %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %hif_dev3 = getelementptr inbounds %struct.cmd_buf, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %hif_dev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hif_dev3, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %7, label %sw.default [
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 -2, label %if.end.sw.bb_crit_edge
    i32 -104, label %if.end.sw.bb_crit_edge44
    i32 -19, label %if.end.sw.bb_crit_edge45
    i32 -108, label %if.end.sw.bb_crit_edge46
  ]

if.end.sw.bb_crit_edge46:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge45:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge44:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge44, %if.end.sw.bb_crit_edge45, %if.end.sw.bb_crit_edge46
  %tx = getelementptr inbounds %struct.hif_device_usb, ptr %5, i32 0, i32 7
  %tx_lock = getelementptr inbounds %struct.hif_device_usb, ptr %5, i32 0, i32 7, i32 6
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %tx_lock) #8
  %9 = ptrtoint ptr %tx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tx, align 4
  %11 = and i8 %10, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool13.not = icmp eq i8 %11, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %tx_lock, i32 noundef %call7) #8
  br i1 %tobool13.not, label %sw.bb.sw.epilog_crit_edge, label %if.then14

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then14:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %13, i32 noundef 1) #8
  br label %cleanup.sink.split

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %txok.0.off0 = phi i1 [ false, %sw.default ], [ true, %if.end.sw.epilog_crit_edge ], [ false, %sw.bb.sw.epilog_crit_edge ]
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call22 = tail call ptr @skb_pull(ptr noundef %15, i32 noundef 4) #8
  %16 = ptrtoint ptr %hif_dev3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hif_dev3, align 4
  %htc_handle = getelementptr inbounds %struct.hif_device_usb, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %htc_handle to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %htc_handle, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  tail call void @ath9k_htc_txcompletion_cb(ptr noundef %19, ptr noundef %21, i1 noundef zeroext %txok.0.off0) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.epilog, %if.then14
  tail call void @kfree(ptr noundef nonnull %1) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_anchor_urb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_unanchor_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hif_usb_tx_cb(ptr nocapture noundef readonly %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %hif_dev1 = getelementptr inbounds %struct.tx_buf, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %hif_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hif_dev1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %5, label %sw.default [
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 -2, label %if.end.sw.bb_crit_edge
    i32 -104, label %if.end.sw.bb_crit_edge62
    i32 -19, label %if.end.sw.bb_crit_edge63
    i32 -108, label %if.end.sw.bb_crit_edge64
  ]

if.end.sw.bb_crit_edge64:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge63:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge62:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge62, %if.end.sw.bb_crit_edge63, %if.end.sw.bb_crit_edge64
  %tx = getelementptr inbounds %struct.hif_device_usb, ptr %3, i32 0, i32 7
  %tx_lock = getelementptr inbounds %struct.hif_device_usb, ptr %3, i32 0, i32 7, i32 6
  tail call void @_raw_spin_lock(ptr noundef %tx_lock) #8
  %7 = ptrtoint ptr %tx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tx, align 4
  %9 = and i8 %8, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  tail call void @_raw_spin_unlock(ptr noundef %tx_lock) #8
  br i1 %tobool5.not, label %sw.bb.sw.epilog_crit_edge, label %if.then6

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then6:                                         ; preds = %sw.bb
  %skb_queue = getelementptr inbounds %struct.tx_buf, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %skb_queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %skb_queue, align 4
  %cmp.i.i2.i = icmp eq ptr %11, %skb_queue
  %tobool.not.i13.i = icmp eq ptr %11, null
  %tobool.not.i4.i = or i1 %cmp.i.i2.i, %tobool.not.i13.i
  br i1 %tobool.not.i4.i, label %if.then6.cleanup_crit_edge, label %while.body.lr.ph.i

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.lr.ph.i:                               ; preds = %if.then6
  %qlen.i.i.i = getelementptr inbounds %struct.tx_buf, ptr %1, i32 0, i32 4, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %12 = phi ptr [ %11, %while.body.lr.ph.i ], [ %22, %while.body.i.while.body.i_crit_edge ]
  %13 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.44, ptr %12, i32 0, i32 1
  %17 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %12, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.44, ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %18, ptr %prev17.i.i.i, align 4
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %16, ptr %18, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %12, i32 noundef 1) #8
  %21 = ptrtoint ptr %skb_queue to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %skb_queue, align 4
  %cmp.i.i.i = icmp eq ptr %22, %skb_queue
  %tobool.not.i1.i = icmp eq ptr %22, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i1.i
  br i1 %tobool.not.i.i, label %while.body.i.cleanup_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %txok.0.off0 = phi i1 [ false, %sw.default ], [ true, %if.end.sw.epilog_crit_edge ], [ false, %sw.bb.sw.epilog_crit_edge ]
  %skb_queue12 = getelementptr inbounds %struct.tx_buf, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %skb_queue12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %skb_queue12, align 4
  %cmp.i.i18.i = icmp eq ptr %24, %skb_queue12
  %tobool.not.i1719.i = icmp eq ptr %24, null
  %tobool.not.i20.i = or i1 %cmp.i.i18.i, %tobool.not.i1719.i
  br i1 %tobool.not.i20.i, label %sw.epilog.ath9k_skb_queue_complete.exit_crit_edge, label %while.body.lr.ph.i55

sw.epilog.ath9k_skb_queue_complete.exit_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath9k_skb_queue_complete.exit

while.body.lr.ph.i55:                             ; preds = %sw.epilog
  %qlen.i.i.i54 = getelementptr inbounds %struct.tx_buf, ptr %1, i32 0, i32 4, i32 1
  %htc_handle.i = getelementptr inbounds %struct.hif_device_usb, ptr %3, i32 0, i32 6
  br label %while.body.i59

while.body.i59:                                   ; preds = %if.end.i.while.body.i59_crit_edge, %while.body.lr.ph.i55
  %25 = phi ptr [ %24, %while.body.lr.ph.i55 ], [ %51, %if.end.i.while.body.i59_crit_edge ]
  %26 = ptrtoint ptr %qlen.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %qlen.i.i.i54, align 4
  %sub.i.i.i56 = add i32 %27, -1
  store volatile i32 %sub.i.i.i56, ptr %qlen.i.i.i54, align 4
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %25, align 8
  %prev9.i.i.i57 = getelementptr inbounds %struct.anon.44, ptr %25, i32 0, i32 1
  %30 = ptrtoint ptr %prev9.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev9.i.i.i57, align 4
  store ptr null, ptr %prev9.i.i.i57, align 4
  store ptr null, ptr %25, align 8
  %prev17.i.i.i58 = getelementptr inbounds %struct.anon.44, ptr %29, i32 0, i32 1
  %32 = ptrtoint ptr %prev17.i.i.i58 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %31, ptr %prev17.i.i.i58, align 4
  %33 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %29, ptr %31, align 8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %25, i32 0, i32 6
  %34 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len.i, align 4
  %36 = ptrtoint ptr %htc_handle.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %htc_handle.i, align 4
  tail call void @ath9k_htc_txcompletion_cb(ptr noundef %37, ptr noundef nonnull %25, i1 noundef zeroext %txok.0.off0) #8
  %38 = ptrtoint ptr %htc_handle.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %htc_handle.i, align 4
  %drv_priv.i = getelementptr inbounds %struct.htc_target, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %drv_priv.i, align 4
  br i1 %txok.0.off0, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i59
  call void @__sanitizer_cov_trace_pc() #10
  %skb_success.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %41, i32 0, i32 61, i32 1, i32 3
  %42 = ptrtoint ptr %skb_success.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %skb_success.i, align 4
  %inc.i = add i32 %43, 1
  store i32 %inc.i, ptr %skb_success.i, align 4
  %44 = ptrtoint ptr %htc_handle.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %htc_handle.i, align 4
  %drv_priv4.i = getelementptr inbounds %struct.htc_target, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %drv_priv4.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %drv_priv4.i, align 4
  %skb_success_bytes.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %47, i32 0, i32 61, i32 1, i32 4
  br label %if.end.i

if.else.i:                                        ; preds = %while.body.i59
  call void @__sanitizer_cov_trace_pc() #10
  %skb_failed.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %41, i32 0, i32 61, i32 1, i32 5
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %skb_failed.sink22.i = phi ptr [ %skb_failed.i, %if.else.i ], [ %skb_success_bytes.i, %if.then.i ]
  %.sink21.i = phi i32 [ 1, %if.else.i ], [ %35, %if.then.i ]
  %48 = ptrtoint ptr %skb_failed.sink22.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %skb_failed.sink22.i, align 4
  %inc11.i = add i32 %49, %.sink21.i
  store i32 %inc11.i, ptr %skb_failed.sink22.i, align 4
  %50 = ptrtoint ptr %skb_queue12 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %skb_queue12, align 4
  %cmp.i.i.i60 = icmp eq ptr %51, %skb_queue12
  %tobool.not.i17.i = icmp eq ptr %51, null
  %tobool.not.i.i61 = or i1 %cmp.i.i.i60, %tobool.not.i17.i
  br i1 %tobool.not.i.i61, label %if.end.i.ath9k_skb_queue_complete.exit_crit_edge, label %if.end.i.while.body.i59_crit_edge

if.end.i.while.body.i59_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i59

if.end.i.ath9k_skb_queue_complete.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath9k_skb_queue_complete.exit

ath9k_skb_queue_complete.exit:                    ; preds = %if.end.i.ath9k_skb_queue_complete.exit_crit_edge, %sw.epilog.ath9k_skb_queue_complete.exit_crit_edge
  %offset = getelementptr inbounds %struct.tx_buf, ptr %1, i32 0, i32 2
  %52 = ptrtoint ptr %offset to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 0, ptr %offset, align 2
  %len = getelementptr inbounds %struct.tx_buf, ptr %1, i32 0, i32 1
  %53 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %len, align 4
  %54 = ptrtoint ptr %skb_queue12 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %skb_queue12, ptr %skb_queue12, align 4
  %prev.i = getelementptr inbounds %struct.tx_buf, ptr %1, i32 0, i32 4, i32 0, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %skb_queue12, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.tx_buf, ptr %1, i32 0, i32 4, i32 1
  %56 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %qlen.i, align 4
  %tx15 = getelementptr inbounds %struct.hif_device_usb, ptr %3, i32 0, i32 7
  %tx_lock16 = getelementptr inbounds %struct.hif_device_usb, ptr %3, i32 0, i32 7, i32 6
  tail call void @_raw_spin_lock(ptr noundef %tx_lock16) #8
  %list = getelementptr inbounds %struct.tx_buf, ptr %1, i32 0, i32 6
  %tx_buf18 = getelementptr inbounds %struct.hif_device_usb, ptr %3, i32 0, i32 7, i32 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #8
  br i1 %call.i.i, label %if.end.i.i, label %ath9k_skb_queue_complete.exit.__list_del_entry.exit.i_crit_edge

ath9k_skb_queue_complete.exit.__list_del_entry.exit.i_crit_edge: ; preds = %ath9k_skb_queue_complete.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %ath9k_skb_queue_complete.exit
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.tx_buf, ptr %1, i32 0, i32 6, i32 1
  %57 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i.i, align 4
  %59 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev1.i.i.i, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %60, ptr %58, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %ath9k_skb_queue_complete.exit.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.hif_device_usb, ptr %3, i32 0, i32 7, i32 4, i32 1
  %63 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %64, ptr noundef %tx_buf18) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %list, ptr %prev.i2.i, align 4
  %66 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %tx_buf18, ptr %list, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.tx_buf, ptr %1, i32 0, i32 6, i32 1
  %67 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %prev3.i.i.i, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %list, ptr %64, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %tx_buf_cnt = getelementptr inbounds %struct.hif_device_usb, ptr %3, i32 0, i32 7, i32 1
  %69 = ptrtoint ptr %tx_buf_cnt to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %tx_buf_cnt, align 1
  %inc = add i8 %70, 1
  store i8 %inc, ptr %tx_buf_cnt, align 1
  %71 = ptrtoint ptr %tx15 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %tx15, align 4
  %73 = and i8 %72, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool24.not = icmp eq i8 %73, 0
  br i1 %tobool24.not, label %if.then25, label %list_move_tail.exit.if.end26_crit_edge

list_move_tail.exit.if.end26_crit_edge:           ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then25:                                        ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @__hif_usb_tx(ptr noundef nonnull %3)
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %list_move_tail.exit.if.end26_crit_edge
  %htc_handle = getelementptr inbounds %struct.hif_device_usb, ptr %3, i32 0, i32 6
  %74 = ptrtoint ptr %htc_handle to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %htc_handle, align 4
  %drv_priv = getelementptr inbounds %struct.htc_target, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %drv_priv, align 4
  %buf_completed = getelementptr inbounds %struct.ath9k_htc_priv, ptr %77, i32 0, i32 61, i32 1, i32 1
  %78 = ptrtoint ptr %buf_completed to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %buf_completed, align 4
  %inc27 = add i32 %79, 1
  store i32 %inc27, ptr %buf_completed, align 4
  tail call void @_raw_spin_unlock(ptr noundef %tx_lock16) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %while.body.i.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hif_usb_regout_cb(ptr nocapture noundef readonly %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %3, label %sw.epilog [
    i32 -108, label %entry.free_crit_edge
    i32 -2, label %entry.free_crit_edge8
    i32 -104, label %entry.free_crit_edge9
    i32 -19, label %entry.free_crit_edge10
  ]

entry.free_crit_edge10:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

entry.free_crit_edge9:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

entry.free_crit_edge8:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

entry.free_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

sw.epilog:                                        ; preds = %entry
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.then

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %hif_dev = getelementptr inbounds %struct.cmd_buf, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %hif_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hif_dev, align 4
  %htc_handle = getelementptr inbounds %struct.hif_device_usb, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %htc_handle to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %htc_handle, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  tail call void @ath9k_htc_txcompletion_cb(ptr noundef %8, ptr noundef %10, i1 noundef zeroext true) #8
  tail call void @kfree(ptr noundef nonnull %1) #8
  br label %cleanup

free:                                             ; preds = %entry.free_crit_edge, %entry.free_crit_edge8, %entry.free_crit_edge9, %entry.free_crit_edge10
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  tail call void @kfree_skb_reason(ptr noundef %12, i32 noundef 0) #8
  tail call void @kfree(ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %free, %if.then, %sw.epilog.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath9k_hif_usb_download_fw(ptr noundef %hif_dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_data = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 3
  %0 = ptrtoint ptr %fw_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_data, align 4
  %fw_size = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 4
  %2 = ptrtoint ptr %fw_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_size, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 4096) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not63 = icmp eq i32 %3, 0
  br i1 %tobool1.not63, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %if.end9.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %addr.066 = phi i32 [ %add, %if.end9.while.body_crit_edge ], [ 5246976, %while.cond.preheader.while.body_crit_edge ]
  %len.065 = phi i32 [ %sub, %if.end9.while.body_crit_edge ], [ %3, %while.cond.preheader.while.body_crit_edge ]
  %data.064 = phi ptr [ %add.ptr, %if.end9.while.body_crit_edge ], [ %1, %while.cond.preheader.while.body_crit_edge ]
  %5 = tail call i32 @llvm.umin.i32(i32 %len.065, i32 4096)
  %6 = call ptr @memcpy(ptr %call7.i.i, ptr %data.064, i32 %5)
  %7 = ptrtoint ptr %hif_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hif_dev, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i = shl i32 %10, 8
  %or = or i32 %shl.i, -2147483648
  %shr = lshr i32 %addr.066, 8
  %conv = trunc i32 %shr to i16
  %conv4 = trunc i32 %5 to i16
  %call5 = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %or, i8 noundef zeroext 48, i8 noundef zeroext 64, i16 noundef zeroext %conv, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext %conv4, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end9:                                          ; preds = %while.body
  %sub = sub i32 %len.065, %5
  %add.ptr = getelementptr i8, ptr %data.064, i32 %5
  %add = add i32 %addr.066, %5
  %tobool1.not = icmp eq i32 %sub, 0
  br i1 %tobool1.not, label %if.end9.while.end_crit_edge, label %if.end9.while.body_crit_edge

if.end9.while.body_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end9.while.end_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %if.end9.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  %usb_device_id = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 2
  %11 = ptrtoint ptr %usb_device_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usb_device_id, align 4
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %12, i32 0, i32 12
  %13 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %driver_info, align 4
  %.off = add i32 %14, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %spec.select = select i1 %switch, i16 -28576, i16 -28624
  %15 = ptrtoint ptr %hif_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hif_dev, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  %shl.i62 = shl i32 %18, 8
  %or21 = or i32 %shl.i62, -2147483648
  %call24 = tail call i32 @usb_control_msg(ptr noundef %16, i32 noundef %or21, i8 noundef zeroext 49, i8 noundef zeroext 64, i16 noundef zeroext %spec.select, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %do.end, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %hif_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hif_dev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 15
  %fw_name = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 13
  %21 = ptrtoint ptr %fw_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fw_size, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.37, ptr noundef %fw_name, i32 noundef %22) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %while.end.cleanup_crit_edge, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then8 ], [ 0, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ -5, %while.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ath9k_hif_usb_alloc_urbs(ptr noundef %hif_dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regout_submitted = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 8
  %0 = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 8, i32 1
  %1 = call ptr @memset(ptr %0, i32 0, i32 104)
  %2 = ptrtoint ptr %regout_submitted to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %regout_submitted, ptr %regout_submitted, align 4
  %prev.i.i = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 8, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %regout_submitted, ptr %prev.i.i, align 4
  tail call void @__init_waitqueue_head(ptr noundef %0, ptr noundef nonnull @.str.39, ptr noundef nonnull @init_usb_anchor.__key) #8
  %lock.i = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 8, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @init_usb_anchor.__key.40, i16 noundef signext 3) #8
  %tx_buf1.i = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 7, i32 4
  %4 = ptrtoint ptr %tx_buf1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %tx_buf1.i, ptr %tx_buf1.i, align 4
  %prev.i.i14 = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 7, i32 4, i32 1
  %5 = ptrtoint ptr %prev.i.i14 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %tx_buf1.i, ptr %prev.i.i14, align 4
  %tx_pending.i = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 7, i32 5
  %6 = ptrtoint ptr %tx_pending.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %tx_pending.i, ptr %tx_pending.i, align 4
  %prev.i45.i = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 7, i32 5, i32 1
  %7 = ptrtoint ptr %prev.i45.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %tx_pending.i, ptr %prev.i45.i, align 4
  %tx_lock.i = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 7, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %tx_lock.i, ptr noundef nonnull @.str.42, ptr noundef nonnull @ath9k_hif_usb_alloc_tx_urbs.__key, i16 noundef signext 3) #8
  %tx_skb_queue.i = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 7, i32 3
  %8 = ptrtoint ptr %tx_skb_queue.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %tx_skb_queue.i, ptr %tx_skb_queue.i, align 4
  %prev.i46.i = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 7, i32 3, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i46.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %tx_skb_queue.i, ptr %prev.i46.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 7, i32 3, i32 1
  %10 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %qlen.i.i, align 4
  %mgmt_submitted.i = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 11
  %11 = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 11, i32 1
  %12 = call ptr @memset(ptr %11, i32 0, i32 104)
  %13 = ptrtoint ptr %mgmt_submitted.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %mgmt_submitted.i, ptr %mgmt_submitted.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 11, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %mgmt_submitted.i, ptr %prev.i.i.i, align 4
  tail call void @__init_waitqueue_head(ptr noundef %11, ptr noundef nonnull @.str.39, ptr noundef nonnull @init_usb_anchor.__key) #8
  %lock.i.i = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 11, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @init_usb_anchor.__key.40, i16 noundef signext 3) #8
  br label %for.body.i

for.body.i:                                       ; preds = %list_add_tail.exit.i.for.body.i_crit_edge, %entry
  %i.051.i = phi i32 [ 0, %entry ], [ %inc.i, %list_add_tail.exit.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 80) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %for.body.i.ath9k_hif_usb_alloc_tx_urbs.exit.thread_crit_edge, label %if.end.i

for.body.i.ath9k_hif_usb_alloc_tx_urbs.exit.thread_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath9k_hif_usb_alloc_tx_urbs.exit.thread

if.end.i:                                         ; preds = %for.body.i
  %call1.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 32768, i32 noundef 3520, i32 noundef 3) #13
  %16 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call1.i.i.i.i, ptr %call7.i.i.i, align 8
  %tobool8.not.i = icmp eq ptr %call1.i.i.i.i, null
  br i1 %tobool8.not.i, label %if.end.i.if.then21.i_crit_edge, label %if.end10.i

if.end.i.if.then21.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21.i

if.end10.i:                                       ; preds = %if.end.i
  %call11.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #8
  %urb.i = getelementptr inbounds %struct.tx_buf, ptr %call7.i.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %urb.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call11.i, ptr %urb.i, align 8
  %tobool13.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool13.not.i, label %if.end10.i.if.then21.i_crit_edge, label %if.end15.i

if.end10.i.if.then21.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21.i

if.end15.i:                                       ; preds = %if.end10.i
  %hif_dev16.i = getelementptr inbounds %struct.tx_buf, ptr %call7.i.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %hif_dev16.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %hif_dev, ptr %hif_dev16.i, align 4
  %skb_queue.i = getelementptr inbounds %struct.tx_buf, ptr %call7.i.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %skb_queue.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %skb_queue.i, ptr %skb_queue.i, align 4
  %prev.i47.i = getelementptr inbounds %struct.tx_buf, ptr %call7.i.i.i, i32 0, i32 4, i32 0, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i47.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %skb_queue.i, ptr %prev.i47.i, align 8
  %qlen.i48.i = getelementptr inbounds %struct.tx_buf, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %qlen.i48.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %qlen.i48.i, align 4
  %list.i = getelementptr inbounds %struct.tx_buf, ptr %call7.i.i.i, i32 0, i32 6
  %22 = ptrtoint ptr %prev.i.i14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i14, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %23, ptr noundef %tx_buf1.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end15.i.list_add_tail.exit.i_crit_edge

if.end15.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %prev.i.i14 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %list.i, ptr %prev.i.i14, align 4
  %25 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %tx_buf1.i, ptr %list.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.tx_buf, ptr %call7.i.i.i, i32 0, i32 6, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %list.i, ptr %23, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end15.i.list_add_tail.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.051.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %if.end, label %list_add_tail.exit.i.for.body.i_crit_edge

list_add_tail.exit.i.for.body.i_crit_edge:        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.then21.i:                                      ; preds = %if.end10.i.if.then21.i_crit_edge, %if.end.i.if.then21.i_crit_edge
  %28 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call7.i.i.i, align 8
  tail call void @kfree(ptr noundef %29) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %ath9k_hif_usb_alloc_tx_urbs.exit.thread

ath9k_hif_usb_alloc_tx_urbs.exit.thread:          ; preds = %if.then21.i, %for.body.i.ath9k_hif_usb_alloc_tx_urbs.exit.thread_crit_edge
  tail call fastcc void @ath9k_hif_usb_dealloc_tx_urbs(ptr noundef %hif_dev) #8
  br label %return

if.end:                                           ; preds = %list_add_tail.exit.i
  %tx_buf_cnt.i = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 7, i32 1
  %30 = ptrtoint ptr %tx_buf_cnt.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 8, ptr %tx_buf_cnt.i, align 1
  %rx_submitted.i = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 9
  %31 = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 9, i32 1
  %32 = call ptr @memset(ptr %31, i32 0, i32 104)
  %33 = ptrtoint ptr %rx_submitted.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %rx_submitted.i, ptr %rx_submitted.i, align 4
  %prev.i.i.i15 = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 9, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i.i15 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %rx_submitted.i, ptr %prev.i.i.i15, align 4
  tail call void @__init_waitqueue_head(ptr noundef %31, ptr noundef nonnull @.str.39, ptr noundef nonnull @init_usb_anchor.__key) #8
  %lock.i.i16 = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 9, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i16, ptr noundef nonnull @.str.41, ptr noundef nonnull @init_usb_anchor.__key.40, i16 noundef signext 3) #8
  %rx_lock.i = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 19
  tail call void @__raw_spin_lock_init(ptr noundef %rx_lock.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @ath9k_hif_usb_alloc_rx_urbs.__key, i16 noundef signext 3) #8
  br label %for.body.i19

for.body.i19:                                     ; preds = %if.end19.i.for.body.i19_crit_edge, %if.end
  %i.054.i = phi i32 [ 0, %if.end ], [ %inc.i21, %if.end19.i.for.body.i19_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %35 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3520, i32 noundef 8) #12
  %tobool.not.i18 = icmp eq ptr %call7.i.i.i17, null
  br i1 %tobool.not.i18, label %for.body.i19.err_rx.sink.split_crit_edge, label %if.end.i20

for.body.i19.err_rx.sink.split_crit_edge:         ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_rx.sink.split

if.end.i20:                                       ; preds = %for.body.i19
  %call2.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #8
  %cmp3.i = icmp eq ptr %call2.i, null
  br i1 %cmp3.i, label %if.end.i20.ath9k_hif_usb_alloc_rx_urbs.exit_crit_edge, label %if.end5.i

if.end.i20.ath9k_hif_usb_alloc_rx_urbs.exit_crit_edge: ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath9k_hif_usb_alloc_rx_urbs.exit

if.end5.i:                                        ; preds = %if.end.i20
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 16384, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool7.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool7.not.i, label %if.end5.i.err_skb.i_crit_edge, label %if.end9.i

if.end5.i.err_skb.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_skb.i

if.end9.i:                                        ; preds = %if.end5.i
  %hif_dev10.i = getelementptr inbounds %struct.rx_buf, ptr %call7.i.i.i17, i32 0, i32 1
  %36 = ptrtoint ptr %hif_dev10.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %hif_dev, ptr %hif_dev10.i, align 4
  %37 = ptrtoint ptr %call7.i.i.i17 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i.i, ptr %call7.i.i.i17, align 8
  %38 = ptrtoint ptr %hif_dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hif_dev, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 8
  %shl.i.i = shl i32 %41, 8
  %or14.i = or i32 %shl.i.i, -1073676160
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %42 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %call2.i, i32 0, i32 8
  %44 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %39, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %call2.i, i32 0, i32 10
  %45 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or14.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %call2.i, i32 0, i32 14
  %46 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %call2.i, i32 0, i32 19
  %47 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 16384, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %call2.i, i32 0, i32 28
  %48 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @ath9k_hif_usb_rx_cb, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %call2.i, i32 0, i32 27
  %49 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call7.i.i.i17, ptr %context4.i.i, align 4
  tail call void @usb_anchor_urb(ptr noundef nonnull %call2.i, ptr noundef %rx_submitted.i) #8
  %call16.i = tail call i32 @usb_submit_urb(ptr noundef nonnull %call2.i, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call2.i) #8
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #8
  br label %err_skb.i

if.end19.i:                                       ; preds = %if.end9.i
  tail call void @usb_free_urb(ptr noundef nonnull %call2.i) #8
  %inc.i21 = add nuw nsw i32 %i.054.i, 1
  %exitcond.not.i22 = icmp eq i32 %inc.i21, 8
  br i1 %exitcond.not.i22, label %if.end19.i.if.end4_crit_edge, label %if.end19.i.for.body.i19_crit_edge

if.end19.i.for.body.i19_crit_edge:                ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i19

if.end19.i.if.end4_crit_edge:                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

err_skb.i:                                        ; preds = %if.then18.i, %if.end5.i.err_skb.i_crit_edge
  %ret.0.i = phi i32 [ %call16.i, %if.then18.i ], [ -12, %if.end5.i.err_skb.i_crit_edge ]
  tail call void @usb_free_urb(ptr noundef nonnull %call2.i) #8
  br label %ath9k_hif_usb_alloc_rx_urbs.exit

ath9k_hif_usb_alloc_rx_urbs.exit:                 ; preds = %err_skb.i, %if.end.i20.ath9k_hif_usb_alloc_rx_urbs.exit_crit_edge
  %ret.1.i = phi i32 [ %ret.0.i, %err_skb.i ], [ -12, %if.end.i20.ath9k_hif_usb_alloc_rx_urbs.exit_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i17) #8
  tail call void @usb_kill_anchored_urbs(ptr noundef %rx_submitted.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %cmp2 = icmp slt i32 %ret.1.i, 0
  br i1 %cmp2, label %ath9k_hif_usb_alloc_rx_urbs.exit.err_rx_crit_edge, label %ath9k_hif_usb_alloc_rx_urbs.exit.if.end4_crit_edge

ath9k_hif_usb_alloc_rx_urbs.exit.if.end4_crit_edge: ; preds = %ath9k_hif_usb_alloc_rx_urbs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

ath9k_hif_usb_alloc_rx_urbs.exit.err_rx_crit_edge: ; preds = %ath9k_hif_usb_alloc_rx_urbs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_rx

if.end4:                                          ; preds = %ath9k_hif_usb_alloc_rx_urbs.exit.if.end4_crit_edge, %if.end19.i.if.end4_crit_edge
  %reg_in_submitted.i = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 10
  %50 = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 10, i32 1
  %51 = call ptr @memset(ptr %50, i32 0, i32 104)
  %52 = ptrtoint ptr %reg_in_submitted.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %reg_in_submitted.i, ptr %reg_in_submitted.i, align 4
  %prev.i.i.i24 = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 10, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i.i.i24 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %reg_in_submitted.i, ptr %prev.i.i.i24, align 4
  tail call void @__init_waitqueue_head(ptr noundef %50, ptr noundef nonnull @.str.39, ptr noundef nonnull @init_usb_anchor.__key) #8
  %lock.i.i25 = getelementptr inbounds %struct.hif_device_usb, ptr %hif_dev, i32 0, i32 10, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i25, ptr noundef nonnull @.str.41, ptr noundef nonnull @init_usb_anchor.__key.40, i16 noundef signext 3) #8
  br label %for.body.i28

for.body.i28:                                     ; preds = %if.end18.i.for.body.i28_crit_edge, %if.end4
  %i.052.i = phi i32 [ 0, %if.end4 ], [ %inc.i39, %if.end18.i.for.body.i28_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %54 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i26 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %54, i32 noundef 3520, i32 noundef 8) #12
  %tobool.not.i27 = icmp eq ptr %call7.i.i.i26, null
  br i1 %tobool.not.i27, label %ath9k_hif_usb_alloc_reg_in_urbs.exit.thread58, label %if.end.i29

ath9k_hif_usb_alloc_reg_in_urbs.exit.thread58:    ; preds = %for.body.i28
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_kill_anchored_urbs(ptr noundef %reg_in_submitted.i) #8
  br label %err_rx.sink.split

if.end.i29:                                       ; preds = %for.body.i28
  %call1.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #8
  %cmp2.i = icmp eq ptr %call1.i, null
  br i1 %cmp2.i, label %if.end.i29.ath9k_hif_usb_alloc_reg_in_urbs.exit_crit_edge, label %if.end4.i

if.end.i29.ath9k_hif_usb_alloc_reg_in_urbs.exit_crit_edge: ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath9k_hif_usb_alloc_reg_in_urbs.exit

if.end4.i:                                        ; preds = %if.end.i29
  %call.i.i30 = tail call ptr @__alloc_skb(i32 noundef 64, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #8
  %tobool6.not.i = icmp eq ptr %call.i.i30, null
  br i1 %tobool6.not.i, label %if.end4.i.err_skb.i42_crit_edge, label %if.end8.i

if.end4.i.err_skb.i42_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_skb.i42

if.end8.i:                                        ; preds = %if.end4.i
  %hif_dev9.i = getelementptr inbounds %struct.rx_buf, ptr %call7.i.i.i26, i32 0, i32 1
  %55 = ptrtoint ptr %hif_dev9.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %hif_dev, ptr %hif_dev9.i, align 4
  %56 = ptrtoint ptr %call7.i.i.i26 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call.i.i30, ptr %call7.i.i.i26, align 8
  %57 = ptrtoint ptr %hif_dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hif_dev, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 8
  %shl.i.i31 = shl i32 %60, 8
  %or13.i = or i32 %shl.i.i31, 1073840256
  %data.i32 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i30, i32 0, i32 19
  %61 = ptrtoint ptr %data.i32 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data.i32, align 4
  %dev1.i.i33 = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 8
  %63 = ptrtoint ptr %dev1.i.i33 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %58, ptr %dev1.i.i33, align 4
  %pipe2.i.i34 = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 10
  %64 = ptrtoint ptr %pipe2.i.i34 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %or13.i, ptr %pipe2.i.i34, align 4
  %transfer_buffer3.i.i35 = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 14
  %65 = ptrtoint ptr %transfer_buffer3.i.i35 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %62, ptr %transfer_buffer3.i.i35, align 4
  %transfer_buffer_length.i.i36 = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 19
  %66 = ptrtoint ptr %transfer_buffer_length.i.i36 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 64, ptr %transfer_buffer_length.i.i36, align 4
  %complete.i.i37 = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 28
  %67 = ptrtoint ptr %complete.i.i37 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @ath9k_hif_usb_reg_in_cb, ptr %complete.i.i37, align 4
  %context4.i.i38 = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 27
  %68 = ptrtoint ptr %context4.i.i38 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call7.i.i.i26, ptr %context4.i.i38, align 4
  %69 = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 25
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %69, align 4
  %start_frame.i.i = getelementptr inbounds %struct.urb, ptr %call1.i, i32 0, i32 23
  %71 = ptrtoint ptr %start_frame.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -1, ptr %start_frame.i.i, align 4
  tail call void @usb_anchor_urb(ptr noundef nonnull %call1.i, ptr noundef %reg_in_submitted.i) #8
  %call15.i = tail call i32 @usb_submit_urb(ptr noundef nonnull %call1.i, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_unanchor_urb(ptr noundef nonnull %call1.i) #8
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i30, i32 noundef 0) #8
  br label %err_skb.i42

if.end18.i:                                       ; preds = %if.end8.i
  tail call void @usb_free_urb(ptr noundef nonnull %call1.i) #8
  %inc.i39 = add nuw nsw i32 %i.052.i, 1
  %exitcond.not.i40 = icmp eq i32 %inc.i39, 64
  br i1 %exitcond.not.i40, label %if.end18.i.return_crit_edge, label %if.end18.i.for.body.i28_crit_edge

if.end18.i.for.body.i28_crit_edge:                ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i28

if.end18.i.return_crit_edge:                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

err_skb.i42:                                      ; preds = %if.then17.i, %if.end4.i.err_skb.i42_crit_edge
  %ret.0.i41 = phi i32 [ %call15.i, %if.then17.i ], [ -12, %if.end4.i.err_skb.i42_crit_edge ]
  tail call void @usb_free_urb(ptr noundef nonnull %call1.i) #8
  br label %ath9k_hif_usb_alloc_reg_in_urbs.exit

ath9k_hif_usb_alloc_reg_in_urbs.exit:             ; preds = %err_skb.i42, %if.end.i29.ath9k_hif_usb_alloc_reg_in_urbs.exit_crit_edge
  %ret.1.i43 = phi i32 [ %ret.0.i41, %err_skb.i42 ], [ -12, %if.end.i29.ath9k_hif_usb_alloc_reg_in_urbs.exit_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i26) #8
  tail call void @usb_kill_anchored_urbs(ptr noundef %reg_in_submitted.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i43)
  %cmp6 = icmp slt i32 %ret.1.i43, 0
  br i1 %cmp6, label %ath9k_hif_usb_alloc_reg_in_urbs.exit.err_rx.sink.split_crit_edge, label %ath9k_hif_usb_alloc_reg_in_urbs.exit.return_crit_edge

ath9k_hif_usb_alloc_reg_in_urbs.exit.return_crit_edge: ; preds = %ath9k_hif_usb_alloc_reg_in_urbs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

ath9k_hif_usb_alloc_reg_in_urbs.exit.err_rx.sink.split_crit_edge: ; preds = %ath9k_hif_usb_alloc_reg_in_urbs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_rx.sink.split

err_rx.sink.split:                                ; preds = %ath9k_hif_usb_alloc_reg_in_urbs.exit.err_rx.sink.split_crit_edge, %ath9k_hif_usb_alloc_reg_in_urbs.exit.thread58, %for.body.i19.err_rx.sink.split_crit_edge
  tail call void @usb_kill_anchored_urbs(ptr noundef %rx_submitted.i) #8
  br label %err_rx

err_rx:                                           ; preds = %err_rx.sink.split, %ath9k_hif_usb_alloc_rx_urbs.exit.err_rx_crit_edge
  tail call fastcc void @ath9k_hif_usb_dealloc_tx_urbs(ptr noundef %hif_dev)
  br label %return

return:                                           ; preds = %err_rx, %ath9k_hif_usb_alloc_reg_in_urbs.exit.return_crit_edge, %if.end18.i.return_crit_edge, %ath9k_hif_usb_alloc_tx_urbs.exit.thread
  %retval.0 = phi i32 [ 0, %ath9k_hif_usb_alloc_reg_in_urbs.exit.return_crit_edge ], [ -12, %err_rx ], [ -12, %ath9k_hif_usb_alloc_tx_urbs.exit.thread ], [ 0, %if.end18.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_hif_usb_rx_cb(ptr noundef %urb) #0 align 64 {
entry:
  %skb_pool.i = alloca [10 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %hif_dev1 = getelementptr inbounds %struct.rx_buf, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hif_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hif_dev1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.free_crit_edge, label %if.end5

if.end.free_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

if.end5:                                          ; preds = %if.end
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %7, label %if.end5.resubmit_crit_edge [
    i32 0, label %sw.epilog
    i32 -2, label %if.end5.free_crit_edge
    i32 -104, label %if.end5.free_crit_edge90
    i32 -19, label %if.end5.free_crit_edge91
    i32 -108, label %if.end5.free_crit_edge92
  ]

if.end5.free_crit_edge92:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

if.end5.free_crit_edge91:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

if.end5.free_crit_edge90:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

if.end5.free_crit_edge:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

if.end5.resubmit_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %resubmit

sw.epilog:                                        ; preds = %if.end5
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %9 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not = icmp eq i32 %10, 0
  br i1 %cmp.not, label %sw.epilog.resubmit_crit_edge, label %if.then8, !prof !137

sw.epilog.resubmit_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %resubmit

if.then8:                                         ; preds = %sw.epilog
  %call = tail call ptr @skb_put(ptr noundef nonnull %5, i32 noundef %10) #8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %skb_pool.i) #8
  %11 = call ptr @memset(ptr %skb_pool.i, i32 255, i32 40)
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 6
  %12 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len1.i, align 4
  %rx_lock.i = getelementptr inbounds %struct.hif_device_usb, ptr %3, i32 0, i32 19
  tail call void @_raw_spin_lock(ptr noundef %rx_lock.i) #8
  %rx_remain_len2.i = getelementptr inbounds %struct.hif_device_usb, ptr %3, i32 0, i32 15
  %14 = ptrtoint ptr %rx_remain_len2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_remain_len2.i, align 4
  %rx_transfer_len.i = getelementptr inbounds %struct.hif_device_usb, ptr %3, i32 0, i32 17
  %16 = ptrtoint ptr %rx_transfer_len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_transfer_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not.i = icmp eq i32 %15, 0
  br i1 %cmp.not.i, label %if.then8.if.end7.i_crit_edge, label %if.then.i

if.then8.if.end7.i_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.then.i:                                        ; preds = %if.then8
  %remain_skb3.i = getelementptr inbounds %struct.hif_device_usb, ptr %3, i32 0, i32 12
  %18 = ptrtoint ptr %remain_skb3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %remain_skb3.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.then.i.if.end7.i_crit_edge, label %if.then4.i

if.then.i.if.end7.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 19
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  %rx_pad_len.i = getelementptr inbounds %struct.hif_device_usb, ptr %3, i32 0, i32 18
  %22 = ptrtoint ptr %rx_pad_len.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_pad_len.i, align 4
  %sub.i = sub i32 %15, %23
  %add.ptr.i = getelementptr i8, ptr %21, i32 %17
  %data5.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 19
  %24 = ptrtoint ptr %data5.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data5.i, align 4
  %26 = call ptr @memcpy(ptr %add.ptr.i, ptr %25, i32 %sub.i)
  %add.i = add i32 %sub.i, %17
  %27 = ptrtoint ptr %rx_remain_len2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %rx_remain_len2.i, align 4
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %19, i32 noundef %add.i) #8
  %28 = ptrtoint ptr %skb_pool.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %19, ptr %skb_pool.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i, %if.then.i.if.end7.i_crit_edge, %if.then8.if.end7.i_crit_edge
  %pool_index.1.i = phi i16 [ 0, %if.then8.if.end7.i_crit_edge ], [ 1, %if.then4.i ], [ 0, %if.then.i.if.end7.i_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %rx_lock.i) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %13)
  %cmp9251.i = icmp slt i32 %15, %13
  br i1 %cmp9251.i, label %while.body.lr.ph.i, label %if.end7.i.err.i_crit_edge

if.end7.i.err.i_crit_edge:                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err.i

while.body.lr.ph.i:                               ; preds = %if.end7.i
  %data10.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 19
  %htc_handle103.i = getelementptr inbounds %struct.hif_device_usb, ptr %3, i32 0, i32 6
  %rx_pad_len56.i = getelementptr inbounds %struct.hif_device_usb, ptr %3, i32 0, i32 18
  %remain_skb79.i = getelementptr inbounds %struct.hif_device_usb, ptr %3, i32 0, i32 12
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %pool_index.2253.i = phi i16 [ %pool_index.1.i, %while.body.lr.ph.i ], [ %pool_index.4.i, %cleanup.i.while.body.i_crit_edge ]
  %index.2252.i = phi i32 [ %15, %while.body.lr.ph.i ], [ %add45.i, %cleanup.i.while.body.i_crit_edge ]
  %29 = ptrtoint ptr %data10.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data10.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %30, i32 %index.2252.i
  %31 = ptrtoint ptr %add.ptr11.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %add.ptr11.i, align 1
  %33 = tail call i16 @llvm.bswap.i16(i16 %32) #8
  %add.ptr14.i = getelementptr i8, ptr %add.ptr11.i, i32 2
  %34 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %35 = load i16, ptr %add.ptr14.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 78, i16 %35)
  %cmp16.not.i = icmp eq i16 %35, 78
  br i1 %cmp16.not.i, label %if.end20.i, label %while.body.i.cleanup143.sink.split.i_crit_edge

while.body.i.cleanup143.sink.split.i_crit_edge:   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup143.sink.split.i

if.end20.i:                                       ; preds = %while.body.i
  %conv21.i = zext i16 %33 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %33)
  %cmp22.i = icmp ugt i16 %33, -32768
  br i1 %cmp22.i, label %do.end.i, label %if.end32.i

do.end.i:                                         ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %37, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.44, i32 noundef %conv21.i) #11
  br label %cleanup143.sink.split.i

if.end32.i:                                       ; preds = %if.end20.i
  %and.i = and i16 %33, 3
  %sub34.i = sub nuw nsw i16 4, %and.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and.i)
  %cmp37.i = icmp eq i16 %and.i, 0
  %spec.store.select.i = select i1 %cmp37.i, i16 0, i16 %sub34.i
  %add41.i = add i32 %index.2252.i, 4
  %add43.i = add i32 %add41.i, %conv21.i
  %conv44.i = zext i16 %spec.store.select.i to i32
  %add45.i = add i32 %add43.i, %conv44.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add45.i)
  %cmp46.i = icmp sgt i32 %add45.i, 16384
  br i1 %cmp46.i, label %if.then48.i, label %if.else81.i

if.then48.i:                                      ; preds = %if.end32.i
  tail call void @_raw_spin_lock(ptr noundef %rx_lock.i) #8
  %sub50.i = add nsw i32 %add45.i, -16384
  %38 = ptrtoint ptr %rx_remain_len2.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %sub50.i, ptr %rx_remain_len2.i, align 4
  %sub53.i = sub i32 16380, %index.2252.i
  %39 = ptrtoint ptr %rx_transfer_len.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub53.i, ptr %rx_transfer_len.i, align 4
  %40 = ptrtoint ptr %rx_pad_len56.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv44.i, ptr %rx_pad_len56.i, align 4
  %add58.i = add nuw nsw i32 %conv21.i, 32
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add58.i, i32 noundef 2592) #8
  %tobool60.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool60.not.i, label %do.end64.i, label %if.end68.i

do.end64.i:                                       ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %3, align 4
  %dev66.i = getelementptr inbounds %struct.usb_device, ptr %42, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev66.i, ptr noundef nonnull @.str.47) #11
  tail call void @_raw_spin_unlock(ptr noundef %rx_lock.i) #8
  br label %err.i

if.end68.i:                                       ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #10
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %43 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %44, i32 32
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %45 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %46, i32 32
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %47 = ptrtoint ptr %htc_handle103.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %htc_handle103.i, align 4
  %drv_priv70.i = getelementptr inbounds %struct.htc_target, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %drv_priv70.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %drv_priv70.i, align 4
  %skbrx_stats72.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %50, i32 0, i32 61, i32 3
  %51 = ptrtoint ptr %skbrx_stats72.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %skbrx_stats72.i, align 4
  %inc73.i = add i32 %52, 1
  store i32 %inc73.i, ptr %skbrx_stats72.i, align 4
  %53 = load ptr, ptr %data.i.i, align 4
  %54 = ptrtoint ptr %data10.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data10.i, align 4
  %arrayidx77.i = getelementptr i8, ptr %55, i32 %add41.i
  %56 = ptrtoint ptr %rx_transfer_len.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rx_transfer_len.i, align 4
  %58 = call ptr @memcpy(ptr %53, ptr %arrayidx77.i, i32 %57)
  %59 = ptrtoint ptr %remain_skb79.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.i.i, ptr %remain_skb79.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %rx_lock.i) #8
  br label %cleanup.i

if.else81.i:                                      ; preds = %if.end32.i
  %conv82.i = zext i16 %pool_index.2253.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %pool_index.2253.i)
  %cmp83.i = icmp eq i16 %pool_index.2253.i, 10
  br i1 %cmp83.i, label %err.thread.i, label %if.end91.i

err.thread.i:                                     ; preds = %if.else81.i
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %3, align 4
  %dev90.i = getelementptr inbounds %struct.usb_device, ptr %61, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev90.i, ptr noundef nonnull @.str.50) #11
  br label %for.body.lr.ph.i

if.end91.i:                                       ; preds = %if.else81.i
  %add93.i = add nuw nsw i32 %conv21.i, 32
  %call.i229.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add93.i, i32 noundef 2592) #8
  %tobool95.not.i = icmp eq ptr %call.i229.i, null
  br i1 %tobool95.not.i, label %do.end99.i, label %if.end102.i

do.end99.i:                                       ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %3, align 4
  %dev101.i = getelementptr inbounds %struct.usb_device, ptr %63, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev101.i, ptr noundef nonnull @.str.47) #11
  br label %err.i

if.end102.i:                                      ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #10
  %data.i230.i = getelementptr inbounds %struct.sk_buff, ptr %call.i229.i, i32 0, i32 19
  %64 = ptrtoint ptr %data.i230.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data.i230.i, align 4
  %add.ptr.i231.i = getelementptr i8, ptr %65, i32 32
  store ptr %add.ptr.i231.i, ptr %data.i230.i, align 4
  %tail.i232.i = getelementptr inbounds %struct.sk_buff, ptr %call.i229.i, i32 0, i32 16
  %66 = ptrtoint ptr %tail.i232.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tail.i232.i, align 8
  %add.ptr1.i233.i = getelementptr i8, ptr %67, i32 32
  store ptr %add.ptr1.i233.i, ptr %tail.i232.i, align 8
  %68 = ptrtoint ptr %htc_handle103.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %htc_handle103.i, align 4
  %drv_priv104.i = getelementptr inbounds %struct.htc_target, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %drv_priv104.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %drv_priv104.i, align 4
  %skbrx_stats106.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %71, i32 0, i32 61, i32 3
  %72 = ptrtoint ptr %skbrx_stats106.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %skbrx_stats106.i, align 4
  %inc108.i = add i32 %73, 1
  store i32 %inc108.i, ptr %skbrx_stats106.i, align 4
  %74 = load ptr, ptr %data.i230.i, align 4
  %75 = ptrtoint ptr %data10.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %data10.i, align 4
  %arrayidx112.i = getelementptr i8, ptr %76, i32 %add41.i
  %77 = call ptr @memcpy(ptr %74, ptr %arrayidx112.i, i32 %conv21.i)
  %call115.i = tail call ptr @skb_put(ptr noundef nonnull %call.i229.i, i32 noundef %conv21.i) #8
  %inc116.i = add i16 %pool_index.2253.i, 1
  %arrayidx118.i = getelementptr [10 x ptr], ptr %skb_pool.i, i32 0, i32 %conv82.i
  %78 = ptrtoint ptr %arrayidx118.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call.i229.i, ptr %arrayidx118.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end102.i, %if.end68.i
  %pool_index.4.i = phi i16 [ %pool_index.2253.i, %if.end68.i ], [ %inc116.i, %if.end102.i ]
  %cmp9.i = icmp slt i32 %add45.i, %13
  br i1 %cmp9.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.err.i_crit_edge

cleanup.i.err.i_crit_edge:                        ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err.i

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

err.i:                                            ; preds = %cleanup.i.err.i_crit_edge, %do.end99.i, %do.end64.i, %if.end7.i.err.i_crit_edge
  %pool_index.2247.i = phi i16 [ %pool_index.2253.i, %do.end99.i ], [ %pool_index.2253.i, %do.end64.i ], [ %pool_index.1.i, %if.end7.i.err.i_crit_edge ], [ %pool_index.4.i, %cleanup.i.err.i_crit_edge ]
  %conv123.i = zext i16 %pool_index.2247.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %pool_index.2247.i)
  %cmp124254.not.i = icmp eq i16 %pool_index.2247.i, 0
  br i1 %cmp124254.not.i, label %err.i.ath9k_hif_usb_rx_stream.exit_crit_edge, label %err.i.for.body.lr.ph.i_crit_edge

err.i.for.body.lr.ph.i_crit_edge:                 ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.lr.ph.i

err.i.ath9k_hif_usb_rx_stream.exit_crit_edge:     ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath9k_hif_usb_rx_stream.exit

for.body.lr.ph.i:                                 ; preds = %err.i.for.body.lr.ph.i_crit_edge, %err.thread.i
  %conv123268.i = phi i32 [ 10, %err.thread.i ], [ %conv123.i, %err.i.for.body.lr.ph.i_crit_edge ]
  %htc_handle128.i = getelementptr inbounds %struct.hif_device_usb, ptr %3, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0255.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc142.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx126.i = getelementptr [10 x ptr], ptr %skb_pool.i, i32 0, i32 %i.0255.i
  %79 = ptrtoint ptr %arrayidx126.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx126.i, align 4
  %len127.i = getelementptr inbounds %struct.sk_buff, ptr %80, i32 0, i32 6
  %81 = ptrtoint ptr %len127.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %len127.i, align 4
  %83 = ptrtoint ptr %htc_handle128.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %htc_handle128.i, align 4
  %drv_priv129.i = getelementptr inbounds %struct.htc_target, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %drv_priv129.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %drv_priv129.i, align 4
  %skb_completed_bytes.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %86, i32 0, i32 61, i32 3, i32 2
  %87 = ptrtoint ptr %skb_completed_bytes.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %skb_completed_bytes.i, align 4
  %add132.i = add i32 %88, %82
  store i32 %add132.i, ptr %skb_completed_bytes.i, align 4
  %89 = load ptr, ptr %htc_handle128.i, align 4
  %90 = load i32, ptr %len127.i, align 4
  tail call void @ath9k_htc_rx_msg(ptr noundef %89, ptr noundef %80, i32 noundef %90, i8 noundef zeroext 2) #8
  %91 = ptrtoint ptr %htc_handle128.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %htc_handle128.i, align 4
  %drv_priv138.i = getelementptr inbounds %struct.htc_target, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %drv_priv138.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %drv_priv138.i, align 4
  %skb_completed.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %94, i32 0, i32 61, i32 3, i32 1
  %95 = ptrtoint ptr %skb_completed.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %skb_completed.i, align 4
  %inc141.i = add i32 %96, 1
  store i32 %inc141.i, ptr %skb_completed.i, align 4
  %inc142.i = add nuw nsw i32 %i.0255.i, 1
  %exitcond.not.i = icmp eq i32 %inc142.i, %conv123268.i
  br i1 %exitcond.not.i, label %for.body.i.ath9k_hif_usb_rx_stream.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.ath9k_hif_usb_rx_stream.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ath9k_hif_usb_rx_stream.exit

cleanup143.sink.split.i:                          ; preds = %do.end.i, %while.body.i.cleanup143.sink.split.i_crit_edge
  %97 = ptrtoint ptr %htc_handle103.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %htc_handle103.i, align 4
  %drv_priv.i = getelementptr inbounds %struct.htc_target, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %drv_priv.i, align 4
  %skb_dropped.i = getelementptr inbounds %struct.ath9k_htc_priv, ptr %100, i32 0, i32 61, i32 3, i32 3
  %101 = ptrtoint ptr %skb_dropped.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %skb_dropped.i, align 4
  %inc31.i = add i32 %102, 1
  store i32 %inc31.i, ptr %skb_dropped.i, align 4
  br label %ath9k_hif_usb_rx_stream.exit

ath9k_hif_usb_rx_stream.exit:                     ; preds = %cleanup143.sink.split.i, %for.body.i.ath9k_hif_usb_rx_stream.exit_crit_edge, %err.i.ath9k_hif_usb_rx_stream.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %skb_pool.i) #8
  br label %resubmit

resubmit:                                         ; preds = %ath9k_hif_usb_rx_stream.exit, %sw.epilog.resubmit_crit_edge, %if.end5.resubmit_crit_edge
  %data.i35 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 19
  %103 = ptrtoint ptr %data.i35 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %data.i35, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 16
  %105 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %104, ptr %tail.i, align 8
  tail call void @skb_trim(ptr noundef nonnull %5, i32 noundef 0) #8
  %rx_submitted = getelementptr inbounds %struct.hif_device_usb, ptr %3, i32 0, i32 9
  tail call void @usb_anchor_urb(ptr noundef %urb, ptr noundef %rx_submitted) #8
  %call11 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %resubmit.cleanup_crit_edge, label %if.then13

resubmit.cleanup_crit_edge:                       ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13:                                        ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_unanchor_urb(ptr noundef %urb) #8
  br label %free

free:                                             ; preds = %if.then13, %if.end5.free_crit_edge, %if.end5.free_crit_edge90, %if.end5.free_crit_edge91, %if.end5.free_crit_edge92, %if.end.free_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %5, i32 noundef 0) #8
  tail call void @kfree(ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %free, %resubmit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_htc_rx_msg(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ath9k_hif_usb_reg_in_cb(ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %hif_dev1 = getelementptr inbounds %struct.rx_buf, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hif_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hif_dev1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.free_crit_edge, label %if.end5

if.end.free_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

if.end5:                                          ; preds = %if.end
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %7, label %sw.default [
    i32 0, label %sw.epilog
    i32 -2, label %if.end5.free_crit_edge
    i32 -104, label %if.end5.free_crit_edge58
    i32 -19, label %if.end5.free_crit_edge59
    i32 -108, label %if.end5.free_crit_edge60
  ]

if.end5.free_crit_edge60:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

if.end5.free_crit_edge59:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

if.end5.free_crit_edge58:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

if.end5.free_crit_edge:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

sw.default:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 19
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 16
  %11 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %tail.i, align 8
  tail call void @skb_trim(ptr noundef nonnull %5, i32 noundef 0) #8
  br label %resubmit

sw.epilog:                                        ; preds = %if.end5
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %12 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not = icmp eq i32 %13, 0
  br i1 %cmp.not, label %sw.epilog.resubmit_crit_edge, label %if.then8, !prof !137

sw.epilog.resubmit_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %resubmit

if.then8:                                         ; preds = %sw.epilog
  %call = tail call ptr @skb_put(ptr noundef nonnull %5, i32 noundef %13) #8
  %htc_handle = getelementptr inbounds %struct.hif_device_usb, ptr %3, i32 0, i32 6
  %14 = ptrtoint ptr %htc_handle to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %htc_handle, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 6
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  tail call void @ath9k_htc_rx_msg(ptr noundef %15, ptr noundef nonnull %5, i32 noundef %17, i8 noundef zeroext 3) #8
  %call.i = tail call ptr @__alloc_skb(i32 noundef 64, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #8
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %do.end, label %if.end14

do.end:                                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %19, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.54) #11
  br label %cleanup.sink.split

if.end14:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %1, align 4
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %shl.i = shl i32 %24, 8
  %or19 = or i32 %shl.i, 1073840256
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 8
  %27 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %22, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %28 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or19, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %29 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %30 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 64, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 28
  %31 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @ath9k_hif_usb_reg_in_cb, ptr %complete.i, align 4
  %32 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %1, ptr %context, align 4
  %33 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 25
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %33, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 23
  %35 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %start_frame.i, align 4
  br label %resubmit

resubmit:                                         ; preds = %if.end14, %sw.epilog.resubmit_crit_edge, %sw.default
  %reg_in_submitted = getelementptr inbounds %struct.hif_device_usb, ptr %3, i32 0, i32 10
  tail call void @usb_anchor_urb(ptr noundef %urb, ptr noundef %reg_in_submitted) #8
  %call21 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %resubmit.cleanup_crit_edge, label %if.then23

resubmit.cleanup_crit_edge:                       ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then23:                                        ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_unanchor_urb(ptr noundef %urb) #8
  br label %free

free:                                             ; preds = %if.then23, %if.end5.free_crit_edge, %if.end5.free_crit_edge58, %if.end5.free_crit_edge59, %if.end5.free_crit_edge60, %if.end.free_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %5, i32 noundef 0) #8
  tail call void @kfree(ptr noundef %1) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %free, %do.end
  %36 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %context, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %resubmit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_release_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_htc_hw_deinit(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_destroy_wmi(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ath9k_hif_usb_reboot(ptr noundef %udev) unnamed_addr #0 align 64 {
entry:
  %reboot_cmd = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reboot_cmd) #8
  %0 = ptrtoint ptr %reboot_cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reboot_cmd, align 4
  %call = call ptr @kmemdup(ptr noundef nonnull %reboot_cmd, i32 noundef 4, i32 noundef 3264) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %udev, align 8
  %shl.i = shl i32 %2, 8
  %or = or i32 %shl.i, 1073872896
  %call2 = call i32 @usb_interrupt_msg(ptr noundef %udev, i32 noundef %or, ptr noundef nonnull %call, i32 noundef 4, ptr noundef null, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %do.end

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.58) #11
  br label %if.end5

if.end5:                                          ; preds = %do.end, %if.end.if.end5_crit_edge
  call void @kfree(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reboot_cmd) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_interrupt_msg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ath9k_htc_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ath9k_htc_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !21, !23, !24, !26, !28, !30, !32, !34, !36, !37, !38, !39, !41, !43, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !58, !60, !62, !64, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !111, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !124}
!llvm.module.flags = !{!126, !127, !128, !129, !130, !131, !132, !133}
!llvm.ident = !{!134}

!0 = !{ptr @__UNIQUE_ID_firmware354, !1, !"__UNIQUE_ID_firmware354", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ath/ath9k/hif_usb.c", i32 20, i32 1}
!2 = !{ptr @__UNIQUE_ID_firmware355, !3, !"__UNIQUE_ID_firmware355", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/ath/ath9k/hif_usb.c", i32 21, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/ath/ath9k/hif_usb.c", i32 1502, i32 9}
!6 = !{ptr @ath9k_hif_usb_driver, !7, !"ath9k_hif_usb_driver", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ath/ath9k/hif_usb.c", i32 1486, i32 26}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/ath/ath9k/hif_usb.c", i32 1297, i32 3}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @send_eject_command._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @send_eject_command._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/ath/ath9k/hif_usb.c", i32 1316, i32 2}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @send_eject_command._entry.6, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @send_eject_command._entry_ptr.9, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @init_completion.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../include/linux/completion.h", i32 87, i32 2}
!23 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ath/ath9k/hif_usb.c", i32 1156, i32 19}
!26 = distinct !{null, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/ath/ath9k/hif_usb.c", i32 1156, i32 25}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/ath/ath9k/hif_usb.c", i32 1159, i32 19}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/ath/ath9k/hif_usb.c", i32 1171, i32 15}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/ath/ath9k/hif_usb.c", i32 1173, i32 15}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/ath/ath9k/hif_usb.c", i32 1182, i32 3}
!36 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @ath9k_hif_request_firmware._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @ath9k_hif_request_firmware._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/ath/ath9k/hif_usb.c", i32 1187, i32 11}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/ath/ath9k/hif_usb.c", i32 1189, i32 11}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/ath/ath9k/hif_usb.c", i32 1196, i32 5}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/wireless/ath/ath9k/hif_usb.c", i32 1204, i32 3}
!47 = !{ptr @ath9k_hif_request_firmware._entry.21, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @ath9k_hif_request_firmware._entry_ptr.23, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/ath/ath9k/hif_usb.c", i32 1210, i32 2}
!51 = !{ptr @ath9k_hif_request_firmware._entry.24, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @ath9k_hif_request_firmware._entry_ptr.26, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/ath/ath9k/hif_usb.c", i32 1226, i32 3}
!55 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @ath9k_hif_usb_firmware_cb._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @ath9k_hif_usb_firmware_cb._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wireless/ath/ath9k/hif_usb.c", i32 527, i32 10}
!60 = !{ptr @hif_usb, !61, !"hif_usb", i1 false, i1 false}
!61 = !{!"../drivers/net/wireless/ath/ath9k/hif_usb.c", i32 525, i32 29}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/ath/ath9k/hif_usb.c", i32 482, i32 3}
!64 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @hif_usb_send._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @hif_usb_send._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/wireless/ath/ath9k/hif_usb.c", i32 1102, i32 3}
!69 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @ath9k_hif_usb_dev_init._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @ath9k_hif_usb_dev_init._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/wireless/ath/ath9k/hif_usb.c", i32 1111, i32 3}
!74 = !{ptr @ath9k_hif_usb_dev_init._entry.34, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @ath9k_hif_usb_dev_init._entry_ptr.36, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/wireless/ath/ath9k/hif_usb.c", i32 1090, i32 2}
!78 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @ath9k_hif_usb_download_fw._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @ath9k_hif_usb_download_fw._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @init_usb_anchor.__key, !82, !"__key", i1 false, i1 false}
!82 = !{!"../include/linux/usb.h", i32 1367, i32 2}
!83 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @init_usb_anchor.__key.40, !85, !"__key", i1 false, i1 false}
!85 = !{!"../include/linux/usb.h", i32 1368, i32 2}
!86 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @ath9k_hif_usb_alloc_tx_urbs.__key, !88, !"__key", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/ath/ath9k/hif_usb.c", i32 823, i32 2}
!89 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @ath9k_hif_usb_alloc_rx_urbs.__key, !91, !"__key", i1 false, i1 false}
!91 = !{!"../drivers/net/wireless/ath/ath9k/hif_usb.c", i32 871, i32 2}
!92 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/wireless/ath/ath9k/hif_usb.c", i32 594, i32 4}
!95 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @ath9k_hif_usb_rx_stream._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @ath9k_hif_usb_rx_stream._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/wireless/ath/ath9k/hif_usb.c", i32 616, i32 5}
!100 = !{ptr @ath9k_hif_usb_rx_stream._entry.46, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @ath9k_hif_usb_rx_stream._entry_ptr.48, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/wireless/ath/ath9k/hif_usb.c", i32 632, i32 5}
!104 = !{ptr @ath9k_hif_usb_rx_stream._entry.49, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @ath9k_hif_usb_rx_stream._entry_ptr.51, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @ath9k_hif_usb_rx_stream._entry.52, !107, !"_entry", i1 false, i1 false}
!107 = !{!"../drivers/net/wireless/ath/ath9k/hif_usb.c", i32 638, i32 5}
!108 = !{ptr @ath9k_hif_usb_rx_stream._entry_ptr.53, !107, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.54, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/wireless/ath/ath9k/hif_usb.c", i32 746, i32 4}
!111 = !{ptr @.str.55, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @ath9k_hif_usb_reg_in_cb._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @ath9k_hif_usb_reg_in_cb._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/wireless/ath/ath9k/hif_usb.c", i32 1416, i32 2}
!116 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @ath9k_hif_usb_disconnect._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @ath9k_hif_usb_disconnect._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/wireless/ath/ath9k/hif_usb.c", i32 1385, i32 3}
!121 = !{ptr @.str.59, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @ath9k_hif_usb_reboot._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @ath9k_hif_usb_reboot._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @ath9k_hif_usb_ids, !125, !"ath9k_hif_usb_ids", i1 false, i1 false}
!125 = !{!"../drivers/net/wireless/ath/ath9k/hif_usb.c", i32 23, i32 35}
!126 = !{i32 1, !"wchar_size", i32 2}
!127 = !{i32 1, !"min_enum_size", i32 4}
!128 = !{i32 8, !"branch-target-enforcement", i32 0}
!129 = !{i32 8, !"sign-return-address", i32 0}
!130 = !{i32 8, !"sign-return-address-all", i32 0}
!131 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!132 = !{i32 7, !"uwtable", i32 1}
!133 = !{i32 7, !"frame-pointer", i32 2}
!134 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!135 = !{!"auto-init"}
!136 = !{i64 2157940941, i64 2157941446, i64 2157940978, i64 2157941034, i64 2157941068, i64 2157941092, i64 2157941133, i64 2157941154, i64 2157941182, i64 2157941216}
!137 = !{!"branch_weights", i32 1, i32 2000}
