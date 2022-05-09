; ModuleID = '/llk/IR_all_yes/drivers/input/rmi4/rmi_f54.c_pt.bc'
source_filename = "../drivers/input/rmi4/rmi_f54.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rmi_function_handler = type { %struct.device_driver, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.88 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.88 = type { %struct.anon.89 }
%struct.anon.89 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.85], %struct.media_entity_enum, i32 }
%struct.anon.85 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rmi_function = type { %struct.rmi_function_descriptor, ptr, %struct.device, %struct.list_head, i32, [6 x i32], i32, [0 x i32] }
%struct.rmi_function_descriptor = type { i16, i16, i16, i16, i8, i8, i8 }
%struct.rmi_device = type { %struct.device, i32, ptr, ptr }
%struct.rmi_transport_dev = type { ptr, ptr, ptr, ptr, %struct.rmi_device_platform_data, ptr }
%struct.rmi_device_platform_data = type { i32, i32, %struct.rmi_device_platform_data_spi, %struct.rmi_2d_sensor_platform_data, %struct.rmi_f01_power_management, %struct.rmi_gpio_data }
%struct.rmi_device_platform_data_spi = type { i32, i32, i32, i32, i32, i32, i32, i8, i16, ptr, ptr }
%struct.rmi_2d_sensor_platform_data = type { %struct.rmi_2d_axis_alignment, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32 }
%struct.rmi_2d_axis_alignment = type { i8, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8 }
%struct.rmi_f01_power_management = type { i32, i8, i8, i8 }
%struct.rmi_gpio_data = type { i8, i8, i8 }
%struct.rmi_transport_ops = type { ptr, ptr, ptr }
%struct.f54_data = type { ptr, i8, i8, i8, i16, i8, i32, ptr, i32, i8, %struct.mutex, %struct.mutex, ptr, %struct.delayed_work, i32, %struct.completion, %struct.v4l2_device, %struct.v4l2_pix_format, %struct.video_device, %struct.vb2_queue, %struct.mutex, i32, i32, [21 x i32] }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.95, i32, i32 }
%union.anon.95 = type { i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.rmi_driver_data = type { %struct.list_head, ptr, ptr, ptr, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, i8, i8, i8, i8, %struct.mutex, %struct.rmi4_attn_data, %struct.anon.118 }
%struct.rmi4_attn_data = type { i32, i32, ptr }
%struct.anon.118 = type { %union.anon.119, [16 x %struct.rmi4_attn_data] }
%union.anon.119 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.rmi_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.93, i32 }
%union.anon.93 = type { i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.94 }
%union.anon.94 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.96, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.96 = type { i8 }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_streamparm = type { i32, %union.anon.110 }
%union.anon.110 = type { %struct.v4l2_captureparm, [160 x i8] }
%struct.v4l2_captureparm = type { i32, i32, %struct.v4l2_fract, i32, i32, [4 x i32] }
%struct.v4l2_fract = type { i32, i32 }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rmi4_f54\00", [23 x i8] zeroinitializer }, align 32
@rmi_f54_handler = dso_local global { %struct.rmi_function_handler, [52 x i8] } { %struct.rmi_function_handler { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i8 84, ptr @rmi_f54_probe, ptr @rmi_f54_remove, ptr @rmi_f54_config, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@rmi_f54_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&f54->data_mutex\00", [47 x i8] zeroinitializer }, align 32
@rmi_f54_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&f54->status_mutex\00", [45 x i8] zeroinitializer }, align 32
@rmi_f54_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&(&f54->work)->work)\00", [57 x i8] zeroinitializer }, align 32
@rmi_f54_probe.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&(&f54->work)->timer\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rmi4-poller\00", [20 x i8] zeroinitializer }, align 32
@rmi_f54_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 702, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unable to register video dev.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rmi_f54_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/input/rmi4/rmi_f54.c\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rmi_f54_probe._entry_ptr = internal global ptr @rmi_f54_probe._entry, section ".printk_index", align 4
@rmi_f54_probe.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&f54->lock\00", [21 x i8] zeroinitializer }, align 32
@rmi_f54_video_device = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @rmi_f54_video_fops, i32 352321537, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"Synaptics RMI4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 0, ptr @video_device_release_empty, ptr @rmi_f54_video_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@rmi_f54_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.11, ptr @.str.12, i32 726, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unable to register video subdevice.\00", [60 x i8] zeroinitializer }, align 32
@rmi_f54_probe._entry_ptr.19 = internal global ptr @rmi_f54_probe._entry.17, section ".printk_index", align 4
@rmi_f54_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.12, i32 635, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Failed to query F54 properties\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rmi_f54_detect\00", [17 x i8] zeroinitializer }, align 32
@rmi_f54_detect._entry_ptr = internal global ptr @rmi_f54_detect._entry, section ".printk_index", align 4
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"F54 num_rx_electrodes: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"F54 num_tx_electrodes: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"F54 capabilities: 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"F54 clock rate: 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"F54 family: 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@rmi_f54_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.12, i32 546, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Bad report size, report type=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rmi_f54_work\00", [19 x i8] zeroinitializer }, align 32
@rmi_f54_work._entry_ptr = internal global ptr @rmi_f54_work._entry, section ".printk_index", align 4
@rmi_f54_work._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.12, i32 560, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to read back command\0A\00", [35 x i8] zeroinitializer }, align 32
@rmi_f54_work._entry_ptr.31 = internal global ptr @rmi_f54_work._entry.29, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rmi_f54_work._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.12, i32 565, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Get report command timed out\0A\00", [34 x i8] zeroinitializer }, align 32
@rmi_f54_work._entry_ptr.34 = internal global ptr @rmi_f54_work._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Get report command completed, reading data\0A\00", [52 x i8] zeroinitializer }, align 32
@rmi_f54_work._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.28, ptr @.str.12, i32 583, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to set fifo start offset\0A\00", [63 x i8] zeroinitializer }, align 32
@rmi_f54_work._entry_ptr.38 = internal global ptr @rmi_f54_work._entry.36, section ".printk_index", align 4
@rmi_f54_work._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.28, ptr @.str.12, i32 592, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: read [%d bytes] returned %d\0A\00", [63 x i8] zeroinitializer }, align 32
@rmi_f54_work._entry_ptr.41 = internal global ptr @rmi_f54_work._entry.39, section ".printk_index", align 4
@rmi_f54_queue_ops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @rmi_f54_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rmi_f54_stop_streaming, ptr @rmi_f54_buffer_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_vmalloc_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@rmi_f54_queue = internal constant { { i32, i32, ptr, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i8, i8, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }, [128 x i8] } { { i32, i32, ptr, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i8, i8, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 } { i32 1, i32 23, ptr null, i32 0, i8 0, i8 0, ptr null, ptr null, ptr @rmi_f54_queue_ops, ptr @vb2_vmalloc_memops, ptr null, ptr null, i32 0, i32 736, i32 8192, i32 0, i32 0, [8 x ptr] zeroinitializer, %struct.mutex zeroinitializer, i32 0, i32 0, [32 x ptr] zeroinitializer, i32 0, %struct.list_head zeroinitializer, i32 0, %struct.atomic_t zeroinitializer, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, %struct.wait_queue_head zeroinitializer, i8 0, i8 0, ptr null, ptr null, [32 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0 }, [128 x i8] zeroinitializer }, align 32
@rmi_f54_buffer_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.12, i32 323, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error requesting F54 report\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rmi_f54_buffer_queue\00", [43 x i8] zeroinitializer }, align 32
@rmi_f54_buffer_queue._entry_ptr = internal global ptr @rmi_f54_buffer_queue._entry, section ".printk_index", align 4
@rmi_f54_buffer_queue._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.12, i32 335, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Timed out\0A\00", [21 x i8] zeroinitializer }, align 32
@rmi_f54_buffer_queue._entry_ptr.47 = internal global ptr @rmi_f54_buffer_queue._entry.45, section ".printk_index", align 4
@rmi_f54_buffer_queue._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.12, i32 344, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Error acquiring frame ptr\0A\00", [37 x i8] zeroinitializer }, align 32
@rmi_f54_buffer_queue._entry_ptr.50 = internal global ptr @rmi_f54_buffer_queue._entry.48, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@rmi_f54_video_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @v4l2_fh_open, ptr @vb2_fop_release }, [60 x i8] zeroinitializer }, align 32
@rmi_f54_video_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @rmi_f54_vidioc_querycap, ptr @rmi_f54_vidioc_enum_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rmi_f54_vidioc_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rmi_f54_vidioc_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rmi_f54_vidioc_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr null, ptr null, ptr null, ptr @rmi_f54_vidioc_enum_input, ptr @rmi_f54_vidioc_g_input, ptr @rmi_f54_vidioc_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rmi_f54_vidioc_g_parm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [120 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Synaptics RMI4 Touch Sensor\00", [36 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rmi4:%s\00", [24 x i8] zeroinitializer }, align 32
@rmi_f54_report_type_names = internal constant { [21 x ptr], [44 x i8] } { [21 x ptr] [ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.59, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.60, ptr @.str.61], [44 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Normalized 8-Bit Image\00", [41 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Normalized 16-Bit Image\00", [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Raw 16-Bit Image\00", [47 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"True Baseline\00", [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Full Raw Capacitance\00", [43 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Full Raw Capacitance RX Offset Removed\00", [57 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 9, i64 19, i64 20]
@__sancov_gen_cov_switch_values.62 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 9, i64 19, i64 20, i64 21]
@__sancov_gen_cov_switch_values.63 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 9, i64 19, i64 20]
@__sancov_gen_cov_switch_values.64 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 9, i64 19, i64 20, i64 21]
@__sancov_gen_cov_switch_values.65 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 9, i64 19, i64 20]
@__sancov_gen_cov_switch_values.66 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 9, i64 19, i64 20]
@__sancov_gen_cov_switch_values.67 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 9, i64 19, i64 20]
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 752, i32 11 }
@___asan_gen_.71 = private unnamed_addr constant [16 x i8] c"rmi_f54_handler\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 750, i32 29 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 678, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 679, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 689, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 691, i32 19 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 702, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 707, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [21 x i8] c"rmi_f54_video_device\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 524, i32 34 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 726, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 634, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 645, i32 34 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 647, i32 34 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 649, i32 34 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 651, i32 34 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 653, i32 34 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 545, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 560, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 565, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 572, i32 34 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 583, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 591, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant [18 x i8] c"rmi_f54_queue_ops\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 371, i32 29 }
@___asan_gen_.200 = private unnamed_addr constant [14 x i8] c"rmi_f54_queue\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 379, i32 31 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 323, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 335, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 344, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 1163, i32 7 }
@___asan_gen_.227 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 87, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant [19 x i8] c"rmi_f54_video_fops\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 273, i32 42 }
@___asan_gen_.236 = private unnamed_addr constant [24 x i8] c"rmi_f54_video_ioctl_ops\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 500, i32 36 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 394, i32 21 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 396, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant [26 x i8] c"rmi_f54_report_type_names\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 85, i32 27 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 86, i32 23 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 87, i32 22 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 88, i32 23 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 89, i32 27 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 90, i32 25 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 91, i32 24 }
@___asan_gen_.266 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.267 = private constant [32 x i8] c"../drivers/input/rmi4/rmi_f54.c\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 93, i32 8 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @rmi_f54_buffer_queue._entry, ptr @rmi_f54_buffer_queue._entry.45, ptr @rmi_f54_buffer_queue._entry.48, ptr @rmi_f54_buffer_queue._entry_ptr, ptr @rmi_f54_buffer_queue._entry_ptr.47, ptr @rmi_f54_buffer_queue._entry_ptr.50, ptr @rmi_f54_detect._entry, ptr @rmi_f54_detect._entry_ptr, ptr @rmi_f54_probe._entry, ptr @rmi_f54_probe._entry.17, ptr @rmi_f54_probe._entry_ptr, ptr @rmi_f54_probe._entry_ptr.19, ptr @rmi_f54_work._entry, ptr @rmi_f54_work._entry.29, ptr @rmi_f54_work._entry.32, ptr @rmi_f54_work._entry.36, ptr @rmi_f54_work._entry.39, ptr @rmi_f54_work._entry_ptr, ptr @rmi_f54_work._entry_ptr.31, ptr @rmi_f54_work._entry_ptr.34, ptr @rmi_f54_work._entry_ptr.38, ptr @rmi_f54_work._entry_ptr.41, ptr @.str, ptr @rmi_f54_handler, ptr @rmi_f54_probe.__key, ptr @.str.1, ptr @rmi_f54_probe.__key.2, ptr @.str.3, ptr @rmi_f54_probe.__key.4, ptr @.str.5, ptr @rmi_f54_probe.__key.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @rmi_f54_probe.__key.15, ptr @.str.16, ptr @rmi_f54_video_device, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @rmi_f54_queue_ops, ptr @rmi_f54_queue, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @init_completion.__key, ptr @.str.52, ptr @rmi_f54_video_fops, ptr @rmi_f54_video_ioctl_ops, ptr @.str.53, ptr @.str.54, ptr @rmi_f54_report_type_names, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f54_handler to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f54_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f54_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f54_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f54_probe.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f54_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f54_probe.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f54_video_device to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f54_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f54_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f54_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f54_work._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f54_work._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f54_work._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f54_work._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f54_queue_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f54_queue to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f54_buffer_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f54_buffer_queue._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f54_buffer_queue._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f54_video_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f54_video_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmi_f54_report_type_names to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_f54_probe(ptr noundef %fn) #0 align 64 {
entry:
  %buf.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 2
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 2600, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %fn, ptr %call.i, align 8
  %driver_data.i = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 2, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i) #9
  %2 = call ptr @memset(ptr %buf.i, i32 255, i32 6)
  %rmi_dev.i = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 1
  %3 = ptrtoint ptr %rmi_dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rmi_dev.i, align 4
  %5 = ptrtoint ptr %fn to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %fn, align 8
  %xport.i.i = getelementptr inbounds %struct.rmi_device, ptr %4, i32 0, i32 3
  %7 = ptrtoint ptr %xport.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %xport.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i.i, align 4
  %read_block.i.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %read_block.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read_block.i.i, align 4
  %call.i.i = call i32 %12(ptr noundef %8, i16 noundef zeroext %6, ptr noundef nonnull %buf.i, i32 noundef 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %do.body, label %rmi_f54_detect.exit

rmi_f54_detect.exit:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #9
  br label %cleanup

do.body:                                          ; preds = %if.end
  %13 = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 5
  %14 = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 4
  %15 = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 3
  %16 = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 2
  %17 = getelementptr inbounds [6 x i8], ptr %buf.i, i32 0, i32 1
  %18 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %buf.i, align 1
  %num_rx_electrodes.i = getelementptr inbounds %struct.f54_data, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %num_rx_electrodes.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %num_rx_electrodes.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %17, align 1
  %num_tx_electrodes.i = getelementptr inbounds %struct.f54_data, ptr %call.i, i32 0, i32 2
  %23 = ptrtoint ptr %num_tx_electrodes.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %num_tx_electrodes.i, align 1
  %24 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %16, align 1
  %capabilities.i = getelementptr inbounds %struct.f54_data, ptr %call.i, i32 0, i32 3
  %26 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %capabilities.i, align 2
  %27 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %15, align 1
  %conv.i = zext i8 %28 to i16
  %29 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %14, align 1
  %conv7.i = zext i8 %30 to i16
  %shl.i = shl nuw i16 %conv7.i, 8
  %or.i = or i16 %shl.i, %conv.i
  %clock_rate.i = getelementptr inbounds %struct.f54_data, ptr %call.i, i32 0, i32 4
  %31 = ptrtoint ptr %clock_rate.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %or.i, ptr %clock_rate.i, align 8
  %32 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %13, align 1
  %family.i = getelementptr inbounds %struct.f54_data, ptr %call.i, i32 0, i32 5
  %34 = ptrtoint ptr %family.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %family.i, align 2
  %conv12.i = zext i8 %19 to i32
  call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %conv12.i) #9
  %35 = ptrtoint ptr %num_tx_electrodes.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %num_tx_electrodes.i, align 1
  %conv15.i = zext i8 %36 to i32
  call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %conv15.i) #9
  %37 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %capabilities.i, align 2
  %conv18.i = zext i8 %38 to i32
  call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %conv18.i) #9
  %39 = ptrtoint ptr %clock_rate.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %clock_rate.i, align 8
  %conv21.i = zext i16 %40 to i32
  call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %conv21.i) #9
  %41 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %family.i, align 2
  %conv24.i = zext i8 %42 to i32
  call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %conv24.i) #9
  %is_busy.i = getelementptr inbounds %struct.f54_data, ptr %call.i, i32 0, i32 9
  %43 = ptrtoint ptr %is_busy.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %is_busy.i, align 8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i) #9
  %data_mutex = getelementptr inbounds %struct.f54_data, ptr %call.i, i32 0, i32 11
  call void @__mutex_init(ptr noundef %data_mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @rmi_f54_probe.__key) #9
  %status_mutex = getelementptr inbounds %struct.f54_data, ptr %call.i, i32 0, i32 10
  call void @__mutex_init(ptr noundef %status_mutex, ptr noundef nonnull @.str.3, ptr noundef nonnull @rmi_f54_probe.__key.2) #9
  %44 = ptrtoint ptr %num_rx_electrodes.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %num_rx_electrodes.i, align 4
  %46 = ptrtoint ptr %num_tx_electrodes.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %num_tx_electrodes.i, align 1
  %conv = zext i8 %47 to i32
  %conv11 = zext i8 %45 to i32
  %48 = shl nuw nsw i32 %conv11, 1
  %49 = mul nuw nsw i32 %48, %conv
  %call.i154 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %49, i32 noundef 3520) #9
  %report_data = getelementptr inbounds %struct.f54_data, ptr %call.i, i32 0, i32 7
  %50 = ptrtoint ptr %report_data to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call.i154, ptr %report_data, align 8
  %cmp = icmp eq ptr %call.i154, null
  br i1 %cmp, label %do.body.cleanup_crit_edge, label %do.body19

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body19:                                        ; preds = %do.body
  %work = getelementptr inbounds %struct.f54_data, ptr %call.i, i32 0, i32 13
  call void @__init_work(ptr noundef %work, i32 noundef 0) #9
  %51 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -64, ptr %work, align 8
  %lockdep_map = getelementptr inbounds %struct.f54_data, ptr %call.i, i32 0, i32 13, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.5, ptr noundef nonnull @rmi_f54_probe.__key.4, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry27 = getelementptr inbounds %struct.f54_data, ptr %call.i, i32 0, i32 13, i32 0, i32 1
  %52 = ptrtoint ptr %entry27 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %entry27, ptr %entry27, align 4
  %prev.i = getelementptr inbounds %struct.f54_data, ptr %call.i, i32 0, i32 13, i32 0, i32 1, i32 1
  %53 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %entry27, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.f54_data, ptr %call.i, i32 0, i32 13, i32 0, i32 2
  %54 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @rmi_f54_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.f54_data, ptr %call.i, i32 0, i32 13, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.7, ptr noundef nonnull @rmi_f54_probe.__key.6) #9
  %call38 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.8, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.9) #9
  %workqueue = getelementptr inbounds %struct.f54_data, ptr %call.i, i32 0, i32 12
  %55 = ptrtoint ptr %workqueue to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call38, ptr %workqueue, align 4
  %tobool40.not = icmp eq ptr %call38, null
  br i1 %tobool40.not, label %do.body19.cleanup_crit_edge, label %do.body19.for.body.i_crit_edge

do.body19.for.body.i_crit_edge:                   ; preds = %do.body19
  br label %for.body.i

do.body19.cleanup_crit_edge:                      ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.body19.for.body.i_crit_edge
  %reptype.011.i = phi i32 [ %inc1.i, %for.inc.i.for.body.i_crit_edge ], [ 1, %do.body19.for.body.i_crit_edge ]
  %i.09.i = phi i32 [ %i.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %do.body19.for.body.i_crit_edge ]
  %56 = zext i32 %reptype.011.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reptype.011.i, label %for.body.i.for.inc.i_crit_edge [
    i32 1, label %is_f54_report_type_valid.exit.i
    i32 2, label %for.body.i.sw.bb1.i.i_crit_edge
    i32 3, label %for.body.i.sw.bb1.i.i_crit_edge166
    i32 9, label %sw.bb6.i.i
    i32 19, label %for.body.i.if.end.i155_crit_edge
    i32 20, label %for.body.i.if.end.i155_crit_edge167
  ]

for.body.i.if.end.i155_crit_edge167:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i155

for.body.i.if.end.i155_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i155

for.body.i.sw.bb1.i.i_crit_edge166:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i.i

for.body.i.sw.bb1.i.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

sw.bb1.i.i:                                       ; preds = %for.body.i.sw.bb1.i.i_crit_edge, %for.body.i.sw.bb1.i.i_crit_edge166
  %57 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %capabilities.i, align 2
  %59 = and i8 %58, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool5.i.not.i = icmp eq i8 %59, 0
  br i1 %tobool5.i.not.i, label %sw.bb1.i.i.for.inc.i_crit_edge, label %sw.bb1.i.i.if.end.i155_crit_edge

sw.bb1.i.i.if.end.i155_crit_edge:                 ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i155

sw.bb1.i.i.for.inc.i_crit_edge:                   ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

sw.bb6.i.i:                                       ; preds = %for.body.i
  %60 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %capabilities.i, align 2
  %62 = and i8 %61, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool10.i.not.i = icmp eq i8 %62, 0
  br i1 %tobool10.i.not.i, label %sw.bb6.i.i.for.inc.i_crit_edge, label %sw.bb6.i.i.if.end.i155_crit_edge

sw.bb6.i.i.if.end.i155_crit_edge:                 ; preds = %sw.bb6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i155

sw.bb6.i.i.for.inc.i_crit_edge:                   ; preds = %sw.bb6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

is_f54_report_type_valid.exit.i:                  ; preds = %for.body.i
  %63 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %capabilities.i, align 2
  %65 = and i8 %64, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool.i.not.i = icmp eq i8 %65, 0
  br i1 %tobool.i.not.i, label %is_f54_report_type_valid.exit.i.for.inc.i_crit_edge, label %is_f54_report_type_valid.exit.i.if.end.i155_crit_edge

is_f54_report_type_valid.exit.i.if.end.i155_crit_edge: ; preds = %is_f54_report_type_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i155

is_f54_report_type_valid.exit.i.for.inc.i_crit_edge: ; preds = %is_f54_report_type_valid.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i155:                                      ; preds = %is_f54_report_type_valid.exit.i.if.end.i155_crit_edge, %sw.bb6.i.i.if.end.i155_crit_edge, %sw.bb1.i.i.if.end.i155_crit_edge, %for.body.i.if.end.i155_crit_edge, %for.body.i.if.end.i155_crit_edge167
  %inc.i = add i32 %i.09.i, 1
  %arrayidx.i = getelementptr %struct.f54_data, ptr %call.i, i32 0, i32 23, i32 %i.09.i
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %reptype.011.i, ptr %arrayidx.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i155, %is_f54_report_type_valid.exit.i.for.inc.i_crit_edge, %sw.bb6.i.i.for.inc.i_crit_edge, %sw.bb1.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %i.1.i = phi i32 [ %inc.i, %if.end.i155 ], [ %i.09.i, %is_f54_report_type_valid.exit.i.for.inc.i_crit_edge ], [ %i.09.i, %sw.bb6.i.i.for.inc.i_crit_edge ], [ %i.09.i, %sw.bb1.i.i.for.inc.i_crit_edge ], [ %i.09.i, %for.body.i.for.inc.i_crit_edge ]
  %inc1.i = add nuw nsw i32 %reptype.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc1.i, 21
  br i1 %exitcond.not.i, label %rmi_f54_create_input_map.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

rmi_f54_create_input_map.exit:                    ; preds = %for.inc.i
  %67 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %call.i, align 8
  %rmi_dev1.i = getelementptr inbounds %struct.rmi_function, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %rmi_dev1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rmi_dev1.i, align 4
  %driver_data.i.i156 = getelementptr inbounds %struct.device, ptr %70, i32 0, i32 8
  %71 = ptrtoint ptr %driver_data.i.i156 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %driver_data.i.i156, align 4
  %num_rx_electrodes.i157 = getelementptr inbounds %struct.rmi_driver_data, ptr %72, i32 0, i32 16
  %73 = ptrtoint ptr %num_rx_electrodes.i157 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %num_rx_electrodes.i157, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool.not.i158 = icmp eq i8 %74, 0
  br i1 %tobool.not.i158, label %cond.false.i, label %rmi_f54_create_input_map.exit.cond.end.i_crit_edge

rmi_f54_create_input_map.exit.cond.end.i_crit_edge: ; preds = %rmi_f54_create_input_map.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.false.i:                                     ; preds = %rmi_f54_create_input_map.exit
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %num_rx_electrodes.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %num_rx_electrodes.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %rmi_f54_create_input_map.exit.cond.end.i_crit_edge
  %cond.in.i = phi i8 [ %76, %cond.false.i ], [ %74, %rmi_f54_create_input_map.exit.cond.end.i_crit_edge ]
  %num_tx_electrodes.i159 = getelementptr inbounds %struct.rmi_driver_data, ptr %72, i32 0, i32 17
  %77 = ptrtoint ptr %num_tx_electrodes.i159 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %num_tx_electrodes.i159, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool6.not.i = icmp eq i8 %78, 0
  br i1 %tobool6.not.i, label %cond.false8.i, label %cond.end.i.cond.end11.i_crit_edge

cond.end.i.cond.end11.i_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end11.i

cond.false8.i:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %79 = ptrtoint ptr %num_tx_electrodes.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %num_tx_electrodes.i, align 1
  br label %cond.end11.i

cond.end11.i:                                     ; preds = %cond.false8.i, %cond.end.i.cond.end11.i_crit_edge
  %cond12.in.i = phi i8 [ %80, %cond.false8.i ], [ %78, %cond.end.i.cond.end11.i_crit_edge ]
  %format.i = getelementptr inbounds %struct.f54_data, ptr %call.i, i32 0, i32 17
  %arrayidx.i.i = getelementptr %struct.f54_data, ptr %call.i, i32 0, i32 23, i32 0
  %81 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp.i = icmp eq i32 %82, 0
  br i1 %cmp.i, label %cond.end11.i.rmi_f54_set_input.exit_crit_edge, label %if.end.i160

cond.end11.i.rmi_f54_set_input.exit_crit_edge:    ; preds = %cond.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rmi_f54_set_input.exit

if.end.i160:                                      ; preds = %cond.end11.i
  %pixelformat.i = getelementptr inbounds %struct.f54_data, ptr %call.i, i32 0, i32 17, i32 2
  %83 = zext i32 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %82, label %if.end.i160.if.end19.i_crit_edge [
    i32 1, label %if.end.i160.if.end19.sink.split.i_crit_edge
    i32 2, label %sw.bb1.i.i161
    i32 3, label %if.end.i160.sw.bb2.i.i_crit_edge
    i32 9, label %if.end.i160.sw.bb2.i.i_crit_edge168
    i32 19, label %if.end.i160.sw.bb2.i.i_crit_edge169
    i32 20, label %if.end.i160.sw.bb2.i.i_crit_edge170
    i32 21, label %if.end.i160.rmi_f54_set_input.exit_crit_edge
  ]

if.end.i160.rmi_f54_set_input.exit_crit_edge:     ; preds = %if.end.i160
  call void @__sanitizer_cov_trace_pc() #11
  br label %rmi_f54_set_input.exit

if.end.i160.sw.bb2.i.i_crit_edge170:              ; preds = %if.end.i160
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i.i

if.end.i160.sw.bb2.i.i_crit_edge169:              ; preds = %if.end.i160
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i.i

if.end.i160.sw.bb2.i.i_crit_edge168:              ; preds = %if.end.i160
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i.i

if.end.i160.sw.bb2.i.i_crit_edge:                 ; preds = %if.end.i160
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i.i

if.end.i160.if.end19.sink.split.i_crit_edge:      ; preds = %if.end.i160
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.sink.split.i

if.end.i160.if.end19.i_crit_edge:                 ; preds = %if.end.i160
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

sw.bb1.i.i161:                                    ; preds = %if.end.i160
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.sink.split.i

sw.bb2.i.i:                                       ; preds = %if.end.i160.sw.bb2.i.i_crit_edge, %if.end.i160.sw.bb2.i.i_crit_edge168, %if.end.i160.sw.bb2.i.i_crit_edge169, %if.end.i160.sw.bb2.i.i_crit_edge170
  br label %if.end19.sink.split.i

if.end19.sink.split.i:                            ; preds = %sw.bb2.i.i, %sw.bb1.i.i161, %if.end.i160.if.end19.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 909202772, %sw.bb2.i.i ], [ 909198420, %sw.bb1.i.i161 ], [ 942687316, %if.end.i160.if.end19.sink.split.i_crit_edge ]
  %84 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %.sink.i, ptr %pixelformat.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.end19.sink.split.i, %if.end.i160.if.end19.i_crit_edge
  %input.i = getelementptr inbounds %struct.f54_data, ptr %call.i, i32 0, i32 22
  %85 = ptrtoint ptr %input.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %input.i, align 8
  %conv20.i = zext i8 %cond.in.i to i32
  %86 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %conv20.i, ptr %format.i, align 4
  %conv21.i162 = zext i8 %cond12.in.i to i32
  %height.i = getelementptr inbounds %struct.f54_data, ptr %call.i, i32 0, i32 17, i32 1
  %87 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %conv21.i162, ptr %height.i, align 4
  %field.i = getelementptr inbounds %struct.f54_data, ptr %call.i, i32 0, i32 17, i32 3
  %88 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 1, ptr %field.i, align 4
  %colorspace.i = getelementptr inbounds %struct.f54_data, ptr %call.i, i32 0, i32 17, i32 6
  %89 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 11, ptr %colorspace.i, align 4
  %mul.i = shl nuw nsw i32 %conv20.i, 1
  %bytesperline.i = getelementptr inbounds %struct.f54_data, ptr %call.i, i32 0, i32 17, i32 4
  %90 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %mul.i, ptr %bytesperline.i, align 4
  %mul26.i = mul nuw nsw i32 %mul.i, %conv21.i162
  %sizeimage.i = getelementptr inbounds %struct.f54_data, ptr %call.i, i32 0, i32 17, i32 5
  %91 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %mul26.i, ptr %sizeimage.i, align 4
  br label %rmi_f54_set_input.exit

rmi_f54_set_input.exit:                           ; preds = %if.end19.i, %if.end.i160.rmi_f54_set_input.exit_crit_edge, %cond.end11.i.rmi_f54_set_input.exit_crit_edge
  %v4l2 = getelementptr inbounds %struct.f54_data, ptr %call.i, i32 0, i32 16
  %name = getelementptr inbounds %struct.f54_data, ptr %call.i, i32 0, i32 16, i32 4
  %call44 = call i32 @strlcpy(ptr noundef %name, ptr noundef nonnull @.str, i32 noundef 36) #9
  %call47 = call i32 @v4l2_device_register(ptr noundef %dev, ptr noundef %v4l2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %do.body55, label %do.end52

do.end52:                                         ; preds = %rmi_f54_set_input.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #12
  br label %remove_wq

do.body55:                                        ; preds = %rmi_f54_set_input.exit
  %lock = getelementptr inbounds %struct.f54_data, ptr %call.i, i32 0, i32 20
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @rmi_f54_probe.__key.15) #9
  %queue = getelementptr inbounds %struct.f54_data, ptr %call.i, i32 0, i32 19
  %92 = call ptr @memcpy(ptr %queue, ptr @rmi_f54_queue, i32 512)
  %drv_priv = getelementptr inbounds %struct.f54_data, ptr %call.i, i32 0, i32 19, i32 10
  %93 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call.i, ptr %drv_priv, align 8
  %lock61 = getelementptr inbounds %struct.f54_data, ptr %call.i, i32 0, i32 19, i32 5
  %94 = ptrtoint ptr %lock61 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %lock, ptr %lock61, align 4
  %dev64 = getelementptr inbounds %struct.f54_data, ptr %call.i, i32 0, i32 19, i32 2
  %95 = ptrtoint ptr %dev64 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %dev, ptr %dev64, align 8
  %call66 = call i32 @vb2_queue_init(ptr noundef %queue) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %do.body55.remove_v4l2_crit_edge

do.body55.remove_v4l2_crit_edge:                  ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #11
  br label %remove_v4l2

if.end69:                                         ; preds = %do.body55
  %vdev = getelementptr inbounds %struct.f54_data, ptr %call.i, i32 0, i32 18
  %96 = call ptr @memcpy(ptr %vdev, ptr @rmi_f54_video_device, i32 1352)
  %v4l2_dev = getelementptr inbounds %struct.f54_data, ptr %call.i, i32 0, i32 18, i32 7
  %97 = ptrtoint ptr %v4l2_dev to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %v4l2, ptr %v4l2_dev, align 4
  %lock74 = getelementptr inbounds %struct.f54_data, ptr %call.i, i32 0, i32 18, i32 26
  %98 = ptrtoint ptr %lock74 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %lock, ptr %lock74, align 8
  %vfl_dir = getelementptr inbounds %struct.f54_data, ptr %call.i, i32 0, i32 18, i32 14
  %99 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %vfl_dir, align 4
  %queue78 = getelementptr inbounds %struct.f54_data, ptr %call.i, i32 0, i32 18, i32 10
  %100 = ptrtoint ptr %queue78 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %queue, ptr %queue78, align 8
  %driver_data.i.i164 = getelementptr inbounds %struct.f54_data, ptr %call.i, i32 0, i32 18, i32 5, i32 8
  %101 = ptrtoint ptr %driver_data.i.i164 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call.i, ptr %driver_data.i.i164, align 4
  %call.i165 = call i32 @__video_register_device(ptr noundef %vdev, i32 noundef 5, i32 noundef -1, i32 noundef 1, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i165)
  %tobool82.not = icmp eq i32 %call.i165, 0
  br i1 %tobool82.not, label %if.end69.cleanup_crit_edge, label %do.end86

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end86:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #12
  br label %remove_v4l2

remove_v4l2:                                      ; preds = %do.end86, %do.body55.remove_v4l2_crit_edge
  %ret.0 = phi i32 [ %call66, %do.body55.remove_v4l2_crit_edge ], [ %call.i165, %do.end86 ]
  call void @v4l2_device_unregister(ptr noundef %v4l2) #9
  br label %remove_wq

remove_wq:                                        ; preds = %remove_v4l2, %do.end52
  %ret.1 = phi i32 [ %call47, %do.end52 ], [ %ret.0, %remove_v4l2 ]
  %call91 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #9
  %102 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %workqueue, align 4
  call void @flush_workqueue(ptr noundef %103) #9
  %104 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %workqueue, align 4
  call void @destroy_workqueue(ptr noundef %105) #9
  br label %cleanup

cleanup:                                          ; preds = %remove_wq, %if.end69.cleanup_crit_edge, %do.body19.cleanup_crit_edge, %do.body.cleanup_crit_edge, %rmi_f54_detect.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %remove_wq ], [ -12, %entry.cleanup_crit_edge ], [ %call.i.i, %rmi_f54_detect.exit ], [ -12, %do.body.cleanup_crit_edge ], [ -12, %do.body19.cleanup_crit_edge ], [ 0, %if.end69.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rmi_f54_remove(ptr nocapture noundef readonly %fn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 2, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %vdev = getelementptr inbounds %struct.f54_data, ptr %1, i32 0, i32 18
  tail call void @video_unregister_device(ptr noundef %vdev) #9
  %v4l2 = getelementptr inbounds %struct.f54_data, ptr %1, i32 0, i32 16
  tail call void @v4l2_device_unregister(ptr noundef %v4l2) #9
  %workqueue = getelementptr inbounds %struct.f54_data, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_f54_config(ptr noundef %fn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rmi_dev = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 1
  %0 = ptrtoint ptr %rmi_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmi_dev, align 4
  %driver = getelementptr inbounds %struct.rmi_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %clear_irq_bits = getelementptr inbounds %struct.rmi_driver, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %clear_irq_bits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clear_irq_bits, align 4
  %irq_mask = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 7
  %call = tail call i32 %5(ptr noundef %1, ptr noundef %irq_mask) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rmi_f54_work(ptr noundef %work) #0 align 64 {
entry:
  %fifo = alloca [2 x i8], align 1
  %command = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -216
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %fifo) #9
  %2 = ptrtoint ptr %fifo to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %fifo, align 1, !annotation !129
  %3 = getelementptr inbounds [2 x i8], ptr %fifo, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !129
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %command) #9
  %5 = ptrtoint ptr %command to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %command, align 1, !annotation !129
  %rmi_dev1.i = getelementptr inbounds %struct.rmi_function, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %rmi_dev1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rmi_dev1.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %num_rx_electrodes.i = getelementptr inbounds %struct.rmi_driver_data, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %num_rx_electrodes.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_rx_electrodes.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %cond.false.i, label %entry.cond.end.i_crit_edge

entry.cond.end.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %num_rx_electrodes2.i = getelementptr i8, ptr %work, i32 -212
  %12 = ptrtoint ptr %num_rx_electrodes2.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num_rx_electrodes2.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %entry.cond.end.i_crit_edge
  %cond.in.i = phi i8 [ %13, %cond.false.i ], [ %11, %entry.cond.end.i_crit_edge ]
  %num_tx_electrodes.i = getelementptr inbounds %struct.rmi_driver_data, ptr %9, i32 0, i32 17
  %14 = ptrtoint ptr %num_tx_electrodes.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num_tx_electrodes.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool6.not.i = icmp eq i8 %15, 0
  br i1 %tobool6.not.i, label %cond.false8.i, label %cond.end.i.cond.end11.i_crit_edge

cond.end.i.cond.end11.i_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end11.i

cond.false8.i:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %num_tx_electrodes9.i = getelementptr i8, ptr %work, i32 -211
  %16 = ptrtoint ptr %num_tx_electrodes9.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %num_tx_electrodes9.i, align 1
  br label %cond.end11.i

cond.end11.i:                                     ; preds = %cond.false8.i, %cond.end.i.cond.end11.i_crit_edge
  %cond12.in.i = phi i8 [ %17, %cond.false8.i ], [ %15, %cond.end.i.cond.end11.i_crit_edge ]
  %input.i = getelementptr i8, ptr %work, i32 2296
  %18 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %input.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %19)
  %cmp.i.i = icmp ugt i32 %19, 20
  br i1 %cmp.i.i, label %cond.end11.i.do.end_crit_edge, label %rmi_f54_get_reptype.exit.i

cond.end11.i.do.end_crit_edge:                    ; preds = %cond.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

rmi_f54_get_reptype.exit.i:                       ; preds = %cond.end11.i
  %arrayidx.i.i = getelementptr %struct.f54_data, ptr %add.ptr, i32 0, i32 23, i32 %19
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %21, label %rmi_f54_get_reptype.exit.i.do.end_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %rmi_f54_get_reptype.exit.i.sw.bb17.i_crit_edge
    i32 3, label %rmi_f54_get_reptype.exit.i.sw.bb17.i_crit_edge157
    i32 9, label %rmi_f54_get_reptype.exit.i.sw.bb17.i_crit_edge158
    i32 19, label %rmi_f54_get_reptype.exit.i.sw.bb17.i_crit_edge159
    i32 20, label %rmi_f54_get_reptype.exit.i.sw.bb17.i_crit_edge160
  ]

rmi_f54_get_reptype.exit.i.sw.bb17.i_crit_edge160: ; preds = %rmi_f54_get_reptype.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17.i

rmi_f54_get_reptype.exit.i.sw.bb17.i_crit_edge159: ; preds = %rmi_f54_get_reptype.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17.i

rmi_f54_get_reptype.exit.i.sw.bb17.i_crit_edge158: ; preds = %rmi_f54_get_reptype.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17.i

rmi_f54_get_reptype.exit.i.sw.bb17.i_crit_edge157: ; preds = %rmi_f54_get_reptype.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17.i

rmi_f54_get_reptype.exit.i.sw.bb17.i_crit_edge:   ; preds = %rmi_f54_get_reptype.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17.i

rmi_f54_get_reptype.exit.i.do.end_crit_edge:      ; preds = %rmi_f54_get_reptype.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

sw.bb.i:                                          ; preds = %rmi_f54_get_reptype.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv16.i = zext i8 %cond12.in.i to i32
  br label %rmi_f54_get_report_size.exit

sw.bb17.i:                                        ; preds = %rmi_f54_get_reptype.exit.i.sw.bb17.i_crit_edge, %rmi_f54_get_reptype.exit.i.sw.bb17.i_crit_edge157, %rmi_f54_get_reptype.exit.i.sw.bb17.i_crit_edge158, %rmi_f54_get_reptype.exit.i.sw.bb17.i_crit_edge159, %rmi_f54_get_reptype.exit.i.sw.bb17.i_crit_edge160
  %conv18.i = zext i8 %cond.in.i to i32
  %mul19.i = shl nuw nsw i32 %conv18.i, 1
  br label %rmi_f54_get_report_size.exit

rmi_f54_get_report_size.exit:                     ; preds = %sw.bb17.i, %sw.bb.i
  %conv15.i.sink.in = phi i8 [ %cond.in.i, %sw.bb.i ], [ %cond12.in.i, %sw.bb17.i ]
  %conv16.i.sink = phi i32 [ %conv16.i, %sw.bb.i ], [ %mul19.i, %sw.bb17.i ]
  %conv15.i.sink = zext i8 %conv15.i.sink.in to i32
  %mul.i = mul nuw nsw i32 %conv16.i.sink, %conv15.i.sink
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp = icmp eq i32 %mul.i, 0
  br i1 %cmp, label %rmi_f54_get_report_size.exit.do.end_crit_edge, label %if.end

rmi_f54_get_report_size.exit.do.end_crit_edge:    ; preds = %rmi_f54_get_report_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %rmi_f54_get_report_size.exit.do.end_crit_edge, %rmi_f54_get_reptype.exit.i.do.end_crit_edge, %cond.end11.i.do.end_crit_edge
  %dev = getelementptr inbounds %struct.rmi_function, ptr %1, i32 0, i32 2
  %report_type = getelementptr i8, ptr %work, i32 -204
  %23 = ptrtoint ptr %report_type to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %report_type, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %24) #12
  br label %if.else

if.end:                                           ; preds = %rmi_f54_get_report_size.exit
  %data_mutex = getelementptr i8, ptr %work, i32 -96
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #9
  %25 = ptrtoint ptr %rmi_dev1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmi_dev1.i, align 4
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr, align 8
  %command_base_addr = getelementptr inbounds %struct.rmi_function_descriptor, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %command_base_addr to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %command_base_addr, align 2
  %xport.i = getelementptr inbounds %struct.rmi_device, ptr %26, i32 0, i32 3
  %31 = ptrtoint ptr %xport.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %xport.i, align 8
  %ops.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i, align 4
  %read_block.i = getelementptr inbounds %struct.rmi_transport_ops, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %read_block.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read_block.i, align 4
  %call.i = call i32 %36(ptr noundef %32, i16 noundef zeroext %30, ptr noundef nonnull %command, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end9, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev8 = getelementptr inbounds %struct.rmi_function, ptr %1, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.30) #12
  br label %if.else

if.end9:                                          ; preds = %if.end
  %37 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %command, align 1
  %39 = and i8 %38, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool10.not = icmp eq i8 %39, 0
  br i1 %tobool10.not, label %for.body.lr.ph, label %if.then11

if.then11:                                        ; preds = %if.end9
  %timeout = getelementptr i8, ptr %work, i32 100
  %40 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %timeout, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %41, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp12 = icmp slt i32 %sub, 0
  br i1 %cmp12, label %do.end17, label %if.then73

do.end17:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %dev18 = getelementptr inbounds %struct.rmi_function, ptr %1, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.33) #12
  br label %if.else

for.body.lr.ph:                                   ; preds = %if.end9
  %dev21 = getelementptr inbounds %struct.rmi_function, ptr %1, i32 0, i32 2
  call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 4, ptr noundef %dev21, ptr noundef nonnull @.str.35) #9
  %data_base_addr = getelementptr inbounds %struct.rmi_function_descriptor, ptr %1, i32 0, i32 3
  %report_data = getelementptr i8, ptr %work, i32 -200
  br label %for.body

for.cond:                                         ; preds = %if.end43
  %add59 = add nuw nsw i32 %i.0137, 32
  %cmp22 = icmp ugt i32 %mul.i, %add59
  br i1 %cmp22, label %for.cond.for.body_crit_edge, label %for.cond.abort_crit_edge

for.cond.abort_crit_edge:                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0137 = phi i32 [ 0, %for.body.lr.ph ], [ %add59, %for.cond.for.body_crit_edge ]
  %conv29 = trunc i32 %i.0137 to i8
  %43 = ptrtoint ptr %fifo to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv29, ptr %fifo, align 1
  %44 = lshr i32 %i.0137, 8
  %conv30 = trunc i32 %44 to i8
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv30, ptr %3, align 1
  %46 = ptrtoint ptr %rmi_dev1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rmi_dev1.i, align 4
  %48 = ptrtoint ptr %data_base_addr to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %data_base_addr, align 2
  %add = add i16 %49, 1
  %xport.i120 = getelementptr inbounds %struct.rmi_device, ptr %47, i32 0, i32 3
  %50 = ptrtoint ptr %xport.i120 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %xport.i120, align 8
  %ops.i121 = getelementptr inbounds %struct.rmi_transport_dev, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %ops.i121 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops.i121, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %call.i122 = call i32 %55(ptr noundef %51, i16 noundef zeroext %add, ptr noundef nonnull %fifo, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122)
  %tobool37.not = icmp eq i32 %call.i122, 0
  br i1 %tobool37.not, label %if.end43, label %do.end41

do.end41:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.37) #12
  br label %abort

if.end43:                                         ; preds = %for.body
  %sub24 = sub nsw i32 %mul.i, %i.0137
  %56 = call i32 @llvm.smin.i32(i32 %sub24, i32 32)
  %57 = ptrtoint ptr %rmi_dev1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rmi_dev1.i, align 4
  %59 = ptrtoint ptr %data_base_addr to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %data_base_addr, align 2
  %add48 = add i16 %60, 3
  %61 = ptrtoint ptr %report_data to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %report_data, align 8
  %add.ptr50 = getelementptr i8, ptr %62, i32 %i.0137
  %xport.i123 = getelementptr inbounds %struct.rmi_device, ptr %58, i32 0, i32 3
  %63 = ptrtoint ptr %xport.i123 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %xport.i123, align 8
  %ops.i124 = getelementptr inbounds %struct.rmi_transport_dev, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %ops.i124 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ops.i124, align 4
  %read_block.i125 = getelementptr inbounds %struct.rmi_transport_ops, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %read_block.i125 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %read_block.i125, align 4
  %call.i126 = call i32 %68(ptr noundef %64, i16 noundef zeroext %add48, ptr noundef %add.ptr50, i32 noundef %56) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i126)
  %tobool52.not = icmp eq i32 %call.i126, 0
  br i1 %tobool52.not, label %for.cond, label %do.end56

do.end56:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.28, i32 noundef %56, i32 noundef %call.i126) #12
  br label %abort

abort:                                            ; preds = %do.end56, %do.end41, %for.cond.abort_crit_edge
  %69 = phi i32 [ 0, %do.end56 ], [ 0, %do.end41 ], [ %mul.i, %for.cond.abort_crit_edge ]
  %report_size65 = getelementptr i8, ptr %work, i32 -196
  %70 = ptrtoint ptr %report_size65 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %report_size65, align 4
  br label %if.else

if.then73:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %workqueue = getelementptr i8, ptr %work, i32 -4
  %71 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %workqueue, align 4
  %call.i127 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %72, ptr noundef %work, i32 noundef 1) #9
  br label %if.end77

if.else:                                          ; preds = %abort, %do.end17, %do.end7, %do.end
  %is_busy = getelementptr i8, ptr %work, i32 -192
  %73 = ptrtoint ptr %is_busy to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %is_busy, align 8
  %cmd_done = getelementptr i8, ptr %work, i32 104
  call void @complete(ptr noundef %cmd_done) #9
  br label %if.end77

if.end77:                                         ; preds = %if.else, %if.then73
  %data_mutex78 = getelementptr i8, ptr %work, i32 -96
  call void @mutex_unlock(ptr noundef %data_mutex78) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %command) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fifo) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @rmi_f54_set_input(ptr nocapture noundef %f54, i32 noundef %i) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f54 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f54, align 8
  %rmi_dev1 = getelementptr inbounds %struct.rmi_function, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rmi_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmi_dev1, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %num_rx_electrodes = getelementptr inbounds %struct.rmi_driver_data, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %num_rx_electrodes to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_rx_electrodes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %num_rx_electrodes2 = getelementptr inbounds %struct.f54_data, ptr %f54, i32 0, i32 1
  %8 = ptrtoint ptr %num_rx_electrodes2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_rx_electrodes2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond.in = phi i8 [ %9, %cond.false ], [ %7, %entry.cond.end_crit_edge ]
  %num_tx_electrodes = getelementptr inbounds %struct.rmi_driver_data, ptr %5, i32 0, i32 17
  %10 = ptrtoint ptr %num_tx_electrodes to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_tx_electrodes, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not = icmp eq i8 %11, 0
  br i1 %tobool6.not, label %cond.false8, label %cond.end.cond.end11_crit_edge

cond.end.cond.end11_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end11

cond.false8:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %num_tx_electrodes9 = getelementptr inbounds %struct.f54_data, ptr %f54, i32 0, i32 2
  %12 = ptrtoint ptr %num_tx_electrodes9 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num_tx_electrodes9, align 1
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false8, %cond.end.cond.end11_crit_edge
  %cond12.in = phi i8 [ %13, %cond.false8 ], [ %11, %cond.end.cond.end11_crit_edge ]
  %format = getelementptr inbounds %struct.f54_data, ptr %f54, i32 0, i32 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %i)
  %cmp.i = icmp ugt i32 %i, 20
  br i1 %cmp.i, label %cond.end11.cleanup_crit_edge, label %rmi_f54_get_reptype.exit

cond.end11.cleanup_crit_edge:                     ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

rmi_f54_get_reptype.exit:                         ; preds = %cond.end11
  %arrayidx.i = getelementptr %struct.f54_data, ptr %f54, i32 0, i32 23, i32 %i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp eq i32 %15, 0
  br i1 %cmp, label %rmi_f54_get_reptype.exit.cleanup_crit_edge, label %if.end

rmi_f54_get_reptype.exit.cleanup_crit_edge:       ; preds = %rmi_f54_get_reptype.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %rmi_f54_get_reptype.exit
  %pixelformat = getelementptr inbounds %struct.f54_data, ptr %f54, i32 0, i32 17, i32 2
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %15, label %if.end.if.end19_crit_edge [
    i32 1, label %if.end.if.end19.sink.split_crit_edge
    i32 2, label %sw.bb1.i
    i32 3, label %if.end.sw.bb2.i_crit_edge
    i32 9, label %if.end.sw.bb2.i_crit_edge55
    i32 19, label %if.end.sw.bb2.i_crit_edge56
    i32 20, label %if.end.sw.bb2.i_crit_edge57
    i32 21, label %if.end.cleanup_crit_edge
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.sw.bb2.i_crit_edge57:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i

if.end.sw.bb2.i_crit_edge56:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i

if.end.sw.bb2.i_crit_edge55:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i

if.end.sw.bb2.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2.i

if.end.if.end19.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.sink.split

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.sink.split

sw.bb2.i:                                         ; preds = %if.end.sw.bb2.i_crit_edge, %if.end.sw.bb2.i_crit_edge55, %if.end.sw.bb2.i_crit_edge56, %if.end.sw.bb2.i_crit_edge57
  br label %if.end19.sink.split

if.end19.sink.split:                              ; preds = %sw.bb2.i, %sw.bb1.i, %if.end.if.end19.sink.split_crit_edge
  %.sink = phi i32 [ 909202772, %sw.bb2.i ], [ 909198420, %sw.bb1.i ], [ 942687316, %if.end.if.end19.sink.split_crit_edge ]
  %17 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink, ptr %pixelformat, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.end19.sink.split, %if.end.if.end19_crit_edge
  %input = getelementptr inbounds %struct.f54_data, ptr %f54, i32 0, i32 22
  %18 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %i, ptr %input, align 8
  %conv20 = zext i8 %cond.in to i32
  %19 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv20, ptr %format, align 4
  %conv21 = zext i8 %cond12.in to i32
  %height = getelementptr inbounds %struct.f54_data, ptr %f54, i32 0, i32 17, i32 1
  %20 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv21, ptr %height, align 4
  %field = getelementptr inbounds %struct.f54_data, ptr %f54, i32 0, i32 17, i32 3
  %21 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %field, align 4
  %colorspace = getelementptr inbounds %struct.f54_data, ptr %f54, i32 0, i32 17, i32 6
  %22 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 11, ptr %colorspace, align 4
  %mul = shl nuw nsw i32 %conv20, 1
  %bytesperline = getelementptr inbounds %struct.f54_data, ptr %f54, i32 0, i32 17, i32 4
  %23 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %mul, ptr %bytesperline, align 4
  %mul26 = mul nuw nsw i32 %mul, %conv21
  %sizeimage = getelementptr inbounds %struct.f54_data, ptr %f54, i32 0, i32 17, i32 5
  %24 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mul26, ptr %sizeimage, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end.cleanup_crit_edge, %rmi_f54_get_reptype.exit.cleanup_crit_edge, %cond.end11.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ -22, %rmi_f54_get_reptype.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %cond.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rmi_dbg(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rmi_f54_queue_setup(ptr nocapture noundef readonly %q, ptr nocapture noundef readnone %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %2 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sizes, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %rmi_dev1.i = getelementptr inbounds %struct.rmi_function, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %rmi_dev1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rmi_dev1.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i, align 4
  %num_rx_electrodes.i = getelementptr inbounds %struct.rmi_driver_data, ptr %11, i32 0, i32 16
  %12 = ptrtoint ptr %num_rx_electrodes.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num_rx_electrodes.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %cond.false.i, label %if.then.cond.end.i_crit_edge

if.then.cond.end.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %num_rx_electrodes2.i = getelementptr inbounds %struct.f54_data, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %num_rx_electrodes2.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num_rx_electrodes2.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.then.cond.end.i_crit_edge
  %cond.in.i = phi i8 [ %15, %cond.false.i ], [ %13, %if.then.cond.end.i_crit_edge ]
  %num_tx_electrodes.i = getelementptr inbounds %struct.rmi_driver_data, ptr %11, i32 0, i32 17
  %16 = ptrtoint ptr %num_tx_electrodes.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %num_tx_electrodes.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool6.not.i = icmp eq i8 %17, 0
  br i1 %tobool6.not.i, label %cond.false8.i, label %cond.end.i.cond.end11.i_crit_edge

cond.end.i.cond.end11.i_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end11.i

cond.false8.i:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %num_tx_electrodes9.i = getelementptr inbounds %struct.f54_data, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %num_tx_electrodes9.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %num_tx_electrodes9.i, align 1
  br label %cond.end11.i

cond.end11.i:                                     ; preds = %cond.false8.i, %cond.end.i.cond.end11.i_crit_edge
  %cond12.in.i = phi i8 [ %19, %cond.false8.i ], [ %17, %cond.end.i.cond.end11.i_crit_edge ]
  %input.i = getelementptr inbounds %struct.f54_data, ptr %1, i32 0, i32 22
  %20 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %input.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %21)
  %cmp.i.i = icmp ugt i32 %21, 20
  br i1 %cmp.i.i, label %cond.end11.i.rmi_f54_get_report_size.exit_crit_edge, label %rmi_f54_get_reptype.exit.i

cond.end11.i.rmi_f54_get_report_size.exit_crit_edge: ; preds = %cond.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rmi_f54_get_report_size.exit

rmi_f54_get_reptype.exit.i:                       ; preds = %cond.end11.i
  %arrayidx.i.i = getelementptr %struct.f54_data, ptr %1, i32 0, i32 23, i32 %21
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %23, label %rmi_f54_get_reptype.exit.i.rmi_f54_get_report_size.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %rmi_f54_get_reptype.exit.i.sw.bb17.i_crit_edge
    i32 3, label %rmi_f54_get_reptype.exit.i.sw.bb17.i_crit_edge35
    i32 9, label %rmi_f54_get_reptype.exit.i.sw.bb17.i_crit_edge36
    i32 19, label %rmi_f54_get_reptype.exit.i.sw.bb17.i_crit_edge37
    i32 20, label %rmi_f54_get_reptype.exit.i.sw.bb17.i_crit_edge38
  ]

rmi_f54_get_reptype.exit.i.sw.bb17.i_crit_edge38: ; preds = %rmi_f54_get_reptype.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17.i

rmi_f54_get_reptype.exit.i.sw.bb17.i_crit_edge37: ; preds = %rmi_f54_get_reptype.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17.i

rmi_f54_get_reptype.exit.i.sw.bb17.i_crit_edge36: ; preds = %rmi_f54_get_reptype.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17.i

rmi_f54_get_reptype.exit.i.sw.bb17.i_crit_edge35: ; preds = %rmi_f54_get_reptype.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17.i

rmi_f54_get_reptype.exit.i.sw.bb17.i_crit_edge:   ; preds = %rmi_f54_get_reptype.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17.i

rmi_f54_get_reptype.exit.i.rmi_f54_get_report_size.exit_crit_edge: ; preds = %rmi_f54_get_reptype.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rmi_f54_get_report_size.exit

sw.bb.i:                                          ; preds = %rmi_f54_get_reptype.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv15.i = zext i8 %cond.in.i to i32
  %conv16.i = zext i8 %cond12.in.i to i32
  %mul.i = mul nuw nsw i32 %conv16.i, %conv15.i
  br label %rmi_f54_get_report_size.exit

sw.bb17.i:                                        ; preds = %rmi_f54_get_reptype.exit.i.sw.bb17.i_crit_edge, %rmi_f54_get_reptype.exit.i.sw.bb17.i_crit_edge35, %rmi_f54_get_reptype.exit.i.sw.bb17.i_crit_edge36, %rmi_f54_get_reptype.exit.i.sw.bb17.i_crit_edge37, %rmi_f54_get_reptype.exit.i.sw.bb17.i_crit_edge38
  %conv18.i = zext i8 %cond.in.i to i32
  %mul19.i = shl nuw nsw i32 %conv18.i, 1
  %conv20.i = zext i8 %cond12.in.i to i32
  %mul21.i = mul nuw nsw i32 %mul19.i, %conv20.i
  br label %rmi_f54_get_report_size.exit

rmi_f54_get_report_size.exit:                     ; preds = %sw.bb17.i, %sw.bb.i, %rmi_f54_get_reptype.exit.i.rmi_f54_get_report_size.exit_crit_edge, %cond.end11.i.rmi_f54_get_report_size.exit_crit_edge
  %size.0.i = phi i32 [ %mul21.i, %sw.bb17.i ], [ %mul.i, %sw.bb.i ], [ 0, %rmi_f54_get_reptype.exit.i.rmi_f54_get_report_size.exit_crit_edge ], [ 0, %cond.end11.i.rmi_f54_get_report_size.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %size.0.i)
  %cmp = icmp ult i32 %5, %size.0.i
  %cond = select i1 %cmp, i32 -22, i32 0
  br label %cleanup

if.end:                                           ; preds = %entry
  %25 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %nplanes, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  %rmi_dev1.i6 = getelementptr inbounds %struct.rmi_function, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %rmi_dev1.i6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmi_dev1.i6, align 4
  %driver_data.i.i7 = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %driver_data.i.i7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %driver_data.i.i7, align 4
  %num_rx_electrodes.i8 = getelementptr inbounds %struct.rmi_driver_data, ptr %31, i32 0, i32 16
  %32 = ptrtoint ptr %num_rx_electrodes.i8 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %num_rx_electrodes.i8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i9 = icmp eq i8 %33, 0
  br i1 %tobool.not.i9, label %cond.false.i11, label %if.end.cond.end.i15_crit_edge

if.end.cond.end.i15_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i15

cond.false.i11:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %num_rx_electrodes2.i10 = getelementptr inbounds %struct.f54_data, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %num_rx_electrodes2.i10 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %num_rx_electrodes2.i10, align 4
  br label %cond.end.i15

cond.end.i15:                                     ; preds = %cond.false.i11, %if.end.cond.end.i15_crit_edge
  %cond.in.i12 = phi i8 [ %35, %cond.false.i11 ], [ %33, %if.end.cond.end.i15_crit_edge ]
  %num_tx_electrodes.i13 = getelementptr inbounds %struct.rmi_driver_data, ptr %31, i32 0, i32 17
  %36 = ptrtoint ptr %num_tx_electrodes.i13 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %num_tx_electrodes.i13, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool6.not.i14 = icmp eq i8 %37, 0
  br i1 %tobool6.not.i14, label %cond.false8.i17, label %cond.end.i15.cond.end11.i21_crit_edge

cond.end.i15.cond.end11.i21_crit_edge:            ; preds = %cond.end.i15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end11.i21

cond.false8.i17:                                  ; preds = %cond.end.i15
  call void @__sanitizer_cov_trace_pc() #11
  %num_tx_electrodes9.i16 = getelementptr inbounds %struct.f54_data, ptr %1, i32 0, i32 2
  %38 = ptrtoint ptr %num_tx_electrodes9.i16 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %num_tx_electrodes9.i16, align 1
  br label %cond.end11.i21

cond.end11.i21:                                   ; preds = %cond.false8.i17, %cond.end.i15.cond.end11.i21_crit_edge
  %cond12.in.i18 = phi i8 [ %39, %cond.false8.i17 ], [ %37, %cond.end.i15.cond.end11.i21_crit_edge ]
  %input.i19 = getelementptr inbounds %struct.f54_data, ptr %1, i32 0, i32 22
  %40 = ptrtoint ptr %input.i19 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %input.i19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %41)
  %cmp.i.i20 = icmp ugt i32 %41, 20
  br i1 %cmp.i.i20, label %cond.end11.i21.rmi_f54_get_report_size.exit34_crit_edge, label %rmi_f54_get_reptype.exit.i23

cond.end11.i21.rmi_f54_get_report_size.exit34_crit_edge: ; preds = %cond.end11.i21
  call void @__sanitizer_cov_trace_pc() #11
  br label %rmi_f54_get_report_size.exit34

rmi_f54_get_reptype.exit.i23:                     ; preds = %cond.end11.i21
  %arrayidx.i.i22 = getelementptr %struct.f54_data, ptr %1, i32 0, i32 23, i32 %41
  %42 = ptrtoint ptr %arrayidx.i.i22 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i.i22, align 4
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %43, label %rmi_f54_get_reptype.exit.i23.rmi_f54_get_report_size.exit34_crit_edge [
    i32 1, label %sw.bb.i27
    i32 2, label %rmi_f54_get_reptype.exit.i23.sw.bb17.i32_crit_edge
    i32 3, label %rmi_f54_get_reptype.exit.i23.sw.bb17.i32_crit_edge39
    i32 9, label %rmi_f54_get_reptype.exit.i23.sw.bb17.i32_crit_edge40
    i32 19, label %rmi_f54_get_reptype.exit.i23.sw.bb17.i32_crit_edge41
    i32 20, label %rmi_f54_get_reptype.exit.i23.sw.bb17.i32_crit_edge42
  ]

rmi_f54_get_reptype.exit.i23.sw.bb17.i32_crit_edge42: ; preds = %rmi_f54_get_reptype.exit.i23
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17.i32

rmi_f54_get_reptype.exit.i23.sw.bb17.i32_crit_edge41: ; preds = %rmi_f54_get_reptype.exit.i23
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17.i32

rmi_f54_get_reptype.exit.i23.sw.bb17.i32_crit_edge40: ; preds = %rmi_f54_get_reptype.exit.i23
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17.i32

rmi_f54_get_reptype.exit.i23.sw.bb17.i32_crit_edge39: ; preds = %rmi_f54_get_reptype.exit.i23
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17.i32

rmi_f54_get_reptype.exit.i23.sw.bb17.i32_crit_edge: ; preds = %rmi_f54_get_reptype.exit.i23
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17.i32

rmi_f54_get_reptype.exit.i23.rmi_f54_get_report_size.exit34_crit_edge: ; preds = %rmi_f54_get_reptype.exit.i23
  call void @__sanitizer_cov_trace_pc() #11
  br label %rmi_f54_get_report_size.exit34

sw.bb.i27:                                        ; preds = %rmi_f54_get_reptype.exit.i23
  call void @__sanitizer_cov_trace_pc() #11
  %conv15.i24 = zext i8 %cond.in.i12 to i32
  %conv16.i25 = zext i8 %cond12.in.i18 to i32
  %mul.i26 = mul nuw nsw i32 %conv16.i25, %conv15.i24
  br label %rmi_f54_get_report_size.exit34

sw.bb17.i32:                                      ; preds = %rmi_f54_get_reptype.exit.i23.sw.bb17.i32_crit_edge, %rmi_f54_get_reptype.exit.i23.sw.bb17.i32_crit_edge39, %rmi_f54_get_reptype.exit.i23.sw.bb17.i32_crit_edge40, %rmi_f54_get_reptype.exit.i23.sw.bb17.i32_crit_edge41, %rmi_f54_get_reptype.exit.i23.sw.bb17.i32_crit_edge42
  %conv18.i28 = zext i8 %cond.in.i12 to i32
  %mul19.i29 = shl nuw nsw i32 %conv18.i28, 1
  %conv20.i30 = zext i8 %cond12.in.i18 to i32
  %mul21.i31 = mul nuw nsw i32 %mul19.i29, %conv20.i30
  br label %rmi_f54_get_report_size.exit34

rmi_f54_get_report_size.exit34:                   ; preds = %sw.bb17.i32, %sw.bb.i27, %rmi_f54_get_reptype.exit.i23.rmi_f54_get_report_size.exit34_crit_edge, %cond.end11.i21.rmi_f54_get_report_size.exit34_crit_edge
  %size.0.i33 = phi i32 [ %mul21.i31, %sw.bb17.i32 ], [ %mul.i26, %sw.bb.i27 ], [ 0, %rmi_f54_get_reptype.exit.i23.rmi_f54_get_report_size.exit34_crit_edge ], [ 0, %cond.end11.i21.rmi_f54_get_report_size.exit34_crit_edge ]
  %45 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %size.0.i33, ptr %sizes, align 4
  br label %cleanup

cleanup:                                          ; preds = %rmi_f54_get_report_size.exit34, %rmi_f54_get_report_size.exit
  %retval.0 = phi i32 [ %cond, %rmi_f54_get_report_size.exit ], [ 0, %rmi_f54_get_report_size.exit34 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rmi_f54_stop_streaming(ptr nocapture noundef readonly %q) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %sequence = getelementptr inbounds %struct.f54_data, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %sequence, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rmi_f54_buffer_queue(ptr noundef %vb) #0 align 64 {
entry:
  %data.addr.i38.i = alloca i8, align 1
  %data.addr.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %status_mutex = getelementptr inbounds %struct.f54_data, ptr %3, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %status_mutex, i32 noundef 0) #9
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %4 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i, label %entry.vb2_set_plane_payload.exit_crit_edge, label %if.then.i

entry.vb2_set_plane_payload.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %vb2_set_plane_payload.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %6 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.then.i, %entry.vb2_set_plane_payload.exit_crit_edge
  %input = getelementptr inbounds %struct.f54_data, ptr %3, i32 0, i32 22
  %7 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %input, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %8)
  %cmp.i = icmp ugt i32 %8, 20
  br i1 %cmp.i, label %vb2_set_plane_payload.exit.done_crit_edge, label %rmi_f54_get_reptype.exit

vb2_set_plane_payload.exit.done_crit_edge:        ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

rmi_f54_get_reptype.exit:                         ; preds = %vb2_set_plane_payload.exit
  %arrayidx.i = getelementptr %struct.f54_data, ptr %3, i32 0, i32 23, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %rmi_f54_get_reptype.exit.done_crit_edge, label %if.end

rmi_f54_get_reptype.exit.done_crit_edge:          ; preds = %rmi_f54_get_reptype.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end:                                           ; preds = %rmi_f54_get_reptype.exit
  %is_busy = getelementptr inbounds %struct.f54_data, ptr %3, i32 0, i32 9
  %11 = ptrtoint ptr %is_busy to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %is_busy, align 8, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %if.end3, label %if.end.done_crit_edge

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end3:                                          ; preds = %if.end
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 8
  %driver_data.i.i = getelementptr inbounds %struct.rmi_function, ptr %14, i32 0, i32 2, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i.i, align 4
  %rmi_dev1.i = getelementptr inbounds %struct.rmi_function, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %rmi_dev1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rmi_dev1.i, align 4
  %report_type2.i = getelementptr inbounds %struct.f54_data, ptr %16, i32 0, i32 6
  %19 = ptrtoint ptr %report_type2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %report_type2.i, align 4
  %conv.i = and i32 %10, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %conv.i)
  %cmp.not.i64 = icmp eq i32 %20, %conv.i
  br i1 %cmp.not.i64, label %if.end3.if.end9.i_crit_edge, label %if.then.i65

if.end3.if.end9.i_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

if.then.i65:                                      ; preds = %if.end3
  %conv = trunc i32 %10 to i8
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %16, align 8
  %data_base_addr.i = getelementptr inbounds %struct.rmi_function_descriptor, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %data_base_addr.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %data_base_addr.i, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.addr.i.i) #9
  %25 = ptrtoint ptr %data.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv, ptr %data.addr.i.i, align 1
  %xport.i.i = getelementptr inbounds %struct.rmi_device, ptr %18, i32 0, i32 3
  %26 = ptrtoint ptr %xport.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %xport.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ops.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %call.i.i = call i32 %31(ptr noundef %27, i16 noundef zeroext %24, ptr noundef nonnull %data.addr.i.i, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.addr.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i66, label %if.then.i65.do.end_crit_edge

if.then.i65.do.end_crit_edge:                     ; preds = %if.then.i65
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.i66:                                       ; preds = %if.then.i65
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %report_type2.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv.i, ptr %report_type2.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end.i66, %if.end3.if.end9.i_crit_edge
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #9
  %data_mutex.i = getelementptr inbounds %struct.f54_data, ptr %16, i32 0, i32 11
  call void @mutex_lock_nested(ptr noundef %data_mutex.i, i32 noundef 0) #9
  %command_base_addr.i = getelementptr inbounds %struct.rmi_function_descriptor, ptr %14, i32 0, i32 1
  %33 = ptrtoint ptr %command_base_addr.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %command_base_addr.i, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.addr.i38.i) #9
  %35 = ptrtoint ptr %data.addr.i38.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %data.addr.i38.i, align 1
  %xport.i39.i = getelementptr inbounds %struct.rmi_device, ptr %18, i32 0, i32 3
  %36 = ptrtoint ptr %xport.i39.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %xport.i39.i, align 8
  %ops.i40.i = getelementptr inbounds %struct.rmi_transport_dev, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %ops.i40.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops.i40.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %call.i41.i = call i32 %41(ptr noundef %37, i16 noundef zeroext %34, ptr noundef nonnull %data.addr.i38.i, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.addr.i38.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41.i)
  %cmp12.i = icmp slt i32 %call.i41.i, 0
  br i1 %cmp12.i, label %rmi_f54_request_report.exit.thread81, label %rmi_f54_request_report.exit

rmi_f54_request_report.exit.thread81:             ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef %data_mutex.i) #9
  br label %do.end

rmi_f54_request_report.exit:                      ; preds = %if.end9.i
  %cmd_done.i = getelementptr inbounds %struct.f54_data, ptr %16, i32 0, i32 15
  %42 = ptrtoint ptr %cmd_done.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %cmd_done.i, align 4
  %wait.i.i = getelementptr inbounds %struct.f54_data, ptr %16, i32 0, i32 15, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.52, ptr noundef nonnull @init_completion.__key) #9
  %is_busy.i = getelementptr inbounds %struct.f54_data, ptr %16, i32 0, i32 9
  %43 = ptrtoint ptr %is_busy.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %is_busy.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %44, 10
  %timeout.i = getelementptr inbounds %struct.f54_data, ptr %16, i32 0, i32 14
  %45 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add.i, ptr %timeout.i, align 4
  %workqueue.i = getelementptr inbounds %struct.f54_data, ptr %16, i32 0, i32 12
  %46 = ptrtoint ptr %workqueue.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %workqueue.i, align 4
  %work.i = getelementptr inbounds %struct.f54_data, ptr %16, i32 0, i32 13
  %call.i42.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %47, ptr noundef %work.i, i32 noundef 0) #9
  call void @mutex_unlock(ptr noundef %data_mutex.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41.i)
  %tobool5.not = icmp eq i32 %call.i41.i, 0
  br i1 %tobool5.not, label %if.end8, label %rmi_f54_request_report.exit.do.end_crit_edge

rmi_f54_request_report.exit.do.end_crit_edge:     ; preds = %rmi_f54_request_report.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %rmi_f54_request_report.exit.do.end_crit_edge, %rmi_f54_request_report.exit.thread81, %if.then.i65.do.end_crit_edge
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %3, align 8
  %dev = getelementptr inbounds %struct.rmi_function, ptr %49, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43) #12
  br label %done

if.end8:                                          ; preds = %rmi_f54_request_report.exit
  %data_mutex = getelementptr inbounds %struct.f54_data, ptr %3, i32 0, i32 11
  call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #9
  %50 = ptrtoint ptr %is_busy to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %is_busy, align 8, !range !130
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool10.not83 = icmp eq i8 %51, 0
  br i1 %tobool10.not83, label %if.end8.while.end_crit_edge, label %while.body.lr.ph

if.end8.while.end_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end8
  %cmd_done = getelementptr inbounds %struct.f54_data, ptr %3, i32 0, i32 15
  br label %while.body

while.body:                                       ; preds = %if.end21.while.body_crit_edge, %while.body.lr.ph
  call void @mutex_unlock(ptr noundef %data_mutex) #9
  %call13 = call i32 @wait_for_completion_timeout(ptr noundef %cmd_done, i32 noundef 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %do.end18, label %if.end21

do.end18:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %3, align 8
  %dev20 = getelementptr inbounds %struct.rmi_function, ptr %53, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.46) #12
  br label %done

if.end21:                                         ; preds = %while.body
  call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #9
  %54 = ptrtoint ptr %is_busy to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %is_busy, align 8, !range !130
  %tobool10.not = icmp eq i8 %55, 0
  br i1 %tobool10.not, label %if.end21.while.end_crit_edge, label %if.end21.while.body_crit_edge

if.end21.while.body_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end21.while.end_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end21.while.end_crit_edge, %if.end8.while.end_crit_edge
  %call23 = call ptr @vb2_plane_vaddr(ptr noundef %vb, i32 noundef 0) #9
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %do.end28, label %if.end31

do.end28:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %3, align 8
  %dev30 = getelementptr inbounds %struct.rmi_function, ptr %57, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30, ptr noundef nonnull @.str.49) #12
  br label %data_done

if.end31:                                         ; preds = %while.end
  %report_data = getelementptr inbounds %struct.f54_data, ptr %3, i32 0, i32 7
  %58 = ptrtoint ptr %report_data to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %report_data, align 8
  %report_size = getelementptr inbounds %struct.f54_data, ptr %3, i32 0, i32 8
  %60 = ptrtoint ptr %report_size to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %report_size, align 4
  %62 = call ptr @memcpy(ptr %call23, ptr %59, i32 %61)
  %63 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %3, align 8
  %rmi_dev1.i68 = getelementptr inbounds %struct.rmi_function, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %rmi_dev1.i68 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rmi_dev1.i68, align 4
  %driver_data.i.i69 = getelementptr inbounds %struct.device, ptr %66, i32 0, i32 8
  %67 = ptrtoint ptr %driver_data.i.i69 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %driver_data.i.i69, align 4
  %num_rx_electrodes.i = getelementptr inbounds %struct.rmi_driver_data, ptr %68, i32 0, i32 16
  %69 = ptrtoint ptr %num_rx_electrodes.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %num_rx_electrodes.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not.i70 = icmp eq i8 %70, 0
  br i1 %tobool.not.i70, label %cond.false.i, label %if.end31.cond.end.i_crit_edge

if.end31.cond.end.i_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %num_rx_electrodes2.i = getelementptr inbounds %struct.f54_data, ptr %3, i32 0, i32 1
  %71 = ptrtoint ptr %num_rx_electrodes2.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %num_rx_electrodes2.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end31.cond.end.i_crit_edge
  %cond.in.i = phi i8 [ %72, %cond.false.i ], [ %70, %if.end31.cond.end.i_crit_edge ]
  %num_tx_electrodes.i = getelementptr inbounds %struct.rmi_driver_data, ptr %68, i32 0, i32 17
  %73 = ptrtoint ptr %num_tx_electrodes.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %num_tx_electrodes.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool6.not.i = icmp eq i8 %74, 0
  br i1 %tobool6.not.i, label %cond.false8.i, label %cond.end.i.cond.end11.i_crit_edge

cond.end.i.cond.end11.i_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end11.i

cond.false8.i:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %num_tx_electrodes9.i = getelementptr inbounds %struct.f54_data, ptr %3, i32 0, i32 2
  %75 = ptrtoint ptr %num_tx_electrodes9.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %num_tx_electrodes9.i, align 1
  br label %cond.end11.i

cond.end11.i:                                     ; preds = %cond.false8.i, %cond.end.i.cond.end11.i_crit_edge
  %cond12.in.i = phi i8 [ %76, %cond.false8.i ], [ %74, %cond.end.i.cond.end11.i_crit_edge ]
  %77 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %input, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %78)
  %cmp.i.i = icmp ugt i32 %78, 20
  br i1 %cmp.i.i, label %cond.end11.i.rmi_f54_get_report_size.exit_crit_edge, label %rmi_f54_get_reptype.exit.i

cond.end11.i.rmi_f54_get_report_size.exit_crit_edge: ; preds = %cond.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rmi_f54_get_report_size.exit

rmi_f54_get_reptype.exit.i:                       ; preds = %cond.end11.i
  %arrayidx.i.i = getelementptr %struct.f54_data, ptr %3, i32 0, i32 23, i32 %78
  %79 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx.i.i, align 4
  %81 = zext i32 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %80, label %rmi_f54_get_reptype.exit.i.rmi_f54_get_report_size.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %rmi_f54_get_reptype.exit.i.sw.bb17.i_crit_edge
    i32 3, label %rmi_f54_get_reptype.exit.i.sw.bb17.i_crit_edge84
    i32 9, label %rmi_f54_get_reptype.exit.i.sw.bb17.i_crit_edge85
    i32 19, label %rmi_f54_get_reptype.exit.i.sw.bb17.i_crit_edge86
    i32 20, label %rmi_f54_get_reptype.exit.i.sw.bb17.i_crit_edge87
  ]

rmi_f54_get_reptype.exit.i.sw.bb17.i_crit_edge87: ; preds = %rmi_f54_get_reptype.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17.i

rmi_f54_get_reptype.exit.i.sw.bb17.i_crit_edge86: ; preds = %rmi_f54_get_reptype.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17.i

rmi_f54_get_reptype.exit.i.sw.bb17.i_crit_edge85: ; preds = %rmi_f54_get_reptype.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17.i

rmi_f54_get_reptype.exit.i.sw.bb17.i_crit_edge84: ; preds = %rmi_f54_get_reptype.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17.i

rmi_f54_get_reptype.exit.i.sw.bb17.i_crit_edge:   ; preds = %rmi_f54_get_reptype.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb17.i

rmi_f54_get_reptype.exit.i.rmi_f54_get_report_size.exit_crit_edge: ; preds = %rmi_f54_get_reptype.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rmi_f54_get_report_size.exit

sw.bb.i:                                          ; preds = %rmi_f54_get_reptype.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv15.i = zext i8 %cond.in.i to i32
  %conv16.i = zext i8 %cond12.in.i to i32
  %mul.i = mul nuw nsw i32 %conv16.i, %conv15.i
  br label %rmi_f54_get_report_size.exit

sw.bb17.i:                                        ; preds = %rmi_f54_get_reptype.exit.i.sw.bb17.i_crit_edge, %rmi_f54_get_reptype.exit.i.sw.bb17.i_crit_edge84, %rmi_f54_get_reptype.exit.i.sw.bb17.i_crit_edge85, %rmi_f54_get_reptype.exit.i.sw.bb17.i_crit_edge86, %rmi_f54_get_reptype.exit.i.sw.bb17.i_crit_edge87
  %conv18.i = zext i8 %cond.in.i to i32
  %mul19.i = shl nuw nsw i32 %conv18.i, 1
  %conv20.i = zext i8 %cond12.in.i to i32
  %mul21.i = mul nuw nsw i32 %mul19.i, %conv20.i
  br label %rmi_f54_get_report_size.exit

rmi_f54_get_report_size.exit:                     ; preds = %sw.bb17.i, %sw.bb.i, %rmi_f54_get_reptype.exit.i.rmi_f54_get_report_size.exit_crit_edge, %cond.end11.i.rmi_f54_get_report_size.exit_crit_edge
  %size.0.i = phi i32 [ %mul21.i, %sw.bb17.i ], [ %mul.i, %sw.bb.i ], [ 0, %rmi_f54_get_reptype.exit.i.rmi_f54_get_report_size.exit_crit_edge ], [ 0, %cond.end11.i.rmi_f54_get_report_size.exit_crit_edge ]
  %82 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp.not.i72 = icmp eq i32 %83, 0
  br i1 %cmp.not.i72, label %rmi_f54_get_report_size.exit.data_done_crit_edge, label %if.then.i74

rmi_f54_get_report_size.exit.data_done_crit_edge: ; preds = %rmi_f54_get_report_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %data_done

if.then.i74:                                      ; preds = %rmi_f54_get_report_size.exit
  %length.i73 = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %84 = ptrtoint ptr %length.i73 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %length.i73, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %size.0.i)
  %cmp1.i = icmp ult i32 %85, %size.0.i
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i74.if.end42.i_crit_edge

if.then.i74.if.end42.i_crit_edge:                 ; preds = %if.then.i74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i74
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !131

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 1163, i32 noundef 9, ptr noundef null) #9
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %86 = ptrtoint ptr %length.i73 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %length.i73, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i74.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %87, %if.then38.i ], [ %size.0.i, %if.then.i74.if.end42.i_crit_edge ]
  %bytesused.i75 = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %88 = ptrtoint ptr %bytesused.i75 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %size.addr.0.i, ptr %bytesused.i75, align 4
  br label %data_done

data_done:                                        ; preds = %if.end42.i, %rmi_f54_get_report_size.exit.data_done_crit_edge, %do.end28
  %state.0 = phi i32 [ 6, %do.end28 ], [ 5, %rmi_f54_get_report_size.exit.data_done_crit_edge ], [ 5, %if.end42.i ]
  call void @mutex_unlock(ptr noundef %data_mutex) #9
  br label %done

done:                                             ; preds = %data_done, %do.end18, %do.end, %if.end.done_crit_edge, %rmi_f54_get_reptype.exit.done_crit_edge, %vb2_set_plane_payload.exit.done_crit_edge
  %state.1 = phi i32 [ 6, %do.end ], [ 6, %do.end18 ], [ %state.0, %data_done ], [ 6, %rmi_f54_get_reptype.exit.done_crit_edge ], [ 6, %if.end.done_crit_edge ], [ 6, %vb2_set_plane_payload.exit.done_crit_edge ]
  %call.i = call i64 @ktime_get() #9
  %timestamp = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 5
  %89 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %call.i, ptr %timestamp, align 8
  %field = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 2
  %90 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1, ptr %field, align 4
  %sequence = getelementptr inbounds %struct.f54_data, ptr %3, i32 0, i32 21
  %91 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %sequence, align 4
  %inc = add i32 %92, 1
  store i32 %inc, ptr %sequence, align 4
  %sequence35 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 4
  %93 = ptrtoint ptr %sequence35 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %sequence35, align 8
  call void @vb2_buffer_done(ptr noundef %vb, i32 noundef %state.1) #9
  call void @mutex_unlock(ptr noundef %status_mutex) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_release(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_f54_vidioc_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call i32 @strlcpy(ptr noundef %cap, ptr noundef nonnull @.str, i32 noundef 16) #9
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call3 = tail call i32 @strlcpy(ptr noundef %card, ptr noundef nonnull @.str.53, i32 noundef 32) #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %init_name.i = getelementptr inbounds %struct.rmi_function, ptr %3, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.rmi_function, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %entry.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.54, ptr noundef %retval.0.i)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_f54_vidioc_enum_fmt(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %type = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %fmt, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %pixelformat = getelementptr inbounds %struct.f54_data, ptr %1, i32 0, i32 17, i32 2
  %6 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pixelformat, align 8
  %pixelformat3 = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %fmt, i32 0, i32 4
  %8 = ptrtoint ptr %pixelformat3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %pixelformat3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_f54_vidioc_fmt(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %format = getelementptr inbounds %struct.f54_data, ptr %1, i32 0, i32 17
  %2 = call ptr @memcpy(ptr %fmt, ptr %format, i32 48)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_f54_vidioc_enum_input(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %0 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %1)
  %cmp.i = icmp ugt i32 %1, 20
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %rmi_f54_get_reptype.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

rmi_f54_get_reptype.exit:                         ; preds = %entry
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %arrayidx.i = getelementptr %struct.f54_data, ptr %3, i32 0, i32 23, i32 %1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %rmi_f54_get_reptype.exit.cleanup_crit_edge, label %if.end

rmi_f54_get_reptype.exit.cleanup_crit_edge:       ; preds = %rmi_f54_get_reptype.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %rmi_f54_get_reptype.exit
  call void @__sanitizer_cov_trace_pc() #11
  %type = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 2
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %type, align 4
  %name = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 1
  %arrayidx = getelementptr [21 x ptr], ptr @rmi_f54_report_type_names, i32 0, i32 %5
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %call2 = tail call i32 @strlcpy(ptr noundef %name, ptr noundef %8, i32 noundef 32) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %rmi_f54_get_reptype.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %rmi_f54_get_reptype.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_f54_vidioc_g_input(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %input = getelementptr inbounds %struct.f54_data, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input, align 8
  %4 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rmi_f54_vidioc_s_input(ptr noundef %file, ptr nocapture noundef readnone %priv, i32 noundef %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1 = tail call fastcc i32 @rmi_f54_set_input(ptr noundef %1, i32 noundef %i)
  ret i32 %call1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rmi_f54_vidioc_g_parm(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %a) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %readbuffers = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1, i32 0, i32 4
  %2 = ptrtoint ptr %readbuffers to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %readbuffers, align 4
  %timeperframe = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %timeperframe to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %timeperframe, align 4
  %denominator = getelementptr inbounds %struct.v4l2_streamparm, ptr %a, i32 0, i32 1, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 10, ptr %denominator, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !14, !15, !17, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !42, !44, !46, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !65, !66, !67, !69, !70, !71, !73, !75, !77, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !93, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118}
!llvm.module.flags = !{!120, !121, !122, !123, !124, !125, !126, !127}
!llvm.ident = !{!128}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/input/rmi4/rmi_f54.c", i32 752, i32 11}
!2 = !{ptr @rmi_f54_handler, !3, !"rmi_f54_handler", i1 false, i1 false}
!3 = !{!"../drivers/input/rmi4/rmi_f54.c", i32 750, i32 29}
!4 = !{ptr @rmi_f54_probe.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/input/rmi4/rmi_f54.c", i32 678, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @rmi_f54_probe.__key.2, !8, !"__key", i1 false, i1 false}
!8 = !{!"../drivers/input/rmi4/rmi_f54.c", i32 679, i32 2}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @rmi_f54_probe.__key.4, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/input/rmi4/rmi_f54.c", i32 689, i32 2}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @rmi_f54_probe.__key.6, !11, !"__key", i1 false, i1 false}
!14 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/input/rmi4/rmi_f54.c", i32 691, i32 19}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/input/rmi4/rmi_f54.c", i32 702, i32 3}
!20 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.14, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @rmi_f54_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @rmi_f54_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @rmi_f54_probe.__key.15, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/input/rmi4/rmi_f54.c", i32 707, i32 2}
!28 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/input/rmi4/rmi_f54.c", i32 726, i32 3}
!31 = !{ptr @rmi_f54_probe._entry.17, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @rmi_f54_probe._entry_ptr.19, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/input/rmi4/rmi_f54.c", i32 634, i32 3}
!35 = !{ptr @.str.21, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @rmi_f54_detect._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @rmi_f54_detect._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/rmi4/rmi_f54.c", i32 645, i32 34}
!40 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/rmi4/rmi_f54.c", i32 647, i32 34}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/rmi4/rmi_f54.c", i32 649, i32 34}
!44 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/rmi4/rmi_f54.c", i32 651, i32 34}
!46 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/rmi4/rmi_f54.c", i32 653, i32 34}
!48 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/rmi4/rmi_f54.c", i32 545, i32 3}
!50 = !{ptr @.str.28, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @rmi_f54_work._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @rmi_f54_work._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/input/rmi4/rmi_f54.c", i32 560, i32 3}
!55 = !{ptr @rmi_f54_work._entry.29, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @rmi_f54_work._entry_ptr.31, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.33, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/input/rmi4/rmi_f54.c", i32 565, i32 4}
!59 = !{ptr @rmi_f54_work._entry.32, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @rmi_f54_work._entry_ptr.34, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.35, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/input/rmi4/rmi_f54.c", i32 572, i32 34}
!63 = !{ptr @.str.37, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/input/rmi4/rmi_f54.c", i32 583, i32 4}
!65 = !{ptr @rmi_f54_work._entry.36, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @rmi_f54_work._entry_ptr.38, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.40, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/input/rmi4/rmi_f54.c", i32 591, i32 4}
!69 = !{ptr @rmi_f54_work._entry.39, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @rmi_f54_work._entry_ptr.41, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @rmi_f54_queue, !72, !"rmi_f54_queue", i1 false, i1 false}
!72 = !{!"../drivers/input/rmi4/rmi_f54.c", i32 379, i32 31}
!73 = !{ptr @rmi_f54_queue_ops, !74, !"rmi_f54_queue_ops", i1 false, i1 false}
!74 = !{!"../drivers/input/rmi4/rmi_f54.c", i32 371, i32 29}
!75 = !{ptr @.str.43, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/input/rmi4/rmi_f54.c", i32 323, i32 3}
!77 = !{ptr @.str.44, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @rmi_f54_buffer_queue._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @rmi_f54_buffer_queue._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.46, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/input/rmi4/rmi_f54.c", i32 335, i32 4}
!82 = !{ptr @rmi_f54_buffer_queue._entry.45, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @rmi_f54_buffer_queue._entry_ptr.47, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.49, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/input/rmi4/rmi_f54.c", i32 344, i32 3}
!86 = !{ptr @rmi_f54_buffer_queue._entry.48, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @rmi_f54_buffer_queue._entry_ptr.50, !85, !"_entry_ptr", i1 false, i1 false}
!88 = distinct !{null, !89, !"__already_done", i1 false, i1 false}
!89 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!90 = !{ptr @.str.51, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @init_completion.__key, !92, !"__key", i1 false, i1 false}
!92 = !{!"../include/linux/completion.h", i32 87, i32 2}
!93 = !{ptr @.str.52, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @rmi_f54_video_device, !95, !"rmi_f54_video_device", i1 false, i1 false}
!95 = !{!"../drivers/input/rmi4/rmi_f54.c", i32 524, i32 34}
!96 = !{ptr @rmi_f54_video_fops, !97, !"rmi_f54_video_fops", i1 false, i1 false}
!97 = !{!"../drivers/input/rmi4/rmi_f54.c", i32 273, i32 42}
!98 = !{ptr @rmi_f54_video_ioctl_ops, !99, !"rmi_f54_video_ioctl_ops", i1 false, i1 false}
!99 = !{!"../drivers/input/rmi4/rmi_f54.c", i32 500, i32 36}
!100 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/input/rmi4/rmi_f54.c", i32 394, i32 21}
!102 = !{ptr @.str.54, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/input/rmi4/rmi_f54.c", i32 396, i32 3}
!104 = !{ptr @.str.55, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/input/rmi4/rmi_f54.c", i32 86, i32 23}
!106 = !{ptr @.str.56, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/input/rmi4/rmi_f54.c", i32 87, i32 22}
!108 = !{ptr @.str.57, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/input/rmi4/rmi_f54.c", i32 88, i32 23}
!110 = !{ptr @.str.58, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/input/rmi4/rmi_f54.c", i32 89, i32 27}
!112 = !{ptr @.str.59, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/input/rmi4/rmi_f54.c", i32 90, i32 25}
!114 = !{ptr @.str.60, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/input/rmi4/rmi_f54.c", i32 91, i32 24}
!116 = !{ptr @.str.61, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/input/rmi4/rmi_f54.c", i32 93, i32 8}
!118 = !{ptr @rmi_f54_report_type_names, !119, !"rmi_f54_report_type_names", i1 false, i1 false}
!119 = !{!"../drivers/input/rmi4/rmi_f54.c", i32 85, i32 27}
!120 = !{i32 1, !"wchar_size", i32 2}
!121 = !{i32 1, !"min_enum_size", i32 4}
!122 = !{i32 8, !"branch-target-enforcement", i32 0}
!123 = !{i32 8, !"sign-return-address", i32 0}
!124 = !{i32 8, !"sign-return-address-all", i32 0}
!125 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!126 = !{i32 7, !"uwtable", i32 1}
!127 = !{i32 7, !"frame-pointer", i32 2}
!128 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!129 = !{!"auto-init"}
!130 = !{i8 0, i8 2}
!131 = !{!"branch_weights", i32 2000, i32 1}
