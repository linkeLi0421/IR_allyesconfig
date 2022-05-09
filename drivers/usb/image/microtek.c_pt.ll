; ModuleID = '/llk/IR_all_yes/drivers/usb/image/microtek.c_pt.bc'
source_filename = "../drivers/usb/image/microtek.c"
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
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.mts_desc = type { ptr, ptr, ptr, ptr, i8, i8, i8, ptr, ptr, %struct.mts_transfer_context }
%struct.mts_transfer_context = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }

@__initcall__kmod_microtek__290_802_mts_usb_driver_init6 = internal global ptr @mts_usb_driver_init, section ".initcall6.init", align 4
@mts_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @mts_usb_probe, ptr @mts_usb_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mts_usb_ids, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_mts_usb_driver_exit = internal global ptr @mts_usb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [105 x i8] c"microtek.author=John Fremlin <vii@penguinpowered.com>, Oliver Neukum <Oliver.Neukum@lrz.uni-muenchen.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [62 x i8] c"microtek.description=Microtek Scanmaker X6 USB scanner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [41 x i8] c"microtek.file=drivers/usb/image/microtek\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [21 x i8] c"microtek.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"microtek\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"microtekX6\00", [21 x i8] zeroinitializer }, align 32
@mts_usb_ids = internal constant { [10 x %struct.usb_device_id], [48 x i8] } { [10 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1230, i16 768, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1498, i16 148, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1498, i16 153, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1498, i16 154, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1498, i16 160, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1498, i16 163, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1498, i16 -32605, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1498, i16 -32596, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1498, i16 182, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@mts_usb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 688, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\014microtek usb (rev 0.4.3): expecting %d got %d endpoints! Bailing out.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mts_usb_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/usb/image/microtek.c\00", [35 x i8] zeroinitializer }, align 32
@mts_usb_probe._entry_ptr = internal global ptr @mts_usb_probe._entry, section ".printk_index", align 4
@mts_usb_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 697, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\014microtek usb (rev 0.4.3): can only deal with bulk endpoints; endpoint %d is not bulk.\0A\00", [39 x i8] zeroinitializer }, align 32
@mts_usb_probe._entry_ptr.7 = internal global ptr @mts_usb_probe._entry.5, section ".printk_index", align 4
@mts_usb_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 706, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\014microtek usb (rev 0.4.3): can only deal with one output endpoints. Bailing out.\00", [46 x i8] zeroinitializer }, align 32
@mts_usb_probe._entry_ptr.10 = internal global ptr @mts_usb_probe._entry.8, section ".printk_index", align 4
@mts_usb_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 718, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\014microtek usb (rev 0.4.3): couldn't find two input bulk endpoints. Bailing out.\0A\00", [46 x i8] zeroinitializer }, align 32
@mts_usb_probe._entry_ptr.13 = internal global ptr @mts_usb_probe._entry.11, section ".printk_index", align 4
@mts_usb_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 723, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\014microtek usb (rev 0.4.3): couldn't find an output bulk endpoint. Bailing out.\0A\00", [47 x i8] zeroinitializer }, align 32
@mts_usb_probe._entry_ptr.16 = internal global ptr @mts_usb_probe._entry.14, section ".printk_index", align 4
@mts_usb_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 750, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\014microtek usb (rev 0.4.3): will this work? Command EP is not usually %d\0A\00", [54 x i8] zeroinitializer }, align 32
@mts_usb_probe._entry_ptr.19 = internal global ptr @mts_usb_probe._entry.17, section ".printk_index", align 4
@mts_usb_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 754, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\014microtek usb (rev 0.4.3): will this work? Response EP is not usually %d\0A\00", [53 x i8] zeroinitializer }, align 32
@mts_usb_probe._entry_ptr.22 = internal global ptr @mts_usb_probe._entry.20, section ".printk_index", align 4
@mts_usb_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 758, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\014microtek usb (rev 0.4.3): will this work? Image data EP is not usually %d\0A\00", [51 x i8] zeroinitializer }, align 32
@mts_usb_probe._entry_ptr.25 = internal global ptr @mts_usb_probe._entry.23, section ".printk_index", align 4
@mts_scsi_host_template = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @mts_scsi_queuecommand, ptr null, ptr null, ptr @.str.1, ptr null, ptr null, ptr null, ptr null, ptr @mts_scsi_abort, ptr null, ptr null, ptr null, ptr @mts_scsi_host_reset, ptr @mts_slave_alloc, ptr @mts_slave_configure, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 256, i32 0, i32 0, i32 0, i16 0, i8 0, i32 0, i8 16, i32 0, ptr null, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mts_scsi_queuecommand_lck._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013microtek usb (rev 0.4.3): error %d submitting URB\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mts_scsi_queuecommand_lck\00", [38 x i8] zeroinitializer }, align 32
@mts_scsi_queuecommand_lck._entry_ptr = internal global ptr @mts_scsi_queuecommand_lck._entry, section ".printk_index", align 4
@mts_int_submit_urb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013microtek usb (rev 0.4.3): could not submit URB! Error was %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mts_int_submit_urb\00", [45 x i8] zeroinitializer }, align 32
@mts_int_submit_urb._entry_ptr = internal global ptr @mts_int_submit_urb._entry, section ".printk_index", align 4
@mts_read_image_sig = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"(\00\00\00", [28 x i8] zeroinitializer }, align 32
@mts_direction = internal constant { <{ [24 x i8], [8 x i8] }>, [32 x i8] } { <{ [24 x i8], [8 x i8] }> <{ [24 x i8] c"(\81\14\14 \01\90w\0C \00\04\00\00\00\00\00\00\00\00\00\01\00\01", [8 x i8] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@___asan_gen_.31 = private unnamed_addr constant [15 x i8] c"mts_usb_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 156, i32 26 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 802, i32 1 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 157, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant [12 x i8] c"mts_usb_ids\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 638, i32 35 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 687, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 696, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 706, i32 6 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 718, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 723, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 749, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 753, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 757, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [23 x i8] c"mts_scsi_host_template\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 619, i32 34 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 606, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 391, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [19 x i8] c"mts_read_image_sig\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 511, i32 17 }
@___asan_gen_.121 = private unnamed_addr constant [14 x i8] c"mts_direction\00", align 1
@___asan_gen_.122 = private constant [32 x i8] c"../drivers/usb/image/microtek.c\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 513, i32 28 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_mts_usb_driver_exit, ptr @__initcall__kmod_microtek__290_802_mts_usb_driver_init6, ptr @mts_int_submit_urb._entry, ptr @mts_int_submit_urb._entry_ptr, ptr @mts_scsi_queuecommand_lck._entry, ptr @mts_scsi_queuecommand_lck._entry_ptr, ptr @mts_usb_driver_exit, ptr @mts_usb_probe._entry, ptr @mts_usb_probe._entry.11, ptr @mts_usb_probe._entry.14, ptr @mts_usb_probe._entry.17, ptr @mts_usb_probe._entry.20, ptr @mts_usb_probe._entry.23, ptr @mts_usb_probe._entry.5, ptr @mts_usb_probe._entry.8, ptr @mts_usb_probe._entry_ptr, ptr @mts_usb_probe._entry_ptr.10, ptr @mts_usb_probe._entry_ptr.13, ptr @mts_usb_probe._entry_ptr.16, ptr @mts_usb_probe._entry_ptr.19, ptr @mts_usb_probe._entry_ptr.22, ptr @mts_usb_probe._entry_ptr.25, ptr @mts_usb_probe._entry_ptr.7, ptr @mts_usb_driver, ptr @.str, ptr @.str.1, ptr @mts_usb_ids, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @mts_scsi_host_template, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @mts_read_image_sig, ptr @mts_direction], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mts_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mts_usb_ids to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mts_usb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mts_usb_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mts_usb_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mts_usb_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mts_usb_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mts_usb_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mts_usb_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mts_usb_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mts_scsi_host_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mts_scsi_queuecommand_lck._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mts_int_submit_urb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mts_read_image_sig to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mts_direction to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mts_usb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @mts_usb_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mts_usb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_deregister(ptr noundef nonnull @mts_usb_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mts_usb_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %ep_in_set = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ep_in_set) #8
  %0 = ptrtoint ptr %ep_in_set to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ep_in_set, align 4, !annotation !76
  %1 = getelementptr inbounds [3 x i32], ptr %ep_in_set, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !76
  %3 = getelementptr inbounds [3 x i32], ptr %ep_in_set, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !76
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %6, i32 -128
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %7 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %10)
  %cmp.not = icmp eq i8 %10, 3
  br i1 %cmp.not, label %for.cond.preheader, label %do.end13

for.cond.preheader:                               ; preds = %entry
  %11 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp21221.not = icmp eq i8 %12, 0
  br i1 %cmp21221.not, label %for.cond.preheader.do.end74_crit_edge, label %for.body.lr.ph

for.cond.preheader.do.end74_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end74

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %8, i32 0, i32 3
  br label %for.body

do.end13:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %10 to i32
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 3, i32 noundef %conv) #11
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0224 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %ep_out.0223 = phi i32 [ -1, %for.body.lr.ph ], [ %ep_out.1, %for.inc.for.body_crit_edge ]
  %ep_in_current.0222 = phi ptr [ %ep_in_set, %for.body.lr.ph ], [ %ep_in_current.1, %for.inc.for.body_crit_edge ]
  %13 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %endpoint, align 4
  %arrayidx = getelementptr %struct.usb_host_endpoint, ptr %14, i32 %i.0224
  %bmAttributes = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 3
  %15 = ptrtoint ptr %bmAttributes to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bmAttributes, align 1
  %17 = and i8 %16, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %17)
  %cmp25.not = icmp eq i8 %17, 2
  %bEndpointAddress40 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx, i32 0, i32 2
  %18 = ptrtoint ptr %bEndpointAddress40 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bEndpointAddress40, align 2
  %conv41 = zext i8 %19 to i32
  br i1 %cmp25.not, label %if.else, label %do.end30

do.end30:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %conv41) #11
  br label %for.inc

if.else:                                          ; preds = %for.body
  %and42 = and i32 %conv41, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool.not = icmp eq i32 %and42, 0
  br i1 %tobool.not, label %if.else50, label %if.then43

if.then43:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %and49 = and i32 %conv41, 15
  %incdec.ptr = getelementptr i32, ptr %ep_in_current.0222, i32 1
  %20 = ptrtoint ptr %ep_in_current.0222 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and49, ptr %ep_in_current.0222, align 4
  br label %for.inc

if.else50:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ep_out.0223)
  %cmp51.not = icmp eq i32 %ep_out.0223, -1
  br i1 %cmp51.not, label %if.end59, label %do.end56

do.end56:                                         ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #10
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #11
  br label %cleanup

if.end59:                                         ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #10
  %and65 = and i32 %conv41, 15
  br label %for.inc

for.inc:                                          ; preds = %if.end59, %if.then43, %do.end30
  %ep_in_current.1 = phi ptr [ %ep_in_current.0222, %do.end30 ], [ %incdec.ptr, %if.then43 ], [ %ep_in_current.0222, %if.end59 ]
  %ep_out.1 = phi i32 [ %ep_out.0223, %do.end30 ], [ %ep_out.0223, %if.then43 ], [ %and65, %if.end59 ]
  %inc = add nuw nsw i32 %i.0224, 1
  %21 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bNumEndpoints, align 4
  %conv20 = zext i8 %22 to i32
  %cmp21 = icmp ult i32 %inc, %conv20
  br i1 %cmp21, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  %cmp69.not = icmp eq ptr %ep_in_current.1, %3
  br i1 %cmp69.not, label %if.end77, label %for.end.do.end74_crit_edge

for.end.do.end74_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end74

do.end74:                                         ; preds = %for.end.do.end74_crit_edge, %for.cond.preheader.do.end74_crit_edge
  %call76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #11
  br label %cleanup

if.end77:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ep_out.1)
  %cmp78 = icmp eq i32 %ep_out.1, -1
  br i1 %cmp78, label %do.end83, label %if.end86

do.end83:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  %call85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #11
  br label %cleanup

if.end86:                                         ; preds = %if.end77
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 60) #12
  %tobool88.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool88.not, label %if.end86.cleanup_crit_edge, label %if.end90

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end90:                                         ; preds = %if.end86
  %call91 = call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #8
  %urb = getelementptr inbounds %struct.mts_desc, ptr %call7.i.i, i32 0, i32 8
  %24 = ptrtoint ptr %urb to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call91, ptr %urb, align 8
  %tobool93.not = icmp eq ptr %call91, null
  br i1 %tobool93.not, label %if.end90.out_kfree_crit_edge, label %if.end95

if.end90.out_kfree_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_kfree

if.end95:                                         ; preds = %if.end90
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3264, i32 noundef 1) #12
  %scsi_status = getelementptr inbounds %struct.mts_desc, ptr %call7.i.i, i32 0, i32 9, i32 7
  %26 = ptrtoint ptr %scsi_status to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i, ptr %scsi_status, align 8
  %tobool99.not = icmp eq ptr %call7.i, null
  br i1 %tobool99.not, label %if.end95.out_free_urb_crit_edge, label %if.end101

if.end95.out_free_urb_crit_edge:                  ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_urb

if.end101:                                        ; preds = %if.end95
  %usb_dev = getelementptr inbounds %struct.mts_desc, ptr %call7.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %usb_dev to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr.i, ptr %usb_dev, align 8
  %usb_intf = getelementptr inbounds %struct.mts_desc, ptr %call7.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %usb_intf to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %intf, ptr %usb_intf, align 4
  %conv102 = trunc i32 %ep_out.1 to i8
  %ep_out103 = getelementptr inbounds %struct.mts_desc, ptr %call7.i.i, i32 0, i32 4
  %29 = ptrtoint ptr %ep_out103 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv102, ptr %ep_out103, align 8
  %30 = ptrtoint ptr %ep_in_set to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ep_in_set, align 4
  %conv105 = trunc i32 %31 to i8
  %ep_response = getelementptr inbounds %struct.mts_desc, ptr %call7.i.i, i32 0, i32 5
  %32 = ptrtoint ptr %ep_response to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv105, ptr %ep_response, align 1
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %1, align 4
  %conv107 = trunc i32 %34 to i8
  %ep_image = getelementptr inbounds %struct.mts_desc, ptr %call7.i.i, i32 0, i32 6
  %35 = ptrtoint ptr %ep_image to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv107, ptr %ep_image, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv102)
  %cmp110.not = icmp eq i8 %conv102, 1
  br i1 %cmp110.not, label %if.end101.if.end120_crit_edge, label %do.end115

if.end101.if.end120_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end120

do.end115:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  %conv109 = and i32 %ep_out.1, 255
  %call119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %conv109) #11
  br label %if.end120

if.end120:                                        ; preds = %do.end115, %if.end101.if.end120_crit_edge
  %36 = ptrtoint ptr %ep_response to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ep_response, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %37)
  %cmp123.not = icmp eq i8 %37, 2
  br i1 %cmp123.not, label %if.end120.if.end133_crit_edge, label %do.end128

if.end120.if.end133_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end133

do.end128:                                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  %conv122 = zext i8 %37 to i32
  %call132 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %conv122) #11
  br label %if.end133

if.end133:                                        ; preds = %do.end128, %if.end120.if.end133_crit_edge
  %38 = ptrtoint ptr %ep_image to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ep_image, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %39)
  %cmp136.not = icmp eq i8 %39, 3
  br i1 %cmp136.not, label %if.end133.if.end146_crit_edge, label %do.end141

if.end133.if.end146_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end146

do.end141:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #10
  %conv135 = zext i8 %39 to i32
  %call145 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %conv135) #11
  br label %if.end146

if.end146:                                        ; preds = %do.end141, %if.end133.if.end146_crit_edge
  %call147 = call ptr @scsi_host_alloc(ptr noundef nonnull @mts_scsi_host_template, i32 noundef 4) #8
  %host = getelementptr inbounds %struct.mts_desc, ptr %call7.i.i, i32 0, i32 7
  %40 = ptrtoint ptr %host to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call147, ptr %host, align 4
  %tobool149.not = icmp eq ptr %call147, null
  br i1 %tobool149.not, label %if.end146.out_kfree2_crit_edge, label %if.end151

if.end146.out_kfree2_crit_edge:                   ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_kfree2

if.end151:                                        ; preds = %if.end146
  %41 = ptrtoint ptr %call7.i.i to i32
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %call147, i32 0, i32 53
  %42 = ptrtoint ptr %hostdata to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %hostdata, align 8
  %43 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %host, align 4
  %call.i = call i32 @scsi_add_host_with_dma(ptr noundef %44, ptr noundef %6, ptr noundef %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool157.not = icmp eq i32 %call.i, 0
  %45 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %host, align 4
  br i1 %tobool157.not, label %if.end159, label %if.then158

if.then158:                                       ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #10
  call void @scsi_host_put(ptr noundef %46) #8
  br label %out_kfree2

if.end159:                                        ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #10
  call void @scsi_scan_host(ptr noundef %46) #8
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %47 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

out_kfree2:                                       ; preds = %if.then158, %if.end146.out_kfree2_crit_edge
  %err_retval.0 = phi i32 [ -5, %if.then158 ], [ -12, %if.end146.out_kfree2_crit_edge ]
  %48 = ptrtoint ptr %scsi_status to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %scsi_status, align 8
  call void @kfree(ptr noundef %49) #8
  br label %out_free_urb

out_free_urb:                                     ; preds = %out_kfree2, %if.end95.out_free_urb_crit_edge
  %err_retval.1 = phi i32 [ %err_retval.0, %out_kfree2 ], [ -12, %if.end95.out_free_urb_crit_edge ]
  %50 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %urb, align 8
  call void @usb_free_urb(ptr noundef %51) #8
  br label %out_kfree

out_kfree:                                        ; preds = %out_free_urb, %if.end90.out_kfree_crit_edge
  %err_retval.2 = phi i32 [ %err_retval.1, %out_free_urb ], [ -12, %if.end90.out_kfree_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %out_kfree, %if.end159, %if.end86.cleanup_crit_edge, %do.end83, %do.end74, %do.end56, %do.end13
  %retval.0 = phi i32 [ -19, %do.end13 ], [ -19, %do.end56 ], [ -19, %do.end74 ], [ -19, %do.end83 ], [ 0, %if.end159 ], [ %err_retval.2, %out_kfree ], [ -12, %if.end86.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ep_in_set) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mts_usb_disconnect(ptr nocapture noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  store ptr null, ptr %driver_data.i.i, align 4
  %urb = getelementptr inbounds %struct.mts_desc, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %urb, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #8
  %host = getelementptr inbounds %struct.mts_desc, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host, align 4
  tail call void @scsi_remove_host(ptr noundef %5) #8
  %6 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host, align 4
  tail call void @scsi_host_put(ptr noundef %7) #8
  %8 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %urb, align 4
  tail call void @usb_free_urb(ptr noundef %9) #8
  %scsi_status = getelementptr inbounds %struct.mts_desc, ptr %1, i32 0, i32 9, i32 7
  %10 = ptrtoint ptr %scsi_status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %scsi_status, align 4
  tail call void @kfree(ptr noundef %11) #8
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_scan_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mts_scsi_queuecommand(ptr nocapture noundef readonly %shost, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host_lock = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 4
  %0 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_lock, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #8
  %device.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %hostdata.i = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 53
  %6 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hostdata.i, align 8
  %8 = inttoptr i32 %7 to ptr
  %lun.i = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 18
  %9 = ptrtoint ptr %lun.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %lun.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool.not.i = icmp eq i64 %10, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.out.sink.split.i_crit_edge

entry.out.sink.split.i_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.sink.split.i

lor.lhs.false.i:                                  ; preds = %entry
  %id.i = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 16
  %11 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool3.not.i = icmp eq i32 %12, 0
  br i1 %tobool3.not.i, label %lor.lhs.false4.i, label %lor.lhs.false.i.out.sink.split.i_crit_edge

lor.lhs.false.i.out.sink.split.i_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.sink.split.i

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %channel.i = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 17
  %13 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %channel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool6.not.i = icmp eq i32 %14, 0
  br i1 %tobool6.not.i, label %if.end16.i, label %lor.lhs.false4.i.out.sink.split.i_crit_edge

lor.lhs.false4.i.out.sink.split.i_crit_edge:      ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.sink.split.i

if.end16.i:                                       ; preds = %lor.lhs.false4.i
  %urb.i = getelementptr inbounds %struct.mts_desc, ptr %8, i32 0, i32 8
  %15 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %urb.i, align 4
  %usb_dev.i = getelementptr inbounds %struct.mts_desc, ptr %8, i32 0, i32 2
  %17 = ptrtoint ptr %usb_dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %usb_dev.i, align 4
  %ep_out.i = getelementptr inbounds %struct.mts_desc, ptr %8, i32 0, i32 4
  %19 = ptrtoint ptr %ep_out.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ep_out.i, align 4
  %conv.i = zext i8 %20 to i32
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %18, align 8
  %shl.i.i = shl i32 %22, 8
  %shl1.i.i = shl nuw nsw i32 %conv.i, 15
  %or.i1.i = or i32 %shl.i.i, %shl1.i.i
  %or.i = or i32 %or.i1.i, -1073741824
  %cmnd.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 16
  %23 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cmnd.i, align 4
  %cmd_len.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 14
  %25 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %cmd_len.i, align 4
  %conv18.i = zext i16 %26 to i32
  %context.i = getelementptr inbounds %struct.mts_desc, ptr %8, i32 0, i32 9
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 8
  %27 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %18, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 10
  %28 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or.i, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 14
  %29 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %24, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 19
  %30 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv18.i, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 28
  %31 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @mts_command_done, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %16, i32 0, i32 27
  %32 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %context.i, ptr %context4.i.i, align 4
  %33 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %8, ptr %context.i, align 4
  %srb2.i.i = getelementptr inbounds %struct.mts_desc, ptr %8, i32 0, i32 9, i32 2
  %34 = ptrtoint ptr %srb2.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %cmd, ptr %srb2.i.i, align 4
  %length.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17, i32 1
  %35 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %length.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  %data.i.i = getelementptr inbounds %struct.mts_desc, ptr %8, i32 0, i32 9, i32 3
  %37 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %data.i.i, align 4
  %data_length.i.i = getelementptr inbounds %struct.mts_desc, ptr %8, i32 0, i32 9, i32 4
  %38 = ptrtoint ptr %data_length.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %data_length.i.i, align 4
  br label %mts_build_transfer_context.exit.i

if.else.i.i:                                      ; preds = %if.end16.i
  %sdb.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 17
  %39 = ptrtoint ptr %sdb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sdb.i.i.i, align 4
  %curr_sg.i.i = getelementptr inbounds %struct.mts_desc, ptr %8, i32 0, i32 9, i32 6
  %41 = ptrtoint ptr %curr_sg.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %curr_sg.i.i, align 4
  %42 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %40, align 4
  %and.i.i.i.i.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %sg_virt.exit.i.i, label %do.body2.i.i.i.i, !prof !77

do.body2.i.i.i.i:                                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #8, !srcloc !78
  unreachable

sg_virt.exit.i.i:                                 ; preds = %if.else.i.i
  %and.i.i.i.i = and i32 %43, -4
  %44 = inttoptr i32 %and.i.i.i.i to ptr
  %call1.i.i.i = tail call ptr @page_address(ptr noundef %44) #8
  %offset.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %40, i32 0, i32 1
  %45 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %call1.i.i.i, i32 %46
  %data11.i.i = getelementptr inbounds %struct.mts_desc, ptr %8, i32 0, i32 9, i32 3
  %47 = ptrtoint ptr %data11.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %add.ptr.i.i.i, ptr %data11.i.i, align 4
  %48 = ptrtoint ptr %curr_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %curr_sg.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.scatterlist, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %length.i.i, align 4
  %data_length15.i.i = getelementptr inbounds %struct.mts_desc, ptr %8, i32 0, i32 9, i32 4
  %52 = ptrtoint ptr %data_length15.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %data_length15.i.i, align 4
  %53 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cmnd.i, align 4
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(4) %54, ptr noundef nonnull dereferenceable(4) @mts_read_image_sig, i32 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool17.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool17.not.i.i, label %if.then18.i.i, label %if.else24.i.i

if.then18.i.i:                                    ; preds = %sg_virt.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %ep_image.i.i = getelementptr inbounds %struct.mts_desc, ptr %8, i32 0, i32 6
  br label %if.end53.i.i

if.else24.i.i:                                    ; preds = %sg_virt.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %54, align 1
  %conv26.i.i = zext i8 %56 to i32
  %57 = lshr i32 %conv26.i.i, 3
  %arrayidx27.i.i = getelementptr [32 x i8], ptr @mts_direction, i32 0, i32 %57
  %58 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx27.i.i, align 1
  %conv28.i.i = zext i8 %59 to i32
  %and.i2.i = and i32 %conv26.i.i, 7
  %60 = shl nuw nsw i32 1, %and.i2.i
  %61 = and i32 %60, %conv28.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool34.not.i.i = icmp eq i32 %61, 0
  %ep_response.i.i = getelementptr inbounds %struct.mts_desc, ptr %8, i32 0, i32 5
  %spec.select.i = select i1 %tobool34.not.i.i, ptr %ep_out.i, ptr %ep_response.i.i
  %spec.select6.i = select i1 %tobool34.not.i.i, i32 -1073741824, i32 -1073741696
  br label %if.end53.i.i

if.end53.i.i:                                     ; preds = %if.else24.i.i, %if.then18.i.i
  %.sink84.in.i.i = phi ptr [ %ep_image.i.i, %if.then18.i.i ], [ %spec.select.i, %if.else24.i.i ]
  %.sink.i.i = phi i32 [ -1073741696, %if.then18.i.i ], [ %spec.select6.i, %if.else24.i.i ]
  %62 = ptrtoint ptr %usb_dev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %.sink83.i.i = load ptr, ptr %usb_dev.i, align 4
  %63 = ptrtoint ptr %.sink84.in.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %.sink84.i.i = load i8, ptr %.sink84.in.i.i, align 1
  %conv37.i.i = zext i8 %.sink84.i.i to i32
  %64 = ptrtoint ptr %.sink83.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %.sink83.i.i, align 8
  %shl.i76.i.i = shl i32 %65, 8
  %shl1.i77.i.i = shl nuw nsw i32 %conv37.i.i, 15
  %or.i78.i.i = or i32 %shl.i76.i.i, %.sink.i.i
  %or40.i.i = or i32 %or.i78.i.i, %shl1.i77.i.i
  %data_pipe.i.i = getelementptr inbounds %struct.mts_desc, ptr %8, i32 0, i32 9, i32 5
  %66 = ptrtoint ptr %data_pipe.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %or40.i.i, ptr %data_pipe.i.i, align 4
  br label %mts_build_transfer_context.exit.i

mts_build_transfer_context.exit.i:                ; preds = %if.end53.i.i, %if.then.i.i
  %final_callback.i = getelementptr inbounds %struct.mts_desc, ptr %8, i32 0, i32 9, i32 1
  %67 = ptrtoint ptr %final_callback.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @scsi_done, ptr %final_callback.i, align 4
  %68 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %urb.i, align 4
  %call21.i = tail call i32 @usb_submit_urb(ptr noundef %69, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %mts_build_transfer_context.exit.i.mts_scsi_queuecommand_lck.exit_crit_edge, label %do.end32.i, !prof !77

mts_build_transfer_context.exit.i.mts_scsi_queuecommand_lck.exit_crit_edge: ; preds = %mts_build_transfer_context.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mts_scsi_queuecommand_lck.exit

do.end32.i:                                       ; preds = %mts_build_transfer_context.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %call21.i) #11
  br label %out.sink.split.i

out.sink.split.i:                                 ; preds = %do.end32.i, %lor.lhs.false4.i.out.sink.split.i_crit_edge, %lor.lhs.false.i.out.sink.split.i_crit_edge, %entry.out.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 458752, %do.end32.i ], [ 262144, %lor.lhs.false4.i.out.sink.split.i_crit_edge ], [ 262144, %lor.lhs.false.i.out.sink.split.i_crit_edge ], [ 262144, %entry.out.sink.split.i_crit_edge ]
  %result.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %cmd, i32 0, i32 24
  %70 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %result.i.i, align 4
  %and.i4.i = and i32 %71, -16711681
  %or.i5.i = or i32 %and.i4.i, %.sink.i
  store i32 %or.i5.i, ptr %result.i.i, align 4
  tail call void @scsi_done(ptr noundef %cmd) #8
  br label %mts_scsi_queuecommand_lck.exit

mts_scsi_queuecommand_lck.exit:                   ; preds = %out.sink.split.i, %mts_build_transfer_context.exit.i.mts_scsi_queuecommand_lck.exit_crit_edge
  %72 = ptrtoint ptr %host_lock to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %host_lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %73, i32 noundef %call2) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mts_scsi_abort(ptr nocapture noundef readonly %srb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hostdata, align 8
  %6 = inttoptr i32 %5 to ptr
  %urb.i = getelementptr inbounds %struct.mts_desc, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %urb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %urb.i, align 4
  tail call void @usb_kill_urb(ptr noundef %8) #8
  ret i32 8195
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mts_scsi_host_reset(ptr nocapture noundef readonly %srb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %srb, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hostdata, align 8
  %6 = inttoptr i32 %5 to ptr
  %usb_dev = getelementptr inbounds %struct.mts_desc, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %usb_dev, align 4
  %usb_intf = getelementptr inbounds %struct.mts_desc, ptr %6, i32 0, i32 3
  %9 = ptrtoint ptr %usb_intf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %usb_intf, align 4
  %call = tail call i32 @usb_lock_device_for_reset(ptr noundef %8, ptr noundef %10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usb_dev, align 4
  %call2 = tail call i32 @usb_reset_device(ptr noundef %12) #8
  %13 = ptrtoint ptr %usb_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %usb_dev, align 4
  %mutex.i = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 15, i32 10
  tail call void @mutex_unlock(ptr noundef %mutex.i) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %result.0 = phi i32 [ %call2, %if.then ], [ %call, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0)
  %tobool.not = icmp eq i32 %result.0, 0
  %cond = select i1 %tobool.not, i32 8194, i32 8195
  ret i32 %cond
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mts_slave_alloc(ptr nocapture noundef writeonly %s) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %inquiry_len = getelementptr inbounds %struct.scsi_device, ptr %s, i32 0, i32 27
  %0 = ptrtoint ptr %inquiry_len to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 36, ptr %inquiry_len, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mts_slave_configure(ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %request_queue = getelementptr inbounds %struct.scsi_device, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %request_queue, align 4
  tail call void @blk_queue_dma_alignment(ptr noundef %1, i32 noundef 511) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_done(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mts_command_done(ptr noundef %transfer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %status1 = getelementptr inbounds %struct.urb, ptr %transfer, i32 0, i32 12
  %0 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status1, align 4
  %context2 = getelementptr inbounds %struct.urb, ptr %transfer, i32 0, i32 27
  %2 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context2, align 4
  %4 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.end11 [
    i32 0, label %if.end13
    i32 -2, label %entry.if.end_crit_edge
  ], !prof !79

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.end11, %entry.if.end_crit_edge
  %.sink = phi i32 [ 458752, %do.end11 ], [ 327680, %entry.if.end_crit_edge ]
  %srb12 = getelementptr inbounds %struct.mts_transfer_context, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %srb12 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %srb12, align 4
  %result.i49 = getelementptr inbounds %struct.scsi_cmnd, ptr %6, i32 0, i32 24
  %7 = ptrtoint ptr %result.i49 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %result.i49, align 4
  %and.i50 = and i32 %8, -16711681
  %or.i51 = or i32 %and.i50, %.sink
  store i32 %or.i51, ptr %result.i49, align 4
  %9 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %context2, align 4
  %final_callback.i = getelementptr inbounds %struct.mts_transfer_context, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %final_callback.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %final_callback.i, align 4
  %cmp.not.i = icmp eq ptr %12, null
  br i1 %cmp.not.i, label %if.end.cleanup_crit_edge, label %if.end.cleanup.sink.split_crit_edge, !prof !80

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %entry
  %srb14 = getelementptr inbounds %struct.mts_transfer_context, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %srb14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %srb14, align 4
  %cmnd = getelementptr inbounds %struct.scsi_cmnd, ptr %14, i32 0, i32 16
  %15 = ptrtoint ptr %cmnd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cmnd, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %18)
  %cmp15 = icmp eq i8 %18, 3
  br i1 %cmp15, label %if.then17, label %if.else19

if.then17:                                        ; preds = %if.end13
  %data_pipe = getelementptr inbounds %struct.mts_transfer_context, ptr %3, i32 0, i32 5
  %19 = ptrtoint ptr %data_pipe to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data_pipe, align 4
  %sense_buffer = getelementptr inbounds %struct.scsi_cmnd, ptr %14, i32 0, i32 21
  %21 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sense_buffer, align 4
  %data_length = getelementptr inbounds %struct.mts_transfer_context, ptr %3, i32 0, i32 4
  %23 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data_length, align 4
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 4
  %usb_dev.i = getelementptr inbounds %struct.mts_desc, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %usb_dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %usb_dev.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %transfer, i32 0, i32 8
  %29 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %transfer, i32 0, i32 10
  %30 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %20, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %transfer, i32 0, i32 14
  %31 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %22, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %transfer, i32 0, i32 19
  %32 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %24, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %transfer, i32 0, i32 28
  %33 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @mts_data_done, ptr %complete.i.i, align 4
  %call.i = tail call i32 @usb_submit_urb(ptr noundef %transfer, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then17.cleanup_crit_edge, label %do.end6.i, !prof !77

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end6.i:                                        ; preds = %if.then17
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %call.i) #11
  %34 = ptrtoint ptr %srb14 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %srb14, align 4
  %result.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %35, i32 0, i32 24
  %36 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %result.i.i, align 4
  %and.i.i = and i32 %37, -16711681
  %or.i.i = or i32 %and.i.i, 458752
  store i32 %or.i.i, ptr %result.i.i, align 4
  %38 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %context2, align 4
  %final_callback.i.i = getelementptr inbounds %struct.mts_transfer_context, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %final_callback.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %final_callback.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %41, null
  br i1 %cmp.not.i.i, label %do.end6.i.cleanup_crit_edge, label %do.end6.i.cleanup.sink.split_crit_edge, !prof !80

do.end6.i.cleanup.sink.split_crit_edge:           ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

do.end6.i.cleanup_crit_edge:                      ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else19:                                        ; preds = %if.end13
  %data = getelementptr inbounds %struct.mts_transfer_context, ptr %3, i32 0, i32 3
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data, align 4
  %tobool20.not = icmp eq ptr %43, null
  br i1 %tobool20.not, label %if.else28, label %if.then21

if.then21:                                        ; preds = %if.else19
  %data_pipe22 = getelementptr inbounds %struct.mts_transfer_context, ptr %3, i32 0, i32 5
  %44 = ptrtoint ptr %data_pipe22 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %data_pipe22, align 4
  %data_length24 = getelementptr inbounds %struct.mts_transfer_context, ptr %3, i32 0, i32 4
  %46 = ptrtoint ptr %data_length24 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %data_length24, align 4
  %nents.i = getelementptr inbounds %struct.scsi_cmnd, ptr %14, i32 0, i32 17, i32 0, i32 1
  %48 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp26 = icmp ugt i32 %49, 1
  %cond = select i1 %cmp26, ptr @mts_do_sg, ptr @mts_data_done
  %50 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %3, align 4
  %usb_dev.i55 = getelementptr inbounds %struct.mts_desc, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %usb_dev.i55 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %usb_dev.i55, align 4
  %dev1.i.i56 = getelementptr inbounds %struct.urb, ptr %transfer, i32 0, i32 8
  %54 = ptrtoint ptr %dev1.i.i56 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %dev1.i.i56, align 4
  %pipe2.i.i57 = getelementptr inbounds %struct.urb, ptr %transfer, i32 0, i32 10
  %55 = ptrtoint ptr %pipe2.i.i57 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %45, ptr %pipe2.i.i57, align 4
  %transfer_buffer3.i.i58 = getelementptr inbounds %struct.urb, ptr %transfer, i32 0, i32 14
  %56 = ptrtoint ptr %transfer_buffer3.i.i58 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %43, ptr %transfer_buffer3.i.i58, align 4
  %transfer_buffer_length.i.i59 = getelementptr inbounds %struct.urb, ptr %transfer, i32 0, i32 19
  %57 = ptrtoint ptr %transfer_buffer_length.i.i59 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %47, ptr %transfer_buffer_length.i.i59, align 4
  %complete.i.i60 = getelementptr inbounds %struct.urb, ptr %transfer, i32 0, i32 28
  %58 = ptrtoint ptr %complete.i.i60 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %cond, ptr %complete.i.i60, align 4
  %call.i61 = tail call i32 @usb_submit_urb(ptr noundef %transfer, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %tobool.not.i62 = icmp eq i32 %call.i61, 0
  br i1 %tobool.not.i62, label %if.then21.cleanup_crit_edge, label %do.end6.i70, !prof !77

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end6.i70:                                      ; preds = %if.then21
  %call7.i63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %call.i61) #11
  %59 = ptrtoint ptr %srb14 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %srb14, align 4
  %result.i.i65 = getelementptr inbounds %struct.scsi_cmnd, ptr %60, i32 0, i32 24
  %61 = ptrtoint ptr %result.i.i65 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %result.i.i65, align 4
  %and.i.i66 = and i32 %62, -16711681
  %or.i.i67 = or i32 %and.i.i66, 458752
  store i32 %or.i.i67, ptr %result.i.i65, align 4
  %63 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %context2, align 4
  %final_callback.i.i68 = getelementptr inbounds %struct.mts_transfer_context, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %final_callback.i.i68 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %final_callback.i.i68, align 4
  %cmp.not.i.i69 = icmp eq ptr %66, null
  br i1 %cmp.not.i.i69, label %do.end6.i70.cleanup_crit_edge, label %do.end6.i70.cleanup.sink.split_crit_edge, !prof !80

do.end6.i70.cleanup.sink.split_crit_edge:         ; preds = %do.end6.i70
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

do.end6.i70.cleanup_crit_edge:                    ; preds = %do.end6.i70
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else28:                                        ; preds = %if.else19
  %67 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %3, align 4
  %usb_dev.i75 = getelementptr inbounds %struct.mts_desc, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %usb_dev.i75 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %usb_dev.i75, align 4
  %ep_response.i = getelementptr inbounds %struct.mts_desc, ptr %68, i32 0, i32 5
  %71 = ptrtoint ptr %ep_response.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %ep_response.i, align 1
  %conv.i = zext i8 %72 to i32
  %73 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %70, align 8
  %shl.i.i = shl i32 %74, 8
  %shl1.i.i = shl nuw nsw i32 %conv.i, 15
  %or.i.i76 = or i32 %shl.i.i, %shl1.i.i
  %or3.i = or i32 %or.i.i76, -1073741696
  %scsi_status.i = getelementptr inbounds %struct.mts_transfer_context, ptr %3, i32 0, i32 7
  %75 = ptrtoint ptr %scsi_status.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %scsi_status.i, align 4
  %dev1.i.i.i = getelementptr inbounds %struct.urb, ptr %transfer, i32 0, i32 8
  %77 = ptrtoint ptr %dev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %70, ptr %dev1.i.i.i, align 4
  %pipe2.i.i.i = getelementptr inbounds %struct.urb, ptr %transfer, i32 0, i32 10
  %78 = ptrtoint ptr %pipe2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %or3.i, ptr %pipe2.i.i.i, align 4
  %transfer_buffer3.i.i.i = getelementptr inbounds %struct.urb, ptr %transfer, i32 0, i32 14
  %79 = ptrtoint ptr %transfer_buffer3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %76, ptr %transfer_buffer3.i.i.i, align 4
  %transfer_buffer_length.i.i.i = getelementptr inbounds %struct.urb, ptr %transfer, i32 0, i32 19
  %80 = ptrtoint ptr %transfer_buffer_length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1, ptr %transfer_buffer_length.i.i.i, align 4
  %complete.i.i.i = getelementptr inbounds %struct.urb, ptr %transfer, i32 0, i32 28
  %81 = ptrtoint ptr %complete.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @mts_transfer_done, ptr %complete.i.i.i, align 4
  %call.i.i = tail call i32 @usb_submit_urb(ptr noundef %transfer, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.else28.cleanup_crit_edge, label %do.end6.i.i, !prof !77

if.else28.cleanup_crit_edge:                      ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end6.i.i:                                      ; preds = %if.else28
  %call7.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %call.i.i) #11
  %82 = ptrtoint ptr %srb14 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %srb14, align 4
  %result.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %83, i32 0, i32 24
  %84 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %result.i.i.i, align 4
  %and.i.i.i = and i32 %85, -16711681
  %or.i.i.i = or i32 %and.i.i.i, 458752
  store i32 %or.i.i.i, ptr %result.i.i.i, align 4
  %86 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %context2, align 4
  %final_callback.i.i.i = getelementptr inbounds %struct.mts_transfer_context, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %final_callback.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %final_callback.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %89, null
  br i1 %cmp.not.i.i.i, label %do.end6.i.i.cleanup_crit_edge, label %do.end6.i.i.cleanup.sink.split_crit_edge, !prof !80

do.end6.i.i.cleanup.sink.split_crit_edge:         ; preds = %do.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

do.end6.i.i.cleanup_crit_edge:                    ; preds = %do.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.end6.i.i.cleanup.sink.split_crit_edge, %do.end6.i70.cleanup.sink.split_crit_edge, %do.end6.i.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %.sink82 = phi ptr [ %10, %if.end.cleanup.sink.split_crit_edge ], [ %39, %do.end6.i.cleanup.sink.split_crit_edge ], [ %64, %do.end6.i70.cleanup.sink.split_crit_edge ], [ %87, %do.end6.i.i.cleanup.sink.split_crit_edge ]
  %.sink81 = phi ptr [ %12, %if.end.cleanup.sink.split_crit_edge ], [ %41, %do.end6.i.cleanup.sink.split_crit_edge ], [ %66, %do.end6.i70.cleanup.sink.split_crit_edge ], [ %89, %do.end6.i.i.cleanup.sink.split_crit_edge ]
  %srb.i.i.i = getelementptr inbounds %struct.mts_transfer_context, ptr %.sink82, i32 0, i32 2
  %90 = ptrtoint ptr %srb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %srb.i.i.i, align 4
  tail call void %.sink81(ptr noundef %91) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end6.i.i.cleanup_crit_edge, %if.else28.cleanup_crit_edge, %do.end6.i70.cleanup_crit_edge, %if.then21.cleanup_crit_edge, %do.end6.i.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mts_data_done(ptr noundef %transfer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %status1 = getelementptr inbounds %struct.urb, ptr %transfer, i32 0, i32 12
  %0 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status1, align 4
  %context2 = getelementptr inbounds %struct.urb, ptr %transfer, i32 0, i32 27
  %2 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context2, align 4
  %data_length = getelementptr inbounds %struct.mts_transfer_context, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_length, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %transfer, i32 0, i32 20
  %6 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp eq i32 %5, %7
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %srb = getelementptr inbounds %struct.mts_transfer_context, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %srb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %srb, align 4
  %sub = sub i32 %5, %7
  %resid_len.i = getelementptr inbounds %struct.scsi_request, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %resid_len.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub, ptr %resid_len.i, align 4
  br label %if.end10

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else.if.end10_crit_edge, label %if.then7, !prof !77

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %srb8 = getelementptr inbounds %struct.mts_transfer_context, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %srb8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %srb8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %1)
  %cmp9 = icmp eq i32 %1, -2
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %12, i32 0, i32 24
  %13 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %result.i, align 4
  %and.i = and i32 %14, -16711681
  %conv.i = select i1 %cmp9, i32 327680, i32 458752
  %or.i = or i32 %and.i, %conv.i
  store i32 %or.i, ptr %result.i, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.else.if.end10_crit_edge, %if.then
  %15 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %context2, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %usb_dev.i = getelementptr inbounds %struct.mts_desc, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %usb_dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %usb_dev.i, align 4
  %ep_response.i = getelementptr inbounds %struct.mts_desc, ptr %18, i32 0, i32 5
  %21 = ptrtoint ptr %ep_response.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ep_response.i, align 1
  %conv.i21 = zext i8 %22 to i32
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %20, align 8
  %shl.i.i = shl i32 %24, 8
  %shl1.i.i = shl nuw nsw i32 %conv.i21, 15
  %or.i.i = or i32 %shl.i.i, %shl1.i.i
  %or3.i = or i32 %or.i.i, -1073741696
  %scsi_status.i = getelementptr inbounds %struct.mts_transfer_context, ptr %16, i32 0, i32 7
  %25 = ptrtoint ptr %scsi_status.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %scsi_status.i, align 4
  %dev1.i.i.i = getelementptr inbounds %struct.urb, ptr %transfer, i32 0, i32 8
  %27 = ptrtoint ptr %dev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %20, ptr %dev1.i.i.i, align 4
  %pipe2.i.i.i = getelementptr inbounds %struct.urb, ptr %transfer, i32 0, i32 10
  %28 = ptrtoint ptr %pipe2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or3.i, ptr %pipe2.i.i.i, align 4
  %transfer_buffer3.i.i.i = getelementptr inbounds %struct.urb, ptr %transfer, i32 0, i32 14
  %29 = ptrtoint ptr %transfer_buffer3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %transfer_buffer3.i.i.i, align 4
  %transfer_buffer_length.i.i.i = getelementptr inbounds %struct.urb, ptr %transfer, i32 0, i32 19
  %30 = ptrtoint ptr %transfer_buffer_length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %transfer_buffer_length.i.i.i, align 4
  %complete.i.i.i = getelementptr inbounds %struct.urb, ptr %transfer, i32 0, i32 28
  %31 = ptrtoint ptr %complete.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @mts_transfer_done, ptr %complete.i.i.i, align 4
  %call.i.i = tail call i32 @usb_submit_urb(ptr noundef %transfer, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end10.mts_get_status.exit_crit_edge, label %do.end6.i.i, !prof !77

if.end10.mts_get_status.exit_crit_edge:           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %mts_get_status.exit

do.end6.i.i:                                      ; preds = %if.end10
  %call7.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %call.i.i) #11
  %srb.i.i = getelementptr inbounds %struct.mts_transfer_context, ptr %16, i32 0, i32 2
  %32 = ptrtoint ptr %srb.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %srb.i.i, align 4
  %result.i.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %33, i32 0, i32 24
  %34 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %result.i.i.i, align 4
  %and.i.i.i = and i32 %35, -16711681
  %or.i.i.i = or i32 %and.i.i.i, 458752
  store i32 %or.i.i.i, ptr %result.i.i.i, align 4
  %36 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %context2, align 4
  %final_callback.i.i.i = getelementptr inbounds %struct.mts_transfer_context, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %final_callback.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %final_callback.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %39, null
  br i1 %cmp.not.i.i.i, label %do.end6.i.i.mts_get_status.exit_crit_edge, label %if.then.i.i.i, !prof !80

do.end6.i.i.mts_get_status.exit_crit_edge:        ; preds = %do.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mts_get_status.exit

if.then.i.i.i:                                    ; preds = %do.end6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %srb.i.i.i = getelementptr inbounds %struct.mts_transfer_context, ptr %37, i32 0, i32 2
  %40 = ptrtoint ptr %srb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %srb.i.i.i, align 4
  tail call void %39(ptr noundef %41) #8
  br label %mts_get_status.exit

mts_get_status.exit:                              ; preds = %if.then.i.i.i, %do.end6.i.i.mts_get_status.exit_crit_edge, %if.end10.mts_get_status.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mts_do_sg(ptr noundef %transfer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %status1 = getelementptr inbounds %struct.urb, ptr %transfer, i32 0, i32 12
  %0 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status1, align 4
  %context2 = getelementptr inbounds %struct.urb, ptr %transfer, i32 0, i32 27
  %2 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !77

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %srb = getelementptr inbounds %struct.mts_transfer_context, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %srb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %srb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %1)
  %cmp = icmp eq i32 %1, -2
  %result.i = getelementptr inbounds %struct.scsi_cmnd, ptr %5, i32 0, i32 24
  %6 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %result.i, align 4
  %and.i = and i32 %7, -16711681
  %conv.i = select i1 %cmp, i32 327680, i32 458752
  %or.i = or i32 %and.i, %conv.i
  store i32 %or.i, ptr %result.i, align 4
  %8 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %context2, align 4
  %final_callback.i = getelementptr inbounds %struct.mts_transfer_context, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %final_callback.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %final_callback.i, align 4
  %cmp.not.i = icmp eq ptr %11, null
  br i1 %cmp.not.i, label %if.then.if.end_crit_edge, label %if.then.i, !prof !80

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %srb.i = getelementptr inbounds %struct.mts_transfer_context, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %srb.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %srb.i, align 4
  tail call void %11(ptr noundef %13) #8
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %curr_sg = getelementptr inbounds %struct.mts_transfer_context, ptr %3, i32 0, i32 6
  %14 = ptrtoint ptr %curr_sg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %curr_sg, align 4
  %call = tail call ptr @sg_next(ptr noundef %15) #8
  %16 = ptrtoint ptr %curr_sg to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call, ptr %curr_sg, align 4
  %17 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call, align 4
  %and.i.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_virt.exit, label %do.body2.i.i, !prof !77

do.body2.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #8, !srcloc !78
  unreachable

sg_virt.exit:                                     ; preds = %if.end
  %data_pipe = getelementptr inbounds %struct.mts_transfer_context, ptr %3, i32 0, i32 5
  %19 = ptrtoint ptr %data_pipe to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data_pipe, align 4
  %and.i.i = and i32 %18, -4
  %21 = inttoptr i32 %and.i.i to ptr
  %call1.i = tail call ptr @page_address(ptr noundef %21) #8
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %call, i32 0, i32 1
  %22 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 %23
  %24 = ptrtoint ptr %curr_sg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %curr_sg, align 4
  %length = getelementptr inbounds %struct.scatterlist, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %length, align 4
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %25, align 4
  %and.i26 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i26)
  %tobool.i.not = icmp eq i32 %and.i26, 0
  %cond15 = select i1 %tobool.i.not, ptr @mts_do_sg, ptr @mts_data_done
  %30 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %context2, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %usb_dev.i = getelementptr inbounds %struct.mts_desc, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %usb_dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %usb_dev.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %transfer, i32 0, i32 8
  %36 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %transfer, i32 0, i32 10
  %37 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %20, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %transfer, i32 0, i32 14
  %38 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr.i, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %transfer, i32 0, i32 19
  %39 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %27, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %transfer, i32 0, i32 28
  %40 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %cond15, ptr %complete.i.i, align 4
  %call.i = tail call i32 @usb_submit_urb(ptr noundef %transfer, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sg_virt.exit.mts_int_submit_urb.exit_crit_edge, label %do.end6.i, !prof !77

sg_virt.exit.mts_int_submit_urb.exit_crit_edge:   ; preds = %sg_virt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %mts_int_submit_urb.exit

do.end6.i:                                        ; preds = %sg_virt.exit
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %call.i) #11
  %srb.i28 = getelementptr inbounds %struct.mts_transfer_context, ptr %31, i32 0, i32 2
  %41 = ptrtoint ptr %srb.i28 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %srb.i28, align 4
  %result.i.i = getelementptr inbounds %struct.scsi_cmnd, ptr %42, i32 0, i32 24
  %43 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %result.i.i, align 4
  %and.i.i29 = and i32 %44, -16711681
  %or.i.i = or i32 %and.i.i29, 458752
  store i32 %or.i.i, ptr %result.i.i, align 4
  %45 = ptrtoint ptr %context2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %context2, align 4
  %final_callback.i.i = getelementptr inbounds %struct.mts_transfer_context, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %final_callback.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %final_callback.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %48, null
  br i1 %cmp.not.i.i, label %do.end6.i.mts_int_submit_urb.exit_crit_edge, label %if.then.i.i, !prof !80

do.end6.i.mts_int_submit_urb.exit_crit_edge:      ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mts_int_submit_urb.exit

if.then.i.i:                                      ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %srb.i.i = getelementptr inbounds %struct.mts_transfer_context, ptr %46, i32 0, i32 2
  %49 = ptrtoint ptr %srb.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %srb.i.i, align 4
  tail call void %48(ptr noundef %50) #8
  br label %mts_int_submit_urb.exit

mts_int_submit_urb.exit:                          ; preds = %if.then.i.i, %do.end6.i.mts_int_submit_urb.exit_crit_edge, %sg_virt.exit.mts_int_submit_urb.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mts_transfer_done(ptr nocapture noundef readonly %transfer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context1 = getelementptr inbounds %struct.urb, ptr %transfer, i32 0, i32 27
  %0 = ptrtoint ptr %context1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context1, align 4
  %srb = getelementptr inbounds %struct.mts_transfer_context, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %srb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %srb, align 4
  %result = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %result, align 4
  %and = and i32 %5, -64
  store i32 %and, ptr %result, align 4
  %scsi_status = getelementptr inbounds %struct.mts_transfer_context, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %scsi_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %scsi_status, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %conv = zext i8 %9 to i32
  %shl = shl nuw nsw i32 %conv, 1
  %10 = load ptr, ptr %srb, align 4
  %result3 = getelementptr inbounds %struct.scsi_cmnd, ptr %10, i32 0, i32 24
  %11 = ptrtoint ptr %result3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %result3, align 4
  %or = or i32 %12, %shl
  store i32 %or, ptr %result3, align 4
  %13 = load ptr, ptr %context1, align 4
  %final_callback.i = getelementptr inbounds %struct.mts_transfer_context, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %final_callback.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %final_callback.i, align 4
  %cmp.not.i = icmp eq ptr %15, null
  br i1 %cmp.not.i, label %entry.mts_transfer_cleanup.exit_crit_edge, label %if.then.i, !prof !80

entry.mts_transfer_cleanup.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mts_transfer_cleanup.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %srb.i = getelementptr inbounds %struct.mts_transfer_context, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %srb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %srb.i, align 4
  tail call void %15(ptr noundef %17) #8
  br label %mts_transfer_cleanup.exit

mts_transfer_cleanup.exit:                        ; preds = %if.then.i, %entry.mts_transfer_cleanup.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_lock_device_for_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_reset_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_dma_alignment(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !53, !54, !55, !56, !58, !59, !60, !61, !63, !65}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @__initcall__kmod_microtek__290_802_mts_usb_driver_init6, !1, !"__initcall__kmod_microtek__290_802_mts_usb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/image/microtek.c", i32 802, i32 1}
!2 = !{ptr @__exitcall_mts_usb_driver_exit, !1, !"__exitcall_mts_usb_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/usb/image/microtek.c", i32 804, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/usb/image/microtek.c", i32 805, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/usb/image/microtek.c", i32 806, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/usb/image/microtek.c", i32 157, i32 11}
!13 = !{ptr @mts_usb_driver, !14, !"mts_usb_driver", i1 false, i1 false}
!14 = !{!"../drivers/usb/image/microtek.c", i32 156, i32 26}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/usb/image/microtek.c", i32 687, i32 3}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @mts_usb_probe._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @mts_usb_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/usb/image/microtek.c", i32 696, i32 4}
!23 = !{ptr @mts_usb_probe._entry.5, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @mts_usb_probe._entry_ptr.7, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/usb/image/microtek.c", i32 706, i32 6}
!27 = !{ptr @mts_usb_probe._entry.8, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @mts_usb_probe._entry_ptr.10, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/usb/image/microtek.c", i32 718, i32 3}
!31 = !{ptr @mts_usb_probe._entry.11, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @mts_usb_probe._entry_ptr.13, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/image/microtek.c", i32 723, i32 3}
!35 = !{ptr @mts_usb_probe._entry.14, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @mts_usb_probe._entry_ptr.16, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/image/microtek.c", i32 749, i32 3}
!39 = !{ptr @mts_usb_probe._entry.17, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @mts_usb_probe._entry_ptr.19, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/usb/image/microtek.c", i32 753, i32 3}
!43 = !{ptr @mts_usb_probe._entry.20, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @mts_usb_probe._entry_ptr.22, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/image/microtek.c", i32 757, i32 3}
!47 = !{ptr @mts_usb_probe._entry.23, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @mts_usb_probe._entry_ptr.25, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @mts_scsi_host_template, !50, !"mts_scsi_host_template", i1 false, i1 false}
!50 = !{!"../drivers/usb/image/microtek.c", i32 619, i32 34}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/image/microtek.c", i32 606, i32 3}
!53 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @mts_scsi_queuecommand_lck._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @mts_scsi_queuecommand_lck._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/image/microtek.c", i32 391, i32 3}
!58 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @mts_int_submit_urb._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @mts_int_submit_urb._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @mts_read_image_sig, !62, !"mts_read_image_sig", i1 false, i1 false}
!62 = !{!"../drivers/usb/image/microtek.c", i32 511, i32 17}
!63 = !{ptr @mts_direction, !64, !"mts_direction", i1 false, i1 false}
!64 = !{!"../drivers/usb/image/microtek.c", i32 513, i32 28}
!65 = !{ptr @mts_usb_ids, !66, !"mts_usb_ids", i1 false, i1 false}
!66 = !{!"../drivers/usb/image/microtek.c", i32 638, i32 35}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{!"auto-init"}
!77 = !{!"branch_weights", i32 2000, i32 1}
!78 = !{i64 2154707003, i64 2154707495, i64 2154707040, i64 2154707096, i64 2154707130, i64 2154707154, i64 2154707195, i64 2154707216, i64 2154707244, i64 2154707278}
!79 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!80 = !{!"branch_weights", i32 1, i32 2000}
