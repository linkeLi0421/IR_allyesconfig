; ModuleID = '/llk/IR_all_yes/drivers/media/usb/gspca/stv06xx/stv06xx.c_pt.bc'
source_filename = "../drivers/media/usb/gspca/stv06xx/stv06xx.c"
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
%struct.stv06xx_sensor = type { [32 x i8], i8, i8, i8, [4 x i32], [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gspca_dev = type { %struct.video_device, ptr, %struct.v4l2_device, ptr, ptr, [64 x i8], %struct.cam, ptr, %struct.v4l2_ctrl_handler, %struct.anon.101, ptr, [4 x ptr], ptr, ptr, i32, i8, i8, i8, i8, %struct.v4l2_pix_format, i32, %struct.vb2_queue, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, %struct.mutex, i32, i16, i8, i8, i8, i8, i8, i32, i8 }
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
%struct.anon.101 = type { ptr, ptr, ptr, i32, i32 }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.96, i32, i32 }
%union.anon.96 = type { i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.sd = type { %struct.gspca_dev, ptr, ptr, i32, i8 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_host_config = type { %struct.usb_config_descriptor, ptr, [16 x ptr], [32 x ptr], [32 x ptr], ptr, i32 }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_interface_cache = type { i32, %struct.kref, [0 x %struct.usb_host_interface] }

@__UNIQUE_ID_author303 = internal constant [34 x i8] c"gspca_stv06xx.author=Erik Andr\C3\A9n\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [52 x i8] c"gspca_stv06xx.description=STV06XX USB Camera Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [65 x i8] c"gspca_stv06xx.file=drivers/media/usb/gspca/stv06xx/gspca_stv06xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [26 x i8] c"gspca_stv06xx.license=GPL\00", section ".modinfo", align 1
@gspca_debug = external dso_local local_unnamed_addr global i32, align 4
@stv06xx_write_bridge._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 46, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017%s: Written 0x%x to address 0x%x, status: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stv06xx_write_bridge\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/usb/gspca/stv06xx/stv06xx.c\00", [54 x i8] zeroinitializer }, align 32
@stv06xx_write_bridge._entry_ptr = internal global ptr @stv06xx_write_bridge._entry, section ".printk_index", align 4
@stv06xx_read_bridge._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017%s: Reading 0x%x from address 0x%x, status %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stv06xx_read_bridge\00", [44 x i8] zeroinitializer }, align 32
@stv06xx_read_bridge._entry_ptr = internal global ptr @stv06xx_read_bridge._entry, section ".printk_index", align 4
@stv06xx_write_sensor_bytes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017%s: I2C: Command buffer contains %d entries\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"stv06xx_write_sensor_bytes\00", [37 x i8] zeroinitializer }, align 32
@stv06xx_write_sensor_bytes._entry_ptr = internal global ptr @stv06xx_write_sensor_bytes._entry, section ".printk_index", align 4
@stv06xx_write_sensor_bytes._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: I2C: Writing 0x%02x to reg 0x%02x\0A\00", [55 x i8] zeroinitializer }, align 32
@stv06xx_write_sensor_bytes._entry_ptr.9 = internal global ptr @stv06xx_write_sensor_bytes._entry.7, section ".printk_index", align 4
@stv06xx_write_sensor_words._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.10, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"stv06xx_write_sensor_words\00", [37 x i8] zeroinitializer }, align 32
@stv06xx_write_sensor_words._entry_ptr = internal global ptr @stv06xx_write_sensor_words._entry, section ".printk_index", align 4
@stv06xx_write_sensor_words._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: I2C: Writing 0x%04x to reg 0x%02x\0A\00", [55 x i8] zeroinitializer }, align 32
@stv06xx_write_sensor_words._entry_ptr.13 = internal global ptr @stv06xx_write_sensor_words._entry.11, section ".printk_index", align 4
@stv06xx_read_sensor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013gspca_stv06xx: I2C: Read error writing address: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stv06xx_read_sensor\00", [44 x i8] zeroinitializer }, align 32
@stv06xx_read_sensor._entry_ptr = internal global ptr @stv06xx_read_sensor._entry, section ".printk_index", align 4
@stv06xx_read_sensor._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017%s: I2C: Read 0x%x from address 0x%x, status: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@stv06xx_read_sensor._entry_ptr.18 = internal global ptr @stv06xx_read_sensor._entry.16, section ".printk_index", align 4
@__initcall__kmod_gspca_stv06xx__307_641_sd_driver_init6 = internal global ptr @sd_driver_init, section ".initcall6.init", align 4
@sd_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.20, ptr @sd_probe, ptr @sd_disconnect, ptr null, ptr @gspca_suspend, ptr @gspca_resume, ptr @gspca_resume, ptr null, ptr null, ptr @device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_sd_driver_exit = internal global ptr @sd_driver_exit, section ".exitcall.exit", align 4
@__param_str_dump_bridge = internal constant [26 x i8] c"gspca_stv06xx.dump_bridge\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@dump_bridge = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_dump_bridge = internal constant %struct.kernel_param { ptr @__param_str_dump_bridge, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @dump_bridge } }, section "__param", align 4
@__UNIQUE_ID_dump_bridgetype308 = internal constant [40 x i8] c"gspca_stv06xx.parmtype=dump_bridge:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_dump_bridge309 = internal constant [73 x i8] c"gspca_stv06xx.parm=dump_bridge:Dumps all usb bridge registers at startup\00", section ".modinfo", align 1
@__param_str_dump_sensor = internal constant [26 x i8] c"gspca_stv06xx.dump_sensor\00", align 1
@dump_sensor = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_dump_sensor = internal constant %struct.kernel_param { ptr @__param_str_dump_sensor, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @dump_sensor } }, section "__param", align 4
@__UNIQUE_ID_dump_sensortype310 = internal constant [40 x i8] c"gspca_stv06xx.parmtype=dump_sensor:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_dump_sensor311 = internal constant [69 x i8] c"gspca_stv06xx.parm=dump_sensor:Dumps all sensor registers at startup\00", section ".modinfo", align 1
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gspca_stv06xx\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"STV06xx\00", [24 x i8] zeroinitializer }, align 32
@device_table = internal constant { [7 x %struct.usb_device_id], [56 x i8] } { [7 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1133, i16 2112, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1133, i16 2128, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1133, i16 2160, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1133, i16 2288, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 1133, i16 2293, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 1133, i16 2294, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@sd_desc = internal constant { %struct.sd_desc, [36 x i8] } { %struct.sd_desc { ptr @.str.20, ptr @stv06xx_config, ptr @stv06xx_init, ptr @stv06xx_init_controls, ptr @stv06xx_probe_error, ptr @stv06xx_start, ptr @stv06xx_pkt_scan, ptr @stv06xx_isoc_init, ptr @stv06xx_isoc_nego, ptr @stv06xx_stopN, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sd_int_pkt_scan, i8 0 }, [36 x i8] zeroinitializer }, align 32
@stv06xx_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: Configuring camera\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stv06xx_config\00", [17 x i8] zeroinitializer }, align 32
@stv06xx_config._entry_ptr = internal global ptr @stv06xx_config._entry, section ".printk_index", align 4
@stv06xx_sensor_st6422 = external dso_local constant %struct.stv06xx_sensor, align 4
@stv06xx_sensor_vv6410 = external dso_local constant %struct.stv06xx_sensor, align 4
@stv06xx_sensor_hdcs1x00 = external dso_local constant %struct.stv06xx_sensor, align 4
@stv06xx_sensor_hdcs1020 = external dso_local constant %struct.stv06xx_sensor, align 4
@stv06xx_sensor_pb0100 = external dso_local constant %struct.stv06xx_sensor, align 4
@stv06xx_dump_bridge._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016gspca_stv06xx: Dumping all stv06xx bridge registers\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stv06xx_dump_bridge\00", [44 x i8] zeroinitializer }, align 32
@stv06xx_dump_bridge._entry_ptr = internal global ptr @stv06xx_dump_bridge._entry, section ".printk_index", align 4
@stv06xx_dump_bridge._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016gspca_stv06xx: Read 0x%x from address 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@stv06xx_dump_bridge._entry_ptr.27 = internal global ptr @stv06xx_dump_bridge._entry.25, section ".printk_index", align 4
@stv06xx_dump_bridge._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.2, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016gspca_stv06xx: Testing stv06xx bridge registers for writability\0A\00", [61 x i8] zeroinitializer }, align 32
@stv06xx_dump_bridge._entry_ptr.30 = internal global ptr @stv06xx_dump_bridge._entry.28, section ".printk_index", align 4
@stv06xx_dump_bridge._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.24, ptr @.str.2, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016gspca_stv06xx: Register 0x%x is read/write\0A\00", [50 x i8] zeroinitializer }, align 32
@stv06xx_dump_bridge._entry_ptr.33 = internal global ptr @stv06xx_dump_bridge._entry.31, section ".printk_index", align 4
@stv06xx_dump_bridge._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.24, ptr @.str.2, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016gspca_stv06xx: Register 0x%x is read/write, but only partially\0A\00", [62 x i8] zeroinitializer }, align 32
@stv06xx_dump_bridge._entry_ptr.36 = internal global ptr @stv06xx_dump_bridge._entry.34, section ".printk_index", align 4
@stv06xx_dump_bridge._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.24, ptr @.str.2, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016gspca_stv06xx: Register 0x%x is read-only\0A\00", [51 x i8] zeroinitializer }, align 32
@stv06xx_dump_bridge._entry_ptr.39 = internal global ptr @stv06xx_dump_bridge._entry.37, section ".printk_index", align 4
@stv06xx_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: Initializing camera\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"stv06xx_init\00", [19 x i8] zeroinitializer }, align 32
@stv06xx_init._entry_ptr = internal global ptr @stv06xx_init._entry, section ".printk_index", align 4
@stv06xx_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: Initializing controls\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stv06xx_init_controls\00", [42 x i8] zeroinitializer }, align 32
@stv06xx_init_controls._entry_ptr = internal global ptr @stv06xx_init_controls._entry, section ".printk_index", align 4
@stv06xx_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: Couldn't get altsetting\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"stv06xx_start\00", [18 x i8] zeroinitializer }, align 32
@stv06xx_start._entry_ptr = internal global ptr @stv06xx_start._entry, section ".printk_index", align 4
@stv06xx_start._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.2, i32 303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: Starting stream failed\0A\00", [34 x i8] zeroinitializer }, align 32
@stv06xx_start._entry_ptr.48 = internal global ptr @stv06xx_start._entry.46, section ".printk_index", align 4
@stv06xx_start._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.45, ptr @.str.2, i32 305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: Started streaming\0A\00", [39 x i8] zeroinitializer }, align 32
@stv06xx_start._entry_ptr.51 = internal global ptr @stv06xx_start._entry.49, section ".printk_index", align 4
@stv06xx_pkt_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: Packet of length %d arrived\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stv06xx_pkt_scan\00", [47 x i8] zeroinitializer }, align 32
@stv06xx_pkt_scan._entry_ptr = internal global ptr @stv06xx_pkt_scan._entry, section ".printk_index", align 4
@stv06xx_pkt_scan._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.2, i32 406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: Packet is smaller than 4 bytes\0A\00", [58 x i8] zeroinitializer }, align 32
@stv06xx_pkt_scan._entry_ptr.56 = internal global ptr @stv06xx_pkt_scan._entry.54, section ".printk_index", align 4
@stv06xx_pkt_scan._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str.2, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: Chunk id: %x, length: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@stv06xx_pkt_scan._entry_ptr.59 = internal global ptr @stv06xx_pkt_scan._entry.57, section ".printk_index", align 4
@stv06xx_pkt_scan._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.53, ptr @.str.2, i32 422, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013%s: URB packet length is smaller than the specified chunk length\0A\00", [60 x i8] zeroinitializer }, align 32
@stv06xx_pkt_scan._entry_ptr.62 = internal global ptr @stv06xx_pkt_scan._entry.60, section ".printk_index", align 4
@stv06xx_pkt_scan._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.53, ptr @.str.2, i32 435, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: Frame data packet detected\0A\00", [62 x i8] zeroinitializer }, align 32
@stv06xx_pkt_scan._entry_ptr.65 = internal global ptr @stv06xx_pkt_scan._entry.63, section ".printk_index", align 4
@stv06xx_pkt_scan._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.53, ptr @.str.2, i32 454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: Starting new frame\0A\00", [38 x i8] zeroinitializer }, align 32
@stv06xx_pkt_scan._entry_ptr.68 = internal global ptr @stv06xx_pkt_scan._entry.66, section ".printk_index", align 4
@stv06xx_pkt_scan._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.53, ptr @.str.2, i32 464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: Chunk length is non-zero on a SOF\0A\00", [55 x i8] zeroinitializer }, align 32
@stv06xx_pkt_scan._entry_ptr.71 = internal global ptr @stv06xx_pkt_scan._entry.69, section ".printk_index", align 4
@stv06xx_pkt_scan._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.53, ptr @.str.2, i32 470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: End of frame detected\0A\00", [35 x i8] zeroinitializer }, align 32
@stv06xx_pkt_scan._entry_ptr.74 = internal global ptr @stv06xx_pkt_scan._entry.72, section ".printk_index", align 4
@stv06xx_pkt_scan._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.53, ptr @.str.2, i32 477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: Chunk length is non-zero on a EOF\0A\00", [55 x i8] zeroinitializer }, align 32
@stv06xx_pkt_scan._entry_ptr.77 = internal global ptr @stv06xx_pkt_scan._entry.75, section ".printk_index", align 4
@stv06xx_pkt_scan._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.53, ptr @.str.2, i32 481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: Chunk 0x005 detected\0A\00", [36 x i8] zeroinitializer }, align 32
@stv06xx_pkt_scan._entry_ptr.80 = internal global ptr @stv06xx_pkt_scan._entry.78, section ".printk_index", align 4
@stv06xx_pkt_scan._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.53, ptr @.str.2, i32 488, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: Chunk 0x0100 detected\0A\00", [35 x i8] zeroinitializer }, align 32
@stv06xx_pkt_scan._entry_ptr.83 = internal global ptr @stv06xx_pkt_scan._entry.81, section ".printk_index", align 4
@stv06xx_pkt_scan._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.53, ptr @.str.2, i32 493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: Chunk 0x42ff detected\0A\00", [35 x i8] zeroinitializer }, align 32
@stv06xx_pkt_scan._entry_ptr.86 = internal global ptr @stv06xx_pkt_scan._entry.84, section ".printk_index", align 4
@stv06xx_pkt_scan._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.53, ptr @.str.2, i32 498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: Unknown chunk 0x%04x detected\0A\00", [59 x i8] zeroinitializer }, align 32
@stv06xx_pkt_scan._entry_ptr.89 = internal global ptr @stv06xx_pkt_scan._entry.87, section ".printk_index", align 4
@stv06xx_isoc_nego._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.2, i32 356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: set alt 1 err %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stv06xx_isoc_nego\00", [46 x i8] zeroinitializer }, align 32
@stv06xx_isoc_nego._entry_ptr = internal global ptr @stv06xx_isoc_nego._entry, section ".printk_index", align 4
@stv06xx_stopN._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.2, i32 375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: Failed to stop stream\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"stv06xx_stopN\00", [18 x i8] zeroinitializer }, align 32
@stv06xx_stopN._entry_ptr = internal global ptr @stv06xx_stopN._entry, section ".printk_index", align 4
@stv06xx_stopN._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.93, ptr @.str.2, i32 377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: Stopped streaming\0A\00", [39 x i8] zeroinitializer }, align 32
@stv06xx_stopN._entry_ptr.96 = internal global ptr @stv06xx_stopN._entry.94, section ".printk_index", align 4
@sd_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.2, i32 622, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: Disconnecting the stv06xx device\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sd_disconnect\00", [18 x i8] zeroinitializer }, align 32
@sd_disconnect._entry_ptr = internal global ptr @sd_disconnect._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 16, i64 5, i64 256, i64 512, i64 16896, i64 17151, i64 32769, i64 32770, i64 32773, i64 32774, i64 49153, i64 49154, i64 49157]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 8, i64 16, i64 128]
@__sancov_gen_cov_switch_values.100 = internal global [4 x i64] [i64 2, i64 8, i64 17, i64 136]
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 45, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 64, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 107, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 115, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 138, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 148, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 189, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 201, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant [10 x i8] c"sd_driver\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 629, i32 26 }
@___asan_gen_.167 = private unnamed_addr constant [12 x i8] c"dump_bridge\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 26, i32 13 }
@___asan_gen_.170 = private unnamed_addr constant [12 x i8] c"dump_sensor\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 27, i32 13 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 641, i32 1 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 630, i32 10 }
@___asan_gen_.179 = private unnamed_addr constant [13 x i8] c"device_table\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 598, i32 35 }
@___asan_gen_.182 = private unnamed_addr constant [8 x i8] c"sd_desc\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 541, i32 29 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 563, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 213, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 217, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 220, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 228, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 230, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 233, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 245, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 264, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 281, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 303, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 305, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 398, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 406, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 415, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 422, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 435, i32 4 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 454, i32 4 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 464, i32 5 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 470, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 477, i32 5 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 481, i32 4 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 488, i32 4 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 493, i32 4 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 497, i32 4 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 356, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 375, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 377, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.383 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.384 = private constant [45 x i8] c"../drivers/media/usb/gspca/stv06xx/stv06xx.c\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 622, i32 2 }
@llvm.compiler.used = appending global [145 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_dump_bridge309, ptr @__UNIQUE_ID_dump_bridgetype308, ptr @__UNIQUE_ID_dump_sensor311, ptr @__UNIQUE_ID_dump_sensortype310, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_sd_driver_exit, ptr @__initcall__kmod_gspca_stv06xx__307_641_sd_driver_init6, ptr @__param_dump_bridge, ptr @__param_dump_sensor, ptr @sd_disconnect._entry, ptr @sd_disconnect._entry_ptr, ptr @sd_driver_exit, ptr @stv06xx_config._entry, ptr @stv06xx_config._entry_ptr, ptr @stv06xx_dump_bridge._entry, ptr @stv06xx_dump_bridge._entry.25, ptr @stv06xx_dump_bridge._entry.28, ptr @stv06xx_dump_bridge._entry.31, ptr @stv06xx_dump_bridge._entry.34, ptr @stv06xx_dump_bridge._entry.37, ptr @stv06xx_dump_bridge._entry_ptr, ptr @stv06xx_dump_bridge._entry_ptr.27, ptr @stv06xx_dump_bridge._entry_ptr.30, ptr @stv06xx_dump_bridge._entry_ptr.33, ptr @stv06xx_dump_bridge._entry_ptr.36, ptr @stv06xx_dump_bridge._entry_ptr.39, ptr @stv06xx_init._entry, ptr @stv06xx_init._entry_ptr, ptr @stv06xx_init_controls._entry, ptr @stv06xx_init_controls._entry_ptr, ptr @stv06xx_isoc_nego._entry, ptr @stv06xx_isoc_nego._entry_ptr, ptr @stv06xx_pkt_scan._entry, ptr @stv06xx_pkt_scan._entry.54, ptr @stv06xx_pkt_scan._entry.57, ptr @stv06xx_pkt_scan._entry.60, ptr @stv06xx_pkt_scan._entry.63, ptr @stv06xx_pkt_scan._entry.66, ptr @stv06xx_pkt_scan._entry.69, ptr @stv06xx_pkt_scan._entry.72, ptr @stv06xx_pkt_scan._entry.75, ptr @stv06xx_pkt_scan._entry.78, ptr @stv06xx_pkt_scan._entry.81, ptr @stv06xx_pkt_scan._entry.84, ptr @stv06xx_pkt_scan._entry.87, ptr @stv06xx_pkt_scan._entry_ptr, ptr @stv06xx_pkt_scan._entry_ptr.56, ptr @stv06xx_pkt_scan._entry_ptr.59, ptr @stv06xx_pkt_scan._entry_ptr.62, ptr @stv06xx_pkt_scan._entry_ptr.65, ptr @stv06xx_pkt_scan._entry_ptr.68, ptr @stv06xx_pkt_scan._entry_ptr.71, ptr @stv06xx_pkt_scan._entry_ptr.74, ptr @stv06xx_pkt_scan._entry_ptr.77, ptr @stv06xx_pkt_scan._entry_ptr.80, ptr @stv06xx_pkt_scan._entry_ptr.83, ptr @stv06xx_pkt_scan._entry_ptr.86, ptr @stv06xx_pkt_scan._entry_ptr.89, ptr @stv06xx_read_bridge._entry, ptr @stv06xx_read_bridge._entry_ptr, ptr @stv06xx_read_sensor._entry, ptr @stv06xx_read_sensor._entry.16, ptr @stv06xx_read_sensor._entry_ptr, ptr @stv06xx_read_sensor._entry_ptr.18, ptr @stv06xx_start._entry, ptr @stv06xx_start._entry.46, ptr @stv06xx_start._entry.49, ptr @stv06xx_start._entry_ptr, ptr @stv06xx_start._entry_ptr.48, ptr @stv06xx_start._entry_ptr.51, ptr @stv06xx_stopN._entry, ptr @stv06xx_stopN._entry.94, ptr @stv06xx_stopN._entry_ptr, ptr @stv06xx_stopN._entry_ptr.96, ptr @stv06xx_write_bridge._entry, ptr @stv06xx_write_bridge._entry_ptr, ptr @stv06xx_write_sensor_bytes._entry, ptr @stv06xx_write_sensor_bytes._entry.7, ptr @stv06xx_write_sensor_bytes._entry_ptr, ptr @stv06xx_write_sensor_bytes._entry_ptr.9, ptr @stv06xx_write_sensor_words._entry, ptr @stv06xx_write_sensor_words._entry.11, ptr @stv06xx_write_sensor_words._entry_ptr, ptr @stv06xx_write_sensor_words._entry_ptr.13, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @sd_driver, ptr @dump_bridge, ptr @dump_sensor, ptr @.str.19, ptr @.str.20, ptr @device_table, ptr @sd_desc, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.95, ptr @.str.97, ptr @.str.98], section "llvm.metadata"
@0 = internal global [95 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv06xx_write_bridge._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv06xx_read_bridge._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv06xx_write_sensor_bytes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv06xx_write_sensor_bytes._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv06xx_write_sensor_words._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv06xx_write_sensor_words._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv06xx_read_sensor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv06xx_read_sensor._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_bridge to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_sensor to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_table to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_desc to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv06xx_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv06xx_dump_bridge._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv06xx_dump_bridge._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv06xx_dump_bridge._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv06xx_dump_bridge._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv06xx_dump_bridge._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv06xx_dump_bridge._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv06xx_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv06xx_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv06xx_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv06xx_start._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv06xx_start._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv06xx_pkt_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv06xx_pkt_scan._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv06xx_pkt_scan._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv06xx_pkt_scan._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv06xx_pkt_scan._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv06xx_pkt_scan._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv06xx_pkt_scan._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv06xx_pkt_scan._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv06xx_pkt_scan._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv06xx_pkt_scan._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv06xx_pkt_scan._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv06xx_pkt_scan._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv06xx_pkt_scan._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv06xx_isoc_nego._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv06xx_stopN._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stv06xx_stopN._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stv06xx_write_bridge(ptr noundef %sd, i16 noundef zeroext %address, i16 noundef zeroext %i2c_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 10
  %2 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_buf, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %i2c_data)
  %cmp = icmp ugt i16 %i2c_data, 255
  %conv6 = trunc i16 %i2c_data to i8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv6, ptr %3, align 1
  %5 = lshr i16 %i2c_data, 8
  %conv9 = trunc i16 %5 to i8
  %arrayidx10 = getelementptr i8, ptr %3, i32 1
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv9, ptr %arrayidx10, align 1
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 8
  %shl.i = shl i32 %8, 8
  %or = or i32 %shl.i, -2147483648
  %conv11 = select i1 %cmp, i16 2, i16 1
  %call12 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or, i8 noundef zeroext 4, i8 noundef zeroext 64, i16 noundef zeroext %address, i16 noundef zeroext 0, ptr noundef %3, i16 noundef zeroext %conv11, i32 noundef 5000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %9 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp13 = icmp sgt i32 %9, 1
  br i1 %cmp13, label %do.end, label %entry.do.end20_crit_edge

entry.do.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end20

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %i2c_data to i32
  %name = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %conv17 = zext i16 %address to i32
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %conv, i32 noundef %conv17, i32 noundef %call12) #10
  br label %do.end20

do.end20:                                         ; preds = %do.end, %entry.do.end20_crit_edge
  %10 = tail call i32 @llvm.smin.i32(i32 %call12, i32 0)
  ret i32 %10
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stv06xx_read_bridge(ptr noundef %sd, i16 noundef zeroext %address, ptr nocapture noundef writeonly %i2c_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %call4 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or3, i8 noundef zeroext 4, i8 noundef zeroext -64, i16 noundef zeroext %address, i16 noundef zeroext 0, ptr noundef %3, i16 noundef zeroext 1, i32 noundef 5000) #7
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %3, align 1
  %8 = ptrtoint ptr %i2c_data to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %i2c_data, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %9 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp sgt i32 %9, 1
  br i1 %cmp, label %do.end, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %conv = zext i8 %7 to i32
  %conv6 = zext i16 %address to i32
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name, i32 noundef %conv, i32 noundef %conv6, i32 noundef %call4) #10
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %10 = tail call i32 @llvm.smin.i32(i32 %call4, i32 0)
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stv06xx_write_sensor(ptr noundef %sd, i8 noundef zeroext %address, i16 noundef zeroext %value) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca [2 x i16], align 2
  %data3 = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 1
  %0 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor, align 8
  %i2c_len = getelementptr inbounds %struct.stv06xx_sensor, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %i2c_len to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %i2c_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp = icmp eq i8 %3, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #7
  %4 = getelementptr inbounds [2 x i16], ptr %data, i32 0, i32 1
  %conv2 = zext i8 %address to i16
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv2, ptr %data, align 2
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %value, ptr %4, align 2
  %call = call i32 @stv06xx_write_sensor_words(ptr noundef %sd, ptr noundef nonnull %data, i8 noundef zeroext 1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #7
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data3) #7
  %7 = getelementptr inbounds [2 x i8], ptr %data3, i32 0, i32 1
  %8 = ptrtoint ptr %data3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %address, ptr %data3, align 1
  %conv6 = trunc i16 %value to i8
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv6, ptr %7, align 1
  %call8 = call i32 @stv06xx_write_sensor_bytes(ptr noundef %sd, ptr noundef nonnull %data3, i8 noundef zeroext 1)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data3) #7
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call8, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stv06xx_write_sensor_words(ptr noundef %sd, ptr nocapture noundef readonly %data, i8 noundef zeroext %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %.pre = zext i8 %len to i32
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %conv = zext i8 %len to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name, i32 noundef %conv) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %conv6.pre-phi = phi i32 [ %.pre, %entry.do.end5_crit_edge ], [ %conv, %do.end ]
  %name42 = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %sensor = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 1
  %arrayidx56 = getelementptr i8, ptr %3, i32 32
  %arrayidx58 = getelementptr i8, ptr %3, i32 33
  %arrayidx59 = getelementptr i8, ptr %3, i32 34
  br label %for.cond

for.cond:                                         ; preds = %for.end.for.cond_crit_edge, %do.end5
  %i.0 = phi i32 [ 0, %do.end5 ], [ %inc55, %for.end.for.cond_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %conv6.pre-phi)
  %cmp7 = icmp slt i32 %i.0, %conv6.pre-phi
  br i1 %cmp7, label %for.body, label %for.end66

for.body:                                         ; preds = %for.cond
  %5 = call ptr @memset(ptr %3, i32 0, i32 35)
  br label %for.body15

for.body15:                                       ; preds = %for.inc.for.body15_crit_edge, %for.body
  %j.0108 = phi i32 [ 0, %for.body ], [ %inc, %for.inc.for.body15_crit_edge ]
  %i.1107 = phi i32 [ %i.0, %for.body ], [ %inc55, %for.inc.for.body15_crit_edge ]
  %mul = shl i32 %i.1107, 1
  %arrayidx = getelementptr i16, ptr %data, i32 %mul
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  %conv16 = trunc i16 %7 to i8
  %arrayidx17 = getelementptr i8, ptr %3, i32 %j.0108
  %8 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv16, ptr %arrayidx17, align 1
  %add = or i32 %mul, 1
  %arrayidx19 = getelementptr i16, ptr %data, i32 %add
  %9 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx19, align 2
  %conv20 = trunc i16 %10 to i8
  %mul21 = shl nuw nsw i32 %j.0108, 1
  %add22 = add nuw nsw i32 %mul21, 16
  %arrayidx23 = getelementptr i8, ptr %3, i32 %add22
  %11 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv20, ptr %arrayidx23, align 1
  %12 = load i16, ptr %arrayidx19, align 2
  %13 = lshr i16 %12, 8
  %conv28 = trunc i16 %13 to i8
  %add31 = add nuw nsw i32 %mul21, 17
  %arrayidx32 = getelementptr i8, ptr %3, i32 %add31
  %14 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv28, ptr %arrayidx32, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %15 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp34 = icmp sgt i32 %15, 1
  br i1 %cmp34, label %do.end39, label %for.body15.for.inc_crit_edge

for.body15.for.inc_crit_edge:                     ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end39:                                         ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx19, align 2
  %conv47 = zext i16 %17 to i32
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx, align 2
  %conv50 = zext i16 %19 to i32
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name42, i32 noundef %conv47, i32 noundef %conv50) #10
  br label %for.inc

for.inc:                                          ; preds = %do.end39, %for.body15.for.inc_crit_edge
  %inc = add nuw nsw i32 %j.0108, 1
  %inc55 = add nsw i32 %i.1107, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %j.0108)
  %cmp10 = icmp ult i32 %j.0108, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %inc55, i32 %conv6.pre-phi)
  %cmp13 = icmp slt i32 %inc55, %conv6.pre-phi
  %or.cond = select i1 %cmp10, i1 %cmp13, i1 false
  br i1 %or.cond, label %for.inc.for.body15_crit_edge, label %for.end

for.inc.for.body15_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body15

for.end:                                          ; preds = %for.inc
  %20 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sensor, align 8
  %i2c_addr = getelementptr inbounds %struct.stv06xx_sensor, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %i2c_addr, align 4
  %24 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx56, align 1
  %25 = trunc i32 %inc to i8
  %conv57 = add i8 %25, -1
  %26 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv57, ptr %arrayidx58, align 1
  %27 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %arrayidx59, align 1
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %1, align 8
  %shl.i = shl i32 %29, 8
  %or = or i32 %shl.i, -2147483648
  %call61 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or, i8 noundef zeroext 4, i8 noundef zeroext 64, i16 noundef zeroext 1024, i16 noundef zeroext 0, ptr noundef %3, i16 noundef zeroext 35, i32 noundef 5000) #7
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %for.end.cleanup_crit_edge, label %for.end.for.cond_crit_edge

for.end.for.cond_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end66:                                        ; preds = %for.cond
  %bridge.i = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 4
  %30 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bridge.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %31)
  %cmp.i = icmp eq i8 %31, 2
  br i1 %cmp.i, label %if.end.i, label %for.end66.cleanup_crit_edge

for.end66.cleanup_crit_edge:                      ; preds = %for.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %for.end66
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %34 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %usb_buf, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %35, align 1
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %33, align 8
  %shl.i.i = shl i32 %38, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %33, i32 noundef %or.i, i8 noundef zeroext 4, i8 noundef zeroext 64, i16 noundef zeroext 5892, i16 noundef zeroext 0, ptr noundef %35, i16 noundef zeroext 1, i32 noundef 5000) #7
  %39 = tail call i32 @llvm.smin.i32(i32 %call3.i, i32 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %for.end66.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end66.cleanup_crit_edge ], [ %39, %if.end.i ], [ %call61, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stv06xx_write_sensor_bytes(ptr noundef %sd, ptr nocapture noundef readonly %data, i8 noundef zeroext %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %.pre = zext i8 %len to i32
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %conv = zext i8 %len to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name, i32 noundef %conv) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %conv6.pre-phi = phi i32 [ %.pre, %entry.do.end5_crit_edge ], [ %conv, %do.end ]
  %name30 = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %sensor = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 1
  %arrayidx44 = getelementptr i8, ptr %3, i32 32
  %arrayidx46 = getelementptr i8, ptr %3, i32 33
  %arrayidx47 = getelementptr i8, ptr %3, i32 34
  br label %for.cond

for.cond:                                         ; preds = %for.end.for.cond_crit_edge, %do.end5
  %i.0 = phi i32 [ 0, %do.end5 ], [ %inc43, %for.end.for.cond_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %conv6.pre-phi)
  %cmp7 = icmp slt i32 %i.0, %conv6.pre-phi
  br i1 %cmp7, label %for.body, label %for.end54

for.body:                                         ; preds = %for.cond
  %5 = call ptr @memset(ptr %3, i32 0, i32 35)
  br label %for.body15

for.body15:                                       ; preds = %for.inc.for.body15_crit_edge, %for.body
  %j.092 = phi i32 [ 0, %for.body ], [ %inc, %for.inc.for.body15_crit_edge ]
  %i.191 = phi i32 [ %i.0, %for.body ], [ %inc43, %for.inc.for.body15_crit_edge ]
  %mul = shl i32 %i.191, 1
  %arrayidx = getelementptr i8, ptr %data, i32 %mul
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %arrayidx16 = getelementptr i8, ptr %3, i32 %j.092
  %8 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %arrayidx16, align 1
  %add = or i32 %mul, 1
  %arrayidx18 = getelementptr i8, ptr %data, i32 %add
  %9 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx18, align 1
  %add19 = add nuw nsw i32 %j.092, 16
  %arrayidx20 = getelementptr i8, ptr %3, i32 %add19
  %11 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx20, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %12 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp22 = icmp sgt i32 %12, 1
  br i1 %cmp22, label %do.end27, label %for.body15.for.inc_crit_edge

for.body15.for.inc_crit_edge:                     ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end27:                                         ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx18, align 1
  %conv35 = zext i8 %14 to i32
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  %conv38 = zext i8 %16 to i32
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name30, i32 noundef %conv35, i32 noundef %conv38) #10
  br label %for.inc

for.inc:                                          ; preds = %do.end27, %for.body15.for.inc_crit_edge
  %inc = add nuw nsw i32 %j.092, 1
  %inc43 = add nsw i32 %i.191, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %j.092)
  %cmp10 = icmp ult i32 %j.092, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %inc43, i32 %conv6.pre-phi)
  %cmp13 = icmp slt i32 %inc43, %conv6.pre-phi
  %or.cond = select i1 %cmp10, i1 %cmp13, i1 false
  br i1 %or.cond, label %for.inc.for.body15_crit_edge, label %for.end

for.inc.for.body15_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body15

for.end:                                          ; preds = %for.inc
  %17 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sensor, align 8
  %i2c_addr = getelementptr inbounds %struct.stv06xx_sensor, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %i2c_addr, align 4
  %21 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %arrayidx44, align 1
  %22 = trunc i32 %inc to i8
  %conv45 = add i8 %22, -1
  %23 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv45, ptr %arrayidx46, align 1
  %24 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %arrayidx47, align 1
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %1, align 8
  %shl.i = shl i32 %26, 8
  %or = or i32 %shl.i, -2147483648
  %call49 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or, i8 noundef zeroext 4, i8 noundef zeroext 64, i16 noundef zeroext 1024, i16 noundef zeroext 0, ptr noundef %3, i16 noundef zeroext 35, i32 noundef 5000) #7
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %for.end.cleanup_crit_edge, label %for.end.for.cond_crit_edge

for.end.for.cond_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end54:                                        ; preds = %for.cond
  %bridge.i = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 4
  %27 = ptrtoint ptr %bridge.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bridge.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %28)
  %cmp.i = icmp eq i8 %28, 2
  br i1 %cmp.i, label %if.end.i, label %for.end54.cleanup_crit_edge

for.end54.cleanup_crit_edge:                      ; preds = %for.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %for.end54
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  %31 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %usb_buf, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %32, align 1
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %30, align 8
  %shl.i.i = shl i32 %35, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %30, i32 noundef %or.i, i8 noundef zeroext 4, i8 noundef zeroext 64, i16 noundef zeroext 5892, i16 noundef zeroext 0, ptr noundef %32, i16 noundef zeroext 1, i32 noundef 5000) #7
  %36 = tail call i32 @llvm.smin.i32(i32 %call3.i, i32 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %for.end54.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end54.cleanup_crit_edge ], [ %36, %if.end.i ], [ %call49, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stv06xx_read_sensor(ptr noundef %sd, i8 noundef zeroext %address, ptr nocapture noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %usb_buf = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 10
  %2 = ptrtoint ptr %usb_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_buf, align 4
  %sensor = getelementptr inbounds %struct.sd, ptr %sd, i32 0, i32 1
  %4 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sensor, align 8
  %i2c_flush = getelementptr inbounds %struct.stv06xx_sensor, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %i2c_flush to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %i2c_flush, align 1
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %3, align 1
  %arrayidx10.i = getelementptr i8, ptr %3, i32 1
  %9 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx10.i, align 1
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 8
  %shl.i.i = shl i32 %11, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call12.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i, i8 noundef zeroext 4, i8 noundef zeroext 64, i16 noundef zeroext 5155, i16 noundef zeroext 0, ptr noundef %3, i16 noundef zeroext 1, i32 noundef 5000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %12 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp13.i = icmp sgt i32 %12, 1
  br i1 %cmp13.i, label %do.end.i, label %entry.stv06xx_write_bridge.exit_crit_edge

entry.stv06xx_write_bridge.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv06xx_write_bridge.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i8 %7 to i32
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i, i32 noundef %conv.i, i32 noundef 5155, i32 noundef %call12.i) #10
  br label %stv06xx_write_bridge.exit

stv06xx_write_bridge.exit:                        ; preds = %do.end.i, %entry.stv06xx_write_bridge.exit_crit_edge
  %13 = tail call i32 @llvm.smin.i32(i32 %call12.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp = icmp slt i32 %call12.i, 0
  br i1 %cmp, label %stv06xx_write_bridge.exit.cleanup_crit_edge, label %if.end

stv06xx_write_bridge.exit.cleanup_crit_edge:      ; preds = %stv06xx_write_bridge.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %stv06xx_write_bridge.exit
  %14 = getelementptr inbounds i8, ptr %3, i32 1
  %15 = call ptr @memset(ptr %14, i32 0, i32 34)
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %address, ptr %3, align 1
  %17 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sensor, align 8
  %i2c_addr = getelementptr inbounds %struct.stv06xx_sensor, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %i2c_addr, align 4
  %arrayidx5 = getelementptr i8, ptr %3, i32 32
  %21 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %arrayidx5, align 1
  %arrayidx6 = getelementptr i8, ptr %3, i32 33
  %22 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx6, align 1
  %arrayidx7 = getelementptr i8, ptr %3, i32 34
  %23 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 3, ptr %arrayidx7, align 1
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %1, align 8
  %shl.i = shl i32 %25, 8
  %or = or i32 %shl.i, -2147483648
  %call9 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or, i8 noundef zeroext 4, i8 noundef zeroext 64, i16 noundef zeroext 5120, i16 noundef zeroext 0, ptr noundef %3, i16 noundef zeroext 35, i32 noundef 5000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %do.end, label %if.end14

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %call9) #10
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %1, align 8
  %shl.i84 = shl i32 %27, 8
  %or17 = or i32 %shl.i84, -2147483520
  %28 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sensor, align 8
  %i2c_len = getelementptr inbounds %struct.stv06xx_sensor, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %i2c_len to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %i2c_len, align 2
  %conv19 = zext i8 %31 to i16
  %call20 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or17, i8 noundef zeroext 4, i8 noundef zeroext -64, i16 noundef zeroext 5136, i16 noundef zeroext 0, ptr noundef %3, i16 noundef zeroext %conv19, i32 noundef 5000) #7
  %32 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sensor, align 8
  %i2c_len22 = getelementptr inbounds %struct.stv06xx_sensor, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %i2c_len22 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %i2c_len22, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %35)
  %cmp24 = icmp eq i8 %35, 2
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %3, align 1
  %conv28 = zext i8 %37 to i16
  br i1 %cmp24, label %if.then26, label %if.end14.do.body36_crit_edge

if.end14.do.body36_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body36

if.then26:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx10.i, align 1
  %conv30 = zext i8 %39 to i16
  %shl = shl nuw i16 %conv30, 8
  %or31 = or i16 %shl, %conv28
  br label %do.body36

do.body36:                                        ; preds = %if.then26, %if.end14.do.body36_crit_edge
  %storemerge = phi i16 [ %or31, %if.then26 ], [ %conv28, %if.end14.do.body36_crit_edge ]
  %40 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %storemerge, ptr %value, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %41 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp37 = icmp sgt i32 %41, 1
  br i1 %cmp37, label %do.end42, label %do.body36.do.end49_crit_edge

do.body36.do.end49_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end49

do.end42:                                         ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %sd, i32 0, i32 2, i32 4
  %conv44 = zext i16 %storemerge to i32
  %conv45 = zext i8 %address to i32
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name, i32 noundef %conv44, i32 noundef %conv45, i32 noundef %call20) #10
  br label %do.end49

do.end49:                                         ; preds = %do.end42, %do.body36.do.end49_crit_edge
  %42 = tail call i32 @llvm.smin.i32(i32 %call20, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %do.end49, %do.end, %stv06xx_write_bridge.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %do.end ], [ %42, %do.end49 ], [ %13, %stv06xx_write_bridge.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @sd_driver, ptr noundef null, ptr noundef nonnull @.str.19) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sd_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_deregister(ptr noundef nonnull @sd_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_probe(ptr noundef %intf, ptr noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gspca_dev_probe(ptr noundef %intf, ptr noundef %id, ptr noundef nonnull @sd_desc, i32 noundef 2624, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_disconnect(ptr noundef %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %sensor_priv = getelementptr inbounds %struct.sd, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %sensor_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sensor_priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %4 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %1, i32 0, i32 2, i32 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef %name) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %sensor = getelementptr inbounds %struct.sd, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %sensor to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %sensor, align 8
  tail call void @gspca_disconnect(ptr noundef %intf) #7
  tail call void @kfree(ptr noundef %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gspca_suspend(ptr noundef, [1 x i32]) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gspca_resume(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gspca_dev_probe(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv06xx_config(ptr noundef %gspca_dev, ptr nocapture noundef readonly %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %0 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %1 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %driver_info, align 4
  %conv = trunc i32 %2 to i8
  %bridge = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %3 = ptrtoint ptr %bridge to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %bridge, align 4
  %sd_desc = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 7
  %4 = ptrtoint ptr %sd_desc to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @sd_desc, ptr %sd_desc, align 4
  %5 = load i8, ptr @dump_bridge, align 1, !range !206
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %do.end3.if.end5_crit_edge, label %if.then4

do.end3.if.end5_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then4:                                         ; preds = %do.end3
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #10
  %dev.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %usb_buf.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %name.i.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %stv06xx_read_bridge.exit.i.for.body.i_crit_edge, %if.then4
  %i.0115.i = phi i32 [ 5120, %if.then4 ], [ %inc.i, %stv06xx_read_bridge.exit.i.for.body.i_crit_edge ]
  %conv.i = trunc i32 %i.0115.i to i16
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 4
  %8 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %usb_buf.i.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 8
  %shl.i.i.i = shl i32 %11, 8
  %or3.i.i = or i32 %shl.i.i.i, -2147483520
  %call4.i.i = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or3.i.i, i8 noundef zeroext 4, i8 noundef zeroext -64, i16 noundef zeroext %conv.i, i16 noundef zeroext 0, ptr noundef %9, i16 noundef zeroext 1, i32 noundef 5000) #7
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %9, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %14 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp.i.i = icmp sgt i32 %14, 1
  %conv.i.i = zext i8 %13 to i32
  br i1 %cmp.i.i, label %do.end.i.i, label %for.body.i.stv06xx_read_bridge.exit.i_crit_edge

for.body.i.stv06xx_read_bridge.exit.i_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv06xx_read_bridge.exit.i

do.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name.i.i, i32 noundef %conv.i.i, i32 noundef %i.0115.i, i32 noundef %call4.i.i) #10
  br label %stv06xx_read_bridge.exit.i

stv06xx_read_bridge.exit.i:                       ; preds = %do.end.i.i, %for.body.i.stv06xx_read_bridge.exit.i_crit_edge
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %conv.i.i, i32 noundef %i.0115.i) #10
  %inc.i = add nuw nsw i32 %i.0115.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 5647
  br i1 %exitcond.not.i, label %do.end10.i, label %stv06xx_read_bridge.exit.i.for.body.i_crit_edge

stv06xx_read_bridge.exit.i.for.body.i_crit_edge:  ; preds = %stv06xx_read_bridge.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

do.end10.i:                                       ; preds = %stv06xx_read_bridge.exit.i
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #10
  br label %for.body16.i

for.body16.i:                                     ; preds = %stv06xx_write_bridge.exit112.i.for.body16.i_crit_edge, %do.end10.i
  %i.1117.i = phi i32 [ 5120, %do.end10.i ], [ %inc52.i, %stv06xx_write_bridge.exit112.i.for.body16.i_crit_edge ]
  %conv17.i = trunc i32 %i.1117.i to i16
  %15 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i.i, align 4
  %17 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %usb_buf.i.i, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %16, align 8
  %shl.i.i73.i = shl i32 %20, 8
  %or3.i74.i = or i32 %shl.i.i73.i, -2147483520
  %call4.i75.i = tail call i32 @usb_control_msg(ptr noundef %16, i32 noundef %or3.i74.i, i8 noundef zeroext 4, i8 noundef zeroext -64, i16 noundef zeroext %conv17.i, i16 noundef zeroext 0, ptr noundef %18, i16 noundef zeroext 1, i32 noundef 5000) #7
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %18, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %23 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp.i76.i = icmp sgt i32 %23, 1
  br i1 %cmp.i76.i, label %do.end.i81.i, label %for.body16.i.stv06xx_read_bridge.exit82.i_crit_edge

for.body16.i.stv06xx_read_bridge.exit82.i_crit_edge: ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv06xx_read_bridge.exit82.i

do.end.i81.i:                                     ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i78.i = zext i8 %22 to i32
  %call7.i80.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name.i.i, i32 noundef %conv.i78.i, i32 noundef %i.1117.i, i32 noundef %call4.i75.i) #10
  br label %stv06xx_read_bridge.exit82.i

stv06xx_read_bridge.exit82.i:                     ; preds = %do.end.i81.i, %for.body16.i.stv06xx_read_bridge.exit82.i_crit_edge
  %24 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i.i, align 4
  %26 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %usb_buf.i.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %27, align 1
  %arrayidx10.i.i = getelementptr i8, ptr %27, i32 1
  %29 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %arrayidx10.i.i, align 1
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %25, align 8
  %shl.i.i85.i = shl i32 %31, 8
  %or.i.i = or i32 %shl.i.i85.i, -2147483648
  %call12.i.i = tail call i32 @usb_control_msg(ptr noundef %25, i32 noundef %or.i.i, i8 noundef zeroext 4, i8 noundef zeroext 64, i16 noundef zeroext %conv17.i, i16 noundef zeroext 0, ptr noundef %27, i16 noundef zeroext 1, i32 noundef 5000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %32 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp13.i.i = icmp sgt i32 %32, 1
  br i1 %cmp13.i.i, label %do.end.i87.i, label %stv06xx_read_bridge.exit82.i.stv06xx_write_bridge.exit.i_crit_edge

stv06xx_read_bridge.exit82.i.stv06xx_write_bridge.exit.i_crit_edge: ; preds = %stv06xx_read_bridge.exit82.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv06xx_write_bridge.exit.i

do.end.i87.i:                                     ; preds = %stv06xx_read_bridge.exit82.i
  call void @__sanitizer_cov_trace_pc() #9
  %call18.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i.i, i32 noundef 255, i32 noundef %i.1117.i, i32 noundef %call12.i.i) #10
  br label %stv06xx_write_bridge.exit.i

stv06xx_write_bridge.exit.i:                      ; preds = %do.end.i87.i, %stv06xx_read_bridge.exit82.i.stv06xx_write_bridge.exit.i_crit_edge
  %33 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i.i, align 4
  %35 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %usb_buf.i.i, align 4
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %34, align 8
  %shl.i.i90.i = shl i32 %38, 8
  %or3.i91.i = or i32 %shl.i.i90.i, -2147483520
  %call4.i92.i = tail call i32 @usb_control_msg(ptr noundef %34, i32 noundef %or3.i91.i, i8 noundef zeroext 4, i8 noundef zeroext -64, i16 noundef zeroext %conv17.i, i16 noundef zeroext 0, ptr noundef %36, i16 noundef zeroext 1, i32 noundef 5000) #7
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %36, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %41 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp.i93.i = icmp sgt i32 %41, 1
  br i1 %cmp.i93.i, label %do.end.i98.i, label %stv06xx_write_bridge.exit.i.stv06xx_read_bridge.exit99.i_crit_edge

stv06xx_write_bridge.exit.i.stv06xx_read_bridge.exit99.i_crit_edge: ; preds = %stv06xx_write_bridge.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv06xx_read_bridge.exit99.i

do.end.i98.i:                                     ; preds = %stv06xx_write_bridge.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i95.i = zext i8 %40 to i32
  %call7.i97.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name.i.i, i32 noundef %conv.i95.i, i32 noundef %i.1117.i, i32 noundef %call4.i92.i) #10
  br label %stv06xx_read_bridge.exit99.i

stv06xx_read_bridge.exit99.i:                     ; preds = %do.end.i98.i, %stv06xx_write_bridge.exit.i.stv06xx_read_bridge.exit99.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %40)
  %cmp24.i = icmp eq i8 %40, -1
  call void @__sanitizer_cov_trace_cmp1(i8 %40, i8 %22)
  %cmp33.not.i = icmp eq i8 %40, %22
  %.str.38..str.35.i = select i1 %cmp33.not.i, ptr @.str.38, ptr @.str.35
  %.str.35.sink.i = select i1 %cmp24.i, ptr @.str.32, ptr %.str.38..str.35.i
  %call40.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.35.sink.i, i32 noundef %i.1117.i) #10
  %42 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i.i, align 4
  %44 = ptrtoint ptr %usb_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %usb_buf.i.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %22, ptr %45, align 1
  %arrayidx10.i102.i = getelementptr i8, ptr %45, i32 1
  %47 = ptrtoint ptr %arrayidx10.i102.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %arrayidx10.i102.i, align 1
  %48 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %43, align 8
  %shl.i.i103.i = shl i32 %49, 8
  %or.i104.i = or i32 %shl.i.i103.i, -2147483648
  %call12.i105.i = tail call i32 @usb_control_msg(ptr noundef %43, i32 noundef %or.i104.i, i8 noundef zeroext 4, i8 noundef zeroext 64, i16 noundef zeroext %conv17.i, i16 noundef zeroext 0, ptr noundef %45, i16 noundef zeroext 1, i32 noundef 5000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %50 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp13.i106.i = icmp sgt i32 %50, 1
  br i1 %cmp13.i106.i, label %do.end.i111.i, label %stv06xx_read_bridge.exit99.i.stv06xx_write_bridge.exit112.i_crit_edge

stv06xx_read_bridge.exit99.i.stv06xx_write_bridge.exit112.i_crit_edge: ; preds = %stv06xx_read_bridge.exit99.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv06xx_write_bridge.exit112.i

do.end.i111.i:                                    ; preds = %stv06xx_read_bridge.exit99.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i107.i = zext i8 %22 to i32
  %call18.i110.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i.i, i32 noundef %conv.i107.i, i32 noundef %i.1117.i, i32 noundef %call12.i105.i) #10
  br label %stv06xx_write_bridge.exit112.i

stv06xx_write_bridge.exit112.i:                   ; preds = %do.end.i111.i, %stv06xx_read_bridge.exit99.i.stv06xx_write_bridge.exit112.i_crit_edge
  %inc52.i = add nuw nsw i32 %i.1117.i, 1
  %exitcond122.not.i = icmp eq i32 %inc52.i, 5647
  br i1 %exitcond122.not.i, label %stv06xx_write_bridge.exit112.i.if.end5_crit_edge, label %stv06xx_write_bridge.exit112.i.for.body16.i_crit_edge

stv06xx_write_bridge.exit112.i.for.body16.i_crit_edge: ; preds = %stv06xx_write_bridge.exit112.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body16.i

stv06xx_write_bridge.exit112.i.if.end5_crit_edge: ; preds = %stv06xx_write_bridge.exit112.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.end5:                                          ; preds = %stv06xx_write_bridge.exit112.i.if.end5_crit_edge, %do.end3.if.end5_crit_edge
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %51 = ptrtoint ptr %sensor to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @stv06xx_sensor_st6422, ptr %sensor, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.stv06xx_sensor, ptr @stv06xx_sensor_st6422, i32 0, i32 6) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.stv06xx_sensor, ptr @stv06xx_sensor_st6422, i32 0, i32 6), align 4
  %call7 = tail call i32 %52(ptr noundef %gspca_dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %53 = ptrtoint ptr %sensor to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @stv06xx_sensor_vv6410, ptr %sensor, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.stv06xx_sensor, ptr @stv06xx_sensor_vv6410, i32 0, i32 6) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.stv06xx_sensor, ptr @stv06xx_sensor_vv6410, i32 0, i32 6), align 4
  %call14 = tail call i32 %54(ptr noundef %gspca_dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end10.cleanup_crit_edge, label %if.end17

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %55 = ptrtoint ptr %sensor to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @stv06xx_sensor_hdcs1x00, ptr %sensor, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.stv06xx_sensor, ptr @stv06xx_sensor_hdcs1x00, i32 0, i32 6) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.stv06xx_sensor, ptr @stv06xx_sensor_hdcs1x00, i32 0, i32 6), align 4
  %call21 = tail call i32 %56(ptr noundef %gspca_dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end17.cleanup_crit_edge, label %if.end24

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %if.end17
  %57 = ptrtoint ptr %sensor to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @stv06xx_sensor_hdcs1020, ptr %sensor, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.stv06xx_sensor, ptr @stv06xx_sensor_hdcs1020, i32 0, i32 6) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.stv06xx_sensor, ptr @stv06xx_sensor_hdcs1020, i32 0, i32 6), align 4
  %call28 = tail call i32 %58(ptr noundef %gspca_dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end24.cleanup_crit_edge, label %if.end31

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end31:                                         ; preds = %if.end24
  %59 = ptrtoint ptr %sensor to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @stv06xx_sensor_pb0100, ptr %sensor, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.stv06xx_sensor, ptr @stv06xx_sensor_pb0100, i32 0, i32 6) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.stv06xx_sensor, ptr @stv06xx_sensor_pb0100, i32 0, i32 6), align 4
  %call35 = tail call i32 %60(ptr noundef %gspca_dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end31.cleanup_crit_edge, label %if.end38

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end38:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %sensor to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %sensor, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.end31.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.end38 ], [ 0, %if.end5.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ], [ 0, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv06xx_init(ptr noundef %gspca_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %0 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  tail call void @msleep(i32 noundef 250) #7
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %1 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sensor, align 8
  %init = getelementptr inbounds %struct.stv06xx_sensor, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init, align 4
  %call4 = tail call i32 %4(ptr noundef %gspca_dev) #7
  %5 = load i8, ptr @dump_sensor, align 1, !range !206
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %do.end3.if.end11_crit_edge, label %land.lhs.true

do.end3.if.end11_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

land.lhs.true:                                    ; preds = %do.end3
  %6 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sensor, align 8
  %dump = getelementptr inbounds %struct.stv06xx_sensor, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %dump to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dump, align 4
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %land.lhs.true.if.end11_crit_edge, label %if.then7

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call i32 %9(ptr noundef %gspca_dev) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %land.lhs.true.if.end11_crit_edge, %do.end3.if.end11_crit_edge
  %10 = tail call i32 @llvm.smin.i32(i32 %call4, i32 0)
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv06xx_init_controls(ptr noundef %gspca_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %0 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %ctrl_handler = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 8
  %ctrl_handler4 = getelementptr inbounds %struct.video_device, ptr %gspca_dev, i32 0, i32 9
  %1 = ptrtoint ptr %ctrl_handler4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ctrl_handler, ptr %ctrl_handler4, align 4
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %2 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sensor, align 8
  %init_controls = getelementptr inbounds %struct.stv06xx_sensor, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %init_controls to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_controls, align 4
  %call5 = tail call i32 %5(ptr noundef %gspca_dev) #7
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stv06xx_probe_error(ptr nocapture noundef %gspca_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor_priv = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 2
  %0 = ptrtoint ptr %sensor_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sensor_priv, align 4
  tail call void @kfree(ptr noundef %1) #7
  %2 = ptrtoint ptr %sensor_priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %sensor_priv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv06xx_start(ptr noundef %gspca_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %call = tail call ptr @usb_ifnum_to_if(ptr noundef %1, i32 noundef %conv) #7
  %alt4 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 32
  %4 = ptrtoint ptr %alt4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %alt4, align 2
  %conv5 = zext i8 %5 to i32
  %call6 = tail call ptr @usb_altnum_to_altsetting(ptr noundef %call, i32 noundef %conv5) #7
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %call6, i32 0, i32 4
  %6 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp = icmp eq i8 %7, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %call6, i32 0, i32 3
  %8 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %endpoint, align 4
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %wMaxPacketSize, align 4
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %15 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %usb_buf.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %12)
  %cmp.i = icmp ugt i16 %12, 255
  %conv6.i = trunc i16 %12 to i8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv6.i, ptr %16, align 1
  %18 = lshr i16 %12, 8
  %conv9.i = trunc i16 %18 to i8
  %arrayidx10.i = getelementptr i8, ptr %16, i32 1
  %19 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv9.i, ptr %arrayidx10.i, align 1
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %14, align 8
  %shl.i.i = shl i32 %21, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %conv11.i = select i1 %cmp.i, i16 2, i16 1
  %call12.i = tail call i32 @usb_control_msg(ptr noundef %14, i32 noundef %or.i, i8 noundef zeroext 4, i8 noundef zeroext 64, i16 noundef zeroext 5569, i16 noundef zeroext 0, ptr noundef %16, i16 noundef zeroext %conv11.i, i32 noundef 5000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %22 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp13.i = icmp sgt i32 %22, 1
  br i1 %cmp13.i, label %do.end.i, label %if.end11.stv06xx_write_bridge.exit_crit_edge

if.end11.stv06xx_write_bridge.exit_crit_edge:     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv06xx_write_bridge.exit

do.end.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i16 %12 to i32
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i, i32 noundef %conv.i, i32 noundef 5569, i32 noundef %call12.i) #10
  br label %stv06xx_write_bridge.exit

stv06xx_write_bridge.exit:                        ; preds = %do.end.i, %if.end11.stv06xx_write_bridge.exit_crit_edge
  %23 = tail call i32 @llvm.smin.i32(i32 %call12.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp16 = icmp slt i32 %call12.i, 0
  br i1 %cmp16, label %stv06xx_write_bridge.exit.cleanup_crit_edge, label %if.end19

stv06xx_write_bridge.exit.cleanup_crit_edge:      ; preds = %stv06xx_write_bridge.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %stv06xx_write_bridge.exit
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %24 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sensor, align 8
  %start = getelementptr inbounds %struct.stv06xx_sensor, ptr %25, i32 0, i32 11
  %26 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %start, align 4
  %call20 = tail call i32 %27(ptr noundef %gspca_dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.end19.do.body29_crit_edge, label %if.end24

if.end19.do.body29_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body29

if.end24:                                         ; preds = %if.end19
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %30 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %usb_buf.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %31, align 1
  %arrayidx10.i84 = getelementptr i8, ptr %31, i32 1
  %33 = ptrtoint ptr %arrayidx10.i84 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %arrayidx10.i84, align 1
  %34 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %29, align 8
  %shl.i.i85 = shl i32 %35, 8
  %or.i86 = or i32 %shl.i.i85, -2147483648
  %call12.i87 = tail call i32 @usb_control_msg(ptr noundef %29, i32 noundef %or.i86, i8 noundef zeroext 4, i8 noundef zeroext 64, i16 noundef zeroext 5184, i16 noundef zeroext 0, ptr noundef %31, i16 noundef zeroext 1, i32 noundef 5000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %36 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp13.i88 = icmp sgt i32 %36, 1
  br i1 %cmp13.i88, label %do.end.i91, label %if.end24.out_crit_edge

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.end.i91:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %name.i89 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call18.i90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i89, i32 noundef 1, i32 noundef 5184, i32 noundef %call12.i87) #10
  br label %out

out:                                              ; preds = %do.end.i91, %if.end24.out_crit_edge
  %37 = tail call i32 @llvm.smin.i32(i32 %call12.i87, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i87)
  %cmp26 = icmp slt i32 %call12.i87, 0
  br i1 %cmp26, label %out.do.body29_crit_edge, label %do.body44

out.do.body29_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body29

do.body29:                                        ; preds = %out.do.body29_crit_edge, %if.end19.do.body29_crit_edge
  %err.096 = phi i32 [ %37, %out.do.body29_crit_edge ], [ %call20, %if.end19.do.body29_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %38 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %38)
  %cmp30 = icmp sgt i32 %38, 2
  br i1 %cmp30, label %do.body29.cleanup.sink.split_crit_edge, label %do.body29.cleanup_crit_edge

do.body29.cleanup_crit_edge:                      ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body29.cleanup.sink.split_crit_edge:           ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.body44:                                        ; preds = %out
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %39 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %cmp45 = icmp sgt i32 %39, 2
  br i1 %cmp45, label %do.body44.cleanup.sink.split_crit_edge, label %do.body44.cleanup_crit_edge

do.body44.cleanup_crit_edge:                      ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body44.cleanup.sink.split_crit_edge:           ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.body44.cleanup.sink.split_crit_edge, %do.body29.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.47.sink = phi ptr [ @.str.44, %entry.cleanup.sink.split_crit_edge ], [ @.str.47, %do.body29.cleanup.sink.split_crit_edge ], [ @.str.50, %do.body44.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -5, %entry.cleanup.sink.split_crit_edge ], [ %err.096, %do.body29.cleanup.sink.split_crit_edge ], [ 0, %do.body44.cleanup.sink.split_crit_edge ]
  %name38 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.47.sink, ptr noundef %name38) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body44.cleanup_crit_edge, %do.body29.cleanup_crit_edge, %stv06xx_write_bridge.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.end.cleanup_crit_edge ], [ %23, %stv06xx_write_bridge.exit.cleanup_crit_edge ], [ 0, %do.body44.cleanup_crit_edge ], [ %err.096, %do.body29.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stv06xx_pkt_scan(ptr noundef %gspca_dev, ptr noundef %data, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %0 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %0)
  %cmp = icmp sgt i32 %0, 4
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name, i32 noundef %len) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not276 = icmp eq i32 %len, 0
  br i1 %tobool.not276, label %do.end3.cleanup217_crit_edge, label %while.body.lr.ph

do.end3.cleanup217_crit_edge:                     ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup217

while.body.lr.ph:                                 ; preds = %do.end3
  %name38 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %bridge = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 4
  %pixfmt = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 19
  %to_skip111 = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %data.addr.0278 = phi ptr [ %data, %while.body.lr.ph ], [ %add.ptr214, %cleanup.while.body_crit_edge ]
  %len.addr.0277 = phi i32 [ %len, %while.body.lr.ph ], [ %sub215, %cleanup.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len.addr.0277)
  %cmp4 = icmp slt i32 %len.addr.0277, 4
  br i1 %cmp4, label %do.body6, label %if.end20

do.body6:                                         ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %1 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp7 = icmp sgt i32 %1, 4
  br i1 %cmp7, label %do.end11, label %do.body6.cleanup217_crit_edge

do.body6.cleanup217_crit_edge:                    ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup217

do.end11:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %name38) #10
  br label %cleanup217

if.end20:                                         ; preds = %while.body
  %2 = ptrtoint ptr %data.addr.0278 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data.addr.0278, align 1
  %conv = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx21 = getelementptr i8, ptr %data.addr.0278, i32 1
  %4 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %5 to i32
  %or = or i32 %shl, %conv22
  %arrayidx23 = getelementptr i8, ptr %data.addr.0278, i32 2
  %6 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %7 to i32
  %shl25 = shl nuw nsw i32 %conv24, 8
  %arrayidx26 = getelementptr i8, ptr %data.addr.0278, i32 3
  %8 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %9 to i32
  %or28 = or i32 %shl25, %conv27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %10 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp30 = icmp sgt i32 %10, 4
  br i1 %cmp30, label %do.end35, label %if.end20.do.end43_crit_edge

if.end20.do.end43_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end43

do.end35:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %name38, i32 noundef %or, i32 noundef %or28) #10
  br label %do.end43

do.end43:                                         ; preds = %do.end35, %if.end20.do.end43_crit_edge
  %add.ptr = getelementptr i8, ptr %data.addr.0278, i32 4
  %sub = add nsw i32 %len.addr.0277, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %or28)
  %cmp44 = icmp slt i32 %sub, %or28
  br i1 %cmp44, label %do.end49, label %if.end55

do.end49:                                         ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #9
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %name38) #10
  %last_packet_type = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 15
  %11 = ptrtoint ptr %last_packet_type to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %last_packet_type, align 4
  br label %cleanup217

if.end55:                                         ; preds = %do.end43
  %12 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bridge, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cmp57 = icmp eq i8 %13, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp59 = icmp eq i8 %3, 2
  %or.cond = select i1 %cmp57, i1 %cmp59, i1 false
  br i1 %or.cond, label %if.end55.do.body63_crit_edge, label %if.end62

if.end55.do.body63_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body63

if.end62:                                         ; preds = %if.end55
  %trunc = trunc i32 %or to i16
  %14 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %do.body199 [
    i16 512, label %if.end62.do.body63_crit_edge
    i16 16896, label %if.end62.do.body63_crit_edge279
    i16 -32767, label %if.end62.do.body91_crit_edge
    i16 -32763, label %if.end62.do.body91_crit_edge280
    i16 -16383, label %if.end62.do.body91_crit_edge281
    i16 -16379, label %if.end62.do.body91_crit_edge282
    i16 -32766, label %if.end62.do.body125_crit_edge
    i16 -32762, label %if.end62.do.body125_crit_edge283
    i16 -16382, label %if.end62.do.body125_crit_edge284
    i16 5, label %do.body152
    i16 256, label %do.body168
    i16 17151, label %do.body184
  ]

if.end62.do.body125_crit_edge284:                 ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body125

if.end62.do.body125_crit_edge283:                 ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body125

if.end62.do.body125_crit_edge:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body125

if.end62.do.body91_crit_edge282:                  ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body91

if.end62.do.body91_crit_edge281:                  ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body91

if.end62.do.body91_crit_edge280:                  ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body91

if.end62.do.body91_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body91

if.end62.do.body63_crit_edge279:                  ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body63

if.end62.do.body63_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body63

do.body63:                                        ; preds = %if.end62.do.body63_crit_edge, %if.end62.do.body63_crit_edge279, %if.end55.do.body63_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %15 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp64 = icmp sgt i32 %15, 4
  br i1 %cmp64, label %do.end69, label %do.body63.do.end77_crit_edge

do.body63.do.end77_crit_edge:                     ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end77

do.end69:                                         ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #9
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %name38) #10
  br label %do.end77

do.end77:                                         ; preds = %do.end69, %do.body63.do.end77_crit_edge
  %16 = ptrtoint ptr %to_skip111 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %to_skip111, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool78.not = icmp eq i32 %17, 0
  br i1 %tobool78.not, label %do.end77.if.end89_crit_edge, label %if.then79

do.end77.if.end89_crit_edge:                      ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

if.then79:                                        ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #9
  %18 = tail call i32 @llvm.smin.i32(i32 %17, i32 %or28)
  %add.ptr84 = getelementptr i8, ptr %add.ptr, i32 %18
  %sub85 = sub i32 %sub, %18
  %sub86 = sub i32 %or28, %18
  %sub88 = sub i32 %17, %18
  %19 = ptrtoint ptr %to_skip111 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub88, ptr %to_skip111, align 8
  br label %if.end89

if.end89:                                         ; preds = %if.then79, %do.end77.if.end89_crit_edge
  %chunk_len.0 = phi i32 [ %sub86, %if.then79 ], [ %or28, %do.end77.if.end89_crit_edge ]
  %len.addr.1 = phi i32 [ %sub85, %if.then79 ], [ %sub, %do.end77.if.end89_crit_edge ]
  %data.addr.1 = phi ptr [ %add.ptr84, %if.then79 ], [ %add.ptr, %do.end77.if.end89_crit_edge ]
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 2, ptr noundef %data.addr.1, i32 noundef %chunk_len.0) #7
  br label %cleanup

do.body91:                                        ; preds = %if.end62.do.body91_crit_edge, %if.end62.do.body91_crit_edge280, %if.end62.do.body91_crit_edge281, %if.end62.do.body91_crit_edge282
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %20 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %cmp92 = icmp sgt i32 %20, 4
  br i1 %cmp92, label %do.end97, label %do.body91.do.end105_crit_edge

do.body91.do.end105_crit_edge:                    ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end105

do.end97:                                         ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #9
  %call102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %name38) #10
  br label %do.end105

do.end105:                                        ; preds = %do.end97, %do.body91.do.end105_crit_edge
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 1, ptr noundef null, i32 noundef 0) #7
  %21 = ptrtoint ptr %bridge to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bridge, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %22)
  %cmp108 = icmp eq i8 %22, 3
  br i1 %cmp108, label %if.then110, label %do.end105.if.end112_crit_edge

do.end105.if.end112_crit_edge:                    ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end112

if.then110:                                       ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %pixfmt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pixfmt, align 8
  %mul = shl i32 %24, 2
  %25 = ptrtoint ptr %to_skip111 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mul, ptr %to_skip111, align 8
  br label %if.end112

if.end112:                                        ; preds = %if.then110, %do.end105.if.end112_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or28)
  %tobool113.not = icmp eq i32 %or28, 0
  br i1 %tobool113.not, label %if.end112.cleanup_crit_edge, label %do.end117

if.end112.cleanup_crit_edge:                      ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end117:                                        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  %call122 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %name38) #10
  br label %cleanup

do.body125:                                       ; preds = %if.end62.do.body125_crit_edge, %if.end62.do.body125_crit_edge283, %if.end62.do.body125_crit_edge284
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %26 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %26)
  %cmp126 = icmp sgt i32 %26, 4
  br i1 %cmp126, label %do.end131, label %do.body125.do.end139_crit_edge

do.body125.do.end139_crit_edge:                   ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end139

do.end131:                                        ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #9
  %call136 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %name38) #10
  br label %do.end139

do.end139:                                        ; preds = %do.end131, %do.body125.do.end139_crit_edge
  tail call void @gspca_frame_add(ptr noundef %gspca_dev, i32 noundef 3, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or28)
  %tobool140.not = icmp eq i32 %or28, 0
  br i1 %tobool140.not, label %do.end139.cleanup_crit_edge, label %do.end144

do.end139.cleanup_crit_edge:                      ; preds = %do.end139
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end144:                                        ; preds = %do.end139
  call void @__sanitizer_cov_trace_pc() #9
  %call149 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef %name38) #10
  br label %cleanup

do.body152:                                       ; preds = %if.end62
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %27 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %27)
  %cmp153 = icmp sgt i32 %27, 4
  br i1 %cmp153, label %do.end158, label %do.body152.cleanup_crit_edge

do.body152.cleanup_crit_edge:                     ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end158:                                        ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #9
  %call163 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %name38) #10
  br label %cleanup

do.body168:                                       ; preds = %if.end62
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %28 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %28)
  %cmp169 = icmp sgt i32 %28, 4
  br i1 %cmp169, label %do.end174, label %do.body168.cleanup_crit_edge

do.body168.cleanup_crit_edge:                     ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end174:                                        ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #9
  %call179 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %name38) #10
  br label %cleanup

do.body184:                                       ; preds = %if.end62
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %29 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %29)
  %cmp185 = icmp sgt i32 %29, 4
  br i1 %cmp185, label %do.end190, label %do.body184.cleanup_crit_edge

do.body184.cleanup_crit_edge:                     ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end190:                                        ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #9
  %call195 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %name38) #10
  br label %cleanup

do.body199:                                       ; preds = %if.end62
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %30 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %30)
  %cmp200 = icmp sgt i32 %30, 4
  br i1 %cmp200, label %do.end205, label %do.body199.cleanup_crit_edge

do.body199.cleanup_crit_edge:                     ; preds = %do.body199
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end205:                                        ; preds = %do.body199
  call void @__sanitizer_cov_trace_pc() #9
  %call210 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %name38, i32 noundef %or) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end205, %do.body199.cleanup_crit_edge, %do.end190, %do.body184.cleanup_crit_edge, %do.end174, %do.body168.cleanup_crit_edge, %do.end158, %do.body152.cleanup_crit_edge, %do.end144, %do.end139.cleanup_crit_edge, %do.end117, %if.end112.cleanup_crit_edge, %if.end89
  %chunk_len.1 = phi i32 [ %chunk_len.0, %if.end89 ], [ %or28, %do.end205 ], [ %or28, %do.body199.cleanup_crit_edge ], [ %or28, %do.end190 ], [ %or28, %do.body184.cleanup_crit_edge ], [ %or28, %do.end174 ], [ %or28, %do.body168.cleanup_crit_edge ], [ %or28, %do.end158 ], [ %or28, %do.body152.cleanup_crit_edge ], [ %or28, %do.end144 ], [ 0, %do.end139.cleanup_crit_edge ], [ %or28, %do.end117 ], [ 0, %if.end112.cleanup_crit_edge ]
  %len.addr.2 = phi i32 [ %len.addr.1, %if.end89 ], [ %sub, %do.end205 ], [ %sub, %do.body199.cleanup_crit_edge ], [ %sub, %do.end190 ], [ %sub, %do.body184.cleanup_crit_edge ], [ %sub, %do.end174 ], [ %sub, %do.body168.cleanup_crit_edge ], [ %sub, %do.end158 ], [ %sub, %do.body152.cleanup_crit_edge ], [ %sub, %do.end144 ], [ %sub, %do.end139.cleanup_crit_edge ], [ %sub, %do.end117 ], [ %sub, %if.end112.cleanup_crit_edge ]
  %data.addr.2 = phi ptr [ %data.addr.1, %if.end89 ], [ %add.ptr, %do.end205 ], [ %add.ptr, %do.body199.cleanup_crit_edge ], [ %add.ptr, %do.end190 ], [ %add.ptr, %do.body184.cleanup_crit_edge ], [ %add.ptr, %do.end174 ], [ %add.ptr, %do.body168.cleanup_crit_edge ], [ %add.ptr, %do.end158 ], [ %add.ptr, %do.body152.cleanup_crit_edge ], [ %add.ptr, %do.end144 ], [ %add.ptr, %do.end139.cleanup_crit_edge ], [ %add.ptr, %do.end117 ], [ %add.ptr, %if.end112.cleanup_crit_edge ]
  %add.ptr214 = getelementptr i8, ptr %data.addr.2, i32 %chunk_len.1
  %sub215 = sub i32 %len.addr.2, %chunk_len.1
  %tobool.not = icmp eq i32 %sub215, 0
  br i1 %tobool.not, label %cleanup.cleanup217_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup.cleanup217_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup217

cleanup217:                                       ; preds = %cleanup.cleanup217_crit_edge, %do.end49, %do.end11, %do.body6.cleanup217_crit_edge, %do.end3.cleanup217_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stv06xx_isoc_init(ptr nocapture noundef readonly %gspca_dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %actconfig = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %actconfig to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %actconfig, align 4
  %intf_cache = getelementptr inbounds %struct.usb_host_config, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %intf_cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf_cache, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp ult i32 %7, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %bNumEndpoints = getelementptr %struct.usb_interface_cache, ptr %5, i32 5
  %8 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp2 = icmp eq i8 %9, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %10 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sensor, align 8
  %curr_mode = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %12 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %curr_mode, align 1
  %idxprom = zext i8 %13 to i32
  %arrayidx6 = getelementptr %struct.stv06xx_sensor, ptr %11, i32 0, i32 5, i32 %idxprom
  %14 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx6, align 4
  %conv7 = trunc i32 %15 to i16
  %16 = tail call i16 @llvm.bswap.i16(i16 %conv7)
  %endpoint = getelementptr %struct.usb_interface_cache, ptr %5, i32 7
  %17 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %endpoint, align 4
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %16, ptr %wMaxPacketSize, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stv06xx_isoc_nego(ptr noundef %gspca_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %actconfig = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %actconfig to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %actconfig, align 4
  %intf_cache = getelementptr inbounds %struct.usb_host_config, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %intf_cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intf_cache, align 4
  %endpoint = getelementptr %struct.usb_interface_cache, ptr %5, i32 7
  %6 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %endpoint, align 4
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %wMaxPacketSize, align 4
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %conv = zext i16 %10 to i32
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %11 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sensor, align 8
  %curr_mode = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 18
  %13 = ptrtoint ptr %curr_mode to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %curr_mode, align 1
  %idxprom = zext i8 %14 to i32
  %arrayidx4 = getelementptr %struct.stv06xx_sensor, ptr %12, i32 0, i32 4, i32 %idxprom
  %15 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv)
  %cmp.not = icmp slt i32 %16, %conv
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add nsw i32 %conv, -100
  %17 = tail call i32 @llvm.smax.i32(i32 %sub, i32 %16)
  %conv10 = trunc i32 %17 to i16
  %18 = tail call i16 @llvm.bswap.i16(i16 %conv10)
  %19 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %wMaxPacketSize, align 4
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %iface = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 31
  %22 = ptrtoint ptr %iface to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %iface, align 1
  %conv16 = zext i8 %23 to i32
  %call = tail call i32 @usb_set_interface(ptr noundef %21, i32 noundef %conv16, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp17 = icmp slt i32 %call, 0
  br i1 %cmp17, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef %name, i32 noundef %call) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ %call, %do.end ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stv06xx_stopN(ptr noundef %gspca_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %usb_buf.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 10
  %2 = ptrtoint ptr %usb_buf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_buf.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %3, align 1
  %arrayidx10.i = getelementptr i8, ptr %3, i32 1
  %5 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx10.i, align 1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 8
  %shl.i.i = shl i32 %7, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call12.i = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or.i, i8 noundef zeroext 4, i8 noundef zeroext 64, i16 noundef zeroext 5184, i16 noundef zeroext 0, ptr noundef %3, i16 noundef zeroext 1, i32 noundef 5000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %8 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp13.i = icmp sgt i32 %8, 1
  br i1 %cmp13.i, label %do.end.i, label %entry.stv06xx_write_bridge.exit_crit_edge

entry.stv06xx_write_bridge.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %stv06xx_write_bridge.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i, i32 noundef 0, i32 noundef 5184, i32 noundef %call12.i) #10
  br label %stv06xx_write_bridge.exit

stv06xx_write_bridge.exit:                        ; preds = %do.end.i, %entry.stv06xx_write_bridge.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp = icmp slt i32 %call12.i, 0
  br i1 %cmp, label %stv06xx_write_bridge.exit.do.body_crit_edge, label %out

stv06xx_write_bridge.exit.do.body_crit_edge:      ; preds = %stv06xx_write_bridge.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

out:                                              ; preds = %stv06xx_write_bridge.exit
  %sensor = getelementptr inbounds %struct.sd, ptr %gspca_dev, i32 0, i32 1
  %9 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sensor, align 8
  %stop = getelementptr inbounds %struct.stv06xx_sensor, ptr %10, i32 0, i32 12
  %11 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %stop, align 4
  %call1 = tail call i32 %12(ptr noundef %gspca_dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %out.do.body_crit_edge, label %do.body11

out.do.body_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %out.do.body_crit_edge, %stv06xx_write_bridge.exit.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %13 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp4 = icmp sgt i32 %13, 2
  br i1 %cmp4, label %do.body.if.end25.sink.split_crit_edge, label %do.body.if.end25_crit_edge

do.body.if.end25_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

do.body.if.end25.sink.split_crit_edge:            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.sink.split

do.body11:                                        ; preds = %out
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @gspca_debug to i32))
  %14 = load i32, ptr @gspca_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp12 = icmp sgt i32 %14, 2
  br i1 %cmp12, label %do.body11.if.end25.sink.split_crit_edge, label %do.body11.if.end25_crit_edge

do.body11.if.end25_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

do.body11.if.end25.sink.split_crit_edge:          ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.sink.split

if.end25.sink.split:                              ; preds = %do.body11.if.end25.sink.split_crit_edge, %do.body.if.end25.sink.split_crit_edge
  %.str.95.sink = phi ptr [ @.str.92, %do.body.if.end25.sink.split_crit_edge ], [ @.str.95, %do.body11.if.end25.sink.split_crit_edge ]
  %name19 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 2, i32 4
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.95.sink, ptr noundef %name19) #10
  br label %if.end25

if.end25:                                         ; preds = %if.end25.sink.split, %do.body11.if.end25_crit_edge, %do.body.if.end25_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_int_pkt_scan(ptr nocapture noundef readonly %gspca_dev, ptr nocapture noundef readonly %data, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp = icmp eq i32 %len, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end23_crit_edge

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.99)
  switch i8 %1, label %land.lhs.true.land.lhs.true10_crit_edge [
    i8 -128, label %land.lhs.true.if.then_crit_edge
    i8 16, label %land.lhs.true.if.then_crit_edge33
  ]

land.lhs.true.if.then_crit_edge33:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.lhs.true.land.lhs.true10_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true10

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %land.lhs.true.if.then_crit_edge33
  %input_dev = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 4
  %3 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %4, i32 noundef 1, i32 noundef 212, i32 noundef 1) #7
  %5 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %6, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %7)
  %.pr = load i8, ptr %data, align 1
  br label %land.lhs.true10

land.lhs.true10:                                  ; preds = %if.then, %land.lhs.true.land.lhs.true10_crit_edge
  %8 = phi i8 [ %1, %land.lhs.true.land.lhs.true10_crit_edge ], [ %.pr, %if.then ]
  %ret.0.ph = phi i32 [ -22, %land.lhs.true.land.lhs.true10_crit_edge ], [ 0, %if.then ]
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.100)
  switch i8 %8, label %land.lhs.true10.if.end23_crit_edge [
    i8 -120, label %land.lhs.true10.if.then20_crit_edge
    i8 17, label %land.lhs.true10.if.then20_crit_edge34
  ]

land.lhs.true10.if.then20_crit_edge34:            ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20

land.lhs.true10.if.then20_crit_edge:              ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20

land.lhs.true10.if.end23_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then20:                                        ; preds = %land.lhs.true10.if.then20_crit_edge, %land.lhs.true10.if.then20_crit_edge34
  %input_dev21 = getelementptr inbounds %struct.gspca_dev, ptr %gspca_dev, i32 0, i32 4
  %10 = ptrtoint ptr %input_dev21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %input_dev21, align 8
  tail call void @input_event(ptr noundef %11, i32 noundef 1, i32 noundef 212, i32 noundef 0) #7
  %12 = ptrtoint ptr %input_dev21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %input_dev21, align 8
  tail call void @input_event(ptr noundef %13, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %land.lhs.true10.if.end23_crit_edge, %entry.if.end23_crit_edge
  %ret.1 = phi i32 [ 0, %if.then20 ], [ %ret.0.ph, %land.lhs.true10.if.end23_crit_edge ], [ -22, %entry.if.end23_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ifnum_to_if(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_altnum_to_altsetting(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_frame_add(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gspca_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !49, !50, !52, !54, !55, !57, !59, !61, !62, !64, !66, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !179, !181, !182, !183, !184, !186, !187, !188, !190, !191, !192, !193, !195, !196}
!llvm.module.flags = !{!197, !198, !199, !200, !201, !202, !203, !204}
!llvm.ident = !{!205}

!0 = !{ptr @__UNIQUE_ID_author303, !1, !"__UNIQUE_ID_author303", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_description304, !3, !"__UNIQUE_ID_description304", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 23, i32 1}
!4 = !{ptr @__UNIQUE_ID_file305, !5, !"__UNIQUE_ID_file305", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 24, i32 1}
!6 = !{ptr @__UNIQUE_ID_license306, !5, !"__UNIQUE_ID_license306", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 45, i32 2}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @stv06xx_write_bridge._entry, !8, !"_entry", i1 false, i1 false}
!12 = !{ptr @stv06xx_write_bridge._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 64, i32 2}
!15 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @stv06xx_read_bridge._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @stv06xx_read_bridge._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 107, i32 2}
!20 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @stv06xx_write_sensor_bytes._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @stv06xx_write_sensor_bytes._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 115, i32 4}
!25 = !{ptr @stv06xx_write_sensor_bytes._entry.7, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @stv06xx_write_sensor_bytes._entry_ptr.9, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 138, i32 2}
!29 = !{ptr @stv06xx_write_sensor_words._entry, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @stv06xx_write_sensor_words._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 148, i32 4}
!33 = !{ptr @stv06xx_write_sensor_words._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @stv06xx_write_sensor_words._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 189, i32 3}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @stv06xx_read_sensor._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @stv06xx_read_sensor._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 201, i32 2}
!42 = !{ptr @stv06xx_read_sensor._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @stv06xx_read_sensor._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @__initcall__kmod_gspca_stv06xx__307_641_sd_driver_init6, !45, !"__initcall__kmod_gspca_stv06xx__307_641_sd_driver_init6", i1 false, i1 false}
!45 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 641, i32 1}
!46 = !{ptr @__exitcall_sd_driver_exit, !45, !"__exitcall_sd_driver_exit", i1 false, i1 false}
!47 = !{ptr @__param_dump_bridge, !48, !"__param_dump_bridge", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 643, i32 1}
!49 = !{ptr @__UNIQUE_ID_dump_bridgetype308, !48, !"__UNIQUE_ID_dump_bridgetype308", i1 false, i1 false}
!50 = !{ptr @__UNIQUE_ID_dump_bridge309, !51, !"__UNIQUE_ID_dump_bridge309", i1 false, i1 false}
!51 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 644, i32 1}
!52 = !{ptr @__param_dump_sensor, !53, !"__param_dump_sensor", i1 false, i1 false}
!53 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 646, i32 1}
!54 = !{ptr @__UNIQUE_ID_dump_sensortype310, !53, !"__UNIQUE_ID_dump_sensortype310", i1 false, i1 false}
!55 = !{ptr @__UNIQUE_ID_dump_sensor311, !56, !"__UNIQUE_ID_dump_sensor311", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 647, i32 1}
!57 = !{ptr @dump_bridge, !58, !"dump_bridge", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 26, i32 13}
!59 = !{ptr @dump_sensor, !60, !"dump_sensor", i1 false, i1 false}
!60 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 27, i32 13}
!61 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.20, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 630, i32 10}
!64 = !{ptr @sd_driver, !65, !"sd_driver", i1 false, i1 false}
!65 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 629, i32 26}
!66 = !{ptr @sd_desc, !67, !"sd_desc", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 541, i32 29}
!68 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 563, i32 2}
!70 = !{ptr @.str.22, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @stv06xx_config._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @stv06xx_config._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.23, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 213, i32 2}
!75 = !{ptr @.str.24, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @stv06xx_dump_bridge._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @stv06xx_dump_bridge._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.26, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 217, i32 3}
!80 = !{ptr @stv06xx_dump_bridge._entry.25, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @stv06xx_dump_bridge._entry_ptr.27, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 220, i32 2}
!84 = !{ptr @stv06xx_dump_bridge._entry.28, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @stv06xx_dump_bridge._entry_ptr.30, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 228, i32 4}
!88 = !{ptr @stv06xx_dump_bridge._entry.31, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @stv06xx_dump_bridge._entry_ptr.33, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.35, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 230, i32 4}
!92 = !{ptr @stv06xx_dump_bridge._entry.34, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @stv06xx_dump_bridge._entry_ptr.36, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 233, i32 4}
!96 = !{ptr @stv06xx_dump_bridge._entry.37, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @stv06xx_dump_bridge._entry_ptr.39, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 245, i32 2}
!100 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @stv06xx_init._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @stv06xx_init._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.42, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 264, i32 2}
!105 = !{ptr @.str.43, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @stv06xx_init_controls._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @stv06xx_init_controls._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 281, i32 3}
!110 = !{ptr @.str.45, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @stv06xx_start._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @stv06xx_start._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.47, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 303, i32 3}
!115 = !{ptr @stv06xx_start._entry.46, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @stv06xx_start._entry_ptr.48, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.50, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 305, i32 3}
!119 = !{ptr @stv06xx_start._entry.49, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @stv06xx_start._entry_ptr.51, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.52, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 398, i32 2}
!123 = !{ptr @.str.53, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @stv06xx_pkt_scan._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @stv06xx_pkt_scan._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.55, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 406, i32 4}
!128 = !{ptr @stv06xx_pkt_scan._entry.54, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @stv06xx_pkt_scan._entry_ptr.56, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.58, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 415, i32 3}
!132 = !{ptr @stv06xx_pkt_scan._entry.57, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @stv06xx_pkt_scan._entry_ptr.59, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.61, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 422, i32 4}
!136 = !{ptr @stv06xx_pkt_scan._entry.60, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @stv06xx_pkt_scan._entry_ptr.62, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.64, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 435, i32 4}
!140 = !{ptr @stv06xx_pkt_scan._entry.63, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @stv06xx_pkt_scan._entry_ptr.65, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.67, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 454, i32 4}
!144 = !{ptr @stv06xx_pkt_scan._entry.66, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @stv06xx_pkt_scan._entry_ptr.68, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.70, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 464, i32 5}
!148 = !{ptr @stv06xx_pkt_scan._entry.69, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @stv06xx_pkt_scan._entry_ptr.71, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.73, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 470, i32 4}
!152 = !{ptr @stv06xx_pkt_scan._entry.72, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @stv06xx_pkt_scan._entry_ptr.74, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.76, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 477, i32 5}
!156 = !{ptr @stv06xx_pkt_scan._entry.75, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @stv06xx_pkt_scan._entry_ptr.77, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.79, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 481, i32 4}
!160 = !{ptr @stv06xx_pkt_scan._entry.78, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @stv06xx_pkt_scan._entry_ptr.80, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.82, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 488, i32 4}
!164 = !{ptr @stv06xx_pkt_scan._entry.81, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @stv06xx_pkt_scan._entry_ptr.83, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.85, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 493, i32 4}
!168 = !{ptr @stv06xx_pkt_scan._entry.84, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @stv06xx_pkt_scan._entry_ptr.86, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.88, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 497, i32 4}
!172 = !{ptr @stv06xx_pkt_scan._entry.87, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @stv06xx_pkt_scan._entry_ptr.89, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.90, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 356, i32 3}
!176 = !{ptr @.str.91, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @stv06xx_isoc_nego._entry, !175, !"_entry", i1 false, i1 false}
!178 = !{ptr @stv06xx_isoc_nego._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.92, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 375, i32 3}
!181 = !{ptr @.str.93, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @stv06xx_stopN._entry, !180, !"_entry", i1 false, i1 false}
!183 = !{ptr @stv06xx_stopN._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.95, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 377, i32 3}
!186 = !{ptr @stv06xx_stopN._entry.94, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @stv06xx_stopN._entry_ptr.96, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.97, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 622, i32 2}
!190 = !{ptr @.str.98, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @sd_disconnect._entry, !189, !"_entry", i1 false, i1 false}
!192 = !{ptr @sd_disconnect._entry_ptr, !189, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @device_table, !194, !"device_table", i1 false, i1 false}
!194 = !{!"../drivers/media/usb/gspca/stv06xx/stv06xx.c", i32 598, i32 35}
!195 = !{ptr @__param_str_dump_bridge, !48, !"__param_str_dump_bridge", i1 false, i1 false}
!196 = !{ptr @__param_str_dump_sensor, !53, !"__param_str_dump_sensor", i1 false, i1 false}
!197 = !{i32 1, !"wchar_size", i32 2}
!198 = !{i32 1, !"min_enum_size", i32 4}
!199 = !{i32 8, !"branch-target-enforcement", i32 0}
!200 = !{i32 8, !"sign-return-address", i32 0}
!201 = !{i32 8, !"sign-return-address-all", i32 0}
!202 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!203 = !{i32 7, !"uwtable", i32 1}
!204 = !{i32 7, !"frame-pointer", i32 2}
!205 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!206 = !{i8 0, i8 2}
