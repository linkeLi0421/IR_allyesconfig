; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/pac7311.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/pac7311.c"
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
%struct.sd = type { %struct.gspca_dev, ptr, ptr, i8, i8, %struct.atomic_t }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_author303 = internal constant [58 x i8] c"gspca_pac7311.author=Thomas Kaiser thomas@kaiser-linux.li\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [41 x i8] c"gspca_pac7311.description=Pixart PAC7311\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [57 x i8] c"gspca_pac7311.file=drivers/media/usb/gspca/gspca_pac7311\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [26 x i8] c"gspca_pac7311.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_gspca_pac7311__307_687_sd_driver_init6 = internal global ptr @sd_driver_init, section ".initcall6.init", align 4
@sd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @sd_probe, ptr @gspca_disconnect, ptr null, ptr @gspca_suspend, ptr @gspca_resume, ptr @gspca_resume, ptr null, ptr null, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sd_driver_exit = internal global ptr @sd_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gspca_pac7311\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pac7311\00", [24 x i8] zeroinitializer }, align 32
@device_table = internal constant { [7 x %struct.usb_device_id], [56 x i8] } { [7 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 2362, i16 9728, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2362, i16 9729, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2362, i16 9731, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2362, i16 9736, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2362, i16 9742, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2362, i16 9743, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@sd_desc = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str.1, ptr @sd_config, ptr @sd_init, ptr @sd_init_controls, ptr null, ptr @sd_start, ptr @sd_pkt_scan, ptr null, ptr null, ptr @sd_stopN, ptr null, ptr @do_autogain, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sd_int_pkt_scan, i8 0 }, [36 x i8] zeroinitializer }, align 32
@vga_mode = internal constant { [3 x %struct.v4l2_pix_format], [48 x i8] } { [3 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 160, i32 120, i32 1196444240, i32 1, i32 160, i32 7790, i32 7, i32 2, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 320, i32 240, i32 1196444240, i32 1, i32 320, i32 29390, i32 7, i32 1, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 640, i32 480, i32 1196444240, i32 1, i32 640, i32 115790, i32 7, i32 0, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@init_7311 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\FF\01x@x@xD\FF\04'\80(\CA)S*\0E\FF\01> ", [42 x i8] zeroinitializer }, align 32
@reg_w._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013gspca_pac7311: reg_w() failed index 0x%02x, value 0x%02x, error %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reg_w\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/usb/gspca/pac7311.c\00", [62 x i8] zeroinitializer }, align 32
@reg_w._entry_ptr = internal global ptr @reg_w._entry, section ".printk_index", align 4
@sd_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pac7311:407:(hdl)->_lock\00", [39 x i8] zeroinitializer }, align 32
@sd_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @sd_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@sd_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.4, i32 423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013gspca_pac7311: Could not initialize controls\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sd_init_controls\00", [47 x i8] zeroinitializer }, align 32
@sd_init_controls._entry_ptr = internal global ptr @sd_init_controls._entry, section ".printk_index", align 4
@start_7311 = internal constant { [156 x i8], [36 x i8] } { [156 x i8] c"\FF\01\01\02+H\0A@\08\00\00\08\00\06\FF\11\FFZ0\90L\00\07\00\0A\10\00\A0\10\02\00\00\00\00\0B\01\00\00\00\00\00\00\00\00\00\00\00\00>*\00\00xRJRxnHFHn_IBI__IBI_nHFHnxRJRx\00\00\09\1B4I\\\9B\D0\FFx\06D\00\F2\01\01\80\7F\12*\1C\00\C8\02X\03\84\12\00\1A\04\08\0C\10\14\18 \96\03\01\08\04\A0\04DDD\04\F0\0D\01\00\00\00\22\00 \00?\00\0A\01\00\FF\01\04\00\FE\11\01\01\00\00", [36 x i8] zeroinitializer }, align 32
@page4_7311 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\AA\AA\04T\07+\09\0F\09\00\AA\AA\07\00\00b\08\AA\07\00\00\00\00\00\00\00\00\03\A0\01\F4\AA\AA\00\08\AA\03\AA\00h\CA\10\06x\00\00\00\00#(\04\11\00\00", [42 x i8] zeroinitializer }, align 32
@reg_w_var._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: Incorrect variable sequence\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reg_w_var\00", [22 x i8] zeroinitializer }, align 32
@reg_w_var._entry_ptr = internal global ptr @reg_w_var._entry, section ".printk_index", align 4
@reg_w_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013gspca_pac7311: reg_w_page() failed index 0x%02x, value 0x%02x, error %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"reg_w_page\00", [21 x i8] zeroinitializer }, align 32
@reg_w_page._entry_ptr = internal global ptr @reg_w_page._entry, section ".printk_index", align 4
@reg_w_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.4, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013gspca_pac7311: reg_w_buf() failed index 0x%02x, error %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reg_w_buf\00", [22 x i8] zeroinitializer }, align 32
@reg_w_buf._entry_ptr = internal global ptr @reg_w_buf._entry, section ".printk_index", align 4
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@pac_find_sof._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.16, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\017%s: SOF found, bytes to analyze: %u - Frame starts at byte #%u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pac_find_sof\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/media/usb/gspca/pac_common.h\00", [59 x i8] zeroinitializer }, align 32
@pac_find_sof._entry_ptr = internal global ptr @pac_find_sof._entry, section ".printk_index", align 4
@pac_jpeg_header1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\FF\D8\FF\C0\00\11\08", [25 x i8] zeroinitializer }, align 32
@pac_jpeg_header2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\03\01!\00\02\11\01\03\11\01\FF\DA\00\0C\03\01\00\02\11\03\11\00?\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 254]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.18 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 8, i64 150, i64 255]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 9963777, i64 9963794, i64 9963796]
@___asan_gen_.22 = private unnamed_addr constant [10 x i8] c"sd_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 675, i32 26 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 687, i32 1 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 676, i32 10 }
@___asan_gen_.31 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 656, i32 35 }
@___asan_gen_.34 = private unnamed_addr constant [8 x i8] c"sd_desc\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 641, i32 29 }
@___asan_gen_.37 = private unnamed_addr constant [9 x i8] c"vga_mode\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 75, i32 37 }
@___asan_gen_.40 = private unnamed_addr constant [10 x i8] c"init_7311\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 96, i32 19 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 191, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 407, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [12 x i8] c"sd_ctrl_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 396, i32 35 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 423, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [11 x i8] c"start_7311\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 110, i32 19 }
@___asan_gen_.76 = private unnamed_addr constant [11 x i8] c"page4_7311\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 141, i32 19 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 252, i32 5 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 226, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 168, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [40 x i8] c"../drivers/media/usb/gspca/pac_common.h\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 100, i32 5 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"pac_jpeg_header1\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 509, i32 28 }
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"pac_jpeg_header2\00", align 1
@___asan_gen_.122 = private constant [37 x i8] c"../drivers/media/usb/gspca/pac7311.c\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 520, i32 28 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_sd_driver_exit, ptr @__initcall__kmod_gspca_pac7311__307_687_sd_driver_init6, ptr @pac_find_sof._entry, ptr @pac_find_sof._entry_ptr, ptr @reg_w._entry, ptr @reg_w._entry_ptr, ptr @reg_w_buf._entry, ptr @reg_w_buf._entry_ptr, ptr @reg_w_page._entry, ptr @reg_w_page._entry_ptr, ptr @reg_w_var._entry, ptr @reg_w_var._entry_ptr, ptr @sd_driver_exit, ptr @sd_init_controls._entry, ptr @sd_init_controls._entry_ptr, ptr @sd_driver, ptr @.str, ptr @.str.1, ptr @device_table, ptr @sd_desc, ptr @vga_mode, ptr @init_7311, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @sd_init_controls._key, ptr @.str.5, ptr @sd_ctrl_ops, ptr @.str.6, ptr @.str.7, ptr @start_7311, ptr @page4_7311, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @pac_jpeg_header1, ptr @pac_jpeg_header2], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vga_mode to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_7311 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_7311 to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page4_7311 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w_var._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_w_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pac_find_sof._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pac_jpeg_header1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pac_jpeg_header2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }]
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
  %call = tail call i32 @gspca_dev_probe(ptr noundef %intf, ptr noundef %id, ptr noundef nonnull @sd_desc, i32 noundef 2624, ptr noundef null) #6
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
  %cam1 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %0 = ptrtoint ptr %cam1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @vga_mode, ptr %cam1, align 4
  %nmodes = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %1 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 3, ptr %nmodes, align 4
  %input_flags = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 3
  %2 = ptrtoint ptr %input_flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 32, ptr %input_flags, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init(ptr nocapture noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %usb_buf.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %dev.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %reg_w.exit.i.while.body.i_crit_edge, %entry
  %dec2.i = phi i32 [ 10, %entry ], [ %dec.i, %reg_w.exit.i.while.body.i_crit_edge ]
  %seq.addr.01.i = phi ptr [ @init_7311, %entry ], [ %add.ptr.i, %reg_w.exit.i.while.body.i_crit_edge ]
  %0 = ptrtoint ptr %seq.addr.01.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %seq.addr.01.i, align 1
  %arrayidx1.i = getelementptr i8, ptr %seq.addr.01.i, i32 1
  %2 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1.i, align 1
  %4 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.i = icmp slt i32 %5, 0
  br i1 %cmp.i.i, label %while.body.i.reg_w.exit.i_crit_edge, label %if.end.i.i

while.body.i.reg_w.exit.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit.i

if.end.i.i:                                       ; preds = %while.body.i
  %6 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_buf.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %3, ptr %7, align 1
  %9 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  %shl.i.i.i = shl i32 %12, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %conv.i.i = zext i8 %1 to i16
  %13 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i.i = tail call i32 @usb_control_msg(ptr noundef %10, i32 noundef %or.i.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %conv.i.i, ptr noundef %13, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp4.i.i, label %do.end.i.i, label %if.end.i.i.reg_w.exit.i_crit_edge

if.end.i.i.reg_w.exit.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv7.i.i = zext i8 %1 to i32
  %conv8.i.i = zext i8 %3 to i32
  %call9.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %conv7.i.i, i32 noundef %conv8.i.i, i32 noundef %call3.i.i) #9
  %14 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call3.i.i, ptr %usb_err.i.i, align 8
  br label %reg_w.exit.i

reg_w.exit.i:                                     ; preds = %do.end.i.i, %if.end.i.i.reg_w.exit.i_crit_edge, %while.body.i.reg_w.exit.i_crit_edge
  %add.ptr.i = getelementptr i8, ptr %seq.addr.01.i, i32 2
  %dec.i = add nsw i32 %dec2.i, -1
  %cmp.i.not = icmp eq i32 %dec2.i, 0
  br i1 %cmp.i.not, label %reg_w_seq.exit, label %reg_w.exit.i.while.body.i_crit_edge

reg_w.exit.i.while.body.i_crit_edge:              ; preds = %reg_w.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

reg_w_seq.exit:                                   ; preds = %reg_w.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %usb_err.i.i, align 8
  ret i32 %16
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
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 5, ptr noundef nonnull @sd_init_controls._key, ptr noundef nonnull @.str.5) #6
  %call2 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 15, i64 noundef 1, i64 noundef 7) #6
  %contrast = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %1 = ptrtoint ptr %contrast to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %contrast, align 8
  %call3 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963794, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #6
  %2 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %2, align 8
  %call4 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963793, i64 noundef 2, i64 noundef 63, i64 noundef 1, i64 noundef 3) #6
  %exposure = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %exposure to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call4, ptr %exposure, align 4
  %call5 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 244, i64 noundef 1, i64 noundef 122) #6
  %gain = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 2
  %5 = ptrtoint ptr %gain to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5, ptr %gain, align 8
  %call6 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #6
  %hflip = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %6 = ptrtoint ptr %hflip to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call6, ptr %hflip, align 4
  %error = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8, i32 9
  %7 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #9
  %9 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %error, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 3, ptr noundef %2, i8 noundef zeroext 0, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %10, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_start(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sof_read = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %sof_read to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %sof_read, align 8
  %usb_err.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %usb_buf.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %dev.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.backedge, %entry
  %seq.addr.0.i = phi ptr [ @start_7311, %entry ], [ %seq.addr.0.i.be, %for.cond.i.backedge ]
  %incdec.ptr.i = getelementptr i8, ptr %seq.addr.0.i, i32 1
  %incdec.ptr1.i = getelementptr i8, ptr %seq.addr.0.i, i32 2
  %1 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %incdec.ptr.i, align 1
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i8 %2, label %sw.default.i [
    i8 0, label %for.cond.i.reg_w_var.exit_crit_edge
    i8 -2, label %sw.bb3.i
  ]

for.cond.i.reg_w_var.exit_crit_edge:              ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w_var.exit

sw.bb3.i:                                         ; preds = %for.cond.i
  %4 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.i = icmp slt i32 %5, 0
  br i1 %cmp.i.i, label %sw.bb3.i.for.cond.i.backedge_crit_edge, label %sw.bb3.i.for.body.i.i_crit_edge

sw.bb3.i.for.body.i.i_crit_edge:                  ; preds = %sw.bb3.i
  br label %for.body.i.i

sw.bb3.i.for.cond.i.backedge_crit_edge:           ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.backedge

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %sw.bb3.i.for.body.i.i_crit_edge
  %index.02.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %sw.bb3.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr @page4_7311, i32 %index.02.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %7)
  %cmp2.i.i = icmp eq i8 %7, -86
  br i1 %cmp2.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end5.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.end5.i.i:                                      ; preds = %for.body.i.i
  %8 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usb_buf.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %7, ptr %9, align 1
  %11 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i.i.i = shl i32 %14, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %conv9.i.i = trunc i32 %index.02.i.i to i16
  %15 = load ptr, ptr %usb_buf.i.i, align 4
  %call11.i.i = tail call i32 @usb_control_msg(ptr noundef %12, i32 noundef %or.i.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %conv9.i.i, ptr noundef %15, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %cmp12.i.i = icmp slt i32 %call11.i.i, 0
  br i1 %cmp12.i.i, label %do.end.i.i, label %if.end5.i.i.for.inc.i.i_crit_edge

if.end5.i.i.for.inc.i.i_crit_edge:                ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

do.end.i.i:                                       ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv16.i.i = zext i8 %7 to i32
  %call17.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %index.02.i.i, i32 noundef %conv16.i.i, i32 noundef %call11.i.i) #9
  %16 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call11.i.i, ptr %usb_err.i.i, align 8
  br label %for.cond.i.backedge

for.inc.i.i:                                      ; preds = %if.end5.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %index.02.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 54
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.cond.i.backedge_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.for.cond.i.backedge_crit_edge:        ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.backedge

sw.default.i:                                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %2)
  %cmp.i = icmp ugt i8 %2, 64
  br i1 %cmp.i, label %do.end.i, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp5.not30.i = icmp eq i8 %2, 0
  br i1 %cmp5.not30.i, label %while.cond.preheader.i.for.cond.i.backedge_crit_edge, label %while.body.preheader.i

while.cond.preheader.i.for.cond.i.backedge_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.backedge

while.body.preheader.i:                           ; preds = %while.cond.preheader.i
  %conv2.i = zext i8 %2 to i32
  %17 = ptrtoint ptr %seq.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %seq.addr.0.i, align 1
  %conv.i = zext i8 %18 to i32
  %19 = and i32 %conv2.i, 7
  br label %while.body.i

do.end.i:                                         ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name.i) #9
  br label %reg_w_var.exit

while.body.i:                                     ; preds = %reg_w_buf.exit21.i.while.body.i_crit_edge, %while.body.preheader.i
  %seq.addr.134.i = phi ptr [ %add.ptr13.i, %reg_w_buf.exit21.i.while.body.i_crit_edge ], [ %incdec.ptr1.i, %while.body.preheader.i ]
  %len.033.i = phi i32 [ %sub.i, %reg_w_buf.exit21.i.while.body.i_crit_edge ], [ %conv2.i, %while.body.preheader.i ]
  %index.031.i = phi i32 [ %add.i, %reg_w_buf.exit21.i.while.body.i_crit_edge ], [ %conv.i, %while.body.preheader.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %len.033.i)
  %cmp7.i = icmp ult i32 %len.033.i, 8
  %20 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i2.i = icmp slt i32 %21, 0
  br i1 %cmp7.i, label %if.then9.i, label %if.end11.i

if.then9.i:                                       ; preds = %while.body.i
  br i1 %cmp.i2.i, label %if.then9.i.reg_w_buf.exit.i_crit_edge, label %if.end.i.i

if.then9.i.reg_w_buf.exit.i_crit_edge:            ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w_buf.exit.i

if.end.i.i:                                       ; preds = %if.then9.i
  %22 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %usb_buf.i.i, align 4
  %24 = call ptr @memcpy(ptr %23, ptr %seq.addr.134.i, i32 %19)
  %25 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 8
  %shl.i.i5.i = shl i32 %28, 8
  %or.i6.i = or i32 %shl.i.i5.i, -2147483648
  %29 = trunc i32 %index.031.i to i16
  %conv.i.i = and i16 %29, 255
  %30 = load ptr, ptr %usb_buf.i.i, align 4
  %conv3.i.i = trunc i32 %19 to i16
  %call4.i.i = tail call i32 @usb_control_msg(ptr noundef %26, i32 noundef %or.i6.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %conv.i.i, ptr noundef %30, i16 noundef zeroext %conv3.i.i, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp5.i.i = icmp slt i32 %call4.i.i, 0
  br i1 %cmp5.i.i, label %do.end.i7.i, label %if.end.i.i.reg_w_buf.exit.i_crit_edge

if.end.i.i.reg_w_buf.exit.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w_buf.exit.i

do.end.i7.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv8.i.i = and i32 %index.031.i, 255
  %call9.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %conv8.i.i, i32 noundef %call4.i.i) #9
  %31 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call4.i.i, ptr %usb_err.i.i, align 8
  br label %reg_w_buf.exit.i

reg_w_buf.exit.i:                                 ; preds = %do.end.i7.i, %if.end.i.i.reg_w_buf.exit.i_crit_edge, %if.then9.i.reg_w_buf.exit.i_crit_edge
  %add.ptr.i = getelementptr i8, ptr %seq.addr.134.i, i32 %19
  br label %for.cond.i.backedge

for.cond.i.backedge:                              ; preds = %reg_w_buf.exit21.i.for.cond.i.backedge_crit_edge, %reg_w_buf.exit.i, %while.cond.preheader.i.for.cond.i.backedge_crit_edge, %for.inc.i.i.for.cond.i.backedge_crit_edge, %do.end.i.i, %sw.bb3.i.for.cond.i.backedge_crit_edge
  %seq.addr.0.i.be = phi ptr [ %add.ptr.i, %reg_w_buf.exit.i ], [ %incdec.ptr1.i, %sw.bb3.i.for.cond.i.backedge_crit_edge ], [ %incdec.ptr1.i, %do.end.i.i ], [ %incdec.ptr1.i, %while.cond.preheader.i.for.cond.i.backedge_crit_edge ], [ %add.ptr13.i, %reg_w_buf.exit21.i.for.cond.i.backedge_crit_edge ], [ %incdec.ptr1.i, %for.inc.i.i.for.cond.i.backedge_crit_edge ]
  br label %for.cond.i

if.end11.i:                                       ; preds = %while.body.i
  br i1 %cmp.i2.i, label %if.end11.i.reg_w_buf.exit21.i_crit_edge, label %if.end.i17.i

if.end11.i.reg_w_buf.exit21.i_crit_edge:          ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w_buf.exit21.i

if.end.i17.i:                                     ; preds = %if.end11.i
  %32 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %usb_buf.i.i, align 4
  %34 = ptrtoint ptr %seq.addr.134.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 8)
  %35 = load i64, ptr %seq.addr.134.i, align 1
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 8)
  store i64 %35, ptr %33, align 1
  %37 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 8
  %shl.i.i12.i = shl i32 %40, 8
  %or.i13.i = or i32 %shl.i.i12.i, -2147483648
  %41 = trunc i32 %index.031.i to i16
  %conv.i14.i = and i16 %41, 255
  %42 = load ptr, ptr %usb_buf.i.i, align 4
  %call4.i15.i = tail call i32 @usb_control_msg(ptr noundef %38, i32 noundef %or.i13.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %conv.i14.i, ptr noundef %42, i16 noundef zeroext 8, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i15.i)
  %cmp5.i16.i = icmp slt i32 %call4.i15.i, 0
  br i1 %cmp5.i16.i, label %do.end.i20.i, label %if.end.i17.i.reg_w_buf.exit21.i_crit_edge

if.end.i17.i.reg_w_buf.exit21.i_crit_edge:        ; preds = %if.end.i17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w_buf.exit21.i

do.end.i20.i:                                     ; preds = %if.end.i17.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv8.i18.i = and i32 %index.031.i, 255
  %call9.i19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %conv8.i18.i, i32 noundef %call4.i15.i) #9
  %43 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call4.i15.i, ptr %usb_err.i.i, align 8
  br label %reg_w_buf.exit21.i

reg_w_buf.exit21.i:                               ; preds = %do.end.i20.i, %if.end.i17.i.reg_w_buf.exit21.i_crit_edge, %if.end11.i.reg_w_buf.exit21.i_crit_edge
  %add.ptr13.i = getelementptr i8, ptr %seq.addr.134.i, i32 8
  %add.i = add nuw nsw i32 %index.031.i, 8
  %sub.i = add nsw i32 %len.033.i, -8
  %cmp5.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp5.not.i, label %reg_w_buf.exit21.i.for.cond.i.backedge_crit_edge, label %reg_w_buf.exit21.i.while.body.i_crit_edge

reg_w_buf.exit21.i.while.body.i_crit_edge:        ; preds = %reg_w_buf.exit21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

reg_w_buf.exit21.i.for.cond.i.backedge_crit_edge: ; preds = %reg_w_buf.exit21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.backedge

reg_w_var.exit:                                   ; preds = %do.end.i, %for.cond.i.reg_w_var.exit_crit_edge
  %contrast = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %44 = ptrtoint ptr %contrast to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %contrast, align 8
  %call = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %45) #6
  tail call fastcc void @setcontrast(ptr noundef %gspca_dev, i32 noundef %call)
  %gain = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 2
  %46 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %gain, align 8
  %call1 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %47) #6
  tail call fastcc void @setgain(ptr noundef %gspca_dev, i32 noundef %call1)
  %exposure = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 1
  %48 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %exposure, align 4
  %call2 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %49) #6
  tail call fastcc void @setexposure(ptr noundef %gspca_dev, i32 noundef %call2)
  %hflip = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %50 = ptrtoint ptr %hflip to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hflip, align 4
  %call3 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %51) #6
  tail call fastcc void @sethvflip(ptr noundef %gspca_dev, i32 noundef %call3)
  %cam = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %52 = ptrtoint ptr %cam to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cam, align 4
  %curr_mode = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %54 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %curr_mode, align 1
  %conv = zext i8 %55 to i32
  %priv = getelementptr %struct.v4l2_pix_format, ptr %53, i32 %conv, i32 7
  %56 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %priv, align 4
  %58 = zext i32 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %57, label %reg_w_var.exit.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb4
    i32 0, label %sw.bb5
  ]

reg_w_var.exit.sw.epilog_crit_edge:               ; preds = %reg_w_var.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %reg_w_var.exit
  %59 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp.i33 = icmp slt i32 %60, 0
  br i1 %cmp.i33, label %sw.bb.sw.epilog_crit_edge, label %if.end.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %61 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %usb_buf.i.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %62, align 1
  %64 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev.i.i, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 8
  %shl.i.i = shl i32 %67, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %68 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %65, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 255, ptr noundef %68, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end.i34, label %reg_w.exit

do.end.i34:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 255, i32 noundef 1, i32 noundef %call3.i) #9
  br label %sw.epilog.sink.split

reg_w.exit:                                       ; preds = %if.end.i
  %69 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %.pr = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i36 = icmp slt i32 %.pr, 0
  br i1 %cmp.i36, label %reg_w.exit.sw.epilog_crit_edge, label %if.end.i43

reg_w.exit.sw.epilog_crit_edge:                   ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i43:                                       ; preds = %reg_w.exit
  %70 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %usb_buf.i.i, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 32, ptr %71, align 1
  %73 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev.i.i, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %74, align 8
  %shl.i.i39 = shl i32 %76, 8
  %or.i40 = or i32 %shl.i.i39, -2147483648
  %77 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i41 = tail call i32 @usb_control_msg(ptr noundef %74, i32 noundef %or.i40, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 23, ptr noundef %77, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i41)
  %cmp4.i42 = icmp slt i32 %call3.i41, 0
  br i1 %cmp4.i42, label %do.end.i45, label %reg_w.exit46

do.end.i45:                                       ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 23, i32 noundef 32, i32 noundef %call3.i41) #9
  br label %sw.epilog.sink.split

reg_w.exit46:                                     ; preds = %if.end.i43
  %78 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %.pr156.pr = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr156.pr)
  %cmp.i48 = icmp slt i32 %.pr156.pr, 0
  br i1 %cmp.i48, label %reg_w.exit46.sw.epilog_crit_edge, label %if.end.i55

reg_w.exit46.sw.epilog_crit_edge:                 ; preds = %reg_w.exit46
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i55:                                       ; preds = %reg_w.exit46
  %79 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %usb_buf.i.i, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 16, ptr %80, align 1
  %82 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev.i.i, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %83, align 8
  %shl.i.i51 = shl i32 %85, 8
  %or.i52 = or i32 %shl.i.i51, -2147483648
  %86 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i53 = tail call i32 @usb_control_msg(ptr noundef %83, i32 noundef %or.i52, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 135, ptr noundef %86, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i53)
  %cmp4.i54 = icmp slt i32 %call3.i53, 0
  br i1 %cmp4.i54, label %do.end.i57, label %if.end.i55.sw.epilog_crit_edge

if.end.i55.sw.epilog_crit_edge:                   ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end.i57:                                       ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 135, i32 noundef 16, i32 noundef %call3.i53) #9
  br label %sw.epilog.sink.split

sw.bb4:                                           ; preds = %reg_w_var.exit
  %87 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp.i60 = icmp slt i32 %88, 0
  br i1 %cmp.i60, label %sw.bb4.sw.epilog_crit_edge, label %if.end.i67

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i67:                                       ; preds = %sw.bb4
  %89 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %usb_buf.i.i, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %90, align 1
  %92 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev.i.i, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %93, align 8
  %shl.i.i63 = shl i32 %95, 8
  %or.i64 = or i32 %shl.i.i63, -2147483648
  %96 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i65 = tail call i32 @usb_control_msg(ptr noundef %93, i32 noundef %or.i64, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 255, ptr noundef %96, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i65)
  %cmp4.i66 = icmp slt i32 %call3.i65, 0
  br i1 %cmp4.i66, label %do.end.i69, label %reg_w.exit70

do.end.i69:                                       ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 255, i32 noundef 1, i32 noundef %call3.i65) #9
  br label %sw.epilog.sink.split

reg_w.exit70:                                     ; preds = %if.end.i67
  %97 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %.pr158 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr158)
  %cmp.i72 = icmp slt i32 %.pr158, 0
  br i1 %cmp.i72, label %reg_w.exit70.sw.epilog_crit_edge, label %if.end.i79

reg_w.exit70.sw.epilog_crit_edge:                 ; preds = %reg_w.exit70
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i79:                                       ; preds = %reg_w.exit70
  %98 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %usb_buf.i.i, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 48, ptr %99, align 1
  %101 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev.i.i, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %102, align 8
  %shl.i.i75 = shl i32 %104, 8
  %or.i76 = or i32 %shl.i.i75, -2147483648
  %105 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i77 = tail call i32 @usb_control_msg(ptr noundef %102, i32 noundef %or.i76, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 23, ptr noundef %105, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i77)
  %cmp4.i78 = icmp slt i32 %call3.i77, 0
  br i1 %cmp4.i78, label %do.end.i81, label %reg_w.exit82

do.end.i81:                                       ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 23, i32 noundef 48, i32 noundef %call3.i77) #9
  br label %sw.epilog.sink.split

reg_w.exit82:                                     ; preds = %if.end.i79
  %106 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %.pr160.pr = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr160.pr)
  %cmp.i84 = icmp slt i32 %.pr160.pr, 0
  br i1 %cmp.i84, label %reg_w.exit82.sw.epilog_crit_edge, label %if.end.i91

reg_w.exit82.sw.epilog_crit_edge:                 ; preds = %reg_w.exit82
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i91:                                       ; preds = %reg_w.exit82
  %107 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %usb_buf.i.i, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 17, ptr %108, align 1
  %110 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev.i.i, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %111, align 8
  %shl.i.i87 = shl i32 %113, 8
  %or.i88 = or i32 %shl.i.i87, -2147483648
  %114 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i89 = tail call i32 @usb_control_msg(ptr noundef %111, i32 noundef %or.i88, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 135, ptr noundef %114, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i89)
  %cmp4.i90 = icmp slt i32 %call3.i89, 0
  br i1 %cmp4.i90, label %do.end.i93, label %if.end.i91.sw.epilog_crit_edge

if.end.i91.sw.epilog_crit_edge:                   ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end.i93:                                       ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 135, i32 noundef 17, i32 noundef %call3.i89) #9
  br label %sw.epilog.sink.split

sw.bb5:                                           ; preds = %reg_w_var.exit
  %115 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp.i96 = icmp slt i32 %116, 0
  br i1 %cmp.i96, label %sw.bb5.sw.epilog_crit_edge, label %if.end.i103

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i103:                                      ; preds = %sw.bb5
  %117 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %usb_buf.i.i, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 1, ptr %118, align 1
  %120 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev.i.i, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %121, align 8
  %shl.i.i99 = shl i32 %123, 8
  %or.i100 = or i32 %shl.i.i99, -2147483648
  %124 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i101 = tail call i32 @usb_control_msg(ptr noundef %121, i32 noundef %or.i100, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 255, ptr noundef %124, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i101)
  %cmp4.i102 = icmp slt i32 %call3.i101, 0
  br i1 %cmp4.i102, label %do.end.i105, label %reg_w.exit106

do.end.i105:                                      ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 255, i32 noundef 1, i32 noundef %call3.i101) #9
  br label %sw.epilog.sink.split

reg_w.exit106:                                    ; preds = %if.end.i103
  %125 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %.pr162 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr162)
  %cmp.i108 = icmp slt i32 %.pr162, 0
  br i1 %cmp.i108, label %reg_w.exit106.sw.epilog_crit_edge, label %if.end.i115

reg_w.exit106.sw.epilog_crit_edge:                ; preds = %reg_w.exit106
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i115:                                      ; preds = %reg_w.exit106
  %126 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %usb_buf.i.i, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 0, ptr %127, align 1
  %129 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev.i.i, align 4
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %130, align 8
  %shl.i.i111 = shl i32 %132, 8
  %or.i112 = or i32 %shl.i.i111, -2147483648
  %133 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i113 = tail call i32 @usb_control_msg(ptr noundef %130, i32 noundef %or.i112, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 23, ptr noundef %133, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i113)
  %cmp4.i114 = icmp slt i32 %call3.i113, 0
  br i1 %cmp4.i114, label %do.end.i117, label %reg_w.exit118

do.end.i117:                                      ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 23, i32 noundef 0, i32 noundef %call3.i113) #9
  br label %sw.epilog.sink.split

reg_w.exit118:                                    ; preds = %if.end.i115
  %134 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %.pr164.pr = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr164.pr)
  %cmp.i120 = icmp slt i32 %.pr164.pr, 0
  br i1 %cmp.i120, label %reg_w.exit118.sw.epilog_crit_edge, label %if.end.i127

reg_w.exit118.sw.epilog_crit_edge:                ; preds = %reg_w.exit118
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i127:                                      ; preds = %reg_w.exit118
  %135 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %usb_buf.i.i, align 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 18, ptr %136, align 1
  %138 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev.i.i, align 4
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %139, align 8
  %shl.i.i123 = shl i32 %141, 8
  %or.i124 = or i32 %shl.i.i123, -2147483648
  %142 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i125 = tail call i32 @usb_control_msg(ptr noundef %139, i32 noundef %or.i124, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 135, ptr noundef %142, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i125)
  %cmp4.i126 = icmp slt i32 %call3.i125, 0
  br i1 %cmp4.i126, label %do.end.i129, label %if.end.i127.sw.epilog_crit_edge

if.end.i127.sw.epilog_crit_edge:                  ; preds = %if.end.i127
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end.i129:                                      ; preds = %if.end.i127
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 135, i32 noundef 18, i32 noundef %call3.i125) #9
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %do.end.i129, %do.end.i117, %do.end.i105, %do.end.i93, %do.end.i81, %do.end.i69, %do.end.i57, %do.end.i45, %do.end.i34
  %call3.i101.sink = phi i32 [ %call3.i101, %do.end.i105 ], [ %call3.i65, %do.end.i69 ], [ %call3.i, %do.end.i34 ], [ %call3.i113, %do.end.i117 ], [ %call3.i77, %do.end.i81 ], [ %call3.i41, %do.end.i45 ], [ %call3.i125, %do.end.i129 ], [ %call3.i89, %do.end.i93 ], [ %call3.i53, %do.end.i57 ]
  %143 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %call3.i101.sink, ptr %usb_err.i.i, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.i127.sw.epilog_crit_edge, %reg_w.exit118.sw.epilog_crit_edge, %reg_w.exit106.sw.epilog_crit_edge, %sw.bb5.sw.epilog_crit_edge, %if.end.i91.sw.epilog_crit_edge, %reg_w.exit82.sw.epilog_crit_edge, %reg_w.exit70.sw.epilog_crit_edge, %sw.bb4.sw.epilog_crit_edge, %if.end.i55.sw.epilog_crit_edge, %reg_w.exit46.sw.epilog_crit_edge, %reg_w.exit.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %reg_w_var.exit.sw.epilog_crit_edge
  %144 = ptrtoint ptr %sof_read to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 0, ptr %sof_read, align 8
  %autogain_ignore_frames = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %145 = ptrtoint ptr %autogain_ignore_frames to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 0, ptr %autogain_ignore_frames, align 1
  %avg_lum = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %avg_lum, i32 noundef 4) #6
  %146 = ptrtoint ptr %avg_lum to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile i32 -1, ptr %avg_lum, align 4
  %147 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %cmp.i132 = icmp slt i32 %148, 0
  br i1 %cmp.i132, label %sw.epilog.reg_w.exit154_crit_edge, label %if.end.i139

sw.epilog.reg_w.exit154_crit_edge:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit154

if.end.i139:                                      ; preds = %sw.epilog
  %149 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %usb_buf.i.i, align 4
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 1, ptr %150, align 1
  %152 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dev.i.i, align 4
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %153, align 8
  %shl.i.i135 = shl i32 %155, 8
  %or.i136 = or i32 %shl.i.i135, -2147483648
  %156 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i137 = tail call i32 @usb_control_msg(ptr noundef %153, i32 noundef %or.i136, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 255, ptr noundef %156, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i137)
  %cmp4.i138 = icmp slt i32 %call3.i137, 0
  br i1 %cmp4.i138, label %do.end.i141, label %reg_w.exit142

do.end.i141:                                      ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i140 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 255, i32 noundef 1, i32 noundef %call3.i137) #9
  br label %reg_w.exit154.sink.split

reg_w.exit142:                                    ; preds = %if.end.i139
  %157 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %.pr166 = load i32, ptr %usb_err.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr166)
  %cmp.i144 = icmp slt i32 %.pr166, 0
  br i1 %cmp.i144, label %reg_w.exit142.reg_w.exit154_crit_edge, label %if.end.i151

reg_w.exit142.reg_w.exit154_crit_edge:            ; preds = %reg_w.exit142
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit154

if.end.i151:                                      ; preds = %reg_w.exit142
  %158 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %usb_buf.i.i, align 4
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 5, ptr %159, align 1
  %161 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dev.i.i, align 4
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %162, align 8
  %shl.i.i147 = shl i32 %164, 8
  %or.i148 = or i32 %shl.i.i147, -2147483648
  %165 = load ptr, ptr %usb_buf.i.i, align 4
  %call3.i149 = tail call i32 @usb_control_msg(ptr noundef %162, i32 noundef %or.i148, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 120, ptr noundef %165, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i149)
  %cmp4.i150 = icmp slt i32 %call3.i149, 0
  br i1 %cmp4.i150, label %do.end.i153, label %if.end.i151.reg_w.exit154_crit_edge

if.end.i151.reg_w.exit154_crit_edge:              ; preds = %if.end.i151
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit154

do.end.i153:                                      ; preds = %if.end.i151
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i152 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 120, i32 noundef 5, i32 noundef %call3.i149) #9
  br label %reg_w.exit154.sink.split

reg_w.exit154.sink.split:                         ; preds = %do.end.i153, %do.end.i141
  %call3.i137.sink = phi i32 [ %call3.i137, %do.end.i141 ], [ %call3.i149, %do.end.i153 ]
  %166 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %call3.i137.sink, ptr %usb_err.i.i, align 8
  br label %reg_w.exit154

reg_w.exit154:                                    ; preds = %reg_w.exit154.sink.split, %if.end.i151.reg_w.exit154_crit_edge, %reg_w.exit142.reg_w.exit154_crit_edge, %sw.epilog.reg_w.exit154_crit_edge
  %167 = ptrtoint ptr %usb_err.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %usb_err.i.i, align 8
  ret i32 %168
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_pkt_scan(ptr noundef %gspca_dev, ptr noundef %data, i32 noundef %len) #2 align 64 {
entry:
  %tmpbuf.i = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sof_read = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp66.i = icmp sgt i32 %len, 0
  br i1 %cmp66.i, label %entry.for.body.i_crit_edge, label %entry.if.end43_crit_edge

entry.if.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.067.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %0 = ptrtoint ptr %sof_read to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sof_read, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %1, label %for.body.i.for.inc.sink.split.i_crit_edge [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb4.i
    i8 2, label %sw.bb11.i
    i8 3, label %sw.bb15.i
    i8 4, label %sw.bb23.i
  ]

for.body.i.for.inc.sink.split.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.i

sw.bb.i:                                          ; preds = %for.body.i
  %arrayidx.i = getelementptr i8, ptr %data, i32 %i.067.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %4)
  %cmp2.i = icmp eq i8 %4, -1
  br i1 %cmp2.i, label %sw.bb.i.for.inc.sink.split.i_crit_edge, label %sw.bb.i.for.inc.i_crit_edge

sw.bb.i.for.inc.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

sw.bb.i.for.inc.sink.split.i_crit_edge:           ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.i

sw.bb4.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx5.i = getelementptr i8, ptr %data, i32 %i.067.i
  %5 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp7.i = icmp eq i8 %6, -1
  %..i = select i1 %cmp7.i, i8 2, i8 0
  br label %for.inc.sink.split.i

sw.bb11.i:                                        ; preds = %for.body.i
  %arrayidx12.i = getelementptr i8, ptr %data, i32 %i.067.i
  %7 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx12.i, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %8, label %sw.default.i [
    i8 0, label %sw.bb11.i.for.inc.sink.split.i_crit_edge
    i8 -1, label %sw.bb11.i.for.inc.i_crit_edge
  ]

sw.bb11.i.for.inc.i_crit_edge:                    ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

sw.bb11.i.for.inc.sink.split.i_crit_edge:         ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.i

sw.default.i:                                     ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.i

sw.bb15.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx16.i = getelementptr i8, ptr %data, i32 %i.067.i
  %10 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx16.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %cmp18.i = icmp eq i8 %11, -1
  %.72.i = select i1 %cmp18.i, i8 4, i8 0
  br label %for.inc.sink.split.i

sw.bb23.i:                                        ; preds = %for.body.i
  %arrayidx24.i = getelementptr i8, ptr %data, i32 %i.067.i
  %12 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx24.i, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %13, label %sw.default36.i [
    i8 -106, label %do.body.i
    i8 -1, label %sw.bb23.i.for.inc.sink.split.i_crit_edge
  ]

sw.bb23.i.for.inc.sink.split.i_crit_edge:         ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.i

do.body.i:                                        ; preds = %sw.bb23.i
  %arrayidx24.i.le = getelementptr i8, ptr %data, i32 %i.067.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %15 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp27.i = icmp sgt i32 %15, 3
  br i1 %cmp27.i, label %do.end.i, label %do.body.i.pac_find_sof.exit_crit_edge

do.body.i.pac_find_sof.exit_crit_edge:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pac_find_sof.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %add.i = add nuw nsw i32 %i.067.i, 1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name.i, i32 noundef %len, i32 noundef %add.i) #9
  br label %pac_find_sof.exit

sw.default36.i:                                   ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split.i

for.inc.sink.split.i:                             ; preds = %sw.default36.i, %sw.bb23.i.for.inc.sink.split.i_crit_edge, %sw.bb15.i, %sw.default.i, %sw.bb11.i.for.inc.sink.split.i_crit_edge, %sw.bb4.i, %sw.bb.i.for.inc.sink.split.i_crit_edge, %for.body.i.for.inc.sink.split.i_crit_edge
  %.sink.i = phi i8 [ 0, %sw.default.i ], [ 0, %sw.default36.i ], [ 1, %sw.bb.i.for.inc.sink.split.i_crit_edge ], [ %..i, %sw.bb4.i ], [ 3, %sw.bb11.i.for.inc.sink.split.i_crit_edge ], [ %.72.i, %sw.bb15.i ], [ 2, %sw.bb23.i.for.inc.sink.split.i_crit_edge ], [ 0, %for.body.i.for.inc.sink.split.i_crit_edge ]
  %16 = ptrtoint ptr %sof_read to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %.sink.i, ptr %sof_read, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %sw.bb11.i.for.inc.i_crit_edge, %sw.bb.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.067.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %len
  br i1 %exitcond.not.i, label %for.inc.i.if.end43_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.end43_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

pac_find_sof.exit:                                ; preds = %do.end.i, %do.body.i.pac_find_sof.exit_crit_edge
  %17 = ptrtoint ptr %sof_read to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %sof_read, align 1
  %add.ptr34.i = getelementptr i8, ptr %arrayidx24.i.le, i32 1
  %tobool.not = icmp eq ptr %add.ptr34.i, null
  br i1 %tobool.not, label %pac_find_sof.exit.if.end43_crit_edge, label %if.then

pac_find_sof.exit.if.end43_crit_edge:             ; preds = %pac_find_sof.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then:                                          ; preds = %pac_find_sof.exit
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr34.i to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %data to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub = add i32 %sub.ptr.sub, -31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %image_len = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 14
  %18 = ptrtoint ptr %image_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %image_len, align 8
  %add2 = add i32 %19, %sub
  store i32 %add2, ptr %image_len, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 2, ptr noundef %data, i32 noundef %sub) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  %image3 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 13
  %20 = ptrtoint ptr %image3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %image3, align 4
  %cmp4.not = icmp eq ptr %21, null
  br i1 %cmp4.not, label %if.end.if.end17_crit_edge, label %land.lhs.true

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end
  %image_len5 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 14
  %22 = ptrtoint ptr %image_len5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %image_len5, align 8
  %sub6 = add i32 %23, -2
  %arrayidx = getelementptr i8, ptr %21, i32 %sub6
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %25)
  %cmp7 = icmp eq i8 %25, -1
  br i1 %cmp7, label %land.lhs.true9, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

land.lhs.true9:                                   ; preds = %land.lhs.true
  %sub11 = add i32 %23, -1
  %arrayidx12 = getelementptr i8, ptr %21, i32 %sub11
  %26 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -39, i8 %27)
  %cmp14 = icmp eq i8 %27, -39
  br i1 %cmp14, label %if.then16, label %land.lhs.true9.if.end17_crit_edge

land.lhs.true9.if.end17_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then16:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 3, ptr noundef null, i32 noundef 0) #6
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %land.lhs.true9.if.end17_crit_edge, %land.lhs.true.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %sub21 = sub i32 %len, %sub.ptr.sub
  %last_packet_type = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 15
  %28 = ptrtoint ptr %last_packet_type to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %last_packet_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %29)
  %cmp23 = icmp eq i8 %29, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %sub.ptr.sub)
  %cmp26 = icmp sgt i32 %sub.ptr.sub, 28
  %or.cond = and i1 %cmp26, %cmp23
  %avg_lum = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  br i1 %or.cond, label %if.then28, label %if.end17.if.end39_crit_edge

if.end17.if.end39_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then28:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx30 = getelementptr i8, ptr %add.ptr34.i, i32 -29
  %30 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %31 to i32
  %arrayidx34 = getelementptr i8, ptr %add.ptr34.i, i32 -28
  %32 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %33 to i32
  %add36 = add nuw nsw i32 %conv35, %conv31
  br label %if.end39

if.end39:                                         ; preds = %if.then28, %if.end17.if.end39_crit_edge
  %.sink = phi i32 [ %add36, %if.then28 ], [ -1, %if.end17.if.end39_crit_edge ]
  %call.i.i77 = tail call zeroext i1 @__kasan_check_write(ptr noundef %avg_lum, i32 noundef 4) #6
  %34 = ptrtoint ptr %avg_lum to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 %.sink, ptr %avg_lum, align 4
  %pixfmt = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19
  %height = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19, i32 1
  %35 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %height, align 4
  %37 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pixfmt, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpbuf.i) #6
  %39 = getelementptr inbounds [4 x i8], ptr %tmpbuf.i, i32 0, i32 1
  %40 = getelementptr inbounds [4 x i8], ptr %tmpbuf.i, i32 0, i32 2
  %41 = getelementptr inbounds [4 x i8], ptr %tmpbuf.i, i32 0, i32 3
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 1, ptr noundef nonnull @pac_jpeg_header1, i32 noundef 7) #6
  %42 = lshr i32 %36, 8
  %conv1.i = trunc i32 %42 to i8
  %43 = ptrtoint ptr %tmpbuf.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv1.i, ptr %tmpbuf.i, align 1
  %conv3.i = trunc i32 %36 to i8
  %44 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv3.i, ptr %39, align 1
  %45 = lshr i32 %38, 8
  %conv7.i = trunc i32 %45 to i8
  %46 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv7.i, ptr %40, align 1
  %conv11.i = trunc i32 %38 to i8
  %47 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv11.i, ptr %41, align 1
  call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 2, ptr noundef nonnull %tmpbuf.i, i32 noundef 4) #6
  call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 2, ptr noundef nonnull @pac_jpeg_header2, i32 noundef 24) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpbuf.i) #6
  br label %if.end43

if.end43:                                         ; preds = %if.end39, %pac_find_sof.exit.if.end43_crit_edge, %for.inc.i.if.end43_crit_edge, %entry.if.end43_crit_edge
  %len.addr.0 = phi i32 [ %sub21, %if.end39 ], [ %len, %pac_find_sof.exit.if.end43_crit_edge ], [ %len, %entry.if.end43_crit_edge ], [ %len, %for.inc.i.if.end43_crit_edge ]
  %data.addr.0 = phi ptr [ %add.ptr34.i, %if.end39 ], [ %data, %pac_find_sof.exit.if.end43_crit_edge ], [ %data, %entry.if.end43_crit_edge ], [ %data, %for.inc.i.if.end43_crit_edge ]
  call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 2, ptr noundef %data.addr.0, i32 noundef %len.addr.0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_stopN(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %entry.reg_w.exit117_crit_edge, label %if.end.i

entry.reg_w.exit117_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit117

if.end.i:                                         ; preds = %entry
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %2 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_buf.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %3, align 1
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %shl.i.i = shl i32 %8, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %9 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 255, ptr noundef %9, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end.i, label %reg_w.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 255, i32 noundef 4, i32 noundef %call3.i) #9
  br label %reg_w.exit117.sink.split

reg_w.exit:                                       ; preds = %if.end.i
  %10 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i11 = icmp slt i32 %.pr, 0
  br i1 %cmp.i11, label %reg_w.exit.reg_w.exit117_crit_edge, label %if.end.i18

reg_w.exit.reg_w.exit117_crit_edge:               ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit117

if.end.i18:                                       ; preds = %reg_w.exit
  %11 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usb_buf.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -128, ptr %12, align 1
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %shl.i.i14 = shl i32 %17, 8
  %or.i15 = or i32 %shl.i.i14, -2147483648
  %18 = load ptr, ptr %usb_buf.i, align 4
  %call3.i16 = tail call i32 @usb_control_msg(ptr noundef %15, i32 noundef %or.i15, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 39, ptr noundef %18, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i16)
  %cmp4.i17 = icmp slt i32 %call3.i16, 0
  br i1 %cmp4.i17, label %do.end.i20, label %reg_w.exit21

do.end.i20:                                       ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 39, i32 noundef 128, i32 noundef %call3.i16) #9
  br label %reg_w.exit117.sink.split

reg_w.exit21:                                     ; preds = %if.end.i18
  %19 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr119.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr119.pr)
  %cmp.i23 = icmp slt i32 %.pr119.pr, 0
  br i1 %cmp.i23, label %reg_w.exit21.reg_w.exit117_crit_edge, label %if.end.i30

reg_w.exit21.reg_w.exit117_crit_edge:             ; preds = %reg_w.exit21
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit117

if.end.i30:                                       ; preds = %reg_w.exit21
  %20 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %usb_buf.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -54, ptr %21, align 1
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 8
  %shl.i.i26 = shl i32 %26, 8
  %or.i27 = or i32 %shl.i.i26, -2147483648
  %27 = load ptr, ptr %usb_buf.i, align 4
  %call3.i28 = tail call i32 @usb_control_msg(ptr noundef %24, i32 noundef %or.i27, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 40, ptr noundef %27, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i28)
  %cmp4.i29 = icmp slt i32 %call3.i28, 0
  br i1 %cmp4.i29, label %do.end.i32, label %reg_w.exit33

do.end.i32:                                       ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 40, i32 noundef 202, i32 noundef %call3.i28) #9
  br label %reg_w.exit117.sink.split

reg_w.exit33:                                     ; preds = %if.end.i30
  %28 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr121.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr121.pr)
  %cmp.i35 = icmp slt i32 %.pr121.pr, 0
  br i1 %cmp.i35, label %reg_w.exit33.reg_w.exit117_crit_edge, label %if.end.i42

reg_w.exit33.reg_w.exit117_crit_edge:             ; preds = %reg_w.exit33
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit117

if.end.i42:                                       ; preds = %reg_w.exit33
  %29 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %usb_buf.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 83, ptr %30, align 1
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 8
  %shl.i.i38 = shl i32 %35, 8
  %or.i39 = or i32 %shl.i.i38, -2147483648
  %36 = load ptr, ptr %usb_buf.i, align 4
  %call3.i40 = tail call i32 @usb_control_msg(ptr noundef %33, i32 noundef %or.i39, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 41, ptr noundef %36, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i40)
  %cmp4.i41 = icmp slt i32 %call3.i40, 0
  br i1 %cmp4.i41, label %do.end.i44, label %reg_w.exit45

do.end.i44:                                       ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 41, i32 noundef 83, i32 noundef %call3.i40) #9
  br label %reg_w.exit117.sink.split

reg_w.exit45:                                     ; preds = %if.end.i42
  %37 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr123.pr.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr123.pr.pr)
  %cmp.i47 = icmp slt i32 %.pr123.pr.pr, 0
  br i1 %cmp.i47, label %reg_w.exit45.reg_w.exit117_crit_edge, label %if.end.i54

reg_w.exit45.reg_w.exit117_crit_edge:             ; preds = %reg_w.exit45
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit117

if.end.i54:                                       ; preds = %reg_w.exit45
  %38 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %usb_buf.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 14, ptr %39, align 1
  %41 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 8
  %shl.i.i50 = shl i32 %44, 8
  %or.i51 = or i32 %shl.i.i50, -2147483648
  %45 = load ptr, ptr %usb_buf.i, align 4
  %call3.i52 = tail call i32 @usb_control_msg(ptr noundef %42, i32 noundef %or.i51, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 42, ptr noundef %45, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i52)
  %cmp4.i53 = icmp slt i32 %call3.i52, 0
  br i1 %cmp4.i53, label %do.end.i56, label %reg_w.exit57

do.end.i56:                                       ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 42, i32 noundef 14, i32 noundef %call3.i52) #9
  br label %reg_w.exit117.sink.split

reg_w.exit57:                                     ; preds = %if.end.i54
  %46 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pr125.pr.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr125.pr.pr)
  %cmp.i59 = icmp slt i32 %.pr125.pr.pr, 0
  br i1 %cmp.i59, label %reg_w.exit57.reg_w.exit117_crit_edge, label %if.end.i66

reg_w.exit57.reg_w.exit117_crit_edge:             ; preds = %reg_w.exit57
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit117

if.end.i66:                                       ; preds = %reg_w.exit57
  %47 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %usb_buf.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %48, align 1
  %50 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 8
  %shl.i.i62 = shl i32 %53, 8
  %or.i63 = or i32 %shl.i.i62, -2147483648
  %54 = load ptr, ptr %usb_buf.i, align 4
  %call3.i64 = tail call i32 @usb_control_msg(ptr noundef %51, i32 noundef %or.i63, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 255, ptr noundef %54, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i64)
  %cmp4.i65 = icmp slt i32 %call3.i64, 0
  br i1 %cmp4.i65, label %do.end.i68, label %reg_w.exit69

do.end.i68:                                       ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 255, i32 noundef 1, i32 noundef %call3.i64) #9
  br label %reg_w.exit117.sink.split

reg_w.exit69:                                     ; preds = %if.end.i66
  %55 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pr127.pr.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr127.pr.pr)
  %cmp.i71 = icmp slt i32 %.pr127.pr.pr, 0
  br i1 %cmp.i71, label %reg_w.exit69.reg_w.exit117_crit_edge, label %if.end.i78

reg_w.exit69.reg_w.exit117_crit_edge:             ; preds = %reg_w.exit69
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit117

if.end.i78:                                       ; preds = %reg_w.exit69
  %56 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %usb_buf.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 32, ptr %57, align 1
  %59 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 8
  %shl.i.i74 = shl i32 %62, 8
  %or.i75 = or i32 %shl.i.i74, -2147483648
  %63 = load ptr, ptr %usb_buf.i, align 4
  %call3.i76 = tail call i32 @usb_control_msg(ptr noundef %60, i32 noundef %or.i75, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 62, ptr noundef %63, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i76)
  %cmp4.i77 = icmp slt i32 %call3.i76, 0
  br i1 %cmp4.i77, label %do.end.i80, label %reg_w.exit81

do.end.i80:                                       ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 62, i32 noundef 32, i32 noundef %call3.i76) #9
  br label %reg_w.exit117.sink.split

reg_w.exit81:                                     ; preds = %if.end.i78
  %64 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pr129.pr.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr129.pr.pr)
  %cmp.i83 = icmp slt i32 %.pr129.pr.pr, 0
  br i1 %cmp.i83, label %reg_w.exit81.reg_w.exit117_crit_edge, label %if.end.i90

reg_w.exit81.reg_w.exit117_crit_edge:             ; preds = %reg_w.exit81
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit117

if.end.i90:                                       ; preds = %reg_w.exit81
  %65 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %usb_buf.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 68, ptr %66, align 1
  %68 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %69, align 8
  %shl.i.i86 = shl i32 %71, 8
  %or.i87 = or i32 %shl.i.i86, -2147483648
  %72 = load ptr, ptr %usb_buf.i, align 4
  %call3.i88 = tail call i32 @usb_control_msg(ptr noundef %69, i32 noundef %or.i87, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 120, ptr noundef %72, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i88)
  %cmp4.i89 = icmp slt i32 %call3.i88, 0
  br i1 %cmp4.i89, label %do.end.i92, label %reg_w.exit93

do.end.i92:                                       ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 120, i32 noundef 68, i32 noundef %call3.i88) #9
  br label %reg_w.exit117.sink.split

reg_w.exit93:                                     ; preds = %if.end.i90
  %73 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %.pr131.pr.pr.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr131.pr.pr.pr)
  %cmp.i95 = icmp slt i32 %.pr131.pr.pr.pr, 0
  br i1 %cmp.i95, label %reg_w.exit93.reg_w.exit117_crit_edge, label %if.end.i102

reg_w.exit93.reg_w.exit117_crit_edge:             ; preds = %reg_w.exit93
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit117

if.end.i102:                                      ; preds = %reg_w.exit93
  %74 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %usb_buf.i, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 68, ptr %75, align 1
  %77 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev.i, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %78, align 8
  %shl.i.i98 = shl i32 %80, 8
  %or.i99 = or i32 %shl.i.i98, -2147483648
  %81 = load ptr, ptr %usb_buf.i, align 4
  %call3.i100 = tail call i32 @usb_control_msg(ptr noundef %78, i32 noundef %or.i99, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 120, ptr noundef %81, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i100)
  %cmp4.i101 = icmp slt i32 %call3.i100, 0
  br i1 %cmp4.i101, label %do.end.i104, label %reg_w.exit105

do.end.i104:                                      ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 120, i32 noundef 68, i32 noundef %call3.i100) #9
  br label %reg_w.exit117.sink.split

reg_w.exit105:                                    ; preds = %if.end.i102
  %82 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %.pr133.pr.pr.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr133.pr.pr.pr)
  %cmp.i107 = icmp slt i32 %.pr133.pr.pr.pr, 0
  br i1 %cmp.i107, label %reg_w.exit105.reg_w.exit117_crit_edge, label %if.end.i114

reg_w.exit105.reg_w.exit117_crit_edge:            ; preds = %reg_w.exit105
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit117

if.end.i114:                                      ; preds = %reg_w.exit105
  %83 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %usb_buf.i, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 68, ptr %84, align 1
  %86 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev.i, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %87, align 8
  %shl.i.i110 = shl i32 %89, 8
  %or.i111 = or i32 %shl.i.i110, -2147483648
  %90 = load ptr, ptr %usb_buf.i, align 4
  %call3.i112 = tail call i32 @usb_control_msg(ptr noundef %87, i32 noundef %or.i111, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 120, ptr noundef %90, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i112)
  %cmp4.i113 = icmp slt i32 %call3.i112, 0
  br i1 %cmp4.i113, label %do.end.i116, label %if.end.i114.reg_w.exit117_crit_edge

if.end.i114.reg_w.exit117_crit_edge:              ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit117

do.end.i116:                                      ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 120, i32 noundef 68, i32 noundef %call3.i112) #9
  br label %reg_w.exit117.sink.split

reg_w.exit117.sink.split:                         ; preds = %do.end.i116, %do.end.i104, %do.end.i92, %do.end.i80, %do.end.i68, %do.end.i56, %do.end.i44, %do.end.i32, %do.end.i20, %do.end.i
  %call3.i16.sink = phi i32 [ %call3.i16, %do.end.i20 ], [ %call3.i, %do.end.i ], [ %call3.i64, %do.end.i68 ], [ %call3.i52, %do.end.i56 ], [ %call3.i40, %do.end.i44 ], [ %call3.i28, %do.end.i32 ], [ %call3.i88, %do.end.i92 ], [ %call3.i76, %do.end.i80 ], [ %call3.i100, %do.end.i104 ], [ %call3.i112, %do.end.i116 ]
  %91 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %call3.i16.sink, ptr %usb_err.i, align 8
  br label %reg_w.exit117

reg_w.exit117:                                    ; preds = %reg_w.exit117.sink.split, %if.end.i114.reg_w.exit117_crit_edge, %reg_w.exit105.reg_w.exit117_crit_edge, %reg_w.exit93.reg_w.exit117_crit_edge, %reg_w.exit81.reg_w.exit117_crit_edge, %reg_w.exit69.reg_w.exit117_crit_edge, %reg_w.exit57.reg_w.exit117_crit_edge, %reg_w.exit45.reg_w.exit117_crit_edge, %reg_w.exit33.reg_w.exit117_crit_edge, %reg_w.exit21.reg_w.exit117_crit_edge, %reg_w.exit.reg_w.exit117_crit_edge, %entry.reg_w.exit117_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_autogain(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %avg_lum1 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %avg_lum1, i32 noundef 4) #6
  %0 = ptrtoint ptr %avg_lum1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %avg_lum1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %autogain_ignore_frames = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %2 = ptrtoint ptr %autogain_ignore_frames to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %autogain_ignore_frames, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp2.not = icmp eq i8 %3, 0
  br i1 %cmp2.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dec = add i8 %3, -1
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  %call6 = tail call i32 @gspca_coarse_grained_expo_autogain(ptr noundef %gspca_dev, i32 noundef %1, i32 noundef 170, i32 noundef 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.else.cleanup_crit_edge, label %if.else.cleanup.sink.split_crit_edge

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.else.cleanup.sink.split_crit_edge, %if.then4
  %dec.sink = phi i8 [ %dec, %if.then4 ], [ 2, %if.else.cleanup.sink.split_crit_edge ]
  %4 = ptrtoint ptr %autogain_ignore_frames to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %dec.sink, ptr %autogain_ignore_frames, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_int_pkt_scan(ptr nocapture noundef readonly %gspca_dev, ptr nocapture noundef readonly %data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len)
  %cmp = icmp eq i32 %len, 2
  br i1 %cmp, label %if.then, label %entry.if.end66_crit_edge

entry.if.end66_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  %arrayidx1 = getelementptr i8, ptr %data, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp2 = icmp eq i8 %1, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %3)
  %cmp5 = icmp eq i8 %3, 17
  %or.cond = select i1 %cmp2, i1 %cmp5, i1 false
  br i1 %or.cond, label %if.then.if.then62_crit_edge, label %lor.lhs.false

if.then.if.then62_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then62

lor.lhs.false:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %1)
  %cmp8 = icmp eq i8 %1, 34
  call void @__sanitizer_cov_trace_const_cmp1(i8 51, i8 %3)
  %cmp12 = icmp eq i8 %3, 51
  %or.cond85 = select i1 %cmp8, i1 %cmp12, i1 false
  br i1 %or.cond85, label %lor.lhs.false.if.then62_crit_edge, label %lor.lhs.false14

lor.lhs.false.if.then62_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then62

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp1(i8 68, i8 %1)
  %cmp16 = icmp eq i8 %1, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %3)
  %cmp20 = icmp eq i8 %3, 85
  %or.cond86 = select i1 %cmp16, i1 %cmp20, i1 false
  br i1 %or.cond86, label %lor.lhs.false14.if.then62_crit_edge, label %lor.lhs.false22

lor.lhs.false14.if.then62_crit_edge:              ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then62

lor.lhs.false22:                                  ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_const_cmp1(i8 102, i8 %1)
  %cmp24 = icmp eq i8 %1, 102
  call void @__sanitizer_cov_trace_const_cmp1(i8 119, i8 %3)
  %cmp28 = icmp eq i8 %3, 119
  %or.cond87 = select i1 %cmp24, i1 %cmp28, i1 false
  br i1 %or.cond87, label %lor.lhs.false22.if.then62_crit_edge, label %lor.lhs.false30

lor.lhs.false22.if.then62_crit_edge:              ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then62

lor.lhs.false30:                                  ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_const_cmp1(i8 -120, i8 %1)
  %cmp32 = icmp eq i8 %1, -120
  call void @__sanitizer_cov_trace_const_cmp1(i8 -103, i8 %3)
  %cmp36 = icmp eq i8 %3, -103
  %or.cond88 = select i1 %cmp32, i1 %cmp36, i1 false
  br i1 %or.cond88, label %lor.lhs.false30.if.then62_crit_edge, label %lor.lhs.false38

lor.lhs.false30.if.then62_crit_edge:              ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then62

lor.lhs.false38:                                  ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %1)
  %cmp40 = icmp eq i8 %1, -86
  call void @__sanitizer_cov_trace_const_cmp1(i8 -69, i8 %3)
  %cmp44 = icmp eq i8 %3, -69
  %or.cond89 = select i1 %cmp40, i1 %cmp44, i1 false
  br i1 %or.cond89, label %lor.lhs.false38.if.then62_crit_edge, label %lor.lhs.false46

lor.lhs.false38.if.then62_crit_edge:              ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then62

lor.lhs.false46:                                  ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_const_cmp1(i8 -52, i8 %1)
  %cmp48 = icmp eq i8 %1, -52
  call void @__sanitizer_cov_trace_const_cmp1(i8 -35, i8 %3)
  %cmp52 = icmp eq i8 %3, -35
  %or.cond90 = select i1 %cmp48, i1 %cmp52, i1 false
  br i1 %or.cond90, label %lor.lhs.false46.if.then62_crit_edge, label %lor.lhs.false54

lor.lhs.false46.if.then62_crit_edge:              ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then62

lor.lhs.false54:                                  ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_const_cmp1(i8 -18, i8 %1)
  %cmp56 = icmp eq i8 %1, -18
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp60 = icmp eq i8 %3, -1
  %or.cond91 = select i1 %cmp56, i1 %cmp60, i1 false
  br i1 %or.cond91, label %lor.lhs.false54.if.then62_crit_edge, label %lor.lhs.false54.if.end66_crit_edge

lor.lhs.false54.if.end66_crit_edge:               ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

lor.lhs.false54.if.then62_crit_edge:              ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then62

if.then62:                                        ; preds = %lor.lhs.false54.if.then62_crit_edge, %lor.lhs.false46.if.then62_crit_edge, %lor.lhs.false38.if.then62_crit_edge, %lor.lhs.false30.if.then62_crit_edge, %lor.lhs.false22.if.then62_crit_edge, %lor.lhs.false14.if.then62_crit_edge, %lor.lhs.false.if.then62_crit_edge, %if.then.if.then62_crit_edge
  %input_dev = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 4
  %4 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 212, i32 noundef 1) #6
  %6 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %7, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %8 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %9, i32 noundef 1, i32 noundef 212, i32 noundef 0) #6
  %10 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %11, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %if.end66

if.end66:                                         ; preds = %if.then62, %lor.lhs.false54.if.end66_crit_edge, %entry.if.end66_crit_edge
  %ret.0 = phi i32 [ 0, %if.then62 ], [ -22, %lor.lhs.false54.if.end66_crit_edge ], [ -22, %entry.if.end66_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_auto_cluster(i32 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -1584
  %usb_err = getelementptr i8, ptr %1, i32 1000
  %2 = ptrtoint ptr %usb_err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %usb_err, align 8
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963794, i32 %4)
  %cmp = icmp eq i32 %4, 9963794
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %is_new = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 5
  %5 = ptrtoint ptr %is_new to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load = load i32, ptr %is_new, align 4
  %6 = and i32 %bf.load, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true1

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true1:                                   ; preds = %land.lhs.true
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not = icmp eq i32 %8, 0
  br i1 %tobool2.not, label %land.lhs.true1.if.end_crit_edge, label %if.then

land.lhs.true1.if.end_crit_edge:                  ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #8
  %exposure = getelementptr i8, ptr %1, i32 188
  %9 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %exposure, align 4
  %val3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %10, i32 0, i32 22
  %11 = ptrtoint ptr %val3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %val3, align 4
  %gain = getelementptr i8, ptr %1, i32 192
  %12 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gain, align 8
  %val4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %13, i32 0, i32 22
  %14 = ptrtoint ptr %val4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 122, ptr %val4, align 4
  %autogain_ignore_frames = getelementptr i8, ptr %1, i32 1033
  %15 = ptrtoint ptr %autogain_ignore_frames to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %autogain_ignore_frames, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true1.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %streaming = getelementptr i8, ptr %1, i32 238
  %16 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %streaming, align 2, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool5.not = icmp eq i8 %17, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id, align 8
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %19, label %if.end7.cleanup_crit_edge [
    i32 9963777, label %sw.bb
    i32 9963794, label %sw.bb10
    i32 9963796, label %sw.bb48
  ]

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %val9 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %21 = ptrtoint ptr %val9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val9, align 4
  tail call fastcc void @setcontrast(ptr noundef %add.ptr, i32 noundef %22)
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end7
  %exposure11 = getelementptr i8, ptr %1, i32 188
  %23 = ptrtoint ptr %exposure11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %exposure11, align 4
  %is_new12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %is_new12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load13 = load i32, ptr %is_new12, align 4
  %26 = and i32 %bf.load13, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool16.not = icmp eq i32 %26, 0
  br i1 %tobool16.not, label %lor.lhs.false, label %sw.bb10.if.then25_crit_edge

sw.bb10.if.then25_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then25

lor.lhs.false:                                    ; preds = %sw.bb10
  %is_new17 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 5
  %27 = ptrtoint ptr %is_new17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %bf.load18 = load i32, ptr %is_new17, align 4
  %28 = and i32 %bf.load18, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool21.not = icmp eq i32 %28, 0
  br i1 %tobool21.not, label %lor.lhs.false.if.end28_crit_edge, label %land.lhs.true22

lor.lhs.false.if.end28_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

land.lhs.true22:                                  ; preds = %lor.lhs.false
  %val23 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %29 = ptrtoint ptr %val23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool24.not = icmp eq i32 %30, 0
  br i1 %tobool24.not, label %land.lhs.true22.if.end28_crit_edge, label %land.lhs.true22.if.then25_crit_edge

land.lhs.true22.if.then25_crit_edge:              ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then25

land.lhs.true22.if.end28_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then25:                                        ; preds = %land.lhs.true22.if.then25_crit_edge, %sw.bb10.if.then25_crit_edge
  %val27 = getelementptr inbounds %struct.v4l2_ctrl, ptr %24, i32 0, i32 22
  %31 = ptrtoint ptr %val27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val27, align 4
  tail call fastcc void @setexposure(ptr noundef %add.ptr, i32 noundef %32)
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %land.lhs.true22.if.end28_crit_edge, %lor.lhs.false.if.end28_crit_edge
  %gain29 = getelementptr i8, ptr %1, i32 192
  %33 = ptrtoint ptr %gain29 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %gain29, align 8
  %is_new30 = getelementptr inbounds %struct.v4l2_ctrl, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %is_new30 to i32
  call void @__asan_load4_noabort(i32 %35)
  %bf.load31 = load i32, ptr %is_new30, align 4
  %36 = and i32 %bf.load31, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool34.not = icmp eq i32 %36, 0
  br i1 %tobool34.not, label %lor.lhs.false35, label %if.end28.if.then44_crit_edge

if.end28.if.then44_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then44

lor.lhs.false35:                                  ; preds = %if.end28
  %is_new36 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 5
  %37 = ptrtoint ptr %is_new36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %bf.load37 = load i32, ptr %is_new36, align 4
  %38 = and i32 %bf.load37, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool40.not = icmp eq i32 %38, 0
  br i1 %tobool40.not, label %lor.lhs.false35.sw.epilog_crit_edge, label %land.lhs.true41

lor.lhs.false35.sw.epilog_crit_edge:              ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true41:                                  ; preds = %lor.lhs.false35
  %val42 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %39 = ptrtoint ptr %val42 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool43.not = icmp eq i32 %40, 0
  br i1 %tobool43.not, label %land.lhs.true41.sw.epilog_crit_edge, label %land.lhs.true41.if.then44_crit_edge

land.lhs.true41.if.then44_crit_edge:              ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then44

land.lhs.true41.sw.epilog_crit_edge:              ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then44:                                        ; preds = %land.lhs.true41.if.then44_crit_edge, %if.end28.if.then44_crit_edge
  %val46 = getelementptr inbounds %struct.v4l2_ctrl, ptr %34, i32 0, i32 22
  %41 = ptrtoint ptr %val46 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val46, align 4
  tail call fastcc void @setgain(ptr noundef %add.ptr, i32 noundef %42)
  br label %sw.epilog

sw.bb48:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %hflip = getelementptr i8, ptr %1, i32 1028
  %43 = ptrtoint ptr %hflip to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hflip, align 4
  %val49 = getelementptr inbounds %struct.v4l2_ctrl, ptr %44, i32 0, i32 22
  %45 = ptrtoint ptr %val49 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %val49, align 4
  tail call fastcc void @sethvflip(ptr noundef %add.ptr, i32 noundef %46)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb48, %if.then44, %land.lhs.true41.sw.epilog_crit_edge, %lor.lhs.false35.sw.epilog_crit_edge, %sw.bb
  %47 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %48, %sw.epilog ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setcontrast(ptr nocapture noundef %gspca_dev, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %entry.reg_w.exit26_crit_edge, label %if.end.i

entry.reg_w.exit26_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit26

if.end.i:                                         ; preds = %entry
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %2 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_buf.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %3, align 1
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %shl.i.i = shl i32 %8, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %9 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 255, ptr noundef %9, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end.i, label %reg_w.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 255, i32 noundef 4, i32 noundef %call3.i) #9
  br label %reg_w.exit26.sink.split

reg_w.exit:                                       ; preds = %if.end.i
  %10 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i4 = icmp slt i32 %.pr, 0
  br i1 %cmp.i4, label %reg_w.exit.reg_w.exit26_crit_edge, label %if.end.i11

reg_w.exit.reg_w.exit26_crit_edge:                ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit26

if.end.i11:                                       ; preds = %reg_w.exit
  %conv = trunc i32 %val to i8
  %11 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usb_buf.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %12, align 1
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %shl.i.i7 = shl i32 %17, 8
  %or.i8 = or i32 %shl.i.i7, -2147483648
  %18 = load ptr, ptr %usb_buf.i, align 4
  %call3.i9 = tail call i32 @usb_control_msg(ptr noundef %15, i32 noundef %or.i8, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 16, ptr noundef %18, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i9)
  %cmp4.i10 = icmp slt i32 %call3.i9, 0
  br i1 %cmp4.i10, label %do.end.i13, label %reg_w.exit14

do.end.i13:                                       ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #8
  %conv8.i = and i32 %val, 255
  %call9.i12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 16, i32 noundef %conv8.i, i32 noundef %call3.i9) #9
  br label %reg_w.exit26.sink.split

reg_w.exit14:                                     ; preds = %if.end.i11
  %19 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr29.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr29.pr)
  %cmp.i16 = icmp slt i32 %.pr29.pr, 0
  br i1 %cmp.i16, label %reg_w.exit14.reg_w.exit26_crit_edge, label %if.end.i23

reg_w.exit14.reg_w.exit26_crit_edge:              ; preds = %reg_w.exit14
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit26

if.end.i23:                                       ; preds = %reg_w.exit14
  %20 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %usb_buf.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %21, align 1
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 8
  %shl.i.i19 = shl i32 %26, 8
  %or.i20 = or i32 %shl.i.i19, -2147483648
  %27 = load ptr, ptr %usb_buf.i, align 4
  %call3.i21 = tail call i32 @usb_control_msg(ptr noundef %24, i32 noundef %or.i20, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 17, ptr noundef %27, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i21)
  %cmp4.i22 = icmp slt i32 %call3.i21, 0
  br i1 %cmp4.i22, label %do.end.i25, label %if.end.i23.reg_w.exit26_crit_edge

if.end.i23.reg_w.exit26_crit_edge:                ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit26

do.end.i25:                                       ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 17, i32 noundef 1, i32 noundef %call3.i21) #9
  br label %reg_w.exit26.sink.split

reg_w.exit26.sink.split:                          ; preds = %do.end.i25, %do.end.i13, %do.end.i
  %call3.i.sink = phi i32 [ %call3.i, %do.end.i ], [ %call3.i9, %do.end.i13 ], [ %call3.i21, %do.end.i25 ]
  %28 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call3.i.sink, ptr %usb_err.i, align 8
  br label %reg_w.exit26

reg_w.exit26:                                     ; preds = %reg_w.exit26.sink.split, %if.end.i23.reg_w.exit26_crit_edge, %reg_w.exit14.reg_w.exit26_crit_edge, %reg_w.exit.reg_w.exit26_crit_edge, %entry.reg_w.exit26_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setexposure(ptr noundef %gspca_dev, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %entry.reg_w.exit62_crit_edge, label %if.end.i

entry.reg_w.exit62_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit62

if.end.i:                                         ; preds = %entry
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %2 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_buf.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %3, align 1
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %shl.i.i = shl i32 %8, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %9 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 255, ptr noundef %9, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end.i, label %reg_w.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 255, i32 noundef 4, i32 noundef %call3.i) #9
  br label %reg_w.exit62.sink.split

reg_w.exit:                                       ; preds = %if.end.i
  %10 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i28 = icmp slt i32 %.pr, 0
  br i1 %cmp.i28, label %reg_w.exit.reg_w.exit62_crit_edge, label %if.end.i35

reg_w.exit.reg_w.exit62_crit_edge:                ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit62

if.end.i35:                                       ; preds = %reg_w.exit
  %conv = trunc i32 %val to i8
  %11 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usb_buf.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %12, align 1
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %shl.i.i31 = shl i32 %17, 8
  %or.i32 = or i32 %shl.i.i31, -2147483648
  %18 = load ptr, ptr %usb_buf.i, align 4
  %call3.i33 = tail call i32 @usb_control_msg(ptr noundef %15, i32 noundef %or.i32, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 2, ptr noundef %18, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i33)
  %cmp4.i34 = icmp slt i32 %call3.i33, 0
  br i1 %cmp4.i34, label %do.end.i37, label %reg_w.exit38

do.end.i37:                                       ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #8
  %conv8.i = and i32 %val, 255
  %call9.i36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 2, i32 noundef %conv8.i, i32 noundef %call3.i33) #9
  br label %reg_w.exit62.sink.split

reg_w.exit38:                                     ; preds = %if.end.i35
  %19 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr125.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr125.pr)
  %cmp.i40 = icmp slt i32 %.pr125.pr, 0
  br i1 %cmp.i40, label %reg_w.exit38.reg_w.exit62_crit_edge, label %if.end.i47

reg_w.exit38.reg_w.exit62_crit_edge:              ; preds = %reg_w.exit38
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit62

if.end.i47:                                       ; preds = %reg_w.exit38
  %20 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %usb_buf.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %21, align 1
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 8
  %shl.i.i43 = shl i32 %26, 8
  %or.i44 = or i32 %shl.i.i43, -2147483648
  %27 = load ptr, ptr %usb_buf.i, align 4
  %call3.i45 = tail call i32 @usb_control_msg(ptr noundef %24, i32 noundef %or.i44, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 17, ptr noundef %27, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i45)
  %cmp4.i46 = icmp slt i32 %call3.i45, 0
  br i1 %cmp4.i46, label %do.end.i49, label %reg_w.exit50

do.end.i49:                                       ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 17, i32 noundef 1, i32 noundef %call3.i45) #9
  br label %reg_w.exit62.sink.split

reg_w.exit50:                                     ; preds = %if.end.i47
  %28 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr127.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr127.pr)
  %cmp.i52 = icmp slt i32 %.pr127.pr, 0
  br i1 %cmp.i52, label %reg_w.exit50.reg_w.exit62_crit_edge, label %if.end.i59

reg_w.exit50.reg_w.exit62_crit_edge:              ; preds = %reg_w.exit50
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit62

if.end.i59:                                       ; preds = %reg_w.exit50
  %29 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %usb_buf.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %30, align 1
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 8
  %shl.i.i55 = shl i32 %35, 8
  %or.i56 = or i32 %shl.i.i55, -2147483648
  %36 = load ptr, ptr %usb_buf.i, align 4
  %call3.i57 = tail call i32 @usb_control_msg(ptr noundef %33, i32 noundef %or.i56, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 255, ptr noundef %36, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i57)
  %cmp4.i58 = icmp slt i32 %call3.i57, 0
  br i1 %cmp4.i58, label %do.end.i61, label %if.end.i59.reg_w.exit62_crit_edge

if.end.i59.reg_w.exit62_crit_edge:                ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit62

do.end.i61:                                       ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 255, i32 noundef 1, i32 noundef %call3.i57) #9
  br label %reg_w.exit62.sink.split

reg_w.exit62.sink.split:                          ; preds = %do.end.i61, %do.end.i49, %do.end.i37, %do.end.i
  %call3.i33.sink = phi i32 [ %call3.i33, %do.end.i37 ], [ %call3.i, %do.end.i ], [ %call3.i45, %do.end.i49 ], [ %call3.i57, %do.end.i61 ]
  %37 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call3.i33.sink, ptr %usb_err.i, align 8
  br label %reg_w.exit62

reg_w.exit62:                                     ; preds = %reg_w.exit62.sink.split, %if.end.i59.reg_w.exit62_crit_edge, %reg_w.exit50.reg_w.exit62_crit_edge, %reg_w.exit38.reg_w.exit62_crit_edge, %reg_w.exit.reg_w.exit62_crit_edge, %entry.reg_w.exit62_crit_edge
  %pixfmt = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19
  %38 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pixfmt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %39)
  %cmp.not = icmp ne i32 %39, 640
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %val)
  %cmp2 = icmp slt i32 %val, 4
  %or.cond = and i1 %cmp2, %cmp.not
  %40 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.i64 = icmp slt i32 %41, 0
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %reg_w.exit62
  br i1 %cmp.i64, label %if.then.if.end_crit_edge, label %if.end.i71

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i71:                                       ; preds = %if.then
  %usb_buf.i65 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %42 = ptrtoint ptr %usb_buf.i65 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %usb_buf.i65, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 9, ptr %43, align 1
  %dev.i66 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %45 = ptrtoint ptr %dev.i66 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i66, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 8
  %shl.i.i67 = shl i32 %48, 8
  %or.i68 = or i32 %shl.i.i67, -2147483648
  %49 = load ptr, ptr %usb_buf.i65, align 4
  %call3.i69 = tail call i32 @usb_control_msg(ptr noundef %46, i32 noundef %or.i68, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 8, ptr noundef %49, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i69)
  %cmp4.i70 = icmp slt i32 %call3.i69, 0
  br i1 %cmp4.i70, label %do.end.i73, label %if.end.i71.if.end_crit_edge

if.end.i71.if.end_crit_edge:                      ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end.i73:                                       ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 8, i32 noundef 9, i32 noundef %call3.i69) #9
  br label %if.end.sink.split

if.else:                                          ; preds = %reg_w.exit62
  br i1 %cmp.i64, label %if.else.if.end_crit_edge, label %if.end.i83

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i83:                                       ; preds = %if.else
  %usb_buf.i77 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %50 = ptrtoint ptr %usb_buf.i77 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %usb_buf.i77, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 8, ptr %51, align 1
  %dev.i78 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %53 = ptrtoint ptr %dev.i78 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i78, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 8
  %shl.i.i79 = shl i32 %56, 8
  %or.i80 = or i32 %shl.i.i79, -2147483648
  %57 = load ptr, ptr %usb_buf.i77, align 4
  %call3.i81 = tail call i32 @usb_control_msg(ptr noundef %54, i32 noundef %or.i80, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 8, ptr noundef %57, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i81)
  %cmp4.i82 = icmp slt i32 %call3.i81, 0
  br i1 %cmp4.i82, label %do.end.i85, label %if.end.i83.if.end_crit_edge

if.end.i83.if.end_crit_edge:                      ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end.i85:                                       ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 8, i32 noundef 8, i32 noundef %call3.i81) #9
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %do.end.i85, %do.end.i73
  %call3.i81.sink = phi i32 [ %call3.i81, %do.end.i85 ], [ %call3.i69, %do.end.i73 ]
  %58 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %call3.i81.sink, ptr %usb_err.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.end.i83.if.end_crit_edge, %if.else.if.end_crit_edge, %if.end.i71.if.end_crit_edge, %if.then.if.end_crit_edge
  %59 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pixfmt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %60)
  %cmp6 = icmp eq i32 %60, 640
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %val)
  %cmp9 = icmp eq i32 %val, 2
  %or.cond26 = and i1 %cmp9, %cmp6
  %61 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp.i88 = icmp slt i32 %62, 0
  br i1 %or.cond26, label %if.then11, label %if.else12

if.then11:                                        ; preds = %if.end
  br i1 %cmp.i88, label %if.then11.reg_w.exit122_crit_edge, label %if.end.i95

if.then11.reg_w.exit122_crit_edge:                ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit122

if.end.i95:                                       ; preds = %if.then11
  %usb_buf.i89 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %63 = ptrtoint ptr %usb_buf.i89 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %usb_buf.i89, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %64, align 1
  %dev.i90 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %66 = ptrtoint ptr %dev.i90 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev.i90, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 8
  %shl.i.i91 = shl i32 %69, 8
  %or.i92 = or i32 %shl.i.i91, -2147483648
  %70 = load ptr, ptr %usb_buf.i89, align 4
  %call3.i93 = tail call i32 @usb_control_msg(ptr noundef %67, i32 noundef %or.i92, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 128, ptr noundef %70, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i93)
  %cmp4.i94 = icmp slt i32 %call3.i93, 0
  br i1 %cmp4.i94, label %do.end.i97, label %if.end.i95.if.end13_crit_edge

if.end.i95.if.end13_crit_edge:                    ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

do.end.i97:                                       ; preds = %if.end.i95
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 128, i32 noundef 1, i32 noundef %call3.i93) #9
  br label %reg_w.exit122.sink.split

if.else12:                                        ; preds = %if.end
  br i1 %cmp.i88, label %if.else12.reg_w.exit122_crit_edge, label %if.end.i107

if.else12.reg_w.exit122_crit_edge:                ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit122

if.end.i107:                                      ; preds = %if.else12
  %usb_buf.i101 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %71 = ptrtoint ptr %usb_buf.i101 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %usb_buf.i101, align 4
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 28, ptr %72, align 1
  %dev.i102 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %74 = ptrtoint ptr %dev.i102 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev.i102, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %75, align 8
  %shl.i.i103 = shl i32 %77, 8
  %or.i104 = or i32 %shl.i.i103, -2147483648
  %78 = load ptr, ptr %usb_buf.i101, align 4
  %call3.i105 = tail call i32 @usb_control_msg(ptr noundef %75, i32 noundef %or.i104, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 128, ptr noundef %78, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i105)
  %cmp4.i106 = icmp slt i32 %call3.i105, 0
  br i1 %cmp4.i106, label %do.end.i109, label %if.end.i107.if.end13_crit_edge

if.end.i107.if.end13_crit_edge:                   ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

do.end.i109:                                      ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 128, i32 noundef 28, i32 noundef %call3.i105) #9
  br label %reg_w.exit122.sink.split

if.end13:                                         ; preds = %if.end.i107.if.end13_crit_edge, %if.end.i95.if.end13_crit_edge
  %79 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %.pr129 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr129)
  %cmp.i112 = icmp slt i32 %.pr129, 0
  br i1 %cmp.i112, label %if.end13.reg_w.exit122_crit_edge, label %if.end.i119

if.end13.reg_w.exit122_crit_edge:                 ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit122

if.end.i119:                                      ; preds = %if.end13
  %usb_buf.i113 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %80 = ptrtoint ptr %usb_buf.i113 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %usb_buf.i113, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %81, align 1
  %dev.i114 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %83 = ptrtoint ptr %dev.i114 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev.i114, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %84, align 8
  %shl.i.i115 = shl i32 %86, 8
  %or.i116 = or i32 %shl.i.i115, -2147483648
  %87 = load ptr, ptr %usb_buf.i113, align 4
  %call3.i117 = tail call i32 @usb_control_msg(ptr noundef %84, i32 noundef %or.i116, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 17, ptr noundef %87, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i117)
  %cmp4.i118 = icmp slt i32 %call3.i117, 0
  br i1 %cmp4.i118, label %do.end.i121, label %if.end.i119.reg_w.exit122_crit_edge

if.end.i119.reg_w.exit122_crit_edge:              ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit122

do.end.i121:                                      ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 17, i32 noundef 1, i32 noundef %call3.i117) #9
  br label %reg_w.exit122.sink.split

reg_w.exit122.sink.split:                         ; preds = %do.end.i121, %do.end.i109, %do.end.i97
  %call3.i93.sink = phi i32 [ %call3.i93, %do.end.i97 ], [ %call3.i105, %do.end.i109 ], [ %call3.i117, %do.end.i121 ]
  %88 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %call3.i93.sink, ptr %usb_err.i, align 8
  br label %reg_w.exit122

reg_w.exit122:                                    ; preds = %reg_w.exit122.sink.split, %if.end.i119.reg_w.exit122_crit_edge, %if.end13.reg_w.exit122_crit_edge, %if.else12.reg_w.exit122_crit_edge, %if.then11.reg_w.exit122_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setgain(ptr nocapture noundef %gspca_dev, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %entry.reg_w.exit18_crit_edge, label %if.end.i

entry.reg_w.exit18_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit18

if.end.i:                                         ; preds = %entry
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %2 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_buf.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %3, align 1
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %shl.i.i = shl i32 %8, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %9 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 255, ptr noundef %9, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end.i, label %reg_w.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 255, i32 noundef 4, i32 noundef %call3.i) #9
  br label %reg_w.exit18.sink.split

reg_w.exit:                                       ; preds = %if.end.i
  %10 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i8 = icmp slt i32 %.pr, 0
  br i1 %cmp.i8, label %reg_w.exit.reg_w.exit18_crit_edge, label %if.end.i15

reg_w.exit.reg_w.exit18_crit_edge:                ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit18

if.end.i15:                                       ; preds = %reg_w.exit
  %11 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usb_buf.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %12, align 1
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %shl.i.i11 = shl i32 %17, 8
  %or.i12 = or i32 %shl.i.i11, -2147483648
  %18 = load ptr, ptr %usb_buf.i, align 4
  %call3.i13 = tail call i32 @usb_control_msg(ptr noundef %15, i32 noundef %or.i12, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 14, ptr noundef %18, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i13)
  %cmp4.i14 = icmp slt i32 %call3.i13, 0
  br i1 %cmp4.i14, label %do.end.i17, label %if.end.i15.reg_w.exit18_crit_edge

if.end.i15.reg_w.exit18_crit_edge:                ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit18

do.end.i17:                                       ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 14, i32 noundef 0, i32 noundef %call3.i13) #9
  br label %reg_w.exit18.sink.split

reg_w.exit18.sink.split:                          ; preds = %do.end.i17, %do.end.i
  %call3.i.sink = phi i32 [ %call3.i, %do.end.i ], [ %call3.i13, %do.end.i17 ]
  %19 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call3.i.sink, ptr %usb_err.i, align 8
  br label %reg_w.exit18

reg_w.exit18:                                     ; preds = %reg_w.exit18.sink.split, %if.end.i15.reg_w.exit18_crit_edge, %reg_w.exit.reg_w.exit18_crit_edge, %entry.reg_w.exit18_crit_edge
  %gain = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 2
  %20 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %gain, align 8
  %maximum = getelementptr inbounds %struct.v4l2_ctrl, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %maximum to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %maximum, align 8
  %conv6 = zext i32 %val to i64
  %sub = sub i64 %23, %conv6
  %24 = trunc i64 %sub to i8
  %conv1 = add i8 %24, 1
  %25 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i20 = icmp slt i32 %26, 0
  br i1 %cmp.i20, label %reg_w.exit18.reg_w.exit42_crit_edge, label %if.end.i27

reg_w.exit18.reg_w.exit42_crit_edge:              ; preds = %reg_w.exit18
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit42

if.end.i27:                                       ; preds = %reg_w.exit18
  %usb_buf.i21 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %27 = ptrtoint ptr %usb_buf.i21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %usb_buf.i21, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv1, ptr %28, align 1
  %dev.i22 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %30 = ptrtoint ptr %dev.i22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i22, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 8
  %shl.i.i23 = shl i32 %33, 8
  %or.i24 = or i32 %shl.i.i23, -2147483648
  %34 = load ptr, ptr %usb_buf.i21, align 4
  %call3.i25 = tail call i32 @usb_control_msg(ptr noundef %31, i32 noundef %or.i24, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 15, ptr noundef %34, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i25)
  %cmp4.i26 = icmp slt i32 %call3.i25, 0
  br i1 %cmp4.i26, label %do.end.i29, label %reg_w.exit30

do.end.i29:                                       ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #8
  %conv8.i = zext i8 %conv1 to i32
  %call9.i28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 15, i32 noundef %conv8.i, i32 noundef %call3.i25) #9
  br label %reg_w.exit42.sink.split

reg_w.exit30:                                     ; preds = %if.end.i27
  %35 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pr44 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr44)
  %cmp.i32 = icmp slt i32 %.pr44, 0
  br i1 %cmp.i32, label %reg_w.exit30.reg_w.exit42_crit_edge, label %if.end.i39

reg_w.exit30.reg_w.exit42_crit_edge:              ; preds = %reg_w.exit30
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit42

if.end.i39:                                       ; preds = %reg_w.exit30
  %36 = ptrtoint ptr %usb_buf.i21 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %usb_buf.i21, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %37, align 1
  %39 = ptrtoint ptr %dev.i22 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i22, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 8
  %shl.i.i35 = shl i32 %42, 8
  %or.i36 = or i32 %shl.i.i35, -2147483648
  %43 = load ptr, ptr %usb_buf.i21, align 4
  %call3.i37 = tail call i32 @usb_control_msg(ptr noundef %40, i32 noundef %or.i36, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 17, ptr noundef %43, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i37)
  %cmp4.i38 = icmp slt i32 %call3.i37, 0
  br i1 %cmp4.i38, label %do.end.i41, label %if.end.i39.reg_w.exit42_crit_edge

if.end.i39.reg_w.exit42_crit_edge:                ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit42

do.end.i41:                                       ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 17, i32 noundef 1, i32 noundef %call3.i37) #9
  br label %reg_w.exit42.sink.split

reg_w.exit42.sink.split:                          ; preds = %do.end.i41, %do.end.i29
  %call3.i25.sink = phi i32 [ %call3.i25, %do.end.i29 ], [ %call3.i37, %do.end.i41 ]
  %44 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call3.i25.sink, ptr %usb_err.i, align 8
  br label %reg_w.exit42

reg_w.exit42:                                     ; preds = %reg_w.exit42.sink.split, %if.end.i39.reg_w.exit42_crit_edge, %reg_w.exit30.reg_w.exit42_crit_edge, %reg_w.exit18.reg_w.exit42_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sethvflip(ptr nocapture noundef %gspca_dev, i32 noundef %hflip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %entry.reg_w.exit24_crit_edge, label %if.end.i

entry.reg_w.exit24_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit24

if.end.i:                                         ; preds = %entry
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %2 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_buf.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %3, align 1
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %shl.i.i = shl i32 %8, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %9 = load ptr, ptr %usb_buf.i, align 4
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %6, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 255, ptr noundef %9, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end.i, label %reg_w.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 255, i32 noundef 4, i32 noundef %call3.i) #9
  br label %reg_w.exit24.sink.split

reg_w.exit:                                       ; preds = %if.end.i
  %10 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hflip)
  %tobool.not = icmp eq i32 %hflip, 0
  %conv = select i1 %tobool.not, i8 8, i8 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i2 = icmp slt i32 %.pr, 0
  br i1 %cmp.i2, label %reg_w.exit.reg_w.exit24_crit_edge, label %if.end.i9

reg_w.exit.reg_w.exit24_crit_edge:                ; preds = %reg_w.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit24

if.end.i9:                                        ; preds = %reg_w.exit
  %11 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usb_buf.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %12, align 1
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %shl.i.i5 = shl i32 %17, 8
  %or.i6 = or i32 %shl.i.i5, -2147483648
  %18 = load ptr, ptr %usb_buf.i, align 4
  %call3.i7 = tail call i32 @usb_control_msg(ptr noundef %15, i32 noundef %or.i6, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 33, ptr noundef %18, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i7)
  %cmp4.i8 = icmp slt i32 %call3.i7, 0
  br i1 %cmp4.i8, label %do.end.i11, label %reg_w.exit12

do.end.i11:                                       ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #8
  %conv8.i = zext i8 %conv to i32
  %call9.i10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 33, i32 noundef %conv8.i, i32 noundef %call3.i7) #9
  br label %reg_w.exit24.sink.split

reg_w.exit12:                                     ; preds = %if.end.i9
  %19 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr28.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr28.pr)
  %cmp.i14 = icmp slt i32 %.pr28.pr, 0
  br i1 %cmp.i14, label %reg_w.exit12.reg_w.exit24_crit_edge, label %if.end.i21

reg_w.exit12.reg_w.exit24_crit_edge:              ; preds = %reg_w.exit12
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit24

if.end.i21:                                       ; preds = %reg_w.exit12
  %20 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %usb_buf.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %21, align 1
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 8
  %shl.i.i17 = shl i32 %26, 8
  %or.i18 = or i32 %shl.i.i17, -2147483648
  %27 = load ptr, ptr %usb_buf.i, align 4
  %call3.i19 = tail call i32 @usb_control_msg(ptr noundef %24, i32 noundef %or.i18, i8 noundef zeroext 0, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 17, ptr noundef %27, i16 noundef zeroext 1, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i19)
  %cmp4.i20 = icmp slt i32 %call3.i19, 0
  br i1 %cmp4.i20, label %do.end.i23, label %if.end.i21.reg_w.exit24_crit_edge

if.end.i21.reg_w.exit24_crit_edge:                ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_w.exit24

do.end.i23:                                       ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 17, i32 noundef 1, i32 noundef %call3.i19) #9
  br label %reg_w.exit24.sink.split

reg_w.exit24.sink.split:                          ; preds = %do.end.i23, %do.end.i11, %do.end.i
  %call3.i.sink = phi i32 [ %call3.i, %do.end.i ], [ %call3.i7, %do.end.i11 ], [ %call3.i19, %do.end.i23 ]
  %28 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call3.i.sink, ptr %usb_err.i, align 8
  br label %reg_w.exit24

reg_w.exit24:                                     ; preds = %reg_w.exit24.sink.split, %if.end.i21.reg_w.exit24_crit_edge, %reg_w.exit12.reg_w.exit24_crit_edge, %reg_w.exit.reg_w.exit24_crit_edge, %entry.reg_w.exit24_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_g_ctrl(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_frame_add(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gspca_coarse_grained_expo_autogain(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !27, !29, !30, !32, !33, !34, !35, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !56, !58, !59, !60, !61, !62, !64, !66}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @__UNIQUE_ID_author303, !1, !"__UNIQUE_ID_author303", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/pac7311.c", i32 59, i32 1}
!2 = !{ptr @__UNIQUE_ID_description304, !3, !"__UNIQUE_ID_description304", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/pac7311.c", i32 60, i32 1}
!4 = !{ptr @__UNIQUE_ID_file305, !5, !"__UNIQUE_ID_file305", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/pac7311.c", i32 61, i32 1}
!6 = !{ptr @__UNIQUE_ID_license306, !5, !"__UNIQUE_ID_license306", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_gspca_pac7311__307_687_sd_driver_init6, !8, !"__initcall__kmod_gspca_pac7311__307_687_sd_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/gspca/pac7311.c", i32 687, i32 1}
!9 = !{ptr @__exitcall_sd_driver_exit, !8, !"__exitcall_sd_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/gspca/pac7311.c", i32 676, i32 10}
!13 = !{ptr @sd_driver, !14, !"sd_driver", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/gspca/pac7311.c", i32 675, i32 26}
!15 = !{ptr @sd_desc, !16, !"sd_desc", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/gspca/pac7311.c", i32 641, i32 29}
!17 = !{ptr @vga_mode, !18, !"vga_mode", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/gspca/pac7311.c", i32 75, i32 37}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/gspca/pac7311.c", i32 191, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @reg_w._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @reg_w._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @init_7311, !26, !"init_7311", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/gspca/pac7311.c", i32 96, i32 19}
!27 = !{ptr @sd_init_controls._key, !28, !"_key", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/gspca/pac7311.c", i32 407, i32 2}
!29 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/gspca/pac7311.c", i32 423, i32 3}
!32 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @sd_init_controls._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @sd_init_controls._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @sd_ctrl_ops, !36, !"sd_ctrl_ops", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/gspca/pac7311.c", i32 396, i32 35}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/gspca/pac7311.c", i32 252, i32 5}
!39 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @reg_w_var._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @reg_w_var._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/gspca/pac7311.c", i32 226, i32 4}
!44 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @reg_w_page._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @reg_w_page._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/gspca/pac7311.c", i32 168, i32 3}
!49 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @reg_w_buf._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @reg_w_buf._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @start_7311, !53, !"start_7311", i1 false, i1 false}
!53 = !{!"../drivers/media/usb/gspca/pac7311.c", i32 110, i32 19}
!54 = !{ptr @page4_7311, !55, !"page4_7311", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/gspca/pac7311.c", i32 141, i32 19}
!56 = !{ptr @.str.14, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/usb/gspca/pac_common.h", i32 100, i32 5}
!58 = !{ptr @.str.15, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @pac_find_sof._entry, !57, !"_entry", i1 false, i1 false}
!61 = !{ptr @pac_find_sof._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @pac_jpeg_header1, !63, !"pac_jpeg_header1", i1 false, i1 false}
!63 = !{!"../drivers/media/usb/gspca/pac7311.c", i32 509, i32 28}
!64 = !{ptr @pac_jpeg_header2, !65, !"pac_jpeg_header2", i1 false, i1 false}
!65 = !{!"../drivers/media/usb/gspca/pac7311.c", i32 520, i32 28}
!66 = !{ptr @device_table, !67, !"device_table", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/gspca/pac7311.c", i32 656, i32 35}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{i8 0, i8 2}
