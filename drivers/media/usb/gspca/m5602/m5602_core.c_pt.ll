; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/m5602/m5602_core.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/m5602/m5602_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.sd_desc = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.m5602_sensor = type { [32 x i8], i8, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gspca_dev = type { %struct.video_device, ptr, %struct.v4l2_device, ptr, ptr, [64 x i8], %struct.cam, ptr, %struct.v4l2_ctrl_handler, %struct.anon.100, ptr, [4 x ptr], ptr, ptr, i32, i8, i8, i8, i8, %struct.v4l2_pix_format, i32, %struct.vb2_queue, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, %struct.mutex, i32, i16, i8, i8, i8, i8, i8, i32, i8 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.anon.100 = type { ptr, ptr, ptr, i32, i32 }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.95, i32, i32 }
%union.anon.95 = type { i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.sd = type { %struct.gspca_dev, ptr, i8, i32, ptr, %struct.anon.101, %struct.anon.102, %struct.anon.103, %struct.anon.104 }
%struct.anon.101 = type { ptr, ptr, ptr, ptr }
%struct.anon.102 = type { ptr, ptr }
%struct.anon.103 = type { ptr, ptr }
%struct.anon.104 = type { ptr, ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }

@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@m5602_read_bridge._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017%s: Reading bridge register 0x%x containing 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"m5602_read_bridge\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/media/usb/gspca/m5602/m5602_core.c\00", [53 x i8] zeroinitializer }, align 32
@m5602_read_bridge._entry_ptr = internal global ptr @m5602_read_bridge._entry, section ".printk_index", align 4
@m5602_write_bridge._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017%s: Writing bridge register 0x%x with 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"m5602_write_bridge\00", [45 x i8] zeroinitializer }, align 32
@m5602_write_bridge._entry_ptr = internal global ptr @m5602_write_bridge._entry, section ".printk_index", align 4
@m5602_read_sensor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017%s: Reading sensor register 0x%x containing 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"m5602_read_sensor\00", [46 x i8] zeroinitializer }, align 32
@m5602_read_sensor._entry_ptr = internal global ptr @m5602_read_sensor._entry, section ".printk_index", align 4
@sensor_urb_skeleton = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"#t\81\06#b\81\80\13j\81\00\13k\81\00\13l\81\00\13h\81\11", [40 x i8] zeroinitializer }, align 32
@m5602_write_sensor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017%s: Writing sensor register 0x%x with 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"m5602_write_sensor\00", [45 x i8] zeroinitializer }, align 32
@m5602_write_sensor._entry_ptr = internal global ptr @m5602_write_sensor._entry, section ".printk_index", align 4
@__initcall__kmod_gspca_m5602__303_433_sd_driver_init6 = internal global ptr @sd_driver_init, section ".initcall6.init", align 4
@sd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.10, ptr @m5602_probe, ptr @m5602_disconnect, ptr null, ptr @gspca_suspend, ptr @gspca_resume, ptr @gspca_resume, ptr null, ptr null, ptr @m5602_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sd_driver_exit = internal global ptr @sd_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author304 = internal constant [50 x i8] c"gspca_m5602.author=ALi m5602 Linux Driver Project\00", section ".modinfo", align 1
@__UNIQUE_ID_description305 = internal constant [48 x i8] c"gspca_m5602.description=ALi m5602 webcam driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [59 x i8] c"gspca_m5602.file=drivers/media/usb/gspca/m5602/gspca_m5602\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [24 x i8] c"gspca_m5602.license=GPL\00", section ".modinfo", align 1
@__param_str_force_sensor = internal constant [25 x i8] c"gspca_m5602.force_sensor\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@force_sensor = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_force_sensor = internal constant %struct.kernel_param { ptr @__param_str_force_sensor, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @force_sensor } }, section "__param", align 4
@__UNIQUE_ID_force_sensortype308 = internal constant [38 x i8] c"gspca_m5602.parmtype=force_sensor:int\00", section ".modinfo", align 1
@__UNIQUE_ID_force_sensor309 = internal constant [132 x i8] c"gspca_m5602.parm=force_sensor:forces detection of a sensor, 1 = OV9650, 2 = S5K83A, 3 = S5K4AA, 4 = MT9M111, 5 = PO1030, 6 = OV7660\00", section ".modinfo", align 1
@__param_str_dump_bridge = internal constant [24 x i8] c"gspca_m5602.dump_bridge\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@dump_bridge = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_dump_bridge = internal constant %struct.kernel_param { ptr @__param_str_dump_bridge, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @dump_bridge } }, section "__param", align 4
@__UNIQUE_ID_dump_bridgetype310 = internal constant [38 x i8] c"gspca_m5602.parmtype=dump_bridge:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_dump_bridge311 = internal constant [71 x i8] c"gspca_m5602.parm=dump_bridge:Dumps all usb bridge registers at startup\00", section ".modinfo", align 1
@__param_str_dump_sensor = internal constant [24 x i8] c"gspca_m5602.dump_sensor\00", align 1
@dump_sensor = dso_local global { i8, [31 x i8] } zeroinitializer, align 32
@__param_dump_sensor = internal constant %struct.kernel_param { ptr @__param_str_dump_sensor, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @dump_sensor } }, section "__param", align 4
@__UNIQUE_ID_dump_sensortype312 = internal constant [38 x i8] c"gspca_m5602.parmtype=dump_sensor:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_dump_sensor313 = internal constant [99 x i8] c"gspca_m5602.parm=dump_sensor:Dumps all usb sensor registers at startup providing a sensor is found\00", section ".modinfo", align 1
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gspca_m5602\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ALi m5602\00", [22 x i8] zeroinitializer }, align 32
@m5602_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1026, i16 22018, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sd_desc = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str.10, ptr @m5602_configure, ptr @m5602_init, ptr @m5602_init_controls, ptr null, ptr @m5602_start_transfer, ptr @m5602_urb_complete, ptr null, ptr null, ptr @m5602_stop_transfer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, [36 x i8] zeroinitializer }, align 32
@m5602_configure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: ALi m5602 webcam failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"m5602_configure\00", [16 x i8] zeroinitializer }, align 32
@m5602_configure._entry_ptr = internal global ptr @m5602_configure._entry, section ".printk_index", align 4
@m5602_dump_bridge._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016gspca_m5602: ALi m5602 address 0x%x contains 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"m5602_dump_bridge\00", [46 x i8] zeroinitializer }, align 32
@m5602_dump_bridge._entry_ptr = internal global ptr @m5602_dump_bridge._entry, section ".printk_index", align 4
@m5602_dump_bridge._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"\016gspca_m5602: Warning: The ALi m5602 webcam probably won't work until it's power cycled\0A\00", [38 x i8] zeroinitializer }, align 32
@m5602_dump_bridge._entry_ptr.17 = internal global ptr @m5602_dump_bridge._entry.15, section ".printk_index", align 4
@po1030 = internal constant { %struct.m5602_sensor, [36 x i8] } { %struct.m5602_sensor { [32 x i8] c"PO1030\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 -36, i8 1, ptr @po1030_probe, ptr @po1030_init, ptr @po1030_init_controls, ptr @po1030_start, ptr null, ptr @po1030_disconnect }, [36 x i8] zeroinitializer }, align 32
@mt9m111 = internal constant { %struct.m5602_sensor, [36 x i8] } { %struct.m5602_sensor { [32 x i8] c"MT9M111\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 -70, i8 2, ptr @mt9m111_probe, ptr @mt9m111_init, ptr @mt9m111_init_controls, ptr @mt9m111_start, ptr null, ptr @mt9m111_disconnect }, [36 x i8] zeroinitializer }, align 32
@s5k4aa = internal constant { %struct.m5602_sensor, [36 x i8] } { %struct.m5602_sensor { [32 x i8] c"S5K4AA\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 90, i8 2, ptr @s5k4aa_probe, ptr @s5k4aa_init, ptr @s5k4aa_init_controls, ptr @s5k4aa_start, ptr null, ptr @s5k4aa_disconnect }, [36 x i8] zeroinitializer }, align 32
@ov9650 = internal constant { %struct.m5602_sensor, [36 x i8] } { %struct.m5602_sensor { [32 x i8] c"OV9650\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 96, i8 1, ptr @ov9650_probe, ptr @ov9650_init, ptr @ov9650_init_controls, ptr @ov9650_start, ptr @ov9650_stop, ptr @ov9650_disconnect }, [36 x i8] zeroinitializer }, align 32
@ov7660 = internal constant { %struct.m5602_sensor, [36 x i8] } { %struct.m5602_sensor { [32 x i8] c"ov7660\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 66, i8 1, ptr @ov7660_probe, ptr @ov7660_init, ptr @ov7660_init_controls, ptr @ov7660_start, ptr @ov7660_stop, ptr @ov7660_disconnect }, [36 x i8] zeroinitializer }, align 32
@s5k83a = internal constant { %struct.m5602_sensor, [36 x i8] } { %struct.m5602_sensor { [32 x i8] c"S5K83A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 90, i8 2, ptr @s5k83a_probe, ptr @s5k83a_init, ptr @s5k83a_init_controls, ptr @s5k83a_start, ptr @s5k83a_stop, ptr @s5k83a_disconnect }, [36 x i8] zeroinitializer }, align 32
@m5602_probe_sensor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016gspca_m5602: Failed to find a sensor\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"m5602_probe_sensor\00", [45 x i8] zeroinitializer }, align 32
@m5602_probe_sensor._entry_ptr = internal global ptr @m5602_probe_sensor._entry, section ".printk_index", align 4
@m5602_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: Initializing ALi m5602 webcam\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"m5602_init\00", [21 x i8] zeroinitializer }, align 32
@m5602_init._entry_ptr = internal global ptr @m5602_init._entry, section ".printk_index", align 4
@m5602_start_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: Transfer started\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"m5602_start_transfer\00", [43 x i8] zeroinitializer }, align 32
@m5602_start_transfer._entry_ptr = internal global ptr @m5602_start_transfer._entry, section ".printk_index", align 4
@m5602_urb_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: Packet is less than 6 bytes\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"m5602_urb_complete\00", [45 x i8] zeroinitializer }, align 32
@m5602_urb_complete._entry_ptr = internal global ptr @m5602_urb_complete._entry, section ".printk_index", align 4
@m5602_urb_complete._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: Frame delimiter detected\0A\00", [32 x i8] zeroinitializer }, align 32
@m5602_urb_complete._entry_ptr.28 = internal global ptr @m5602_urb_complete._entry.26, section ".printk_index", align 4
@m5602_urb_complete._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.2, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: Starting new frame %d\0A\00", [35 x i8] zeroinitializer }, align 32
@m5602_urb_complete._entry_ptr.31 = internal global ptr @m5602_urb_complete._entry.29, section ".printk_index", align 4
@m5602_urb_complete._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.25, ptr @.str.2, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s: Continuing frame %d copying %d bytes\0A\00", [52 x i8] zeroinitializer }, align 32
@m5602_urb_complete._entry_ptr.34 = internal global ptr @m5602_urb_complete._entry.32, section ".printk_index", align 4
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 65, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 81, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 153, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [20 x i8] c"sensor_urb_skeleton\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 37, i32 28 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 186, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [10 x i8] c"sd_driver\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 421, i32 26 }
@___asan_gen_.80 = private unnamed_addr constant [13 x i8] c"force_sensor\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 25, i32 5 }
@___asan_gen_.83 = private unnamed_addr constant [12 x i8] c"dump_bridge\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 26, i32 13 }
@___asan_gen_.86 = private unnamed_addr constant [12 x i8] c"dump_sensor\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 27, i32 6 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 433, i32 1 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 422, i32 10 }
@___asan_gen_.95 = private unnamed_addr constant [12 x i8] c"m5602_table\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 29, i32 35 }
@___asan_gen_.98 = private unnamed_addr constant [8 x i8] c"sd_desc\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 365, i32 29 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 396, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 212, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 214, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [7 x i8] c"po1030\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [48 x i8] c"../drivers/media/usb/gspca/m5602/m5602_po1030.h\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 154, i32 34 }
@___asan_gen_.128 = private unnamed_addr constant [8 x i8] c"mt9m111\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [49 x i8] c"../drivers/media/usb/gspca/m5602/m5602_mt9m111.h\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 113, i32 34 }
@___asan_gen_.131 = private unnamed_addr constant [7 x i8] c"s5k4aa\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [48 x i8] c"../drivers/media/usb/gspca/m5602/m5602_s5k4aa.h\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 72, i32 34 }
@___asan_gen_.134 = private unnamed_addr constant [7 x i8] c"ov9650\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [48 x i8] c"../drivers/media/usb/gspca/m5602/m5602_ov9650.h\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 143, i32 34 }
@___asan_gen_.137 = private unnamed_addr constant [7 x i8] c"ov7660\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [48 x i8] c"../drivers/media/usb/gspca/m5602/m5602_ov7660.h\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 94, i32 34 }
@___asan_gen_.140 = private unnamed_addr constant [7 x i8] c"s5k83a\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [48 x i8] c"../drivers/media/usb/gspca/m5602/m5602_s5k83a.h\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 49, i32 34 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 250, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 263, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 298, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 308, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 315, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 330, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.195 = private constant [46 x i8] c"../drivers/media/usb/gspca/m5602/m5602_core.c\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 342, i32 4 }
@llvm.compiler.used = appending global [84 x ptr] [ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_description305, ptr @__UNIQUE_ID_dump_bridge311, ptr @__UNIQUE_ID_dump_bridgetype310, ptr @__UNIQUE_ID_dump_sensor313, ptr @__UNIQUE_ID_dump_sensortype312, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_force_sensor309, ptr @__UNIQUE_ID_force_sensortype308, ptr @__UNIQUE_ID_license307, ptr @__exitcall_sd_driver_exit, ptr @__initcall__kmod_gspca_m5602__303_433_sd_driver_init6, ptr @__param_dump_bridge, ptr @__param_dump_sensor, ptr @__param_force_sensor, ptr @m5602_configure._entry, ptr @m5602_configure._entry_ptr, ptr @m5602_dump_bridge._entry, ptr @m5602_dump_bridge._entry.15, ptr @m5602_dump_bridge._entry_ptr, ptr @m5602_dump_bridge._entry_ptr.17, ptr @m5602_init._entry, ptr @m5602_init._entry_ptr, ptr @m5602_probe_sensor._entry, ptr @m5602_probe_sensor._entry_ptr, ptr @m5602_read_bridge._entry, ptr @m5602_read_bridge._entry_ptr, ptr @m5602_read_sensor._entry, ptr @m5602_read_sensor._entry_ptr, ptr @m5602_start_transfer._entry, ptr @m5602_start_transfer._entry_ptr, ptr @m5602_urb_complete._entry, ptr @m5602_urb_complete._entry.26, ptr @m5602_urb_complete._entry.29, ptr @m5602_urb_complete._entry.32, ptr @m5602_urb_complete._entry_ptr, ptr @m5602_urb_complete._entry_ptr.28, ptr @m5602_urb_complete._entry_ptr.31, ptr @m5602_urb_complete._entry_ptr.34, ptr @m5602_write_bridge._entry, ptr @m5602_write_bridge._entry_ptr, ptr @m5602_write_sensor._entry, ptr @m5602_write_sensor._entry_ptr, ptr @sd_driver_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @sensor_urb_skeleton, ptr @.str.7, ptr @.str.8, ptr @sd_driver, ptr @force_sensor, ptr @dump_bridge, ptr @dump_sensor, ptr @.str.9, ptr @.str.10, ptr @m5602_table, ptr @sd_desc, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @po1030, ptr @mt9m111, ptr @s5k4aa, ptr @ov9650, ptr @ov7660, ptr @s5k83a, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.33], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5602_read_bridge._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5602_write_bridge._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5602_read_sensor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_urb_skeleton to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5602_write_sensor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_sensor to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_bridge to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_sensor to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5602_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5602_configure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5602_dump_bridge._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5602_dump_bridge._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @po1030 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt9m111 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k4aa to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov9650 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ov7660 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5k83a to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5602_probe_sensor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5602_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5602_start_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5602_urb_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5602_urb_complete._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5602_urb_complete._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m5602_urb_complete._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @m5602_read_bridge(ptr noundef %sd, i8 noundef zeroext %address, ptr nocapture noundef writeonly %i2c_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 10
  %2 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_buf, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 8
  %shl.i = shl i32 %5, 8
  %or3 = or i32 %shl.i, -2147483520
  %6 = zext i8 %address to i16
  %conv4 = or i16 %6, -32512
  %call5 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or3, i8 noundef zeroext 4, i8 noundef zeroext -64, i16 noundef zeroext 20, i16 noundef zeroext %conv4, ptr noundef %3, i16 noundef zeroext 1, i32 noundef 5000) #5
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %3, align 1
  %9 = ptrtoint ptr %i2c_data to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %i2c_data, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %10 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp = icmp sgt i32 %10, 1
  br i1 %cmp, label %do.end, label %entry.do.end12_crit_edge

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end12

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i8 %address to i32
  %name = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %conv9 = zext i8 %8 to i32
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %conv, i32 noundef %conv9) #8
  br label %do.end12

do.end12:                                         ; preds = %do.end, %entry.do.end12_crit_edge
  %11 = tail call i32 @llvm.smin.i32(i32 %call5, i32 0)
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @m5602_write_bridge(ptr noundef %sd, i8 noundef zeroext %address, i8 noundef zeroext %i2c_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 10
  %2 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_buf, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %4 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp sgt i32 %4, 1
  br i1 %cmp, label %do.end, label %entry.do.end6_crit_edge

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %conv = zext i8 %address to i32
  %conv4 = zext i8 %i2c_data to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name, i32 noundef %conv, i32 noundef %conv4) #8
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 318800128, ptr %3, align 1
  %arrayidx = getelementptr i8, ptr %3, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %address, ptr %arrayidx, align 1
  %arrayidx7 = getelementptr i8, ptr %3, i32 3
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %i2c_data, ptr %arrayidx7, align 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 8
  %shl.i = shl i32 %9, 8
  %or = or i32 %shl.i, -2147483648
  %call9 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or, i8 noundef zeroext 4, i8 noundef zeroext 64, i16 noundef zeroext 25, i16 noundef zeroext 0, ptr noundef %3, i16 noundef zeroext 4, i32 noundef 5000) #5
  %10 = tail call i32 @llvm.smin.i32(i32 %call9, i32 0)
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @m5602_read_sensor(ptr noundef %sd, i8 noundef zeroext %address, ptr nocapture noundef %i2c_data, i8 noundef zeroext %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %len)
  %tobool.not = icmp eq i8 %len, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %conv = zext i8 %len to i32
  %sensor = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 1
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor, align 8
  %i2c_regW = getelementptr inbounds %struct.m5602_sensor, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %i2c_regW to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %i2c_regW, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %len)
  %cmp = icmp ult i8 %3, %len
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %dev.i.i = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 3
  %usb_buf.i.i = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 10
  %name.i.i = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  br label %do.body.i

do.body.i:                                        ; preds = %m5602_read_bridge.exit.i.do.body.i_crit_edge, %if.end
  %4 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i.i, align 4
  %6 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usb_buf.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 8
  %shl.i.i.i = shl i32 %9, 8
  %or3.i.i = or i32 %shl.i.i.i, -2147483520
  %call5.i.i = tail call i32 @usb_control_msg(ptr noundef %5, i32 noundef %or3.i.i, i8 noundef zeroext 4, i8 noundef zeroext -64, i16 noundef zeroext 20, i16 noundef zeroext -32403, ptr noundef %7, i16 noundef zeroext 1, i32 noundef 5000) #5
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %7, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %12 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i.i = icmp sgt i32 %12, 1
  br i1 %cmp.i.i, label %do.end.i.i, label %do.body.i.m5602_read_bridge.exit.i_crit_edge

do.body.i.m5602_read_bridge.exit.i_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %m5602_read_bridge.exit.i

do.end.i.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv9.i.i = zext i8 %11 to i32
  %call10.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i.i, i32 noundef 109, i32 noundef %conv9.i.i) #8
  br label %m5602_read_bridge.exit.i

m5602_read_bridge.exit.i:                         ; preds = %do.end.i.i, %do.body.i.m5602_read_bridge.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp slt i8 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5.i.i)
  %tobool1.not.i = icmp sgt i32 %call5.i.i, -1
  %or.cond.i = select i1 %tobool.not.i, i1 %tobool1.not.i, i1 false
  br i1 %or.cond.i, label %m5602_read_bridge.exit.i.do.body.i_crit_edge, label %m5602_wait_for_i2c.exit

m5602_read_bridge.exit.i.do.body.i_crit_edge:     ; preds = %m5602_read_bridge.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

m5602_wait_for_i2c.exit:                          ; preds = %m5602_read_bridge.exit.i
  %13 = tail call i32 @llvm.smin.i32(i32 %call5.i.i, i32 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp3 = icmp slt i32 %call5.i.i, 0
  br i1 %cmp3, label %m5602_wait_for_i2c.exit.cleanup_crit_edge, label %if.end6

m5602_wait_for_i2c.exit.cleanup_crit_edge:        ; preds = %m5602_wait_for_i2c.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %m5602_wait_for_i2c.exit
  %14 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sensor, align 8
  %i2c_slave_id = getelementptr inbounds %struct.m5602_sensor, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %i2c_slave_id to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %i2c_slave_id, align 4
  %18 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i.i, align 4
  %20 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %usb_buf.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %22 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp.i = icmp sgt i32 %22, 1
  br i1 %cmp.i, label %do.end.i, label %if.end6.m5602_write_bridge.exit_crit_edge

if.end6.m5602_write_bridge.exit_crit_edge:        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %m5602_write_bridge.exit

do.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %conv4.i = zext i8 %17 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name.i.i, i32 noundef 106, i32 noundef %conv4.i) #8
  br label %m5602_write_bridge.exit

m5602_write_bridge.exit:                          ; preds = %do.end.i, %if.end6.m5602_write_bridge.exit_crit_edge
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 325746944, ptr %21, align 1
  %arrayidx7.i = getelementptr i8, ptr %21, i32 3
  %24 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %17, ptr %arrayidx7.i, align 1
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %19, align 8
  %shl.i.i = shl i32 %26, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call9.i = tail call i32 @usb_control_msg(ptr noundef %19, i32 noundef %or.i, i8 noundef zeroext 4, i8 noundef zeroext 64, i16 noundef zeroext 25, i16 noundef zeroext 0, ptr noundef %21, i16 noundef zeroext 4, i32 noundef 5000) #5
  %27 = tail call i32 @llvm.smin.i32(i32 %call9.i, i32 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp9 = icmp slt i32 %call9.i, 0
  br i1 %cmp9, label %m5602_write_bridge.exit.cleanup_crit_edge, label %if.end12

m5602_write_bridge.exit.cleanup_crit_edge:        ; preds = %m5602_write_bridge.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %m5602_write_bridge.exit
  %28 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i.i, align 4
  %30 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %usb_buf.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %32 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp.i87 = icmp sgt i32 %32, 1
  br i1 %cmp.i87, label %do.end.i91, label %if.end12.m5602_write_bridge.exit97_crit_edge

if.end12.m5602_write_bridge.exit97_crit_edge:     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %m5602_write_bridge.exit97

do.end.i91:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %conv4.i89 = zext i8 %address to i32
  %call.i90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name.i.i, i32 noundef 107, i32 noundef %conv4.i89) #8
  br label %m5602_write_bridge.exit97

m5602_write_bridge.exit97:                        ; preds = %do.end.i91, %if.end12.m5602_write_bridge.exit97_crit_edge
  %33 = ptrtoint ptr %31 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 325812480, ptr %31, align 1
  %arrayidx7.i93 = getelementptr i8, ptr %31, i32 3
  %34 = ptrtoint ptr %arrayidx7.i93 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %address, ptr %arrayidx7.i93, align 1
  %35 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %29, align 8
  %shl.i.i94 = shl i32 %36, 8
  %or.i95 = or i32 %shl.i.i94, -2147483648
  %call9.i96 = tail call i32 @usb_control_msg(ptr noundef %29, i32 noundef %or.i95, i8 noundef zeroext 4, i8 noundef zeroext 64, i16 noundef zeroext 25, i16 noundef zeroext 0, ptr noundef %31, i16 noundef zeroext 4, i32 noundef 5000) #5
  %37 = tail call i32 @llvm.smin.i32(i32 %call9.i96, i32 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i96)
  %cmp14 = icmp slt i32 %call9.i96, 0
  br i1 %cmp14, label %m5602_write_bridge.exit97.cleanup_crit_edge, label %if.end17

m5602_write_bridge.exit97.cleanup_crit_edge:      ; preds = %m5602_write_bridge.exit97
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17:                                         ; preds = %m5602_write_bridge.exit97
  %38 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sensor, align 8
  %i2c_regW19 = getelementptr inbounds %struct.m5602_sensor, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %i2c_regW19 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %i2c_regW19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %41)
  %cmp21 = icmp eq i8 %41, 1
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end17
  %42 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i.i, align 4
  %44 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %usb_buf.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %46 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp.i100 = icmp sgt i32 %46, 1
  br i1 %cmp.i100, label %do.end.i103, label %if.then23.m5602_write_bridge.exit109_crit_edge

if.then23.m5602_write_bridge.exit109_crit_edge:   ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  br label %m5602_write_bridge.exit109

do.end.i103:                                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  %call.i102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name.i.i, i32 noundef 104, i32 noundef 1) #8
  br label %m5602_write_bridge.exit109

m5602_write_bridge.exit109:                       ; preds = %do.end.i103, %if.then23.m5602_write_bridge.exit109_crit_edge
  %47 = ptrtoint ptr %45 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 325615873, ptr %45, align 1
  %48 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %43, align 8
  %shl.i.i106 = shl i32 %49, 8
  %or.i107 = or i32 %shl.i.i106, -2147483648
  %call9.i108 = tail call i32 @usb_control_msg(ptr noundef %43, i32 noundef %or.i107, i8 noundef zeroext 4, i8 noundef zeroext 64, i16 noundef zeroext 25, i16 noundef zeroext 0, ptr noundef %45, i16 noundef zeroext 4, i32 noundef 5000) #5
  %50 = tail call i32 @llvm.smin.i32(i32 %call9.i108, i32 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i108)
  %cmp25 = icmp slt i32 %call9.i108, 0
  br i1 %cmp25, label %m5602_write_bridge.exit109.cleanup_crit_edge, label %if.end28

m5602_write_bridge.exit109.cleanup_crit_edge:     ; preds = %m5602_write_bridge.exit109
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end28:                                         ; preds = %m5602_write_bridge.exit109
  %51 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i.i, align 4
  %53 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %usb_buf.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %55 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp.i112 = icmp sgt i32 %55, 1
  br i1 %cmp.i112, label %do.end.i115, label %if.end28.m5602_write_bridge.exit121_crit_edge

if.end28.m5602_write_bridge.exit121_crit_edge:    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %m5602_write_bridge.exit121

do.end.i115:                                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %call.i114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name.i.i, i32 noundef 104, i32 noundef 8) #8
  br label %m5602_write_bridge.exit121

m5602_write_bridge.exit121:                       ; preds = %do.end.i115, %if.end28.m5602_write_bridge.exit121_crit_edge
  %56 = ptrtoint ptr %54 to i32
  call void @__asan_storeN_noabort(i32 %56, i32 4)
  store i32 325615880, ptr %54, align 1
  %57 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %52, align 8
  %shl.i.i118 = shl i32 %58, 8
  %or.i119 = or i32 %shl.i.i118, -2147483648
  %call9.i120 = tail call i32 @usb_control_msg(ptr noundef %52, i32 noundef %or.i119, i8 noundef zeroext 4, i8 noundef zeroext 64, i16 noundef zeroext 25, i16 noundef zeroext 0, ptr noundef %54, i16 noundef zeroext 4, i32 noundef 5000) #5
  br label %if.end33

if.else:                                          ; preds = %if.end17
  %add = add i8 %len, 24
  %59 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i.i, align 4
  %61 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %usb_buf.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %63 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63)
  %cmp.i124 = icmp sgt i32 %63, 1
  br i1 %cmp.i124, label %do.end.i128, label %if.else.m5602_write_bridge.exit134_crit_edge

if.else.m5602_write_bridge.exit134_crit_edge:     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %m5602_write_bridge.exit134

do.end.i128:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %conv4.i126 = zext i8 %add to i32
  %call.i127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name.i.i, i32 noundef 104, i32 noundef %conv4.i126) #8
  br label %m5602_write_bridge.exit134

m5602_write_bridge.exit134:                       ; preds = %do.end.i128, %if.else.m5602_write_bridge.exit134_crit_edge
  %64 = ptrtoint ptr %62 to i32
  call void @__asan_storeN_noabort(i32 %64, i32 4)
  store i32 325615872, ptr %62, align 1
  %arrayidx7.i130 = getelementptr i8, ptr %62, i32 3
  %65 = ptrtoint ptr %arrayidx7.i130 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %add, ptr %arrayidx7.i130, align 1
  %66 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %60, align 8
  %shl.i.i131 = shl i32 %67, 8
  %or.i132 = or i32 %shl.i.i131, -2147483648
  %call9.i133 = tail call i32 @usb_control_msg(ptr noundef %60, i32 noundef %or.i132, i8 noundef zeroext 4, i8 noundef zeroext 64, i16 noundef zeroext 25, i16 noundef zeroext 0, ptr noundef %62, i16 noundef zeroext 4, i32 noundef 5000) #5
  br label %if.end33

if.end33:                                         ; preds = %m5602_write_bridge.exit134, %m5602_write_bridge.exit121
  %call9.i133.sink = phi i32 [ %call9.i133, %m5602_write_bridge.exit134 ], [ %call9.i120, %m5602_write_bridge.exit121 ]
  %68 = tail call i32 @llvm.smin.i32(i32 %call9.i133.sink, i32 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i133.sink)
  %tobool37.not161 = icmp sgt i32 %call9.i133.sink, -1
  br i1 %tobool37.not161, label %do.body.i142.preheader.lr.ph, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body.i142.preheader.lr.ph:                     ; preds = %if.end33
  %conv48 = zext i8 %address to i32
  br label %do.body.i142.preheader

do.body.i142.preheader:                           ; preds = %for.inc.do.body.i142.preheader_crit_edge, %do.body.i142.preheader.lr.ph
  %i.0162 = phi i32 [ 0, %do.body.i142.preheader.lr.ph ], [ %inc, %for.inc.do.body.i142.preheader_crit_edge ]
  br label %do.body.i142

do.body.i142:                                     ; preds = %m5602_read_bridge.exit.i149.do.body.i142_crit_edge, %do.body.i142.preheader
  %69 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev.i.i, align 4
  %71 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %usb_buf.i.i, align 4
  %73 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %70, align 8
  %shl.i.i.i138 = shl i32 %74, 8
  %or3.i.i139 = or i32 %shl.i.i.i138, -2147483520
  %call5.i.i140 = tail call i32 @usb_control_msg(ptr noundef %70, i32 noundef %or3.i.i139, i8 noundef zeroext 4, i8 noundef zeroext -64, i16 noundef zeroext 20, i16 noundef zeroext -32403, ptr noundef %72, i16 noundef zeroext 1, i32 noundef 5000) #5
  %75 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %72, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %77 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %77)
  %cmp.i.i141 = icmp sgt i32 %77, 1
  br i1 %cmp.i.i141, label %do.end.i.i145, label %do.body.i142.m5602_read_bridge.exit.i149_crit_edge

do.body.i142.m5602_read_bridge.exit.i149_crit_edge: ; preds = %do.body.i142
  call void @__sanitizer_cov_trace_pc() #7
  br label %m5602_read_bridge.exit.i149

do.end.i.i145:                                    ; preds = %do.body.i142
  call void @__sanitizer_cov_trace_pc() #7
  %conv9.i.i143 = zext i8 %76 to i32
  %call10.i.i144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i.i, i32 noundef 109, i32 noundef %conv9.i.i143) #8
  br label %m5602_read_bridge.exit.i149

m5602_read_bridge.exit.i149:                      ; preds = %do.end.i.i145, %do.body.i142.m5602_read_bridge.exit.i149_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool.not.i146 = icmp slt i8 %76, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5.i.i140)
  %tobool1.not.i147 = icmp sgt i32 %call5.i.i140, -1
  %or.cond.i148 = select i1 %tobool.not.i146, i1 %tobool1.not.i147, i1 false
  br i1 %or.cond.i148, label %m5602_read_bridge.exit.i149.do.body.i142_crit_edge, label %m5602_wait_for_i2c.exit151

m5602_read_bridge.exit.i149.do.body.i142_crit_edge: ; preds = %m5602_read_bridge.exit.i149
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i142

m5602_wait_for_i2c.exit151:                       ; preds = %m5602_read_bridge.exit.i149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i140)
  %cmp39 = icmp slt i32 %call5.i.i140, 0
  br i1 %cmp39, label %m5602_wait_for_i2c.exit151.cleanup_crit_edge, label %if.end42

m5602_wait_for_i2c.exit151.cleanup_crit_edge:     ; preds = %m5602_wait_for_i2c.exit151
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end42:                                         ; preds = %m5602_wait_for_i2c.exit151
  %arrayidx = getelementptr i8, ptr %i2c_data, i32 %i.0162
  %78 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev.i.i, align 4
  %80 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %usb_buf.i.i, align 4
  %82 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %79, align 8
  %shl.i.i154 = shl i32 %83, 8
  %or3.i = or i32 %shl.i.i154, -2147483520
  %call5.i = tail call i32 @usb_control_msg(ptr noundef %79, i32 noundef %or3.i, i8 noundef zeroext 4, i8 noundef zeroext -64, i16 noundef zeroext 20, i16 noundef zeroext -32404, ptr noundef %81, i16 noundef zeroext 1, i32 noundef 5000) #5
  %84 = ptrtoint ptr %81 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %81, align 1
  %86 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %arrayidx, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %87 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %87)
  %cmp.i155 = icmp sgt i32 %87, 1
  br i1 %cmp.i155, label %m5602_read_bridge.exit, label %m5602_read_bridge.exit.thread

m5602_read_bridge.exit.thread:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  %88 = tail call i32 @llvm.smin.i32(i32 %call5.i, i32 0) #5
  br label %for.inc

m5602_read_bridge.exit:                           ; preds = %if.end42
  %conv9.i = zext i8 %85 to i32
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i.i, i32 noundef 108, i32 noundef %conv9.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %.pr = load i32, ptr @gspca_debug, align 4
  %89 = tail call i32 @llvm.smin.i32(i32 %call5.i, i32 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp44 = icmp sgt i32 %.pr, 1
  br i1 %cmp44, label %do.end, label %m5602_read_bridge.exit.for.inc_crit_edge

m5602_read_bridge.exit.for.inc_crit_edge:         ; preds = %m5602_read_bridge.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.end:                                           ; preds = %m5602_read_bridge.exit
  call void @__sanitizer_cov_trace_pc() #7
  %90 = ptrtoint ptr %i2c_data to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %i2c_data, align 1
  %conv49 = zext i8 %91 to i32
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name.i.i, i32 noundef %conv48, i32 noundef %conv49) #8
  br label %for.inc

for.inc:                                          ; preds = %do.end, %m5602_read_bridge.exit.for.inc_crit_edge, %m5602_read_bridge.exit.thread
  %92 = phi i32 [ %88, %m5602_read_bridge.exit.thread ], [ %89, %m5602_read_bridge.exit.for.inc_crit_edge ], [ %89, %do.end ]
  %inc = add nuw nsw i32 %i.0162, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv)
  %cmp35 = icmp ult i32 %inc, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool37.not = icmp eq i32 %92, 0
  %or.cond = select i1 %cmp35, i1 %tobool37.not, i1 false
  br i1 %or.cond, label %for.inc.do.body.i142.preheader_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.do.body.i142.preheader_crit_edge:         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i142.preheader

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %m5602_wait_for_i2c.exit151.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %m5602_write_bridge.exit109.cleanup_crit_edge, %m5602_write_bridge.exit97.cleanup_crit_edge, %m5602_write_bridge.exit.cleanup_crit_edge, %m5602_wait_for_i2c.exit.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %13, %m5602_wait_for_i2c.exit.cleanup_crit_edge ], [ %27, %m5602_write_bridge.exit.cleanup_crit_edge ], [ %37, %m5602_write_bridge.exit97.cleanup_crit_edge ], [ %50, %m5602_write_bridge.exit109.cleanup_crit_edge ], [ %68, %if.end33.cleanup_crit_edge ], [ %92, %for.inc.cleanup_crit_edge ], [ %call5.i.i140, %m5602_wait_for_i2c.exit151.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @m5602_write_sensor(ptr noundef %sd, i8 noundef zeroext %address, ptr nocapture noundef readonly %i2c_data, i8 noundef zeroext %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 10
  %2 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_buf, align 4
  %conv = zext i8 %len to i32
  %sensor = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 1
  %4 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sensor, align 8
  %i2c_regW = getelementptr inbounds %struct.m5602_sensor, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %i2c_regW to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %i2c_regW, align 1
  %8 = add i8 %len, -1
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %7)
  %.not = icmp ult i8 %8, %7
  br i1 %.not, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %9 = call ptr @memcpy(ptr %3, ptr @sensor_urb_skeleton, i32 24)
  %10 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sensor, align 8
  %i2c_slave_id = getelementptr inbounds %struct.m5602_sensor, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %i2c_slave_id to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %i2c_slave_id, align 4
  %arrayidx = getelementptr i8, ptr %3, i32 11
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx, align 1
  %arrayidx6 = getelementptr i8, ptr %3, i32 15
  %15 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %address, ptr %arrayidx6, align 1
  %add.ptr = getelementptr i8, ptr %3, i32 16
  %name = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %conv17 = zext i8 %address to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %p.063 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr12, %for.inc.for.body_crit_edge ]
  %i.062 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %16 = ptrtoint ptr %p.063 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 325878016, ptr %p.063, align 1
  %arrayidx10 = getelementptr i8, ptr %i2c_data, i32 %i.062
  %17 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx10, align 1
  %arrayidx11 = getelementptr i8, ptr %p.063, i32 3
  %19 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %arrayidx11, align 1
  %add.ptr12 = getelementptr i8, ptr %p.063, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %20 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp13 = icmp sgt i32 %20, 1
  br i1 %cmp13, label %do.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx10, align 1
  %conv19 = zext i8 %22 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name, i32 noundef %conv17, i32 noundef %conv19) #8
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.062, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %add.ptr12 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 325615889, ptr %add.ptr12, align 1
  %add = add i8 %len, 16
  %arrayidx25 = getelementptr i8, ptr %p.063, i32 7
  %24 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %add, ptr %arrayidx25, align 1
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %1, align 8
  %shl.i = shl i32 %26, 8
  %or = or i32 %shl.i, -2147483648
  %conv.tr = zext i8 %len to i16
  %27 = shl nuw nsw i16 %conv.tr, 2
  %conv29 = add nuw nsw i16 %27, 20
  %call30 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or, i8 noundef zeroext 4, i8 noundef zeroext 64, i16 noundef zeroext 25, i16 noundef zeroext 0, ptr noundef %3, i16 noundef zeroext %conv29, i32 noundef 5000) #5
  %28 = tail call i32 @llvm.smin.i32(i32 %call30, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %28, %for.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @sd_driver, ptr noundef null, ptr noundef nonnull @.str.9) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sd_driver_exit() #3 section ".exit.text" align 64 {
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
define internal i32 @m5602_probe(ptr noundef %intf, ptr noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gspca_dev_probe(ptr noundef %intf, ptr noundef %id, ptr noundef nonnull @sd_desc, i32 noundef 2664, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @m5602_disconnect(ptr noundef %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %sensor = getelementptr inbounds %struct.sd, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sensor, align 8
  %disconnect = getelementptr inbounds %struct.m5602_sensor, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %disconnect to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disconnect, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %5(ptr noundef %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @gspca_disconnect(ptr noundef %intf) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gspca_suspend(ptr noundef, [1 x i32]) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gspca_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gspca_dev_probe(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m5602_configure(ptr noundef %gspca_dev, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cam1 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6
  %0 = load i8, ptr @dump_bridge, align 1, !range !135
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %dev.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %usb_buf.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %name.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %m5602_read_bridge.exit.i.for.body.i_crit_edge, %if.then
  %i.011.i = phi i32 [ 0, %if.then ], [ %inc.i, %m5602_read_bridge.exit.i.for.body.i_crit_edge ]
  %1 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i.i, align 4
  %3 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %usb_buf.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %2, align 8
  %shl.i.i.i = shl i32 %6, 8
  %or3.i.i = or i32 %shl.i.i.i, -2147483520
  %7 = trunc i32 %i.011.i to i16
  %8 = and i16 %7, 255
  %conv4.i.i = or i16 %8, -32512
  %call5.i.i = tail call i32 @usb_control_msg(ptr noundef %2, i32 noundef %or3.i.i, i8 noundef zeroext 4, i8 noundef zeroext -64, i16 noundef zeroext 20, i16 noundef zeroext %conv4.i.i, ptr noundef %4, i16 noundef zeroext 1, i32 noundef 5000) #5
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %4, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %11 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i.i = icmp sgt i32 %11, 1
  %conv9.i.i = zext i8 %10 to i32
  br i1 %cmp.i.i, label %do.end.i.i, label %for.body.i.m5602_read_bridge.exit.i_crit_edge

for.body.i.m5602_read_bridge.exit.i_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %m5602_read_bridge.exit.i

do.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %call10.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i.i, i32 noundef %i.011.i, i32 noundef %conv9.i.i) #8
  br label %m5602_read_bridge.exit.i

m5602_read_bridge.exit.i:                         ; preds = %do.end.i.i, %for.body.i.m5602_read_bridge.exit.i_crit_edge
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %i.011.i, i32 noundef %conv9.i.i) #8
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 128
  br i1 %exitcond.not.i, label %m5602_dump_bridge.exit, label %m5602_read_bridge.exit.i.for.body.i_crit_edge

m5602_read_bridge.exit.i.for.body.i_crit_edge:    ; preds = %m5602_read_bridge.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

m5602_dump_bridge.exit:                           ; preds = %m5602_read_bridge.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #8
  br label %if.end

if.end:                                           ; preds = %m5602_dump_bridge.exit, %entry.if.end_crit_edge
  %sensor.i = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %12 = ptrtoint ptr %sensor.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @po1030, ptr %sensor.i, align 8
  %call.i = tail call i32 @po1030_probe(ptr noundef %gspca_dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %13 = ptrtoint ptr %sensor.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @mt9m111, ptr %sensor.i, align 8
  %call5.i = tail call i32 @mt9m111_probe(ptr noundef %gspca_dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end.i.cleanup_crit_edge, label %if.end8.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8.i:                                        ; preds = %if.end.i
  %14 = ptrtoint ptr %sensor.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @s5k4aa, ptr %sensor.i, align 8
  %call12.i = tail call i32 @s5k4aa_probe(ptr noundef %gspca_dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end8.i.cleanup_crit_edge, label %if.end15.i

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15.i:                                       ; preds = %if.end8.i
  %15 = ptrtoint ptr %sensor.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @ov9650, ptr %sensor.i, align 8
  %call19.i = tail call i32 @ov9650_probe(ptr noundef %gspca_dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end15.i.cleanup_crit_edge, label %if.end22.i

if.end15.i.cleanup_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end22.i:                                       ; preds = %if.end15.i
  %16 = ptrtoint ptr %sensor.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ov7660, ptr %sensor.i, align 8
  %call26.i = tail call i32 @ov7660_probe(ptr noundef %gspca_dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end22.i.cleanup_crit_edge, label %if.end29.i

if.end22.i.cleanup_crit_edge:                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end29.i:                                       ; preds = %if.end22.i
  %17 = ptrtoint ptr %sensor.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @s5k83a, ptr %sensor.i, align 8
  %call33.i = tail call i32 @s5k83a_probe(ptr noundef %gspca_dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.end29.i.cleanup_crit_edge, label %do.end

if.end29.i.cleanup_crit_edge:                     ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  %call37.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #8
  %18 = ptrtoint ptr %sensor.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %sensor.i, align 8
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %name) #8
  %19 = ptrtoint ptr %cam1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %cam1, align 4
  %nmodes = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 6, i32 4
  %20 = ptrtoint ptr %nmodes to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %nmodes, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end29.i.cleanup_crit_edge, %if.end22.i.cleanup_crit_edge, %if.end15.i.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.end8.i.cleanup_crit_edge ], [ 0, %if.end15.i.cleanup_crit_edge ], [ 0, %if.end22.i.cleanup_crit_edge ], [ 0, %if.end29.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m5602_init(ptr noundef %gspca_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %0 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %name) #8
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %1 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sensor, align 8
  %init = getelementptr inbounds %struct.m5602_sensor, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init, align 4
  %call4 = tail call i32 %4(ptr noundef %gspca_dev) #5
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m5602_init_controls(ptr noundef %gspca_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor, align 8
  %init_controls = getelementptr inbounds %struct.m5602_sensor, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %init_controls to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_controls, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %3(ptr noundef %gspca_dev) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m5602_start_transfer(ptr noundef %gspca_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %0 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usb_buf, align 4
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %2 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sensor, align 8
  %start = getelementptr inbounds %struct.m5602_sensor, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %start, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %5(ptr noundef %gspca_dev) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 335089409, ptr %1, align 1
  %dev = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i = shl i32 %10, 8
  %or = or i32 %shl.i, -2147483648
  %call6 = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %or, i8 noundef zeroext 4, i8 noundef zeroext 64, i16 noundef zeroext 25, i16 noundef zeroext 0, ptr noundef %1, i16 noundef zeroext 4, i32 noundef 5000) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %11 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp = icmp sgt i32 %11, 2
  br i1 %cmp, label %do.end, label %if.end.do.end13_crit_edge

if.end.do.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end13

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %name) #8
  br label %do.end13

do.end13:                                         ; preds = %do.end, %if.end.do.end13_crit_edge
  %12 = tail call i32 @llvm.smin.i32(i32 %call6, i32 0)
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @m5602_urb_complete(ptr noundef %gspca_dev, ptr noundef %data, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %len)
  %cmp = icmp slt i32 %len, 6
  br i1 %cmp, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %0 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %0)
  %cmp1 = icmp sgt i32 %0, 4
  br i1 %cmp1, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name) #8
  br label %cleanup

if.end6:                                          ; preds = %entry
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %2)
  %cmp7 = icmp eq i8 %2, -1
  br i1 %cmp7, label %land.lhs.true, label %if.end6.if.else_crit_edge

if.end6.if.else_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %if.end6
  %arrayidx9 = getelementptr i8, ptr %data, i32 4
  %3 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %4)
  %cmp11 = icmp eq i8 %4, -1
  br i1 %cmp11, label %land.lhs.true13, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true13:                                  ; preds = %land.lhs.true
  %arrayidx14 = getelementptr i8, ptr %data, i32 5
  %5 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp16 = icmp eq i8 %6, -1
  br i1 %cmp16, label %land.lhs.true18, label %land.lhs.true13.if.else_crit_edge

land.lhs.true13.if.else_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true18:                                  ; preds = %land.lhs.true13
  %arrayidx19 = getelementptr i8, ptr %data, i32 2
  %7 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx19, align 1
  %frame_id = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %9 = ptrtoint ptr %frame_id to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %frame_id, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %10)
  %cmp22.not = icmp eq i8 %8, %10
  br i1 %cmp22.not, label %land.lhs.true18.if.else_crit_edge, label %do.body25

land.lhs.true18.if.else_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

do.body25:                                        ; preds = %land.lhs.true18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %11 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp26 = icmp sgt i32 %11, 3
  br i1 %cmp26, label %do.end31, label %do.body25.do.end39_crit_edge

do.body25.do.end39_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end39

do.end31:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #7
  %name34 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name34) #8
  br label %do.end39

do.end39:                                         ; preds = %do.end31, %do.body25.do.end39_crit_edge
  %12 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx19, align 1
  %14 = ptrtoint ptr %frame_id to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %frame_id, align 4
  %add.ptr = getelementptr i8, ptr %data, i32 6
  %sub = add nsw i32 %len, -6
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 3, ptr noundef null, i32 noundef 0) #5
  %frame_count = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %15 = ptrtoint ptr %frame_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %frame_count, align 8
  %inc = add i32 %16, 1
  store i32 %inc, ptr %frame_count, align 8
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 1, ptr noundef %add.ptr, i32 noundef %sub) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %17 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp43 = icmp sgt i32 %17, 3
  br i1 %cmp43, label %do.end48, label %do.end39.cleanup_crit_edge

do.end39.cleanup_crit_edge:                       ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end48:                                         ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #7
  %name51 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %18 = ptrtoint ptr %frame_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %frame_count, align 8
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name51, i32 noundef %19) #8
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true18.if.else_crit_edge, %land.lhs.true13.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.end6.if.else_crit_edge
  %image_len = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 14
  %20 = ptrtoint ptr %image_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %image_len, align 8
  %add.ptr58 = getelementptr i8, ptr %data, i32 4
  %sub59 = add nsw i32 %len, -4
  %add = add i32 %21, %sub59
  %sizeimage = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19, i32 5
  %22 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sizeimage, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %23)
  %cmp60.not = icmp ugt i32 %add, %23
  br i1 %cmp60.not, label %if.else79, label %do.body63

do.body63:                                        ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %24 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp64 = icmp sgt i32 %24, 3
  br i1 %cmp64, label %do.end69, label %do.body63.do.end78_crit_edge

do.body63.do.end78_crit_edge:                     ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end78

do.end69:                                         ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #7
  %name72 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %frame_count74 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  %25 = ptrtoint ptr %frame_count74 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %frame_count74, align 8
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %name72, i32 noundef %26, i32 noundef %sub59) #8
  br label %do.end78

do.end78:                                         ; preds = %do.end69, %do.body63.do.end78_crit_edge
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 2, ptr noundef %add.ptr58, i32 noundef %sub59) #5
  br label %cleanup

if.else79:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %sub82 = sub i32 %23, %21
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 2, ptr noundef %add.ptr58, i32 noundef %sub82) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else79, %do.end78, %do.end48, %do.end39.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @m5602_stop_transfer(ptr noundef %gspca_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor, align 8
  %stop = getelementptr inbounds %struct.m5602_sensor, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stop, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %3(ptr noundef %gspca_dev) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @po1030_probe(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @po1030_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @po1030_init_controls(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @po1030_start(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @po1030_disconnect(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt9m111_probe(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt9m111_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt9m111_init_controls(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mt9m111_start(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mt9m111_disconnect(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5k4aa_probe(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5k4aa_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5k4aa_init_controls(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5k4aa_start(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5k4aa_disconnect(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ov9650_probe(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ov9650_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ov9650_init_controls(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ov9650_start(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ov9650_stop(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ov9650_disconnect(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ov7660_probe(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ov7660_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ov7660_init_controls(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ov7660_start(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ov7660_stop(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ov7660_disconnect(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5k83a_probe(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5k83a_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5k83a_init_controls(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5k83a_start(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5k83a_stop(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5k83a_disconnect(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_frame_add(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20, !21, !23, !24, !26, !28, !30, !31, !33, !34, !36, !38, !39, !41, !43, !44, !46, !48, !50, !52, !54, !56, !57, !59, !61, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !82, !84, !86, !88, !90, !92, !94, !96, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125}
!llvm.module.flags = !{!126, !127, !128, !129, !130, !131, !132, !133}
!llvm.ident = !{!134}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/m5602/m5602_core.c", i32 65, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @m5602_read_bridge._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @m5602_read_bridge._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/usb/gspca/m5602/m5602_core.c", i32 81, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @m5602_write_bridge._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @m5602_write_bridge._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/gspca/m5602/m5602_core.c", i32 153, i32 3}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @m5602_read_sensor._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @m5602_read_sensor._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/gspca/m5602/m5602_core.c", i32 186, i32 3}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @m5602_write_sensor._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @m5602_write_sensor._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @__initcall__kmod_gspca_m5602__303_433_sd_driver_init6, !22, !"__initcall__kmod_gspca_m5602__303_433_sd_driver_init6", i1 false, i1 false}
!22 = !{!"../drivers/media/usb/gspca/m5602/m5602_core.c", i32 433, i32 1}
!23 = !{ptr @__exitcall_sd_driver_exit, !22, !"__exitcall_sd_driver_exit", i1 false, i1 false}
!24 = !{ptr @__UNIQUE_ID_author304, !25, !"__UNIQUE_ID_author304", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/gspca/m5602/m5602_core.c", i32 435, i32 1}
!26 = !{ptr @__UNIQUE_ID_description305, !27, !"__UNIQUE_ID_description305", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/gspca/m5602/m5602_core.c", i32 436, i32 1}
!28 = !{ptr @__UNIQUE_ID_file306, !29, !"__UNIQUE_ID_file306", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/gspca/m5602/m5602_core.c", i32 437, i32 1}
!30 = !{ptr @__UNIQUE_ID_license307, !29, !"__UNIQUE_ID_license307", i1 false, i1 false}
!31 = !{ptr @__param_force_sensor, !32, !"__param_force_sensor", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/gspca/m5602/m5602_core.c", i32 438, i32 1}
!33 = !{ptr @__UNIQUE_ID_force_sensortype308, !32, !"__UNIQUE_ID_force_sensortype308", i1 false, i1 false}
!34 = !{ptr @__UNIQUE_ID_force_sensor309, !35, !"__UNIQUE_ID_force_sensor309", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/gspca/m5602/m5602_core.c", i32 439, i32 1}
!36 = !{ptr @__param_dump_bridge, !37, !"__param_dump_bridge", i1 false, i1 false}
!37 = !{!"../drivers/media/usb/gspca/m5602/m5602_core.c", i32 442, i32 1}
!38 = !{ptr @__UNIQUE_ID_dump_bridgetype310, !37, !"__UNIQUE_ID_dump_bridgetype310", i1 false, i1 false}
!39 = !{ptr @__UNIQUE_ID_dump_bridge311, !40, !"__UNIQUE_ID_dump_bridge311", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/gspca/m5602/m5602_core.c", i32 443, i32 1}
!41 = !{ptr @__param_dump_sensor, !42, !"__param_dump_sensor", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/gspca/m5602/m5602_core.c", i32 445, i32 1}
!43 = !{ptr @__UNIQUE_ID_dump_sensortype312, !42, !"__UNIQUE_ID_dump_sensortype312", i1 false, i1 false}
!44 = !{ptr @__UNIQUE_ID_dump_sensor313, !45, !"__UNIQUE_ID_dump_sensor313", i1 false, i1 false}
!45 = !{!"../drivers/media/usb/gspca/m5602/m5602_core.c", i32 446, i32 1}
!46 = !{ptr @force_sensor, !47, !"force_sensor", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/gspca/m5602/m5602_core.c", i32 25, i32 5}
!48 = !{ptr @dump_bridge, !49, !"dump_bridge", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/gspca/m5602/m5602_core.c", i32 26, i32 13}
!50 = !{ptr @dump_sensor, !51, !"dump_sensor", i1 false, i1 false}
!51 = !{!"../drivers/media/usb/gspca/m5602/m5602_core.c", i32 27, i32 6}
!52 = distinct !{null, !53, !"bridge_urb_skeleton", i1 false, i1 false}
!53 = !{!"../drivers/media/usb/gspca/m5602/m5602_core.c", i32 47, i32 28}
!54 = !{ptr @sensor_urb_skeleton, !55, !"sensor_urb_skeleton", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/gspca/m5602/m5602_core.c", i32 37, i32 28}
!56 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.10, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/gspca/m5602/m5602_core.c", i32 422, i32 10}
!59 = !{ptr @sd_driver, !60, !"sd_driver", i1 false, i1 false}
!60 = !{!"../drivers/media/usb/gspca/m5602/m5602_core.c", i32 421, i32 26}
!61 = !{ptr @sd_desc, !62, !"sd_desc", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/gspca/m5602/m5602_core.c", i32 365, i32 29}
!63 = !{ptr @.str.11, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/usb/gspca/m5602/m5602_core.c", i32 396, i32 2}
!65 = !{ptr @.str.12, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @m5602_configure._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @m5602_configure._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.13, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/usb/gspca/m5602/m5602_core.c", i32 212, i32 3}
!70 = !{ptr @.str.14, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @m5602_dump_bridge._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @m5602_dump_bridge._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.16, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/gspca/m5602/m5602_core.c", i32 214, i32 2}
!75 = !{ptr @m5602_dump_bridge._entry.15, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @m5602_dump_bridge._entry_ptr.17, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.18, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/gspca/m5602/m5602_core.c", i32 250, i32 2}
!79 = !{ptr @.str.19, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @m5602_probe_sensor._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @m5602_probe_sensor._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @po1030, !83, !"po1030", i1 false, i1 false}
!83 = !{!"../drivers/media/usb/gspca/m5602/m5602_po1030.h", i32 154, i32 34}
!84 = !{ptr @mt9m111, !85, !"mt9m111", i1 false, i1 false}
!85 = !{!"../drivers/media/usb/gspca/m5602/m5602_mt9m111.h", i32 113, i32 34}
!86 = !{ptr @s5k4aa, !87, !"s5k4aa", i1 false, i1 false}
!87 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k4aa.h", i32 72, i32 34}
!88 = !{ptr @ov9650, !89, !"ov9650", i1 false, i1 false}
!89 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov9650.h", i32 143, i32 34}
!90 = !{ptr @ov7660, !91, !"ov7660", i1 false, i1 false}
!91 = !{!"../drivers/media/usb/gspca/m5602/m5602_ov7660.h", i32 94, i32 34}
!92 = !{ptr @s5k83a, !93, !"s5k83a", i1 false, i1 false}
!93 = !{!"../drivers/media/usb/gspca/m5602/m5602_s5k83a.h", i32 49, i32 34}
!94 = !{ptr @.str.20, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/usb/gspca/m5602/m5602_core.c", i32 263, i32 2}
!96 = !{ptr @.str.21, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @m5602_init._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @m5602_init._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.22, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/usb/gspca/m5602/m5602_core.c", i32 298, i32 2}
!101 = !{ptr @.str.23, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @m5602_start_transfer._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @m5602_start_transfer._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.24, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/usb/gspca/m5602/m5602_core.c", i32 308, i32 3}
!106 = !{ptr @.str.25, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @m5602_urb_complete._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @m5602_urb_complete._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.27, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/usb/gspca/m5602/m5602_core.c", i32 315, i32 3}
!111 = !{ptr @m5602_urb_complete._entry.26, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @m5602_urb_complete._entry_ptr.28, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.30, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/usb/gspca/m5602/m5602_core.c", i32 330, i32 3}
!115 = !{ptr @m5602_urb_complete._entry.29, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @m5602_urb_complete._entry_ptr.31, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.33, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/usb/gspca/m5602/m5602_core.c", i32 342, i32 4}
!119 = !{ptr @m5602_urb_complete._entry.32, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @m5602_urb_complete._entry_ptr.34, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @m5602_table, !122, !"m5602_table", i1 false, i1 false}
!122 = !{!"../drivers/media/usb/gspca/m5602/m5602_core.c", i32 29, i32 35}
!123 = !{ptr @__param_str_force_sensor, !32, !"__param_str_force_sensor", i1 false, i1 false}
!124 = !{ptr @__param_str_dump_bridge, !37, !"__param_str_dump_bridge", i1 false, i1 false}
!125 = !{ptr @__param_str_dump_sensor, !42, !"__param_str_dump_sensor", i1 false, i1 false}
!126 = !{i32 1, !"wchar_size", i32 2}
!127 = !{i32 1, !"min_enum_size", i32 4}
!128 = !{i32 8, !"branch-target-enforcement", i32 0}
!129 = !{i32 8, !"sign-return-address", i32 0}
!130 = !{i32 8, !"sign-return-address-all", i32 0}
!131 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!132 = !{i32 7, !"uwtable", i32 1}
!133 = !{i32 7, !"frame-pointer", i32 2}
!134 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!135 = !{i8 0, i8 2}
