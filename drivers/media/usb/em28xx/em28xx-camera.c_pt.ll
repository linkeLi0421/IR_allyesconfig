; ModuleID = '/llk/IR_all_yes/drivers/media/usb/em28xx/em28xx-camera.c_pt.bc'
source_filename = "../drivers/media/usb/em28xx/em28xx-camera.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+em28xx_init_camera\22, \22a\22\09"
module asm "\09.weak\09__crc_em28xx_init_camera\09\09\09\09"
module asm "\09.long\09__crc_em28xx_init_camera\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_em28xx_init_camera:\09\09\09\09\09"
module asm "\09.asciz \09\22em28xx_init_camera\22\09\09\09\09\09"
module asm "__kstrtabns_em28xx_init_camera:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.em28xx = type { %struct.kref, ptr, ptr, %struct.em28xx_audio, ptr, i32, i32, i32, i8, i32, i32, [32 x i8], %struct.em28xx_board, i32, i32, %struct.list_head, i32, %struct.em28xx_audio_mode, i32, [2 x %struct.i2c_adapter], [2 x %struct.i2c_client], [2 x %struct.em28xx_i2c_bus], i8, i32, i32, %struct.rt_mutex, i32, i32, i32, [4 x i32], i32, i32, i32, i32, %struct.work_struct, %struct.mutex, %struct.mutex, i32, ptr, i16, %struct.em28xx_dmaqueue, %struct.em28xx_dmaqueue, %struct.em28xx_usb_ctl, %struct.spinlock, ptr, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, ptr, i8, i32, i32, i32, i8, [80 x i8], ptr, ptr, ptr, ptr, ptr, i32, %struct.delayed_work, [5 x i8], [5 x i8], i8, i16, [30 x i8], ptr, ptr, [4 x %struct.media_entity], [4 x %struct.media_pad], ptr, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.em28xx_audio = type { [50 x i8], i32, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, %struct.spinlock, %struct.work_struct, %struct.atomic_t }
%struct.em28xx_board = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i16, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr }
%struct.em28xx_input = type { i32, i32, i32, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.em28xx_audio_mode = type { i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.em28xx_i2c_bus = type { ptr, i32, i32 }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.em28xx_dmaqueue = type { %struct.list_head, %struct.wait_queue_head }
%struct.em28xx_usb_ctl = type { %struct.em28xx_usb_bufs, %struct.em28xx_usb_bufs, ptr, ptr, ptr }
%struct.em28xx_usb_bufs = type { i32, i32, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.mt9v011_platform_data = type { i32 }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.91, i16, i16, i16, [10 x i16] }
%union.anon.91 = type { i16 }
%struct.em28xx_v4l2 = type { %struct.kref, ptr, %struct.v4l2_device, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.video_device, %struct.video_device, %struct.vb2_queue, %struct.vb2_queue, %struct.mutex, %struct.mutex, i8, i8, i32, i32, i32, i32, i32, i32, ptr, i64, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, %struct.media_pad, %struct.media_pad, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@em28xx_detect_sensor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 303, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"No sensor detected\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"em28xx_detect_sensor\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/usb/em28xx/em28xx-camera.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@em28xx_detect_sensor._entry_ptr = internal global ptr @em28xx_detect_sensor._entry, section ".printk_index", align 4
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mt9v011\00\00\00\00\00\00\00\00\00\00\00\00\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ov2640\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [44 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@__kstrtab_em28xx_init_camera = external dso_local constant [0 x i8], align 1
@__kstrtabns_em28xx_init_camera = external dso_local constant [0 x i8], align 1
@__ksymtab_em28xx_init_camera = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @em28xx_init_camera to i32), ptr @__kstrtab_em28xx_init_camera, ptr @__kstrtabns_em28xx_init_camera }, section "___ksymtab_gpl+em28xx_init_camera", align 4
@em28xx_probe_sensor_micron._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 109, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"couldn't read from i2c device 0x%02x: error %i\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"em28xx_probe_sensor_micron\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@em28xx_probe_sensor_micron._entry_ptr = internal global ptr @em28xx_probe_sensor_micron._entry, section ".printk_index", align 4
@em28xx_probe_sensor_micron._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 118, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@em28xx_probe_sensor_micron._entry_ptr.11 = internal global ptr @em28xx_probe_sensor_micron._entry.10, section ".printk_index", align 4
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MT9V012\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MT9V112\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MT9M011\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MT9M111\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MT9M112\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MT9D011\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MT9V011\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MT9M001\00", [24 x i8] zeroinitializer }, align 32
@em28xx_probe_sensor_micron._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.8, ptr @.str.2, i32 157, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"unknown Micron sensor detected: 0x%04x\0A\00", [56 x i8] zeroinitializer }, align 32
@em28xx_probe_sensor_micron._entry_ptr.22 = internal global ptr @em28xx_probe_sensor_micron._entry.20, section ".printk_index", align 4
@em28xx_probe_sensor_micron._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.8, ptr @.str.2, i32 163, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unsupported sensor detected: %s\0A\00", [63 x i8] zeroinitializer }, align 32
@em28xx_probe_sensor_micron._entry_ptr.25 = internal global ptr @em28xx_probe_sensor_micron._entry.23, section ".printk_index", align 4
@em28xx_probe_sensor_micron._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.8, ptr @.str.2, i32 166, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sensor %s detected\0A\00", [44 x i8] zeroinitializer }, align 32
@em28xx_probe_sensor_micron._entry_ptr.28 = internal global ptr @em28xx_probe_sensor_micron._entry.26, section ".printk_index", align 4
@em28xx_probe_sensor_omnivision._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.29, ptr @.str.2, i32 199, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"em28xx_probe_sensor_omnivision\00", [33 x i8] zeroinitializer }, align 32
@em28xx_probe_sensor_omnivision._entry_ptr = internal global ptr @em28xx_probe_sensor_omnivision._entry, section ".printk_index", align 4
@em28xx_probe_sensor_omnivision._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.29, ptr @.str.2, i32 208, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@em28xx_probe_sensor_omnivision._entry_ptr.31 = internal global ptr @em28xx_probe_sensor_omnivision._entry.30, section ".printk_index", align 4
@em28xx_probe_sensor_omnivision._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.29, ptr @.str.2, i32 221, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@em28xx_probe_sensor_omnivision._entry_ptr.33 = internal global ptr @em28xx_probe_sensor_omnivision._entry.32, section ".printk_index", align 4
@em28xx_probe_sensor_omnivision._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.29, ptr @.str.2, i32 230, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@em28xx_probe_sensor_omnivision._entry_ptr.35 = internal global ptr @em28xx_probe_sensor_omnivision._entry.34, section ".printk_index", align 4
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"OV2640\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"OV7648\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"OV7660\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"OV7670\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"OV7720\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"OV7725\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"OV9640\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"OV9650\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"OV9655\00", [25 x i8] zeroinitializer }, align 32
@em28xx_probe_sensor_omnivision._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.29, ptr @.str.2, i32 270, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"unknown OmniVision sensor detected: 0x%04x\0A\00", [52 x i8] zeroinitializer }, align 32
@em28xx_probe_sensor_omnivision._entry_ptr.47 = internal global ptr @em28xx_probe_sensor_omnivision._entry.45, section ".printk_index", align 4
@em28xx_probe_sensor_omnivision._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.29, ptr @.str.2, i32 276, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@em28xx_probe_sensor_omnivision._entry_ptr.49 = internal global ptr @em28xx_probe_sensor_omnivision._entry.48, section ".printk_index", align 4
@em28xx_probe_sensor_omnivision._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.29, ptr @.str.2, i32 279, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@em28xx_probe_sensor_omnivision._entry_ptr.51 = internal global ptr @em28xx_probe_sensor_omnivision._entry.50, section ".printk_index", align 4
@__const.em28xx_initialize_mt9m001.regs = private unnamed_addr constant [13 x [3 x i8]] [[3 x i8] c"\0D\00\01", [3 x i8] c"\0D\00\00", [3 x i8] c"\04\05\00", [3 x i8] c"\03\04\00", [3 x i8] c" \11\00", [3 x i8] c"\06\00\10", [3 x i8] c"+\00$", [3 x i8] c".\00$", [3 x i8] c"5\00$", [3 x i8] c"-\00 ", [3 x i8] c",\00 ", [3 x i8] c"\09\0A\D4", [3 x i8] c"5\00W"], align 1
@__const.em28xx_initialize_mt9m111.regs = private unnamed_addr constant [4 x [3 x i8]] [[3 x i8] c"\0D\00\01", [3 x i8] c"\0D\00\00", [3 x i8] c"\0A\00!", [3 x i8] c"!\04\00"], align 1
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 16, i64 4642, i64 4649, i64 5171, i64 5178, i64 5260, i64 5393, i64 33330, i64 33347, i64 33841]
@__sancov_gen_cov_switch_values.52 = internal global [14 x i64] [i64 12, i64 16, i64 9794, i64 30280, i64 30304, i64 30323, i64 30496, i64 30497, i64 38472, i64 38473, i64 38480, i64 38482, i64 38486, i64 38487]
@__sancov_gen_cov_switch_values.53 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 302, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 321, i32 12 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 377, i32 12 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 107, i32 5 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 116, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 127, i32 11 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 130, i32 11 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 133, i32 11 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 136, i32 11 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 140, i32 11 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 143, i32 11 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 147, i32 11 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 151, i32 11 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 155, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 162, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 165, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 197, i32 5 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 206, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 219, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 228, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 237, i32 11 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 241, i32 11 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 244, i32 11 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 247, i32 11 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 250, i32 11 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 253, i32 11 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 257, i32 11 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 261, i32 11 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 265, i32 11 }
@___asan_gen_.180 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 268, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 275, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.187 = private constant [44 x i8] c"../drivers/media/usb/em28xx/em28xx-camera.c\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 278, i32 4 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__ksymtab_em28xx_init_camera, ptr @em28xx_detect_sensor._entry, ptr @em28xx_detect_sensor._entry_ptr, ptr @em28xx_probe_sensor_micron._entry, ptr @em28xx_probe_sensor_micron._entry.10, ptr @em28xx_probe_sensor_micron._entry.20, ptr @em28xx_probe_sensor_micron._entry.23, ptr @em28xx_probe_sensor_micron._entry.26, ptr @em28xx_probe_sensor_micron._entry_ptr, ptr @em28xx_probe_sensor_micron._entry_ptr.11, ptr @em28xx_probe_sensor_micron._entry_ptr.22, ptr @em28xx_probe_sensor_micron._entry_ptr.25, ptr @em28xx_probe_sensor_micron._entry_ptr.28, ptr @em28xx_probe_sensor_omnivision._entry, ptr @em28xx_probe_sensor_omnivision._entry.30, ptr @em28xx_probe_sensor_omnivision._entry.32, ptr @em28xx_probe_sensor_omnivision._entry.34, ptr @em28xx_probe_sensor_omnivision._entry.45, ptr @em28xx_probe_sensor_omnivision._entry.48, ptr @em28xx_probe_sensor_omnivision._entry.50, ptr @em28xx_probe_sensor_omnivision._entry_ptr, ptr @em28xx_probe_sensor_omnivision._entry_ptr.31, ptr @em28xx_probe_sensor_omnivision._entry_ptr.33, ptr @em28xx_probe_sensor_omnivision._entry_ptr.35, ptr @em28xx_probe_sensor_omnivision._entry_ptr.47, ptr @em28xx_probe_sensor_omnivision._entry_ptr.49, ptr @em28xx_probe_sensor_omnivision._entry_ptr.51, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_detect_sensor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_probe_sensor_micron._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_probe_sensor_micron._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_probe_sensor_micron._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_probe_sensor_micron._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_probe_sensor_micron._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_probe_sensor_omnivision._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_probe_sensor_omnivision._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_probe_sensor_omnivision._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_probe_sensor_omnivision._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_probe_sensor_omnivision._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_probe_sensor_omnivision._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_probe_sensor_omnivision._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @em28xx_detect_sensor(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %def_i2c_bus.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %def_i2c_bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %def_i2c_bus.i, align 4
  %arrayidx.i = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %1
  %em28xx_sensor.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 13
  %2 = ptrtoint ptr %em28xx_sensor.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %em28xx_sensor.i, align 8
  %addr.i = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %1, i32 1
  %intf21.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %3 = ptrtoint ptr %addr.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 92, ptr %addr.i, align 2
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %arrayidx.i, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4.i = icmp slt i32 %call.i, 0
  br i1 %cmp4.i, label %if.then.i, label %if.end12.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call.i)
  %cmp6.not.i = icmp eq i32 %call.i, -6
  br i1 %cmp6.not.i, label %if.then.i.for.inc.i_crit_edge, label %if.then.i.for.inc.sink.split.i_crit_edge

if.then.i.for.inc.sink.split.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.sink.split.i

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end12.i:                                       ; preds = %entry
  %call14.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %arrayidx.i, i8 noundef zeroext -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %if.end12.i.for.inc.sink.split.i_crit_edge, label %if.end26.i

if.end12.i.for.inc.sink.split.i_crit_edge:        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.sink.split.i

if.end26.i:                                       ; preds = %if.end12.i
  %conv13.i = trunc i32 %call.i to i16
  %conv28.i = trunc i32 %call14.i to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %conv13.i, i16 %conv28.i)
  %cmp30.not.i = icmp eq i16 %conv13.i, %conv28.i
  br i1 %cmp30.not.i, label %if.end26.i.if.end33.i_crit_edge, label %if.end26.i.for.inc.i_crit_edge

if.end26.i.for.inc.i_crit_edge:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end26.i.if.end33.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.end26.2.i.if.end33.i_crit_edge, %if.end26.1.i.if.end33.i_crit_edge, %if.end26.i.if.end33.i_crit_edge
  %conv13.le.pre-phi.i = phi i16 [ %conv13.2.i, %if.end26.2.i.if.end33.i_crit_edge ], [ %conv13.1.i, %if.end26.1.i.if.end33.i_crit_edge ], [ %conv13.i, %if.end26.i.if.end33.i_crit_edge ]
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv13.le.pre-phi.i) #5
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i16 %4, label %do.end47.i [
    i16 4642, label %if.end33.i.sw.epilog.i_crit_edge
    i16 4649, label %sw.bb35.i
    i16 5171, label %sw.bb36.i
    i16 5178, label %if.end33.i.do.end62.sink.split.i_crit_edge
    i16 5260, label %sw.bb39.i
    i16 5393, label %sw.bb40.i
    i16 -32206, label %if.end33.i.sw.bb41.i_crit_edge
    i16 -32189, label %if.end33.i.sw.bb41.i_crit_edge52
    i16 -31695, label %sw.bb43.i
  ]

if.end33.i.sw.bb41.i_crit_edge52:                 ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb41.i

if.end33.i.sw.bb41.i_crit_edge:                   ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb41.i

if.end33.i.do.end62.sink.split.i_crit_edge:       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end62.sink.split.i

if.end33.i.sw.epilog.i_crit_edge:                 ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb35.i:                                        ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb36.i:                                        ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb39.i:                                        ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb40.i:                                        ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb41.i:                                        ; preds = %if.end33.i.sw.bb41.i_crit_edge, %if.end33.i.sw.bb41.i_crit_edge52
  br label %do.end62.sink.split.i

sw.bb43.i:                                        ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end62.sink.split.i

do.end47.i:                                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv27.le.i = zext i16 %4 to i32
  %6 = ptrtoint ptr %intf21.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intf21.i, align 4
  %dev49.i = getelementptr inbounds %struct.usb_interface, ptr %7, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev49.i, ptr noundef nonnull @.str.21, i32 noundef %conv27.le.i) #8
  br label %cleanup

sw.epilog.i:                                      ; preds = %sw.bb40.i, %sw.bb39.i, %sw.bb36.i, %sw.bb35.i, %if.end33.i.sw.epilog.i_crit_edge
  %name.0.ph.i = phi ptr [ @.str.12, %if.end33.i.sw.epilog.i_crit_edge ], [ @.str.13, %sw.bb35.i ], [ @.str.14, %sw.bb36.i ], [ @.str.16, %sw.bb39.i ], [ @.str.17, %sw.bb40.i ]
  %8 = ptrtoint ptr %em28xx_sensor.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr.i = load i32, ptr %em28xx_sensor.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp52.i = icmp eq i32 %.pr.i, 0
  br i1 %cmp52.i, label %do.end57.i, label %sw.epilog.i.do.end62.i_crit_edge

sw.epilog.i.do.end62.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end62.i

do.end57.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %intf21.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %intf21.i, align 4
  %dev59.i = getelementptr inbounds %struct.usb_interface, ptr %10, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev59.i, ptr noundef nonnull @.str.24, ptr noundef nonnull %name.0.ph.i) #8
  br label %cleanup

do.end62.sink.split.i:                            ; preds = %sw.bb43.i, %sw.bb41.i, %if.end33.i.do.end62.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 1, %sw.bb41.i ], [ 2, %sw.bb43.i ], [ 3, %if.end33.i.do.end62.sink.split.i_crit_edge ]
  %name.099.ph.i = phi ptr [ @.str.18, %sw.bb41.i ], [ @.str.19, %sw.bb43.i ], [ @.str.15, %if.end33.i.do.end62.sink.split.i_crit_edge ]
  %11 = ptrtoint ptr %em28xx_sensor.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink.i, ptr %em28xx_sensor.i, align 8
  br label %do.end62.i

do.end62.i:                                       ; preds = %do.end62.sink.split.i, %sw.epilog.i.do.end62.i_crit_edge
  %name.099.i = phi ptr [ %name.0.ph.i, %sw.epilog.i.do.end62.i_crit_edge ], [ %name.099.ph.i, %do.end62.sink.split.i ]
  %12 = ptrtoint ptr %intf21.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %intf21.i, align 4
  %dev64.i = getelementptr inbounds %struct.usb_interface, ptr %13, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev64.i, ptr noundef nonnull @.str.27, ptr noundef nonnull %name.099.i) #8
  br label %cleanup

for.inc.sink.split.i:                             ; preds = %if.end12.i.for.inc.sink.split.i_crit_edge, %if.then.i.for.inc.sink.split.i_crit_edge
  %call.sink.i = phi i32 [ %call.i, %if.then.i.for.inc.sink.split.i_crit_edge ], [ %call14.i, %if.end12.i.for.inc.sink.split.i_crit_edge ]
  %14 = ptrtoint ptr %intf21.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %intf21.i, align 4
  %dev9.i = getelementptr inbounds %struct.usb_interface, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %addr.i, align 2
  %conv11.i = zext i16 %17 to i32
  %shl.i = shl nuw nsw i32 %conv11.i, 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9.i, ptr noundef nonnull @.str.7, i32 noundef %shl.i, i32 noundef %call.sink.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.sink.split.i, %if.end26.i.for.inc.i_crit_edge, %if.then.i.for.inc.i_crit_edge
  %18 = ptrtoint ptr %addr.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 93, ptr %addr.i, align 2
  %call.1.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %arrayidx.i, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %cmp4.1.i = icmp slt i32 %call.1.i, 0
  br i1 %cmp4.1.i, label %if.then.1.i, label %if.end12.1.i

if.end12.1.i:                                     ; preds = %for.inc.i
  %call14.1.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %arrayidx.i, i8 noundef zeroext -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.1.i)
  %cmp15.1.i = icmp slt i32 %call14.1.i, 0
  br i1 %cmp15.1.i, label %if.end12.1.i.for.inc.1.sink.split.i_crit_edge, label %if.end26.1.i

if.end12.1.i.for.inc.1.sink.split.i_crit_edge:    ; preds = %if.end12.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.sink.split.i

if.end26.1.i:                                     ; preds = %if.end12.1.i
  %conv13.1.i = trunc i32 %call.1.i to i16
  %conv28.1.i = trunc i32 %call14.1.i to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %conv13.1.i, i16 %conv28.1.i)
  %cmp30.not.1.i = icmp eq i16 %conv13.1.i, %conv28.1.i
  br i1 %cmp30.not.1.i, label %if.end26.1.i.if.end33.i_crit_edge, label %if.end26.1.i.for.inc.1.i_crit_edge

if.end26.1.i.for.inc.1.i_crit_edge:               ; preds = %if.end26.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i

if.end26.1.i.if.end33.i_crit_edge:                ; preds = %if.end26.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33.i

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call.1.i)
  %cmp6.not.1.i = icmp eq i32 %call.1.i, -6
  br i1 %cmp6.not.1.i, label %if.then.1.i.for.inc.1.i_crit_edge, label %if.then.1.i.for.inc.1.sink.split.i_crit_edge

if.then.1.i.for.inc.1.sink.split.i_crit_edge:     ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.sink.split.i

if.then.1.i.for.inc.1.i_crit_edge:                ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i

for.inc.1.sink.split.i:                           ; preds = %if.then.1.i.for.inc.1.sink.split.i_crit_edge, %if.end12.1.i.for.inc.1.sink.split.i_crit_edge
  %call.1.sink.i = phi i32 [ %call14.1.i, %if.end12.1.i.for.inc.1.sink.split.i_crit_edge ], [ %call.1.i, %if.then.1.i.for.inc.1.sink.split.i_crit_edge ]
  %19 = ptrtoint ptr %intf21.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %intf21.i, align 4
  %dev9.1.i = getelementptr inbounds %struct.usb_interface, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %addr.i, align 2
  %conv11.1.i = zext i16 %22 to i32
  %shl.1.i = shl nuw nsw i32 %conv11.1.i, 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9.1.i, ptr noundef nonnull @.str.7, i32 noundef %shl.1.i, i32 noundef %call.1.sink.i) #8
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %for.inc.1.sink.split.i, %if.then.1.i.for.inc.1.i_crit_edge, %if.end26.1.i.for.inc.1.i_crit_edge
  %23 = ptrtoint ptr %addr.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 72, ptr %addr.i, align 2
  %call.2.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %arrayidx.i, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %cmp4.2.i = icmp slt i32 %call.2.i, 0
  br i1 %cmp4.2.i, label %if.then.2.i, label %if.end12.2.i

if.end12.2.i:                                     ; preds = %for.inc.1.i
  %call14.2.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %arrayidx.i, i8 noundef zeroext -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.2.i)
  %cmp15.2.i = icmp slt i32 %call14.2.i, 0
  br i1 %cmp15.2.i, label %if.end12.2.i.em28xx_probe_sensor_micron.exit.sink.split_crit_edge, label %if.end26.2.i

if.end12.2.i.em28xx_probe_sensor_micron.exit.sink.split_crit_edge: ; preds = %if.end12.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %em28xx_probe_sensor_micron.exit.sink.split

if.end26.2.i:                                     ; preds = %if.end12.2.i
  %conv13.2.i = trunc i32 %call.2.i to i16
  %conv28.2.i = trunc i32 %call14.2.i to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %conv13.2.i, i16 %conv28.2.i)
  %cmp30.not.2.i = icmp eq i16 %conv13.2.i, %conv28.2.i
  br i1 %cmp30.not.2.i, label %if.end26.2.i.if.end33.i_crit_edge, label %if.end26.2.i.em28xx_probe_sensor_micron.exit_crit_edge

if.end26.2.i.em28xx_probe_sensor_micron.exit_crit_edge: ; preds = %if.end26.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %em28xx_probe_sensor_micron.exit

if.end26.2.i.if.end33.i_crit_edge:                ; preds = %if.end26.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33.i

if.then.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call.2.i)
  %cmp6.not.2.i = icmp eq i32 %call.2.i, -6
  br i1 %cmp6.not.2.i, label %if.then.2.i.em28xx_probe_sensor_micron.exit_crit_edge, label %if.then.2.i.em28xx_probe_sensor_micron.exit.sink.split_crit_edge

if.then.2.i.em28xx_probe_sensor_micron.exit.sink.split_crit_edge: ; preds = %if.then.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %em28xx_probe_sensor_micron.exit.sink.split

if.then.2.i.em28xx_probe_sensor_micron.exit_crit_edge: ; preds = %if.then.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %em28xx_probe_sensor_micron.exit

em28xx_probe_sensor_micron.exit.sink.split:       ; preds = %if.then.2.i.em28xx_probe_sensor_micron.exit.sink.split_crit_edge, %if.end12.2.i.em28xx_probe_sensor_micron.exit.sink.split_crit_edge
  %call14.2.i.sink = phi i32 [ %call14.2.i, %if.end12.2.i.em28xx_probe_sensor_micron.exit.sink.split_crit_edge ], [ %call.2.i, %if.then.2.i.em28xx_probe_sensor_micron.exit.sink.split_crit_edge ]
  %24 = ptrtoint ptr %intf21.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %intf21.i, align 4
  %dev22.2.i = getelementptr inbounds %struct.usb_interface, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %addr.i, align 2
  %conv24.2.i = zext i16 %27 to i32
  %shl25.2.i = shl nuw nsw i32 %conv24.2.i, 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22.2.i, ptr noundef nonnull @.str.7, i32 noundef %shl25.2.i, i32 noundef %call14.2.i.sink) #8
  br label %em28xx_probe_sensor_micron.exit

em28xx_probe_sensor_micron.exit:                  ; preds = %em28xx_probe_sensor_micron.exit.sink.split, %if.then.2.i.em28xx_probe_sensor_micron.exit_crit_edge, %if.end26.2.i.em28xx_probe_sensor_micron.exit_crit_edge
  %28 = ptrtoint ptr %em28xx_sensor.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %em28xx_sensor.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp = icmp eq i32 %29, 0
  br i1 %cmp, label %if.then, label %em28xx_probe_sensor_micron.exit.cleanup_crit_edge

em28xx_probe_sensor_micron.exit.cleanup_crit_edge: ; preds = %em28xx_probe_sensor_micron.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %em28xx_probe_sensor_micron.exit
  %30 = ptrtoint ptr %def_i2c_bus.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %def_i2c_bus.i, align 4
  %arrayidx.i17 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %31
  %32 = ptrtoint ptr %em28xx_sensor.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %em28xx_sensor.i, align 8
  %addr.i19 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %31, i32 1
  %33 = ptrtoint ptr %addr.i19 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 33, ptr %addr.i19, align 2
  %call.i20 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %arrayidx.i17, i8 noundef zeroext 28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %cmp4.i21 = icmp slt i32 %call.i20, 0
  br i1 %cmp4.i21, label %if.then.i23, label %if.end12.i24

if.then.i23:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call.i20)
  %cmp6.not.i22 = icmp eq i32 %call.i20, -6
  br i1 %cmp6.not.i22, label %if.then.i23.for.inc.i35_crit_edge, label %if.then.i23.for.inc.sink.split.i32_crit_edge

if.then.i23.for.inc.sink.split.i32_crit_edge:     ; preds = %if.then.i23
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.sink.split.i32

if.then.i23.for.inc.i35_crit_edge:                ; preds = %if.then.i23
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i35

if.end12.i24:                                     ; preds = %if.then
  %call15.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %arrayidx.i17, i8 noundef zeroext 29) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.i = icmp slt i32 %call15.i, 0
  br i1 %cmp16.i, label %if.end12.i24.for.inc.sink.split.i32_crit_edge, label %if.end27.i

if.end12.i24.for.inc.sink.split.i32_crit_edge:    ; preds = %if.end12.i24
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.sink.split.i32

if.end27.i:                                       ; preds = %if.end12.i24
  %conv14.i = shl i32 %call.i20, 8
  %add.i = add i32 %call15.i, %conv14.i
  %conv30.i = and i32 %add.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 32674, i32 %conv30.i)
  %cmp31.not.i = icmp eq i32 %conv30.i, 32674
  br i1 %cmp31.not.i, label %if.end34.i, label %if.end27.i.for.inc.i35_crit_edge

if.end27.i.for.inc.i35_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i35

if.end34.i:                                       ; preds = %if.end27.i
  %call35.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %arrayidx.i17, i8 noundef zeroext 10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %cmp36.i = icmp slt i32 %call35.i, 0
  br i1 %cmp36.i, label %if.end34.i.for.inc.sink.split.i32_crit_edge, label %if.end47.i

if.end34.i.for.inc.sink.split.i32_crit_edge:      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.sink.split.i32

if.end47.i:                                       ; preds = %if.end34.i
  %call50.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %arrayidx.i17, i8 noundef zeroext 11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %cmp51.i = icmp slt i32 %call50.i, 0
  br i1 %cmp51.i, label %if.end47.i.for.inc.sink.split.i32_crit_edge, label %if.end47.i.if.end62.i_crit_edge

if.end47.i.if.end62.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62.i

if.end47.i.for.inc.sink.split.i32_crit_edge:      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.sink.split.i32

if.end62.i:                                       ; preds = %if.end47.1.i.if.end62.i_crit_edge, %if.end47.i.if.end62.i_crit_edge
  %call50.lcssa.i = phi i32 [ %call50.i, %if.end47.i.if.end62.i_crit_edge ], [ %call50.1.i, %if.end47.1.i.if.end62.i_crit_edge ]
  %call35.lcssa.i = phi i32 [ %call35.i, %if.end47.i.if.end62.i_crit_edge ], [ %call35.1.i, %if.end47.1.i.if.end62.i_crit_edge ]
  %conv49.i = shl i32 %call35.lcssa.i, 8
  %add64.i = add i32 %conv49.i, %call50.lcssa.i
  %trunc.i = trunc i32 %add64.i to i16
  %34 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.52)
  switch i16 %trunc.i, label %do.end78.i [
    i16 9794, label %sw.epilog.thread.i
    i16 30280, label %if.end62.i.sw.epilog.i27_crit_edge
    i16 30304, label %sw.bb69.i
    i16 30323, label %sw.bb70.i
    i16 30496, label %sw.bb71.i
    i16 30497, label %sw.bb72.i
    i16 -27064, label %if.end62.i.sw.bb73.i_crit_edge
    i16 -27063, label %if.end62.i.sw.bb73.i_crit_edge53
    i16 -27056, label %if.end62.i.sw.bb74.i_crit_edge
    i16 -27054, label %if.end62.i.sw.bb74.i_crit_edge54
    i16 -27050, label %if.end62.i.sw.bb75.i_crit_edge
    i16 -27049, label %if.end62.i.sw.bb75.i_crit_edge55
  ]

if.end62.i.sw.bb75.i_crit_edge55:                 ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb75.i

if.end62.i.sw.bb75.i_crit_edge:                   ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb75.i

if.end62.i.sw.bb74.i_crit_edge54:                 ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb74.i

if.end62.i.sw.bb74.i_crit_edge:                   ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb74.i

if.end62.i.sw.bb73.i_crit_edge53:                 ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73.i

if.end62.i.sw.bb73.i_crit_edge:                   ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb73.i

if.end62.i.sw.epilog.i27_crit_edge:               ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i27

sw.epilog.thread.i:                               ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %em28xx_sensor.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 4, ptr %em28xx_sensor.i, align 8
  br label %do.end93.i

sw.bb69.i:                                        ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i27

sw.bb70.i:                                        ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i27

sw.bb71.i:                                        ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i27

sw.bb72.i:                                        ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i27

sw.bb73.i:                                        ; preds = %if.end62.i.sw.bb73.i_crit_edge, %if.end62.i.sw.bb73.i_crit_edge53
  br label %sw.epilog.i27

sw.bb74.i:                                        ; preds = %if.end62.i.sw.bb74.i_crit_edge, %if.end62.i.sw.bb74.i_crit_edge54
  br label %sw.epilog.i27

sw.bb75.i:                                        ; preds = %if.end62.i.sw.bb75.i_crit_edge, %if.end62.i.sw.bb75.i_crit_edge55
  br label %sw.epilog.i27

do.end78.i:                                       ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv66.i = and i32 %add64.i, 65535
  %36 = ptrtoint ptr %intf21.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %intf21.i, align 4
  %dev80.i = getelementptr inbounds %struct.usb_interface, ptr %37, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev80.i, ptr noundef nonnull @.str.46, i32 noundef %conv66.i) #8
  br label %cleanup

sw.epilog.i27:                                    ; preds = %sw.bb75.i, %sw.bb74.i, %sw.bb73.i, %sw.bb72.i, %sw.bb71.i, %sw.bb70.i, %sw.bb69.i, %if.end62.i.sw.epilog.i27_crit_edge
  %name.0.ph.i25 = phi ptr [ @.str.37, %if.end62.i.sw.epilog.i27_crit_edge ], [ @.str.38, %sw.bb69.i ], [ @.str.39, %sw.bb70.i ], [ @.str.40, %sw.bb71.i ], [ @.str.41, %sw.bb72.i ], [ @.str.42, %sw.bb73.i ], [ @.str.43, %sw.bb74.i ], [ @.str.44, %sw.bb75.i ]
  %38 = ptrtoint ptr %em28xx_sensor.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pr.i26 = load i32, ptr %em28xx_sensor.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i26)
  %cmp83.i = icmp eq i32 %.pr.i26, 0
  br i1 %cmp83.i, label %do.end88.i, label %sw.epilog.i27.do.end93.i_crit_edge

sw.epilog.i27.do.end93.i_crit_edge:               ; preds = %sw.epilog.i27
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end93.i

do.end88.i:                                       ; preds = %sw.epilog.i27
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %intf21.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %intf21.i, align 4
  %dev90.i = getelementptr inbounds %struct.usb_interface, ptr %40, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev90.i, ptr noundef nonnull @.str.24, ptr noundef nonnull %name.0.ph.i25) #8
  br label %cleanup

do.end93.i:                                       ; preds = %sw.epilog.i27.do.end93.i_crit_edge, %sw.epilog.thread.i
  %name.0145.i = phi ptr [ @.str.36, %sw.epilog.thread.i ], [ %name.0.ph.i25, %sw.epilog.i27.do.end93.i_crit_edge ]
  %41 = ptrtoint ptr %intf21.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %intf21.i, align 4
  %dev95.i = getelementptr inbounds %struct.usb_interface, ptr %42, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev95.i, ptr noundef nonnull @.str.27, ptr noundef nonnull %name.0145.i) #8
  br label %cleanup

for.inc.sink.split.i32:                           ; preds = %if.end47.i.for.inc.sink.split.i32_crit_edge, %if.end34.i.for.inc.sink.split.i32_crit_edge, %if.end12.i24.for.inc.sink.split.i32_crit_edge, %if.then.i23.for.inc.sink.split.i32_crit_edge
  %call.sink.i28 = phi i32 [ %call.i20, %if.then.i23.for.inc.sink.split.i32_crit_edge ], [ %call15.i, %if.end12.i24.for.inc.sink.split.i32_crit_edge ], [ %call35.i, %if.end34.i.for.inc.sink.split.i32_crit_edge ], [ %call50.i, %if.end47.i.for.inc.sink.split.i32_crit_edge ]
  %43 = ptrtoint ptr %intf21.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %intf21.i, align 4
  %dev9.i29 = getelementptr inbounds %struct.usb_interface, ptr %44, i32 0, i32 7
  %45 = ptrtoint ptr %addr.i19 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %addr.i19, align 2
  %conv11.i30 = zext i16 %46 to i32
  %shl.i31 = shl nuw nsw i32 %conv11.i30, 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9.i29, ptr noundef nonnull @.str.7, i32 noundef %shl.i31, i32 noundef %call.sink.i28) #8
  br label %for.inc.i35

for.inc.i35:                                      ; preds = %for.inc.sink.split.i32, %if.end27.i.for.inc.i35_crit_edge, %if.then.i23.for.inc.i35_crit_edge
  %47 = ptrtoint ptr %addr.i19 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 48, ptr %addr.i19, align 2
  %call.1.i33 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %arrayidx.i17, i8 noundef zeroext 28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i33)
  %cmp4.1.i34 = icmp slt i32 %call.1.i33, 0
  br i1 %cmp4.1.i34, label %if.then.1.i38, label %if.end12.1.i36

if.end12.1.i36:                                   ; preds = %for.inc.i35
  %call15.1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %arrayidx.i17, i8 noundef zeroext 29) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.1.i)
  %cmp16.1.i = icmp slt i32 %call15.1.i, 0
  br i1 %cmp16.1.i, label %if.end12.1.i36.if.end.sink.split_crit_edge, label %if.end27.1.i

if.end12.1.i36.if.end.sink.split_crit_edge:       ; preds = %if.end12.1.i36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.sink.split

if.end27.1.i:                                     ; preds = %if.end12.1.i36
  %conv14.1.i = shl i32 %call.1.i33, 8
  %add.1.i = add i32 %call15.1.i, %conv14.1.i
  %conv30.1.i = and i32 %add.1.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 32674, i32 %conv30.1.i)
  %cmp31.not.1.i = icmp eq i32 %conv30.1.i, 32674
  br i1 %cmp31.not.1.i, label %if.end34.1.i, label %if.end27.1.i.if.end_crit_edge

if.end27.1.i.if.end_crit_edge:                    ; preds = %if.end27.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end34.1.i:                                     ; preds = %if.end27.1.i
  %call35.1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %arrayidx.i17, i8 noundef zeroext 10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.1.i)
  %cmp36.1.i = icmp slt i32 %call35.1.i, 0
  br i1 %cmp36.1.i, label %if.end34.1.i.if.end.sink.split_crit_edge, label %if.end47.1.i

if.end34.1.i.if.end.sink.split_crit_edge:         ; preds = %if.end34.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.sink.split

if.end47.1.i:                                     ; preds = %if.end34.1.i
  %call50.1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %arrayidx.i17, i8 noundef zeroext 11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.1.i)
  %cmp51.1.i = icmp slt i32 %call50.1.i, 0
  br i1 %cmp51.1.i, label %if.end47.1.i.if.end.sink.split_crit_edge, label %if.end47.1.i.if.end62.i_crit_edge

if.end47.1.i.if.end62.i_crit_edge:                ; preds = %if.end47.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62.i

if.end47.1.i.if.end.sink.split_crit_edge:         ; preds = %if.end47.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.sink.split

if.then.1.i38:                                    ; preds = %for.inc.i35
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call.1.i33)
  %cmp6.not.1.i37 = icmp eq i32 %call.1.i33, -6
  br i1 %cmp6.not.1.i37, label %if.then.1.i38.if.end_crit_edge, label %if.then.1.i38.if.end.sink.split_crit_edge

if.then.1.i38.if.end.sink.split_crit_edge:        ; preds = %if.then.1.i38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.sink.split

if.then.1.i38.if.end_crit_edge:                   ; preds = %if.then.1.i38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.sink.split:                                ; preds = %if.then.1.i38.if.end.sink.split_crit_edge, %if.end47.1.i.if.end.sink.split_crit_edge, %if.end34.1.i.if.end.sink.split_crit_edge, %if.end12.1.i36.if.end.sink.split_crit_edge
  %call.1.i33.sink = phi i32 [ %call50.1.i, %if.end47.1.i.if.end.sink.split_crit_edge ], [ %call35.1.i, %if.end34.1.i.if.end.sink.split_crit_edge ], [ %call15.1.i, %if.end12.1.i36.if.end.sink.split_crit_edge ], [ %call.1.i33, %if.then.1.i38.if.end.sink.split_crit_edge ]
  %48 = ptrtoint ptr %intf21.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %intf21.i, align 4
  %dev9.1.i39 = getelementptr inbounds %struct.usb_interface, ptr %49, i32 0, i32 7
  %50 = ptrtoint ptr %addr.i19 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %addr.i19, align 2
  %conv11.1.i40 = zext i16 %51 to i32
  %shl.1.i41 = shl nuw nsw i32 %conv11.1.i40, 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9.1.i39, ptr noundef nonnull @.str.7, i32 noundef %shl.1.i41, i32 noundef %call.1.i33.sink) #8
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.then.1.i38.if.end_crit_edge, %if.end27.1.i.if.end_crit_edge
  %52 = ptrtoint ptr %em28xx_sensor.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pr = load i32, ptr %em28xx_sensor.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp4 = icmp eq i32 %.pr, 0
  br i1 %cmp4, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %intf21.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %intf21.i, align 4
  %dev8 = getelementptr inbounds %struct.usb_interface, ptr %54, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev8, ptr noundef nonnull @.str) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %do.end93.i, %do.end88.i, %do.end78.i, %em28xx_probe_sensor_micron.exit.cleanup_crit_edge, %do.end62.i, %do.end57.i, %do.end47.i
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %do.end78.i ], [ 0, %do.end93.i ], [ 0, %do.end88.i ], [ 0, %do.end47.i ], [ 0, %do.end62.i ], [ 0, %do.end57.i ], [ 0, %em28xx_probe_sensor_micron.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @em28xx_init_camera(ptr noundef %dev) #0 align 64 {
entry:
  %regs.i150 = alloca [4 x [3 x i8]], align 1
  %regs.i = alloca [13 x [3 x i8]], align 1
  %pdata = alloca %struct.mt9v011_platform_data, align 4
  %mt9v011_info = alloca %struct.i2c_board_info, align 4
  %ov2640_info = alloca %struct.i2c_board_info, align 4
  %format = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %def_i2c_bus = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx2 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 19, i32 %1
  %v4l23 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %v4l23 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v4l23, align 4
  %em28xx_sensor = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 13
  %4 = ptrtoint ptr %em28xx_sensor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %em28xx_sensor, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %5, label %entry.cleanup84_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb10
    i32 3, label %sw.bb16
    i32 4, label %sw.bb27
  ]

entry.cleanup84_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup84

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pdata) #5
  %7 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %pdata, align 4, !annotation !105
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %mt9v011_info) #5
  %8 = call ptr @memcpy(ptr %mt9v011_info, ptr @.str.5, i32 20)
  %flags = getelementptr inbounds %struct.i2c_board_info, ptr %mt9v011_info, i32 0, i32 1
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags, align 4
  %addr = getelementptr inbounds %struct.i2c_board_info, ptr %mt9v011_info, i32 0, i32 2
  %addr4 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %1, i32 1
  %10 = ptrtoint ptr %addr4 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %addr4, align 2
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %addr, align 2
  %dev_name = getelementptr inbounds %struct.i2c_board_info, ptr %mt9v011_info, i32 0, i32 3
  %13 = ptrtoint ptr %dev_name to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %dev_name, align 4
  %platform_data = getelementptr inbounds %struct.i2c_board_info, ptr %mt9v011_info, i32 0, i32 4
  %14 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %pdata, ptr %platform_data, align 4
  %of_node = getelementptr inbounds %struct.i2c_board_info, ptr %mt9v011_info, i32 0, i32 5
  %sensor_xres = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 13
  %15 = call ptr @memset(ptr %of_node, i32 0, i32 24)
  %16 = ptrtoint ptr %sensor_xres to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 640, ptr %sensor_xres, align 4
  %sensor_yres = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 14
  %17 = ptrtoint ptr %sensor_yres to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 480, ptr %sensor_yres, align 8
  %xclk = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 12, i32 11
  %18 = ptrtoint ptr %xclk to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 6, ptr %xclk, align 2
  %call = call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 15, i8 noundef zeroext 6) #5
  %sensor_xtal = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 15
  %19 = ptrtoint ptr %sensor_xtal to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4300000, ptr %sensor_xtal, align 4
  %20 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4300000, ptr %pdata, align 4
  %v4l2_dev = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 2
  %call8 = call ptr @v4l2_i2c_new_subdev_board(ptr noundef %v4l2_dev, ptr noundef %arrayidx2, ptr noundef nonnull %mt9v011_info, ptr noundef null) #5
  %cmp = icmp eq ptr %call8, null
  br i1 %cmp, label %cleanup84.critedge, label %if.end

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %vinmode = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 11
  %21 = ptrtoint ptr %vinmode to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 13, ptr %vinmode, align 8
  %vinctl = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 12
  %22 = ptrtoint ptr %vinctl to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %vinctl, align 1
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %mt9v011_info) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pdata) #5
  br label %cleanup84

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sensor_xres11 = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 13
  %23 = ptrtoint ptr %sensor_xres11 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1280, ptr %sensor_xres11, align 4
  %sensor_yres12 = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 14
  %24 = ptrtoint ptr %sensor_yres12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1024, ptr %sensor_yres12, align 8
  call void @llvm.lifetime.start.p0(i64 39, ptr nonnull %regs.i) #5
  %25 = call ptr @memcpy(ptr %regs.i, ptr @__const.em28xx_initialize_mt9m001.regs, i32 39)
  %26 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx.i = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %27
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx.i, ptr noundef nonnull %regs.i, i32 noundef 3, i16 noundef zeroext 0) #5
  %28 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx.1.i = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %29
  %arrayidx1.1.i = getelementptr inbounds [13 x [3 x i8]], ptr %regs.i, i32 0, i32 1
  %call.i.1.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx.1.i, ptr noundef %arrayidx1.1.i, i32 noundef 3, i16 noundef zeroext 0) #5
  %30 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx.2.i = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %31
  %arrayidx1.2.i = getelementptr inbounds [13 x [3 x i8]], ptr %regs.i, i32 0, i32 2
  %call.i.2.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx.2.i, ptr noundef %arrayidx1.2.i, i32 noundef 3, i16 noundef zeroext 0) #5
  %32 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx.3.i = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %33
  %arrayidx1.3.i = getelementptr inbounds [13 x [3 x i8]], ptr %regs.i, i32 0, i32 3
  %call.i.3.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx.3.i, ptr noundef %arrayidx1.3.i, i32 noundef 3, i16 noundef zeroext 0) #5
  %34 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx.4.i = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %35
  %arrayidx1.4.i = getelementptr inbounds [13 x [3 x i8]], ptr %regs.i, i32 0, i32 4
  %call.i.4.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx.4.i, ptr noundef %arrayidx1.4.i, i32 noundef 3, i16 noundef zeroext 0) #5
  %36 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx.5.i = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %37
  %arrayidx1.5.i = getelementptr inbounds [13 x [3 x i8]], ptr %regs.i, i32 0, i32 5
  %call.i.5.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx.5.i, ptr noundef %arrayidx1.5.i, i32 noundef 3, i16 noundef zeroext 0) #5
  %38 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx.6.i = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %39
  %arrayidx1.6.i = getelementptr inbounds [13 x [3 x i8]], ptr %regs.i, i32 0, i32 6
  %call.i.6.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx.6.i, ptr noundef %arrayidx1.6.i, i32 noundef 3, i16 noundef zeroext 0) #5
  %40 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx.7.i = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %41
  %arrayidx1.7.i = getelementptr inbounds [13 x [3 x i8]], ptr %regs.i, i32 0, i32 7
  %call.i.7.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx.7.i, ptr noundef %arrayidx1.7.i, i32 noundef 3, i16 noundef zeroext 0) #5
  %42 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx.8.i = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %43
  %arrayidx1.8.i = getelementptr inbounds [13 x [3 x i8]], ptr %regs.i, i32 0, i32 8
  %call.i.8.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx.8.i, ptr noundef %arrayidx1.8.i, i32 noundef 3, i16 noundef zeroext 0) #5
  %44 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx.9.i = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %45
  %arrayidx1.9.i = getelementptr inbounds [13 x [3 x i8]], ptr %regs.i, i32 0, i32 9
  %call.i.9.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx.9.i, ptr noundef %arrayidx1.9.i, i32 noundef 3, i16 noundef zeroext 0) #5
  %46 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx.10.i = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %47
  %arrayidx1.10.i = getelementptr inbounds [13 x [3 x i8]], ptr %regs.i, i32 0, i32 10
  %call.i.10.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx.10.i, ptr noundef %arrayidx1.10.i, i32 noundef 3, i16 noundef zeroext 0) #5
  %48 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx.11.i = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %49
  %arrayidx1.11.i = getelementptr inbounds [13 x [3 x i8]], ptr %regs.i, i32 0, i32 11
  %call.i.11.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx.11.i, ptr noundef %arrayidx1.11.i, i32 noundef 3, i16 noundef zeroext 0) #5
  %50 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx.12.i = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %51
  %arrayidx1.12.i = getelementptr inbounds [13 x [3 x i8]], ptr %regs.i, i32 0, i32 12
  %call.i.12.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx.12.i, ptr noundef %arrayidx1.12.i, i32 noundef 3, i16 noundef zeroext 0) #5
  call void @llvm.lifetime.end.p0(i64 39, ptr nonnull %regs.i) #5
  %vinmode14 = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 11
  %52 = ptrtoint ptr %vinmode14 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 12, ptr %vinmode14, align 8
  %vinctl15 = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 12
  %53 = ptrtoint ptr %vinctl15 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %vinctl15, align 1
  br label %cleanup84

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sensor_xres17 = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 13
  %54 = ptrtoint ptr %sensor_xres17 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 640, ptr %sensor_xres17, align 4
  %sensor_yres18 = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 14
  %55 = ptrtoint ptr %sensor_yres18 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 512, ptr %sensor_yres18, align 8
  %xclk20 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 12, i32 11
  %56 = ptrtoint ptr %xclk20 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 10, ptr %xclk20, align 2
  %call23 = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 15, i8 noundef zeroext 10) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %regs.i150) #5
  %57 = call ptr @memcpy(ptr %regs.i150, ptr @__const.em28xx_initialize_mt9m111.regs, i32 12)
  %58 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx.i152 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %59
  %call.i.i153 = call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx.i152, ptr noundef nonnull %regs.i150, i32 noundef 3, i16 noundef zeroext 0) #5
  %60 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx.1.i154 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %61
  %arrayidx1.1.i155 = getelementptr inbounds [4 x [3 x i8]], ptr %regs.i150, i32 0, i32 1
  %call.i.1.i156 = call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx.1.i154, ptr noundef %arrayidx1.1.i155, i32 noundef 3, i16 noundef zeroext 0) #5
  %62 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx.2.i157 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %63
  %arrayidx1.2.i158 = getelementptr inbounds [4 x [3 x i8]], ptr %regs.i150, i32 0, i32 2
  %call.i.2.i159 = call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx.2.i157, ptr noundef %arrayidx1.2.i158, i32 noundef 3, i16 noundef zeroext 0) #5
  %64 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %def_i2c_bus, align 4
  %arrayidx.3.i160 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %65
  %arrayidx1.3.i161 = getelementptr inbounds [4 x [3 x i8]], ptr %regs.i150, i32 0, i32 3
  %call.i.3.i162 = call i32 @i2c_transfer_buffer_flags(ptr noundef %arrayidx.3.i160, ptr noundef %arrayidx1.3.i161, i32 noundef 3, i16 noundef zeroext 0) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %regs.i150) #5
  %vinmode25 = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 11
  %66 = ptrtoint ptr %vinmode25 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 10, ptr %vinmode25, align 8
  %vinctl26 = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 12
  %67 = ptrtoint ptr %vinctl26 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %vinctl26, align 1
  br label %cleanup84

sw.bb27:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %ov2640_info) #5
  %68 = call ptr @memcpy(ptr %ov2640_info, ptr @.str.6, i32 20)
  %flags29 = getelementptr inbounds %struct.i2c_board_info, ptr %ov2640_info, i32 0, i32 1
  %69 = ptrtoint ptr %flags29 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 -28672, ptr %flags29, align 4
  %addr30 = getelementptr inbounds %struct.i2c_board_info, ptr %ov2640_info, i32 0, i32 2
  %addr31 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 20, i32 %1, i32 1
  %70 = ptrtoint ptr %addr31 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %addr31, align 2
  %72 = ptrtoint ptr %addr30 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %addr30, align 2
  %dev_name32 = getelementptr inbounds %struct.i2c_board_info, ptr %ov2640_info, i32 0, i32 3
  %73 = call ptr @memset(ptr %dev_name32, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format) #5
  %74 = getelementptr inbounds i8, ptr %format, i32 4
  %75 = call ptr @memset(ptr %74, i32 0, i32 84)
  %76 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1, ptr %format, align 4
  %sensor_xres40 = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 13
  %77 = ptrtoint ptr %sensor_xres40 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 640, ptr %sensor_xres40, align 4
  %sensor_yres41 = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 14
  %78 = ptrtoint ptr %sensor_yres41 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 480, ptr %sensor_yres41, align 8
  %v4l2_dev42 = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 2
  %call43 = call ptr @v4l2_i2c_new_subdev_board(ptr noundef %v4l2_dev42, ptr noundef %arrayidx2, ptr noundef nonnull %ov2640_info, ptr noundef null) #5
  %tobool.not = icmp eq ptr %call43, null
  br i1 %tobool.not, label %cleanup84.critedge134, label %if.end45

if.end45:                                         ; preds = %sw.bb27
  %format46 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %79 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 8200, ptr %code, align 4
  %80 = ptrtoint ptr %format46 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 640, ptr %format46, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %81 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 480, ptr %height, align 4
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %call43, i32 0, i32 6
  %82 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %83, i32 0, i32 7
  %84 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pad, align 4
  %tobool51.not = icmp eq ptr %85, null
  br i1 %tobool51.not, label %sw.epilog.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end45
  %set_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %85, i32 0, i32 5
  %86 = ptrtoint ptr %set_fmt to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %set_fmt, align 4
  %tobool54.not = icmp eq ptr %87, null
  br i1 %tobool54.not, label %sw.epilog.critedge135, label %if.else56

if.else56:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %88 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool57.not = icmp eq ptr %88, null
  br i1 %tobool57.not, label %if.else56.if.else64_crit_edge, label %land.lhs.true58

if.else56.if.else64_crit_edge:                    ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else64

land.lhs.true58:                                  ; preds = %if.else56
  %set_fmt59 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %88, i32 0, i32 5
  %89 = ptrtoint ptr %set_fmt59 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %set_fmt59, align 4
  %tobool60.not = icmp eq ptr %90, null
  br i1 %tobool60.not, label %land.lhs.true58.if.else64_crit_edge, label %if.then61

land.lhs.true58.if.else64_crit_edge:              ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else64

if.then61:                                        ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #7
  %call63 = call i32 %90(ptr noundef nonnull %call43, ptr noundef null, ptr noundef nonnull %format) #5
  %xclk73.c146 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 12, i32 11
  %91 = ptrtoint ptr %xclk73.c146 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 11, ptr %xclk73.c146, align 2
  %call76.c147 = call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 15, i8 noundef zeroext 11) #5
  %vinmode77.c148 = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 11
  %92 = ptrtoint ptr %vinmode77.c148 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 8, ptr %vinmode77.c148, align 8
  %vinctl78.c149 = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 12
  %93 = ptrtoint ptr %vinctl78.c149 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %vinctl78.c149, align 1
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %ov2640_info) #5
  br label %cleanup84

if.else64:                                        ; preds = %land.lhs.true58.if.else64_crit_edge, %if.else56.if.else64_crit_edge
  %call68 = call i32 %87(ptr noundef nonnull %call43, ptr noundef null, ptr noundef nonnull %format) #5
  %xclk73.c141 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 12, i32 11
  %94 = ptrtoint ptr %xclk73.c141 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 11, ptr %xclk73.c141, align 2
  %call76.c142 = call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 15, i8 noundef zeroext 11) #5
  %vinmode77.c143 = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 11
  %95 = ptrtoint ptr %vinmode77.c143 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 8, ptr %vinmode77.c143, align 8
  %vinctl78.c144 = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 12
  %96 = ptrtoint ptr %vinctl78.c144 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %vinctl78.c144, align 1
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %ov2640_info) #5
  br label %cleanup84

sw.epilog.critedge:                               ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  %xclk73.c = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 12, i32 11
  %97 = ptrtoint ptr %xclk73.c to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 11, ptr %xclk73.c, align 2
  %call76.c = call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 15, i8 noundef zeroext 11) #5
  %vinmode77.c = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 11
  %98 = ptrtoint ptr %vinmode77.c to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 8, ptr %vinmode77.c, align 8
  %vinctl78.c = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 12
  %99 = ptrtoint ptr %vinctl78.c to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %vinctl78.c, align 1
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %ov2640_info) #5
  br label %cleanup84

sw.epilog.critedge135:                            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %xclk73.c136 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 12, i32 11
  %100 = ptrtoint ptr %xclk73.c136 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 11, ptr %xclk73.c136, align 2
  %call76.c137 = call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 15, i8 noundef zeroext 11) #5
  %vinmode77.c138 = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 11
  %101 = ptrtoint ptr %vinmode77.c138 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 8, ptr %vinmode77.c138, align 8
  %vinctl78.c139 = getelementptr inbounds %struct.em28xx_v4l2, ptr %3, i32 0, i32 12
  %102 = ptrtoint ptr %vinctl78.c139 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %vinctl78.c139, align 1
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %ov2640_info) #5
  br label %cleanup84

cleanup84.critedge:                               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %mt9v011_info) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pdata) #5
  br label %cleanup84

cleanup84.critedge134:                            ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %ov2640_info) #5
  br label %cleanup84

cleanup84:                                        ; preds = %cleanup84.critedge134, %cleanup84.critedge, %sw.epilog.critedge135, %sw.epilog.critedge, %if.else64, %if.then61, %sw.bb16, %sw.bb10, %if.end, %entry.cleanup84_crit_edge
  %retval.2 = phi i32 [ -19, %cleanup84.critedge ], [ -19, %cleanup84.critedge134 ], [ -22, %entry.cleanup84_crit_edge ], [ 0, %if.then61 ], [ 0, %if.else64 ], [ 0, %sw.epilog.critedge135 ], [ 0, %sw.epilog.critedge ], [ 0, %if.end ], [ 0, %sw.bb16 ], [ 0, %sw.bb10 ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @em28xx_write_reg(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_i2c_new_subdev_board(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !55, !56, !57, !59, !60, !62, !63, !65, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !87, !88, !90, !91, !93, !94}
!llvm.module.flags = !{!96, !97, !98, !99, !100, !101, !102, !103}
!llvm.ident = !{!104}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/em28xx/em28xx-camera.c", i32 302, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @em28xx_detect_sensor._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @em28xx_detect_sensor._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/em28xx/em28xx-camera.c", i32 321, i32 12}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/em28xx/em28xx-camera.c", i32 377, i32 12}
!12 = !{ptr @__ksymtab_em28xx_init_camera, !13, !"__ksymtab_em28xx_init_camera", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/em28xx/em28xx-camera.c", i32 422, i32 1}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/em28xx/em28xx-camera.c", i32 107, i32 5}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @em28xx_probe_sensor_micron._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @em28xx_probe_sensor_micron._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @em28xx_probe_sensor_micron._entry.10, !21, !"_entry", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/em28xx/em28xx-camera.c", i32 116, i32 4}
!22 = !{ptr @em28xx_probe_sensor_micron._entry_ptr.11, !21, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/usb/em28xx/em28xx-camera.c", i32 127, i32 11}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/em28xx/em28xx-camera.c", i32 130, i32 11}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/em28xx/em28xx-camera.c", i32 133, i32 11}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/em28xx/em28xx-camera.c", i32 136, i32 11}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/em28xx/em28xx-camera.c", i32 140, i32 11}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/usb/em28xx/em28xx-camera.c", i32 143, i32 11}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/em28xx/em28xx-camera.c", i32 147, i32 11}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/em28xx/em28xx-camera.c", i32 151, i32 11}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/em28xx/em28xx-camera.c", i32 155, i32 4}
!41 = !{ptr @em28xx_probe_sensor_micron._entry.20, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @em28xx_probe_sensor_micron._entry_ptr.22, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/em28xx/em28xx-camera.c", i32 162, i32 4}
!45 = !{ptr @em28xx_probe_sensor_micron._entry.23, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @em28xx_probe_sensor_micron._entry_ptr.25, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.27, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/em28xx/em28xx-camera.c", i32 165, i32 4}
!49 = !{ptr @em28xx_probe_sensor_micron._entry.26, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @em28xx_probe_sensor_micron._entry_ptr.28, !48, !"_entry_ptr", i1 false, i1 false}
!51 = distinct !{null, !52, !"micron_sensor_addrs", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/em28xx/em28xx-camera.c", i32 26, i32 23}
!53 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/em28xx/em28xx-camera.c", i32 197, i32 5}
!55 = !{ptr @em28xx_probe_sensor_omnivision._entry, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @em28xx_probe_sensor_omnivision._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @em28xx_probe_sensor_omnivision._entry.30, !58, !"_entry", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/em28xx/em28xx-camera.c", i32 206, i32 4}
!59 = !{ptr @em28xx_probe_sensor_omnivision._entry_ptr.31, !58, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @em28xx_probe_sensor_omnivision._entry.32, !61, !"_entry", i1 false, i1 false}
!61 = !{!"../drivers/media/usb/em28xx/em28xx-camera.c", i32 219, i32 4}
!62 = !{ptr @em28xx_probe_sensor_omnivision._entry_ptr.33, !61, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @em28xx_probe_sensor_omnivision._entry.34, !64, !"_entry", i1 false, i1 false}
!64 = !{!"../drivers/media/usb/em28xx/em28xx-camera.c", i32 228, i32 4}
!65 = !{ptr @em28xx_probe_sensor_omnivision._entry_ptr.35, !64, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/em28xx/em28xx-camera.c", i32 237, i32 11}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/usb/em28xx/em28xx-camera.c", i32 241, i32 11}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/usb/em28xx/em28xx-camera.c", i32 244, i32 11}
!72 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/usb/em28xx/em28xx-camera.c", i32 247, i32 11}
!74 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/usb/em28xx/em28xx-camera.c", i32 250, i32 11}
!76 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/usb/em28xx/em28xx-camera.c", i32 253, i32 11}
!78 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/usb/em28xx/em28xx-camera.c", i32 257, i32 11}
!80 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/usb/em28xx/em28xx-camera.c", i32 261, i32 11}
!82 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/usb/em28xx/em28xx-camera.c", i32 265, i32 11}
!84 = !{ptr @.str.46, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/usb/em28xx/em28xx-camera.c", i32 268, i32 4}
!86 = !{ptr @em28xx_probe_sensor_omnivision._entry.45, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @em28xx_probe_sensor_omnivision._entry_ptr.47, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @em28xx_probe_sensor_omnivision._entry.48, !89, !"_entry", i1 false, i1 false}
!89 = !{!"../drivers/media/usb/em28xx/em28xx-camera.c", i32 275, i32 4}
!90 = !{ptr @em28xx_probe_sensor_omnivision._entry_ptr.49, !89, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @em28xx_probe_sensor_omnivision._entry.50, !92, !"_entry", i1 false, i1 false}
!92 = !{!"../drivers/media/usb/em28xx/em28xx-camera.c", i32 278, i32 4}
!93 = !{ptr @em28xx_probe_sensor_omnivision._entry_ptr.51, !92, !"_entry_ptr", i1 false, i1 false}
!94 = distinct !{null, !95, !"omnivision_sensor_addrs", i1 false, i1 false}
!95 = !{!"../drivers/media/usb/em28xx/em28xx-camera.c", i32 34, i32 23}
!96 = !{i32 1, !"wchar_size", i32 2}
!97 = !{i32 1, !"min_enum_size", i32 4}
!98 = !{i32 8, !"branch-target-enforcement", i32 0}
!99 = !{i32 8, !"sign-return-address", i32 0}
!100 = !{i32 8, !"sign-return-address-all", i32 0}
!101 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!102 = !{i32 7, !"uwtable", i32 1}
!103 = !{i32 7, !"frame-pointer", i32 2}
!104 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!105 = !{!"auto-init"}
