; ModuleID = '/llk/IR_all_yes/drivers/media/usb/go7007/s2250-board.c_pt.bc'
source_filename = "../drivers/media/usb/go7007/s2250-board.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_audio_ops = type { ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.go7007 = type { ptr, [32 x i8], ptr, i32, i32, i32, [64 x i8], %struct.video_device, ptr, i32, %struct.v4l2_device, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.spinlock, %struct.mutex, %struct.mutex, i32, ptr, ptr, [16 x i8], i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i8, [4 x %struct.anon.105], [1624 x i8], [216 x i8], i32, %struct.mutex, %struct.vb2_queue, i32, i32, i16, i32, i32, %struct.list_head, %struct.wait_queue_head, ptr, ptr, ptr, i32, %struct.i2c_adapter, ptr, ptr, i32, %struct.wait_queue_head, i16, i16 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.86], %struct.media_entity_enum, i32 }
%struct.anon.86 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.105 = type { i8, i32, i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.s2250 = type { %struct.v4l2_subdev, %struct.v4l2_ctrl_handler, i64, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.go7007_usb = type { ptr, %struct.mutex, ptr, [8 x ptr], [8 x ptr], ptr }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.99, i16, i16, i16, [10 x i16] }
%union.anon.99 = type { i16 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_description303 = internal constant [60 x i8] c"s2250.description=Sensoray 2250/2251 i2c v4l2 subdev driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [42 x i8] c"s2250.file=drivers/media/usb/go7007/s2250\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [21 x i8] c"s2250.license=GPL v2\00", section ".modinfo", align 1
@__initcall__kmod_s2250__306_632_s2250_driver_init6 = internal global ptr @s2250_driver_init, section ".initcall6.init", align 4
@s2250_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @s2250_probe, ptr @s2250_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @s2250_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_s2250_driver_exit = internal global ptr @s2250_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"s2250\00", [26 x i8] zeroinitializer }, align 32
@s2250_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"s2250\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@s2250_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @s2250_core_ops, ptr null, ptr @s2250_audio_ops, ptr @s2250_video_ops, ptr null, ptr null, ptr null, ptr @s2250_pad_ops }, [32 x i8] zeroinitializer }, align 32
@s2250_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016%s: initializing %s at address 0x%x on %s\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"s2250_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/usb/go7007/s2250-board.c\00", [57 x i8] zeroinitializer }, align 32
@s2250_probe._entry_ptr = internal global ptr @s2250_probe._entry, section ".printk_index", align 4
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Sensoray 2250/2251\00", [45 x i8] zeroinitializer }, align 32
@s2250_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"s2250_board:524:(&state->hdl)->_lock\00", [59 x i8] zeroinitializer }, align 32
@s2250_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @s2250_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@aud_regs = internal global { [28 x i8], [36 x i8] } { [28 x i8] c"\1E\00\00\17\02\17\04\F9\06\F9\08\02\0A\00\0C\00\0A\00\0C\00\0E\02\10\00\12\01\00\00", [36 x i8] zeroinitializer }, align 32
@s2250_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 551, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"error initializing audio\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@s2250_probe._entry_ptr.10 = internal global ptr @s2250_probe._entry.6, section ".printk_index", align 4
@vid_regs = internal global { [8 x i8], [24 x i8] } { [8 x i8] c"\F2\0F\AA\00\F8\FF\00\00", [24 x i8] zeroinitializer }, align 32
@s2250_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 556, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"error initializing decoder\0A\00", [36 x i8] zeroinitializer }, align 32
@s2250_probe._entry_ptr.13 = internal global ptr @s2250_probe._entry.11, section ".printk_index", align 4
@vid_regs_fp = internal global { [44 x i16], [40 x i8] } { [44 x i16] [i16 40, i16 103, i16 288, i16 22, i16 289, i16 3314, i16 290, i16 242, i16 291, i16 12, i16 292, i16 720, i16 293, i16 736, i16 294, i16 4, i16 296, i16 480, i16 298, i16 22, i16 299, i16 242, i16 300, i16 242, i16 301, i16 12, i16 302, i16 720, i16 303, i16 736, i16 304, i16 4, i16 306, i16 480, i16 320, i16 96, i16 339, i16 12, i16 340, i16 512, i16 336, i16 2049, i16 0, i16 0], [40 x i8] zeroinitializer }, align 32
@s2250_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 560, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@s2250_probe._entry_ptr.15 = internal global ptr @s2250_probe._entry.14, section ".printk_index", align 4
@s2250_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 596, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: initialized successfully\0A\00", [32 x i8] zeroinitializer }, align 32
@s2250_probe._entry_ptr.18 = internal global ptr @s2250_probe._entry.16, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@s2250_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @s2250_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s2250_audio_ops = internal constant { %struct.v4l2_subdev_audio_ops, [16 x i8] } { %struct.v4l2_subdev_audio_ops { ptr null, ptr null, ptr @s2250_s_audio_routing, ptr null }, [16 x i8] zeroinitializer }, align 32
@s2250_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr @s2250_s_video_routing, ptr null, ptr null, ptr @s2250_s_std, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@s2250_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s2250_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@s2250_log_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016%s: Standard: %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s2250_log_status\00", [47 x i8] zeroinitializer }, align 32
@s2250_log_status._entry_ptr = internal global ptr @s2250_log_status._entry, section ".printk_index", align 4
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NTSC\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PAL\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SECAM\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@s2250_log_status._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.20, ptr @.str.3, i32 457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016%s: Input: %s\0A\00", [47 x i8] zeroinitializer }, align 32
@s2250_log_status._entry_ptr.27 = internal global ptr @s2250_log_status._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Composite\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"S-video\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"error\00", [26 x i8] zeroinitializer }, align 32
@s2250_log_status._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.20, ptr @.str.3, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016%s: Audio input: %s\0A\00", [41 x i8] zeroinitializer }, align 32
@s2250_log_status._entry_ptr.33 = internal global ptr @s2250_log_status._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Line In\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Mic\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Mic Boost\00", [22 x i8] zeroinitializer }, align 32
@vid_regs_fp_pal = internal constant { [16 x i16], [32 x i8] } { [16 x i16] [i16 288, i16 23, i16 289, i16 3362, i16 290, i16 290, i16 298, i16 23, i16 299, i16 290, i16 300, i16 290, i16 320, i16 96, i16 0, i16 0], [32 x i8] zeroinitializer }, align 32
@read_reg_fp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 272, ptr @.str.39, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"i2c lock failed\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"read_reg_fp\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@read_reg_fp._entry_ptr = internal global ptr @read_reg_fp._entry, section ".printk_index", align 4
@write_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 296, ptr @.str.39, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"failed\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"write_regs\00", [21 x i8] zeroinitializer }, align 32
@write_regs._entry_ptr = internal global ptr @write_regs._entry, section ".printk_index", align 4
@write_regs_fp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.3, i32 309, ptr @.str.39, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"failed fp\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"write_regs_fp\00", [18 x i8] zeroinitializer }, align 32
@write_regs_fp._entry_ptr = internal global ptr @write_regs_fp._entry, section ".printk_index", align 4
@write_reg_fp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.44, ptr @.str.3, i32 210, ptr @.str.39, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"write_reg_fp\00", [19 x i8] zeroinitializer }, align 32
@write_reg_fp._entry_ptr = internal global ptr @write_reg_fp._entry, section ".printk_index", align 4
@write_reg_fp._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.3, i32 229, ptr @.str.39, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid fp write %x %x\0A\00", [40 x i8] zeroinitializer }, align 32
@write_reg_fp._entry_ptr.47 = internal global ptr @write_reg_fp._entry.45, section ".printk_index", align 4
@write_reg_fp._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.3, i32 234, ptr @.str.39, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"invalid fp write addr %x %x\0A\00", [35 x i8] zeroinitializer }, align 32
@write_reg_fp._entry_ptr.50 = internal global ptr @write_reg_fp._entry.48, section ".printk_index", align 4
@write_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.51, ptr @.str.3, i32 171, ptr @.str.39, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"write_reg\00", [22 x i8] zeroinitializer }, align 32
@write_reg._entry_ptr = internal global ptr @write_reg._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 64, i64 255, i64 45056]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.54 = internal global [6 x i64] [i64 4, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963779]
@___asan_gen_.55 = private unnamed_addr constant [13 x i8] c"s2250_driver\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 623, i32 26 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 625, i32 11 }
@___asan_gen_.61 = private unnamed_addr constant [9 x i8] c"s2250_id\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 617, i32 35 }
@___asan_gen_.64 = private unnamed_addr constant [10 x i8] c"s2250_ops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 488, i32 37 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 521, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 524, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [15 x i8] c"s2250_ctrl_ops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 467, i32 35 }
@___asan_gen_.91 = private unnamed_addr constant [9 x i8] c"aud_regs\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 49, i32 22 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 551, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [9 x i8] c"vid_regs\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 67, i32 22 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 556, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [12 x i8] c"vid_regs_fp\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 74, i32 12 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 560, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 596, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [15 x i8] c"s2250_core_ops\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 471, i32 42 }
@___asan_gen_.130 = private unnamed_addr constant [16 x i8] c"s2250_audio_ops\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 475, i32 43 }
@___asan_gen_.133 = private unnamed_addr constant [16 x i8] c"s2250_video_ops\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 479, i32 43 }
@___asan_gen_.136 = private unnamed_addr constant [14 x i8] c"s2250_pad_ops\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 484, i32 41 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 451, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 455, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 458, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant [16 x i8] c"vid_regs_fp_pal\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 100, i32 12 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 272, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 296, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 309, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 210, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 228, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 233, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.244 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.245 = private constant [42 x i8] c"../drivers/media/usb/go7007/s2250-board.c\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 171, i32 3 }
@llvm.compiler.used = appending global [85 x ptr] [ptr @__UNIQUE_ID_description303, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__exitcall_s2250_driver_exit, ptr @__initcall__kmod_s2250__306_632_s2250_driver_init6, ptr @read_reg_fp._entry, ptr @read_reg_fp._entry_ptr, ptr @s2250_driver_exit, ptr @s2250_log_status._entry, ptr @s2250_log_status._entry.25, ptr @s2250_log_status._entry.31, ptr @s2250_log_status._entry_ptr, ptr @s2250_log_status._entry_ptr.27, ptr @s2250_log_status._entry_ptr.33, ptr @s2250_probe._entry, ptr @s2250_probe._entry.11, ptr @s2250_probe._entry.14, ptr @s2250_probe._entry.16, ptr @s2250_probe._entry.6, ptr @s2250_probe._entry_ptr, ptr @s2250_probe._entry_ptr.10, ptr @s2250_probe._entry_ptr.13, ptr @s2250_probe._entry_ptr.15, ptr @s2250_probe._entry_ptr.18, ptr @write_reg._entry, ptr @write_reg._entry_ptr, ptr @write_reg_fp._entry, ptr @write_reg_fp._entry.45, ptr @write_reg_fp._entry.48, ptr @write_reg_fp._entry_ptr, ptr @write_reg_fp._entry_ptr.47, ptr @write_reg_fp._entry_ptr.50, ptr @write_regs._entry, ptr @write_regs._entry_ptr, ptr @write_regs_fp._entry, ptr @write_regs_fp._entry_ptr, ptr @s2250_driver, ptr @.str, ptr @s2250_id, ptr @s2250_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @s2250_probe._key, ptr @.str.5, ptr @s2250_ctrl_ops, ptr @aud_regs, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @vid_regs, ptr @.str.12, ptr @vid_regs_fp, ptr @.str.17, ptr @s2250_core_ops, ptr @s2250_audio_ops, ptr @s2250_video_ops, ptr @s2250_pad_ops, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @vid_regs_fp_pal, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.51], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2250_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2250_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2250_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2250_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2250_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2250_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aud_regs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2250_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vid_regs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2250_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vid_regs_fp to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2250_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2250_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2250_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2250_audio_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2250_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2250_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2250_log_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2250_log_status._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s2250_log_status._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vid_regs_fp_pal to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_reg_fp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_regs_fp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_reg_fp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_reg_fp._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_reg_fp._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s2250_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @s2250_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @s2250_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @s2250_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s2250_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %hpi_context = getelementptr inbounds %struct.go7007, ptr %3, i32 0, i32 64
  %4 = ptrtoint ptr %hpi_context to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hpi_context, align 4
  %call2 = tail call ptr @i2c_new_dummy_device(ptr noundef %1, i16 noundef zeroext 26) #6
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 424) #9
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_unregister_device(ptr noundef %call2) #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call7.i.i, ptr noundef %client, ptr noundef nonnull @s2250_ops) #6
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %call7.i.i, i32 0, i32 9
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr, align 2
  %conv = zext i16 %9 to i32
  %10 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter1, align 8
  %name10 = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 12
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %name, ptr noundef nonnull @.str.4, i32 noundef %conv, ptr noundef %name10) #10
  %hdl = getelementptr inbounds %struct.s2250, ptr %call7.i.i, i32 0, i32 1
  %call14 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl, i32 noundef 4, ptr noundef nonnull @s2250_probe._key, ptr noundef nonnull @.str.5) #6
  %call16 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @s2250_ctrl_ops, i32 noundef 9963776, i64 noundef -128, i64 noundef 127, i64 noundef 1, i64 noundef 0) #6
  %call18 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @s2250_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 63, i64 noundef 1, i64 noundef 50) #6
  %call20 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @s2250_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 4094, i64 noundef 1, i64 noundef 2070) #6
  %call22 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @s2250_ctrl_ops, i32 noundef 9963779, i64 noundef -512, i64 noundef 511, i64 noundef 1, i64 noundef 0) #6
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call7.i.i, i32 0, i32 8
  %12 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %hdl, ptr %ctrl_handler, align 8
  %error = getelementptr inbounds %struct.s2250, ptr %call7.i.i, i32 0, i32 1, i32 9
  %13 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %error, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.end29, label %if.then25

if.then25:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

if.end29:                                         ; preds = %if.end7
  %std = getelementptr inbounds %struct.s2250, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 45056, ptr %std, align 8
  %brightness = getelementptr inbounds %struct.s2250, ptr %call7.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 50, ptr %brightness, align 4
  %contrast = getelementptr inbounds %struct.s2250, ptr %call7.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %contrast to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 50, ptr %contrast, align 8
  %saturation = getelementptr inbounds %struct.s2250, ptr %call7.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %saturation to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 50, ptr %saturation, align 4
  %hue = getelementptr inbounds %struct.s2250, ptr %call7.i.i, i32 0, i32 7
  %19 = ptrtoint ptr %hue to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %hue, align 8
  %audio30 = getelementptr inbounds %struct.s2250, ptr %call7.i.i, i32 0, i32 10
  %20 = ptrtoint ptr %audio30 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call2, ptr %audio30, align 4
  %call31 = tail call fastcc i32 @write_regs(ptr noundef %call2, ptr noundef nonnull @aud_regs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.end29.fail_crit_edge, label %if.end38

if.end29.fail_crit_edge:                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end38:                                         ; preds = %if.end29
  %call39 = tail call fastcc i32 @write_regs(ptr noundef %client, ptr noundef nonnull @vid_regs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.end38.fail_crit_edge, label %if.end47

if.end38.fail_crit_edge:                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end47:                                         ; preds = %if.end38
  %call48 = tail call fastcc i32 @write_regs_fp(ptr noundef %client, ptr noundef nonnull @vid_regs_fp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.end47.fail_crit_edge, label %if.end56

if.end47.fail_crit_edge:                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

if.end56:                                         ; preds = %if.end47
  %call57 = tail call fastcc i32 @write_reg_fp(ptr noundef %client, i16 noundef zeroext 32, i16 noundef zeroext 33)
  %call58 = tail call fastcc i32 @write_reg_fp(ptr noundef %client, i16 noundef zeroext 33, i16 noundef zeroext 1634)
  %call59 = tail call fastcc i32 @write_reg_fp(ptr noundef %client, i16 noundef zeroext 320, i16 noundef zeroext 96)
  %audio_input = getelementptr inbounds %struct.s2250, ptr %call7.i.i, i32 0, i32 9
  %21 = ptrtoint ptr %audio_input to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %audio_input, align 8
  %call60 = tail call fastcc i32 @write_reg(ptr noundef %client, i8 noundef zeroext 8, i8 noundef zeroext 2)
  %i2c_lock = getelementptr inbounds %struct.go7007_usb, ptr %5, i32 0, i32 1
  %call61 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp eq i32 %call61, 0
  br i1 %cmp62, label %if.then64, label %if.end56.do.end93_crit_edge

if.end56.do.end93_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end93

if.then64:                                        ; preds = %if.end56
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i158 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 16) #9
  %cmp66.not = icmp eq ptr %call7.i.i158, null
  br i1 %cmp66.not, label %if.then64.if.end88_crit_edge, label %if.then68

if.then64.if.end88_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end88

if.then68:                                        ; preds = %if.then64
  %23 = ptrtoint ptr %hpi_context to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hpi_context, align 4
  %usbdev5.i = getelementptr inbounds %struct.go7007_usb, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %usbdev5.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %usbdev5.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 8
  %shl.i1.i = shl i32 %28, 8
  %or8.i = or i32 %shl.i1.i, -2147483520
  %call11.i = tail call i32 @usb_control_msg(ptr noundef %26, i32 noundef %or8.i, i8 noundef zeroext 65, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i158, i16 noundef zeroext 16, i32 noundef 5000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp70 = icmp sgt i32 %call11.i, 0
  br i1 %cmp70, label %if.then72, label %if.then68.if.end87_crit_edge

if.then68.if.end87_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

if.then72:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %call7.i.i158 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %call7.i.i158, align 8
  %arrayidx78 = getelementptr i8, ptr %call7.i.i158, i32 1
  %30 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx78, align 1
  %32 = or i8 %31, 32
  store i8 %32, ptr %arrayidx78, align 1
  %conv82 = zext i8 %32 to i16
  %add = mul nuw i16 %conv82, 257
  %33 = ptrtoint ptr %hpi_context to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hpi_context, align 4
  %usbdev5.i160 = getelementptr inbounds %struct.go7007_usb, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %usbdev5.i160 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %usbdev5.i160, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 8
  %shl.i1.i161 = shl i32 %38, 8
  %or8.i162 = or i32 %shl.i1.i161, -2147483648
  %call11.i163 = tail call i32 @usb_control_msg(ptr noundef %36, i32 noundef %or8.i162, i8 noundef zeroext 64, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext %add, ptr noundef nonnull %call7.i.i158, i16 noundef zeroext 16, i32 noundef 5000) #6
  br label %if.end87

if.end87:                                         ; preds = %if.then72, %if.then68.if.end87_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i158) #6
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.then64.if.end88_crit_edge
  tail call void @mutex_unlock(ptr noundef %i2c_lock) #6
  br label %do.end93

do.end93:                                         ; preds = %if.end88, %if.end56.do.end93_crit_edge
  %call97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name) #10
  br label %cleanup

fail:                                             ; preds = %if.end47.fail_crit_edge, %if.end38.fail_crit_edge, %if.end29.fail_crit_edge
  %.str.12.sink = phi ptr [ @.str.7, %if.end29.fail_crit_edge ], [ @.str.12, %if.end38.fail_crit_edge ], [ @.str.12, %if.end47.fail_crit_edge ]
  %dev55 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev55, ptr noundef nonnull %.str.12.sink) #10
  tail call void @i2c_unregister_device(ptr noundef %call2) #6
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %fail, %do.end93, %if.then25, %if.then6, %if.then
  %retval.0 = phi i32 [ %6, %if.then ], [ -12, %if.then6 ], [ %14, %if.then25 ], [ -5, %fail ], [ 0, %do.end93 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s2250_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %audio = getelementptr inbounds %struct.s2250, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %audio, align 4
  tail call void @i2c_unregister_device(ptr noundef %3) #6
  tail call void @v4l2_device_unregister_subdev(ptr noundef %1) #6
  %hdl = getelementptr inbounds %struct.s2250, ptr %1, i32 0, i32 1
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #6
  tail call void @kfree(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_dummy_device(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_regs(ptr noundef %client, ptr nocapture noundef readonly %regs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add11, %for.body.for.cond_crit_edge ]
  %arrayidx = getelementptr i8, ptr %regs, i32 %i.0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  %add = or i32 %i.0, 1
  br i1 %cmp, label %land.rhs, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

land.rhs:                                         ; preds = %for.cond
  %arrayidx2 = getelementptr i8, ptr %regs, i32 %add
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp4 = icmp eq i8 %3, 0
  br i1 %cmp4, label %land.rhs.cleanup_crit_edge, label %land.rhs.for.body_crit_edge

land.rhs.for.body_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %land.rhs.for.body_crit_edge, %for.cond.for.body_crit_edge
  %arrayidx8 = getelementptr i8, ptr %regs, i32 %add
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx8, align 1
  %call = tail call fastcc i32 @write_reg(ptr noundef %client, i8 noundef zeroext %1, i8 noundef zeroext %5)
  %cmp9 = icmp slt i32 %call, 0
  %add11 = add i32 %i.0, 2
  br i1 %cmp9, label %do.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.40) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_regs_fp(ptr noundef %client, ptr nocapture noundef readonly %regs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add11, %for.body.for.cond_crit_edge ]
  %arrayidx = getelementptr i16, ptr %regs, i32 %i.0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  %add = or i32 %i.0, 1
  br i1 %cmp, label %land.rhs, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

land.rhs:                                         ; preds = %for.cond
  %arrayidx2 = getelementptr i16, ptr %regs, i32 %add
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp4 = icmp eq i16 %3, 0
  br i1 %cmp4, label %land.rhs.cleanup_crit_edge, label %land.rhs.for.body_crit_edge

land.rhs.for.body_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %land.rhs.for.body_crit_edge, %for.cond.for.body_crit_edge
  %arrayidx8 = getelementptr i16, ptr %regs, i32 %add
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx8, align 2
  %call = tail call fastcc i32 @write_reg_fp(ptr noundef %client, i16 noundef zeroext %1, i16 noundef zeroext %5)
  %cmp9 = icmp slt i32 %call, 0
  %add11 = add i32 %i.0, 2
  br i1 %cmp9, label %do.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.42) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_reg_fp(ptr noundef %client, i16 noundef zeroext %addr, i16 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i93 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %driver_data.i.i93 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i93, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup59_crit_edge, label %if.end

entry.cleanup59_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup59

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.go7007, ptr %3, i32 0, i32 20
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp2 = icmp eq i32 %7, 2
  br i1 %cmp2, label %if.end.cleanup59_crit_edge, label %if.end4

if.end.cleanup59_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup59

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 16) #9
  %cmp6 = icmp eq ptr %call7.i.i, null
  br i1 %cmp6, label %if.end4.cleanup59_crit_edge, label %if.end8

if.end4.cleanup59_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup59

if.end8:                                          ; preds = %if.end4
  %9 = call ptr @memset(ptr %call7.i.i, i32 205, i32 6)
  %hpi_context = getelementptr inbounds %struct.go7007, ptr %3, i32 0, i32 64
  %10 = ptrtoint ptr %hpi_context to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hpi_context, align 4
  %i2c_lock = getelementptr inbounds %struct.go7007_usb, ptr %11, i32 0, i32 1
  %call9 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, 0
  br i1 %cmp10.not, label %if.end12, label %do.end

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.37) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup59

if.end12:                                         ; preds = %if.end8
  %12 = ptrtoint ptr %hpi_context to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hpi_context, align 4
  %usbdev5.i = getelementptr inbounds %struct.go7007_usb, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %usbdev5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usbdev5.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %shl.i1.i = shl i32 %17, 8
  %or8.i = or i32 %shl.i1.i, -2147483520
  %call11.i = tail call i32 @usb_control_msg(ptr noundef %15, i32 noundef %or8.i, i8 noundef zeroext 87, i8 noundef zeroext -64, i16 noundef zeroext %addr, i16 noundef zeroext %val, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 16, i32 noundef 5000) #6
  tail call void @mutex_unlock(ptr noundef %i2c_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp15 = icmp slt i32 %call11.i, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup59

if.end17:                                         ; preds = %if.end12
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp18 = icmp eq i8 %19, 0
  br i1 %cmp18, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end17
  %arrayidx21 = getelementptr i8, ptr %call7.i.i, i32 4
  %20 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx21, align 4
  %conv22 = zext i8 %21 to i32
  %shl = shl nuw nsw i32 %conv22, 8
  %arrayidx23 = getelementptr i8, ptr %call7.i.i, i32 5
  %22 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %23 to i32
  %add = or i32 %shl, %conv24
  %arrayidx25 = getelementptr i8, ptr %call7.i.i, i32 2
  %24 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx25, align 2
  %conv26 = zext i8 %25 to i32
  %shl27 = shl nuw nsw i32 %conv26, 8
  %arrayidx28 = getelementptr i8, ptr %call7.i.i, i32 3
  %26 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %27 to i32
  %add30 = or i32 %shl27, %conv29
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  %conv31 = zext i16 %val to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add30, i32 %conv31)
  %cmp32.not = icmp eq i32 %add30, %conv31
  br i1 %cmp32.not, label %if.end40, label %do.end37

do.end37:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  %dev38 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev38, ptr noundef nonnull @.str.46, i32 noundef %add30, i32 noundef %conv31) #10
  br label %cleanup59

if.end40:                                         ; preds = %if.then20
  %conv41 = zext i16 %addr to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv41)
  %cmp42.not = icmp eq i32 %add, %conv41
  br i1 %cmp42.not, label %if.end52, label %do.end47

do.end47:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %dev48 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev48, ptr noundef nonnull @.str.49, i32 noundef %add, i32 noundef %conv41) #10
  br label %cleanup59

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup59

if.end52:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_const_cmp2(i16 299, i16 %addr)
  %cmp54 = icmp eq i16 %addr, 299
  br i1 %cmp54, label %if.then56, label %if.end52.cleanup59_crit_edge

if.end52.cleanup59_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup59

if.then56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %reg12b_val = getelementptr inbounds %struct.s2250, ptr %5, i32 0, i32 8
  %28 = ptrtoint ptr %reg12b_val to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add30, ptr %reg12b_val, align 4
  br label %cleanup59

cleanup59:                                        ; preds = %if.then56, %if.end52.cleanup59_crit_edge, %if.else, %do.end47, %do.end37, %if.then16, %do.end, %if.end4.cleanup59_crit_edge, %if.end.cleanup59_crit_edge, %entry.cleanup59_crit_edge
  %retval.1 = phi i32 [ -4, %do.end ], [ %call11.i, %if.then16 ], [ -14, %if.else ], [ -19, %entry.cleanup59_crit_edge ], [ -16, %if.end.cleanup59_crit_edge ], [ -12, %if.end4.cleanup59_crit_edge ], [ -14, %do.end47 ], [ -14, %do.end37 ], [ 0, %if.then56 ], [ 0, %if.end52.cleanup59_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_reg(ptr noundef %client, i8 noundef zeroext %reg, i8 noundef zeroext %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %addr, align 2
  %shl = shl i16 %5, 1
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.go7007, ptr %3, i32 0, i32 20
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp2 = icmp eq i32 %7, 2
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 16) #9
  %cmp7 = icmp eq ptr %call7.i.i, null
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %hpi_context = getelementptr inbounds %struct.go7007, ptr %3, i32 0, i32 64
  %9 = ptrtoint ptr %hpi_context to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hpi_context, align 4
  %i2c_lock = getelementptr inbounds %struct.go7007_usb, ptr %10, i32 0, i32 1
  %call11 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12.not = icmp eq i32 %call11, 0
  br i1 %cmp12.not, label %if.end15, label %do.end

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.37) #10
  br label %cleanup.sink.split

if.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %conv17 = zext i8 %reg to i16
  %shl18 = shl nuw i16 %conv17, 8
  %conv19 = zext i8 %value to i16
  %or = or i16 %shl18, %conv19
  %11 = ptrtoint ptr %hpi_context to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hpi_context, align 4
  %usbdev5.i = getelementptr inbounds %struct.go7007_usb, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %usbdev5.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %usbdev5.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %shl.i1.i = shl i32 %16, 8
  %or8.i = or i32 %shl.i1.i, -2147483520
  %call11.i = tail call i32 @usb_control_msg(ptr noundef %14, i32 noundef %or8.i, i8 noundef zeroext 85, i8 noundef zeroext -64, i16 noundef zeroext %shl, i16 noundef zeroext %or, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 16, i32 noundef 5000) #6
  tail call void @mutex_unlock(ptr noundef %i2c_lock) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end15, %do.end
  %retval.0.ph = phi i32 [ %call11.i, %if.end15 ], [ -4, %do.end ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s2250_log_status(ptr noundef %sd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %std = getelementptr inbounds %struct.s2250, ptr %sd, i32 0, i32 2
  %0 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %std, align 8
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i64 %1, label %cond.false4 [
    i64 45056, label %entry.cond.end8_crit_edge
    i64 255, label %cond.end8.fold.split
  ]

entry.cond.end8_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end8

cond.false4:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 16711680, i64 %1)
  %cmp6 = icmp eq i64 %1, 16711680
  %cond = select i1 %cmp6, ptr @.str.23, ptr @.str.24
  br label %cond.end8

cond.end8.fold.split:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end8

cond.end8:                                        ; preds = %cond.end8.fold.split, %cond.false4, %entry.cond.end8_crit_edge
  %cond9 = phi ptr [ @.str.21, %entry.cond.end8_crit_edge ], [ %cond, %cond.false4 ], [ @.str.22, %cond.end8.fold.split ]
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name, ptr noundef nonnull %cond9) #10
  %input = getelementptr inbounds %struct.s2250, ptr %sd, i32 0, i32 3
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp17 = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp21 = icmp eq i32 %3, 1
  %cond22 = select i1 %cmp21, ptr @.str.29, ptr @.str.30
  %cond24 = select i1 %cmp17, ptr @.str.28, ptr %cond22
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name, ptr noundef nonnull %cond24) #10
  %audio_input = getelementptr inbounds %struct.s2250, ptr %sd, i32 0, i32 9
  %4 = ptrtoint ptr %audio_input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %audio_input, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %5, label %cond.false38 [
    i32 0, label %cond.end8.cond.end44_crit_edge
    i32 1, label %cond.end44.fold.split
  ]

cond.end8.cond.end44_crit_edge:                   ; preds = %cond.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end44

cond.false38:                                     ; preds = %cond.end8
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp40 = icmp eq i32 %5, 2
  %cond41 = select i1 %cmp40, ptr @.str.36, ptr @.str.30
  br label %cond.end44

cond.end44.fold.split:                            ; preds = %cond.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end44

cond.end44:                                       ; preds = %cond.end44.fold.split, %cond.false38, %cond.end8.cond.end44_crit_edge
  %cond45 = phi ptr [ @.str.34, %cond.end8.cond.end44_crit_edge ], [ %cond41, %cond.false38 ], [ @.str.35, %cond.end44.fold.split ]
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %name, ptr noundef nonnull %cond45) #10
  %call47 = tail call i32 @v4l2_ctrl_subdev_log_status(ptr noundef %sd) #6
  ret i32 %call47
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subdev_log_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s2250_s_audio_routing(ptr nocapture noundef %sd, i32 noundef %input, i32 noundef %output, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %input)
  %0 = icmp ult i32 %input, 3
  br i1 %0, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.cast = trunc i32 %input to i24
  %switch.shiftamt = shl i24 %switch.cast, 3
  %switch.downshift = lshr i24 328706, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %audio6 = getelementptr inbounds %struct.s2250, ptr %sd, i32 0, i32 10
  %1 = ptrtoint ptr %audio6 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %audio6, align 4
  %call7 = tail call fastcc i32 @write_reg(ptr noundef %2, i8 noundef zeroext 8, i8 noundef zeroext %switch.masked)
  %audio_input = getelementptr inbounds %struct.s2250, ptr %sd, i32 0, i32 9
  %3 = ptrtoint ptr %audio_input to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %input, ptr %audio_input, align 8
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %switch.lookup ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s2250_s_video_routing(ptr nocapture noundef %sd, i32 noundef %input, i32 noundef %output, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %std = getelementptr inbounds %struct.s2250, ptr %sd, i32 0, i32 2
  %2 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %std, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 45056, i64 %3)
  %cmp = icmp eq i64 %3, 45056
  %4 = zext i32 %input to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %input, label %entry.cleanup_crit_edge [
    i32 0, label %entry.if.end15_crit_edge
    i32 1, label %if.then8
  ]

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.end15:                                         ; preds = %if.then8, %entry.if.end15_crit_edge
  %.sink30 = phi i16 [ 64, %if.then8 ], [ 32, %entry.if.end15_crit_edge ]
  %.sink = phi i16 [ 1638, %if.then8 ], [ 1634, %entry.if.end15_crit_edge ]
  %5 = zext i1 %cmp to i16
  %conv10 = or i16 %.sink30, %5
  %call11 = tail call fastcc i32 @write_reg_fp(ptr noundef %1, i16 noundef zeroext 32, i16 noundef zeroext %conv10)
  %call12 = tail call fastcc i32 @write_reg_fp(ptr noundef %1, i16 noundef zeroext 33, i16 noundef zeroext %.sink)
  %call13 = tail call fastcc i32 @write_reg_fp(ptr noundef %1, i16 noundef zeroext 320, i16 noundef zeroext 96)
  %input16 = getelementptr inbounds %struct.s2250, ptr %sd, i32 0, i32 3
  %6 = ptrtoint ptr %input16 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %input, ptr %input16, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s2250_s_std(ptr nocapture noundef %sd, i64 noundef %norm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %input = getelementptr inbounds %struct.s2250, ptr %sd, i32 0, i32 3
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  %conv = select i1 %cmp, i16 64, i16 32
  %and = and i64 %norm, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.for.cond.i38_crit_edge, label %entry.for.cond.i_crit_edge

entry.for.cond.i_crit_edge:                       ; preds = %entry
  br label %for.cond.i

entry.for.cond.i38_crit_edge:                     ; preds = %entry
  br label %for.cond.i38

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry.for.cond.i_crit_edge
  %i.0.i = phi i32 [ %add11.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %entry.for.cond.i_crit_edge ]
  %arrayidx.i = getelementptr i16, ptr @vid_regs_fp, i32 %i.0.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp.i = icmp eq i16 %5, 0
  %add.i = or i32 %i.0.i, 1
  br i1 %cmp.i, label %land.rhs.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

land.rhs.i:                                       ; preds = %for.cond.i
  %arrayidx2.i = getelementptr i16, ptr @vid_regs_fp, i32 %add.i
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp4.i = icmp eq i16 %7, 0
  br i1 %cmp4.i, label %land.rhs.i.for.cond.i21.preheader_crit_edge, label %land.rhs.i.for.body.i_crit_edge

land.rhs.i.for.body.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

land.rhs.i.for.cond.i21.preheader_crit_edge:      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i21.preheader

for.body.i:                                       ; preds = %land.rhs.i.for.body.i_crit_edge, %for.cond.i.for.body.i_crit_edge
  %arrayidx8.i = getelementptr i16, ptr @vid_regs_fp, i32 %add.i
  %8 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx8.i, align 2
  %call.i = tail call fastcc i32 @write_reg_fp(ptr noundef %1, i16 noundef zeroext %5, i16 noundef zeroext %9) #6
  %cmp9.i = icmp slt i32 %call.i, 0
  %add11.i = add i32 %i.0.i, 2
  br i1 %cmp9.i, label %do.end.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.42) #10
  br label %for.cond.i21.preheader

for.cond.i21.preheader:                           ; preds = %do.end.i, %land.rhs.i.for.cond.i21.preheader_crit_edge
  br label %for.cond.i21

for.cond.i21:                                     ; preds = %for.body.i29.for.cond.i21_crit_edge, %for.cond.i21.preheader
  %i.0.i17 = phi i32 [ %add11.i28, %for.body.i29.for.cond.i21_crit_edge ], [ 0, %for.cond.i21.preheader ]
  %arrayidx.i18 = getelementptr i16, ptr @vid_regs_fp_pal, i32 %i.0.i17
  %10 = ptrtoint ptr %arrayidx.i18 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx.i18, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp.i19 = icmp eq i16 %11, 0
  %add.i20 = or i32 %i.0.i17, 1
  br i1 %cmp.i19, label %land.rhs.i24, label %for.cond.i21.for.body.i29_crit_edge

for.cond.i21.for.body.i29_crit_edge:              ; preds = %for.cond.i21
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i29

land.rhs.i24:                                     ; preds = %for.cond.i21
  %arrayidx2.i22 = getelementptr i16, ptr @vid_regs_fp_pal, i32 %add.i20
  %12 = ptrtoint ptr %arrayidx2.i22 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx2.i22, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp4.i23 = icmp eq i16 %13, 0
  br i1 %cmp4.i23, label %land.rhs.i24.if.end_crit_edge, label %land.rhs.i24.for.body.i29_crit_edge

land.rhs.i24.for.body.i29_crit_edge:              ; preds = %land.rhs.i24
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i29

land.rhs.i24.if.end_crit_edge:                    ; preds = %land.rhs.i24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body.i29:                                     ; preds = %land.rhs.i24.for.body.i29_crit_edge, %for.cond.i21.for.body.i29_crit_edge
  %arrayidx8.i25 = getelementptr i16, ptr @vid_regs_fp_pal, i32 %add.i20
  %14 = ptrtoint ptr %arrayidx8.i25 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx8.i25, align 2
  %call.i26 = tail call fastcc i32 @write_reg_fp(ptr noundef %1, i16 noundef zeroext %11, i16 noundef zeroext %15) #6
  %cmp9.i27 = icmp slt i32 %call.i26, 0
  %add11.i28 = add i32 %i.0.i17, 2
  br i1 %cmp9.i27, label %do.end.i31, label %for.body.i29.for.cond.i21_crit_edge

for.body.i29.for.cond.i21_crit_edge:              ; preds = %for.body.i29
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i21

do.end.i31:                                       ; preds = %for.body.i29
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i30 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i30, ptr noundef nonnull @.str.42) #10
  br label %if.end

for.cond.i38:                                     ; preds = %for.body.i46.for.cond.i38_crit_edge, %entry.for.cond.i38_crit_edge
  %i.0.i34 = phi i32 [ %add11.i45, %for.body.i46.for.cond.i38_crit_edge ], [ 0, %entry.for.cond.i38_crit_edge ]
  %arrayidx.i35 = getelementptr i16, ptr @vid_regs_fp, i32 %i.0.i34
  %16 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.i35, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp.i36 = icmp eq i16 %17, 0
  %add.i37 = or i32 %i.0.i34, 1
  br i1 %cmp.i36, label %land.rhs.i41, label %for.cond.i38.for.body.i46_crit_edge

for.cond.i38.for.body.i46_crit_edge:              ; preds = %for.cond.i38
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i46

land.rhs.i41:                                     ; preds = %for.cond.i38
  %arrayidx2.i39 = getelementptr i16, ptr @vid_regs_fp, i32 %add.i37
  %18 = ptrtoint ptr %arrayidx2.i39 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx2.i39, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp4.i40 = icmp eq i16 %19, 0
  br i1 %cmp4.i40, label %land.rhs.i41.write_regs_fp.exit50_crit_edge, label %land.rhs.i41.for.body.i46_crit_edge

land.rhs.i41.for.body.i46_crit_edge:              ; preds = %land.rhs.i41
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i46

land.rhs.i41.write_regs_fp.exit50_crit_edge:      ; preds = %land.rhs.i41
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_regs_fp.exit50

for.body.i46:                                     ; preds = %land.rhs.i41.for.body.i46_crit_edge, %for.cond.i38.for.body.i46_crit_edge
  %arrayidx8.i42 = getelementptr i16, ptr @vid_regs_fp, i32 %add.i37
  %20 = ptrtoint ptr %arrayidx8.i42 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx8.i42, align 2
  %call.i43 = tail call fastcc i32 @write_reg_fp(ptr noundef %1, i16 noundef zeroext %17, i16 noundef zeroext %21) #6
  %cmp9.i44 = icmp slt i32 %call.i43, 0
  %add11.i45 = add i32 %i.0.i34, 2
  br i1 %cmp9.i44, label %do.end.i48, label %for.body.i46.for.cond.i38_crit_edge

for.body.i46.for.cond.i38_crit_edge:              ; preds = %for.body.i46
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i38

do.end.i48:                                       ; preds = %for.body.i46
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i47 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i47, ptr noundef nonnull @.str.42) #10
  br label %write_regs_fp.exit50

write_regs_fp.exit50:                             ; preds = %do.end.i48, %land.rhs.i41.write_regs_fp.exit50_crit_edge
  %22 = or i16 %conv, 1
  br label %if.end

if.end:                                           ; preds = %write_regs_fp.exit50, %do.end.i31, %land.rhs.i24.if.end_crit_edge
  %.sink = phi i16 [ %22, %write_regs_fp.exit50 ], [ %conv, %do.end.i31 ], [ %conv, %land.rhs.i24.if.end_crit_edge ]
  %call8 = tail call fastcc i32 @write_reg_fp(ptr noundef %1, i16 noundef zeroext 32, i16 noundef zeroext %.sink)
  %std = getelementptr inbounds %struct.s2250, ptr %sd, i32 0, i32 2
  %23 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %norm, ptr %std, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s2250_set_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef readonly %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %7)
  %cmp5 = icmp ult i32 %7, 640
  %reg12b_val = getelementptr inbounds %struct.s2250, ptr %sd, i32 0, i32 8
  %8 = ptrtoint ptr %reg12b_val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg12b_val, align 4
  %10 = trunc i32 %9 to i16
  %conv10 = and i16 %10, -1025
  %masksel = select i1 %cmp5, i16 1024, i16 0
  %conv.sink = or i16 %conv10, %masksel
  %call7 = tail call fastcc i32 @write_reg_fp(ptr noundef %1, i16 noundef zeroext 299, i16 noundef zeroext %conv.sink)
  %call8 = tail call fastcc i32 @write_reg_fp(ptr noundef %1, i16 noundef zeroext 320, i16 noundef zeroext 96)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s2250_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %oldvalue = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %dev_priv.i = getelementptr i8, ptr %1, i32 -44
  %2 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %oldvalue) #6
  %4 = ptrtoint ptr %oldvalue to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %oldvalue, align 2, !annotation !125
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 8
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %6, label %entry.cleanup_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963777, label %sw.bb12
    i32 9963778, label %sw.bb28
    i32 9963779, label %sw.bb32
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @read_reg_fp(ptr noundef %3, i16 noundef zeroext 295, ptr noundef nonnull %oldvalue)
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %10 = ptrtoint ptr %oldvalue to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %oldvalue, align 2
  %12 = and i16 %11, -256
  %13 = trunc i32 %9 to i16
  %conv2 = or i16 %12, %13
  %call3 = tail call fastcc i32 @write_reg_fp(ptr noundef %3, i16 noundef zeroext 295, i16 noundef zeroext %conv2)
  call fastcc void @read_reg_fp(ptr noundef %3, i16 noundef zeroext 305, ptr noundef nonnull %oldvalue)
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val, align 4
  %16 = ptrtoint ptr %oldvalue to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %oldvalue, align 2
  %18 = and i16 %17, -256
  %19 = trunc i32 %15 to i16
  %conv9 = or i16 %18, %19
  %call10 = tail call fastcc i32 @write_reg_fp(ptr noundef %3, i16 noundef zeroext 305, i16 noundef zeroext %conv9)
  %call11 = tail call fastcc i32 @write_reg_fp(ptr noundef %3, i16 noundef zeroext 320, i16 noundef zeroext 96)
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @read_reg_fp(ptr noundef %3, i16 noundef zeroext 296, ptr noundef nonnull %oldvalue)
  %val14 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %20 = ptrtoint ptr %val14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val14, align 4
  %22 = ptrtoint ptr %oldvalue to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %oldvalue, align 2
  %24 = and i16 %23, -64
  %25 = trunc i32 %21 to i16
  %conv18 = or i16 %24, %25
  %call19 = tail call fastcc i32 @write_reg_fp(ptr noundef %3, i16 noundef zeroext 296, i16 noundef zeroext %conv18)
  call fastcc void @read_reg_fp(ptr noundef %3, i16 noundef zeroext 306, ptr noundef nonnull %oldvalue)
  %26 = ptrtoint ptr %val14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val14, align 4
  %28 = ptrtoint ptr %oldvalue to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %oldvalue, align 2
  %30 = and i16 %29, -64
  %31 = trunc i32 %27 to i16
  %conv25 = or i16 %30, %31
  %call26 = tail call fastcc i32 @write_reg_fp(ptr noundef %3, i16 noundef zeroext 306, i16 noundef zeroext %conv25)
  %call27 = tail call fastcc i32 @write_reg_fp(ptr noundef %3, i16 noundef zeroext 320, i16 noundef zeroext 96)
  br label %cleanup

sw.bb28:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val29 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %32 = ptrtoint ptr %val29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val29, align 4
  %conv30 = trunc i32 %33 to i16
  %call31 = tail call fastcc i32 @write_reg_fp(ptr noundef %3, i16 noundef zeroext 48, i16 noundef zeroext %conv30)
  br label %cleanup

sw.bb32:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val33 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %34 = ptrtoint ptr %val33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val33, align 4
  %conv34 = trunc i32 %35 to i16
  %call35 = tail call fastcc i32 @write_reg_fp(ptr noundef %3, i16 noundef zeroext 220, i16 noundef zeroext %conv34)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb32, %sw.bb28, %sw.bb12, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb32 ], [ 0, %sw.bb28 ], [ 0, %sw.bb12 ], [ 0, %sw.bb ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %oldvalue) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @read_reg_fp(ptr noundef %client, i16 noundef zeroext %addr, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.go7007, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp1 = icmp eq i32 %5, 2
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 16) #9
  %cmp5 = icmp eq ptr %call7.i.i, null
  br i1 %cmp5, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %7 = call ptr @memset(ptr %call7.i.i, i32 205, i32 6)
  %hpi_context = getelementptr inbounds %struct.go7007, ptr %3, i32 0, i32 64
  %8 = ptrtoint ptr %hpi_context to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hpi_context, align 4
  %i2c_lock = getelementptr inbounds %struct.go7007_usb, ptr %9, i32 0, i32 1
  %call8 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9.not = icmp eq i32 %call8, 0
  br i1 %cmp9.not, label %if.end11, label %do.end

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.37) #10
  br label %cleanup.sink.split

if.end11:                                         ; preds = %if.end7
  %10 = ptrtoint ptr %hpi_context to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hpi_context, align 4
  %usbdev5.i = getelementptr inbounds %struct.go7007_usb, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %usbdev5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %usbdev5.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i1.i = shl i32 %15, 8
  %or8.i = or i32 %shl.i1.i, -2147483520
  %call11.i = tail call i32 @usb_control_msg(ptr noundef %13, i32 noundef %or8.i, i8 noundef zeroext 88, i8 noundef zeroext -64, i16 noundef zeroext %addr, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i16 noundef zeroext 16, i32 noundef 5000) #6
  tail call void @mutex_unlock(ptr noundef %i2c_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp14 = icmp slt i32 %call11.i, 0
  br i1 %cmp14, label %if.end11.cleanup.sink.split_crit_edge, label %if.end16

if.end11.cleanup.sink.split_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end16:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %call7.i.i, align 8
  %conv = zext i8 %17 to i16
  %shl = shl nuw i16 %conv, 8
  %arrayidx17 = getelementptr i8, ptr %call7.i.i, i32 1
  %18 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %19 to i16
  %or = or i16 %shl, %conv18
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %or, ptr %val, align 2
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end16, %if.end11.cleanup.sink.split_crit_edge, %do.end
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !19, !21, !22, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !37, !38, !39, !41, !43, !45, !46, !47, !48, !49, !50, !51, !52, !54, !55, !56, !57, !58, !59, !61, !62, !63, !64, !65, !66, !68, !70, !72, !74, !76, !78, !79, !80, !81, !82, !84, !85, !86, !87, !89, !91, !93, !94, !95, !96, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !{ptr @__UNIQUE_ID_description303, !1, !"__UNIQUE_ID_description303", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/go7007/s2250-board.c", i32 16, i32 1}
!2 = !{ptr @__UNIQUE_ID_file304, !3, !"__UNIQUE_ID_file304", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/go7007/s2250-board.c", i32 17, i32 1}
!4 = !{ptr @__UNIQUE_ID_license305, !3, !"__UNIQUE_ID_license305", i1 false, i1 false}
!5 = !{ptr @__initcall__kmod_s2250__306_632_s2250_driver_init6, !6, !"__initcall__kmod_s2250__306_632_s2250_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/go7007/s2250-board.c", i32 632, i32 1}
!7 = !{ptr @__exitcall_s2250_driver_exit, !6, !"__exitcall_s2250_driver_exit", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/go7007/s2250-board.c", i32 625, i32 11}
!10 = !{ptr @s2250_driver, !11, !"s2250_driver", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/go7007/s2250-board.c", i32 623, i32 26}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/go7007/s2250-board.c", i32 521, i32 2}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @s2250_probe._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @s2250_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @s2250_probe._key, !20, !"_key", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/go7007/s2250-board.c", i32 524, i32 2}
!21 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/go7007/s2250-board.c", i32 551, i32 3}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @s2250_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @s2250_probe._entry_ptr.10, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/go7007/s2250-board.c", i32 556, i32 3}
!30 = !{ptr @s2250_probe._entry.11, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @s2250_probe._entry_ptr.13, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @s2250_probe._entry.14, !33, !"_entry", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/go7007/s2250-board.c", i32 560, i32 3}
!34 = !{ptr @s2250_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/go7007/s2250-board.c", i32 596, i32 2}
!37 = !{ptr @s2250_probe._entry.16, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @s2250_probe._entry_ptr.18, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @s2250_ops, !40, !"s2250_ops", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/go7007/s2250-board.c", i32 488, i32 37}
!41 = !{ptr @s2250_core_ops, !42, !"s2250_core_ops", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/go7007/s2250-board.c", i32 471, i32 42}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/go7007/s2250-board.c", i32 451, i32 2}
!45 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @s2250_log_status._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @s2250_log_status._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/usb/go7007/s2250-board.c", i32 455, i32 2}
!54 = !{ptr @s2250_log_status._entry.25, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @s2250_log_status._entry_ptr.27, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/usb/go7007/s2250-board.c", i32 458, i32 2}
!61 = !{ptr @s2250_log_status._entry.31, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @s2250_log_status._entry_ptr.33, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.34, !60, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.35, !60, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.36, !60, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @s2250_audio_ops, !67, !"s2250_audio_ops", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/go7007/s2250-board.c", i32 475, i32 43}
!68 = !{ptr @s2250_video_ops, !69, !"s2250_video_ops", i1 false, i1 false}
!69 = !{!"../drivers/media/usb/go7007/s2250-board.c", i32 479, i32 43}
!70 = !{ptr @vid_regs_fp_pal, !71, !"vid_regs_fp_pal", i1 false, i1 false}
!71 = !{!"../drivers/media/usb/go7007/s2250-board.c", i32 100, i32 12}
!72 = !{ptr @s2250_pad_ops, !73, !"s2250_pad_ops", i1 false, i1 false}
!73 = !{!"../drivers/media/usb/go7007/s2250-board.c", i32 484, i32 41}
!74 = !{ptr @s2250_ctrl_ops, !75, !"s2250_ctrl_ops", i1 false, i1 false}
!75 = !{!"../drivers/media/usb/go7007/s2250-board.c", i32 467, i32 35}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/usb/go7007/s2250-board.c", i32 272, i32 3}
!78 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @read_reg_fp._entry, !77, !"_entry", i1 false, i1 false}
!81 = !{ptr @read_reg_fp._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/usb/go7007/s2250-board.c", i32 296, i32 4}
!84 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @write_regs._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @write_regs._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @aud_regs, !88, !"aud_regs", i1 false, i1 false}
!88 = !{!"../drivers/media/usb/go7007/s2250-board.c", i32 49, i32 22}
!89 = !{ptr @vid_regs, !90, !"vid_regs", i1 false, i1 false}
!90 = !{!"../drivers/media/usb/go7007/s2250-board.c", i32 67, i32 22}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/usb/go7007/s2250-board.c", i32 309, i32 4}
!93 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @write_regs_fp._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @write_regs_fp._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @vid_regs_fp, !97, !"vid_regs_fp", i1 false, i1 false}
!97 = !{!"../drivers/media/usb/go7007/s2250-board.c", i32 74, i32 12}
!98 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/usb/go7007/s2250-board.c", i32 210, i32 3}
!100 = !{ptr @write_reg_fp._entry, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @write_reg_fp._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/usb/go7007/s2250-board.c", i32 228, i32 4}
!104 = !{ptr @write_reg_fp._entry.45, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @write_reg_fp._entry_ptr.47, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/usb/go7007/s2250-board.c", i32 233, i32 4}
!108 = !{ptr @write_reg_fp._entry.48, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @write_reg_fp._entry_ptr.50, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/usb/go7007/s2250-board.c", i32 171, i32 3}
!112 = !{ptr @write_reg._entry, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @write_reg._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @s2250_id, !115, !"s2250_id", i1 false, i1 false}
!115 = !{!"../drivers/media/usb/go7007/s2250-board.c", i32 617, i32 35}
!116 = !{i32 1, !"wchar_size", i32 2}
!117 = !{i32 1, !"min_enum_size", i32 4}
!118 = !{i32 8, !"branch-target-enforcement", i32 0}
!119 = !{i32 8, !"sign-return-address", i32 0}
!120 = !{i32 8, !"sign-return-address-all", i32 0}
!121 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!122 = !{i32 7, !"uwtable", i32 1}
!123 = !{i32 7, !"frame-pointer", i32 2}
!124 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!125 = !{!"auto-init"}
