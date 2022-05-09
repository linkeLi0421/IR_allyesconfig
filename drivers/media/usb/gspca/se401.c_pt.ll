; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/se401.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/se401.c"
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
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.102, i32, i32 }
%union.anon.102 = type { i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.sd = type { %struct.gspca_dev, %struct.anon.108, i8, [14 x %struct.v4l2_pix_format], i32, i32, [1024 x i8], i8, i8, i8, i8, i32, i32 }
%struct.anon.108 = type { ptr, ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_author303 = internal constant [55 x i8] c"gspca_se401.author=Hans de Goede <hdegoede@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [40 x i8] c"gspca_se401.description=Endpoints se401\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [53 x i8] c"gspca_se401.file=drivers/media/usb/gspca/gspca_se401\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [24 x i8] c"gspca_se401.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_gspca_se401__307_730_sd_driver_init6 = internal global ptr @sd_driver_init, section ".initcall6.init", align 4
@sd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @sd_probe, ptr @gspca_disconnect, ptr null, ptr @gspca_suspend, ptr @gspca_resume, ptr @gspca_resume, ptr @sd_pre_reset, ptr @sd_post_reset, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sd_driver_exit = internal global ptr @sd_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gspca_se401\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"se401\00", [26 x i8] zeroinitializer }, align 32
@device_table = internal constant { [6 x %struct.usb_device_id], [48 x i8] } { [6 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1000, i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1137, i16 779, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1149, i16 20481, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1149, i16 20482, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1149, i16 20483, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sd_desc = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str.1, ptr @sd_config, ptr @sd_init, ptr @sd_init_controls, ptr null, ptr @sd_start, ptr @sd_pkt_scan, ptr @sd_isoc_init, ptr null, ptr @sd_stopN, ptr null, ptr @sd_dq_callback, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sd_int_pkt_scan, i8 0 }, [36 x i8] zeroinitializer }, align 32
@sd_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013gspca_se401: Wrong descriptor type\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sd_config\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/media/usb/gspca/se401.c\00", [32 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr = internal global ptr @sd_config._entry, section ".printk_index", align 4
@sd_config._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013gspca_se401: Bayer format not supported!\0A\00", [52 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr.7 = internal global ptr @sd_config._entry.5, section ".printk_index", align 4
@sd_config._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016gspca_se401: ExtraFeatures: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr.10 = internal global ptr @sd_config._entry.8, section ".printk_index", align 4
@sd_config._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013gspca_se401: Too many frame sizes\0A\00", [59 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr.13 = internal global ptr @sd_config._entry.11, section ".printk_index", align 4
@sd_config._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016gspca_se401: Frame size: %dx%d bayer\0A\00", [56 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr.16 = internal global ptr @sd_config._entry.14, section ".printk_index", align 4
@sd_config._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016gspca_se401: Frame size: %dx%d 1/%dth janggu\0A\00", [48 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr.19 = internal global ptr @sd_config._entry.17, section ".printk_index", align 4
@se401_read_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013gspca_se401: read req failed req %#04x error %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"se401_read_req\00", [17 x i8] zeroinitializer }, align 32
@se401_read_req._entry_ptr = internal global ptr @se401_read_req._entry, section ".printk_index", align 4
@se401_write_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013gspca_se401: write req failed req %#04x val %#04x error %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"se401_write_req\00", [16 x i8] zeroinitializer }, align 32
@se401_write_req._entry_ptr = internal global ptr @se401_write_req._entry, section ".printk_index", align 4
@sd_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"se401:650:(hdl)->_lock\00", [41 x i8] zeroinitializer }, align 32
@sd_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @sd_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@sd_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 664, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013gspca_se401: Could not initialize controls\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sd_init_controls\00", [47 x i8] zeroinitializer }, align 32
@sd_init_controls._entry_ptr = internal global ptr @sd_init_controls._entry, section ".printk_index", align 4
@se401_set_feature._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013gspca_se401: set feature failed sel %#04x param %#04x error %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"se401_set_feature\00", [46 x i8] zeroinitializer }, align 32
@se401_set_feature._entry_ptr = internal global ptr @se401_set_feature._entry, section ".printk_index", align 4
@sd_pkt_scan_janggu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 506, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013gspca_se401: invalid packet len %d restarting stream\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sd_pkt_scan_janggu\00", [45 x i8] zeroinitializer }, align 32
@sd_pkt_scan_janggu._entry_ptr = internal global ptr @sd_pkt_scan_janggu._entry, section ".printk_index", align 4
@sd_pkt_scan_janggu._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.4, i32 510, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013gspca_se401: unknown frame info value restarting stream\0A\00", [37 x i8] zeroinitializer }, align 32
@sd_pkt_scan_janggu._entry_ptr.33 = internal global ptr @sd_pkt_scan_janggu._entry.31, section ".printk_index", align 4
@sd_pkt_scan_janggu._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.4, i32 535, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013gspca_se401: frame size %d expected %d\0A\00", [54 x i8] zeroinitializer }, align 32
@sd_pkt_scan_janggu._entry_ptr.36 = internal global ptr @sd_pkt_scan_janggu._entry.34, section ".printk_index", align 4
@se401_get_feature._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.4, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013gspca_se401: get feature failed sel %#04x error %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"se401_get_feature\00", [46 x i8] zeroinitializer }, align 32
@se401_get_feature._entry_ptr = internal global ptr @se401_get_feature._entry, section ".printk_index", align 4
@switch.table.sd_start = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 3, i16 128, i16 0, i16 130], [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 9963776, i64 9963793, i64 9963795]
@___asan_gen_.42 = private unnamed_addr constant [10 x i8] c"sd_driver\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 716, i32 26 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 730, i32 1 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 717, i32 10 }
@___asan_gen_.51 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 688, i32 35 }
@___asan_gen_.54 = private unnamed_addr constant [8 x i8] c"sd_desc\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 672, i32 29 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 232, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 237, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 242, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 246, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 285, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 292, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 101, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 76, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 650, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [12 x i8] c"sd_ctrl_ops\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 640, i32 35 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 664, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 126, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 505, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 510, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 534, i32 5 }
@___asan_gen_.165 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.172 = private constant [35 x i8] c"../drivers/media/usb/gspca/se401.c\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 151, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant [22 x i8] c"switch.table.sd_start\00", align 1
@llvm.compiler.used = appending global [66 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_sd_driver_exit, ptr @__initcall__kmod_gspca_se401__307_730_sd_driver_init6, ptr @sd_config._entry, ptr @sd_config._entry.11, ptr @sd_config._entry.14, ptr @sd_config._entry.17, ptr @sd_config._entry.5, ptr @sd_config._entry.8, ptr @sd_config._entry_ptr, ptr @sd_config._entry_ptr.10, ptr @sd_config._entry_ptr.13, ptr @sd_config._entry_ptr.16, ptr @sd_config._entry_ptr.19, ptr @sd_config._entry_ptr.7, ptr @sd_driver_exit, ptr @sd_init_controls._entry, ptr @sd_init_controls._entry_ptr, ptr @sd_pkt_scan_janggu._entry, ptr @sd_pkt_scan_janggu._entry.31, ptr @sd_pkt_scan_janggu._entry.34, ptr @sd_pkt_scan_janggu._entry_ptr, ptr @sd_pkt_scan_janggu._entry_ptr.33, ptr @sd_pkt_scan_janggu._entry_ptr.36, ptr @se401_get_feature._entry, ptr @se401_get_feature._entry_ptr, ptr @se401_read_req._entry, ptr @se401_read_req._entry_ptr, ptr @se401_set_feature._entry, ptr @se401_set_feature._entry_ptr, ptr @se401_write_req._entry, ptr @se401_write_req._entry_ptr, ptr @sd_driver, ptr @.str, ptr @.str.1, ptr @device_table, ptr @sd_desc, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @sd_init_controls._key, ptr @.str.24, ptr @sd_ctrl_ops, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @switch.table.sd_start], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @se401_read_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @se401_write_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @se401_set_feature._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_pkt_scan_janggu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_pkt_scan_janggu._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_pkt_scan_janggu._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @se401_get_feature._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sd_start to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @sd_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sd_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_deregister(ptr noundef nonnull @sd_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_probe(ptr noundef %intf, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gspca_dev_probe(ptr noundef %intf, ptr noundef %id, ptr noundef nonnull @sd_desc, i32 noundef 4336, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_disconnect(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gspca_suspend(ptr noundef, [1 x i32]) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gspca_resume(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sd_pre_reset(ptr nocapture noundef readnone %intf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sd_post_reset(ptr nocapture noundef readnone %intf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gspca_dev_probe(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_config(ptr noundef %gspca_dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %widths = alloca [14 x i32], align 4
  %heights = alloca [14 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cam1 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %0 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb_buf, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %widths) #8
  %2 = call ptr @memset(ptr %widths, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %heights) #8
  %3 = call ptr @memset(ptr %heights, i32 255, i32 56)
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %4 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp slt i32 %5, 0
  br i1 %cmp.i, label %entry.if.end.i303_crit_edge, label %if.end.i

entry.if.end.i303_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i303

if.end.i:                                         ; preds = %entry
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i.i = shl i32 %9, 8
  %or2.i = or i32 %shl.i.i, -2147483520
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or2.i, i8 noundef zeroext 6, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %1, i16 noundef zeroext 64, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.then6.i, label %if.end.i.se401_read_req.exit_crit_edge

if.end.i.se401_read_req.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %se401_read_req.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call3.i, ptr %usb_err.i, align 8
  %11 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usb_buf, align 4
  %13 = call ptr @memset(ptr %12, i32 0, i32 64)
  br label %se401_read_req.exit

se401_read_req.exit:                              ; preds = %if.then6.i, %if.end.i.se401_read_req.exit_crit_edge
  %14 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not = icmp eq i32 %.pr, 0
  br i1 %tobool.not, label %se401_read_req.exit.if.end.i310_crit_edge, label %se401_read_req.exit.if.end.i303_crit_edge

se401_read_req.exit.if.end.i303_crit_edge:        ; preds = %se401_read_req.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i303

se401_read_req.exit.if.end.i310_crit_edge:        ; preds = %se401_read_req.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i310

if.end.i303:                                      ; preds = %se401_read_req.exit.if.end.i303_crit_edge, %entry.if.end.i303_crit_edge
  %dev = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %call = tail call i32 @usb_reset_device(ptr noundef %16) #8
  %17 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %usb_err.i, align 8
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %shl.i.i298 = shl i32 %21, 8
  %or2.i299 = or i32 %shl.i.i298, -2147483520
  %22 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %usb_buf, align 4
  %call3.i301 = tail call i32 @usb_control_msg(ptr noundef %19, i32 noundef %or2.i299, i8 noundef zeroext 6, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %23, i16 noundef zeroext 64, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i301)
  %cmp4.i302 = icmp slt i32 %call3.i301, 0
  br i1 %cmp4.i302, label %if.then6.i304, label %if.end.i303.if.end_crit_edge

if.end.i303.if.end_crit_edge:                     ; preds = %if.end.i303
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then6.i304:                                    ; preds = %if.end.i303
  call void @__sanitizer_cov_trace_pc() #10
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef 6, i32 noundef %call3.i301) #11
  %24 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call3.i301, ptr %usb_err.i, align 8
  %25 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %usb_buf, align 4
  %27 = call ptr @memset(ptr %26, i32 0, i32 64)
  br label %if.end

if.end:                                           ; preds = %if.then6.i304, %if.end.i303.if.end_crit_edge
  %28 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr324 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr324)
  %cmp.i307 = icmp slt i32 %.pr324, 0
  br i1 %cmp.i307, label %if.end.cleanup_crit_edge, label %if.end.if.end.i310_crit_edge

if.end.if.end.i310_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i310

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i310:                                      ; preds = %if.end.if.end.i310_crit_edge, %se401_read_req.exit.if.end.i310_crit_edge
  %dev.i308 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %29 = ptrtoint ptr %dev.i308 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i308, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 8
  %shl.i.i309 = shl i32 %32, 8
  %or.i = or i32 %shl.i.i309, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %30, i32 noundef %or.i, i8 noundef zeroext 87, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.then5.i, label %se401_write_req.exit

if.then5.i:                                       ; preds = %if.end.i310
  call void @__sanitizer_cov_trace_pc() #10
  %call9.i311 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef 87, i32 noundef 0, i32 noundef %call2.i) #11
  %33 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call2.i, ptr %usb_err.i, align 8
  br label %cleanup

se401_write_req.exit:                             ; preds = %if.end.i310
  %34 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pr326 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr326)
  %tobool4.not = icmp eq i32 %.pr326, 0
  br i1 %tobool4.not, label %if.end7, label %se401_write_req.exit.cleanup_crit_edge

se401_write_req.exit.cleanup_crit_edge:           ; preds = %se401_write_req.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %se401_write_req.exit
  %arrayidx = getelementptr i8, ptr %1, i32 1
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %36)
  %cmp.not = icmp eq i8 %36, 65
  br i1 %cmp.not, label %if.end11, label %do.end

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #11
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %arrayidx12 = getelementptr i8, ptr %1, i32 2
  %37 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx12, align 1
  %39 = and i8 %38, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool14.not = icmp eq i8 %39, 0
  br i1 %tobool14.not, label %do.end18, label %if.end21

do.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #11
  br label %cleanup

if.end21:                                         ; preds = %if.end11
  %arrayidx22 = getelementptr i8, ptr %1, i32 3
  %40 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx22, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool23.not = icmp eq i8 %41, 0
  br i1 %tobool23.not, label %if.end21.if.end32_crit_edge, label %do.end27

if.end21.if.end32_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

do.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %conv30 = zext i8 %41 to i32
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %conv30) #11
  br label %if.end32

if.end32:                                         ; preds = %do.end27, %if.end21.if.end32_crit_edge
  %arrayidx33 = getelementptr i8, ptr %1, i32 4
  %42 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %43 to i32
  %arrayidx35 = getelementptr i8, ptr %1, i32 5
  %44 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx35, align 1
  %conv36 = zext i8 %45 to i32
  %shl = shl nuw nsw i32 %conv36, 8
  %or = or i32 %shl, %conv34
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %or)
  %cmp37 = icmp ugt i32 %or, 14
  br i1 %cmp37, label %do.end42, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %cmp46330.not = icmp eq i32 %or, 0
  br i1 %cmp46330.not, label %for.cond.preheader.for.end184_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end184_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end184

do.end42:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #11
  br label %cleanup

for.cond72.preheader:                             ; preds = %for.body
  br i1 %cmp46330.not, label %for.cond72.preheader.for.end184_crit_edge, label %for.cond72.preheader.for.body90.preheader_crit_edge

for.cond72.preheader.for.body90.preheader_crit_edge: ; preds = %for.cond72.preheader
  br label %for.body90.preheader

for.cond72.preheader.for.end184_crit_edge:        ; preds = %for.cond72.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end184

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0331 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %mul = shl i32 %i.0331, 2
  %add = add nuw nsw i32 %mul, 6
  %arrayidx49 = getelementptr i8, ptr %1, i32 %add
  %46 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx49, align 1
  %conv50 = zext i8 %47 to i32
  %add53 = add nuw nsw i32 %mul, 7
  %arrayidx54 = getelementptr i8, ptr %1, i32 %add53
  %48 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx54, align 1
  %conv55 = zext i8 %49 to i32
  %shl56 = shl nuw nsw i32 %conv55, 8
  %or57 = or i32 %shl56, %conv50
  %arrayidx58 = getelementptr [14 x i32], ptr %widths, i32 0, i32 %i.0331
  %50 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or57, ptr %arrayidx58, align 4
  %add61 = add nuw nsw i32 %mul, 8
  %arrayidx62 = getelementptr i8, ptr %1, i32 %add61
  %51 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx62, align 1
  %conv63 = zext i8 %52 to i32
  %add66 = add nuw nsw i32 %mul, 9
  %arrayidx67 = getelementptr i8, ptr %1, i32 %add66
  %53 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %54 to i32
  %shl69 = shl nuw nsw i32 %conv68, 8
  %or70 = or i32 %shl69, %conv63
  %arrayidx71 = getelementptr [14 x i32], ptr %heights, i32 0, i32 %i.0331
  %55 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %or70, ptr %arrayidx71, align 4
  %inc = add nuw nsw i32 %i.0331, 1
  %exitcond.not = icmp eq i32 %inc, %or
  br i1 %exitcond.not, label %for.cond72.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body90.preheader:                             ; preds = %for.inc182.for.body90.preheader_crit_edge, %for.cond72.preheader.for.body90.preheader_crit_edge
  %i.1339 = phi i32 [ %inc183, %for.inc182.for.body90.preheader_crit_edge ], [ 0, %for.cond72.preheader.for.body90.preheader_crit_edge ]
  %arrayidx76 = getelementptr [14 x i32], ptr %widths, i32 0, i32 %i.1339
  %56 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx76, align 4
  %arrayidx77 = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 %i.1339
  %58 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %arrayidx77, align 4
  %arrayidx78 = getelementptr [14 x i32], ptr %heights, i32 0, i32 %i.1339
  %59 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx78, align 4
  %height = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 %i.1339, i32 1
  %61 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %height, align 4
  %field = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 %i.1339, i32 3
  %62 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %field, align 4
  %colorspace = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 %i.1339, i32 6
  %63 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 8, ptr %colorspace, align 4
  %priv = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 %i.1339, i32 7
  %64 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %priv, align 4
  br label %for.body90

for.body90:                                       ; preds = %for.inc105.for.body90_crit_edge, %for.body90.preheader
  %j.0333 = phi i32 [ %inc106, %for.inc105.for.body90_crit_edge ], [ 0, %for.body90.preheader ]
  %arrayidx91 = getelementptr [14 x i32], ptr %widths, i32 0, i32 %j.0333
  %65 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx91, align 4
  %div = sdiv i32 %66, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %57)
  %cmp93 = icmp eq i32 %div, %57
  br i1 %cmp93, label %land.lhs.true, label %for.body90.for.inc105_crit_edge

for.body90.for.inc105_crit_edge:                  ; preds = %for.body90
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc105

land.lhs.true:                                    ; preds = %for.body90
  %arrayidx95 = getelementptr [14 x i32], ptr %heights, i32 0, i32 %j.0333
  %67 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx95, align 4
  %div96 = sdiv i32 %68, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %div96, i32 %60)
  %cmp98 = icmp eq i32 %div96, %60
  br i1 %cmp98, label %if.then100, label %land.lhs.true.for.inc105_crit_edge

land.lhs.true.for.inc105_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc105

if.then100:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 2, ptr %priv, align 4
  br label %for.body111.preheader

for.inc105:                                       ; preds = %land.lhs.true.for.inc105_crit_edge, %for.body90.for.inc105_crit_edge
  %inc106 = add nuw nsw i32 %j.0333, 1
  %exitcond342.not = icmp eq i32 %inc106, %or
  br i1 %exitcond342.not, label %for.inc105.for.body111.preheader_crit_edge, label %for.inc105.for.body90_crit_edge

for.inc105.for.body90_crit_edge:                  ; preds = %for.inc105
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body90

for.inc105.for.body111.preheader_crit_edge:       ; preds = %for.inc105
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body111.preheader

for.body111.preheader:                            ; preds = %for.inc105.for.body111.preheader_crit_edge, %if.then100
  br label %for.body111

for.body111:                                      ; preds = %for.inc128.for.body111_crit_edge, %for.body111.preheader
  %j.1336 = phi i32 [ %inc129, %for.inc128.for.body111_crit_edge ], [ 0, %for.body111.preheader ]
  %arrayidx112 = getelementptr [14 x i32], ptr %widths, i32 0, i32 %j.1336
  %70 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx112, align 4
  %div113 = sdiv i32 %71, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div113, i32 %57)
  %cmp115 = icmp eq i32 %div113, %57
  br i1 %cmp115, label %land.lhs.true117, label %for.body111.for.inc128_crit_edge

for.body111.for.inc128_crit_edge:                 ; preds = %for.body111
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc128

land.lhs.true117:                                 ; preds = %for.body111
  %arrayidx118 = getelementptr [14 x i32], ptr %heights, i32 0, i32 %j.1336
  %72 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx118, align 4
  %div119 = sdiv i32 %73, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div119, i32 %60)
  %cmp121 = icmp eq i32 %div119, %60
  br i1 %cmp121, label %for.end130.thread, label %land.lhs.true117.for.inc128_crit_edge

land.lhs.true117.for.inc128_crit_edge:            ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc128

for.end130.thread:                                ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 4, ptr %priv, align 4
  br label %if.else

for.inc128:                                       ; preds = %land.lhs.true117.for.inc128_crit_edge, %for.body111.for.inc128_crit_edge
  %inc129 = add nuw nsw i32 %j.1336, 1
  %exitcond343.not = icmp eq i32 %inc129, %or
  br i1 %exitcond343.not, label %for.end130, label %for.inc128.for.body111_crit_edge

for.inc128.for.body111_crit_edge:                 ; preds = %for.inc128
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body111

for.end130:                                       ; preds = %for.inc128
  %75 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %75)
  %.pr328 = load i32, ptr %priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr328)
  %cmp134 = icmp eq i32 %.pr328, 1
  br i1 %cmp134, label %if.then136, label %for.end130.if.else_crit_edge

for.end130.if.else_crit_edge:                     ; preds = %for.end130
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then136:                                       ; preds = %for.end130
  call void @__sanitizer_cov_trace_pc() #10
  %pixelformat = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 %i.1339, i32 2
  %76 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 825770306, ptr %pixelformat, align 4
  %bytesperline = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 %i.1339, i32 4
  %77 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %57, ptr %bytesperline, align 4
  %mul144 = mul i32 %60, %57
  %sizeimage = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 %i.1339, i32 5
  %78 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %mul144, ptr %sizeimage, align 4
  %call153 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %57, i32 noundef %60) #11
  br label %for.inc182

if.else:                                          ; preds = %for.end130.if.else_crit_edge, %for.end130.thread
  %79 = phi i32 [ 4, %for.end130.thread ], [ %.pr328, %for.end130.if.else_crit_edge ]
  %pixelformat156 = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 %i.1339, i32 2
  %80 = ptrtoint ptr %pixelformat156 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 825242707, ptr %pixelformat156, align 4
  %bytesperline159 = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 %i.1339, i32 4
  %81 = ptrtoint ptr %bytesperline159 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %bytesperline159, align 4
  %mul162 = mul i32 %60, %57
  %mul163 = mul i32 %mul162, 3
  %sizeimage166 = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 3, i32 %i.1339, i32 5
  %82 = ptrtoint ptr %sizeimage166 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %mul163, ptr %sizeimage166, align 4
  %mul179 = mul i32 %79, %79
  %call180 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %57, i32 noundef %60, i32 noundef %mul179) #11
  br label %for.inc182

for.inc182:                                       ; preds = %if.else, %if.then136
  %inc183 = add nuw nsw i32 %i.1339, 1
  %exitcond344.not = icmp eq i32 %inc183, %or
  br i1 %exitcond344.not, label %for.inc182.for.end184_crit_edge, label %for.inc182.for.body90.preheader_crit_edge

for.inc182.for.body90.preheader_crit_edge:        ; preds = %for.inc182
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body90.preheader

for.inc182.for.end184_crit_edge:                  ; preds = %for.inc182
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end184

for.end184:                                       ; preds = %for.inc182.for.end184_crit_edge, %for.cond72.preheader.for.end184_crit_edge, %for.cond.preheader.for.end184_crit_edge
  %fmts185 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %83 = ptrtoint ptr %cam1 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %fmts185, ptr %cam1, align 4
  %nmodes = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %84 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %43, ptr %nmodes, align 4
  %bulk = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 7
  %85 = ptrtoint ptr %bulk to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 1, ptr %bulk, align 1
  %bulk_size = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 2
  %86 = ptrtoint ptr %bulk_size to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 4096, ptr %bulk_size, align 4
  %bulk_nurbs = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 6
  %87 = ptrtoint ptr %bulk_nurbs to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 4, ptr %bulk_nurbs, align 2
  %resetlevel = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %88 = ptrtoint ptr %resetlevel to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 45, ptr %resetlevel, align 2
  %89 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp.i313 = icmp slt i32 %90, 0
  br i1 %cmp.i313, label %for.end184.se401_read_req.exit322_crit_edge, label %if.end.i320

for.end184.se401_read_req.exit322_crit_edge:      ; preds = %for.end184
  call void @__sanitizer_cov_trace_pc() #10
  br label %se401_read_req.exit322

if.end.i320:                                      ; preds = %for.end184
  %91 = ptrtoint ptr %dev.i308 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev.i308, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %92, align 8
  %shl.i.i315 = shl i32 %94, 8
  %or2.i316 = or i32 %shl.i.i315, -2147483520
  %95 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %usb_buf, align 4
  %call3.i318 = tail call i32 @usb_control_msg(ptr noundef %92, i32 noundef %or2.i316, i8 noundef zeroext 68, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %96, i16 noundef zeroext 64, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i318)
  %cmp4.i319 = icmp slt i32 %call3.i318, 0
  br i1 %cmp4.i319, label %if.then6.i321, label %if.end.i320.se401_read_req.exit322_crit_edge

if.end.i320.se401_read_req.exit322_crit_edge:     ; preds = %if.end.i320
  call void @__sanitizer_cov_trace_pc() #10
  br label %se401_read_req.exit322

if.then6.i321:                                    ; preds = %if.end.i320
  call void @__sanitizer_cov_trace_pc() #10
  %97 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %call3.i318, ptr %usb_err.i, align 8
  %98 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %usb_buf, align 4
  %100 = call ptr @memset(ptr %99, i32 0, i32 64)
  br label %se401_read_req.exit322

se401_read_req.exit322:                           ; preds = %if.then6.i321, %if.end.i320.se401_read_req.exit322_crit_edge, %for.end184.se401_read_req.exit322_crit_edge
  %101 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool188 = icmp ne i32 %102, 0
  %has_brightness = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %frombool = zext i1 %tobool188 to i8
  %103 = ptrtoint ptr %has_brightness to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %frombool, ptr %has_brightness, align 8
  %104 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %usb_err.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %se401_read_req.exit322, %do.end42, %do.end18, %do.end, %se401_write_req.exit.cleanup_crit_edge, %if.then5.i, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ -19, %do.end42 ], [ 0, %se401_read_req.exit322 ], [ -19, %do.end18 ], [ %.pr326, %se401_write_req.exit.cleanup_crit_edge ], [ %call2.i, %if.then5.i ], [ %.pr324, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %heights) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %widths) #8
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sd_init(ptr nocapture noundef readnone %gspca_dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init_controls(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_handler = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8
  %ctrl_handler1 = getelementptr inbounds %struct.video_device, ptr %gspca_dev, i32 0, i32 9
  %0 = ptrtoint ptr %ctrl_handler1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ctrl_handler, ptr %ctrl_handler1, align 4
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 4, ptr noundef nonnull @sd_init_controls._key, ptr noundef nonnull @.str.24) #8
  %has_brightness = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %1 = ptrtoint ptr %has_brightness to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %has_brightness, align 8, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 15) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call3 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 50, i64 noundef 1, i64 noundef 25) #8
  %call4 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963793, i64 noundef 0, i64 noundef 32767, i64 noundef 1, i64 noundef 15000) #8
  %3 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call4, ptr %3, align 8
  %call5 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963800, i8 noundef zeroext 2, i64 noundef 0, i8 noundef zeroext 0) #8
  %freq = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5, ptr %freq, align 4
  %error = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8, i32 9
  %6 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %if.end11, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #11
  %8 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %error, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @v4l2_ctrl_cluster(i32 noundef 2, ptr noundef %3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end
  %retval.0 = phi i32 [ %9, %do.end ], [ 0, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_start(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %0 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cam, align 4
  %curr_mode = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %2 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %curr_mode, align 1
  %idxprom = zext i8 %3 to i32
  %priv = getelementptr %struct.v4l2_pix_format, ptr %1, i32 %idxprom, i32 7
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %priv, align 4
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %6 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp slt i32 %7, 0
  br i1 %cmp.i, label %entry.if.end.i42_crit_edge, label %if.end.i

entry.if.end.i42_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i42

if.end.i:                                         ; preds = %entry
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i.i = shl i32 %11, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or.i, i8 noundef zeroext 86, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.then5.i, label %se401_write_req.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call2.i, ptr %usb_err.i, align 8
  br label %if.end.i42

se401_write_req.exit:                             ; preds = %if.end.i
  %13 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not = icmp eq i32 %.pr, 0
  br i1 %tobool.not, label %se401_write_req.exit.if.end.i52_crit_edge, label %se401_write_req.exit.if.end.i42_crit_edge

se401_write_req.exit.if.end.i42_crit_edge:        ; preds = %se401_write_req.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i42

se401_write_req.exit.if.end.i52_crit_edge:        ; preds = %se401_write_req.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i52

if.end.i42:                                       ; preds = %se401_write_req.exit.if.end.i42_crit_edge, %if.then5.i, %entry.if.end.i42_crit_edge
  %dev = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %call = tail call i32 @usb_reset_device(ptr noundef %15) #8
  %16 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %usb_err.i, align 8
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %shl.i.i38 = shl i32 %20, 8
  %or.i39 = or i32 %shl.i.i38, -2147483648
  %call2.i40 = tail call i32 @usb_control_msg(ptr noundef %18, i32 noundef %or.i39, i8 noundef zeroext 86, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i40)
  %cmp3.i41 = icmp slt i32 %call2.i40, 0
  br i1 %cmp3.i41, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #10
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef 86, i32 noundef 1, i32 noundef %call2.i40) #11
  br label %se401_write_req.exit88.sink.split

if.end:                                           ; preds = %if.end.i42
  %21 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr125 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr125)
  %cmp.i46 = icmp slt i32 %.pr125, 0
  br i1 %cmp.i46, label %if.end.se401_write_req.exit88_crit_edge, label %if.end.if.end.i52_crit_edge

if.end.if.end.i52_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i52

if.end.se401_write_req.exit88_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %se401_write_req.exit88

if.end.i52:                                       ; preds = %if.end.if.end.i52_crit_edge, %se401_write_req.exit.if.end.i52_crit_edge
  %dev.i47 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %22 = ptrtoint ptr %dev.i47 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i47, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 8
  %shl.i.i48 = shl i32 %25, 8
  %or.i49 = or i32 %shl.i.i48, -2147483648
  %call2.i50 = tail call i32 @usb_control_msg(ptr noundef %23, i32 noundef %or.i49, i8 noundef zeroext 87, i8 noundef zeroext 64, i16 noundef zeroext 1, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i50)
  %cmp3.i51 = icmp slt i32 %call2.i50, 0
  br i1 %cmp3.i51, label %if.then5.i53, label %se401_write_req.exit55

if.then5.i53:                                     ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #10
  %call9.i54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef 87, i32 noundef 1, i32 noundef %call2.i50) #11
  br label %se401_write_req.exit88.sink.split

se401_write_req.exit55:                           ; preds = %if.end.i52
  %26 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr129 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr129)
  %cmp.i57 = icmp slt i32 %.pr129, 0
  br i1 %cmp.i57, label %se401_write_req.exit55.se401_write_req.exit88_crit_edge, label %if.end.i63

se401_write_req.exit55.se401_write_req.exit88_crit_edge: ; preds = %se401_write_req.exit55
  call void @__sanitizer_cov_trace_pc() #10
  br label %se401_write_req.exit88

if.end.i63:                                       ; preds = %se401_write_req.exit55
  %27 = ptrtoint ptr %dev.i47 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i47, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 8
  %shl.i.i59 = shl i32 %30, 8
  %or.i60 = or i32 %shl.i.i59, -2147483648
  %call2.i61 = tail call i32 @usb_control_msg(ptr noundef %28, i32 noundef %or.i60, i8 noundef zeroext 83, i8 noundef zeroext 64, i16 noundef zeroext 5, i16 noundef zeroext 1, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i61)
  %cmp3.i62 = icmp slt i32 %call2.i61, 0
  br i1 %cmp3.i62, label %do.end.i, label %se401_set_feature.exit

do.end.i:                                         ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef 1, i32 noundef 5, i32 noundef %call2.i61) #11
  br label %se401_write_req.exit88.sink.split

se401_set_feature.exit:                           ; preds = %if.end.i63
  %31 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pr131.pr = load i32, ptr %usb_err.i, align 8
  %pixfmt = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19
  %32 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pixfmt, align 8
  %mul = mul i32 %33, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr131.pr)
  %cmp.i65 = icmp slt i32 %.pr131.pr, 0
  br i1 %cmp.i65, label %se401_set_feature.exit.se401_write_req.exit88_crit_edge, label %if.end.i71

se401_set_feature.exit.se401_write_req.exit88_crit_edge: ; preds = %se401_set_feature.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %se401_write_req.exit88

if.end.i71:                                       ; preds = %se401_set_feature.exit
  %conv = trunc i32 %mul to i16
  %34 = ptrtoint ptr %dev.i47 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i47, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 8
  %shl.i.i67 = shl i32 %37, 8
  %or.i68 = or i32 %shl.i.i67, -2147483648
  %call2.i69 = tail call i32 @usb_control_msg(ptr noundef %35, i32 noundef %or.i68, i8 noundef zeroext 77, i8 noundef zeroext 64, i16 noundef zeroext %conv, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i69)
  %cmp3.i70 = icmp slt i32 %call2.i69, 0
  br i1 %cmp3.i70, label %se401_write_req.exit75.thread, label %se401_write_req.exit75

se401_write_req.exit75.thread:                    ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #10
  %conv8.i = and i32 %mul, 65535
  %call9.i73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef 77, i32 noundef %conv8.i, i32 noundef %call2.i69) #11
  br label %se401_write_req.exit88.sink.split

se401_write_req.exit75:                           ; preds = %if.end.i71
  %38 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pr136.pr.pr.pr = load i32, ptr %usb_err.i, align 8
  %height = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19, i32 1
  %39 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %height, align 4
  %mul3 = mul i32 %40, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr136.pr.pr.pr)
  %cmp.i77 = icmp slt i32 %.pr136.pr.pr.pr, 0
  br i1 %cmp.i77, label %se401_write_req.exit75.se401_write_req.exit88_crit_edge, label %if.end.i83

se401_write_req.exit75.se401_write_req.exit88_crit_edge: ; preds = %se401_write_req.exit75
  call void @__sanitizer_cov_trace_pc() #10
  br label %se401_write_req.exit88

if.end.i83:                                       ; preds = %se401_write_req.exit75
  %conv4 = trunc i32 %mul3 to i16
  %41 = ptrtoint ptr %dev.i47 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i47, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 8
  %shl.i.i79 = shl i32 %44, 8
  %or.i80 = or i32 %shl.i.i79, -2147483648
  %call2.i81 = tail call i32 @usb_control_msg(ptr noundef %42, i32 noundef %or.i80, i8 noundef zeroext 79, i8 noundef zeroext 64, i16 noundef zeroext %conv4, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i81)
  %cmp3.i82 = icmp slt i32 %call2.i81, 0
  br i1 %cmp3.i82, label %if.then5.i84, label %if.end.i83.se401_write_req.exit88_crit_edge

if.end.i83.se401_write_req.exit88_crit_edge:      ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #10
  br label %se401_write_req.exit88

if.then5.i84:                                     ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #10
  %conv8.i85 = and i32 %mul3, 65535
  %call9.i86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef 79, i32 noundef %conv8.i85, i32 noundef %call2.i81) #11
  br label %se401_write_req.exit88.sink.split

se401_write_req.exit88.sink.split:                ; preds = %if.then5.i84, %se401_write_req.exit75.thread, %do.end.i, %if.then5.i53, %if.end.thread
  %call2.i50.sink = phi i32 [ %call2.i50, %if.then5.i53 ], [ %call2.i40, %if.end.thread ], [ %call2.i61, %do.end.i ], [ %call2.i69, %se401_write_req.exit75.thread ], [ %call2.i81, %if.then5.i84 ]
  %45 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call2.i50.sink, ptr %usb_err.i, align 8
  br label %se401_write_req.exit88

se401_write_req.exit88:                           ; preds = %se401_write_req.exit88.sink.split, %if.end.i83.se401_write_req.exit88_crit_edge, %se401_write_req.exit75.se401_write_req.exit88_crit_edge, %se401_set_feature.exit.se401_write_req.exit88_crit_edge, %se401_write_req.exit55.se401_write_req.exit88_crit_edge, %if.end.se401_write_req.exit88_crit_edge
  %switch.tableidx = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %46 = icmp ult i32 %switch.tableidx, 4
  br i1 %46, label %switch.lookup, label %se401_write_req.exit88.sw.epilog_crit_edge

se401_write_req.exit88.sw.epilog_crit_edge:       ; preds = %se401_write_req.exit88
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

switch.lookup:                                    ; preds = %se401_write_req.exit88
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [4 x i16], ptr @switch.table.sd_start, i32 0, i32 %switch.tableidx
  %47 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %47)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %se401_write_req.exit88.sw.epilog_crit_edge
  %mode.0 = phi i16 [ 0, %se401_write_req.exit88.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %48 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp.i90 = icmp slt i32 %49, 0
  br i1 %cmp.i90, label %sw.epilog.se401_set_feature.exit111_crit_edge, label %if.end.i96

sw.epilog.se401_set_feature.exit111_crit_edge:    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %se401_set_feature.exit111

if.end.i96:                                       ; preds = %sw.epilog
  %dev.i91 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %50 = ptrtoint ptr %dev.i91 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i91, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 8
  %shl.i.i92 = shl i32 %53, 8
  %or.i93 = or i32 %shl.i.i92, -2147483648
  %call2.i94 = tail call i32 @usb_control_msg(ptr noundef %51, i32 noundef %or.i93, i8 noundef zeroext 83, i8 noundef zeroext 64, i16 noundef zeroext %mode.0, i16 noundef zeroext 8192, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i94)
  %cmp3.i95 = icmp slt i32 %call2.i94, 0
  br i1 %cmp3.i95, label %do.end.i98, label %se401_set_feature.exit99

do.end.i98:                                       ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #10
  %conv5.i = zext i16 %mode.0 to i32
  %call6.i97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef 8192, i32 noundef %conv5.i, i32 noundef %call2.i94) #11
  br label %se401_set_feature.exit111.sink.split

se401_set_feature.exit99:                         ; preds = %if.end.i96
  %54 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pr141 = load i32, ptr %usb_err.i, align 8
  %resetlevel = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %55 = ptrtoint ptr %resetlevel to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %resetlevel, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr141)
  %cmp.i101 = icmp slt i32 %.pr141, 0
  br i1 %cmp.i101, label %se401_set_feature.exit99.se401_set_feature.exit111_crit_edge, label %if.end.i107

se401_set_feature.exit99.se401_set_feature.exit111_crit_edge: ; preds = %se401_set_feature.exit99
  call void @__sanitizer_cov_trace_pc() #10
  br label %se401_set_feature.exit111

if.end.i107:                                      ; preds = %se401_set_feature.exit99
  %conv8 = zext i8 %56 to i16
  %57 = ptrtoint ptr %dev.i91 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev.i91, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 8
  %shl.i.i103 = shl i32 %60, 8
  %or.i104 = or i32 %shl.i.i103, -2147483648
  %call2.i105 = tail call i32 @usb_control_msg(ptr noundef %58, i32 noundef %or.i104, i8 noundef zeroext 83, i8 noundef zeroext 64, i16 noundef zeroext %conv8, i16 noundef zeroext 48, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i105)
  %cmp3.i106 = icmp slt i32 %call2.i105, 0
  br i1 %cmp3.i106, label %do.end.i110, label %if.end.i107.se401_set_feature.exit111_crit_edge

if.end.i107.se401_set_feature.exit111_crit_edge:  ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #10
  br label %se401_set_feature.exit111

do.end.i110:                                      ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #10
  %conv5.i108 = zext i8 %56 to i32
  %call6.i109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef 48, i32 noundef %conv5.i108, i32 noundef %call2.i105) #11
  br label %se401_set_feature.exit111.sink.split

se401_set_feature.exit111.sink.split:             ; preds = %do.end.i110, %do.end.i98
  %call2.i94.sink = phi i32 [ %call2.i94, %do.end.i98 ], [ %call2.i105, %do.end.i110 ]
  %61 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %call2.i94.sink, ptr %usb_err.i, align 8
  br label %se401_set_feature.exit111

se401_set_feature.exit111:                        ; preds = %se401_set_feature.exit111.sink.split, %if.end.i107.se401_set_feature.exit111_crit_edge, %se401_set_feature.exit99.se401_set_feature.exit111_crit_edge, %sw.epilog.se401_set_feature.exit111_crit_edge
  %packet_read = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %62 = ptrtoint ptr %packet_read to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %packet_read, align 8
  %pixels_read = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %63 = ptrtoint ptr %pixels_read to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %pixels_read, align 4
  %restart_stream = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 7
  %64 = ptrtoint ptr %restart_stream to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %restart_stream, align 4
  %resetlevel_frame_count = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 10
  %65 = ptrtoint ptr %resetlevel_frame_count to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %resetlevel_frame_count, align 1
  %resetlevel_adjust_dir = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 11
  %66 = ptrtoint ptr %resetlevel_adjust_dir to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %resetlevel_adjust_dir, align 8
  %expo_change_state = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 12
  %67 = ptrtoint ptr %expo_change_state to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 2, ptr %expo_change_state, align 4
  %68 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp.i113 = icmp slt i32 %69, 0
  br i1 %cmp.i113, label %se401_set_feature.exit111.se401_write_req.exit123_crit_edge, label %if.end.i119

se401_set_feature.exit111.se401_write_req.exit123_crit_edge: ; preds = %se401_set_feature.exit111
  call void @__sanitizer_cov_trace_pc() #10
  br label %se401_write_req.exit123

if.end.i119:                                      ; preds = %se401_set_feature.exit111
  %dev.i114 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %70 = ptrtoint ptr %dev.i114 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev.i114, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 8
  %shl.i.i115 = shl i32 %73, 8
  %or.i116 = or i32 %shl.i.i115, -2147483648
  %call2.i117 = tail call i32 @usb_control_msg(ptr noundef %71, i32 noundef %or.i116, i8 noundef zeroext 65, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i117)
  %cmp3.i118 = icmp slt i32 %call2.i117, 0
  br i1 %cmp3.i118, label %if.then5.i120, label %if.end.i119.se401_write_req.exit123_crit_edge

if.end.i119.se401_write_req.exit123_crit_edge:    ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #10
  br label %se401_write_req.exit123

if.then5.i120:                                    ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #10
  %call9.i121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef 65, i32 noundef 0, i32 noundef %call2.i117) #11
  %74 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %call2.i117, ptr %usb_err.i, align 8
  br label %se401_write_req.exit123

se401_write_req.exit123:                          ; preds = %if.then5.i120, %if.end.i119.se401_write_req.exit123_crit_edge, %se401_set_feature.exit111.se401_write_req.exit123_crit_edge
  %75 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %usb_err.i, align 8
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_pkt_scan(ptr noundef %gspca_dev, ptr noundef %data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp eq i32 %len, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %0 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cam, align 4
  %curr_mode = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %2 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %curr_mode, align 1
  %idxprom = zext i8 %3 to i32
  %priv = getelementptr %struct.v4l2_pix_format, ptr %1, i32 %idxprom, i32 7
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp1 = icmp eq i32 %5, 1
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %image_len.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 14
  %6 = ptrtoint ptr %image_len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %image_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  br i1 %cmp.i, label %if.then2.sd_pkt_scan_bayer.exit_crit_edge, label %if.end.i

if.then2.sd_pkt_scan_bayer.exit_crit_edge:        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %sd_pkt_scan_bayer.exit

if.end.i:                                         ; preds = %if.then2
  %sizeimage.i = getelementptr %struct.v4l2_pix_format, ptr %1, i32 %idxprom, i32 5
  %8 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sizeimage.i, align 4
  %add.i = add i32 %7, %len
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %9)
  %cmp3.not.i = icmp ult i32 %add.i, %9
  br i1 %cmp3.not.i, label %if.end.i.sd_pkt_scan_bayer.exit_crit_edge, label %if.then4.i

if.end.i.sd_pkt_scan_bayer.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sd_pkt_scan_bayer.exit

if.then4.i:                                       ; preds = %if.end.i
  %expo_change_state.i.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 12
  %10 = ptrtoint ptr %expo_change_state.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %expo_change_state.i.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %if.then4.i.sd_pkt_scan_bayer.exit_crit_edge [
    i32 0, label %if.then4.i.sw.epilog.sink.split.i.i_crit_edge
    i32 1, label %sw.bb2.i.i
  ]

if.then4.i.sw.epilog.sink.split.i.i_crit_edge:    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i.i

if.then4.i.sd_pkt_scan_bayer.exit_crit_edge:      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sd_pkt_scan_bayer.exit

sw.bb2.i.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  %last_packet_type.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 15
  %13 = ptrtoint ptr %last_packet_type.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %last_packet_type.i.i, align 4
  br label %sw.epilog.sink.split.i.i

sw.epilog.sink.split.i.i:                         ; preds = %sw.bb2.i.i, %if.then4.i.sw.epilog.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 2, %sw.bb2.i.i ], [ 1, %if.then4.i.sw.epilog.sink.split.i.i_crit_edge ]
  %14 = ptrtoint ptr %expo_change_state.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink.i.i, ptr %expo_change_state.i.i, align 4
  br label %sd_pkt_scan_bayer.exit

sd_pkt_scan_bayer.exit:                           ; preds = %sw.epilog.sink.split.i.i, %if.then4.i.sd_pkt_scan_bayer.exit_crit_edge, %if.end.i.sd_pkt_scan_bayer.exit_crit_edge, %if.then2.sd_pkt_scan_bayer.exit_crit_edge
  %.sink.i = phi i32 [ 1, %if.then2.sd_pkt_scan_bayer.exit_crit_edge ], [ 3, %if.then4.i.sd_pkt_scan_bayer.exit_crit_edge ], [ 3, %sw.epilog.sink.split.i.i ], [ 2, %if.end.i.sd_pkt_scan_bayer.exit_crit_edge ]
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef %.sink.i, ptr noundef %data, i32 noundef %len) #8
  br label %cleanup

if.else:                                          ; preds = %if.end
  %pixfmt.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19
  %15 = ptrtoint ptr %pixfmt.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pixfmt.i, align 8
  %height.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19, i32 1
  %17 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %height.i, align 4
  %mul.i = mul i32 %18, %16
  %restart_stream.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 7
  %19 = ptrtoint ptr %restart_stream.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %restart_stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %if.end.i11, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i11:                                       ; preds = %if.else
  %last_packet_type.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 15
  %21 = ptrtoint ptr %last_packet_type.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %last_packet_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %22)
  %cmp.i10 = icmp eq i8 %22, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %len)
  %cmp3.i = icmp eq i32 %len, 1024
  %or.cond.i = and i1 %cmp3.i, %cmp.i10
  br i1 %or.cond.i, label %if.then5.i, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp8184.i = icmp sgt i32 %len, 0
  br i1 %cmp8184.i, label %while.body.lr.ph.i, label %while.cond.preheader.i.cleanup_crit_edge

while.cond.preheader.i.cleanup_crit_edge:         ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %packet_read.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %packet30.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6
  %arrayidx31.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 6, i32 3
  %arrayidx34.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 6, i32 2
  %arrayidx38.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 6, i32 1
  %pixels_read.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  br label %while.body.i

if.then5.i:                                       ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %last_packet_type.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %last_packet_type.i, align 4
  br label %cleanup

while.body.i:                                     ; preds = %sw.epilog.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %i.0185.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add79.i, %sw.epilog.i.while.body.i_crit_edge ]
  %24 = ptrtoint ptr %packet_read.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %packet_read.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %cmp10.i = icmp slt i32 %25, 4
  br i1 %cmp10.i, label %if.then12.i, label %while.body.i.if.end29.i_crit_edge

while.body.i.if.end29.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i

if.then12.i:                                      ; preds = %while.body.i
  %sub.i = sub i32 4, %25
  %sub14.i = sub i32 %len, %i.0185.i
  %26 = tail call i32 @llvm.smin.i32(i32 %sub.i, i32 %sub14.i) #8
  %arrayidx.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 6, i32 %25
  %arrayidx21.i = getelementptr i8, ptr %data, i32 %i.0185.i
  %27 = call ptr @memcpy(ptr %arrayidx.i, ptr %arrayidx21.i, i32 %26)
  %28 = ptrtoint ptr %packet_read.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %packet_read.i, align 8
  %add.i12 = add i32 %29, %26
  store i32 %add.i12, ptr %packet_read.i, align 8
  %add23.i = add i32 %26, %i.0185.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add.i12)
  %cmp25.i = icmp slt i32 %add.i12, 4
  br i1 %cmp25.i, label %if.then12.i.cleanup_crit_edge, label %if.then12.i.if.end29.i_crit_edge

if.then12.i.if.end29.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i

if.then12.i.cleanup_crit_edge:                    ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end29.i:                                       ; preds = %if.then12.i.if.end29.i_crit_edge, %while.body.i.if.end29.i_crit_edge
  %i.1.i = phi i32 [ %add23.i, %if.then12.i.if.end29.i_crit_edge ], [ %i.0185.i, %while.body.i.if.end29.i_crit_edge ]
  %30 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx31.i, align 1
  %conv32.i = zext i8 %31 to i32
  %32 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx34.i, align 2
  %conv35.i = zext i8 %33 to i32
  %shl.i = shl nuw nsw i32 %conv35.i, 8
  %add36.i = or i32 %shl.i, %conv32.i
  %34 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx38.i, align 1
  %conv39.i = zext i8 %35 to i32
  %36 = ptrtoint ptr %packet30.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %packet30.i, align 4
  %conv42.i = zext i8 %37 to i32
  %and.i = shl nuw nsw i32 %conv42.i, 8
  %shl43.i = and i32 %and.i, 16128
  %add44.i = or i32 %shl43.i, %conv39.i
  %38 = lshr i32 %conv42.i, 6
  %add49.i = add nuw nsw i32 %add36.i, 47
  %39 = lshr i32 %add49.i, 3
  %shl51.i = and i32 %39, 16382
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %shl51.i)
  %cmp52.i = icmp ugt i32 %shl51.i, 1024
  br i1 %cmp52.i, label %do.end.i, label %if.end55.i

do.end.i:                                         ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %shl51.i) #11
  br label %error.i

if.end55.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %38)
  %cmp56.i = icmp eq i32 %38, 3
  br i1 %cmp56.i, label %do.end61.i, label %if.end64.i

do.end61.i:                                       ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #10
  %call63.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #11
  br label %error.i

if.end64.i:                                       ; preds = %if.end55.i
  %40 = ptrtoint ptr %packet_read.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %packet_read.i, align 8
  %sub66.i = sub i32 %shl51.i, %41
  %sub67.i = sub i32 %len, %i.1.i
  %42 = tail call i32 @llvm.smin.i32(i32 %sub66.i, i32 %sub67.i) #8
  %arrayidx75.i = getelementptr %struct.sd, ptr %gspca_dev, i32 0, i32 6, i32 %41
  %arrayidx76.i = getelementptr i8, ptr %data, i32 %i.1.i
  %43 = call ptr @memcpy(ptr %arrayidx75.i, ptr %arrayidx76.i, i32 %42)
  %44 = ptrtoint ptr %packet_read.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %packet_read.i, align 8
  %add78.i = add i32 %45, %42
  store i32 %add78.i, ptr %packet_read.i, align 8
  %add79.i = add i32 %42, %i.1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add78.i, i32 %shl51.i)
  %cmp81.i = icmp slt i32 %add78.i, %shl51.i
  br i1 %cmp81.i, label %if.end64.i.cleanup_crit_edge, label %if.end84.i

if.end64.i.cleanup_crit_edge:                     ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end84.i:                                       ; preds = %if.end64.i
  %46 = ptrtoint ptr %pixels_read.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pixels_read.i, align 4
  %add85.i = add i32 %47, %add44.i
  store i32 %add85.i, ptr %pixels_read.i, align 4
  %48 = ptrtoint ptr %packet_read.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %packet_read.i, align 8
  %49 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %38, label %if.end84.i.sw.epilog.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb88.i
    i32 2, label %sw.bb102.i
  ]

if.end84.i.sw.epilog.i_crit_edge:                 ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 2, ptr noundef %packet30.i, i32 noundef %shl51.i) #8
  br label %sw.epilog.i

sw.bb88.i:                                        ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add85.i, i32 %mul.i)
  %cmp90.not.i = icmp eq i32 %add85.i, %mul.i
  br i1 %cmp90.not.i, label %if.end99.i, label %do.end95.i

do.end95.i:                                       ; preds = %sw.bb88.i
  call void @__sanitizer_cov_trace_pc() #10
  %call98.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %add85.i, i32 noundef %mul.i) #11
  br label %error.i

if.end99.i:                                       ; preds = %sw.bb88.i
  %expo_change_state.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 12
  %50 = ptrtoint ptr %expo_change_state.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %expo_change_state.i, align 4
  %52 = zext i32 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %51, label %if.end99.i.sd_complete_frame.exit_crit_edge [
    i32 0, label %if.end99.i.sw.epilog.sink.split.i_crit_edge
    i32 1, label %sw.bb2.i
  ]

if.end99.i.sw.epilog.sink.split.i_crit_edge:      ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

if.end99.i.sd_complete_frame.exit_crit_edge:      ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sd_complete_frame.exit

sw.bb2.i:                                         ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %last_packet_type.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %last_packet_type.i, align 4
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb2.i, %if.end99.i.sw.epilog.sink.split.i_crit_edge
  %.sink.i14 = phi i32 [ 2, %sw.bb2.i ], [ 1, %if.end99.i.sw.epilog.sink.split.i_crit_edge ]
  %54 = ptrtoint ptr %expo_change_state.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %.sink.i14, ptr %expo_change_state.i, align 4
  br label %sd_complete_frame.exit

sd_complete_frame.exit:                           ; preds = %sw.epilog.sink.split.i, %if.end99.i.sd_complete_frame.exit_crit_edge
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 3, ptr noundef %packet30.i, i32 noundef %shl51.i) #8
  br label %cleanup

sw.bb102.i:                                       ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 1, ptr noundef %packet30.i, i32 noundef %shl51.i) #8
  %55 = ptrtoint ptr %pixels_read.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %add44.i, ptr %pixels_read.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb102.i, %sw.bb.i, %if.end84.i.sw.epilog.i_crit_edge
  %cmp8.i = icmp slt i32 %add79.i, %len
  br i1 %cmp8.i, label %sw.epilog.i.while.body.i_crit_edge, label %sw.epilog.i.cleanup_crit_edge

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog.i.while.body.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

error.i:                                          ; preds = %do.end95.i, %do.end61.i, %do.end.i
  %56 = ptrtoint ptr %restart_stream.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %restart_stream.i, align 4
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 1, ptr noundef null, i32 noundef 0) #8
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 3, ptr noundef null, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %error.i, %sw.epilog.i.cleanup_crit_edge, %sd_complete_frame.exit, %if.end64.i.cleanup_crit_edge, %if.then12.i.cleanup_crit_edge, %if.then5.i, %while.cond.preheader.i.cleanup_crit_edge, %if.else.cleanup_crit_edge, %sd_pkt_scan_bayer.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sd_isoc_init(ptr nocapture noundef %gspca_dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %alt = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 32
  %0 = ptrtoint ptr %alt to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %alt, align 2
  %usb_err = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %1 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %usb_err, align 8
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_stopN(ptr nocapture noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %entry.se401_write_req.exit24_crit_edge, label %if.end.i

entry.se401_write_req.exit24_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %se401_write_req.exit24

if.end.i:                                         ; preds = %entry
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %5, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i, i8 noundef zeroext 66, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.then5.i, label %se401_write_req.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef 66, i32 noundef 0, i32 noundef %call2.i) #11
  br label %se401_write_req.exit24.sink.split

se401_write_req.exit:                             ; preds = %if.end.i
  %6 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i4 = icmp slt i32 %.pr, 0
  br i1 %cmp.i4, label %se401_write_req.exit.se401_write_req.exit24_crit_edge, label %if.end.i10

se401_write_req.exit.se401_write_req.exit24_crit_edge: ; preds = %se401_write_req.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %se401_write_req.exit24

if.end.i10:                                       ; preds = %se401_write_req.exit
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i.i6 = shl i32 %10, 8
  %or.i7 = or i32 %shl.i.i6, -2147483648
  %call2.i8 = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %or.i7, i8 noundef zeroext 87, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i8)
  %cmp3.i9 = icmp slt i32 %call2.i8, 0
  br i1 %cmp3.i9, label %if.then5.i11, label %se401_write_req.exit13

if.then5.i11:                                     ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #10
  %call9.i12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef 87, i32 noundef 0, i32 noundef %call2.i8) #11
  br label %se401_write_req.exit24.sink.split

se401_write_req.exit13:                           ; preds = %if.end.i10
  %11 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr26.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr26.pr)
  %cmp.i15 = icmp slt i32 %.pr26.pr, 0
  br i1 %cmp.i15, label %se401_write_req.exit13.se401_write_req.exit24_crit_edge, label %if.end.i21

se401_write_req.exit13.se401_write_req.exit24_crit_edge: ; preds = %se401_write_req.exit13
  call void @__sanitizer_cov_trace_pc() #10
  br label %se401_write_req.exit24

if.end.i21:                                       ; preds = %se401_write_req.exit13
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i.i17 = shl i32 %15, 8
  %or.i18 = or i32 %shl.i.i17, -2147483648
  %call2.i19 = tail call i32 @usb_control_msg(ptr noundef %13, i32 noundef %or.i18, i8 noundef zeroext 86, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i19)
  %cmp3.i20 = icmp slt i32 %call2.i19, 0
  br i1 %cmp3.i20, label %if.then5.i22, label %if.end.i21.se401_write_req.exit24_crit_edge

if.end.i21.se401_write_req.exit24_crit_edge:      ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #10
  br label %se401_write_req.exit24

if.then5.i22:                                     ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #10
  %call9.i23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef 86, i32 noundef 0, i32 noundef %call2.i19) #11
  br label %se401_write_req.exit24.sink.split

se401_write_req.exit24.sink.split:                ; preds = %if.then5.i22, %if.then5.i11, %if.then5.i
  %call2.i.sink = phi i32 [ %call2.i, %if.then5.i ], [ %call2.i8, %if.then5.i11 ], [ %call2.i19, %if.then5.i22 ]
  %16 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call2.i.sink, ptr %usb_err.i, align 8
  br label %se401_write_req.exit24

se401_write_req.exit24:                           ; preds = %se401_write_req.exit24.sink.split, %if.end.i21.se401_write_req.exit24_crit_edge, %se401_write_req.exit13.se401_write_req.exit24_crit_edge, %se401_write_req.exit.se401_write_req.exit24_crit_edge, %entry.se401_write_req.exit24_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_dq_callback(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %restart_stream = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 7
  %0 = ptrtoint ptr %restart_stream to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %restart_stream, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @sd_stopN(ptr noundef %gspca_dev)
  %call = tail call i32 @sd_start(ptr noundef %gspca_dev)
  %2 = ptrtoint ptr %restart_stream to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %restart_stream, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %resetlevel_frame_count = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 10
  %3 = ptrtoint ptr %resetlevel_frame_count to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %resetlevel_frame_count, align 1
  %inc = add i8 %4, 1
  store i8 %inc, ptr %resetlevel_frame_count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %inc)
  %cmp = icmp ult i8 %inc, 20
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %5 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp slt i32 %6, 0
  br i1 %cmp.i, label %if.end5.se401_get_feature.exit230.thread_crit_edge, label %if.end.i

if.end5.se401_get_feature.exit230.thread_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %se401_get_feature.exit230.thread

if.end.i:                                         ; preds = %if.end5
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i.i = shl i32 %10, 8
  %or3.i = or i32 %shl.i.i, -2147483520
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %11 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usb_buf.i, align 4
  %call4.i = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %or3.i, i8 noundef zeroext 82, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 89, ptr noundef %12, i16 noundef zeroext 2, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %do.end.i, label %se401_get_feature.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef 89, i32 noundef %call4.i) #11
  br label %se401_get_feature.exit230.thread.sink.split

se401_get_feature.exit:                           ; preds = %if.end.i
  %13 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i118 = icmp slt i32 %.pr, 0
  br i1 %cmp.i118, label %se401_get_feature.exit.se401_get_feature.exit230.thread324_crit_edge, label %if.end.i125

se401_get_feature.exit.se401_get_feature.exit230.thread324_crit_edge: ; preds = %se401_get_feature.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %se401_get_feature.exit230.thread324

if.end.i125:                                      ; preds = %se401_get_feature.exit
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %shl.i.i120 = shl i32 %17, 8
  %or3.i121 = or i32 %shl.i.i120, -2147483520
  %18 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %usb_buf.i, align 4
  %call4.i123 = tail call i32 @usb_control_msg(ptr noundef %15, i32 noundef %or3.i121, i8 noundef zeroext 82, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 90, ptr noundef %19, i16 noundef zeroext 2, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i123)
  %cmp5.i124 = icmp slt i32 %call4.i123, 0
  br i1 %cmp5.i124, label %if.end.i125.se401_get_feature.exit230.thread324.sink.split_crit_edge, label %se401_get_feature.exit135

if.end.i125.se401_get_feature.exit230.thread324.sink.split_crit_edge: ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #10
  br label %se401_get_feature.exit230.thread324.sink.split

se401_get_feature.exit135:                        ; preds = %if.end.i125
  %20 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr257.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr257.pr)
  %cmp.i137 = icmp slt i32 %.pr257.pr, 0
  br i1 %cmp.i137, label %se401_get_feature.exit135.se401_get_feature.exit230.thread_crit_edge, label %if.end.i144

se401_get_feature.exit135.se401_get_feature.exit230.thread_crit_edge: ; preds = %se401_get_feature.exit135
  call void @__sanitizer_cov_trace_pc() #10
  br label %se401_get_feature.exit230.thread

if.end.i144:                                      ; preds = %se401_get_feature.exit135
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %shl.i.i139 = shl i32 %24, 8
  %or3.i140 = or i32 %shl.i.i139, -2147483520
  %25 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %usb_buf.i, align 4
  %call4.i142 = tail call i32 @usb_control_msg(ptr noundef %22, i32 noundef %or3.i140, i8 noundef zeroext 82, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 87, ptr noundef %26, i16 noundef zeroext 2, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i142)
  %cmp5.i143 = icmp slt i32 %call4.i142, 0
  br i1 %cmp5.i143, label %do.end.i146, label %se401_get_feature.exit154

do.end.i146:                                      ; preds = %if.end.i144
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i145 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef 87, i32 noundef %call4.i142) #11
  br label %se401_get_feature.exit230.thread.sink.split

se401_get_feature.exit154:                        ; preds = %if.end.i144
  %27 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr259.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr259.pr)
  %cmp.i156 = icmp slt i32 %.pr259.pr, 0
  br i1 %cmp.i156, label %se401_get_feature.exit154.se401_get_feature.exit230.thread348_crit_edge, label %if.end.i163

se401_get_feature.exit154.se401_get_feature.exit230.thread348_crit_edge: ; preds = %se401_get_feature.exit154
  call void @__sanitizer_cov_trace_pc() #10
  br label %se401_get_feature.exit230.thread348

if.end.i163:                                      ; preds = %se401_get_feature.exit154
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 8
  %shl.i.i158 = shl i32 %31, 8
  %or3.i159 = or i32 %shl.i.i158, -2147483520
  %32 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %usb_buf.i, align 4
  %call4.i161 = tail call i32 @usb_control_msg(ptr noundef %29, i32 noundef %or3.i159, i8 noundef zeroext 82, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 88, ptr noundef %33, i16 noundef zeroext 2, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i161)
  %cmp5.i162 = icmp slt i32 %call4.i161, 0
  br i1 %cmp5.i162, label %do.end.i165, label %se401_get_feature.exit173

do.end.i165:                                      ; preds = %if.end.i163
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i164 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef 88, i32 noundef %call4.i161) #11
  %34 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call4.i161, ptr %usb_err.i, align 8
  br label %se401_get_feature.exit230.thread348

se401_get_feature.exit173:                        ; preds = %if.end.i163
  %35 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pr261.pr.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr261.pr.pr)
  %cmp.i175 = icmp slt i32 %.pr261.pr.pr, 0
  br i1 %cmp.i175, label %se401_get_feature.exit173.se401_get_feature.exit230.thread_crit_edge, label %if.end.i182

se401_get_feature.exit173.se401_get_feature.exit230.thread_crit_edge: ; preds = %se401_get_feature.exit173
  call void @__sanitizer_cov_trace_pc() #10
  br label %se401_get_feature.exit230.thread

if.end.i182:                                      ; preds = %se401_get_feature.exit173
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 8
  %shl.i.i177 = shl i32 %39, 8
  %or3.i178 = or i32 %shl.i.i177, -2147483520
  %40 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %usb_buf.i, align 4
  %call4.i180 = tail call i32 @usb_control_msg(ptr noundef %37, i32 noundef %or3.i178, i8 noundef zeroext 82, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 89, ptr noundef %41, i16 noundef zeroext 2, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i180)
  %cmp5.i181 = icmp slt i32 %call4.i180, 0
  br i1 %cmp5.i181, label %do.end.i184, label %se401_get_feature.exit192

do.end.i184:                                      ; preds = %if.end.i182
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i183 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef 89, i32 noundef %call4.i180) #11
  br label %se401_get_feature.exit230.thread.sink.split

se401_get_feature.exit192:                        ; preds = %if.end.i182
  %42 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %usb_buf.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %43, align 1
  %conv11.i185 = zext i8 %45 to i32
  %arrayidx13.i186 = getelementptr i8, ptr %43, i32 1
  %46 = ptrtoint ptr %arrayidx13.i186 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx13.i186, align 1
  %conv14.i187 = zext i8 %47 to i32
  %shl.i188 = shl nuw nsw i32 %conv14.i187, 8
  %or15.i189 = or i32 %shl.i188, %conv11.i185
  %48 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pr263.pr.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr263.pr.pr)
  %cmp.i194 = icmp slt i32 %.pr263.pr.pr, 0
  br i1 %cmp.i194, label %se401_get_feature.exit192.se401_get_feature.exit230.thread324_crit_edge, label %if.end.i201

se401_get_feature.exit192.se401_get_feature.exit230.thread324_crit_edge: ; preds = %se401_get_feature.exit192
  call void @__sanitizer_cov_trace_pc() #10
  br label %se401_get_feature.exit230.thread324

if.end.i201:                                      ; preds = %se401_get_feature.exit192
  %49 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 8
  %shl.i.i196 = shl i32 %52, 8
  %or3.i197 = or i32 %shl.i.i196, -2147483520
  %53 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %usb_buf.i, align 4
  %call4.i199 = tail call i32 @usb_control_msg(ptr noundef %50, i32 noundef %or3.i197, i8 noundef zeroext 82, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 90, ptr noundef %54, i16 noundef zeroext 2, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i199)
  %cmp5.i200 = icmp slt i32 %call4.i199, 0
  br i1 %cmp5.i200, label %if.end.i201.se401_get_feature.exit230.thread324.sink.split_crit_edge, label %se401_get_feature.exit211

if.end.i201.se401_get_feature.exit230.thread324.sink.split_crit_edge: ; preds = %if.end.i201
  call void @__sanitizer_cov_trace_pc() #10
  br label %se401_get_feature.exit230.thread324.sink.split

se401_get_feature.exit211:                        ; preds = %if.end.i201
  %55 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %usb_buf.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %56, align 1
  %conv11.i204 = zext i8 %58 to i32
  %arrayidx13.i205 = getelementptr i8, ptr %56, i32 1
  %59 = ptrtoint ptr %arrayidx13.i205 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx13.i205, align 1
  %conv14.i206 = zext i8 %60 to i32
  %shl.i207 = shl nuw nsw i32 %conv14.i206, 8
  %or15.i208 = or i32 %shl.i207, %conv11.i204
  %61 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pr269.pr.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr269.pr.pr)
  %cmp.i213 = icmp slt i32 %.pr269.pr.pr, 0
  br i1 %cmp.i213, label %se401_get_feature.exit211.se401_get_feature.exit230.thread_crit_edge, label %if.end.i220

se401_get_feature.exit211.se401_get_feature.exit230.thread_crit_edge: ; preds = %se401_get_feature.exit211
  call void @__sanitizer_cov_trace_pc() #10
  br label %se401_get_feature.exit230.thread

if.end.i220:                                      ; preds = %se401_get_feature.exit211
  %62 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 8
  %shl.i.i215 = shl i32 %65, 8
  %or3.i216 = or i32 %shl.i.i215, -2147483520
  %66 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %usb_buf.i, align 4
  %call4.i218 = tail call i32 @usb_control_msg(ptr noundef %63, i32 noundef %or3.i216, i8 noundef zeroext 82, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 87, ptr noundef %67, i16 noundef zeroext 2, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i218)
  %cmp5.i219 = icmp slt i32 %call4.i218, 0
  br i1 %cmp5.i219, label %do.end.i222, label %se401_get_feature.exit230

do.end.i222:                                      ; preds = %if.end.i220
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i221 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef 87, i32 noundef %call4.i218) #11
  br label %se401_get_feature.exit230.thread.sink.split

se401_get_feature.exit230.thread.sink.split:      ; preds = %do.end.i222, %do.end.i184, %do.end.i146, %do.end.i
  %call4.i142.sink = phi i32 [ %call4.i142, %do.end.i146 ], [ %call4.i, %do.end.i ], [ %call4.i180, %do.end.i184 ], [ %call4.i218, %do.end.i222 ]
  %retval.0.i210.ph319.ph = phi i32 [ %call4.i142, %do.end.i146 ], [ %call4.i, %do.end.i ], [ %call4.i180, %do.end.i184 ], [ %or15.i208, %do.end.i222 ]
  %retval.0.i191268.ph318.ph = phi i32 [ %call4.i142, %do.end.i146 ], [ %call4.i, %do.end.i ], [ %call4.i180, %do.end.i184 ], [ %or15.i189, %do.end.i222 ]
  %68 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %call4.i142.sink, ptr %usb_err.i, align 8
  br label %se401_get_feature.exit230.thread

se401_get_feature.exit230.thread:                 ; preds = %se401_get_feature.exit230.thread.sink.split, %se401_get_feature.exit211.se401_get_feature.exit230.thread_crit_edge, %se401_get_feature.exit173.se401_get_feature.exit230.thread_crit_edge, %se401_get_feature.exit135.se401_get_feature.exit230.thread_crit_edge, %if.end5.se401_get_feature.exit230.thread_crit_edge
  %retval.0.i210.ph319 = phi i32 [ %or15.i208, %se401_get_feature.exit211.se401_get_feature.exit230.thread_crit_edge ], [ %.pr261.pr.pr, %se401_get_feature.exit173.se401_get_feature.exit230.thread_crit_edge ], [ %6, %if.end5.se401_get_feature.exit230.thread_crit_edge ], [ %.pr257.pr, %se401_get_feature.exit135.se401_get_feature.exit230.thread_crit_edge ], [ %retval.0.i210.ph319.ph, %se401_get_feature.exit230.thread.sink.split ]
  %retval.0.i191268.ph318 = phi i32 [ %or15.i189, %se401_get_feature.exit211.se401_get_feature.exit230.thread_crit_edge ], [ %.pr261.pr.pr, %se401_get_feature.exit173.se401_get_feature.exit230.thread_crit_edge ], [ %6, %if.end5.se401_get_feature.exit230.thread_crit_edge ], [ %.pr257.pr, %se401_get_feature.exit135.se401_get_feature.exit230.thread_crit_edge ], [ %retval.0.i191268.ph318.ph, %se401_get_feature.exit230.thread.sink.split ]
  %.ph278 = phi i32 [ %.pr269.pr.pr, %se401_get_feature.exit211.se401_get_feature.exit230.thread_crit_edge ], [ %.pr261.pr.pr, %se401_get_feature.exit173.se401_get_feature.exit230.thread_crit_edge ], [ %6, %if.end5.se401_get_feature.exit230.thread_crit_edge ], [ %.pr257.pr, %se401_get_feature.exit135.se401_get_feature.exit230.thread_crit_edge ], [ %call4.i142.sink, %se401_get_feature.exit230.thread.sink.split ]
  %mul13283 = shl i32 %.ph278, 8
  br label %se401_get_feature.exit249

se401_get_feature.exit230.thread324.sink.split:   ; preds = %if.end.i201.se401_get_feature.exit230.thread324.sink.split_crit_edge, %if.end.i125.se401_get_feature.exit230.thread324.sink.split_crit_edge
  %call4.i123.sink365 = phi i32 [ %call4.i123, %if.end.i125.se401_get_feature.exit230.thread324.sink.split_crit_edge ], [ %call4.i199, %if.end.i201.se401_get_feature.exit230.thread324.sink.split_crit_edge ]
  %retval.0.i191.ph.ph340.ph = phi i32 [ %call4.i123, %if.end.i125.se401_get_feature.exit230.thread324.sink.split_crit_edge ], [ %or15.i189, %if.end.i201.se401_get_feature.exit230.thread324.sink.split_crit_edge ]
  %call7.i126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef 90, i32 noundef %call4.i123.sink365) #11
  %69 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %call4.i123.sink365, ptr %usb_err.i, align 8
  br label %se401_get_feature.exit230.thread324

se401_get_feature.exit230.thread324:              ; preds = %se401_get_feature.exit230.thread324.sink.split, %se401_get_feature.exit192.se401_get_feature.exit230.thread324_crit_edge, %se401_get_feature.exit.se401_get_feature.exit230.thread324_crit_edge
  %retval.0.i191.ph.ph340 = phi i32 [ %or15.i189, %se401_get_feature.exit192.se401_get_feature.exit230.thread324_crit_edge ], [ %.pr, %se401_get_feature.exit.se401_get_feature.exit230.thread324_crit_edge ], [ %retval.0.i191.ph.ph340.ph, %se401_get_feature.exit230.thread324.sink.split ]
  %.pr277.ph = phi i32 [ %.pr263.pr.pr, %se401_get_feature.exit192.se401_get_feature.exit230.thread324_crit_edge ], [ %.pr, %se401_get_feature.exit.se401_get_feature.exit230.thread324_crit_edge ], [ %call4.i123.sink365, %se401_get_feature.exit230.thread324.sink.split ]
  %mul13329 = shl i32 %.pr277.ph, 8
  br label %se401_get_feature.exit249

se401_get_feature.exit230.thread348:              ; preds = %do.end.i165, %se401_get_feature.exit154.se401_get_feature.exit230.thread348_crit_edge
  %.pr277.pr.ph = phi i32 [ %call4.i161, %do.end.i165 ], [ %.pr259.pr, %se401_get_feature.exit154.se401_get_feature.exit230.thread348_crit_edge ]
  %mul13353 = shl i32 %.pr277.pr.ph, 8
  br label %se401_get_feature.exit249

se401_get_feature.exit230:                        ; preds = %if.end.i220
  %70 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %usb_buf.i, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %71, align 1
  %conv11.i223 = zext i8 %73 to i32
  %arrayidx13.i224 = getelementptr i8, ptr %71, i32 1
  %74 = ptrtoint ptr %arrayidx13.i224 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx13.i224, align 1
  %conv14.i225 = zext i8 %75 to i32
  %76 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %.pr277.pr.pr = load i32, ptr %usb_err.i, align 8
  %77 = shl nuw nsw i32 %conv14.i225, 16
  %78 = shl nuw nsw i32 %conv11.i223, 8
  %mul13 = or i32 %77, %78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr277.pr.pr)
  %cmp.i232 = icmp slt i32 %.pr277.pr.pr, 0
  br i1 %cmp.i232, label %se401_get_feature.exit230.se401_get_feature.exit249_crit_edge, label %if.end.i239

se401_get_feature.exit230.se401_get_feature.exit249_crit_edge: ; preds = %se401_get_feature.exit230
  call void @__sanitizer_cov_trace_pc() #10
  br label %se401_get_feature.exit249

if.end.i239:                                      ; preds = %se401_get_feature.exit230
  %79 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev.i, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %80, align 8
  %shl.i.i234 = shl i32 %82, 8
  %or3.i235 = or i32 %shl.i.i234, -2147483520
  %83 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %usb_buf.i, align 4
  %call4.i237 = tail call i32 @usb_control_msg(ptr noundef %80, i32 noundef %or3.i235, i8 noundef zeroext 82, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 88, ptr noundef %84, i16 noundef zeroext 2, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i237)
  %cmp5.i238 = icmp slt i32 %call4.i237, 0
  br i1 %cmp5.i238, label %do.end.i241, label %if.end9.i247

do.end.i241:                                      ; preds = %if.end.i239
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i240 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef 88, i32 noundef %call4.i237) #11
  %85 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %call4.i237, ptr %usb_err.i, align 8
  br label %se401_get_feature.exit249

if.end9.i247:                                     ; preds = %if.end.i239
  call void @__sanitizer_cov_trace_pc() #10
  %86 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %usb_buf.i, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %87, align 1
  %conv11.i242 = zext i8 %89 to i32
  %arrayidx13.i243 = getelementptr i8, ptr %87, i32 1
  %90 = ptrtoint ptr %arrayidx13.i243 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx13.i243, align 1
  %conv14.i244 = zext i8 %91 to i32
  %shl.i245 = shl nuw nsw i32 %conv14.i244, 8
  %or15.i246 = or i32 %shl.i245, %conv11.i242
  br label %se401_get_feature.exit249

se401_get_feature.exit249:                        ; preds = %if.end9.i247, %do.end.i241, %se401_get_feature.exit230.se401_get_feature.exit249_crit_edge, %se401_get_feature.exit230.thread348, %se401_get_feature.exit230.thread324, %se401_get_feature.exit230.thread
  %mul13287 = phi i32 [ %mul13, %do.end.i241 ], [ %mul13, %if.end9.i247 ], [ %mul13, %se401_get_feature.exit230.se401_get_feature.exit249_crit_edge ], [ %mul13283, %se401_get_feature.exit230.thread ], [ %mul13329, %se401_get_feature.exit230.thread324 ], [ %mul13353, %se401_get_feature.exit230.thread348 ]
  %retval.0.i191268275286 = phi i32 [ %or15.i189, %do.end.i241 ], [ %or15.i189, %if.end9.i247 ], [ %or15.i189, %se401_get_feature.exit230.se401_get_feature.exit249_crit_edge ], [ %retval.0.i191268.ph318, %se401_get_feature.exit230.thread ], [ %retval.0.i191.ph.ph340, %se401_get_feature.exit230.thread324 ], [ %.pr277.pr.ph, %se401_get_feature.exit230.thread348 ]
  %retval.0.i210276285 = phi i32 [ %or15.i208, %do.end.i241 ], [ %or15.i208, %if.end9.i247 ], [ %or15.i208, %se401_get_feature.exit230.se401_get_feature.exit249_crit_edge ], [ %retval.0.i210.ph319, %se401_get_feature.exit230.thread ], [ %.pr277.ph, %se401_get_feature.exit230.thread324 ], [ %.pr277.pr.ph, %se401_get_feature.exit230.thread348 ]
  %retval.0.i248 = phi i32 [ %call4.i237, %do.end.i241 ], [ %or15.i246, %if.end9.i247 ], [ %.pr277.pr.pr, %se401_get_feature.exit230.se401_get_feature.exit249_crit_edge ], [ %.ph278, %se401_get_feature.exit230.thread ], [ %.pr277.ph, %se401_get_feature.exit230.thread324 ], [ %.pr277.pr.ph, %se401_get_feature.exit230.thread348 ]
  %add15 = add i32 %retval.0.i248, %mul13287
  %resetlevel = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 9
  %92 = ptrtoint ptr %resetlevel to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %resetlevel, align 2
  %conv16 = zext i8 %93 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %add15)
  %cmp17 = icmp ugt i32 %add15, 10
  br i1 %cmp17, label %land.rhs.lr.ph, label %if.else

land.rhs.lr.ph:                                   ; preds = %se401_get_feature.exit249
  %94 = ptrtoint ptr %resetlevel to i32
  call void @__asan_load1_noabort(i32 %94)
  %resetlevel.promoted361 = load i8, ptr %resetlevel, align 2
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %land.rhs.lr.ph
  %inc27362 = phi i8 [ %resetlevel.promoted361, %land.rhs.lr.ph ], [ %inc27, %while.body.land.rhs_crit_edge ]
  %alrc.0360 = phi i32 [ %add15, %land.rhs.lr.ph ], [ %div116, %while.body.land.rhs_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %inc27362)
  %cmp24 = icmp ult i8 %inc27362, 63
  br i1 %cmp24, label %while.body, label %land.rhs.if.end45_crit_edge

land.rhs.if.end45_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

while.body:                                       ; preds = %land.rhs
  %inc27 = add nuw nsw i8 %inc27362, 1
  %95 = ptrtoint ptr %resetlevel to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %inc27, ptr %resetlevel, align 2
  %div116 = lshr i32 %alrc.0360, 1
  %cmp20 = icmp ugt i32 %alrc.0360, 19
  br i1 %cmp20, label %while.body.land.rhs_crit_edge, label %while.body.if.end45_crit_edge

while.body.if.end45_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

if.else:                                          ; preds = %se401_get_feature.exit249
  %mul = shl i32 %retval.0.i191268275286, 8
  %add = add i32 %mul, %retval.0.i210276285
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %add)
  %cmp28 = icmp ugt i32 %add, 20
  br i1 %cmp28, label %land.rhs34.lr.ph, label %if.else.if.end45_crit_edge

if.else.if.end45_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

land.rhs34.lr.ph:                                 ; preds = %if.else
  %96 = ptrtoint ptr %resetlevel to i32
  call void @__asan_load1_noabort(i32 %96)
  %resetlevel.promoted = load i8, ptr %resetlevel, align 2
  br label %land.rhs34

land.rhs34:                                       ; preds = %while.body40.land.rhs34_crit_edge, %land.rhs34.lr.ph
  %dec358 = phi i8 [ %resetlevel.promoted, %land.rhs34.lr.ph ], [ %dec, %while.body40.land.rhs34_crit_edge ]
  %ahrc.0357 = phi i32 [ %add, %land.rhs34.lr.ph ], [ %div42115, %while.body40.land.rhs34_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec358)
  %cmp37.not = icmp eq i8 %dec358, 0
  br i1 %cmp37.not, label %land.rhs34.if.end45_crit_edge, label %while.body40

land.rhs34.if.end45_crit_edge:                    ; preds = %land.rhs34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

while.body40:                                     ; preds = %land.rhs34
  %dec = add i8 %dec358, -1
  %97 = ptrtoint ptr %resetlevel to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %dec, ptr %resetlevel, align 2
  %div42115 = lshr i32 %ahrc.0357, 1
  %cmp32 = icmp ugt i32 %ahrc.0357, 39
  br i1 %cmp32, label %while.body40.land.rhs34_crit_edge, label %while.body40.if.end45_crit_edge

while.body40.if.end45_crit_edge:                  ; preds = %while.body40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

while.body40.land.rhs34_crit_edge:                ; preds = %while.body40
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs34

if.end45:                                         ; preds = %while.body40.if.end45_crit_edge, %land.rhs34.if.end45_crit_edge, %if.else.if.end45_crit_edge, %while.body.if.end45_crit_edge, %land.rhs.if.end45_crit_edge
  %98 = ptrtoint ptr %resetlevel to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %resetlevel, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %99, i8 %93)
  %cmp48 = icmp ugt i8 %99, %93
  %. = select i1 %cmp48, i32 1, i32 -1
  %resetlevel_adjust_dir = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 11
  %100 = ptrtoint ptr %resetlevel_adjust_dir to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %resetlevel_adjust_dir, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool53.not = icmp eq i32 %101, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %.)
  %cmp55.not = icmp eq i32 %101, %.
  %or.cond = select i1 %tobool53.not, i1 true, i1 %cmp55.not
  br i1 %or.cond, label %if.end45.if.end64_crit_edge, label %if.then57

if.end45.if.end64_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then57:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %conv59 = zext i8 %99 to i32
  %sub = sub nsw i32 %conv59, %conv16
  %div60 = sdiv i32 %sub, 2
  %102 = trunc i32 %div60 to i8
  %conv62 = add i8 %93, %102
  %103 = ptrtoint ptr %resetlevel to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %conv62, ptr %resetlevel, align 2
  br label %if.end64

if.end64:                                         ; preds = %if.then57, %if.end45.if.end64_crit_edge
  %104 = ptrtoint ptr %resetlevel to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %resetlevel, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %105, i8 %93)
  %cmp67.not = icmp eq i8 %105, %93
  br i1 %cmp67.not, label %if.end64.if.end73_crit_edge, label %if.then69

if.end64.if.end73_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

if.then69:                                        ; preds = %if.end64
  %106 = ptrtoint ptr %resetlevel_adjust_dir to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %., ptr %resetlevel_adjust_dir, align 8
  %107 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp.i251 = icmp slt i32 %108, 0
  br i1 %cmp.i251, label %if.then69.if.end73_crit_edge, label %if.end.i254

if.then69.if.end73_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

if.end.i254:                                      ; preds = %if.then69
  %conv72 = zext i8 %105 to i16
  %dev.i252 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %109 = ptrtoint ptr %dev.i252 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev.i252, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %110, align 8
  %shl.i.i253 = shl i32 %112, 8
  %or.i = or i32 %shl.i.i253, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %110, i32 noundef %or.i, i8 noundef zeroext 83, i8 noundef zeroext 64, i16 noundef zeroext %conv72, i16 noundef zeroext 48, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %do.end.i255, label %if.end.i254.if.end73_crit_edge

if.end.i254.if.end73_crit_edge:                   ; preds = %if.end.i254
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

do.end.i255:                                      ; preds = %if.end.i254
  call void @__sanitizer_cov_trace_pc() #10
  %conv5.i = zext i8 %105 to i32
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef 48, i32 noundef %conv5.i, i32 noundef %call2.i) #11
  %113 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %call2.i, ptr %usb_err.i, align 8
  br label %if.end73

if.end73:                                         ; preds = %do.end.i255, %if.end.i254.if.end73_crit_edge, %if.then69.if.end73_crit_edge, %if.end64.if.end73_crit_edge
  %114 = ptrtoint ptr %resetlevel_frame_count to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 0, ptr %resetlevel_frame_count, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_int_pkt_scan(ptr nocapture noundef %gspca_dev, ptr nocapture noundef readonly %data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len)
  %cmp.not = icmp eq i32 %len, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %switch = icmp ult i8 %1, 2
  br i1 %switch, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %button_state = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 8
  %2 = ptrtoint ptr %button_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %button_state, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %1)
  %cmp4.not = icmp eq i8 %3, %1
  br i1 %cmp4.not, label %sw.bb.cleanup_crit_edge, label %if.then6

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %input_dev = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 4
  %4 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input_dev, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.i = icmp ne i8 %1, 0
  %lnot.ext.i = zext i1 %tobool.i to i32
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 212, i32 noundef %lnot.ext.i) #8
  %6 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %7, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  %8 = ptrtoint ptr %button_state to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %1, ptr %button_state, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then6 ], [ 0, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_reset_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_cluster(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 8
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %6, label %if.end.sw.epilog_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963795, label %sw.bb1
    i32 9963793, label %sw.bb3
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %10 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.i = icmp slt i32 %11, 0
  br i1 %cmp.i.i, label %sw.bb.sw.epilog_crit_edge, label %if.end.i.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i.i:                                       ; preds = %sw.bb
  %conv.i = trunc i32 %9 to i16
  %dev.i.i = getelementptr i8, ptr %1, i32 -100
  %12 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i.i.i = shl i32 %15, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %13, i32 noundef %or.i.i, i8 noundef zeroext 69, i8 noundef zeroext 64, i16 noundef zeroext %conv.i, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %if.then5.i.i, label %if.end.i.i.sw.epilog_crit_edge

if.end.i.i.sw.epilog_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv8.i.i = and i32 %9, 65535
  %call9.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef 69, i32 noundef %conv8.i.i, i32 noundef %call2.i.i) #11
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %if.end
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %16 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val2, align 4
  %18 = trunc i32 %17 to i16
  %conv.i18 = sub i16 63, %18
  %19 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i.i20 = icmp slt i32 %20, 0
  br i1 %cmp.i.i20, label %sw.bb1.sw.epilog_crit_edge, label %if.end.i.i26

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i.i26:                                     ; preds = %sw.bb1
  %dev.i.i21 = getelementptr i8, ptr %1, i32 -100
  %21 = ptrtoint ptr %dev.i.i21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i.i21, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %shl.i.i.i22 = shl i32 %24, 8
  %or.i.i23 = or i32 %shl.i.i.i22, -2147483648
  %call2.i.i24 = tail call i32 @usb_control_msg(ptr noundef %22, i32 noundef %or.i.i23, i8 noundef zeroext 83, i8 noundef zeroext 64, i16 noundef zeroext %conv.i18, i16 noundef zeroext 49, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i24)
  %cmp3.i.i25 = icmp slt i32 %call2.i.i24, 0
  br i1 %cmp3.i.i25, label %do.end.i.i, label %se401_set_feature.exit.i

do.end.i.i:                                       ; preds = %if.end.i.i26
  call void @__sanitizer_cov_trace_pc() #10
  %conv5.i.i = zext i16 %conv.i18 to i32
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef 49, i32 noundef %conv5.i.i, i32 noundef %call2.i.i24) #11
  br label %sw.epilog.sink.split

se401_set_feature.exit.i:                         ; preds = %if.end.i.i26
  %25 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr.i = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp.i6.i = icmp slt i32 %.pr.i, 0
  br i1 %cmp.i6.i, label %se401_set_feature.exit.i.sw.epilog_crit_edge, label %if.end.i12.i

se401_set_feature.exit.i.sw.epilog_crit_edge:     ; preds = %se401_set_feature.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i12.i:                                     ; preds = %se401_set_feature.exit.i
  %26 = ptrtoint ptr %dev.i.i21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i.i21, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 8
  %shl.i.i8.i = shl i32 %29, 8
  %or.i9.i = or i32 %shl.i.i8.i, -2147483648
  %call2.i10.i = tail call i32 @usb_control_msg(ptr noundef %27, i32 noundef %or.i9.i, i8 noundef zeroext 83, i8 noundef zeroext 64, i16 noundef zeroext %conv.i18, i16 noundef zeroext 50, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i10.i)
  %cmp3.i11.i = icmp slt i32 %call2.i10.i, 0
  br i1 %cmp3.i11.i, label %do.end.i15.i, label %se401_set_feature.exit16.i

do.end.i15.i:                                     ; preds = %if.end.i12.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv5.i13.i = zext i16 %conv.i18 to i32
  %call6.i14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef 50, i32 noundef %conv5.i13.i, i32 noundef %call2.i10.i) #11
  br label %sw.epilog.sink.split

se401_set_feature.exit16.i:                       ; preds = %if.end.i12.i
  %30 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr30.pr.i = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr30.pr.i)
  %cmp.i18.i = icmp slt i32 %.pr30.pr.i, 0
  br i1 %cmp.i18.i, label %se401_set_feature.exit16.i.sw.epilog_crit_edge, label %if.end.i24.i

se401_set_feature.exit16.i.sw.epilog_crit_edge:   ; preds = %se401_set_feature.exit16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i24.i:                                     ; preds = %se401_set_feature.exit16.i
  %31 = ptrtoint ptr %dev.i.i21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i.i21, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 8
  %shl.i.i20.i = shl i32 %34, 8
  %or.i21.i = or i32 %shl.i.i20.i, -2147483648
  %call2.i22.i = tail call i32 @usb_control_msg(ptr noundef %32, i32 noundef %or.i21.i, i8 noundef zeroext 83, i8 noundef zeroext 64, i16 noundef zeroext %conv.i18, i16 noundef zeroext 51, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i22.i)
  %cmp3.i23.i = icmp slt i32 %call2.i22.i, 0
  br i1 %cmp3.i23.i, label %do.end.i27.i, label %if.end.i24.i.sw.epilog_crit_edge

if.end.i24.i.sw.epilog_crit_edge:                 ; preds = %if.end.i24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end.i27.i:                                     ; preds = %if.end.i24.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv5.i25.i = zext i16 %conv.i18 to i32
  %call6.i26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef 51, i32 noundef %conv5.i25.i, i32 noundef %call2.i22.i) #11
  br label %sw.epilog.sink.split

sw.bb3:                                           ; preds = %if.end
  %val4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %35 = ptrtoint ptr %val4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val4, align 4
  %freq = getelementptr i8, ptr %1, i32 1028
  %37 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %freq, align 4
  %val5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %38, i32 0, i32 22
  %39 = ptrtoint ptr %val5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val5, align 4
  %shl.i = shl i32 %36, 6
  %expo_change_state.i = getelementptr i8, ptr %1, i32 2748
  %41 = ptrtoint ptr %expo_change_state.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %expo_change_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp.i = icmp eq i32 %40, 1
  %rem.i = srem i32 %shl.i, 106667
  %sub.i = select i1 %cmp.i, i32 %rem.i, i32 0
  %integration.0.i = sub i32 %shl.i, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %cmp1.i = icmp eq i32 %40, 2
  %rem3.i = srem i32 %integration.0.i, 88889
  %sub4.i = select i1 %cmp1.i, i32 %rem3.i, i32 0
  %integration.1.i = sub i32 %integration.0.i, %sub4.i
  %42 = lshr i32 %integration.1.i, 16
  %43 = trunc i32 %integration.1.i to i16
  %conv9.i = and i16 %43, 255
  %44 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %usb_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.i.i28 = icmp slt i32 %45, 0
  br i1 %cmp.i.i28, label %sw.bb3.sw.epilog_crit_edge, label %if.end.i.i34

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i.i34:                                     ; preds = %sw.bb3
  %dev.i.i29 = getelementptr i8, ptr %1, i32 -100
  %46 = ptrtoint ptr %dev.i.i29 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i.i29, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 8
  %shl.i.i.i30 = shl i32 %49, 8
  %or.i.i31 = or i32 %shl.i.i.i30, -2147483648
  %call2.i.i32 = tail call i32 @usb_control_msg(ptr noundef %47, i32 noundef %or.i.i31, i8 noundef zeroext 83, i8 noundef zeroext 64, i16 noundef zeroext %conv9.i, i16 noundef zeroext 39, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i32)
  %cmp3.i.i33 = icmp slt i32 %call2.i.i32, 0
  br i1 %cmp3.i.i33, label %do.end.i.i37, label %se401_set_feature.exit.i39

do.end.i.i37:                                     ; preds = %if.end.i.i34
  call void @__sanitizer_cov_trace_pc() #10
  %conv5.i.i35 = zext i16 %conv9.i to i32
  %call6.i.i36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef 39, i32 noundef %conv5.i.i35, i32 noundef %call2.i.i32) #11
  br label %sw.epilog.sink.split

se401_set_feature.exit.i39:                       ; preds = %if.end.i.i34
  %50 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pr.i38 = load i32, ptr %usb_err, align 8
  %51 = lshr i16 %43, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i38)
  %cmp.i23.i = icmp slt i32 %.pr.i38, 0
  br i1 %cmp.i23.i, label %se401_set_feature.exit.i39.sw.epilog_crit_edge, label %if.end.i29.i

se401_set_feature.exit.i39.sw.epilog_crit_edge:   ; preds = %se401_set_feature.exit.i39
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i29.i:                                     ; preds = %se401_set_feature.exit.i39
  %52 = ptrtoint ptr %dev.i.i29 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i.i29, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 8
  %shl.i.i25.i = shl i32 %55, 8
  %or.i26.i = or i32 %shl.i.i25.i, -2147483648
  %call2.i27.i = tail call i32 @usb_control_msg(ptr noundef %53, i32 noundef %or.i26.i, i8 noundef zeroext 83, i8 noundef zeroext 64, i16 noundef zeroext %51, i16 noundef zeroext 38, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i27.i)
  %cmp3.i28.i = icmp slt i32 %call2.i27.i, 0
  br i1 %cmp3.i28.i, label %do.end.i32.i, label %se401_set_feature.exit33.i

do.end.i32.i:                                     ; preds = %if.end.i29.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv5.i30.i = zext i16 %51 to i32
  %call6.i31.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef 38, i32 noundef %conv5.i30.i, i32 noundef %call2.i27.i) #11
  br label %sw.epilog.sink.split

se401_set_feature.exit33.i:                       ; preds = %if.end.i29.i
  %56 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pr47.pr.i = load i32, ptr %usb_err, align 8
  %57 = trunc i32 %42 to i16
  %conv11.i = and i16 %57, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr47.pr.i)
  %cmp.i35.i = icmp slt i32 %.pr47.pr.i, 0
  br i1 %cmp.i35.i, label %se401_set_feature.exit33.i.sw.epilog_crit_edge, label %if.end.i41.i

se401_set_feature.exit33.i.sw.epilog_crit_edge:   ; preds = %se401_set_feature.exit33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i41.i:                                     ; preds = %se401_set_feature.exit33.i
  %58 = ptrtoint ptr %dev.i.i29 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i.i29, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 8
  %shl.i.i37.i = shl i32 %61, 8
  %or.i38.i = or i32 %shl.i.i37.i, -2147483648
  %call2.i39.i = tail call i32 @usb_control_msg(ptr noundef %59, i32 noundef %or.i38.i, i8 noundef zeroext 83, i8 noundef zeroext 64, i16 noundef zeroext %conv11.i, i16 noundef zeroext 37, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i39.i)
  %cmp3.i40.i = icmp slt i32 %call2.i39.i, 0
  br i1 %cmp3.i40.i, label %do.end.i44.i, label %if.end.i41.i.sw.epilog_crit_edge

if.end.i41.i.sw.epilog_crit_edge:                 ; preds = %if.end.i41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end.i44.i:                                     ; preds = %if.end.i41.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv5.i42.i = zext i16 %conv11.i to i32
  %call6.i43.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef 37, i32 noundef %conv5.i42.i, i32 noundef %call2.i39.i) #11
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %do.end.i44.i, %do.end.i32.i, %do.end.i.i37, %do.end.i27.i, %do.end.i15.i, %do.end.i.i, %if.then5.i.i
  %call2.i.sink.i40.sink = phi i32 [ %call2.i.i, %if.then5.i.i ], [ %call2.i.i24, %do.end.i.i ], [ %call2.i10.i, %do.end.i15.i ], [ %call2.i22.i, %do.end.i27.i ], [ %call2.i.i32, %do.end.i.i37 ], [ %call2.i27.i, %do.end.i32.i ], [ %call2.i39.i, %do.end.i44.i ]
  %62 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %call2.i.sink.i40.sink, ptr %usb_err, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.i41.i.sw.epilog_crit_edge, %se401_set_feature.exit33.i.sw.epilog_crit_edge, %se401_set_feature.exit.i39.sw.epilog_crit_edge, %sw.bb3.sw.epilog_crit_edge, %if.end.i24.i.sw.epilog_crit_edge, %se401_set_feature.exit16.i.sw.epilog_crit_edge, %se401_set_feature.exit.i.sw.epilog_crit_edge, %sw.bb1.sw.epilog_crit_edge, %if.end.i.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %63 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %64, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_frame_add(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !58, !59, !60, !61, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !86}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @__UNIQUE_ID_author303, !1, !"__UNIQUE_ID_author303", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/se401.c", i32 30, i32 1}
!2 = !{ptr @__UNIQUE_ID_description304, !3, !"__UNIQUE_ID_description304", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/se401.c", i32 31, i32 1}
!4 = !{ptr @__UNIQUE_ID_file305, !5, !"__UNIQUE_ID_file305", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/se401.c", i32 32, i32 1}
!6 = !{ptr @__UNIQUE_ID_license306, !5, !"__UNIQUE_ID_license306", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_gspca_se401__307_730_sd_driver_init6, !8, !"__initcall__kmod_gspca_se401__307_730_sd_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/gspca/se401.c", i32 730, i32 1}
!9 = !{ptr @__exitcall_sd_driver_exit, !8, !"__exitcall_sd_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/gspca/se401.c", i32 717, i32 10}
!13 = !{ptr @sd_driver, !14, !"sd_driver", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/gspca/se401.c", i32 716, i32 26}
!15 = !{ptr @sd_desc, !16, !"sd_desc", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/gspca/se401.c", i32 672, i32 29}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/gspca/se401.c", i32 232, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @sd_config._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @sd_config._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/usb/gspca/se401.c", i32 237, i32 3}
!25 = !{ptr @sd_config._entry.5, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @sd_config._entry_ptr.7, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/gspca/se401.c", i32 242, i32 3}
!29 = !{ptr @sd_config._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @sd_config._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/gspca/se401.c", i32 246, i32 3}
!33 = !{ptr @sd_config._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @sd_config._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/gspca/se401.c", i32 285, i32 4}
!37 = !{ptr @sd_config._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @sd_config._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/gspca/se401.c", i32 292, i32 4}
!41 = !{ptr @sd_config._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @sd_config._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/gspca/se401.c", i32 101, i32 4}
!45 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @se401_read_req._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @se401_read_req._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/gspca/se401.c", i32 76, i32 4}
!50 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @se401_write_req._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @se401_write_req._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @sd_init_controls._key, !54, !"_key", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/gspca/se401.c", i32 650, i32 2}
!55 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/usb/gspca/se401.c", i32 664, i32 3}
!58 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @sd_init_controls._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @sd_init_controls._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @sd_ctrl_ops, !62, !"sd_ctrl_ops", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/gspca/se401.c", i32 640, i32 35}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/usb/gspca/se401.c", i32 126, i32 3}
!65 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @se401_set_feature._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @se401_set_feature._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/usb/gspca/se401.c", i32 505, i32 4}
!70 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @sd_pkt_scan_janggu._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @sd_pkt_scan_janggu._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/gspca/se401.c", i32 510, i32 4}
!75 = !{ptr @sd_pkt_scan_janggu._entry.31, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @sd_pkt_scan_janggu._entry_ptr.33, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/gspca/se401.c", i32 534, i32 5}
!79 = !{ptr @sd_pkt_scan_janggu._entry.34, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @sd_pkt_scan_janggu._entry_ptr.36, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/usb/gspca/se401.c", i32 151, i32 3}
!83 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @se401_get_feature._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @se401_get_feature._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @device_table, !87, !"device_table", i1 false, i1 false}
!87 = !{!"../drivers/media/usb/gspca/se401.c", i32 688, i32 35}
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
