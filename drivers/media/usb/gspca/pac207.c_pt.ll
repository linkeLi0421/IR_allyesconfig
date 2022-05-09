; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/pac207.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/pac207.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
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
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.102, i32, i32 }
%union.anon.102 = type { i32 }
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
%struct.sd = type { %struct.gspca_dev, ptr, i8, i8, i8, i8, %struct.atomic_t }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_author303 = internal constant [56 x i8] c"gspca_pac207.author=Hans de Goede <hdegoede@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [39 x i8] c"gspca_pac207.description=Pixart PAC207\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [55 x i8] c"gspca_pac207.file=drivers/media/usb/gspca/gspca_pac207\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [25 x i8] c"gspca_pac207.license=GPL\00", section ".modinfo", align 1
@__param_str_led_invert = internal constant [24 x i8] c"gspca_pac207.led_invert\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@led_invert = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_led_invert = internal constant %struct.kernel_param { ptr @__param_str_led_invert, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @led_invert } }, section "__param", align 4
@__UNIQUE_ID_led_inverttype307 = internal constant [37 x i8] c"gspca_pac207.parmtype=led_invert:int\00", section ".modinfo", align 1
@__UNIQUE_ID_led_invert308 = internal constant [40 x i8] c"gspca_pac207.parm=led_invert:Invert led\00", section ".modinfo", align 1
@__initcall__kmod_gspca_pac207__309_475_sd_driver_init6 = internal global ptr @sd_driver_init, section ".initcall6.init", align 4
@sd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @sd_probe, ptr @gspca_disconnect, ptr null, ptr @gspca_suspend, ptr @gspca_resume, ptr @gspca_resume, ptr null, ptr null, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sd_driver_exit = internal global ptr @sd_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gspca_pac207\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pac207\00", [25 x i8] zeroinitializer }, align 32
@device_table = internal constant { [14 x %struct.usb_device_id], [80 x i8] } { [14 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1054, i16 16424, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2362, i16 9312, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2362, i16 9313, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2362, i16 9315, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2362, i16 9316, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2362, i16 9320, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2362, i16 9328, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2362, i16 9329, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2362, i16 9330, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2362, i16 9332, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2362, i16 9334, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5215, i16 314, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 8193, i16 -3819, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [80 x i8] zeroinitializer }, align 32
@sd_desc = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str.1, ptr @sd_config, ptr @sd_init, ptr @sd_init_controls, ptr null, ptr @sd_start, ptr @sd_pkt_scan, ptr null, ptr null, ptr @sd_stopN, ptr null, ptr @pac207_do_auto_gain, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sd_int_pkt_scan, i8 0 }, [36 x i8] zeroinitializer }, align 32
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@sd_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017%s: Pixart Sensor ID 0x%02X Chips ID 0x%02X\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sd_config\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/media/usb/gspca/pac207.c\00", [63 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr = internal global ptr @sd_config._entry, section ".printk_index", align 4
@sd_config._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: Error invalid sensor ID!\0A\00", [32 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr.7 = internal global ptr @sd_config._entry.5, section ".printk_index", align 4
@sd_config._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"\017%s: Pixart PAC207BCA Image Processor and Control Chip detected (vid/pid 0x%04X:0x%04X)\0A\00", [38 x i8] zeroinitializer }, align 32
@sd_config._entry_ptr.10 = internal global ptr @sd_config._entry.8, section ".printk_index", align 4
@sif_mode = internal constant { [2 x %struct.v4l2_pix_format], [32 x i8] } { [2 x %struct.v4l2_pix_format] [%struct.v4l2_pix_format { i32 176, i32 144, i32 925905488, i32 1, i32 176, i32 25632, i32 8, i32 1, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }, %struct.v4l2_pix_format { i32 352, i32 288, i32 925905488, i32 1, i32 352, i32 101952, i32 8, i32 0, i32 0, %union.anon.102 zeroinitializer, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@pac207_read_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013gspca_pac207: Failed to read a register (index 0x%04X, error %d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pac207_read_reg\00", [16 x i8] zeroinitializer }, align 32
@pac207_read_reg._entry_ptr = internal global ptr @pac207_read_reg._entry, section ".printk_index", align 4
@pac207_write_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\013gspca_pac207: Failed to write a register (index 0x%04X, value 0x%02X, error %d)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pac207_write_reg\00", [47 x i8] zeroinitializer }, align 32
@pac207_write_reg._entry_ptr = internal global ptr @pac207_write_reg._entry, section ".printk_index", align 4
@sd_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pac207:251:(hdl)->_lock\00", [40 x i8] zeroinitializer }, align 32
@sd_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @sd_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@sd_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013gspca_pac207: Could not initialize controls\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sd_init_controls\00", [47 x i8] zeroinitializer }, align 32
@sd_init_controls._entry_ptr = internal global ptr @sd_init_controls._entry, section ".printk_index", align 4
@sd_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: pac207_start mode 176x144\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sd_start\00", [23 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr = internal global ptr @sd_start._entry, section ".printk_index", align 4
@sd_start._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.4, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: pac207_start mode 352x288\0A\00", [63 x i8] zeroinitializer }, align 32
@sd_start._entry_ptr.22 = internal global ptr @sd_start._entry.20, section ".printk_index", align 4
@pac207_write_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013gspca_pac207: Failed to write registers to index 0x%04X, error %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pac207_write_regs\00", [46 x i8] zeroinitializer }, align 32
@pac207_write_regs._entry_ptr = internal global ptr @pac207_write_regs._entry, section ".printk_index", align 4
@pac_find_sof._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.27, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\017%s: SOF found, bytes to analyze: %u - Frame starts at byte #%u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pac_find_sof\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/media/usb/gspca/pac_common.h\00", [59 x i8] zeroinitializer }, align 32
@pac_find_sof._entry_ptr = internal global ptr @pac_find_sof._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 8, i64 150, i64 255]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 9963776, i64 9963794]
@___asan_gen_.31 = private unnamed_addr constant [11 x i8] c"led_invert\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 45, i32 12 }
@___asan_gen_.34 = private unnamed_addr constant [10 x i8] c"sd_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 463, i32 26 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 475, i32 1 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 464, i32 10 }
@___asan_gen_.43 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 437, i32 35 }
@___asan_gen_.46 = private unnamed_addr constant [8 x i8] c"sd_desc\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 422, i32 29 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 159, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 163, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 167, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [9 x i8] c"sif_mode\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 63, i32 37 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 139, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 120, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 251, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [12 x i8] c"sd_ctrl_ops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 240, i32 35 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 268, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 308, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 310, i32 3 }
@___asan_gen_.134 = private constant [36 x i8] c"../drivers/media/usb/gspca/pac207.c\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 102, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [40 x i8] c"../drivers/media/usb/gspca/pac_common.h\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 100, i32 5 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_led_invert308, ptr @__UNIQUE_ID_led_inverttype307, ptr @__UNIQUE_ID_license306, ptr @__exitcall_sd_driver_exit, ptr @__initcall__kmod_gspca_pac207__309_475_sd_driver_init6, ptr @__param_led_invert, ptr @pac207_read_reg._entry, ptr @pac207_read_reg._entry_ptr, ptr @pac207_write_reg._entry, ptr @pac207_write_reg._entry_ptr, ptr @pac207_write_regs._entry, ptr @pac207_write_regs._entry_ptr, ptr @pac_find_sof._entry, ptr @pac_find_sof._entry_ptr, ptr @sd_config._entry, ptr @sd_config._entry.5, ptr @sd_config._entry.8, ptr @sd_config._entry_ptr, ptr @sd_config._entry_ptr.10, ptr @sd_config._entry_ptr.7, ptr @sd_driver_exit, ptr @sd_init_controls._entry, ptr @sd_init_controls._entry_ptr, ptr @sd_start._entry, ptr @sd_start._entry.20, ptr @sd_start._entry_ptr, ptr @sd_start._entry_ptr.22, ptr @led_invert, ptr @sd_driver, ptr @.str, ptr @.str.1, ptr @device_table, ptr @sd_desc, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @sif_mode, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @sd_init_controls._key, ptr @.str.15, ptr @sd_ctrl_ops, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led_invert to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_config._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sif_mode to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pac207_read_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pac207_write_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_start._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pac207_write_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pac_find_sof._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @sd_driver, ptr noundef null, ptr noundef nonnull @.str) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sd_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usb_deregister(ptr noundef nonnull @sd_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_probe(ptr noundef %intf, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gspca_dev_probe(ptr noundef %intf, ptr noundef %id, ptr noundef nonnull @sd_desc, i32 noundef 2624, ptr noundef null) #5
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_config(ptr noundef %gspca_dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %entry.pac207_read_reg.exit90_crit_edge, label %if.end.i

entry.pac207_read_reg.exit90_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %pac207_read_reg.exit90

if.end.i:                                         ; preds = %entry
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %5, 8
  %or1.i = or i32 %shl.i.i, -2147483520
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %6 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_buf.i, align 4
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or1.i, i8 noundef zeroext 0, i8 noundef zeroext -63, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %7, i16 noundef zeroext 1, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %do.end.i, label %pac207_read_reg.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef %call2.i) #8
  %8 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call2.i, ptr %usb_err.i, align 8
  br label %pac207_read_reg.exit90

pac207_read_reg.exit:                             ; preds = %if.end.i
  %9 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %usb_buf.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  %13 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i77 = icmp slt i32 %.pr, 0
  br i1 %cmp.i77, label %pac207_read_reg.exit.pac207_read_reg.exit90_crit_edge, label %if.end.i84

pac207_read_reg.exit.pac207_read_reg.exit90_crit_edge: ; preds = %pac207_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %pac207_read_reg.exit90

if.end.i84:                                       ; preds = %pac207_read_reg.exit
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %shl.i.i79 = shl i32 %17, 8
  %or1.i80 = or i32 %shl.i.i79, -2147483520
  %18 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %usb_buf.i, align 4
  %call2.i82 = tail call i32 @usb_control_msg(ptr noundef %15, i32 noundef %or1.i80, i8 noundef zeroext 0, i8 noundef zeroext -63, i16 noundef zeroext 0, i16 noundef zeroext 1, ptr noundef %19, i16 noundef zeroext 1, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i82)
  %cmp3.i83 = icmp slt i32 %call2.i82, 0
  br i1 %cmp3.i83, label %do.end.i86, label %if.end7.i88

do.end.i86:                                       ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 1, i32 noundef %call2.i82) #8
  %20 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call2.i82, ptr %usb_err.i, align 8
  br label %pac207_read_reg.exit90

if.end7.i88:                                      ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %usb_buf.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 1
  %conv9.i87 = zext i8 %24 to i32
  br label %pac207_read_reg.exit90

pac207_read_reg.exit90:                           ; preds = %if.end7.i88, %do.end.i86, %pac207_read_reg.exit.pac207_read_reg.exit90_crit_edge, %do.end.i, %entry.pac207_read_reg.exit90_crit_edge
  %retval.0.i93.shrunk = phi i8 [ %12, %do.end.i86 ], [ %12, %if.end7.i88 ], [ %12, %pac207_read_reg.exit.pac207_read_reg.exit90_crit_edge ], [ 0, %entry.pac207_read_reg.exit90_crit_edge ], [ 0, %do.end.i ]
  %retval.0.i89 = phi i32 [ 0, %do.end.i86 ], [ %conv9.i87, %if.end7.i88 ], [ 0, %pac207_read_reg.exit.pac207_read_reg.exit90_crit_edge ], [ 0, %entry.pac207_read_reg.exit90_crit_edge ], [ 0, %do.end.i ]
  %retval.0.i93 = zext i8 %retval.0.i93.shrunk to i32
  %and = shl nuw nsw i32 %retval.0.i93, 4
  %and8 = lshr i32 %retval.0.i89, 4
  %or = or i32 %and, %and8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %25 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp = icmp sgt i32 %25, 0
  br i1 %cmp, label %do.end, label %pac207_read_reg.exit90.do.end24_crit_edge

pac207_read_reg.exit90.do.end24_crit_edge:        ; preds = %pac207_read_reg.exit90
  call void @__sanitizer_cov_trace_pc() #7
  %.pre = and i32 %or, 255
  br label %do.end24

do.end:                                           ; preds = %pac207_read_reg.exit90
  call void @__sanitizer_cov_trace_pc() #7
  %conv14 = and i32 %retval.0.i89, 15
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %conv19 = and i32 %or, 255
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name, i32 noundef %conv19, i32 noundef %conv14) #8
  br label %do.end24

do.end24:                                         ; preds = %do.end, %pac207_read_reg.exit90.do.end24_crit_edge
  %conv26.pre-phi = phi i32 [ %.pre, %pac207_read_reg.exit90.do.end24_crit_edge ], [ %conv19, %do.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %conv26.pre-phi)
  %cmp27.not = icmp eq i32 %conv26.pre-phi, 39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %26 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp47 = icmp sgt i32 %26, 0
  br i1 %cmp27.not, label %do.body46, label %do.body30

do.body30:                                        ; preds = %do.end24
  br i1 %cmp47, label %do.end36, label %do.body30.cleanup_crit_edge

do.body30.cleanup_crit_edge:                      ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end36:                                         ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #7
  %name39 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name39) #8
  br label %cleanup

do.body46:                                        ; preds = %do.end24
  br i1 %cmp47, label %do.end52, label %do.body46.do.end62_crit_edge

do.body46.do.end62_crit_edge:                     ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end62

do.end52:                                         ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #7
  %name55 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %idVendor = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 1
  %27 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %idVendor, align 2
  %conv57 = zext i16 %28 to i32
  %idProduct = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 2
  %29 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %idProduct, align 4
  %conv58 = zext i16 %30 to i32
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name55, i32 noundef %conv57, i32 noundef %conv58) #8
  br label %do.end62

do.end62:                                         ; preds = %do.end52, %do.body46.do.end62_crit_edge
  %cam63 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %31 = ptrtoint ptr %cam63 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @sif_mode, ptr %cam63, align 4
  %nmodes = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %32 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 2, ptr %nmodes, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end62, %do.end36, %do.body30.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end62 ], [ -19, %do.end36 ], [ -19, %do.body30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init(ptr nocapture noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @led_invert, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  %conv = select i1 %tobool.not, i16 0, i16 2
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %1 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i = icmp slt i32 %2, 0
  br i1 %cmp.i, label %entry.pac207_write_reg.exit13_crit_edge, label %if.end.i

entry.pac207_write_reg.exit13_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %pac207_write_reg.exit13

if.end.i:                                         ; preds = %entry
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %shl.i.i = shl i32 %6, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call1.i = tail call i32 @usb_control_msg(ptr noundef %4, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext %conv, i16 noundef zeroext 65, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %pac207_write_reg.exitthread-pre-split, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv3.i = zext i16 %conv to i32
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 65, i32 noundef %conv3.i, i32 noundef %call1.i) #8
  %7 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call1.i, ptr %usb_err.i, align 8
  br label %pac207_write_reg.exit

pac207_write_reg.exitthread-pre-split:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %usb_err.i, align 8
  br label %pac207_write_reg.exit

pac207_write_reg.exit:                            ; preds = %pac207_write_reg.exitthread-pre-split, %do.end.i
  %9 = phi i32 [ %.pr, %pac207_write_reg.exitthread-pre-split ], [ %call1.i, %do.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i4 = icmp slt i32 %9, 0
  br i1 %cmp.i4, label %pac207_write_reg.exit.pac207_write_reg.exit13_crit_edge, label %if.end.i10

pac207_write_reg.exit.pac207_write_reg.exit13_crit_edge: ; preds = %pac207_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %pac207_write_reg.exit13

if.end.i10:                                       ; preds = %pac207_write_reg.exit
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i.i6 = shl i32 %13, 8
  %or.i7 = or i32 %shl.i.i6, -2147483648
  %call1.i8 = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or.i7, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 15, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i8)
  %tobool.not.i9 = icmp eq i32 %call1.i8, 0
  br i1 %tobool.not.i9, label %if.end.i10.pac207_write_reg.exit13_crit_edge, label %do.end.i12

if.end.i10.pac207_write_reg.exit13_crit_edge:     ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #7
  br label %pac207_write_reg.exit13

do.end.i12:                                       ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 15, i32 noundef 0, i32 noundef %call1.i8) #8
  %14 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call1.i8, ptr %usb_err.i, align 8
  br label %pac207_write_reg.exit13

pac207_write_reg.exit13:                          ; preds = %do.end.i12, %if.end.i10.pac207_write_reg.exit13_crit_edge, %pac207_write_reg.exit.pac207_write_reg.exit13_crit_edge, %entry.pac207_write_reg.exit13_crit_edge
  %15 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %usb_err.i, align 8
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_init_controls(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_handler = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8
  %ctrl_handler1 = getelementptr inbounds %struct.video_device, ptr %gspca_dev, i32 0, i32 9
  %0 = ptrtoint ptr %ctrl_handler1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ctrl_handler, ptr %ctrl_handler1, align 4
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 4, ptr noundef nonnull @sd_init_controls._key, ptr noundef nonnull @.str.15) #5
  %call2 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 46) #5
  %brightness = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %1 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %brightness, align 8
  %call3 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963794, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #5
  %2 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %2, align 8
  %call4 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963793, i64 noundef 3, i64 noundef 90, i64 noundef 1, i64 noundef 5) #5
  %exposure = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %exposure to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call4, ptr %exposure, align 4
  %call5 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @sd_ctrl_ops, i32 noundef 9963795, i64 noundef 0, i64 noundef 31, i64 noundef 1, i64 noundef 7) #5
  %gain = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 2
  %5 = ptrtoint ptr %gain to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5, ptr %gain, align 8
  %error = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8, i32 9
  %6 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #8
  %8 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %error, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @v4l2_ctrl_auto_cluster(i32 noundef 3, ptr noundef %2, i8 noundef zeroext 0, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %9, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_start(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %entry.pac207_write_regs.exit109_crit_edge, label %if.end.i

entry.pac207_write_regs.exit109_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %pac207_write_regs.exit109

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
  %call1.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 16, i16 noundef zeroext 15, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %pac207_write_reg.exitthread-pre-split, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 15, i32 noundef 16, i32 noundef %call1.i) #8
  %6 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call1.i, ptr %usb_err.i, align 8
  br label %pac207_write_reg.exit

pac207_write_reg.exitthread-pre-split:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load i32, ptr %usb_err.i, align 8
  br label %pac207_write_reg.exit

pac207_write_reg.exit:                            ; preds = %pac207_write_reg.exitthread-pre-split, %do.end.i
  %8 = phi i32 [ %.pr, %pac207_write_reg.exitthread-pre-split ], [ %call1.i, %do.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i68 = icmp slt i32 %8, 0
  br i1 %cmp.i68, label %pac207_write_reg.exit.pac207_write_regs.exit_crit_edge, label %if.end.i72

pac207_write_reg.exit.pac207_write_regs.exit_crit_edge: ; preds = %pac207_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %pac207_write_regs.exit

if.end.i72:                                       ; preds = %pac207_write_reg.exit
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %11 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %usb_buf.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 1158002425349613956, ptr %12, align 1
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %10, align 8
  %shl.i.i70 = shl i32 %15, 8
  %or.i71 = or i32 %shl.i.i70, -2147483648
  %16 = load ptr, ptr %usb_buf.i, align 4
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %10, i32 noundef %or.i71, i8 noundef zeroext 1, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 2, ptr noundef %16, i16 noundef zeroext 8, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %do.end.i73, label %if.end.i72.pac207_write_regs.exit_crit_edge

if.end.i72.pac207_write_regs.exit_crit_edge:      ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #7
  br label %pac207_write_regs.exit

do.end.i73:                                       ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef 2, i32 noundef %call2.i) #8
  br label %pac207_write_regs.exit109.sink.split

pac207_write_regs.exit:                           ; preds = %if.end.i72.pac207_write_regs.exit_crit_edge, %pac207_write_reg.exit.pac207_write_regs.exit_crit_edge
  %17 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr224 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr224)
  %cmp.i75 = icmp slt i32 %.pr224, 0
  br i1 %cmp.i75, label %pac207_write_regs.exit.pac207_write_regs.exit109_crit_edge, label %if.end.i82

pac207_write_regs.exit.pac207_write_regs.exit109_crit_edge: ; preds = %pac207_write_regs.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %pac207_write_regs.exit109

if.end.i82:                                       ; preds = %pac207_write_regs.exit
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  %usb_buf.i77 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %20 = ptrtoint ptr %usb_buf.i77 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %usb_buf.i77, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 5288462243167531056, ptr %21, align 1
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %19, align 8
  %shl.i.i78 = shl i32 %24, 8
  %or.i79 = or i32 %shl.i.i78, -2147483648
  %25 = load ptr, ptr %usb_buf.i77, align 4
  %call2.i80 = tail call i32 @usb_control_msg(ptr noundef %19, i32 noundef %or.i79, i8 noundef zeroext 1, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 10, ptr noundef %25, i16 noundef zeroext 8, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i80)
  %cmp3.i81 = icmp slt i32 %call2.i80, 0
  br i1 %cmp3.i81, label %do.end.i84, label %pac207_write_regs.exit85

do.end.i84:                                       ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef 10, i32 noundef %call2.i80) #8
  br label %pac207_write_regs.exit109.sink.split

pac207_write_regs.exit85:                         ; preds = %if.end.i82
  %26 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr226.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr226.pr)
  %cmp.i87 = icmp slt i32 %.pr226.pr, 0
  br i1 %cmp.i87, label %pac207_write_regs.exit85.pac207_write_regs.exit109_crit_edge, label %if.end.i94

pac207_write_regs.exit85.pac207_write_regs.exit109_crit_edge: ; preds = %pac207_write_regs.exit85
  call void @__sanitizer_cov_trace_pc() #7
  br label %pac207_write_regs.exit109

if.end.i94:                                       ; preds = %pac207_write_regs.exit85
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 4
  %29 = ptrtoint ptr %usb_buf.i77 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %usb_buf.i77, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 8)
  store i64 483736944640, ptr %30, align 1
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %28, align 8
  %shl.i.i90 = shl i32 %33, 8
  %or.i91 = or i32 %shl.i.i90, -2147483648
  %34 = load ptr, ptr %usb_buf.i77, align 4
  %call2.i92 = tail call i32 @usb_control_msg(ptr noundef %28, i32 noundef %or.i91, i8 noundef zeroext 1, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 18, ptr noundef %34, i16 noundef zeroext 8, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i92)
  %cmp3.i93 = icmp slt i32 %call2.i92, 0
  br i1 %cmp3.i93, label %do.end.i96, label %pac207_write_regs.exit97

do.end.i96:                                       ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef 18, i32 noundef %call2.i92) #8
  br label %pac207_write_regs.exit109.sink.split

pac207_write_regs.exit97:                         ; preds = %if.end.i94
  %35 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pr228.pr = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr228.pr)
  %cmp.i99 = icmp slt i32 %.pr228.pr, 0
  br i1 %cmp.i99, label %pac207_write_regs.exit97.pac207_write_regs.exit109_crit_edge, label %if.end.i106

pac207_write_regs.exit97.pac207_write_regs.exit109_crit_edge: ; preds = %pac207_write_regs.exit97
  call void @__sanitizer_cov_trace_pc() #7
  br label %pac207_write_regs.exit109

if.end.i106:                                      ; preds = %pac207_write_regs.exit97
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 4
  %38 = ptrtoint ptr %usb_buf.i77 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %usb_buf.i77, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 8)
  store i64 3603044631358648064, ptr %39, align 1
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %37, align 8
  %shl.i.i102 = shl i32 %42, 8
  %or.i103 = or i32 %shl.i.i102, -2147483648
  %43 = load ptr, ptr %usb_buf.i77, align 4
  %call2.i104 = tail call i32 @usb_control_msg(ptr noundef %37, i32 noundef %or.i103, i8 noundef zeroext 1, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 66, ptr noundef %43, i16 noundef zeroext 8, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i104)
  %cmp3.i105 = icmp slt i32 %call2.i104, 0
  br i1 %cmp3.i105, label %do.end.i108, label %if.end.i106.pac207_write_regs.exit109_crit_edge

if.end.i106.pac207_write_regs.exit109_crit_edge:  ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #7
  br label %pac207_write_regs.exit109

do.end.i108:                                      ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef 66, i32 noundef %call2.i104) #8
  br label %pac207_write_regs.exit109.sink.split

pac207_write_regs.exit109.sink.split:             ; preds = %do.end.i108, %do.end.i96, %do.end.i84, %do.end.i73
  %call2.i80.sink = phi i32 [ %call2.i80, %do.end.i84 ], [ %call2.i, %do.end.i73 ], [ %call2.i92, %do.end.i96 ], [ %call2.i104, %do.end.i108 ]
  %44 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call2.i80.sink, ptr %usb_err.i, align 8
  br label %pac207_write_regs.exit109

pac207_write_regs.exit109:                        ; preds = %pac207_write_regs.exit109.sink.split, %if.end.i106.pac207_write_regs.exit109_crit_edge, %pac207_write_regs.exit97.pac207_write_regs.exit109_crit_edge, %pac207_write_regs.exit85.pac207_write_regs.exit109_crit_edge, %pac207_write_regs.exit.pac207_write_regs.exit109_crit_edge, %entry.pac207_write_regs.exit109_crit_edge
  %pixfmt = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19
  %45 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pixfmt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 176, i32 %46)
  %cmp = icmp eq i32 %46, 176
  %47 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.i111 = icmp slt i32 %48, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %pac207_write_regs.exit109
  br i1 %cmp.i111, label %if.then.pac207_write_reg.exit142_crit_edge, label %if.end.i117

if.then.pac207_write_reg.exit142_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %pac207_write_reg.exit142

if.end.i117:                                      ; preds = %if.then
  %dev.i112 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %49 = ptrtoint ptr %dev.i112 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i112, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 8
  %shl.i.i113 = shl i32 %52, 8
  %or.i114 = or i32 %shl.i.i113, -2147483648
  %call1.i115 = tail call i32 @usb_control_msg(ptr noundef %50, i32 noundef %or.i114, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 255, i16 noundef zeroext 74, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i115)
  %tobool.not.i116 = icmp eq i32 %call1.i115, 0
  br i1 %tobool.not.i116, label %if.end.i117.if.endthread-pre-split_crit_edge, label %do.end.i119

if.end.i117.if.endthread-pre-split_crit_edge:     ; preds = %if.end.i117
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.endthread-pre-split

do.end.i119:                                      ; preds = %if.end.i117
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 74, i32 noundef 255, i32 noundef %call1.i115) #8
  %53 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %call1.i115, ptr %usb_err.i, align 8
  br label %if.end

if.else:                                          ; preds = %pac207_write_regs.exit109
  br i1 %cmp.i111, label %if.else.pac207_write_reg.exit142_crit_edge, label %if.end.i128

if.else.pac207_write_reg.exit142_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %pac207_write_reg.exit142

if.end.i128:                                      ; preds = %if.else
  %dev.i123 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %54 = ptrtoint ptr %dev.i123 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i123, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 8
  %shl.i.i124 = shl i32 %57, 8
  %or.i125 = or i32 %shl.i.i124, -2147483648
  %call1.i126 = tail call i32 @usb_control_msg(ptr noundef %55, i32 noundef %or.i125, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 48, i16 noundef zeroext 74, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i126)
  %tobool.not.i127 = icmp eq i32 %call1.i126, 0
  br i1 %tobool.not.i127, label %if.end.i128.if.endthread-pre-split_crit_edge, label %do.end.i130

if.end.i128.if.endthread-pre-split_crit_edge:     ; preds = %if.end.i128
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.endthread-pre-split

do.end.i130:                                      ; preds = %if.end.i128
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 74, i32 noundef 48, i32 noundef %call1.i126) #8
  %58 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %call1.i126, ptr %usb_err.i, align 8
  br label %if.end

if.endthread-pre-split:                           ; preds = %if.end.i128.if.endthread-pre-split_crit_edge, %if.end.i117.if.endthread-pre-split_crit_edge
  %59 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pr230 = load i32, ptr %usb_err.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.endthread-pre-split, %do.end.i130, %do.end.i119
  %60 = phi i32 [ %.pr230, %if.endthread-pre-split ], [ %call1.i126, %do.end.i130 ], [ %call1.i115, %do.end.i119 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp.i133 = icmp slt i32 %60, 0
  br i1 %cmp.i133, label %if.end.pac207_write_reg.exit142_crit_edge, label %if.end.i139

if.end.pac207_write_reg.exit142_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %pac207_write_reg.exit142

if.end.i139:                                      ; preds = %if.end
  %dev.i134 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %61 = ptrtoint ptr %dev.i134 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev.i134, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %62, align 8
  %shl.i.i135 = shl i32 %64, 8
  %or.i136 = or i32 %shl.i.i135, -2147483648
  %call1.i137 = tail call i32 @usb_control_msg(ptr noundef %62, i32 noundef %or.i136, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 75, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i137)
  %tobool.not.i138 = icmp eq i32 %call1.i137, 0
  br i1 %tobool.not.i138, label %if.end.i139.pac207_write_reg.exit142_crit_edge, label %do.end.i141

if.end.i139.pac207_write_reg.exit142_crit_edge:   ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #7
  br label %pac207_write_reg.exit142

do.end.i141:                                      ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i140 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 75, i32 noundef 0, i32 noundef %call1.i137) #8
  %65 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %call1.i137, ptr %usb_err.i, align 8
  br label %pac207_write_reg.exit142

pac207_write_reg.exit142:                         ; preds = %do.end.i141, %if.end.i139.pac207_write_reg.exit142_crit_edge, %if.end.pac207_write_reg.exit142_crit_edge, %if.else.pac207_write_reg.exit142_crit_edge, %if.then.pac207_write_reg.exit142_crit_edge
  %brightness = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %66 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %brightness, align 8
  %call = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %67) #5
  %68 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp.i144 = icmp slt i32 %69, 0
  br i1 %cmp.i144, label %pac207_write_reg.exit142.pac207_write_reg.exit153_crit_edge, label %if.end.i150

pac207_write_reg.exit142.pac207_write_reg.exit153_crit_edge: ; preds = %pac207_write_reg.exit142
  call void @__sanitizer_cov_trace_pc() #7
  br label %pac207_write_reg.exit153

if.end.i150:                                      ; preds = %pac207_write_reg.exit142
  %conv = trunc i32 %call to i16
  %dev.i145 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %70 = ptrtoint ptr %dev.i145 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev.i145, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 8
  %shl.i.i146 = shl i32 %73, 8
  %or.i147 = or i32 %shl.i.i146, -2147483648
  %call1.i148 = tail call i32 @usb_control_msg(ptr noundef %71, i32 noundef %or.i147, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext %conv, i16 noundef zeroext 8, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i148)
  %tobool.not.i149 = icmp eq i32 %call1.i148, 0
  br i1 %tobool.not.i149, label %if.end.i150.pac207_write_reg.exit153_crit_edge, label %do.end.i152

if.end.i150.pac207_write_reg.exit153_crit_edge:   ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #7
  br label %pac207_write_reg.exit153

do.end.i152:                                      ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #7
  %conv3.i = and i32 %call, 65535
  %call4.i151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 8, i32 noundef %conv3.i, i32 noundef %call1.i148) #8
  %74 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %call1.i148, ptr %usb_err.i, align 8
  br label %pac207_write_reg.exit153

pac207_write_reg.exit153:                         ; preds = %do.end.i152, %if.end.i150.pac207_write_reg.exit153_crit_edge, %pac207_write_reg.exit142.pac207_write_reg.exit153_crit_edge
  %gain = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 2
  %75 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %gain, align 8
  %call1 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %76) #5
  %77 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp.i155 = icmp slt i32 %78, 0
  br i1 %cmp.i155, label %pac207_write_reg.exit153.pac207_write_reg.exit165_crit_edge, label %if.end.i161

pac207_write_reg.exit153.pac207_write_reg.exit165_crit_edge: ; preds = %pac207_write_reg.exit153
  call void @__sanitizer_cov_trace_pc() #7
  br label %pac207_write_reg.exit165

if.end.i161:                                      ; preds = %pac207_write_reg.exit153
  %conv2 = trunc i32 %call1 to i16
  %dev.i156 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %79 = ptrtoint ptr %dev.i156 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev.i156, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %80, align 8
  %shl.i.i157 = shl i32 %82, 8
  %or.i158 = or i32 %shl.i.i157, -2147483648
  %call1.i159 = tail call i32 @usb_control_msg(ptr noundef %80, i32 noundef %or.i158, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext %conv2, i16 noundef zeroext 14, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i159)
  %tobool.not.i160 = icmp eq i32 %call1.i159, 0
  br i1 %tobool.not.i160, label %if.end.i161.pac207_write_reg.exit165_crit_edge, label %do.end.i164

if.end.i161.pac207_write_reg.exit165_crit_edge:   ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #7
  br label %pac207_write_reg.exit165

do.end.i164:                                      ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #7
  %conv3.i162 = and i32 %call1, 65535
  %call4.i163 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 14, i32 noundef %conv3.i162, i32 noundef %call1.i159) #8
  %83 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %call1.i159, ptr %usb_err.i, align 8
  br label %pac207_write_reg.exit165

pac207_write_reg.exit165:                         ; preds = %do.end.i164, %if.end.i161.pac207_write_reg.exit165_crit_edge, %pac207_write_reg.exit153.pac207_write_reg.exit165_crit_edge
  %exposure = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 9, i32 1
  %84 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %exposure, align 4
  %call3 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef %85) #5
  %86 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp.i167 = icmp slt i32 %87, 0
  br i1 %cmp.i167, label %pac207_write_reg.exit165.pac207_write_reg.exit177_crit_edge, label %if.end.i173

pac207_write_reg.exit165.pac207_write_reg.exit177_crit_edge: ; preds = %pac207_write_reg.exit165
  call void @__sanitizer_cov_trace_pc() #7
  br label %pac207_write_reg.exit177

if.end.i173:                                      ; preds = %pac207_write_reg.exit165
  %conv4 = trunc i32 %call3 to i16
  %dev.i168 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %88 = ptrtoint ptr %dev.i168 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev.i168, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %89, align 8
  %shl.i.i169 = shl i32 %91, 8
  %or.i170 = or i32 %shl.i.i169, -2147483648
  %call1.i171 = tail call i32 @usb_control_msg(ptr noundef %89, i32 noundef %or.i170, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext %conv4, i16 noundef zeroext 2, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i171)
  %tobool.not.i172 = icmp eq i32 %call1.i171, 0
  br i1 %tobool.not.i172, label %if.end.i173.pac207_write_reg.exit177_crit_edge, label %do.end.i176

if.end.i173.pac207_write_reg.exit177_crit_edge:   ; preds = %if.end.i173
  call void @__sanitizer_cov_trace_pc() #7
  br label %pac207_write_reg.exit177

do.end.i176:                                      ; preds = %if.end.i173
  call void @__sanitizer_cov_trace_pc() #7
  %conv3.i174 = and i32 %call3, 65535
  %call4.i175 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 2, i32 noundef %conv3.i174, i32 noundef %call1.i171) #8
  %92 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %call1.i171, ptr %usb_err.i, align 8
  br label %pac207_write_reg.exit177

pac207_write_reg.exit177:                         ; preds = %do.end.i176, %if.end.i173.pac207_write_reg.exit177_crit_edge, %pac207_write_reg.exit165.pac207_write_reg.exit177_crit_edge
  %93 = load i32, ptr @led_invert, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool.not = icmp eq i32 %93, 0
  %. = select i1 %tobool.not, i8 2, i8 0
  %94 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %pixfmt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 176, i32 %95)
  %cmp10 = icmp eq i32 %95, 176
  br i1 %cmp10, label %if.then12, label %do.body24

if.then12:                                        ; preds = %pac207_write_reg.exit177
  %96 = or i8 %., 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %97 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %97)
  %cmp15 = icmp sgt i32 %97, 2
  br i1 %cmp15, label %if.then12.if.end39.sink.split_crit_edge, label %if.then12.if.end39_crit_edge

if.then12.if.end39_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.then12.if.end39.sink.split_crit_edge:          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39.sink.split

do.body24:                                        ; preds = %pac207_write_reg.exit177
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %98 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %98)
  %cmp25 = icmp sgt i32 %98, 2
  br i1 %cmp25, label %do.body24.if.end39.sink.split_crit_edge, label %do.body24.if.end39_crit_edge

do.body24.if.end39_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

do.body24.if.end39.sink.split_crit_edge:          ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39.sink.split

if.end39.sink.split:                              ; preds = %do.body24.if.end39.sink.split_crit_edge, %if.then12.if.end39.sink.split_crit_edge
  %.str.21.sink = phi ptr [ @.str.18, %if.then12.if.end39.sink.split_crit_edge ], [ @.str.21, %do.body24.if.end39.sink.split_crit_edge ]
  %mode.1.ph = phi i8 [ %96, %if.then12.if.end39.sink.split_crit_edge ], [ %., %do.body24.if.end39.sink.split_crit_edge ]
  %name33 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.21.sink, ptr noundef %name33) #8
  br label %if.end39

if.end39:                                         ; preds = %if.end39.sink.split, %do.body24.if.end39_crit_edge, %if.then12.if.end39_crit_edge
  %mode.1 = phi i8 [ %96, %if.then12.if.end39_crit_edge ], [ %., %do.body24.if.end39_crit_edge ], [ %mode.1.ph, %if.end39.sink.split ]
  %99 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp.i179 = icmp slt i32 %100, 0
  br i1 %cmp.i179, label %if.end39.pac207_write_reg.exit211_crit_edge, label %if.end.i185

if.end39.pac207_write_reg.exit211_crit_edge:      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %pac207_write_reg.exit211

if.end.i185:                                      ; preds = %if.end39
  %conv40 = zext i8 %mode.1 to i16
  %dev.i180 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %101 = ptrtoint ptr %dev.i180 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev.i180, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %102, align 8
  %shl.i.i181 = shl i32 %104, 8
  %or.i182 = or i32 %shl.i.i181, -2147483648
  %call1.i183 = tail call i32 @usb_control_msg(ptr noundef %102, i32 noundef %or.i182, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext %conv40, i16 noundef zeroext 65, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i183)
  %tobool.not.i184 = icmp eq i32 %call1.i183, 0
  br i1 %tobool.not.i184, label %pac207_write_reg.exit189thread-pre-split, label %do.end.i188

do.end.i188:                                      ; preds = %if.end.i185
  call void @__sanitizer_cov_trace_pc() #7
  %conv3.i186 = zext i8 %mode.1 to i32
  %call4.i187 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 65, i32 noundef %conv3.i186, i32 noundef %call1.i183) #8
  %105 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %call1.i183, ptr %usb_err.i, align 8
  br label %pac207_write_reg.exit189

pac207_write_reg.exit189thread-pre-split:         ; preds = %if.end.i185
  call void @__sanitizer_cov_trace_pc() #7
  %106 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %.pr232 = load i32, ptr %usb_err.i, align 8
  br label %pac207_write_reg.exit189

pac207_write_reg.exit189:                         ; preds = %pac207_write_reg.exit189thread-pre-split, %do.end.i188
  %107 = phi i32 [ %.pr232, %pac207_write_reg.exit189thread-pre-split ], [ %call1.i183, %do.end.i188 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp.i191 = icmp slt i32 %107, 0
  br i1 %cmp.i191, label %pac207_write_reg.exit189.pac207_write_reg.exit200thread-pre-split_crit_edge, label %if.end.i197

pac207_write_reg.exit189.pac207_write_reg.exit200thread-pre-split_crit_edge: ; preds = %pac207_write_reg.exit189
  call void @__sanitizer_cov_trace_pc() #7
  br label %pac207_write_reg.exit200thread-pre-split

if.end.i197:                                      ; preds = %pac207_write_reg.exit189
  %108 = ptrtoint ptr %dev.i180 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev.i180, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %109, align 8
  %shl.i.i193 = shl i32 %111, 8
  %or.i194 = or i32 %shl.i.i193, -2147483648
  %call1.i195 = tail call i32 @usb_control_msg(ptr noundef %109, i32 noundef %or.i194, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext 19, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i195)
  %tobool.not.i196 = icmp eq i32 %call1.i195, 0
  br i1 %tobool.not.i196, label %if.end.i197.pac207_write_reg.exit200thread-pre-split_crit_edge, label %do.end.i199

if.end.i197.pac207_write_reg.exit200thread-pre-split_crit_edge: ; preds = %if.end.i197
  call void @__sanitizer_cov_trace_pc() #7
  br label %pac207_write_reg.exit200thread-pre-split

do.end.i199:                                      ; preds = %if.end.i197
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i198 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 19, i32 noundef 1, i32 noundef %call1.i195) #8
  %112 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %call1.i195, ptr %usb_err.i, align 8
  br label %pac207_write_reg.exit200

pac207_write_reg.exit200thread-pre-split:         ; preds = %if.end.i197.pac207_write_reg.exit200thread-pre-split_crit_edge, %pac207_write_reg.exit189.pac207_write_reg.exit200thread-pre-split_crit_edge
  %113 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %.pr234 = load i32, ptr %usb_err.i, align 8
  br label %pac207_write_reg.exit200

pac207_write_reg.exit200:                         ; preds = %pac207_write_reg.exit200thread-pre-split, %do.end.i199
  %114 = phi i32 [ %.pr234, %pac207_write_reg.exit200thread-pre-split ], [ %call1.i195, %do.end.i199 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %cmp.i202 = icmp slt i32 %114, 0
  br i1 %cmp.i202, label %pac207_write_reg.exit200.pac207_write_reg.exit211_crit_edge, label %if.end.i208

pac207_write_reg.exit200.pac207_write_reg.exit211_crit_edge: ; preds = %pac207_write_reg.exit200
  call void @__sanitizer_cov_trace_pc() #7
  br label %pac207_write_reg.exit211

if.end.i208:                                      ; preds = %pac207_write_reg.exit200
  %115 = ptrtoint ptr %dev.i180 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev.i180, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %116, align 8
  %shl.i.i204 = shl i32 %118, 8
  %or.i205 = or i32 %shl.i.i204, -2147483648
  %call1.i206 = tail call i32 @usb_control_msg(ptr noundef %116, i32 noundef %or.i205, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext 28, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i206)
  %tobool.not.i207 = icmp eq i32 %call1.i206, 0
  br i1 %tobool.not.i207, label %if.end.i208.pac207_write_reg.exit211_crit_edge, label %do.end.i210

if.end.i208.pac207_write_reg.exit211_crit_edge:   ; preds = %if.end.i208
  call void @__sanitizer_cov_trace_pc() #7
  br label %pac207_write_reg.exit211

do.end.i210:                                      ; preds = %if.end.i208
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i209 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 28, i32 noundef 1, i32 noundef %call1.i206) #8
  %119 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %call1.i206, ptr %usb_err.i, align 8
  br label %pac207_write_reg.exit211

pac207_write_reg.exit211:                         ; preds = %do.end.i210, %if.end.i208.pac207_write_reg.exit211_crit_edge, %pac207_write_reg.exit200.pac207_write_reg.exit211_crit_edge, %if.end39.pac207_write_reg.exit211_crit_edge
  tail call void @msleep(i32 noundef 10) #5
  %120 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp.i213 = icmp slt i32 %121, 0
  br i1 %cmp.i213, label %pac207_write_reg.exit211.pac207_write_reg.exit222_crit_edge, label %if.end.i219

pac207_write_reg.exit211.pac207_write_reg.exit222_crit_edge: ; preds = %pac207_write_reg.exit211
  call void @__sanitizer_cov_trace_pc() #7
  br label %pac207_write_reg.exit222

if.end.i219:                                      ; preds = %pac207_write_reg.exit211
  %dev.i214 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %122 = ptrtoint ptr %dev.i214 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev.i214, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %123, align 8
  %shl.i.i215 = shl i32 %125, 8
  %or.i216 = or i32 %shl.i.i215, -2147483648
  %call1.i217 = tail call i32 @usb_control_msg(ptr noundef %123, i32 noundef %or.i216, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext 64, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i217)
  %tobool.not.i218 = icmp eq i32 %call1.i217, 0
  br i1 %tobool.not.i218, label %if.end.i219.pac207_write_reg.exit222_crit_edge, label %do.end.i221

if.end.i219.pac207_write_reg.exit222_crit_edge:   ; preds = %if.end.i219
  call void @__sanitizer_cov_trace_pc() #7
  br label %pac207_write_reg.exit222

do.end.i221:                                      ; preds = %if.end.i219
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i220 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 64, i32 noundef 1, i32 noundef %call1.i217) #8
  %126 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %call1.i217, ptr %usb_err.i, align 8
  br label %pac207_write_reg.exit222

pac207_write_reg.exit222:                         ; preds = %do.end.i221, %if.end.i219.pac207_write_reg.exit222_crit_edge, %pac207_write_reg.exit211.pac207_write_reg.exit222_crit_edge
  %sof_read = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %127 = ptrtoint ptr %sof_read to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 0, ptr %sof_read, align 1
  %autogain_ignore_frames = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %128 = ptrtoint ptr %autogain_ignore_frames to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 0, ptr %autogain_ignore_frames, align 1
  %avg_lum = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %avg_lum, i32 noundef 4) #5
  %129 = ptrtoint ptr %avg_lum to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile i32 -1, ptr %avg_lum, align 4
  %130 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %usb_err.i, align 8
  ret i32 %131
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_pkt_scan(ptr noundef %gspca_dev, ptr noundef %data, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sof_read = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp66.i = icmp sgt i32 %len, 0
  br i1 %cmp66.i, label %entry.for.body.i_crit_edge, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.067.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %0 = ptrtoint ptr %sof_read to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sof_read, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %for.body.i.for.inc.sink.split.i_crit_edge [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb4.i
    i8 2, label %sw.bb11.i
    i8 3, label %sw.bb15.i
    i8 4, label %sw.bb23.i
  ]

for.body.i.for.inc.sink.split.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

sw.bb.i.for.inc.sink.split.i_crit_edge:           ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.sink.split.i

sw.bb4.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %8, label %sw.default.i [
    i8 0, label %sw.bb11.i.for.inc.sink.split.i_crit_edge
    i8 -1, label %sw.bb11.i.for.inc.i_crit_edge
  ]

sw.bb11.i.for.inc.i_crit_edge:                    ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

sw.bb11.i.for.inc.sink.split.i_crit_edge:         ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.sink.split.i

sw.default.i:                                     ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.sink.split.i

sw.bb15.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %13, label %sw.default36.i [
    i8 -106, label %do.body.i
    i8 -1, label %sw.bb23.i.for.inc.sink.split.i_crit_edge
  ]

sw.bb23.i.for.inc.sink.split.i_crit_edge:         ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.sink.split.i

do.body.i:                                        ; preds = %sw.bb23.i
  %arrayidx24.i.le = getelementptr i8, ptr %data, i32 %i.067.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %15 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp27.i = icmp sgt i32 %15, 3
  br i1 %cmp27.i, label %do.end.i, label %do.body.i.pac_find_sof.exit_crit_edge

do.body.i.pac_find_sof.exit_crit_edge:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pac_find_sof.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %add.i = add nuw nsw i32 %i.067.i, 1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %name.i, i32 noundef %len, i32 noundef %add.i) #8
  br label %pac_find_sof.exit

sw.default36.i:                                   ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #7
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
  br i1 %exitcond.not.i, label %for.inc.i.if.end6_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.if.end6_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

pac_find_sof.exit:                                ; preds = %do.end.i, %do.body.i.pac_find_sof.exit_crit_edge
  %17 = ptrtoint ptr %sof_read to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %sof_read, align 1
  %add.ptr34.i = getelementptr i8, ptr %arrayidx24.i.le, i32 1
  %tobool.not = icmp eq ptr %add.ptr34.i, null
  br i1 %tobool.not, label %pac_find_sof.exit.if.end6_crit_edge, label %if.then

pac_find_sof.exit.if.end6_crit_edge:              ; preds = %pac_find_sof.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then:                                          ; preds = %pac_find_sof.exit
  call void @__sanitizer_cov_trace_pc() #7
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr34.i to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %data to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %18 = tail call i32 @llvm.usub.sat.i32(i32 %sub.ptr.sub, i32 5)
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 3, ptr noundef %data, i32 noundef %18) #5
  %header_read = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %19 = ptrtoint ptr %header_read to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %header_read, align 2
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 1, ptr noundef null, i32 noundef 0) #5
  %sub5 = sub i32 %len, %sub.ptr.sub
  br label %if.end6

if.end6:                                          ; preds = %if.then, %pac_find_sof.exit.if.end6_crit_edge, %for.inc.i.if.end6_crit_edge, %entry.if.end6_crit_edge
  %data.addr.0 = phi ptr [ %add.ptr34.i, %if.then ], [ %data, %pac_find_sof.exit.if.end6_crit_edge ], [ %data, %entry.if.end6_crit_edge ], [ %data, %for.inc.i.if.end6_crit_edge ]
  %len.addr.0 = phi i32 [ %sub5, %if.then ], [ %len, %pac_find_sof.exit.if.end6_crit_edge ], [ %len, %entry.if.end6_crit_edge ], [ %len, %for.inc.i.if.end6_crit_edge ]
  %header_read7 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %20 = ptrtoint ptr %header_read7 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %header_read7, align 2
  %conv = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %21)
  %cmp8 = icmp ult i8 %21, 11
  br i1 %cmp8, label %if.then10, label %if.end6.if.end38_crit_edge

if.end6.if.end38_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %21)
  %cmp13 = icmp ugt i8 %21, 4
  %sub18 = sub nsw i32 5, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %len.addr.0, i32 %sub18)
  %cmp19.not = icmp slt i32 %len.addr.0, %sub18
  %or.cond = select i1 %cmp13, i1 true, i1 %cmp19.not
  br i1 %or.cond, label %if.then10.if.end25_crit_edge, label %if.then21

if.then10.if.end25_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then21:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  %avg_lum = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6
  %sub22 = sub nsw i32 4, %conv
  %arrayidx = getelementptr i8, ptr %data.addr.0, i32 %sub22
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx, align 1
  %conv23 = zext i8 %23 to i32
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %avg_lum, i32 noundef 4) #5
  %24 = ptrtoint ptr %avg_lum to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 %conv23, ptr %avg_lum, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.then10.if.end25_crit_edge
  %25 = ptrtoint ptr %header_read7 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %header_read7, align 2
  %conv27 = zext i8 %26 to i32
  %sub28 = sub nsw i32 11, %conv27
  call void @__sanitizer_cov_trace_cmp4(i32 %len.addr.0, i32 %sub28)
  %cmp29.not = icmp sgt i32 %len.addr.0, %sub28
  %add.ptr = getelementptr i8, ptr %data.addr.0, i32 %sub28
  %sub36 = sub i32 %len.addr.0, %sub28
  %27 = trunc i32 %len.addr.0 to i8
  %conv34 = add i8 %26, %27
  %storemerge = select i1 %cmp29.not, i8 11, i8 %conv34
  %28 = ptrtoint ptr %header_read7 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %storemerge, ptr %header_read7, align 2
  br i1 %cmp29.not, label %if.end25.if.end38_crit_edge, label %if.end25.cleanup39_crit_edge

if.end25.cleanup39_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup39

if.end25.if.end38_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.end38:                                         ; preds = %if.end25.if.end38_crit_edge, %if.end6.if.end38_crit_edge
  %data.addr.2 = phi ptr [ %add.ptr, %if.end25.if.end38_crit_edge ], [ %data.addr.0, %if.end6.if.end38_crit_edge ]
  %len.addr.2 = phi i32 [ %sub36, %if.end25.if.end38_crit_edge ], [ %len.addr.0, %if.end6.if.end38_crit_edge ]
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 2, ptr noundef %data.addr.2, i32 noundef %len.addr.2) #5
  br label %cleanup39

cleanup39:                                        ; preds = %if.end38, %if.end25.cleanup39_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_stopN(ptr nocapture noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @led_invert, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %1 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i = icmp slt i32 %2, 0
  br i1 %cmp.i, label %entry.pac207_write_reg.exit24_crit_edge, label %if.end.i

entry.pac207_write_reg.exit24_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %pac207_write_reg.exit24

if.end.i:                                         ; preds = %entry
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %shl.i.i = shl i32 %6, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call1.i = tail call i32 @usb_control_msg(ptr noundef %4, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 64, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %pac207_write_reg.exitthread-pre-split, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 64, i32 noundef 0, i32 noundef %call1.i) #8
  %7 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call1.i, ptr %usb_err.i, align 8
  br label %pac207_write_reg.exit

pac207_write_reg.exitthread-pre-split:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %usb_err.i, align 8
  br label %pac207_write_reg.exit

pac207_write_reg.exit:                            ; preds = %pac207_write_reg.exitthread-pre-split, %do.end.i
  %9 = phi i32 [ %.pr, %pac207_write_reg.exitthread-pre-split ], [ %call1.i, %do.end.i ]
  %conv = select i1 %tobool.not, i16 0, i16 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i4 = icmp slt i32 %9, 0
  br i1 %cmp.i4, label %pac207_write_reg.exit.pac207_write_reg.exit13thread-pre-split_crit_edge, label %if.end.i10

pac207_write_reg.exit.pac207_write_reg.exit13thread-pre-split_crit_edge: ; preds = %pac207_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %pac207_write_reg.exit13thread-pre-split

if.end.i10:                                       ; preds = %pac207_write_reg.exit
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i.i6 = shl i32 %13, 8
  %or.i7 = or i32 %shl.i.i6, -2147483648
  %call1.i8 = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or.i7, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext %conv, i16 noundef zeroext 65, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i8)
  %tobool.not.i9 = icmp eq i32 %call1.i8, 0
  br i1 %tobool.not.i9, label %if.end.i10.pac207_write_reg.exit13thread-pre-split_crit_edge, label %do.end.i12

if.end.i10.pac207_write_reg.exit13thread-pre-split_crit_edge: ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #7
  br label %pac207_write_reg.exit13thread-pre-split

do.end.i12:                                       ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #7
  %conv3.i = zext i16 %conv to i32
  %call4.i11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 65, i32 noundef %conv3.i, i32 noundef %call1.i8) #8
  %14 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call1.i8, ptr %usb_err.i, align 8
  br label %pac207_write_reg.exit13

pac207_write_reg.exit13thread-pre-split:          ; preds = %if.end.i10.pac207_write_reg.exit13thread-pre-split_crit_edge, %pac207_write_reg.exit.pac207_write_reg.exit13thread-pre-split_crit_edge
  %15 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr27 = load i32, ptr %usb_err.i, align 8
  br label %pac207_write_reg.exit13

pac207_write_reg.exit13:                          ; preds = %pac207_write_reg.exit13thread-pre-split, %do.end.i12
  %16 = phi i32 [ %.pr27, %pac207_write_reg.exit13thread-pre-split ], [ %call1.i8, %do.end.i12 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i15 = icmp slt i32 %16, 0
  br i1 %cmp.i15, label %pac207_write_reg.exit13.pac207_write_reg.exit24_crit_edge, label %if.end.i21

pac207_write_reg.exit13.pac207_write_reg.exit24_crit_edge: ; preds = %pac207_write_reg.exit13
  call void @__sanitizer_cov_trace_pc() #7
  br label %pac207_write_reg.exit24

if.end.i21:                                       ; preds = %pac207_write_reg.exit13
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %shl.i.i17 = shl i32 %20, 8
  %or.i18 = or i32 %shl.i.i17, -2147483648
  %call1.i19 = tail call i32 @usb_control_msg(ptr noundef %18, i32 noundef %or.i18, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 0, i16 noundef zeroext 15, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19)
  %tobool.not.i20 = icmp eq i32 %call1.i19, 0
  br i1 %tobool.not.i20, label %if.end.i21.pac207_write_reg.exit24_crit_edge, label %do.end.i23

if.end.i21.pac207_write_reg.exit24_crit_edge:     ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #7
  br label %pac207_write_reg.exit24

do.end.i23:                                       ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 15, i32 noundef 0, i32 noundef %call1.i19) #8
  %21 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call1.i19, ptr %usb_err.i, align 8
  br label %pac207_write_reg.exit24

pac207_write_reg.exit24:                          ; preds = %do.end.i23, %if.end.i21.pac207_write_reg.exit24_crit_edge, %pac207_write_reg.exit13.pac207_write_reg.exit24_crit_edge, %entry.pac207_write_reg.exit24_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pac207_do_auto_gain(ptr noundef %gspca_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %avg_lum1 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %avg_lum1, i32 noundef 4) #5
  %0 = ptrtoint ptr %avg_lum1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %avg_lum1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %autogain_ignore_frames = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 5
  %2 = ptrtoint ptr %autogain_ignore_frames to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %autogain_ignore_frames, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp2.not = icmp eq i8 %3, 0
  br i1 %cmp2.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dec = add i8 %3, -1
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  %call6 = tail call i32 @gspca_coarse_grained_expo_autogain(ptr noundef %gspca_dev, i32 noundef %1, i32 noundef 90, i32 noundef 30) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.else.cleanup_crit_edge, label %if.else.cleanup.sink.split_crit_edge

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len)
  %cmp = icmp eq i32 %len, 2
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 90, i8 %1)
  %cmp1 = icmp eq i8 %1, 90
  br i1 %cmp1, label %land.lhs.true3, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %arrayidx4 = getelementptr i8, ptr %data, i32 1
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 90, i8 %3)
  %cmp6 = icmp eq i8 %3, 90
  br i1 %cmp6, label %if.then, label %land.lhs.true3.if.end_crit_edge

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  %input_dev = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 4
  %4 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef 212, i32 noundef 1) #5
  %6 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %7, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %8 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %9, i32 noundef 1, i32 noundef 212, i32 noundef 0) #5
  %10 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %11, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.then ], [ -22, %land.lhs.true3.if.end_crit_edge ], [ -22, %land.lhs.true.if.end_crit_edge ], [ -22, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_auto_cluster(i32 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #7
  %exposure = getelementptr i8, ptr %1, i32 188
  %9 = ptrtoint ptr %exposure to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %exposure, align 4
  %val3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %10, i32 0, i32 22
  %11 = ptrtoint ptr %val3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 5, ptr %val3, align 4
  %gain = getelementptr i8, ptr %1, i32 192
  %12 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gain, align 8
  %val4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %13, i32 0, i32 22
  %14 = ptrtoint ptr %val4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 7, ptr %val4, align 4
  %autogain_ignore_frames = getelementptr i8, ptr %1, i32 1031
  %15 = ptrtoint ptr %autogain_ignore_frames to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %autogain_ignore_frames, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true1.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %streaming = getelementptr i8, ptr %1, i32 238
  %16 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %streaming, align 2, !range !94
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool5.not = icmp eq i8 %17, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id, align 8
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %19, label %if.end7.cleanup_crit_edge [
    i32 9963776, label %if.end7.sw.epilog.sink.split_crit_edge
    i32 9963794, label %sw.bb10
  ]

if.end7.sw.epilog.sink.split_crit_edge:           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb10:                                          ; preds = %if.end7
  %exposure11 = getelementptr i8, ptr %1, i32 188
  %21 = ptrtoint ptr %exposure11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %exposure11, align 4
  %is_new12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %is_new12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load13 = load i32, ptr %is_new12, align 4
  %24 = and i32 %bf.load13, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool16.not = icmp eq i32 %24, 0
  br i1 %tobool16.not, label %lor.lhs.false, label %sw.bb10.if.then25_crit_edge

sw.bb10.if.then25_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then25

lor.lhs.false:                                    ; preds = %sw.bb10
  %is_new17 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 5
  %25 = ptrtoint ptr %is_new17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load18 = load i32, ptr %is_new17, align 4
  %26 = and i32 %bf.load18, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool21.not = icmp eq i32 %26, 0
  br i1 %tobool21.not, label %lor.lhs.false.if.end29_crit_edge, label %land.lhs.true22

lor.lhs.false.if.end29_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

land.lhs.true22:                                  ; preds = %lor.lhs.false
  %val23 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %27 = ptrtoint ptr %val23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool24.not = icmp eq i32 %28, 0
  br i1 %tobool24.not, label %land.lhs.true22.if.end29_crit_edge, label %land.lhs.true22.if.then25_crit_edge

land.lhs.true22.if.then25_crit_edge:              ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then25

land.lhs.true22.if.end29_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then25:                                        ; preds = %land.lhs.true22.if.then25_crit_edge, %sw.bb10.if.then25_crit_edge
  %val27 = getelementptr inbounds %struct.v4l2_ctrl, ptr %22, i32 0, i32 22
  %29 = ptrtoint ptr %val27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val27, align 4
  %conv28 = trunc i32 %30 to i16
  tail call fastcc void @setcontrol(ptr noundef %add.ptr, i16 noundef zeroext 2, i16 noundef zeroext %conv28)
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %land.lhs.true22.if.end29_crit_edge, %lor.lhs.false.if.end29_crit_edge
  %gain30 = getelementptr i8, ptr %1, i32 192
  %31 = ptrtoint ptr %gain30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %gain30, align 8
  %is_new31 = getelementptr inbounds %struct.v4l2_ctrl, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %is_new31 to i32
  call void @__asan_load4_noabort(i32 %33)
  %bf.load32 = load i32, ptr %is_new31, align 4
  %34 = and i32 %bf.load32, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool35.not = icmp eq i32 %34, 0
  br i1 %tobool35.not, label %lor.lhs.false36, label %if.end29.sw.epilog.sink.split_crit_edge

if.end29.sw.epilog.sink.split_crit_edge:          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

lor.lhs.false36:                                  ; preds = %if.end29
  %is_new37 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 5
  %35 = ptrtoint ptr %is_new37 to i32
  call void @__asan_load4_noabort(i32 %35)
  %bf.load38 = load i32, ptr %is_new37, align 4
  %36 = and i32 %bf.load38, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool41.not = icmp eq i32 %36, 0
  br i1 %tobool41.not, label %lor.lhs.false36.sw.epilog_crit_edge, label %land.lhs.true42

lor.lhs.false36.sw.epilog_crit_edge:              ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

land.lhs.true42:                                  ; preds = %lor.lhs.false36
  %val43 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %37 = ptrtoint ptr %val43 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool44.not = icmp eq i32 %38, 0
  br i1 %tobool44.not, label %land.lhs.true42.sw.epilog_crit_edge, label %land.lhs.true42.sw.epilog.sink.split_crit_edge

land.lhs.true42.sw.epilog.sink.split_crit_edge:   ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

land.lhs.true42.sw.epilog_crit_edge:              ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %land.lhs.true42.sw.epilog.sink.split_crit_edge, %if.end29.sw.epilog.sink.split_crit_edge, %if.end7.sw.epilog.sink.split_crit_edge
  %.sink74 = phi ptr [ %ctrl, %if.end7.sw.epilog.sink.split_crit_edge ], [ %32, %land.lhs.true42.sw.epilog.sink.split_crit_edge ], [ %32, %if.end29.sw.epilog.sink.split_crit_edge ]
  %.sink = phi i16 [ 8, %if.end7.sw.epilog.sink.split_crit_edge ], [ 14, %land.lhs.true42.sw.epilog.sink.split_crit_edge ], [ 14, %if.end29.sw.epilog.sink.split_crit_edge ]
  %val47 = getelementptr inbounds %struct.v4l2_ctrl, ptr %.sink74, i32 0, i32 22
  %39 = ptrtoint ptr %val47 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val47, align 4
  %conv48 = trunc i32 %40 to i16
  tail call fastcc void @setcontrol(ptr noundef %add.ptr, i16 noundef zeroext %.sink, i16 noundef zeroext %conv48)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %land.lhs.true42.sw.epilog_crit_edge, %lor.lhs.false36.sw.epilog_crit_edge
  %41 = ptrtoint ptr %usb_err to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %usb_err, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %42, %sw.epilog ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setcontrol(ptr nocapture noundef %gspca_dev, i16 noundef zeroext %reg, i16 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_err.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 26
  %0 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_err.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp slt i32 %1, 0
  br i1 %cmp.i, label %entry.pac207_write_reg.exit24_crit_edge, label %if.end.i

entry.pac207_write_reg.exit24_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %pac207_write_reg.exit24

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
  %call1.i = tail call i32 @usb_control_msg(ptr noundef %3, i32 noundef %or.i, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext %val, i16 noundef zeroext %reg, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %pac207_write_reg.exitthread-pre-split, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i = zext i16 %reg to i32
  %conv3.i = zext i16 %val to i32
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %conv.i, i32 noundef %conv3.i, i32 noundef %call1.i) #8
  %6 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call1.i, ptr %usb_err.i, align 8
  br label %pac207_write_reg.exit

pac207_write_reg.exitthread-pre-split:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load i32, ptr %usb_err.i, align 8
  br label %pac207_write_reg.exit

pac207_write_reg.exit:                            ; preds = %pac207_write_reg.exitthread-pre-split, %do.end.i
  %8 = phi i32 [ %.pr, %pac207_write_reg.exitthread-pre-split ], [ %call1.i, %do.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i4 = icmp slt i32 %8, 0
  br i1 %cmp.i4, label %pac207_write_reg.exit.pac207_write_reg.exit13thread-pre-split_crit_edge, label %if.end.i10

pac207_write_reg.exit.pac207_write_reg.exit13thread-pre-split_crit_edge: ; preds = %pac207_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %pac207_write_reg.exit13thread-pre-split

if.end.i10:                                       ; preds = %pac207_write_reg.exit
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  %shl.i.i6 = shl i32 %12, 8
  %or.i7 = or i32 %shl.i.i6, -2147483648
  %call1.i8 = tail call i32 @usb_control_msg(ptr noundef %10, i32 noundef %or.i7, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext 19, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i8)
  %tobool.not.i9 = icmp eq i32 %call1.i8, 0
  br i1 %tobool.not.i9, label %if.end.i10.pac207_write_reg.exit13thread-pre-split_crit_edge, label %do.end.i12

if.end.i10.pac207_write_reg.exit13thread-pre-split_crit_edge: ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #7
  br label %pac207_write_reg.exit13thread-pre-split

do.end.i12:                                       ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 19, i32 noundef 1, i32 noundef %call1.i8) #8
  %13 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call1.i8, ptr %usb_err.i, align 8
  br label %pac207_write_reg.exit13

pac207_write_reg.exit13thread-pre-split:          ; preds = %if.end.i10.pac207_write_reg.exit13thread-pre-split_crit_edge, %pac207_write_reg.exit.pac207_write_reg.exit13thread-pre-split_crit_edge
  %14 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr26 = load i32, ptr %usb_err.i, align 8
  br label %pac207_write_reg.exit13

pac207_write_reg.exit13:                          ; preds = %pac207_write_reg.exit13thread-pre-split, %do.end.i12
  %15 = phi i32 [ %.pr26, %pac207_write_reg.exit13thread-pre-split ], [ %call1.i8, %do.end.i12 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i15 = icmp slt i32 %15, 0
  br i1 %cmp.i15, label %pac207_write_reg.exit13.pac207_write_reg.exit24_crit_edge, label %if.end.i21

pac207_write_reg.exit13.pac207_write_reg.exit24_crit_edge: ; preds = %pac207_write_reg.exit13
  call void @__sanitizer_cov_trace_pc() #7
  br label %pac207_write_reg.exit24

if.end.i21:                                       ; preds = %pac207_write_reg.exit13
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %shl.i.i17 = shl i32 %19, 8
  %or.i18 = or i32 %shl.i.i17, -2147483648
  %call1.i19 = tail call i32 @usb_control_msg(ptr noundef %17, i32 noundef %or.i18, i8 noundef zeroext 0, i8 noundef zeroext 65, i16 noundef zeroext 1, i16 noundef zeroext 28, ptr noundef null, i16 noundef zeroext 0, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19)
  %tobool.not.i20 = icmp eq i32 %call1.i19, 0
  br i1 %tobool.not.i20, label %if.end.i21.pac207_write_reg.exit24_crit_edge, label %do.end.i23

if.end.i21.pac207_write_reg.exit24_crit_edge:     ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #7
  br label %pac207_write_reg.exit24

do.end.i23:                                       ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #7
  %call4.i22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef 28, i32 noundef 1, i32 noundef %call1.i19) #8
  %20 = ptrtoint ptr %usb_err.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call1.i19, ptr %usb_err.i, align 8
  br label %pac207_write_reg.exit24

pac207_write_reg.exit24:                          ; preds = %do.end.i23, %if.end.i21.pac207_write_reg.exit24_crit_edge, %pac207_write_reg.exit13.pac207_write_reg.exit24_crit_edge, %entry.pac207_write_reg.exit24_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_g_ctrl(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !18, !19, !21, !23, !25, !27, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !48, !49, !50, !51, !53, !54, !56, !57, !58, !59, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !75, !77, !79, !80, !81, !82, !83}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @__UNIQUE_ID_author303, !1, !"__UNIQUE_ID_author303", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/pac207.c", i32 21, i32 1}
!2 = !{ptr @__UNIQUE_ID_description304, !3, !"__UNIQUE_ID_description304", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/pac207.c", i32 22, i32 1}
!4 = !{ptr @__UNIQUE_ID_file305, !5, !"__UNIQUE_ID_file305", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/pac207.c", i32 23, i32 1}
!6 = !{ptr @__UNIQUE_ID_license306, !5, !"__UNIQUE_ID_license306", i1 false, i1 false}
!7 = !{ptr @__param_led_invert, !8, !"__param_led_invert", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/gspca/pac207.c", i32 46, i32 1}
!9 = !{ptr @__UNIQUE_ID_led_inverttype307, !8, !"__UNIQUE_ID_led_inverttype307", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_led_invert308, !11, !"__UNIQUE_ID_led_invert308", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/gspca/pac207.c", i32 47, i32 1}
!12 = !{ptr @__initcall__kmod_gspca_pac207__309_475_sd_driver_init6, !13, !"__initcall__kmod_gspca_pac207__309_475_sd_driver_init6", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/gspca/pac207.c", i32 475, i32 1}
!14 = !{ptr @__exitcall_sd_driver_exit, !13, !"__exitcall_sd_driver_exit", i1 false, i1 false}
!15 = !{ptr @led_invert, !16, !"led_invert", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/gspca/pac207.c", i32 45, i32 12}
!17 = !{ptr @__param_str_led_invert, !8, !"__param_str_led_invert", i1 false, i1 false}
!18 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/gspca/pac207.c", i32 464, i32 10}
!21 = !{ptr @sd_driver, !22, !"sd_driver", i1 false, i1 false}
!22 = !{!"../drivers/media/usb/gspca/pac207.c", i32 463, i32 26}
!23 = !{ptr @sd_desc, !24, !"sd_desc", i1 false, i1 false}
!24 = !{!"../drivers/media/usb/gspca/pac207.c", i32 422, i32 29}
!25 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/gspca/pac207.c", i32 159, i32 2}
!27 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @sd_config._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @sd_config._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/gspca/pac207.c", i32 163, i32 3}
!33 = !{ptr @sd_config._entry.5, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @sd_config._entry_ptr.7, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/gspca/pac207.c", i32 167, i32 2}
!37 = !{ptr @sd_config._entry.8, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @sd_config._entry_ptr.10, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/gspca/pac207.c", i32 139, i32 3}
!41 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @pac207_read_reg._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @pac207_read_reg._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @sif_mode, !45, !"sif_mode", i1 false, i1 false}
!45 = !{!"../drivers/media/usb/gspca/pac207.c", i32 63, i32 37}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/gspca/pac207.c", i32 120, i32 3}
!48 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @pac207_write_reg._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @pac207_write_reg._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @sd_init_controls._key, !52, !"_key", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/gspca/pac207.c", i32 251, i32 2}
!53 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/gspca/pac207.c", i32 268, i32 3}
!56 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @sd_init_controls._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @sd_init_controls._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @sd_ctrl_ops, !60, !"sd_ctrl_ops", i1 false, i1 false}
!60 = !{!"../drivers/media/usb/gspca/pac207.c", i32 240, i32 35}
!61 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/gspca/pac207.c", i32 308, i32 3}
!63 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @sd_start._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @sd_start._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.21, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/gspca/pac207.c", i32 310, i32 3}
!68 = !{ptr @sd_start._entry.20, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @sd_start._entry_ptr.22, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.23, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/usb/gspca/pac207.c", i32 102, i32 3}
!72 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @pac207_write_regs._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @pac207_write_regs._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = distinct !{null, !76, !"pac207_sensor_init", i1 false, i1 false}
!76 = !{!"../drivers/media/usb/gspca/pac207.c", i32 79, i32 19}
!77 = !{ptr @.str.25, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/gspca/pac_common.h", i32 100, i32 5}
!79 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @pac_find_sof._entry, !78, !"_entry", i1 false, i1 false}
!82 = !{ptr @pac_find_sof._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @device_table, !84, !"device_table", i1 false, i1 false}
!84 = !{!"../drivers/media/usb/gspca/pac207.c", i32 437, i32 35}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{i8 0, i8 2}
