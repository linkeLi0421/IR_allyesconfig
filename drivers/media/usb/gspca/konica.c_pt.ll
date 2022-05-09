; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/konica.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/konica.c"
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
%struct.sd_desc = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.102, i32, i32 }
%union.anon.102 = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.gspca_dev = type { %struct.video_device, ptr, %struct.v4l2_device, ptr, ptr, [64 x i8], %struct.cam, ptr, %struct.v4l2_ctrl_handler, %struct.anon.103, ptr, [4 x ptr], ptr, ptr, i32, i8, i8, i8, i8, %struct.v4l2_pix_format, i32, %struct.vb2_queue, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, %struct.mutex, i32, i16, i8, i8, i8, i8, i8, i32, i8 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.cam = type { ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.103 = type { ptr, ptr, ptr, i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.sd = type { %struct.gspca_dev, ptr, i8 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_author303 = internal constant [56 x i8] c"gspca_konica.author=Hans de Goede <hdegoede@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [58 x i8] c"gspca_konica.description=Konica chipset USB Camera Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [55 x i8] c"gspca_konica.file=drivers/media/usb/gspca/gspca_konica\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [25 x i8] c"gspca_konica.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_gspca_konica__307_478_sd_driver_init6 = internal global ptr @sd_driver_init, section ".initcall6.init", align 4
@sd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @sd_probe, ptr @gspca_disconnect, ptr null, ptr @gspca_suspend, ptr @gspca_resume, ptr @gspca_resume, ptr null, ptr null, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sd_driver_exit = internal global ptr @sd_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gspca_konica\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"konica\00", [25 x i8] zeroinitializer }, align 32
@device_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1224, i16 1824, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sd_desc = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str.1, ptr @sd_config, ptr @sd_init, ptr @sd_init_controls, ptr null, ptr @sd_start, ptr null, ptr null, ptr null, ptr @sd_stopN, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1 }, [36 x i8] zeroinitializer }, align 32
@vga_mode = internal constant { [3 x %struct.v4l2_pix_format], [48 x i8] } { [3 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 160, i32 120, i32 1229868875, i32 1, i32 160, i32 33600, i32 8, i32 10, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 176, i32 144, i32 1229868875, i32 1, i32 176, i32 38976, i32 8, i32 4, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 320, i32 240, i32 1229868875, i32 1, i32 320, i32 116160, i32 8, i32 5, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@reg_r._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013gspca_konica: reg_r err %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reg_r\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/media/usb/gspca/konica.c\00", [63 x i8] zeroinitializer }, align 32
@reg_r._entry_ptr = internal global ptr @reg_r._entry, section ".printk_index", align 4
@reg_w._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.4, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013gspca_konica: reg_w err writing %02x to %02x: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reg_w\00", [26 x i8] zeroinitializer }, align 32
@reg_w._entry_ptr = internal global ptr @reg_w._entry, section ".printk_index", align 4
@sd_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"konica:417:(hdl)->_lock\00", [40 x i8] zeroinitializer }, align 32
@sd_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @sd_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@sd_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013gspca_konica: Could not initialize controls\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sd_init_controls\00", [47 x i8] zeroinitializer }, align 32
@sd_init_controls._entry_ptr = internal global ptr @sd_init_controls._entry, section ".printk_index", align 4
@sd_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013gspca_konica: Couldn't get altsetting\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sd_start\00", [23 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr = internal global ptr @sd_start._entry, section ".printk_index", align 4
@sd_start._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.4, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013gspca_konica: usb_buffer_alloc failed\0A\00", [55 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr.14 = internal global ptr @sd_start._entry.12, section ".printk_index", align 4
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@sd_isoc_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017%s: sd isoc irq\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sd_isoc_irq\00", [20 x i8] zeroinitializer }, align 32
@sd_isoc_irq._entry_ptr = internal global ptr @sd_isoc_irq._entry, section ".printk_index", align 4
@sd_isoc_irq._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.4, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013%s: urb status: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@sd_isoc_irq._entry_ptr.19 = internal global ptr @sd_isoc_irq._entry.17, section ".printk_index", align 4
@sd_isoc_irq._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.4, i32 276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013gspca_konica: resubmit urb error %d\0A\00", [57 x i8] zeroinitializer }, align 32
@sd_isoc_irq._entry_ptr.22 = internal global ptr @sd_isoc_irq._entry.20, section ".printk_index", align 4
@sd_isoc_irq._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.16, ptr @.str.4, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: lost sync on frames\0A\00", [37 x i8] zeroinitializer }, align 32
@sd_isoc_irq._entry_ptr.25 = internal global ptr @sd_isoc_irq._entry.23, section ".printk_index", align 4
@sd_isoc_irq._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.16, ptr @.str.4, i32 298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s: no packets does not match, data: %d, status: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@sd_isoc_irq._entry_ptr.28 = internal global ptr @sd_isoc_irq._entry.26, section ".printk_index", align 4
@sd_isoc_irq._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.16, ptr @.str.4, i32 308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: pkt %d data-status %d, status-status %d\0A\00", [49 x i8] zeroinitializer }, align 32
@sd_isoc_irq._entry_ptr.31 = internal global ptr @sd_isoc_irq._entry.29, section ".printk_index", align 4
@sd_isoc_irq._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.16, ptr @.str.4, i32 315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: bad status packet length %d\0A\00", [61 x i8] zeroinitializer }, align 32
@sd_isoc_irq._entry_ptr.34 = internal global ptr @sd_isoc_irq._entry.32, section ".printk_index", align 4
@sd_isoc_irq._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.16, ptr @.str.4, i32 361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: usb_submit_urb(data_urb) ret %d\0A\00", [57 x i8] zeroinitializer }, align 32
@sd_isoc_irq._entry_ptr.37 = internal global ptr @sd_isoc_irq._entry.35, section ".printk_index", align 4
@sd_isoc_irq._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.16, ptr @.str.4, i32 365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: usb_submit_urb(status_urb) ret %d\0A\00", [55 x i8] zeroinitializer }, align 32
@sd_isoc_irq._entry_ptr.40 = internal global ptr @sd_isoc_irq._entry.38, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963802, i64 9963803]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967188]
@___asan_gen_.42 = private unnamed_addr constant [10 x i8] c"sd_driver\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 466, i32 26 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 478, i32 1 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 467, i32 10 }
@___asan_gen_.51 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 452, i32 35 }
@___asan_gen_.54 = private unnamed_addr constant [8 x i8] c"sd_desc\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 439, i32 29 }
@___asan_gen_.57 = private unnamed_addr constant [9 x i8] c"vga_mode\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 57, i32 37 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 115, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 93, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 417, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant [12 x i8] c"sd_ctrl_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 408, i32 35 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 432, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 179, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 214, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 262, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 273, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 276, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 291, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 296, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 305, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 314, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 360, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.169 = private constant [36 x i8] c"../drivers/media/usb/gspca/konica.c\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 365, i32 3 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_sd_driver_exit, ptr @__initcall__kmod_gspca_konica__307_478_sd_driver_init6, ptr @reg_r._entry, ptr @reg_r._entry_ptr, ptr @reg_w._entry, ptr @reg_w._entry_ptr, ptr @sd_driver_exit, ptr @sd_init_controls._entry, ptr @sd_init_controls._entry_ptr, ptr @sd_isoc_irq._entry, ptr @sd_isoc_irq._entry.17, ptr @sd_isoc_irq._entry.20, ptr @sd_isoc_irq._entry.23, ptr @sd_isoc_irq._entry.26, ptr @sd_isoc_irq._entry.29, ptr @sd_isoc_irq._entry.32, ptr @sd_isoc_irq._entry.35, ptr @sd_isoc_irq._entry.38, ptr @sd_isoc_irq._entry_ptr, ptr @sd_isoc_irq._entry_ptr.19, ptr @sd_isoc_irq._entry_ptr.22, ptr @sd_isoc_irq._entry_ptr.25, ptr @sd_isoc_irq._entry_ptr.28, ptr @sd_isoc_irq._entry_ptr.31, ptr @sd_isoc_irq._entry_ptr.34, ptr @sd_isoc_irq._entry_ptr.37, ptr @sd_isoc_irq._entry_ptr.40, ptr @sd_start._entry, ptr @sd_start._entry.12, ptr @sd_start._entry_ptr, ptr @sd_start._entry_ptr.14, ptr @sd_driver, ptr @.str, ptr @.str.1, ptr @device_table, ptr @sd_desc, ptr @vga_mode, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @sd_init_controls._key, ptr @.str.7, ptr @sd_ctrl_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_mode to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_r._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_isoc_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_isoc_irq._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_isoc_irq._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_isoc_irq._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_isoc_irq._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_isoc_irq._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_isoc_irq._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_isoc_irq._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_isoc_irq._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @sd_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sd_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb_deregister(ptr noundef nonnull @sd_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_probe(ptr noundef %intf, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gspca_dev_probe(ptr noundef %intf, ptr noundef %id, ptr noundef nonnull @sd_desc, i32 noundef 2616, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_disconnect(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gspca_suspend(ptr noundef, [1 x i32]) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gspca_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gspca_dev_probe(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sd_config(ptr nocapture noundef writeonly %gspca_dev, ptr nocapture noundef readnone %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %0 = ptrtoint ptr %cam to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @vga_mode, ptr %cam, align 4
  %nmodes = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %1 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 3, ptr %nmodes, align 4
  %no_urb_create = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 5
  %2 = ptrtoint ptr %no_urb_create to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %no_urb_create, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init(ptr nocapture noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @msleep(i32 noundef 6000) #6
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %dev1.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.014 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %0 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %for.body.reg_r.exit_crit_edge, label %if.end.i

for.body.reg_r.exit_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_r.exit

if.end.i:                                         ; preds = %for.body
  %2 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %5, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %6 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or2.i, i8 noundef zeroext 3, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef %7, i16 noundef zeroext 2, i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end.i, label %if.end.i.reg_r.exit_crit_edge

if.end.i.reg_r.exit_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_r.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %call3.i) #9
  %8 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call3.i, ptr %usb_err.i, align 8
  %9 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %usb_buf.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 0, ptr %10, align 1
  br label %reg_r.exit

reg_r.exit:                                       ; preds = %do.end.i, %if.end.i.reg_r.exit_crit_edge, %for.body.reg_r.exit_crit_edge
  %12 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usb_buf.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %15)
  %cmp1 = icmp eq i8 %15, 3
  br i1 %cmp1, label %reg_r.exit.for.end_crit_edge, label %if.end

reg_r.exit.for.end_crit_edge:                     ; preds = %reg_r.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end:                                           ; preds = %reg_r.exit
  tail call void @msleep(i32 noundef 100) #6
  %inc = add nuw nsw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, 20
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %reg_r.exit.for.end_crit_edge
  %16 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i8 = icmp slt i32 %17, 0
  br i1 %cmp.i8, label %for.end.reg_w.exit_crit_edge, label %if.end.i11

for.end.reg_w.exit_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit

if.end.i11:                                       ; preds = %for.end
  %18 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev1.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %shl.i.i10 = shl i32 %21, 8
  %or.i = or i32 %shl.i.i10, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %19, i32 noundef %or.i, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 13, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %do.end.i13, label %if.end.i11.reg_w.exit_crit_edge

if.end.i11.reg_w.exit_crit_edge:                  ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit

do.end.i13:                                       ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 13, i32 noundef %call2.i) #9
  %22 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call2.i, ptr %usb_err.i, align 8
  br label %reg_w.exit

reg_w.exit:                                       ; preds = %do.end.i13, %if.end.i11.reg_w.exit_crit_edge, %for.end.reg_w.exit_crit_edge
  %23 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %usb_err.i, align 8
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init_controls(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_handler = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8
  %ctrl_handler1 = getelementptr inbounds %struct.video_device, ptr %gspca_dev, i32 0, i32 9
  %0 = ptrtoint ptr %ctrl_handler1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ctrl_handler, ptr %ctrl_handler1, align 4
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 5, ptr noundef nonnull @sd_init_controls._key, ptr noundef nonnull @.str.7) #6
  %call2 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 9, i64 noundef 1, i64 noundef 4) #6
  %call3 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 9, i64 noundef 1, i64 noundef 4) #6
  %call4 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 9, i64 noundef 1, i64 noundef 4) #6
  %call5 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963802, i64 noundef 0, i64 noundef 33, i64 noundef 1, i64 noundef 25) #6
  %call6 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963803, i64 noundef 0, i64 noundef 9, i64 noundef 1, i64 noundef 4) #6
  %error = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8, i32 9
  %1 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #9
  %3 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %error, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_start(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %iface = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 31
  %2 = ptrtoint ptr %iface to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %iface, align 1
  %conv = zext i8 %3 to i32
  %call = tail call ptr @usb_ifnum_to_if(ptr noundef %1, i32 noundef %conv) #6
  %alt4 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 32
  %4 = ptrtoint ptr %alt4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %alt4, align 2
  %conv5 = zext i8 %5 to i32
  %call6 = tail call ptr @usb_altnum_to_altsetting(ptr noundef %call, i32 noundef %conv5) #6
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %call6, i32 0, i32 4
  %6 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp = icmp ult i8 %7, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %call6, i32 0, i32 3
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %8 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cam, align 4
  %curr_mode = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %10 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %curr_mode, align 1
  %idxprom = zext i8 %11 to i32
  %priv = getelementptr %struct.v4l2_pix_format, ptr %9, i32 %idxprom, i32 7
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %priv, align 4
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %14 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i = icmp slt i32 %15, 0
  br i1 %cmp.i, label %if.end11.cleanup_crit_edge, label %if.end.i

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end11
  %conv15 = trunc i32 %13 to i16
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %shl.i.i = shl i32 %19, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %17, i32 noundef %or.i, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext %conv15, i16 noundef zeroext 8, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %do.end.i, label %reg_w.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = and i32 %13, 65535
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %conv.i, i32 noundef 8, i32 noundef %call2.i) #9
  %20 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call2.i, ptr %usb_err.i, align 8
  br label %cleanup

reg_w.exit:                                       ; preds = %if.end.i
  %21 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i.i = icmp slt i32 %.pr, 0
  br i1 %cmp.i.i, label %reg_w.exit.cleanup_crit_edge, label %if.end.i.i

reg_w.exit.cleanup_crit_edge:                     ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %reg_w.exit
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 8
  %shl.i.i.i = shl i32 %25, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %23, i32 noundef %or.i.i, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 11, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %do.end.i.i, label %konica_stream_on.exit

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef 11, i32 noundef %call2.i.i) #9
  %26 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call2.i.i, ptr %usb_err.i, align 8
  br label %cleanup

konica_stream_on.exit:                            ; preds = %if.end.i.i
  %27 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr117.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr117.pr)
  %tobool16.not = icmp eq i32 %.pr117.pr, 0
  br i1 %tobool16.not, label %konica_stream_on.exit.for.body_crit_edge, label %konica_stream_on.exit.cleanup_crit_edge

konica_stream_on.exit.cleanup_crit_edge:          ; preds = %konica_stream_on.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

konica_stream_on.exit.for.body_crit_edge:         ; preds = %konica_stream_on.exit
  br label %for.body

for.body:                                         ; preds = %for.inc63.for.body_crit_edge, %konica_stream_on.exit.for.body_crit_edge
  %n.0125 = phi i32 [ %inc64, %for.inc63.for.body_crit_edge ], [ 0, %konica_stream_on.exit.for.body_crit_edge ]
  %and = and i32 %n.0125, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  %28 = xor i32 %and, 1
  %29 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %endpoint, align 4
  %wMaxPacketSize26 = getelementptr %struct.usb_host_endpoint, ptr %30, i32 %28, i32 0, i32 4
  %31 = ptrtoint ptr %wMaxPacketSize26 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %wMaxPacketSize26, align 4
  %33 = tail call i16 @llvm.bswap.i16(i16 %32)
  %conv27 = zext i16 %33 to i32
  %call28 = tail call ptr @usb_alloc_urb(i32 noundef 32, i32 noundef 3264) #6
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %for.body.cleanup_crit_edge, label %if.end31

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end31:                                         ; preds = %for.body
  %arrayidx33 = getelementptr %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 11, i32 %n.0125
  %34 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call28, ptr %arrayidx33, align 4
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  %mul = shl nuw nsw i32 %conv27, 5
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %call28, i32 0, i32 15
  %call35 = tail call ptr @usb_alloc_coherent(ptr noundef %36, i32 noundef %mul, i32 noundef 3264, ptr noundef %transfer_dma) #6
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %call28, i32 0, i32 14
  %37 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call35, ptr %transfer_buffer, align 4
  %cmp37 = icmp eq ptr %call35, null
  br i1 %cmp37, label %do.end42, label %if.end45

do.end42:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #9
  br label %cleanup

if.end45:                                         ; preds = %if.end31
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  %dev47 = getelementptr inbounds %struct.urb, ptr %call28, i32 0, i32 8
  %40 = ptrtoint ptr %dev47 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %dev47, align 4
  %context = getelementptr inbounds %struct.urb, ptr %call28, i32 0, i32 27
  %41 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %gspca_dev, ptr %context, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %call28, i32 0, i32 19
  %42 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %mul, ptr %transfer_buffer_length, align 4
  %43 = load ptr, ptr %dev, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 8
  %shl.i = shl i32 %45, 8
  %or.i115 = select i1 %tobool22.not, i32 4259968, i32 4227200
  %or54 = or i32 %or.i115, %shl.i
  %pipe = getelementptr inbounds %struct.urb, ptr %call28, i32 0, i32 10
  %46 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or54, ptr %pipe, align 4
  %transfer_flags = getelementptr inbounds %struct.urb, ptr %call28, i32 0, i32 13
  %47 = ptrtoint ptr %transfer_flags to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 6, ptr %transfer_flags, align 4
  %interval = getelementptr inbounds %struct.urb, ptr %call28, i32 0, i32 25
  %48 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %interval, align 4
  %complete = getelementptr inbounds %struct.urb, ptr %call28, i32 0, i32 28
  %49 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @sd_isoc_irq, ptr %complete, align 4
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %call28, i32 0, i32 24
  %50 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 32, ptr %number_of_packets, align 4
  br label %for.body58

for.body58:                                       ; preds = %for.body58.for.body58_crit_edge, %if.end45
  %i.0124 = phi i32 [ 0, %if.end45 ], [ %inc, %for.body58.for.body58_crit_edge ]
  %arrayidx59 = getelementptr %struct.urb, ptr %call28, i32 0, i32 29, i32 %i.0124
  %length = getelementptr %struct.urb, ptr %call28, i32 0, i32 29, i32 %i.0124, i32 1
  %51 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv27, ptr %length, align 4
  %mul60 = mul nuw nsw i32 %i.0124, %conv27
  %52 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %mul60, ptr %arrayidx59, align 4
  %inc = add nuw nsw i32 %i.0124, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc63, label %for.body58.for.body58_crit_edge

for.body58.for.body58_crit_edge:                  ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body58

for.inc63:                                        ; preds = %for.body58
  %inc64 = add nuw nsw i32 %n.0125, 1
  %exitcond126.not = icmp eq i32 %inc64, 4
  br i1 %exitcond126.not, label %for.inc63.cleanup_crit_edge, label %for.inc63.for.body_crit_edge

for.inc63.for.body_crit_edge:                     ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc63.cleanup_crit_edge:                      ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc63.cleanup_crit_edge, %do.end42, %for.body.cleanup_crit_edge, %konica_stream_on.exit.cleanup_crit_edge, %do.end.i.i, %reg_w.exit.cleanup_crit_edge, %do.end.i, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %do.end42 ], [ -5, %do.end ], [ -19, %if.end.cleanup_crit_edge ], [ %.pr117.pr, %konica_stream_on.exit.cleanup_crit_edge ], [ %call2.i.i, %do.end.i.i ], [ %.pr, %reg_w.exit.cleanup_crit_edge ], [ %15, %if.end11.cleanup_crit_edge ], [ %call2.i, %do.end.i ], [ 0, %for.inc63.cleanup_crit_edge ], [ -12, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_stopN(ptr nocapture noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i.i = icmp slt i32 %1, 0
  br i1 %cmp.i.i, label %entry.konica_stream_off.exit_crit_edge, label %if.end.i.i

entry.konica_stream_off.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %konica_stream_off.exit

if.end.i.i:                                       ; preds = %entry
  %dev1.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %2 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i.i.i = shl i32 %5, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i.i, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 11, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %do.end.i.i, label %if.end.i.i.konica_stream_off.exit_crit_edge

if.end.i.i.konica_stream_off.exit_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %konica_stream_off.exit

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 11, i32 noundef %call2.i.i) #9
  %6 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call2.i.i, ptr %usb_err.i.i, align 8
  br label %konica_stream_off.exit

konica_stream_off.exit:                           ; preds = %do.end.i.i, %if.end.i.i.konica_stream_off.exit_crit_edge, %entry.konica_stream_off.exit_crit_edge
  %snapshot_pressed = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %7 = ptrtoint ptr %snapshot_pressed to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %snapshot_pressed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %konica_stream_off.exit.if.end_crit_edge, label %if.then

konica_stream_off.exit.if.end_crit_edge:          ; preds = %konica_stream_off.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %konica_stream_off.exit
  call void @__sanitizer_cov_trace_pc() #8
  %input_dev = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 4
  %9 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %10, i32 noundef 1, i32 noundef 212, i32 noundef 0) #6
  %11 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %12, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %13 = ptrtoint ptr %snapshot_pressed to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %snapshot_pressed, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %konica_stream_off.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %usb_err = getelementptr i8, ptr %1, i32 1000
  %2 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %usb_err, align 8
  %streaming = getelementptr i8, ptr %1, i32 238
  %3 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %streaming, align 2, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 8
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %if.end.sw.epilog_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963777, label %sw.bb1
    i32 9963778, label %sw.bb4
    i32 9963802, label %sw.bb7
    i32 9963803, label %sw.bb10
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %8 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.i = icmp slt i32 %9, 0
  br i1 %cmp.i.i, label %sw.bb.sw.epilog_crit_edge, label %if.end.i.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i.i:                                       ; preds = %sw.bb
  %dev1.i.i = getelementptr i8, ptr %1, i32 -100
  %10 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i.i.i = shl i32 %13, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or.i.i, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 11, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %do.end.i.i, label %konica_stream_off.exit

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 11, i32 noundef %call2.i.i) #9
  br label %sw.epilog.sink.split

konica_stream_off.exit:                           ; preds = %if.end.i.i
  %14 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %usb_err, align 8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i = icmp slt i32 %.pr, 0
  br i1 %cmp.i, label %konica_stream_off.exit.sw.epilog_crit_edge, label %if.end.i

konica_stream_off.exit.sw.epilog_crit_edge:       ; preds = %konica_stream_off.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i:                                         ; preds = %konica_stream_off.exit
  %conv = trunc i32 %16 to i16
  %17 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev1.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %shl.i.i = shl i32 %20, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %18, i32 noundef %or.i, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext %conv, i16 noundef zeroext 2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %do.end.i, label %reg_w.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = and i32 %16, 65535
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %conv.i, i32 noundef 2, i32 noundef %call2.i) #9
  br label %sw.epilog.sink.split

reg_w.exit:                                       ; preds = %if.end.i
  %21 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr186.pr = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr186.pr)
  %cmp.i.i38 = icmp slt i32 %.pr186.pr, 0
  br i1 %cmp.i.i38, label %reg_w.exit.sw.epilog_crit_edge, label %if.end.i.i44

reg_w.exit.sw.epilog_crit_edge:                   ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i.i44:                                     ; preds = %reg_w.exit
  %22 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev1.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 8
  %shl.i.i.i40 = shl i32 %25, 8
  %or.i.i41 = or i32 %shl.i.i.i40, -2147483648
  %call2.i.i42 = tail call i32 @usb_control_msg(ptr noundef %23, i32 noundef %or.i.i41, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 11, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i42)
  %cmp3.i.i43 = icmp slt i32 %call2.i.i42, 0
  br i1 %cmp3.i.i43, label %do.end.i.i46, label %if.end.i.i44.sw.epilog_crit_edge

if.end.i.i44.sw.epilog_crit_edge:                 ; preds = %if.end.i.i44
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end.i.i46:                                     ; preds = %if.end.i.i44
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i.i45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef 11, i32 noundef %call2.i.i42) #9
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %if.end
  %26 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i.i48 = icmp slt i32 %27, 0
  br i1 %cmp.i.i48, label %sw.bb1.sw.epilog_crit_edge, label %if.end.i.i54

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i.i54:                                     ; preds = %sw.bb1
  %dev1.i.i49 = getelementptr i8, ptr %1, i32 -100
  %28 = ptrtoint ptr %dev1.i.i49 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev1.i.i49, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 8
  %shl.i.i.i50 = shl i32 %31, 8
  %or.i.i51 = or i32 %shl.i.i.i50, -2147483648
  %call2.i.i52 = tail call i32 @usb_control_msg(ptr noundef %29, i32 noundef %or.i.i51, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 11, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i52)
  %cmp3.i.i53 = icmp slt i32 %call2.i.i52, 0
  br i1 %cmp3.i.i53, label %do.end.i.i56, label %konica_stream_off.exit57

do.end.i.i56:                                     ; preds = %if.end.i.i54
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i.i55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 11, i32 noundef %call2.i.i52) #9
  br label %sw.epilog.sink.split

konica_stream_off.exit57:                         ; preds = %if.end.i.i54
  %32 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pr188 = load i32, ptr %usb_err, align 8
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %33 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr188)
  %cmp.i59 = icmp slt i32 %.pr188, 0
  br i1 %cmp.i59, label %konica_stream_off.exit57.sw.epilog_crit_edge, label %if.end.i65

konica_stream_off.exit57.sw.epilog_crit_edge:     ; preds = %konica_stream_off.exit57
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i65:                                       ; preds = %konica_stream_off.exit57
  %conv3 = trunc i32 %34 to i16
  %35 = ptrtoint ptr %dev1.i.i49 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev1.i.i49, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 8
  %shl.i.i61 = shl i32 %38, 8
  %or.i62 = or i32 %shl.i.i61, -2147483648
  %call2.i63 = tail call i32 @usb_control_msg(ptr noundef %36, i32 noundef %or.i62, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext %conv3, i16 noundef zeroext 4, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i63)
  %cmp3.i64 = icmp slt i32 %call2.i63, 0
  br i1 %cmp3.i64, label %do.end.i68, label %reg_w.exit69

do.end.i68:                                       ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i66 = and i32 %34, 65535
  %call6.i67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %conv.i66, i32 noundef 4, i32 noundef %call2.i63) #9
  br label %sw.epilog.sink.split

reg_w.exit69:                                     ; preds = %if.end.i65
  %39 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pr192.pr = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr192.pr)
  %cmp.i.i71 = icmp slt i32 %.pr192.pr, 0
  br i1 %cmp.i.i71, label %reg_w.exit69.sw.epilog_crit_edge, label %if.end.i.i77

reg_w.exit69.sw.epilog_crit_edge:                 ; preds = %reg_w.exit69
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i.i77:                                     ; preds = %reg_w.exit69
  %40 = ptrtoint ptr %dev1.i.i49 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev1.i.i49, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 8
  %shl.i.i.i73 = shl i32 %43, 8
  %or.i.i74 = or i32 %shl.i.i.i73, -2147483648
  %call2.i.i75 = tail call i32 @usb_control_msg(ptr noundef %41, i32 noundef %or.i.i74, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 11, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i75)
  %cmp3.i.i76 = icmp slt i32 %call2.i.i75, 0
  br i1 %cmp3.i.i76, label %do.end.i.i79, label %if.end.i.i77.sw.epilog_crit_edge

if.end.i.i77.sw.epilog_crit_edge:                 ; preds = %if.end.i.i77
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end.i.i79:                                     ; preds = %if.end.i.i77
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i.i78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef 11, i32 noundef %call2.i.i75) #9
  br label %sw.epilog.sink.split

sw.bb4:                                           ; preds = %if.end
  %44 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.i.i82 = icmp slt i32 %45, 0
  br i1 %cmp.i.i82, label %sw.bb4.sw.epilog_crit_edge, label %if.end.i.i88

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i.i88:                                     ; preds = %sw.bb4
  %dev1.i.i83 = getelementptr i8, ptr %1, i32 -100
  %46 = ptrtoint ptr %dev1.i.i83 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev1.i.i83, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 8
  %shl.i.i.i84 = shl i32 %49, 8
  %or.i.i85 = or i32 %shl.i.i.i84, -2147483648
  %call2.i.i86 = tail call i32 @usb_control_msg(ptr noundef %47, i32 noundef %or.i.i85, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 11, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i86)
  %cmp3.i.i87 = icmp slt i32 %call2.i.i86, 0
  br i1 %cmp3.i.i87, label %do.end.i.i90, label %konica_stream_off.exit91

do.end.i.i90:                                     ; preds = %if.end.i.i88
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i.i89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 11, i32 noundef %call2.i.i86) #9
  br label %sw.epilog.sink.split

konica_stream_off.exit91:                         ; preds = %if.end.i.i88
  %50 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pr194 = load i32, ptr %usb_err, align 8
  %val5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %51 = ptrtoint ptr %val5 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %val5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr194)
  %cmp.i93 = icmp slt i32 %.pr194, 0
  br i1 %cmp.i93, label %konica_stream_off.exit91.sw.epilog_crit_edge, label %if.end.i99

konica_stream_off.exit91.sw.epilog_crit_edge:     ; preds = %konica_stream_off.exit91
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i99:                                       ; preds = %konica_stream_off.exit91
  %conv6 = trunc i32 %52 to i16
  %53 = ptrtoint ptr %dev1.i.i83 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev1.i.i83, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 8
  %shl.i.i95 = shl i32 %56, 8
  %or.i96 = or i32 %shl.i.i95, -2147483648
  %call2.i97 = tail call i32 @usb_control_msg(ptr noundef %54, i32 noundef %or.i96, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext %conv6, i16 noundef zeroext 5, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i97)
  %cmp3.i98 = icmp slt i32 %call2.i97, 0
  br i1 %cmp3.i98, label %do.end.i102, label %reg_w.exit103

do.end.i102:                                      ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i100 = and i32 %52, 65535
  %call6.i101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %conv.i100, i32 noundef 5, i32 noundef %call2.i97) #9
  br label %sw.epilog.sink.split

reg_w.exit103:                                    ; preds = %if.end.i99
  %57 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pr198.pr = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr198.pr)
  %cmp.i.i105 = icmp slt i32 %.pr198.pr, 0
  br i1 %cmp.i.i105, label %reg_w.exit103.sw.epilog_crit_edge, label %if.end.i.i111

reg_w.exit103.sw.epilog_crit_edge:                ; preds = %reg_w.exit103
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i.i111:                                    ; preds = %reg_w.exit103
  %58 = ptrtoint ptr %dev1.i.i83 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev1.i.i83, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 8
  %shl.i.i.i107 = shl i32 %61, 8
  %or.i.i108 = or i32 %shl.i.i.i107, -2147483648
  %call2.i.i109 = tail call i32 @usb_control_msg(ptr noundef %59, i32 noundef %or.i.i108, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 11, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i109)
  %cmp3.i.i110 = icmp slt i32 %call2.i.i109, 0
  br i1 %cmp3.i.i110, label %do.end.i.i113, label %if.end.i.i111.sw.epilog_crit_edge

if.end.i.i111.sw.epilog_crit_edge:                ; preds = %if.end.i.i111
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end.i.i113:                                    ; preds = %if.end.i.i111
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i.i112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef 11, i32 noundef %call2.i.i109) #9
  br label %sw.epilog.sink.split

sw.bb7:                                           ; preds = %if.end
  %62 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp.i.i116 = icmp slt i32 %63, 0
  br i1 %cmp.i.i116, label %sw.bb7.sw.epilog_crit_edge, label %if.end.i.i122

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i.i122:                                    ; preds = %sw.bb7
  %dev1.i.i117 = getelementptr i8, ptr %1, i32 -100
  %64 = ptrtoint ptr %dev1.i.i117 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev1.i.i117, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 8
  %shl.i.i.i118 = shl i32 %67, 8
  %or.i.i119 = or i32 %shl.i.i.i118, -2147483648
  %call2.i.i120 = tail call i32 @usb_control_msg(ptr noundef %65, i32 noundef %or.i.i119, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 11, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i120)
  %cmp3.i.i121 = icmp slt i32 %call2.i.i120, 0
  br i1 %cmp3.i.i121, label %do.end.i.i124, label %konica_stream_off.exit125

do.end.i.i124:                                    ; preds = %if.end.i.i122
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i.i123 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 11, i32 noundef %call2.i.i120) #9
  br label %sw.epilog.sink.split

konica_stream_off.exit125:                        ; preds = %if.end.i.i122
  %68 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pr200 = load i32, ptr %usb_err, align 8
  %val8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %69 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %val8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr200)
  %cmp.i127 = icmp slt i32 %.pr200, 0
  br i1 %cmp.i127, label %konica_stream_off.exit125.sw.epilog_crit_edge, label %if.end.i133

konica_stream_off.exit125.sw.epilog_crit_edge:    ; preds = %konica_stream_off.exit125
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i133:                                      ; preds = %konica_stream_off.exit125
  %conv9 = trunc i32 %70 to i16
  %71 = ptrtoint ptr %dev1.i.i117 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev1.i.i117, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 8
  %shl.i.i129 = shl i32 %74, 8
  %or.i130 = or i32 %shl.i.i129, -2147483648
  %call2.i131 = tail call i32 @usb_control_msg(ptr noundef %72, i32 noundef %or.i130, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext %conv9, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i131)
  %cmp3.i132 = icmp slt i32 %call2.i131, 0
  br i1 %cmp3.i132, label %do.end.i136, label %reg_w.exit137

do.end.i136:                                      ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i134 = and i32 %70, 65535
  %call6.i135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %conv.i134, i32 noundef 1, i32 noundef %call2.i131) #9
  br label %sw.epilog.sink.split

reg_w.exit137:                                    ; preds = %if.end.i133
  %75 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %75)
  %.pr204.pr = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr204.pr)
  %cmp.i.i139 = icmp slt i32 %.pr204.pr, 0
  br i1 %cmp.i.i139, label %reg_w.exit137.sw.epilog_crit_edge, label %if.end.i.i145

reg_w.exit137.sw.epilog_crit_edge:                ; preds = %reg_w.exit137
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i.i145:                                    ; preds = %reg_w.exit137
  %76 = ptrtoint ptr %dev1.i.i117 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev1.i.i117, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 8
  %shl.i.i.i141 = shl i32 %79, 8
  %or.i.i142 = or i32 %shl.i.i.i141, -2147483648
  %call2.i.i143 = tail call i32 @usb_control_msg(ptr noundef %77, i32 noundef %or.i.i142, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 11, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i143)
  %cmp3.i.i144 = icmp slt i32 %call2.i.i143, 0
  br i1 %cmp3.i.i144, label %do.end.i.i147, label %if.end.i.i145.sw.epilog_crit_edge

if.end.i.i145.sw.epilog_crit_edge:                ; preds = %if.end.i.i145
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end.i.i147:                                    ; preds = %if.end.i.i145
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i.i146 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef 11, i32 noundef %call2.i.i143) #9
  br label %sw.epilog.sink.split

sw.bb10:                                          ; preds = %if.end
  %80 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp.i.i150 = icmp slt i32 %81, 0
  br i1 %cmp.i.i150, label %sw.bb10.sw.epilog_crit_edge, label %if.end.i.i156

sw.bb10.sw.epilog_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i.i156:                                    ; preds = %sw.bb10
  %dev1.i.i151 = getelementptr i8, ptr %1, i32 -100
  %82 = ptrtoint ptr %dev1.i.i151 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev1.i.i151, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %83, align 8
  %shl.i.i.i152 = shl i32 %85, 8
  %or.i.i153 = or i32 %shl.i.i.i152, -2147483648
  %call2.i.i154 = tail call i32 @usb_control_msg(ptr noundef %83, i32 noundef %or.i.i153, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 11, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i154)
  %cmp3.i.i155 = icmp slt i32 %call2.i.i154, 0
  br i1 %cmp3.i.i155, label %do.end.i.i158, label %konica_stream_off.exit159

do.end.i.i158:                                    ; preds = %if.end.i.i156
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i.i157 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 0, i32 noundef 11, i32 noundef %call2.i.i154) #9
  br label %sw.epilog.sink.split

konica_stream_off.exit159:                        ; preds = %if.end.i.i156
  %86 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %86)
  %.pr206 = load i32, ptr %usb_err, align 8
  %val11 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %87 = ptrtoint ptr %val11 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %val11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr206)
  %cmp.i161 = icmp slt i32 %.pr206, 0
  br i1 %cmp.i161, label %konica_stream_off.exit159.sw.epilog_crit_edge, label %if.end.i167

konica_stream_off.exit159.sw.epilog_crit_edge:    ; preds = %konica_stream_off.exit159
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i167:                                      ; preds = %konica_stream_off.exit159
  %conv12 = trunc i32 %88 to i16
  %89 = ptrtoint ptr %dev1.i.i151 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev1.i.i151, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %90, align 8
  %shl.i.i163 = shl i32 %92, 8
  %or.i164 = or i32 %shl.i.i163, -2147483648
  %call2.i165 = tail call i32 @usb_control_msg(ptr noundef %90, i32 noundef %or.i164, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext %conv12, i16 noundef zeroext 3, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i165)
  %cmp3.i166 = icmp slt i32 %call2.i165, 0
  br i1 %cmp3.i166, label %do.end.i170, label %reg_w.exit171

do.end.i170:                                      ; preds = %if.end.i167
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i168 = and i32 %88, 65535
  %call6.i169 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %conv.i168, i32 noundef 3, i32 noundef %call2.i165) #9
  br label %sw.epilog.sink.split

reg_w.exit171:                                    ; preds = %if.end.i167
  %93 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %93)
  %.pr210.pr = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr210.pr)
  %cmp.i.i173 = icmp slt i32 %.pr210.pr, 0
  br i1 %cmp.i.i173, label %reg_w.exit171.sw.epilog_crit_edge, label %if.end.i.i179

reg_w.exit171.sw.epilog_crit_edge:                ; preds = %reg_w.exit171
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i.i179:                                    ; preds = %reg_w.exit171
  %94 = ptrtoint ptr %dev1.i.i151 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev1.i.i151, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %95, align 8
  %shl.i.i.i175 = shl i32 %97, 8
  %or.i.i176 = or i32 %shl.i.i.i175, -2147483648
  %call2.i.i177 = tail call i32 @usb_control_msg(ptr noundef %95, i32 noundef %or.i.i176, i8 noundef zeroext 2, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 11, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i177)
  %cmp3.i.i178 = icmp slt i32 %call2.i.i177, 0
  br i1 %cmp3.i.i178, label %do.end.i.i181, label %if.end.i.i179.sw.epilog_crit_edge

if.end.i.i179.sw.epilog_crit_edge:                ; preds = %if.end.i.i179
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end.i.i181:                                    ; preds = %if.end.i.i179
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i.i180 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef 1, i32 noundef 11, i32 noundef %call2.i.i177) #9
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %do.end.i.i181, %do.end.i170, %do.end.i.i158, %do.end.i.i147, %do.end.i136, %do.end.i.i124, %do.end.i.i113, %do.end.i102, %do.end.i.i90, %do.end.i.i79, %do.end.i68, %do.end.i.i56, %do.end.i.i46, %do.end.i, %do.end.i.i
  %call2.i.i154.sink = phi i32 [ %call2.i.i154, %do.end.i.i158 ], [ %call2.i.i120, %do.end.i.i124 ], [ %call2.i.i86, %do.end.i.i90 ], [ %call2.i.i52, %do.end.i.i56 ], [ %call2.i.i, %do.end.i.i ], [ %call2.i165, %do.end.i170 ], [ %call2.i131, %do.end.i136 ], [ %call2.i97, %do.end.i102 ], [ %call2.i63, %do.end.i68 ], [ %call2.i, %do.end.i ], [ %call2.i.i177, %do.end.i.i181 ], [ %call2.i.i143, %do.end.i.i147 ], [ %call2.i.i109, %do.end.i.i113 ], [ %call2.i.i75, %do.end.i.i79 ], [ %call2.i.i42, %do.end.i.i46 ]
  %98 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %call2.i.i154.sink, ptr %usb_err, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.i.i179.sw.epilog_crit_edge, %reg_w.exit171.sw.epilog_crit_edge, %konica_stream_off.exit159.sw.epilog_crit_edge, %sw.bb10.sw.epilog_crit_edge, %if.end.i.i145.sw.epilog_crit_edge, %reg_w.exit137.sw.epilog_crit_edge, %konica_stream_off.exit125.sw.epilog_crit_edge, %sw.bb7.sw.epilog_crit_edge, %if.end.i.i111.sw.epilog_crit_edge, %reg_w.exit103.sw.epilog_crit_edge, %konica_stream_off.exit91.sw.epilog_crit_edge, %sw.bb4.sw.epilog_crit_edge, %if.end.i.i77.sw.epilog_crit_edge, %reg_w.exit69.sw.epilog_crit_edge, %konica_stream_off.exit57.sw.epilog_crit_edge, %sw.bb1.sw.epilog_crit_edge, %if.end.i.i44.sw.epilog_crit_edge, %reg_w.exit.sw.epilog_crit_edge, %konica_stream_off.exit.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %99 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %100, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ifnum_to_if(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_altnum_to_altsetting(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_isoc_irq(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %2 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp = icmp sgt i32 %2, 4
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.gspca_dev, ptr %1, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %streaming = getelementptr inbounds %struct.gspca_dev, ptr %1, i32 0, i32 17
  %3 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %streaming, align 2, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %do.end3.cleanup166_crit_edge, label %if.end5

do.end3.cleanup166_crit_edge:                     ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup166

if.end5:                                          ; preds = %do.end3
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %6, label %if.end11 [
    i32 0, label %if.end33
    i32 -108, label %if.end5.cleanup166_crit_edge
  ]

if.end5.cleanup166_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup166

if.end11:                                         ; preds = %if.end5
  %frozen = getelementptr inbounds %struct.gspca_dev, ptr %1, i32 0, i32 28
  %8 = ptrtoint ptr %frozen to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %frozen, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool12.not = icmp eq i8 %9, 0
  br i1 %tobool12.not, label %do.end17, label %if.end11.cleanup166_crit_edge

if.end11.cleanup166_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup166

do.end17:                                         ; preds = %if.end11
  %name20 = getelementptr inbounds %struct.gspca_dev, ptr %1, i32 0, i32 2, i32 4
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name20, i32 noundef %6) #9
  %call24 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %do.end29, label %do.end17.cleanup166_crit_edge

do.end17.cleanup166_crit_edge:                    ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup166

do.end29:                                         ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #8
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %call24) #9
  br label %cleanup166

if.end33:                                         ; preds = %if.end5
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %10 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %transfer_buffer_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %11)
  %cmp34 = icmp ugt i32 %11, 32
  %last_data_urb = getelementptr inbounds %struct.sd, ptr %1, i32 0, i32 1
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %last_data_urb to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %urb, ptr %last_data_urb, align 8
  br label %cleanup166

if.end36:                                         ; preds = %if.end33
  %13 = ptrtoint ptr %last_data_urb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %last_data_urb, align 8
  store ptr null, ptr %last_data_urb, align 8
  %tobool39.not = icmp eq ptr %14, null
  br i1 %tobool39.not, label %if.end36.do.end45_crit_edge, label %lor.lhs.false

if.end36.do.end45_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end45

lor.lhs.false:                                    ; preds = %if.end36
  %start_frame = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 23
  %15 = ptrtoint ptr %start_frame to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %start_frame, align 4
  %start_frame40 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 23
  %17 = ptrtoint ptr %start_frame40 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %start_frame40, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp41.not = icmp eq i32 %16, %18
  br i1 %cmp41.not, label %if.end51, label %lor.lhs.false.do.end45_crit_edge

lor.lhs.false.do.end45_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end45

do.end45:                                         ; preds = %lor.lhs.false.do.end45_crit_edge, %if.end36.do.end45_crit_edge
  %name48 = getelementptr inbounds %struct.gspca_dev, ptr %1, i32 0, i32 2, i32 4
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name48) #9
  br label %resubmit

if.end51:                                         ; preds = %lor.lhs.false
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 24
  %19 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %number_of_packets, align 4
  %number_of_packets52 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 24
  %21 = ptrtoint ptr %number_of_packets52 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %number_of_packets52, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp53.not = icmp eq i32 %20, %22
  br i1 %cmp53.not, label %for.cond.preheader, label %resubmit.thread

for.cond.preheader:                               ; preds = %if.end51
  %23 = ptrtoint ptr %number_of_packets52 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %number_of_packets52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp67248 = icmp sgt i32 %24, 0
  br i1 %cmp67248, label %for.body.lr.ph, label %for.cond.preheader.if.then138_crit_edge

for.cond.preheader.if.then138_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then138

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %name81 = getelementptr inbounds %struct.gspca_dev, ptr %1, i32 0, i32 2, i32 4
  %last_packet_type = getelementptr inbounds %struct.gspca_dev, ptr %1, i32 0, i32 15
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %transfer_buffer110 = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 14
  %snapshot_pressed = getelementptr inbounds %struct.sd, ptr %1, i32 0, i32 2
  %input_dev = getelementptr inbounds %struct.gspca_dev, ptr %1, i32 0, i32 4
  br label %for.body

resubmit.thread:                                  ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  %name60 = getelementptr inbounds %struct.gspca_dev, ptr %1, i32 0, i32 2, i32 4
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name60, i32 noundef %20, i32 noundef %22) #9
  br label %if.then138

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0249 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.urb, ptr %14, i32 0, i32 29, i32 %i.0249
  %status68 = getelementptr %struct.urb, ptr %14, i32 0, i32 29, i32 %i.0249, i32 3
  %25 = ptrtoint ptr %status68 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %status68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool69.not = icmp eq i32 %26, 0
  br i1 %tobool69.not, label %lor.lhs.false70, label %for.body.do.end78_crit_edge

for.body.do.end78_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end78

lor.lhs.false70:                                  ; preds = %for.body
  %arrayidx72 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0249
  %status73 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0249, i32 3
  %27 = ptrtoint ptr %status73 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %status73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool74.not = icmp eq i32 %28, 0
  br i1 %tobool74.not, label %if.end90, label %lor.lhs.false70.do.end78_crit_edge

lor.lhs.false70.do.end78_crit_edge:               ; preds = %lor.lhs.false70
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end78

do.end78:                                         ; preds = %lor.lhs.false70.do.end78_crit_edge, %for.body.do.end78_crit_edge
  %status88 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0249, i32 3
  %29 = ptrtoint ptr %status88 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %status88, align 4
  %call89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name81, i32 noundef %i.0249, i32 noundef %26, i32 noundef %30) #9
  %31 = ptrtoint ptr %last_packet_type to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %last_packet_type, align 4
  br label %for.inc

if.end90:                                         ; preds = %lor.lhs.false70
  %actual_length = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.0249, i32 2
  %32 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp93.not = icmp eq i32 %33, 1
  br i1 %cmp93.not, label %if.end107, label %do.end97

do.end97:                                         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  %call105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %name81, i32 noundef %33) #9
  %34 = ptrtoint ptr %last_packet_type to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %last_packet_type, align 4
  br label %for.inc

if.end107:                                        ; preds = %if.end90
  %35 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %transfer_buffer, align 4
  %37 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx72, align 4
  %add.ptr = getelementptr i8, ptr %36, i32 %38
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %add.ptr, align 1
  %conv = zext i8 %40 to i32
  %41 = ptrtoint ptr %transfer_buffer110 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %transfer_buffer110, align 4
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx, align 4
  %add.ptr114 = getelementptr i8, ptr %42, i32 %44
  %and = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool115.not = icmp eq i32 %and, 0
  br i1 %tobool115.not, label %if.else, label %if.then116

if.then116:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gspca_frame_add(ptr noundef %1, i32 noundef 3, ptr noundef null, i32 noundef 0) #6
  tail call void @gspca_frame_add(ptr noundef %1, i32 noundef 1, ptr noundef null, i32 noundef 0) #6
  br label %if.end133

if.else:                                          ; preds = %if.end107
  %and117 = lshr i8 %40, 6
  %and117.lobit = and i8 %and117, 1
  %45 = ptrtoint ptr %snapshot_pressed to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %snapshot_pressed, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %46, i8 %and117.lobit)
  %cmp122.not = icmp eq i8 %46, %and117.lobit
  br i1 %cmp122.not, label %if.else.if.end128_crit_edge, label %if.then124

if.else.if.end128_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end128

if.then124:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %input_dev, align 8
  %49 = zext i8 %and117.lobit to i32
  tail call void @input_event(ptr noundef %48, i32 noundef 1, i32 noundef 212, i32 noundef %49) #6
  %50 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %51, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %52 = ptrtoint ptr %snapshot_pressed to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %and117.lobit, ptr %snapshot_pressed, align 4
  br label %if.end128

if.end128:                                        ; preds = %if.then124, %if.else.if.end128_crit_edge
  %and129 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %if.end128.if.end133_crit_edge, label %if.end128.for.inc_crit_edge

if.end128.for.inc_crit_edge:                      ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end128.if.end133_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end133

if.end133:                                        ; preds = %if.end128.if.end133_crit_edge, %if.then116
  %actual_length136 = getelementptr %struct.urb, ptr %14, i32 0, i32 29, i32 %i.0249, i32 2
  %53 = ptrtoint ptr %actual_length136 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %actual_length136, align 4
  tail call void @gspca_frame_add(ptr noundef %1, i32 noundef 2, ptr noundef %add.ptr114, i32 noundef %54) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end133, %if.end128.for.inc_crit_edge, %do.end97, %do.end78
  %inc = add nuw nsw i32 %i.0249, 1
  %55 = ptrtoint ptr %number_of_packets52 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %number_of_packets52, align 4
  %cmp67 = icmp slt i32 %inc, %56
  br i1 %cmp67, label %for.inc.for.body_crit_edge, label %for.inc.resubmit_crit_edge

for.inc.resubmit_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %resubmit

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

resubmit:                                         ; preds = %for.inc.resubmit_crit_edge, %do.end45
  br i1 %tobool39.not, label %resubmit.if.end152_crit_edge, label %resubmit.if.then138_crit_edge

resubmit.if.then138_crit_edge:                    ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then138

resubmit.if.end152_crit_edge:                     ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end152

if.then138:                                       ; preds = %resubmit.if.then138_crit_edge, %resubmit.thread, %for.cond.preheader.if.then138_crit_edge
  %call139 = tail call i32 @usb_submit_urb(ptr noundef nonnull %14, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %cmp140 = icmp slt i32 %call139, 0
  br i1 %cmp140, label %do.end145, label %if.then138.if.end152_crit_edge

if.then138.if.end152_crit_edge:                   ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end152

do.end145:                                        ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #8
  %name148 = getelementptr inbounds %struct.gspca_dev, ptr %1, i32 0, i32 2, i32 4
  %call150 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name148, i32 noundef %call139) #9
  br label %if.end152

if.end152:                                        ; preds = %do.end145, %if.then138.if.end152_crit_edge, %resubmit.if.end152_crit_edge
  %call153 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %cmp154 = icmp slt i32 %call153, 0
  br i1 %cmp154, label %do.end159, label %if.end152.cleanup166_crit_edge

if.end152.cleanup166_crit_edge:                   ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup166

do.end159:                                        ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #8
  %name162 = getelementptr inbounds %struct.gspca_dev, ptr %1, i32 0, i32 2, i32 4
  %call164 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %name162, i32 noundef %call153) #9
  br label %cleanup166

cleanup166:                                       ; preds = %do.end159, %if.end152.cleanup166_crit_edge, %if.then35, %do.end29, %do.end17.cleanup166_crit_edge, %if.end11.cleanup166_crit_edge, %if.end5.cleanup166_crit_edge, %do.end3.cleanup166_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_frame_add(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !35, !36, !37, !38, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @__UNIQUE_ID_author303, !1, !"__UNIQUE_ID_author303", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/konica.c", i32 25, i32 1}
!2 = !{ptr @__UNIQUE_ID_description304, !3, !"__UNIQUE_ID_description304", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/konica.c", i32 26, i32 1}
!4 = !{ptr @__UNIQUE_ID_file305, !5, !"__UNIQUE_ID_file305", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/konica.c", i32 27, i32 1}
!6 = !{ptr @__UNIQUE_ID_license306, !5, !"__UNIQUE_ID_license306", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_gspca_konica__307_478_sd_driver_init6, !8, !"__initcall__kmod_gspca_konica__307_478_sd_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/gspca/konica.c", i32 478, i32 1}
!9 = !{ptr @__exitcall_sd_driver_exit, !8, !"__exitcall_sd_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/gspca/konica.c", i32 467, i32 10}
!13 = !{ptr @sd_driver, !14, !"sd_driver", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/gspca/konica.c", i32 466, i32 26}
!15 = !{ptr @sd_desc, !16, !"sd_desc", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/gspca/konica.c", i32 439, i32 29}
!17 = !{ptr @vga_mode, !18, !"vga_mode", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/gspca/konica.c", i32 57, i32 37}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/gspca/konica.c", i32 115, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @reg_r._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @reg_r._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/gspca/konica.c", i32 93, i32 3}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @reg_w._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @reg_w._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @sd_init_controls._key, !31, !"_key", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/gspca/konica.c", i32 417, i32 2}
!32 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/usb/gspca/konica.c", i32 432, i32 3}
!35 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @sd_init_controls._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @sd_init_controls._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @sd_ctrl_ops, !39, !"sd_ctrl_ops", i1 false, i1 false}
!39 = !{!"../drivers/media/usb/gspca/konica.c", i32 408, i32 35}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/usb/gspca/konica.c", i32 179, i32 3}
!42 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @sd_start._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @sd_start._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/gspca/konica.c", i32 214, i32 4}
!47 = !{ptr @sd_start._entry.12, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @sd_start._entry_ptr.14, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/usb/gspca/konica.c", i32 262, i32 2}
!51 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @sd_isoc_irq._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @sd_isoc_irq._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/gspca/konica.c", i32 273, i32 3}
!56 = !{ptr @sd_isoc_irq._entry.17, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @sd_isoc_irq._entry_ptr.19, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/usb/gspca/konica.c", i32 276, i32 4}
!60 = !{ptr @sd_isoc_irq._entry.20, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @sd_isoc_irq._entry_ptr.22, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/usb/gspca/konica.c", i32 291, i32 3}
!64 = !{ptr @sd_isoc_irq._entry.23, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @sd_isoc_irq._entry_ptr.25, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/gspca/konica.c", i32 296, i32 3}
!68 = !{ptr @sd_isoc_irq._entry.26, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @sd_isoc_irq._entry_ptr.28, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/usb/gspca/konica.c", i32 305, i32 4}
!72 = !{ptr @sd_isoc_irq._entry.29, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @sd_isoc_irq._entry_ptr.31, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/usb/gspca/konica.c", i32 314, i32 4}
!76 = !{ptr @sd_isoc_irq._entry.32, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @sd_isoc_irq._entry_ptr.34, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/usb/gspca/konica.c", i32 360, i32 4}
!80 = !{ptr @sd_isoc_irq._entry.35, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @sd_isoc_irq._entry_ptr.37, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/usb/gspca/konica.c", i32 365, i32 3}
!84 = !{ptr @sd_isoc_irq._entry.38, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @sd_isoc_irq._entry_ptr.40, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @device_table, !87, !"device_table", i1 false, i1 false}
!87 = !{!"../drivers/media/usb/gspca/konica.c", i32 452, i32 35}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{i8 0, i8 2}
