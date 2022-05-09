; ModuleID = '/llk/IR_all_yes/drivers/media/radio/si4713/radio-usb-si4713.c_pt.bc'
source_filename = "../drivers/media/radio/si4713/radio-usb-si4713.c"
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
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.si4713_start_seq_table = type { i32, [8 x i8] }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.si4713_command_table = type { i32, [8 x i8] }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.si4713_usb_device = type { ptr, ptr, %struct.video_device, %struct.v4l2_device, ptr, %struct.mutex, %struct.i2c_adapter, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.v4l2_subdev_tuner_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_author297 = internal constant [56 x i8] c"radio_usb_si4713.author=Dinesh Ram <dinesh.ram@cern.ch>\00", section ".modinfo", align 1
@__UNIQUE_ID_description298 = internal constant [62 x i8] c"radio_usb_si4713.description=Si4713 FM Transmitter USB driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [66 x i8] c"radio_usb_si4713.file=drivers/media/radio/si4713/radio-usb-si4713\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [32 x i8] c"radio_usb_si4713.license=GPL v2\00", section ".modinfo", align 1
@__initcall__kmod_radio_usb_si4713__301_522_usb_si4713_driver_init6 = internal global ptr @usb_si4713_driver_init, section ".initcall6.init", align 4
@usb_si4713_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @usb_si4713_probe, ptr @usb_si4713_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usb_si4713_usb_device_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_usb_si4713_driver_exit = internal global ptr @usb_si4713_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"radio_usb_si4713\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"radio-usb-si4713\00", [47 x i8] zeroinitializer }, align 32
@usb_si4713_usb_device_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 899, i16 4292, i16 -32188, i16 0, i16 0, i8 0, i8 0, i8 0, i8 3, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@usb_si4713_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 420, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Si4713 development board discovered: (%04X:%04X)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"usb_si4713_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/media/radio/si4713/radio-usb-si4713.c\00", [50 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usb_si4713_probe._entry_ptr = internal global ptr @usb_si4713_probe._entry, section ".printk_index", align 4
@usb_si4713_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 428, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"kmalloc for si4713_usb_device failed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@usb_si4713_probe._entry_ptr.10 = internal global ptr @usb_si4713_probe._entry.7, section ".printk_index", align 4
@usb_si4713_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&radio->lock\00", [19 x i8] zeroinitializer }, align 32
@usb_si4713_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 445, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"couldn't register v4l2_device\0A\00", [33 x i8] zeroinitializer }, align 32
@usb_si4713_probe._entry_ptr.14 = internal global ptr @usb_si4713_probe._entry.12, section ".printk_index", align 4
@usb_si4713_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 451, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"could not register i2c device\0A\00", [33 x i8] zeroinitializer }, align 32
@usb_si4713_probe._entry_ptr.17 = internal global ptr @usb_si4713_probe._entry.15, section ".printk_index", align 4
@si4713_board_info = internal global { %struct.i2c_board_info, [40 x i8] } { %struct.i2c_board_info { [20 x i8] c"si4713\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 99, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@usb_si4713_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 460, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cannot get v4l2 subdevice\0A\00", [37 x i8] zeroinitializer }, align 32
@usb_si4713_probe._entry_ptr.20 = internal global ptr @usb_si4713_probe._entry.18, section ".printk_index", align 4
@usb_si4713_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @v4l2_ctrl_poll, ptr @video_ioctl2, ptr null, ptr null, ptr @v4l2_fh_open, ptr @v4l2_fh_release }, [60 x i8] zeroinitializer }, align 32
@usb_si4713_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vidioc_querycap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_modulator, ptr @vidioc_s_modulator, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_frequency, ptr @vidioc_s_frequency, ptr null, ptr null, ptr @v4l2_ctrl_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@usb_si4713_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 481, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"could not register video device\0A\00", [63 x i8] zeroinitializer }, align 32
@usb_si4713_probe._entry_ptr.23 = internal global ptr @usb_si4713_probe._entry.21, section ".printk_index", align 4
@usb_si4713_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 486, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"V4L2 device registered as %s\0A\00", [34 x i8] zeroinitializer }, align 32
@usb_si4713_probe._entry_ptr.26 = internal global ptr @usb_si4713_probe._entry.24, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@start_seq = internal constant { [23 x %struct.si4713_start_seq_table], [76 x i8] } { [23 x %struct.si4713_start_seq_table] [%struct.si4713_start_seq_table { i32 1, [8 x i8] c"\03\00\00\00\00\00\00\00" }, %struct.si4713_start_seq_table { i32 2, [8 x i8] c"2\7F\00\00\00\00\00\00" }, %struct.si4713_start_seq_table { i32 6, [8 x i8] c"\06\03\03\08\01\0F\00\00" }, %struct.si4713_start_seq_table { i32 2, [8 x i8] c"\14\02\00\00\00\00\00\00" }, %struct.si4713_start_seq_table { i32 2, [8 x i8] c"\09\90\00\00\00\00\00\00" }, %struct.si4713_start_seq_table { i32 3, [8 x i8] c"\08\90\FA\00\00\00\00\00" }, %struct.si4713_start_seq_table { i32 2, [8 x i8] c"6\01\00\00\00\00\00\00" }, %struct.si4713_start_seq_table { i32 2, [8 x i8] c"\05\03\00\00\00\00\00\00" }, %struct.si4713_start_seq_table { i32 7, [8 x i8] c"\06\00\06\0E\01\0F\05\00" }, %struct.si4713_start_seq_table { i32 1, [8 x i8] c"\12\00\00\00\00\00\00\00" }, %struct.si4713_start_seq_table { i32 1, [8 x i8] c"\03\00\00\00\00\00\00\00" }, %struct.si4713_start_seq_table { i32 1, [8 x i8] c"\01\00\00\00\00\00\00\00" }, %struct.si4713_start_seq_table { i32 2, [8 x i8] c"\09\90\00\00\00\00\00\00" }, %struct.si4713_start_seq_table { i32 3, [8 x i8] c"\08\90\FA\00\00\00\00\00" }, %struct.si4713_start_seq_table { i32 1, [8 x i8] c"4\00\00\00\00\00\00\00" }, %struct.si4713_start_seq_table { i32 2, [8 x i8] c"5\01\00\00\00\00\00\00" }, %struct.si4713_start_seq_table { i32 2, [8 x i8] c"6\01\00\00\00\00\00\00" }, %struct.si4713_start_seq_table { i32 2, [8 x i8] c"0\09\00\00\00\00\00\00" }, %struct.si4713_start_seq_table { i32 4, [8 x i8] c"0\06\00\E2\00\00\00\00" }, %struct.si4713_start_seq_table { i32 3, [8 x i8] c"1\010\00\00\00\00\00" }, %struct.si4713_start_seq_table { i32 3, [8 x i8] c"1\04\09\00\00\00\00\00" }, %struct.si4713_start_seq_table { i32 2, [8 x i8] c"\05\02\00\00\00\00\00\00" }, %struct.si4713_start_seq_table { i32 6, [8 x i8] c"\06\03\03\08\01\0F\00\00" }], [76 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@si4713_i2c_adapter_template = internal constant { %struct.i2c_adapter, [336 x i8] } { %struct.i2c_adapter { ptr null, i32 0, ptr @si4713_algo, ptr null, ptr null, %struct.rt_mutex zeroinitializer, %struct.rt_mutex zeroinitializer, i32 0, i32 0, %struct.device zeroinitializer, i32 0, i32 0, [48 x i8] c"si4713-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.completion zeroinitializer, %struct.mutex zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null }, [336 x i8] zeroinitializer }, align 32
@si4713_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @si4713_transfer, ptr null, ptr null, ptr null, ptr @si4713_functionality, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@command_table = internal constant { [13 x %struct.si4713_command_table], [36 x i8] } { [13 x %struct.si4713_command_table] [%struct.si4713_command_table { i32 1, [8 x i8] c"\00\03\01\00\00\00\00\00" }, %struct.si4713_command_table { i32 16, [8 x i8] c"\03\01\09\00\00\00\00\00" }, %struct.si4713_command_table { i32 17, [8 x i8] c"\00\01\01\00\00\00\00\00" }, %struct.si4713_command_table { i32 18, [8 x i8] c"\00\06\01\00\00\00\00\00" }, %struct.si4713_command_table { i32 19, [8 x i8] c"\00\04\04\00\00\00\00\00" }, %struct.si4713_command_table { i32 48, [8 x i8] c"\03\04\01\00\00\00\00\00" }, %struct.si4713_command_table { i32 49, [8 x i8] c"\03\05\01\00\00\00\00\00" }, %struct.si4713_command_table { i32 50, [8 x i8] c"\03\05\01\00\00\00\00\00" }, %struct.si4713_command_table { i32 51, [8 x i8] c"\00\02\08\00\00\00\00\00" }, %struct.si4713_command_table { i32 52, [8 x i8] c"\03\02\05\00\00\00\00\00" }, %struct.si4713_command_table { i32 20, [8 x i8] c"\03\01\01\00\00\00\00\00" }, %struct.si4713_command_table { i32 53, [8 x i8] c"\03\08\06\00\00\00\00\00" }, %struct.si4713_command_table { i32 54, [8 x i8] c"\00\06\01\00\00\00\00\00" }], [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Si4713 FM Transmitter\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@usb_si4713_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 504, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Si4713 development board now disconnected\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usb_si4713_disconnect\00", [42 x i8] zeroinitializer }, align 32
@usb_si4713_disconnect._entry_ptr = internal global ptr @usb_si4713_disconnect._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 6, i64 18, i64 20, i64 50]
@___asan_gen_.31 = private unnamed_addr constant [18 x i8] c"usb_si4713_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 515, i32 26 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 522, i32 1 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 516, i32 12 }
@___asan_gen_.40 = private unnamed_addr constant [28 x i8] c"usb_si4713_usb_device_table\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 40, i32 35 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 419, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 428, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 433, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 445, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 451, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [18 x i8] c"si4713_board_info\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 259, i32 30 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 460, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [16 x i8] c"usb_si4713_fops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 120, i32 42 }
@___asan_gen_.100 = private unnamed_addr constant [21 x i8] c"usb_si4713_ioctl_ops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 108, i32 36 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 481, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 485, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [10 x i8] c"start_seq\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 211, i32 44 }
@___asan_gen_.118 = private unnamed_addr constant [28 x i8] c"si4713_i2c_adapter_template\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 394, i32 33 }
@___asan_gen_.121 = private unnamed_addr constant [12 x i8] c"si4713_algo\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 387, i32 35 }
@___asan_gen_.124 = private unnamed_addr constant [14 x i8] c"command_table\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 276, i32 36 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 71, i32 19 }
@___asan_gen_.131 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 912, i32 31 }
@___asan_gen_.133 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.140 = private constant [49 x i8] c"../drivers/media/radio/si4713/radio-usb-si4713.c\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 504, i32 2 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_usb_si4713_driver_exit, ptr @__initcall__kmod_radio_usb_si4713__301_522_usb_si4713_driver_init6, ptr @usb_si4713_disconnect._entry, ptr @usb_si4713_disconnect._entry_ptr, ptr @usb_si4713_driver_exit, ptr @usb_si4713_probe._entry, ptr @usb_si4713_probe._entry.12, ptr @usb_si4713_probe._entry.15, ptr @usb_si4713_probe._entry.18, ptr @usb_si4713_probe._entry.21, ptr @usb_si4713_probe._entry.24, ptr @usb_si4713_probe._entry.7, ptr @usb_si4713_probe._entry_ptr, ptr @usb_si4713_probe._entry_ptr.10, ptr @usb_si4713_probe._entry_ptr.14, ptr @usb_si4713_probe._entry_ptr.17, ptr @usb_si4713_probe._entry_ptr.20, ptr @usb_si4713_probe._entry_ptr.23, ptr @usb_si4713_probe._entry_ptr.26, ptr @usb_si4713_driver, ptr @.str, ptr @.str.1, ptr @usb_si4713_usb_device_table, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @usb_si4713_probe.__key, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @si4713_board_info, ptr @.str.19, ptr @usb_si4713_fops, ptr @usb_si4713_ioctl_ops, ptr @.str.22, ptr @.str.25, ptr @start_seq, ptr @si4713_i2c_adapter_template, ptr @si4713_algo, ptr @command_table, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_si4713_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_si4713_usb_device_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_si4713_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_si4713_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_si4713_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_si4713_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_si4713_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si4713_board_info to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_si4713_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_si4713_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_si4713_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_si4713_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_si4713_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_seq to i32), i32 276, i32 352, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si4713_i2c_adapter_template to i32), i32 1360, i32 1696, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si4713_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @command_table to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_si4713_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_si4713_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @usb_si4713_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usb_si4713_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_deregister(ptr noundef nonnull @usb_si4713_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_si4713_probe(ptr noundef %intf, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %idVendor = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 1
  %0 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %idVendor, align 2
  %conv = zext i16 %1 to i32
  %idProduct = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 2
  %2 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %idProduct, align 4
  %conv2 = zext i16 %3 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %conv, i32 noundef %conv2) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 2952) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %if.then

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 64) #12
  %buffer = getelementptr inbounds %struct.si4713_usb_device, ptr %call7.i.i, i32 0, i32 7
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i, ptr %buffer, align 8
  %tobool6.not = icmp eq ptr %call7.i, null
  br i1 %tobool6.not, label %if.then.do.end10_crit_edge, label %do.body13

if.then.do.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10

do.end10:                                         ; preds = %if.then.do.end10_crit_edge, %entry.do.end10_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #11
  tail call void @kfree(ptr noundef %call7.i.i) #8
  br label %cleanup

do.body13:                                        ; preds = %if.then
  %lock = getelementptr inbounds %struct.si4713_usb_device, ptr %call7.i.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @usb_si4713_probe.__key) #8
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %8, i32 -128
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr.i, ptr %call7.i.i, align 8
  %intf17 = getelementptr inbounds %struct.si4713_usb_device, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %intf17 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %intf, ptr %intf17, align 4
  %v4l2_dev = getelementptr inbounds %struct.si4713_usb_device, ptr %call7.i.i, i32 0, i32 3
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %v4l2_dev, ptr %driver_data.i.i, align 4
  %12 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buffer, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 63, ptr %13, align 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.backedge, %do.body13
  %i.018.i = phi i32 [ 0, %do.body13 ], [ %i.018.i.be, %for.body.i.backedge ]
  %arrayidx2.i = getelementptr [23 x %struct.si4713_start_seq_table], ptr @start_seq, i32 0, i32 %i.018.i
  %15 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx2.i, align 4
  %payload5.i = getelementptr [23 x %struct.si4713_start_seq_table], ptr @start_seq, i32 0, i32 %i.018.i, i32 1
  %17 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buffer, align 8
  %add.ptr.i144 = getelementptr i8, ptr %18, i32 1
  %19 = call ptr @memcpy(ptr %add.ptr.i144, ptr %payload5.i, i32 %16)
  %20 = load ptr, ptr %buffer, align 8
  %add.ptr8.i = getelementptr i8, ptr %20, i32 1
  %add.ptr9.i = getelementptr i8, ptr %add.ptr8.i, i32 %16
  %sub.i = sub i32 63, %16
  %21 = call ptr @memset(ptr %add.ptr9.i, i32 0, i32 %sub.i)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %call.i.i.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000, i32 %call.i.i.i)
  %cmp.i.i.i = icmp ult i32 %call.i.i.i, 50000
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 1073741822, i32 5
  %23 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buffer, align 8
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call7.i.i, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 8
  %shl.i.i.i = shl i32 %28, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call7.i.i145 = tail call i32 @usb_control_msg(ptr noundef %26, i32 noundef %or.i.i, i8 noundef zeroext 9, i8 noundef zeroext 33, i16 noundef zeroext 831, i16 noundef zeroext 0, ptr noundef %24, i16 noundef zeroext 64, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i145)
  %cmp.i.i = icmp slt i32 %call7.i.i145, 0
  br i1 %cmp.i.i, label %for.body.i.si4713_send_startup_command.exit.i_crit_edge, label %for.cond.preheader.i.i

for.body.i.si4713_send_startup_command.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %si4713_send_startup_command.exit.i

for.cond.preheader.i.i:                           ; preds = %for.body.i
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call7.i.i, align 8
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 8
  %shl.i6970.i.i = shl i32 %32, 8
  %or1271.i.i = or i32 %shl.i6970.i.i, -2147483520
  %33 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %buffer, align 8
  %call1472.i.i = tail call i32 @usb_control_msg(ptr noundef %30, i32 noundef %or1271.i.i, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext 831, i16 noundef zeroext 0, ptr noundef %34, i16 noundef zeroext 64, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1472.i.i)
  %cmp1573.i.i = icmp slt i32 %call1472.i.i, 0
  br i1 %cmp1573.i.i, label %for.cond.preheader.i.i.si4713_send_startup_command.exit.i_crit_edge, label %if.end17.lr.ph.i.i

for.cond.preheader.i.i.si4713_send_startup_command.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %si4713_send_startup_command.exit.i

if.end17.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %arrayidx20.i.i = getelementptr i8, ptr %24, i32 1
  %add.i.i = add i32 %22, 1
  %add1.i.i = add i32 %add.i.i, %spec.select.i.i.i
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.end52.i.i.if.end17.i.i_crit_edge, %if.end17.lr.ph.i.i
  %35 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buffer, align 8
  %arrayidx.i.i = getelementptr i8, ptr %36, i32 1
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i.i = icmp eq i8 %38, 0
  br i1 %tobool.not.i.i, label %if.then19.i.i, label %if.end17.i.i.if.end48.i.i_crit_edge

if.end17.i.i.if.end48.i.i_crit_edge:              ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48.i.i

if.then19.i.i:                                    ; preds = %if.end17.i.i
  %39 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx20.i.i, align 1
  %41 = zext i8 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values)
  switch i8 %40, label %if.then19.i.i.si4713_send_startup_command.exit.i_crit_edge [
    i8 50, label %sw.bb.i.i
    i8 20, label %if.then19.i.i.sw.bb28.i.i_crit_edge
    i8 18, label %if.then19.i.i.sw.bb28.i.i_crit_edge158
    i8 6, label %sw.bb35.i.i
  ]

if.then19.i.i.sw.bb28.i.i_crit_edge158:           ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb28.i.i

if.then19.i.i.sw.bb28.i.i_crit_edge:              ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb28.i.i

if.then19.i.i.si4713_send_startup_command.exit.i_crit_edge: ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %si4713_send_startup_command.exit.i

sw.bb.i.i:                                        ; preds = %if.then19.i.i
  %arrayidx22.i.i = getelementptr i8, ptr %36, i32 2
  %42 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx22.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp24.i.i = icmp eq i8 %43, 0
  br i1 %cmp24.i.i, label %sw.bb.i.i.si4713_send_startup_command.exit.i_crit_edge, label %sw.bb.i.i.if.end48.i.i_crit_edge

sw.bb.i.i.if.end48.i.i_crit_edge:                 ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48.i.i

sw.bb.i.i.si4713_send_startup_command.exit.i_crit_edge: ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %si4713_send_startup_command.exit.i

sw.bb28.i.i:                                      ; preds = %if.then19.i.i.sw.bb28.i.i_crit_edge, %if.then19.i.i.sw.bb28.i.i_crit_edge158
  %arrayidx30.i.i = getelementptr i8, ptr %36, i32 2
  %44 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx30.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %45)
  %tobool32.not.i.i = icmp sgt i8 %45, -1
  br i1 %tobool32.not.i.i, label %sw.bb28.i.i.if.end48.i.i_crit_edge, label %sw.bb28.i.i.si4713_send_startup_command.exit.i_crit_edge

sw.bb28.i.i.si4713_send_startup_command.exit.i_crit_edge: ; preds = %sw.bb28.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %si4713_send_startup_command.exit.i

sw.bb28.i.i.if.end48.i.i_crit_edge:               ; preds = %sw.bb28.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48.i.i

sw.bb35.i.i:                                      ; preds = %if.then19.i.i
  %arrayidx37.i.i = getelementptr i8, ptr %36, i32 2
  %46 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx37.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %47)
  %tobool40.not.i.i = icmp sgt i8 %47, -1
  br i1 %tobool40.not.i.i, label %sw.bb35.i.i.if.end48.i.i_crit_edge, label %land.lhs.true.i.i

sw.bb35.i.i.if.end48.i.i_crit_edge:               ; preds = %sw.bb35.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb35.i.i
  %arrayidx42.i.i = getelementptr i8, ptr %36, i32 9
  %48 = ptrtoint ptr %arrayidx42.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx42.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %49)
  %cmp44.i.i = icmp eq i8 %49, 8
  br i1 %cmp44.i.i, label %land.lhs.true.i.i.si4713_send_startup_command.exit.i_crit_edge, label %land.lhs.true.i.i.if.end48.i.i_crit_edge

land.lhs.true.i.i.if.end48.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48.i.i

land.lhs.true.i.i.si4713_send_startup_command.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %si4713_send_startup_command.exit.i

if.end48.i.i:                                     ; preds = %land.lhs.true.i.i.if.end48.i.i_crit_edge, %sw.bb35.i.i.if.end48.i.i_crit_edge, %sw.bb28.i.i.if.end48.i.i_crit_edge, %sw.bb.i.i.if.end48.i.i_crit_edge, %if.end17.i.i.if.end48.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %50 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add1.i.i, %50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp49.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp49.i.i, label %si4713_send_startup_command.exit.i.thread, label %if.end52.i.i

if.end52.i.i:                                     ; preds = %if.end48.i.i
  tail call void @msleep(i32 noundef 3) #8
  %51 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call7.i.i, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 8
  %shl.i69.i.i = shl i32 %54, 8
  %or12.i.i = or i32 %shl.i69.i.i, -2147483520
  %55 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %buffer, align 8
  %call14.i.i = tail call i32 @usb_control_msg(ptr noundef %52, i32 noundef %or12.i.i, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext 831, i16 noundef zeroext 0, ptr noundef %56, i16 noundef zeroext 64, i32 noundef 1000) #8
  %cmp15.i.i = icmp slt i32 %call14.i.i, 0
  br i1 %cmp15.i.i, label %if.end52.i.i.si4713_send_startup_command.exit.i_crit_edge, label %if.end52.i.i.if.end17.i.i_crit_edge

if.end52.i.i.if.end17.i.i_crit_edge:              ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i.i

if.end52.i.i.si4713_send_startup_command.exit.i_crit_edge: ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %si4713_send_startup_command.exit.i

si4713_send_startup_command.exit.i:               ; preds = %if.end52.i.i.si4713_send_startup_command.exit.i_crit_edge, %land.lhs.true.i.i.si4713_send_startup_command.exit.i_crit_edge, %sw.bb28.i.i.si4713_send_startup_command.exit.i_crit_edge, %sw.bb.i.i.si4713_send_startup_command.exit.i_crit_edge, %if.then19.i.i.si4713_send_startup_command.exit.i_crit_edge, %for.cond.preheader.i.i.si4713_send_startup_command.exit.i_crit_edge, %for.body.i.si4713_send_startup_command.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call7.i.i145, %for.body.i.si4713_send_startup_command.exit.i_crit_edge ], [ %call1472.i.i, %for.cond.preheader.i.i.si4713_send_startup_command.exit.i_crit_edge ], [ %call14.i.i, %if.end52.i.i.si4713_send_startup_command.exit.i_crit_edge ], [ 0, %sw.bb.i.i.si4713_send_startup_command.exit.i_crit_edge ], [ 0, %sw.bb28.i.i.si4713_send_startup_command.exit.i_crit_edge ], [ 0, %land.lhs.true.i.i.si4713_send_startup_command.exit.i_crit_edge ], [ 0, %if.then19.i.i.si4713_send_startup_command.exit.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.018.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 23
  br i1 %exitcond.not.i, label %si4713_start_seq.exit, label %si4713_send_startup_command.exit.i.for.body.i.backedge_crit_edge

si4713_send_startup_command.exit.i.for.body.i.backedge_crit_edge: ; preds = %si4713_send_startup_command.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.backedge

for.body.i.backedge:                              ; preds = %si4713_send_startup_command.exit.i.thread.for.body.i.backedge_crit_edge, %si4713_send_startup_command.exit.i.for.body.i.backedge_crit_edge
  %i.018.i.be = phi i32 [ %inc.i, %si4713_send_startup_command.exit.i.for.body.i.backedge_crit_edge ], [ %inc.i153, %si4713_send_startup_command.exit.i.thread.for.body.i.backedge_crit_edge ]
  br label %for.body.i

si4713_send_startup_command.exit.i.thread:        ; preds = %if.end48.i.i
  %inc.i153 = add nuw nsw i32 %i.018.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %inc.i153)
  %exitcond.not.i154 = icmp eq i32 %inc.i153, 23
  br i1 %exitcond.not.i154, label %si4713_send_startup_command.exit.i.thread.err_v4l2_crit_edge, label %si4713_send_startup_command.exit.i.thread.for.body.i.backedge_crit_edge

si4713_send_startup_command.exit.i.thread.for.body.i.backedge_crit_edge: ; preds = %si4713_send_startup_command.exit.i.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.backedge

si4713_send_startup_command.exit.i.thread.err_v4l2_crit_edge: ; preds = %si4713_send_startup_command.exit.i.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_v4l2

si4713_start_seq.exit:                            ; preds = %si4713_send_startup_command.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp, label %si4713_start_seq.exit.err_v4l2_crit_edge, label %if.end21

si4713_start_seq.exit.err_v4l2_crit_edge:         ; preds = %si4713_start_seq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_v4l2

if.end21:                                         ; preds = %si4713_start_seq.exit
  %call24 = tail call i32 @v4l2_device_register(ptr noundef %dev, ptr noundef %v4l2_dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %do.end30, label %if.end32

do.end30:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #11
  br label %err_v4l2

if.end32:                                         ; preds = %if.end21
  %i2c_adapter.i = getelementptr inbounds %struct.si4713_usb_device, ptr %call7.i.i, i32 0, i32 6
  %57 = call ptr @memcpy(ptr %i2c_adapter.i, ptr @si4713_i2c_adapter_template, i32 1360)
  %58 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call7.i.i, align 8
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %59, i32 0, i32 15
  %parent.i146 = getelementptr inbounds %struct.si4713_usb_device, ptr %call7.i.i, i32 0, i32 6, i32 9, i32 1
  %60 = ptrtoint ptr %parent.i146 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %dev.i, ptr %parent.i146, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.si4713_usb_device, ptr %call7.i.i, i32 0, i32 6, i32 9, i32 8
  %61 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call7.i.i, ptr %driver_data.i.i.i, align 4
  %call.i = tail call i32 @i2c_add_adapter(ptr noundef %i2c_adapter.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp34 = icmp slt i32 %call.i, 0
  br i1 %cmp34, label %do.end39, label %if.end41

do.end39:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #11
  br label %err_i2cdev

if.end41:                                         ; preds = %if.end32
  %call43 = tail call ptr @v4l2_i2c_new_subdev_board(ptr noundef %v4l2_dev, ptr noundef %i2c_adapter.i, ptr noundef nonnull @si4713_board_info, ptr noundef null) #8
  %v4l2_subdev = getelementptr inbounds %struct.si4713_usb_device, ptr %call7.i.i, i32 0, i32 4
  %62 = ptrtoint ptr %v4l2_subdev to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call43, ptr %v4l2_subdev, align 8
  %tobool44.not = icmp eq ptr %call43, null
  br i1 %tobool44.not, label %if.end41.del_adapter_crit_edge, label %if.end50

if.end41.del_adapter_crit_edge:                   ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %del_adapter

if.end50:                                         ; preds = %if.end41
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call43, i32 0, i32 8
  %63 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ctrl_handler, align 4
  %vdev = getelementptr inbounds %struct.si4713_usb_device, ptr %call7.i.i, i32 0, i32 2
  %ctrl_handler51 = getelementptr inbounds %struct.si4713_usb_device, ptr %call7.i.i, i32 0, i32 2, i32 9
  %65 = ptrtoint ptr %ctrl_handler51 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %64, ptr %ctrl_handler51, align 4
  %release = getelementptr inbounds %struct.si4713_usb_device, ptr %call7.i.i, i32 0, i32 3, i32 9
  %66 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @usb_si4713_video_device_release, ptr %release, align 4
  %name = getelementptr inbounds %struct.si4713_usb_device, ptr %call7.i.i, i32 0, i32 2, i32 12
  %name55 = getelementptr inbounds %struct.si4713_usb_device, ptr %call7.i.i, i32 0, i32 3, i32 4
  %call57 = tail call i32 @strscpy(ptr noundef %name, ptr noundef %name55, i32 noundef 32) #8
  %v4l2_dev60 = getelementptr inbounds %struct.si4713_usb_device, ptr %call7.i.i, i32 0, i32 2, i32 7
  %67 = ptrtoint ptr %v4l2_dev60 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %v4l2_dev, ptr %v4l2_dev60, align 4
  %fops = getelementptr inbounds %struct.si4713_usb_device, ptr %call7.i.i, i32 0, i32 2, i32 3
  %68 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @usb_si4713_fops, ptr %fops, align 4
  %ioctl_ops = getelementptr inbounds %struct.si4713_usb_device, ptr %call7.i.i, i32 0, i32 2, i32 24
  %69 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @usb_si4713_ioctl_ops, ptr %ioctl_ops, align 4
  %lock65 = getelementptr inbounds %struct.si4713_usb_device, ptr %call7.i.i, i32 0, i32 2, i32 26
  %70 = ptrtoint ptr %lock65 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %lock, ptr %lock65, align 8
  %release67 = getelementptr inbounds %struct.si4713_usb_device, ptr %call7.i.i, i32 0, i32 2, i32 23
  %71 = ptrtoint ptr %release67 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @video_device_release_empty, ptr %release67, align 8
  %vfl_dir = getelementptr inbounds %struct.si4713_usb_device, ptr %call7.i.i, i32 0, i32 2, i32 14
  %72 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 1, ptr %vfl_dir, align 4
  %device_caps = getelementptr inbounds %struct.si4713_usb_device, ptr %call7.i.i, i32 0, i32 2, i32 4
  %73 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 526336, ptr %device_caps, align 8
  %driver_data.i.i147 = getelementptr inbounds %struct.si4713_usb_device, ptr %call7.i.i, i32 0, i32 2, i32 5, i32 8
  %74 = ptrtoint ptr %driver_data.i.i147 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call7.i.i, ptr %driver_data.i.i147, align 4
  %call.i148 = tail call i32 @__video_register_device(ptr noundef %vdev, i32 noundef 2, i32 noundef -1, i32 noundef 1, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i148)
  %cmp73 = icmp slt i32 %call.i148, 0
  br i1 %cmp73, label %if.end50.del_adapter_crit_edge, label %do.end83

if.end50.del_adapter_crit_edge:                   ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %del_adapter

do.end83:                                         ; preds = %if.end50
  %init_name.i.i = getelementptr inbounds %struct.si4713_usb_device, ptr %call7.i.i, i32 0, i32 2, i32 5, i32 3
  %75 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i149 = icmp eq ptr %76, null
  br i1 %tobool.not.i.i149, label %if.end.i.i, label %do.end83.video_device_node_name.exit_crit_edge

do.end83.video_device_node_name.exit_crit_edge:   ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %video_device_node_name.exit

if.end.i.i:                                       ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i150 = getelementptr inbounds %struct.si4713_usb_device, ptr %call7.i.i, i32 0, i32 2, i32 5
  %77 = ptrtoint ptr %dev.i150 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev.i150, align 8
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i, %do.end83.video_device_node_name.exit_crit_edge
  %retval.0.i.i151 = phi ptr [ %78, %if.end.i.i ], [ %76, %do.end83.video_device_node_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef %retval.0.i.i151) #11
  br label %cleanup

del_adapter:                                      ; preds = %if.end50.del_adapter_crit_edge, %if.end41.del_adapter_crit_edge
  %.str.22.sink = phi ptr [ @.str.19, %if.end41.del_adapter_crit_edge ], [ @.str.22, %if.end50.del_adapter_crit_edge ]
  %retval1.0 = phi i32 [ -19, %if.end41.del_adapter_crit_edge ], [ %call.i148, %if.end50.del_adapter_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.22.sink) #11
  tail call void @i2c_del_adapter(ptr noundef %i2c_adapter.i) #8
  br label %err_i2cdev

err_i2cdev:                                       ; preds = %del_adapter, %do.end39
  %retval1.1 = phi i32 [ %call.i, %do.end39 ], [ %retval1.0, %del_adapter ]
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #8
  br label %err_v4l2

err_v4l2:                                         ; preds = %err_i2cdev, %do.end30, %si4713_start_seq.exit.err_v4l2_crit_edge, %si4713_send_startup_command.exit.i.thread.err_v4l2_crit_edge
  %retval1.2 = phi i32 [ %retval.0.i.i, %si4713_start_seq.exit.err_v4l2_crit_edge ], [ %call24, %do.end30 ], [ %retval1.1, %err_i2cdev ], [ -5, %si4713_send_startup_command.exit.i.thread.err_v4l2_crit_edge ]
  %79 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %buffer, align 8
  tail call void @kfree(ptr noundef %80) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_v4l2, %video_device_node_name.exit, %do.end10
  %retval.0 = phi i32 [ %retval1.2, %err_v4l2 ], [ 0, %video_device_node_name.exit ], [ -12, %do.end10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_si4713_disconnect(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.29) #11
  %lock = getelementptr i8, ptr %1, i32 132
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i.i, align 4
  %vdev = getelementptr i8, ptr %1, i32 -1352
  tail call void @video_unregister_device(ptr noundef %vdev) #8
  tail call void @v4l2_device_disconnect(ptr noundef %1) #8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  %call4 = tail call i32 @v4l2_device_put(ptr noundef %1) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_i2c_new_subdev_board(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_si4713_video_device_release(ptr noundef %v4l2_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %v4l2_dev, i32 -1360
  %i2c_adapter = getelementptr i8, ptr %v4l2_dev, i32 224
  tail call void @i2c_del_adapter(ptr noundef %i2c_adapter) #8
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #8
  %buffer = getelementptr i8, ptr %v4l2_dev, i32 1584
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer, align 8
  tail call void @kfree(ptr noundef %1) #8
  tail call void @kfree(ptr noundef %add.ptr.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si4713_transfer(ptr nocapture noundef readonly %i2c_adapter, ptr nocapture noundef readonly %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adapter, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp47 = icmp sgt i32 %num, 0
  br i1 %cmp47, label %for.body.lr.ph, label %entry.for.end.thread_crit_edge

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

for.body.lr.ph:                                   ; preds = %entry
  %buffer.i = getelementptr inbounds %struct.si4713_usb_device, ptr %1, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.048 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.048, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 2
  %4 = and i16 %3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  %buf7 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.048, i32 3
  %5 = ptrtoint ptr %buf7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buf7, align 4
  %len9 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.048, i32 2
  %7 = ptrtoint ptr %len9 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %len9, align 4
  %conv10 = zext i16 %8 to i32
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %call.i.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  %shl.i31.i = shl i32 %13, 8
  %or532.i = or i32 %shl.i31.i, -2147483520
  %14 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer.i, align 8
  %call633.i = tail call i32 @usb_control_msg(ptr noundef %11, i32 noundef %or532.i, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext 831, i16 noundef zeroext 0, ptr noundef %15, i16 noundef zeroext 64, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call633.i)
  %cmp34.i = icmp slt i32 %call633.i, 0
  br i1 %cmp34.i, label %if.then.for.end.thread_crit_edge, label %if.end.lr.ph.i

if.then.for.end.thread_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

if.end.lr.ph.i:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000, i32 %call.i.i)
  %cmp.i.i = icmp ult i32 %call.i.i, 50000
  %spec.select.i.i = select i1 %cmp.i.i, i32 1073741822, i32 5
  %add.i = add i32 %9, 1
  %add1.i = add i32 %add.i, %spec.select.i.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.end20.i.if.end.i_crit_edge, %if.end.lr.ph.i
  %16 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer.i, align 8
  %arrayidx.i = getelementptr i8, ptr %17, i32 1
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp8.i = icmp eq i8 %19, 0
  br i1 %cmp8.i, label %land.lhs.true.i, label %if.end.i.if.end15.i_crit_edge

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %arrayidx11.i = getelementptr i8, ptr %17, i32 2
  %20 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %21)
  %tobool.not.i = icmp sgt i8 %21, -1
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end15.i_crit_edge, label %if.then13.i

land.lhs.true.i.if.end15.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then13.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx11.i.le = getelementptr i8, ptr %17, i32 2
  %22 = call ptr @memcpy(ptr %6, ptr %arrayidx11.i.le, i32 %conv10)
  br label %for.inc

if.end15.i:                                       ; preds = %land.lhs.true.i.if.end15.i_crit_edge, %if.end.i.if.end15.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add1.i, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp16.i = icmp slt i32 %sub.i, 0
  br i1 %cmp16.i, label %if.then18.i, label %if.end20.i

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %6, align 1
  br label %for.inc

if.end20.i:                                       ; preds = %if.end15.i
  tail call void @msleep(i32 noundef 3) #8
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 8
  %shl.i.i = shl i32 %28, 8
  %or5.i = or i32 %shl.i.i, -2147483520
  %29 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %buffer.i, align 8
  %call6.i = tail call i32 @usb_control_msg(ptr noundef %26, i32 noundef %or5.i, i8 noundef zeroext 1, i8 noundef zeroext -95, i16 noundef zeroext 831, i16 noundef zeroext 0, ptr noundef %30, i16 noundef zeroext 64, i32 noundef 1000) #8
  %cmp.i = icmp slt i32 %call6.i, 0
  br i1 %cmp.i, label %if.end20.i.for.end.thread_crit_edge, label %if.end20.i.if.end.i_crit_edge

if.end20.i.if.end.i_crit_edge:                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end20.i.for.end.thread_crit_edge:              ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 59, i16 %8)
  %cmp.i30 = icmp ugt i16 %8, 59
  br i1 %cmp.i30, label %if.else.for.end.thread_crit_edge, label %for.cond.preheader.i

if.else.for.end.thread_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

for.cond.preheader.i:                             ; preds = %if.else
  %sub.i.i = sub nuw nsw i32 59, %conv10
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.019.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %retval1.018.i = phi i32 [ -22, %for.cond.preheader.i ], [ %retval1.1.i, %for.inc.i.for.body.i_crit_edge ]
  %31 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %6, align 1
  %conv.i = zext i8 %32 to i32
  %arrayidx3.i = getelementptr [13 x %struct.si4713_command_table], ptr @command_table, i32 0, i32 %i.019.i
  %33 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %conv.i)
  %cmp4.i = icmp eq i32 %34, %conv.i
  br i1 %cmp4.i, label %if.then6.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then6.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %payload.i = getelementptr [13 x %struct.si4713_command_table], ptr @command_table, i32 0, i32 %i.019.i, i32 1
  %35 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buffer.i, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 63, ptr %36, align 1
  %38 = load ptr, ptr %buffer.i, align 8
  %arrayidx3.i.i = getelementptr i8, ptr %38, i32 1
  %39 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 6, ptr %arrayidx3.i.i, align 1
  %40 = load ptr, ptr %buffer.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %40, i32 2
  %41 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %payload.i, i32 3)
  %42 = load ptr, ptr %buffer.i, align 8
  %add.ptr6.i.i = getelementptr i8, ptr %42, i32 5
  %43 = call ptr @memcpy(ptr %add.ptr6.i.i, ptr %6, i32 %conv10)
  %44 = load ptr, ptr %buffer.i, align 8
  %add.ptr8.i.i = getelementptr i8, ptr %44, i32 5
  %add.ptr9.i.i = getelementptr i8, ptr %add.ptr8.i.i, i32 %conv10
  %45 = call ptr @memset(ptr %add.ptr9.i.i, i32 0, i32 %sub.i.i)
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 8
  %shl.i.i.i = shl i32 %49, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %50 = load ptr, ptr %buffer.i, align 8
  %call12.i.i = tail call i32 @usb_control_msg(ptr noundef %47, i32 noundef %or.i.i, i8 noundef zeroext 9, i8 noundef zeroext 33, i16 noundef zeroext 831, i16 noundef zeroext 0, ptr noundef %50, i16 noundef zeroext 64, i32 noundef 1000) #8
  %51 = tail call i32 @llvm.smin.i32(i32 %call12.i.i, i32 0) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then6.i, %for.body.i.for.inc.i_crit_edge
  %retval1.1.i = phi i32 [ %51, %if.then6.i ], [ %retval1.018.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 13
  br i1 %exitcond.not.i, label %if.end, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end:                                           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval1.1.i)
  %tobool12.not = icmp sgt i32 %retval1.1.i, -1
  br i1 %tobool12.not, label %if.end.for.inc_crit_edge, label %if.end.for.end.thread_crit_edge

if.end.for.end.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %if.then18.i, %if.then13.i
  %inc = add nuw nsw i32 %i.048, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.inc.for.end.thread_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end.thread_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.inc.for.end.thread_crit_edge, %if.end.for.end.thread_crit_edge, %if.else.for.end.thread_crit_edge, %if.end20.i.for.end.thread_crit_edge, %if.then.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  %52 = phi i32 [ -22, %entry.for.end.thread_crit_edge ], [ %call6.i, %if.end20.i.for.end.thread_crit_edge ], [ -22, %if.else.for.end.thread_crit_edge ], [ %call633.i, %if.then.for.end.thread_crit_edge ], [ %num, %for.inc.for.end.thread_crit_edge ], [ %retval1.1.i, %if.end.for.end.thread_crit_edge ]
  ret i32 %52
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @si4713_functionality(ptr nocapture noundef readnone %adapter) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592713
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_release(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @strscpy(ptr noundef %v, ptr noundef nonnull @.str.1, i32 noundef 16) #8
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %v, i32 0, i32 1
  %call3 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.27, i32 noundef 32) #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %v, i32 0, i32 2
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 1
  %call.i8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.28, ptr noundef %7, ptr noundef %devpath.i) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_modulator(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %vm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %v4l2_subdev = getelementptr inbounds %struct.si4713_usb_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %v4l2_subdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v4l2_subdev, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.else

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tuner, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.else.if.end20_crit_edge, label %land.lhs.true

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

land.lhs.true:                                    ; preds = %if.else
  %g_modulator = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %g_modulator to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %g_modulator, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %land.lhs.true.if.end20_crit_edge, label %if.else6

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.else6:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %if.else6.if.else14_crit_edge, label %land.lhs.true8

if.else6.if.else14_crit_edge:                     ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else14

land.lhs.true8:                                   ; preds = %if.else6
  %g_modulator9 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %g_modulator9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %g_modulator9, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %land.lhs.true8.if.else14_crit_edge, label %land.lhs.true8.if.end20.sink.split_crit_edge

land.lhs.true8.if.end20.sink.split_crit_edge:     ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.sink.split

land.lhs.true8.if.else14_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else14

if.else14:                                        ; preds = %land.lhs.true8.if.else14_crit_edge, %if.else6.if.else14_crit_edge
  br label %if.end20.sink.split

if.end20.sink.split:                              ; preds = %if.else14, %land.lhs.true8.if.end20.sink.split_crit_edge
  %.sink = phi ptr [ %9, %if.else14 ], [ %12, %land.lhs.true8.if.end20.sink.split_crit_edge ]
  %call18 = tail call i32 %.sink(ptr noundef nonnull %3, ptr noundef %vm) #8
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %land.lhs.true.if.end20_crit_edge, %if.else.if.end20_crit_edge, %entry.if.end20_crit_edge
  %__result.0 = phi i32 [ -19, %entry.if.end20_crit_edge ], [ -515, %land.lhs.true.if.end20_crit_edge ], [ -515, %if.else.if.end20_crit_edge ], [ %call18, %if.end20.sink.split ]
  ret i32 %__result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_modulator(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %vm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %v4l2_subdev = getelementptr inbounds %struct.si4713_usb_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %v4l2_subdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v4l2_subdev, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.else

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tuner, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.else.if.end20_crit_edge, label %land.lhs.true

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

land.lhs.true:                                    ; preds = %if.else
  %s_modulator = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %s_modulator to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_modulator, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %land.lhs.true.if.end20_crit_edge, label %if.else6

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.else6:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %if.else6.if.else14_crit_edge, label %land.lhs.true8

if.else6.if.else14_crit_edge:                     ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else14

land.lhs.true8:                                   ; preds = %if.else6
  %s_modulator9 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %s_modulator9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_modulator9, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %land.lhs.true8.if.else14_crit_edge, label %land.lhs.true8.if.end20.sink.split_crit_edge

land.lhs.true8.if.end20.sink.split_crit_edge:     ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.sink.split

land.lhs.true8.if.else14_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else14

if.else14:                                        ; preds = %land.lhs.true8.if.else14_crit_edge, %if.else6.if.else14_crit_edge
  br label %if.end20.sink.split

if.end20.sink.split:                              ; preds = %if.else14, %land.lhs.true8.if.end20.sink.split_crit_edge
  %.sink = phi ptr [ %9, %if.else14 ], [ %12, %land.lhs.true8.if.end20.sink.split_crit_edge ]
  %call18 = tail call i32 %.sink(ptr noundef nonnull %3, ptr noundef %vm) #8
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %land.lhs.true.if.end20_crit_edge, %if.else.if.end20_crit_edge, %entry.if.end20_crit_edge
  %__result.0 = phi i32 [ -19, %entry.if.end20_crit_edge ], [ -515, %land.lhs.true.if.end20_crit_edge ], [ -515, %if.else.if.end20_crit_edge ], [ %call18, %if.end20.sink.split ]
  ret i32 %__result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_frequency(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %vf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %v4l2_subdev = getelementptr inbounds %struct.si4713_usb_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %v4l2_subdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v4l2_subdev, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.else

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tuner, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.else.if.end20_crit_edge, label %land.lhs.true

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

land.lhs.true:                                    ; preds = %if.else
  %g_frequency = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %g_frequency to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %g_frequency, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %land.lhs.true.if.end20_crit_edge, label %if.else6

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.else6:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %if.else6.if.else14_crit_edge, label %land.lhs.true8

if.else6.if.else14_crit_edge:                     ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else14

land.lhs.true8:                                   ; preds = %if.else6
  %g_frequency9 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %g_frequency9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %g_frequency9, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %land.lhs.true8.if.else14_crit_edge, label %land.lhs.true8.if.end20.sink.split_crit_edge

land.lhs.true8.if.end20.sink.split_crit_edge:     ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.sink.split

land.lhs.true8.if.else14_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else14

if.else14:                                        ; preds = %land.lhs.true8.if.else14_crit_edge, %if.else6.if.else14_crit_edge
  br label %if.end20.sink.split

if.end20.sink.split:                              ; preds = %if.else14, %land.lhs.true8.if.end20.sink.split_crit_edge
  %.sink = phi ptr [ %9, %if.else14 ], [ %12, %land.lhs.true8.if.end20.sink.split_crit_edge ]
  %call18 = tail call i32 %.sink(ptr noundef nonnull %3, ptr noundef %vf) #8
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %land.lhs.true.if.end20_crit_edge, %if.else.if.end20_crit_edge, %entry.if.end20_crit_edge
  %__result.0 = phi i32 [ -19, %entry.if.end20_crit_edge ], [ -515, %land.lhs.true.if.end20_crit_edge ], [ -515, %if.else.if.end20_crit_edge ], [ %call18, %if.end20.sink.split ]
  ret i32 %__result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_frequency(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %vf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %v4l2_subdev = getelementptr inbounds %struct.si4713_usb_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %v4l2_subdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v4l2_subdev, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.else

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tuner, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.else.if.end20_crit_edge, label %land.lhs.true

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

land.lhs.true:                                    ; preds = %if.else
  %s_frequency = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %s_frequency to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_frequency, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %land.lhs.true.if.end20_crit_edge, label %if.else6

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.else6:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %if.else6.if.else14_crit_edge, label %land.lhs.true8

if.else6.if.else14_crit_edge:                     ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else14

land.lhs.true8:                                   ; preds = %if.else6
  %s_frequency9 = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %s_frequency9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_frequency9, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %land.lhs.true8.if.else14_crit_edge, label %land.lhs.true8.if.end20.sink.split_crit_edge

land.lhs.true8.if.end20.sink.split_crit_edge:     ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.sink.split

land.lhs.true8.if.else14_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else14

if.else14:                                        ; preds = %land.lhs.true8.if.else14_crit_edge, %if.else6.if.else14_crit_edge
  br label %if.end20.sink.split

if.end20.sink.split:                              ; preds = %if.else14, %land.lhs.true8.if.end20.sink.split_crit_edge
  %.sink = phi ptr [ %9, %if.else14 ], [ %12, %land.lhs.true8.if.end20.sink.split_crit_edge ]
  %call18 = tail call i32 %.sink(ptr noundef nonnull %3, ptr noundef %vf) #8
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %land.lhs.true.if.end20_crit_edge, %if.else.if.end20_crit_edge, %entry.if.end20_crit_edge
  %__result.0 = phi i32 [ -19, %entry.if.end20_crit_edge ], [ -515, %land.lhs.true.if.end20_crit_edge ], [ -515, %if.else.if.end20_crit_edge ], [ %call18, %if.end20.sink.split ]
  ret i32 %__result.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_log_status(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !28, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !72, !73, !74}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @__UNIQUE_ID_author297, !1, !"__UNIQUE_ID_author297", i1 false, i1 false}
!1 = !{!"../drivers/media/radio/si4713/radio-usb-si4713.c", i32 27, i32 1}
!2 = !{ptr @__UNIQUE_ID_description298, !3, !"__UNIQUE_ID_description298", i1 false, i1 false}
!3 = !{!"../drivers/media/radio/si4713/radio-usb-si4713.c", i32 28, i32 1}
!4 = !{ptr @__UNIQUE_ID_file299, !5, !"__UNIQUE_ID_file299", i1 false, i1 false}
!5 = !{!"../drivers/media/radio/si4713/radio-usb-si4713.c", i32 29, i32 1}
!6 = !{ptr @__UNIQUE_ID_license300, !5, !"__UNIQUE_ID_license300", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_radio_usb_si4713__301_522_usb_si4713_driver_init6, !8, !"__initcall__kmod_radio_usb_si4713__301_522_usb_si4713_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/media/radio/si4713/radio-usb-si4713.c", i32 522, i32 1}
!9 = !{ptr @__exitcall_usb_si4713_driver_exit, !8, !"__exitcall_usb_si4713_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/radio/si4713/radio-usb-si4713.c", i32 516, i32 12}
!13 = !{ptr @usb_si4713_driver, !14, !"usb_si4713_driver", i1 false, i1 false}
!14 = !{!"../drivers/media/radio/si4713/radio-usb-si4713.c", i32 515, i32 26}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/radio/si4713/radio-usb-si4713.c", i32 419, i32 2}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @usb_si4713_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @usb_si4713_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/radio/si4713/radio-usb-si4713.c", i32 428, i32 3}
!25 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @usb_si4713_probe._entry.7, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @usb_si4713_probe._entry_ptr.10, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @usb_si4713_probe.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/media/radio/si4713/radio-usb-si4713.c", i32 433, i32 2}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/radio/si4713/radio-usb-si4713.c", i32 445, i32 3}
!33 = !{ptr @usb_si4713_probe._entry.12, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @usb_si4713_probe._entry_ptr.14, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/radio/si4713/radio-usb-si4713.c", i32 451, i32 3}
!37 = !{ptr @usb_si4713_probe._entry.15, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @usb_si4713_probe._entry_ptr.17, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/radio/si4713/radio-usb-si4713.c", i32 460, i32 3}
!41 = !{ptr @usb_si4713_probe._entry.18, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @usb_si4713_probe._entry_ptr.20, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/radio/si4713/radio-usb-si4713.c", i32 481, i32 3}
!45 = !{ptr @usb_si4713_probe._entry.21, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @usb_si4713_probe._entry_ptr.23, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/radio/si4713/radio-usb-si4713.c", i32 485, i32 2}
!49 = !{ptr @usb_si4713_probe._entry.24, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @usb_si4713_probe._entry_ptr.26, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @start_seq, !52, !"start_seq", i1 false, i1 false}
!52 = !{!"../drivers/media/radio/si4713/radio-usb-si4713.c", i32 211, i32 44}
!53 = !{ptr @si4713_i2c_adapter_template, !54, !"si4713_i2c_adapter_template", i1 false, i1 false}
!54 = !{!"../drivers/media/radio/si4713/radio-usb-si4713.c", i32 394, i32 33}
!55 = !{ptr @si4713_algo, !56, !"si4713_algo", i1 false, i1 false}
!56 = !{!"../drivers/media/radio/si4713/radio-usb-si4713.c", i32 387, i32 35}
!57 = !{ptr @command_table, !58, !"command_table", i1 false, i1 false}
!58 = !{!"../drivers/media/radio/si4713/radio-usb-si4713.c", i32 276, i32 36}
!59 = !{ptr @si4713_board_info, !60, !"si4713_board_info", i1 false, i1 false}
!60 = !{!"../drivers/media/radio/si4713/radio-usb-si4713.c", i32 259, i32 30}
!61 = !{ptr @usb_si4713_fops, !62, !"usb_si4713_fops", i1 false, i1 false}
!62 = !{!"../drivers/media/radio/si4713/radio-usb-si4713.c", i32 120, i32 42}
!63 = !{ptr @usb_si4713_ioctl_ops, !64, !"usb_si4713_ioctl_ops", i1 false, i1 false}
!64 = !{!"../drivers/media/radio/si4713/radio-usb-si4713.c", i32 108, i32 36}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/radio/si4713/radio-usb-si4713.c", i32 71, i32 19}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../include/linux/usb.h", i32 912, i32 31}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/radio/si4713/radio-usb-si4713.c", i32 504, i32 2}
!71 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @usb_si4713_disconnect._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @usb_si4713_disconnect._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @usb_si4713_usb_device_table, !75, !"usb_si4713_usb_device_table", i1 false, i1 false}
!75 = !{!"../drivers/media/radio/si4713/radio-usb-si4713.c", i32 40, i32 35}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
