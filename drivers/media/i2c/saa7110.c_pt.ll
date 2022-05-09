; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/saa7110.c_pt.bc'
source_filename = "../drivers/media/i2c/saa7110.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.saa7110 = type { %struct.v4l2_subdev, %struct.v4l2_ctrl_handler, [53 x i8], i64, i32, i32, %struct.wait_queue_head }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_description292 = internal constant [57 x i8] c"saa7110.description=Philips SAA7110 video decoder driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [33 x i8] c"saa7110.author=Pauline Middelink\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [39 x i8] c"saa7110.file=drivers/media/i2c/saa7110\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [20 x i8] c"saa7110.license=GPL\00", section ".modinfo", align 1
@__param_str_debug = internal constant [14 x i8] c"saa7110.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype296 = internal constant [27 x i8] c"saa7110.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug297 = internal constant [37 x i8] c"saa7110.parm=debug:Debug level (0-1)\00", section ".modinfo", align 1
@__initcall__kmod_saa7110__298_458_saa7110_driver_init6 = internal global ptr @saa7110_driver_init, section ".initcall6.init", align 4
@saa7110_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @saa7110_probe, ptr @saa7110_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @saa7110_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_saa7110_driver_exit = internal global ptr @saa7110_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"saa7110\00", [24 x i8] zeroinitializer }, align 32
@saa7110_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"saa7110\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@saa7110_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s %d-%04x: chip found @ 0x%x (%s)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"saa7110_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/media/i2c/saa7110.c\00", [36 x i8] zeroinitializer }, align 32
@saa7110_probe._entry_ptr = internal global ptr @saa7110_probe._entry, section ".printk_index", align 4
@saa7110_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @saa7110_video_ops, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@saa7110_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"saa7110:384:(&decoder->hdl)->_lock\00", [61 x i8] zeroinitializer }, align 32
@saa7110_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @saa7110_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@saa7110_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&decoder->wq\00", [19 x i8] zeroinitializer }, align 32
@initseq = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\00L<\0D\EF\BD\F2\03\00\F8\F8``\00\86\18\90\00Y@FB\1A\FF\DA\F2\8B\00\00\00\00\00\00\D9\16@A\80A\80O\FE\01\CF\0F\03\01\03\0CDq\02\8C\02", [42 x i8] zeroinitializer }, align 32
@saa7110_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: init status %d\0A\00", [42 x i8] zeroinitializer }, align 32
@saa7110_probe._entry_ptr.8 = internal global ptr @saa7110_probe._entry.6, section ".printk_index", align 4
@saa7110_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: version %x, status=0x%02x\0A\00", [63 x i8] zeroinitializer }, align 32
@saa7110_probe._entry_ptr.11 = internal global ptr @saa7110_probe._entry.9, section ".printk_index", align 4
@saa7110_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr @saa7110_s_routing, ptr null, ptr null, ptr @saa7110_s_std, ptr null, ptr null, ptr @saa7110_querystd, ptr null, ptr null, ptr @saa7110_g_input_status, ptr @saa7110_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@saa7110_s_routing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: input=%d not available\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"saa7110_s_routing\00", [46 x i8] zeroinitializer }, align 32
@saa7110_s_routing._entry_ptr = internal global ptr @saa7110_s_routing._entry, section ".printk_index", align 4
@saa7110_s_routing._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.3, i32 301, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: switched to input=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@saa7110_s_routing._entry_ptr.16 = internal global ptr @saa7110_s_routing._entry.14, section ".printk_index", align 4
@saa7110_selmux.modes = internal constant { [9 x [8 x i8]], [56 x i8] } { [9 x [8 x i8]] [[8 x i8] c"\03\D9\17@\03Du\16", [8 x i8] c"\03\D8\17@\03Du\16", [8 x i8] c"\03\BA\07\91\03`\B5\05", [8 x i8] c"\03\B8\07\91\03`\B5\05", [8 x i8] c"\03|\07\D2\83`\B5\03", [8 x i8] c"\03x\07\D2\83`\B5\03", [8 x i8] c"\83Y\17B\A3Du\12", [8 x i8] c"\83\9A\17\B1\13`\B5\14", [8 x i8] c"\83<'\C1#Du!"], [56 x i8] zeroinitializer }, align 32
@saa7110_s_std._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: switched to NTSC\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"saa7110_s_std\00", [18 x i8] zeroinitializer }, align 32
@saa7110_s_std._entry_ptr = internal global ptr @saa7110_s_std._entry, section ".printk_index", align 4
@saa7110_s_std._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.3, i32 276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017%s: switched to PAL\0A\00", [41 x i8] zeroinitializer }, align 32
@saa7110_s_std._entry_ptr.21 = internal global ptr @saa7110_s_std._entry.19, section ".printk_index", align 4
@saa7110_s_std._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.3, i32 282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: switched to SECAM\0A\00", [39 x i8] zeroinitializer }, align 32
@saa7110_s_std._entry_ptr.24 = internal global ptr @saa7110_s_std._entry.22, section ".printk_index", align 4
@determine_norm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: status=0x%02x (no signal)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"determine_norm\00", [17 x i8] zeroinitializer }, align 32
@determine_norm._entry_ptr = internal global ptr @determine_norm._entry, section ".printk_index", align 4
@determine_norm._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.3, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: status=0x%02x (NTSC/no color)\0A\00", [59 x i8] zeroinitializer }, align 32
@determine_norm._entry_ptr.29 = internal global ptr @determine_norm._entry.27, section ".printk_index", align 4
@determine_norm._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.3, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: status=0x%02x (PAL/no color)\0A\00", [60 x i8] zeroinitializer }, align 32
@determine_norm._entry_ptr.32 = internal global ptr @determine_norm._entry.30, section ".printk_index", align 4
@determine_norm._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.26, ptr @.str.3, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: status=0x%02x (NTSC)\0A\00", [36 x i8] zeroinitializer }, align 32
@determine_norm._entry_ptr.35 = internal global ptr @determine_norm._entry.33, section ".printk_index", align 4
@determine_norm._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.26, ptr @.str.3, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: status=0x%02x (SECAM)\0A\00", [35 x i8] zeroinitializer }, align 32
@determine_norm._entry_ptr.38 = internal global ptr @determine_norm._entry.36, section ".printk_index", align 4
@determine_norm._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.26, ptr @.str.3, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: status=0x%02x (PAL)\0A\00", [37 x i8] zeroinitializer }, align 32
@determine_norm._entry_ptr.41 = internal global ptr @determine_norm._entry.39, section ".printk_index", align 4
@saa7110_g_input_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.3, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: status=0x%02x norm=%llx\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"saa7110_g_input_status\00", [41 x i8] zeroinitializer }, align 32
@saa7110_g_input_status._entry_ptr = internal global ptr @saa7110_g_input_status._entry, section ".printk_index", align 4
@saa7110_s_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\017%s: YUV %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"saa7110_s_stream\00", [47 x i8] zeroinitializer }, align 32
@saa7110_s_stream._entry_ptr = internal global ptr @saa7110_s_stream._entry, section ".printk_index", align 4
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963779]
@___asan_gen_.48 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 32, i32 12 }
@___asan_gen_.51 = private unnamed_addr constant [15 x i8] c"saa7110_driver\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 449, i32 26 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 451, i32 11 }
@___asan_gen_.57 = private unnamed_addr constant [11 x i8] c"saa7110_id\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 443, i32 35 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 373, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [12 x i8] c"saa7110_ops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 355, i32 37 }
@___asan_gen_.75 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 384, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"saa7110_ctrl_ops\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 343, i32 35 }
@___asan_gen_.84 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 402, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [8 x i8] c"initseq\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 167, i32 28 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 406, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 416, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [18 x i8] c"saa7110_video_ops\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 347, i32 43 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 296, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 301, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [6 x i8] c"modes\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 122, i32 29 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 270, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 276, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 282, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 191, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 197, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 201, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 207, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 227, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 231, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 241, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.208 = private constant [31 x i8] c"../drivers/media/i2c/saa7110.c\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 313, i32 3 }
@llvm.compiler.used = appending global [80 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_debug297, ptr @__UNIQUE_ID_debugtype296, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_saa7110_driver_exit, ptr @__initcall__kmod_saa7110__298_458_saa7110_driver_init6, ptr @__param_debug, ptr @determine_norm._entry, ptr @determine_norm._entry.27, ptr @determine_norm._entry.30, ptr @determine_norm._entry.33, ptr @determine_norm._entry.36, ptr @determine_norm._entry.39, ptr @determine_norm._entry_ptr, ptr @determine_norm._entry_ptr.29, ptr @determine_norm._entry_ptr.32, ptr @determine_norm._entry_ptr.35, ptr @determine_norm._entry_ptr.38, ptr @determine_norm._entry_ptr.41, ptr @saa7110_driver_exit, ptr @saa7110_g_input_status._entry, ptr @saa7110_g_input_status._entry_ptr, ptr @saa7110_probe._entry, ptr @saa7110_probe._entry.6, ptr @saa7110_probe._entry.9, ptr @saa7110_probe._entry_ptr, ptr @saa7110_probe._entry_ptr.11, ptr @saa7110_probe._entry_ptr.8, ptr @saa7110_s_routing._entry, ptr @saa7110_s_routing._entry.14, ptr @saa7110_s_routing._entry_ptr, ptr @saa7110_s_routing._entry_ptr.16, ptr @saa7110_s_std._entry, ptr @saa7110_s_std._entry.19, ptr @saa7110_s_std._entry.22, ptr @saa7110_s_std._entry_ptr, ptr @saa7110_s_std._entry_ptr.21, ptr @saa7110_s_std._entry_ptr.24, ptr @saa7110_s_stream._entry, ptr @saa7110_s_stream._entry_ptr, ptr @debug, ptr @saa7110_driver, ptr @.str, ptr @saa7110_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @saa7110_ops, ptr @saa7110_probe._key, ptr @.str.4, ptr @saa7110_ctrl_ops, ptr @saa7110_probe.__key, ptr @.str.5, ptr @initseq, ptr @.str.7, ptr @.str.10, ptr @saa7110_video_ops, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @saa7110_selmux.modes, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7110_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7110_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7110_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7110_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7110_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7110_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7110_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @initseq to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7110_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7110_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7110_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7110_s_routing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7110_s_routing._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7110_selmux.modes to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7110_s_std._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7110_s_std._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7110_s_std._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @determine_norm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @determine_norm._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @determine_norm._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @determine_norm._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @determine_norm._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @determine_norm._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7110_g_input_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7110_s_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7110_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @saa7110_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @saa7110_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @saa7110_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7110_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #6
  %and.i = and i32 %call.i.i, 1179648
  call void @__sanitizer_cov_trace_const_cmp4(i32 1179648, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1179648
  br i1 %cmp.i.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %driver = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %6 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %addr, align 2
  %conv = zext i16 %15 to i32
  %shl = shl nuw nsw i32 %conv, 1
  %name6 = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 12
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %9, i32 noundef %13, i32 noundef %conv, i32 noundef %shl, ptr noundef %name6) #9
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 512, i32 noundef 3520) #6
  %tobool10.not = icmp eq ptr %call.i, null
  br i1 %tobool10.not, label %do.end.cleanup_crit_edge, label %if.end12

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %do.end
  tail call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i, ptr noundef %client, ptr noundef nonnull @saa7110_ops) #6
  %norm = getelementptr inbounds %struct.saa7110, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %norm to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 255, ptr %norm, align 8
  %input = getelementptr inbounds %struct.saa7110, ptr %call.i, i32 0, i32 4
  %17 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %input, align 8
  %enable = getelementptr inbounds %struct.saa7110, ptr %call.i, i32 0, i32 5
  %18 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %enable, align 4
  %hdl = getelementptr inbounds %struct.saa7110, ptr %call.i, i32 0, i32 1
  %call15 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl, i32 noundef 2, ptr noundef nonnull @saa7110_probe._key, ptr noundef nonnull @.str.4) #6
  %call17 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @saa7110_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #6
  %call19 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @saa7110_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 127, i64 noundef 1, i64 noundef 64) #6
  %call21 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @saa7110_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 127, i64 noundef 1, i64 noundef 64) #6
  %call23 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @saa7110_ctrl_ops, i32 noundef 9963779, i64 noundef -128, i64 noundef 127, i64 noundef 1, i64 noundef 0) #6
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 8
  %19 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %hdl, ptr %ctrl_handler, align 4
  %error = getelementptr inbounds %struct.saa7110, ptr %call.i, i32 0, i32 1, i32 9
  %20 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool26.not = icmp eq i32 %21, 0
  br i1 %tobool26.not, label %if.end31, label %if.then27

if.then27:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #6
  br label %cleanup

if.end31:                                         ; preds = %if.end12
  %call33 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl) #6
  %wq = getelementptr inbounds %struct.saa7110, ptr %call.i, i32 0, i32 6
  tail call void @__init_waitqueue_head(ptr noundef %wq, ptr noundef nonnull @.str.5, ptr noundef nonnull @saa7110_probe.__key) #6
  %call37 = tail call fastcc i32 @saa7110_write_block(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp = icmp slt i32 %call37, 0
  br i1 %cmp, label %do.body40, label %if.else

do.body40:                                        ; preds = %if.end31
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp41 = icmp sgt i32 %22, 0
  br i1 %cmp41, label %do.end46, label %do.body40.cleanup_crit_edge

do.body40.cleanup_crit_edge:                      ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end46:                                         ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #8
  %name48 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name48, i32 noundef %call37) #9
  br label %cleanup

if.else:                                          ; preds = %if.end31
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 11
  %23 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_priv.i.i, align 4
  %arrayidx.i = getelementptr %struct.saa7110, ptr %call.i, i32 0, i32 2, i32 33
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 16, ptr %arrayidx.i, align 1
  %call3.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %24, i8 noundef zeroext 33, i8 noundef zeroext 16) #6
  %26 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_priv.i.i, align 4
  %arrayidx.i117 = getelementptr %struct.saa7110, ptr %call.i, i32 0, i32 2, i32 14
  %28 = ptrtoint ptr %arrayidx.i117 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 24, ptr %arrayidx.i117, align 1
  %call3.i118 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %27, i8 noundef zeroext 14, i8 noundef zeroext 24) #6
  %29 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_priv.i.i, align 4
  %arrayidx.i120 = getelementptr %struct.saa7110, ptr %call.i, i32 0, i32 2, i32 13
  %31 = ptrtoint ptr %arrayidx.i120 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 4, ptr %arrayidx.i120, align 1
  %call3.i121 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %30, i8 noundef zeroext 13, i8 noundef zeroext 4) #6
  %32 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %33) #6
  %34 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_priv.i.i, align 4
  %36 = ptrtoint ptr %arrayidx.i120 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 6, ptr %arrayidx.i120, align 1
  %call3.i125 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %35, i8 noundef zeroext 13, i8 noundef zeroext 6) #6
  %37 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i127 = tail call i32 @i2c_smbus_read_byte(ptr noundef %38) #6
  %39 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp61 = icmp sgt i32 %39, 0
  br i1 %cmp61, label %do.end66, label %if.else.do.end73_crit_edge

if.else.do.end73_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end73

do.end66:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %name68 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i, i32 0, i32 9
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name68, i32 noundef %call1.i, i32 noundef %call1.i127) #9
  br label %do.end73

do.end73:                                         ; preds = %do.end66, %if.else.do.end73_crit_edge
  %40 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_priv.i.i, align 4
  %42 = ptrtoint ptr %arrayidx.i120 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -122, ptr %arrayidx.i120, align 1
  %call3.i130 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %41, i8 noundef zeroext 13, i8 noundef zeroext -122) #6
  %43 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev_priv.i.i, align 4
  %arrayidx.i132 = getelementptr %struct.saa7110, ptr %call.i, i32 0, i32 2, i32 15
  %45 = ptrtoint ptr %arrayidx.i132 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 16, ptr %arrayidx.i132, align 1
  %call3.i133 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %44, i8 noundef zeroext 15, i8 noundef zeroext 16) #6
  %46 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev_priv.i.i, align 4
  %arrayidx.i135 = getelementptr %struct.saa7110, ptr %call.i, i32 0, i32 2, i32 17
  %48 = ptrtoint ptr %arrayidx.i135 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 89, ptr %arrayidx.i135, align 1
  %call3.i136 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %47, i8 noundef zeroext 17, i8 noundef zeroext 89) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end73, %do.end46, %do.body40.cleanup_crit_edge, %if.then27, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %21, %if.then27 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %do.end.cleanup_crit_edge ], [ 0, %do.body40.cleanup_crit_edge ], [ 0, %do.end46 ], [ 0, %do.end73 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7110_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_device_unregister_subdev(ptr noundef %1) #6
  %hdl = getelementptr inbounds %struct.saa7110, ptr %1, i32 0, i32 1
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @saa7110_write_block(ptr nocapture noundef %sd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %3) #6
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.for.body_crit_edge, label %if.then4

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull @initseq, i32 noundef 54, i16 noundef zeroext 0) #6
  %reg6 = getelementptr inbounds %struct.saa7110, ptr %sd, i32 0, i32 2
  %8 = call ptr @memcpy(ptr %reg6, ptr getelementptr inbounds ([54 x i8], ptr @initseq, i32 0, i32 1), i32 53)
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %len.addr.02 = phi i32 [ %dec17, %for.inc.for.body_crit_edge ], [ 53, %entry.for.body_crit_edge ]
  %data.addr.01 = phi ptr [ %incdec.ptr11, %for.inc.for.body_crit_edge ], [ getelementptr inbounds ([54 x i8], ptr @initseq, i32 0, i32 1), %entry.for.body_crit_edge ]
  %9 = ptrtoint ptr %data.addr.01 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %data.addr.01, align 1
  %11 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_priv.i, align 4
  %arrayidx.i = getelementptr %struct.saa7110, ptr %sd, i32 0, i32 2, i32 %indvars.iv
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %10, ptr %arrayidx.i, align 1
  %14 = trunc i32 %indvars.iv to i8
  %call3.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext %14, i8 noundef zeroext %10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp13 = icmp slt i32 %call3.i, 0
  br i1 %cmp13, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %incdec.ptr11 = getelementptr i8, ptr %data.addr.01, i32 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %dec17 = add nsw i32 %len.addr.02, -1
  %tobool10.not = icmp eq i32 %dec17, 0
  br i1 %tobool10.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.then4
  %ret.1 = phi i32 [ %call.i, %if.then4 ], [ %call3.i, %for.inc.cleanup_crit_edge ], [ %call3.i, %for.body.cleanup_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7110_s_routing(ptr noundef %sd, i32 noundef %input, i32 noundef %output, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %input)
  %cmp = icmp ugt i32 %input, 8
  br i1 %cmp, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp1 = icmp sgt i32 %0, 0
  br i1 %cmp1, label %do.body.cleanup.sink.split_crit_edge, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end7:                                          ; preds = %entry
  %input8 = getelementptr inbounds %struct.saa7110, ptr %sd, i32 0, i32 4
  %1 = ptrtoint ptr %input8 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %input8, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %input)
  %cmp9.not = icmp eq i32 %2, %input
  br i1 %cmp9.not, label %if.end7.cleanup_crit_edge, label %if.then10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10:                                        ; preds = %if.end7
  tail call fastcc void @saa7110_selmux(ptr noundef %sd, i32 noundef %input)
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp13 = icmp sgt i32 %3, 0
  br i1 %cmp13, label %if.then10.cleanup.sink.split_crit_edge, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10.cleanup.sink.split_crit_edge:           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then10.cleanup.sink.split_crit_edge, %do.body.cleanup.sink.split_crit_edge
  %.str.15.sink = phi ptr [ @.str.12, %do.body.cleanup.sink.split_crit_edge ], [ @.str.15, %if.then10.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -22, %do.body.cleanup.sink.split_crit_edge ], [ 0, %if.then10.cleanup.sink.split_crit_edge ]
  %name19 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.15.sink, ptr noundef %name19, i32 noundef %input) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then10.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.body.cleanup_crit_edge ], [ 0, %if.then10.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7110_s_std(ptr noundef %sd, i64 noundef %std) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %norm = getelementptr inbounds %struct.saa7110, ptr %sd, i32 0, i32 3
  %0 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %norm, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %std)
  %cmp.not = icmp eq i64 %1, %std
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %norm to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %std, ptr %norm, align 8
  %and = and i64 %std, 45056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %3 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_priv.i.i, align 4
  %arrayidx.i = getelementptr %struct.saa7110, ptr %sd, i32 0, i32 2, i32 13
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -122, ptr %arrayidx.i, align 1
  %call3.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 13, i8 noundef zeroext -122) #6
  %6 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i.i, align 4
  %arrayidx.i74 = getelementptr %struct.saa7110, ptr %sd, i32 0, i32 2, i32 15
  %8 = ptrtoint ptr %arrayidx.i74 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 80, ptr %arrayidx.i74, align 1
  %call3.i75 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 15, i8 noundef zeroext 80) #6
  %9 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_priv.i.i, align 4
  %arrayidx.i77 = getelementptr %struct.saa7110, ptr %sd, i32 0, i32 2, i32 17
  %11 = ptrtoint ptr %arrayidx.i77 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 44, ptr %arrayidx.i77, align 1
  %call3.i78 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext 17, i8 noundef zeroext 44) #6
  %12 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp6 = icmp sgt i32 %12, 0
  br i1 %cmp6, label %if.then2.cleanup.sink.split_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2.cleanup.sink.split_crit_edge:            ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.then
  %and12 = and i64 %std, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and12)
  %tobool13.not = icmp eq i64 %and12, 0
  br i1 %tobool13.not, label %if.else31, label %if.then14

if.then14:                                        ; preds = %if.else
  %dev_priv.i.i79 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %13 = ptrtoint ptr %dev_priv.i.i79 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_priv.i.i79, align 4
  %arrayidx.i80 = getelementptr %struct.saa7110, ptr %sd, i32 0, i32 2, i32 13
  %15 = ptrtoint ptr %arrayidx.i80 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -122, ptr %arrayidx.i80, align 1
  %call3.i81 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext 13, i8 noundef zeroext -122) #6
  %16 = ptrtoint ptr %dev_priv.i.i79 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_priv.i.i79, align 4
  %arrayidx.i83 = getelementptr %struct.saa7110, ptr %sd, i32 0, i32 2, i32 15
  %18 = ptrtoint ptr %arrayidx.i83 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 16, ptr %arrayidx.i83, align 1
  %call3.i84 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext 15, i8 noundef zeroext 16) #6
  %19 = ptrtoint ptr %dev_priv.i.i79 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_priv.i.i79, align 4
  %arrayidx.i86 = getelementptr %struct.saa7110, ptr %sd, i32 0, i32 2, i32 17
  %21 = ptrtoint ptr %arrayidx.i86 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 89, ptr %arrayidx.i86, align 1
  %call3.i87 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %20, i8 noundef zeroext 17, i8 noundef zeroext 89) #6
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp19 = icmp sgt i32 %22, 0
  br i1 %cmp19, label %if.then14.cleanup.sink.split_crit_edge, label %if.then14.cleanup_crit_edge

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then14.cleanup.sink.split_crit_edge:           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.else31:                                        ; preds = %if.else
  %and32 = and i64 %std, 16711680
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and32)
  %tobool33.not = icmp eq i64 %and32, 0
  br i1 %tobool33.not, label %if.else31.cleanup_crit_edge, label %if.then34

if.else31.cleanup_crit_edge:                      ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then34:                                        ; preds = %if.else31
  %dev_priv.i.i88 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %23 = ptrtoint ptr %dev_priv.i.i88 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_priv.i.i88, align 4
  %arrayidx.i89 = getelementptr %struct.saa7110, ptr %sd, i32 0, i32 2, i32 13
  %25 = ptrtoint ptr %arrayidx.i89 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -121, ptr %arrayidx.i89, align 1
  %call3.i90 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %24, i8 noundef zeroext 13, i8 noundef zeroext -121) #6
  %26 = ptrtoint ptr %dev_priv.i.i88 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_priv.i.i88, align 4
  %arrayidx.i92 = getelementptr %struct.saa7110, ptr %sd, i32 0, i32 2, i32 15
  %28 = ptrtoint ptr %arrayidx.i92 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 16, ptr %arrayidx.i92, align 1
  %call3.i93 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %27, i8 noundef zeroext 15, i8 noundef zeroext 16) #6
  %29 = ptrtoint ptr %dev_priv.i.i88 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_priv.i.i88, align 4
  %arrayidx.i95 = getelementptr %struct.saa7110, ptr %sd, i32 0, i32 2, i32 17
  %31 = ptrtoint ptr %arrayidx.i95 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 89, ptr %arrayidx.i95, align 1
  %call3.i96 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %30, i8 noundef zeroext 17, i8 noundef zeroext 89) #6
  %32 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp39 = icmp sgt i32 %32, 0
  br i1 %cmp39, label %if.then34.cleanup.sink.split_crit_edge, label %if.then34.cleanup_crit_edge

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then34.cleanup.sink.split_crit_edge:           ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then34.cleanup.sink.split_crit_edge, %if.then14.cleanup.sink.split_crit_edge, %if.then2.cleanup.sink.split_crit_edge
  %.str.20.sink = phi ptr [ @.str.17, %if.then2.cleanup.sink.split_crit_edge ], [ @.str.20, %if.then14.cleanup.sink.split_crit_edge ], [ @.str.23, %if.then34.cleanup.sink.split_crit_edge ]
  %name25 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.20.sink, ptr noundef %name25) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then34.cleanup_crit_edge, %if.else31.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.else31.cleanup_crit_edge ], [ 0, %if.then2.cleanup_crit_edge ], [ 0, %if.then34.cleanup_crit_edge ], [ 0, %if.then14.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7110_querystd(ptr noundef %sd, ptr nocapture noundef %std) #2 align 64 {
entry:
  %wait.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait.i) #6
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait.i, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !113) #6
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task.i, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @autoremove_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %13 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_priv.i.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adapter.i.i, align 8
  %algo.i.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %algo.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %algo.i.i.i.i, align 8
  %functionality.i.i.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %functionality.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %functionality.i.i.i.i, align 4
  %call.i.i.i.i = call i32 %20(ptr noundef %16) #6
  %and.i.i.i = and i32 %call.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %entry.for.body.i.i_crit_edge, label %if.then4.i.i

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

if.then4.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %14, ptr noundef nonnull @initseq, i32 noundef 54, i16 noundef zeroext 0) #6
  %reg6.i.i = getelementptr inbounds %struct.saa7110, ptr %sd, i32 0, i32 2
  %21 = call ptr @memcpy(ptr %reg6.i.i, ptr getelementptr inbounds ([54 x i8], ptr @initseq, i32 0, i32 1), i32 53)
  br label %saa7110_write_block.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %indvars.iv.i.i = phi i32 [ %indvars.iv.next.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %entry.for.body.i.i_crit_edge ]
  %len.addr.02.i.i = phi i32 [ %dec17.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 53, %entry.for.body.i.i_crit_edge ]
  %data.addr.01.i.i = phi ptr [ %incdec.ptr11.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ getelementptr inbounds ([54 x i8], ptr @initseq, i32 0, i32 1), %entry.for.body.i.i_crit_edge ]
  %22 = ptrtoint ptr %data.addr.01.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %data.addr.01.i.i, align 1
  %24 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_priv.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.saa7110, ptr %sd, i32 0, i32 2, i32 %indvars.iv.i.i
  %26 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %23, ptr %arrayidx.i.i.i, align 1
  %27 = trunc i32 %indvars.iv.i.i to i8
  %call3.i.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %25, i8 noundef zeroext %27, i8 noundef zeroext %23) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %cmp13.i.i = icmp slt i32 %call3.i.i.i, 0
  br i1 %cmp13.i.i, label %for.body.i.i.saa7110_write_block.exit.i_crit_edge, label %for.inc.i.i

for.body.i.i.saa7110_write_block.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7110_write_block.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr11.i.i = getelementptr i8, ptr %data.addr.01.i.i, i32 1
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %dec17.i.i = add nsw i32 %len.addr.02.i.i, -1
  %tobool10.not.i.i = icmp eq i32 %dec17.i.i, 0
  br i1 %tobool10.not.i.i, label %for.inc.i.i.saa7110_write_block.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.saa7110_write_block.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %saa7110_write_block.exit.i

saa7110_write_block.exit.i:                       ; preds = %for.inc.i.i.saa7110_write_block.exit.i_crit_edge, %for.body.i.i.saa7110_write_block.exit.i_crit_edge, %if.then4.i.i
  %input.i = getelementptr inbounds %struct.saa7110, ptr %sd, i32 0, i32 4
  %28 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %input.i, align 8
  call fastcc void @saa7110_selmux(ptr noundef %sd, i32 noundef %29) #6
  %wq.i = getelementptr inbounds %struct.saa7110, ptr %sd, i32 0, i32 6
  call void @prepare_to_wait(ptr noundef %wq.i, ptr noundef nonnull %wait.i, i32 noundef 2) #6
  %call8.i = call i32 @schedule_timeout(i32 noundef 25) #6
  call void @finish_wait(ptr noundef %wq.i, ptr noundef nonnull %wait.i) #6
  %30 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i = call i32 @i2c_smbus_read_byte(ptr noundef %31) #6
  %and.i = and i32 %call1.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end16.i, label %do.body.i

do.body.i:                                        ; preds = %saa7110_write_block.exit.i
  %32 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i = icmp sgt i32 %32, 0
  br i1 %cmp.i, label %do.end.i, label %do.body.i.determine_norm.exit_crit_edge

do.body.i.determine_norm.exit_crit_edge:          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %determine_norm.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %name.i, i32 noundef %call1.i.i) #9
  br label %determine_norm.exit

if.end16.i:                                       ; preds = %saa7110_write_block.exit.i
  %and17.i = and i32 %call1.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %cmp18.i = icmp eq i32 %and17.i, 0
  br i1 %cmp18.i, label %if.then19.i, label %if.end51.i

if.then19.i:                                      ; preds = %if.end16.i
  %33 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_priv.i.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.saa7110, ptr %sd, i32 0, i32 2, i32 6
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -125, ptr %arrayidx.i.i, align 1
  %call3.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %34, i8 noundef zeroext 6, i8 noundef zeroext -125) #6
  %and21.i = and i32 %call1.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  %36 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp39.i = icmp sgt i32 %36, 0
  br i1 %tobool22.not.i, label %do.body38.i, label %do.body24.i

do.body24.i:                                      ; preds = %if.then19.i
  br i1 %cmp39.i, label %do.end29.i, label %do.body24.i.determine_norm.exit_crit_edge

do.body24.i.determine_norm.exit_crit_edge:        ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %determine_norm.exit

do.end29.i:                                       ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #8
  %name31.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call33.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %name31.i, i32 noundef %call1.i.i) #9
  br label %determine_norm.exit

do.body38.i:                                      ; preds = %if.then19.i
  br i1 %cmp39.i, label %do.end43.i, label %do.body38.i.determine_norm.exit_crit_edge

do.body38.i.determine_norm.exit_crit_edge:        ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %determine_norm.exit

do.end43.i:                                       ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #8
  %name45.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call47.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name45.i, i32 noundef %call1.i.i) #9
  br label %determine_norm.exit

if.end51.i:                                       ; preds = %if.end16.i
  %and52.i = and i32 %call1.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i)
  %tobool53.not.i = icmp eq i32 %and52.i, 0
  br i1 %tobool53.not.i, label %if.end71.i, label %do.body55.i

do.body55.i:                                      ; preds = %if.end51.i
  %37 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp56.i = icmp sgt i32 %37, 0
  br i1 %cmp56.i, label %do.end60.i, label %do.body55.i.do.end67.i_crit_edge

do.body55.i.do.end67.i_crit_edge:                 ; preds = %do.body55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67.i

do.end60.i:                                       ; preds = %do.body55.i
  call void @__sanitizer_cov_trace_pc() #8
  %name62.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call64.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %name62.i, i32 noundef %call1.i.i) #9
  br label %do.end67.i

do.end67.i:                                       ; preds = %do.end60.i, %do.body55.i.do.end67.i_crit_edge
  %38 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_priv.i.i.i, align 4
  %arrayidx.i148.i = getelementptr %struct.saa7110, ptr %sd, i32 0, i32 2, i32 13
  %40 = ptrtoint ptr %arrayidx.i148.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -122, ptr %arrayidx.i148.i, align 1
  %call3.i149.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %39, i8 noundef zeroext 13, i8 noundef zeroext -122) #6
  %41 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_priv.i.i.i, align 4
  %arrayidx.i151.i = getelementptr %struct.saa7110, ptr %sd, i32 0, i32 2, i32 15
  %43 = ptrtoint ptr %arrayidx.i151.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 80, ptr %arrayidx.i151.i, align 1
  %call3.i152.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %42, i8 noundef zeroext 15, i8 noundef zeroext 80) #6
  %44 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_priv.i.i.i, align 4
  %arrayidx.i154.i = getelementptr %struct.saa7110, ptr %sd, i32 0, i32 2, i32 17
  %46 = ptrtoint ptr %arrayidx.i154.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 44, ptr %arrayidx.i154.i, align 1
  %call3.i155.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %45, i8 noundef zeroext 17, i8 noundef zeroext 44) #6
  br label %determine_norm.exit

if.end71.i:                                       ; preds = %if.end51.i
  %47 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev_priv.i.i.i, align 4
  %arrayidx.i157.i = getelementptr %struct.saa7110, ptr %sd, i32 0, i32 2, i32 13
  %49 = ptrtoint ptr %arrayidx.i157.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -122, ptr %arrayidx.i157.i, align 1
  %call3.i158.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %48, i8 noundef zeroext 13, i8 noundef zeroext -122) #6
  %50 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev_priv.i.i.i, align 4
  %arrayidx.i160.i = getelementptr %struct.saa7110, ptr %sd, i32 0, i32 2, i32 15
  %52 = ptrtoint ptr %arrayidx.i160.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 16, ptr %arrayidx.i160.i, align 1
  %call3.i161.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %51, i8 noundef zeroext 15, i8 noundef zeroext 16) #6
  %53 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev_priv.i.i.i, align 4
  %arrayidx.i163.i = getelementptr %struct.saa7110, ptr %sd, i32 0, i32 2, i32 17
  %55 = ptrtoint ptr %arrayidx.i163.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 89, ptr %arrayidx.i163.i, align 1
  %call3.i164.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %54, i8 noundef zeroext 17, i8 noundef zeroext 89) #6
  call void @prepare_to_wait(ptr noundef %wq.i, ptr noundef nonnull %wait.i, i32 noundef 2) #6
  %call77.i = call i32 @schedule_timeout(i32 noundef 25) #6
  call void @finish_wait(ptr noundef %wq.i, ptr noundef nonnull %wait.i) #6
  %56 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i166.i = call i32 @i2c_smbus_read_byte(ptr noundef %57) #6
  %and80.i = and i32 %call1.i166.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and80.i)
  %cmp81.i = icmp eq i32 %and80.i, 1
  %58 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp84.i = icmp sgt i32 %58, 0
  br i1 %cmp81.i, label %do.body83.i, label %do.body98.i

do.body83.i:                                      ; preds = %if.end71.i
  br i1 %cmp84.i, label %do.end88.i, label %do.body83.i.do.end95.i_crit_edge

do.body83.i.do.end95.i_crit_edge:                 ; preds = %do.body83.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end95.i

do.end88.i:                                       ; preds = %do.body83.i
  call void @__sanitizer_cov_trace_pc() #8
  %name90.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call92.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name90.i, i32 noundef %call1.i166.i) #9
  br label %do.end95.i

do.end95.i:                                       ; preds = %do.end88.i, %do.body83.i.do.end95.i_crit_edge
  %59 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev_priv.i.i.i, align 4
  %61 = ptrtoint ptr %arrayidx.i157.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 -121, ptr %arrayidx.i157.i, align 1
  %call3.i169.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %60, i8 noundef zeroext 13, i8 noundef zeroext -121) #6
  br label %determine_norm.exit

do.body98.i:                                      ; preds = %if.end71.i
  br i1 %cmp84.i, label %do.end103.i, label %do.body98.i.determine_norm.exit_crit_edge

do.body98.i.determine_norm.exit_crit_edge:        ; preds = %do.body98.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %determine_norm.exit

do.end103.i:                                      ; preds = %do.body98.i
  call void @__sanitizer_cov_trace_pc() #8
  %name105.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call107.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name105.i, i32 noundef %call1.i166.i) #9
  br label %determine_norm.exit

determine_norm.exit:                              ; preds = %do.end103.i, %do.body98.i.determine_norm.exit_crit_edge, %do.end95.i, %do.end67.i, %do.end43.i, %do.body38.i.determine_norm.exit_crit_edge, %do.end29.i, %do.body24.i.determine_norm.exit_crit_edge, %do.end.i, %do.body.i.determine_norm.exit_crit_edge
  %retval.0.i = phi i64 [ 45056, %do.end67.i ], [ 16711680, %do.end95.i ], [ 0, %do.end.i ], [ 0, %do.body.i.determine_norm.exit_crit_edge ], [ 45056, %do.end29.i ], [ 45056, %do.body24.i.determine_norm.exit_crit_edge ], [ 255, %do.end43.i ], [ 255, %do.body38.i.determine_norm.exit_crit_edge ], [ 255, %do.end103.i ], [ 255, %do.body98.i.determine_norm.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i) #6
  %62 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %std, align 8
  %and = and i64 %63, %retval.0.i
  store i64 %and, ptr %std, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7110_g_input_status(ptr noundef %sd, ptr nocapture noundef writeonly %pstatus) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %1) #6
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %norm = getelementptr inbounds %struct.saa7110, ptr %sd, i32 0, i32 3
  %3 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %norm, align 8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name, i32 noundef %call1.i, i64 noundef %4) #9
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %and = lshr i32 %call1.i, 5
  %5 = and i32 %and, 2
  %and8 = and i32 %call1.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %or = or i32 %5, 4
  %res.1 = select i1 %tobool9.not, i32 %or, i32 %5
  %6 = ptrtoint ptr %pstatus to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %res.1, ptr %pstatus, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7110_s_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %enable1 = getelementptr inbounds %struct.saa7110, ptr %sd, i32 0, i32 5
  %0 = ptrtoint ptr %enable1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enable1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %enable)
  %cmp.not = icmp eq i32 %1, %enable
  br i1 %cmp.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %enable1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %enable, ptr %enable1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %conv = select i1 %tobool.not, i8 -128, i8 24
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %3 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_priv.i.i, align 4
  %arrayidx.i = getelementptr %struct.saa7110, ptr %sd, i32 0, i32 2, i32 14
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %arrayidx.i, align 1
  %call3.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 14, i8 noundef zeroext %conv) #6
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp4 = icmp sgt i32 %6, 0
  br i1 %cmp4, label %do.end, label %if.then.if.end13_crit_edge

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %cond9 = select i1 %tobool.not, ptr @.str.47, ptr @.str.46
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name, ptr noundef nonnull %cond9) #9
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.then.if.end13_crit_edge, %entry.if.end13_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @saa7110_selmux(ptr nocapture noundef %sd, i32 noundef %chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [9 x [8 x i8]], ptr @saa7110_selmux.modes, i32 0, i32 %chan
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i, align 4
  %arrayidx.i = getelementptr %struct.saa7110, ptr %sd, i32 0, i32 2, i32 6
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %1, ptr %arrayidx.i, align 1
  %call3.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 6, i8 noundef zeroext %1) #6
  %arrayidx3 = getelementptr i8, ptr %arrayidx, i32 1
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx3, align 1
  %7 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_priv.i.i, align 4
  %arrayidx.i2 = getelementptr %struct.saa7110, ptr %sd, i32 0, i32 2, i32 32
  %9 = ptrtoint ptr %arrayidx.i2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %6, ptr %arrayidx.i2, align 1
  %call3.i3 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 32, i8 noundef zeroext %6) #6
  %arrayidx5 = getelementptr i8, ptr %arrayidx, i32 2
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx5, align 1
  %12 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_priv.i.i, align 4
  %arrayidx.i5 = getelementptr %struct.saa7110, ptr %sd, i32 0, i32 2, i32 33
  %14 = ptrtoint ptr %arrayidx.i5 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %11, ptr %arrayidx.i5, align 1
  %call3.i6 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 33, i8 noundef zeroext %11) #6
  %arrayidx7 = getelementptr i8, ptr %arrayidx, i32 3
  %15 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx7, align 1
  %17 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_priv.i.i, align 4
  %arrayidx.i8 = getelementptr %struct.saa7110, ptr %sd, i32 0, i32 2, i32 34
  %19 = ptrtoint ptr %arrayidx.i8 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %16, ptr %arrayidx.i8, align 1
  %call3.i9 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext 34, i8 noundef zeroext %16) #6
  %arrayidx9 = getelementptr i8, ptr %arrayidx, i32 4
  %20 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx9, align 1
  %22 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_priv.i.i, align 4
  %arrayidx.i11 = getelementptr %struct.saa7110, ptr %sd, i32 0, i32 2, i32 44
  %24 = ptrtoint ptr %arrayidx.i11 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %21, ptr %arrayidx.i11, align 1
  %call3.i12 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext 44, i8 noundef zeroext %21) #6
  %arrayidx11 = getelementptr i8, ptr %arrayidx, i32 5
  %25 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx11, align 1
  %27 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_priv.i.i, align 4
  %arrayidx.i14 = getelementptr %struct.saa7110, ptr %sd, i32 0, i32 2, i32 48
  %29 = ptrtoint ptr %arrayidx.i14 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %26, ptr %arrayidx.i14, align 1
  %call3.i15 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %28, i8 noundef zeroext 48, i8 noundef zeroext %26) #6
  %arrayidx13 = getelementptr i8, ptr %arrayidx, i32 6
  %30 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx13, align 1
  %32 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev_priv.i.i, align 4
  %arrayidx.i17 = getelementptr %struct.saa7110, ptr %sd, i32 0, i32 2, i32 49
  %34 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %31, ptr %arrayidx.i17, align 1
  %call3.i18 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %33, i8 noundef zeroext 49, i8 noundef zeroext %31) #6
  %arrayidx15 = getelementptr i8, ptr %arrayidx, i32 7
  %35 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx15, align 1
  %37 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev_priv.i.i, align 4
  %39 = ptrtoint ptr %arrayidx.i5 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %36, ptr %arrayidx.i5, align 1
  %call3.i21 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %38, i8 noundef zeroext 33, i8 noundef zeroext %36) #6
  %input = getelementptr inbounds %struct.saa7110, ptr %sd, i32 0, i32 4
  %40 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %chan, ptr %input, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7110_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963777, label %sw.bb2
    i32 9963778, label %sw.bb6
    i32 9963779, label %sw.bb10
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %conv = trunc i32 %6 to i8
  %dev_priv.i.i = getelementptr i8, ptr %1, i32 -44
  %7 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_priv.i.i, align 4
  %arrayidx.i = getelementptr i8, ptr %1, i32 209
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %arrayidx.i, align 1
  %call3.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 25, i8 noundef zeroext %conv) #6
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %10 = ptrtoint ptr %val3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val3, align 4
  %conv4 = trunc i32 %11 to i8
  %dev_priv.i.i22 = getelementptr i8, ptr %1, i32 -44
  %12 = ptrtoint ptr %dev_priv.i.i22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_priv.i.i22, align 4
  %arrayidx.i23 = getelementptr i8, ptr %1, i32 203
  %14 = ptrtoint ptr %arrayidx.i23 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv4, ptr %arrayidx.i23, align 1
  %call3.i24 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 19, i8 noundef zeroext %conv4) #6
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %15 = ptrtoint ptr %val7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val7, align 4
  %conv8 = trunc i32 %16 to i8
  %dev_priv.i.i25 = getelementptr i8, ptr %1, i32 -44
  %17 = ptrtoint ptr %dev_priv.i.i25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_priv.i.i25, align 4
  %arrayidx.i26 = getelementptr i8, ptr %1, i32 202
  %19 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv8, ptr %arrayidx.i26, align 1
  %call3.i27 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext 18, i8 noundef zeroext %conv8) #6
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %val11 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %20 = ptrtoint ptr %val11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val11, align 4
  %conv12 = trunc i32 %21 to i8
  %dev_priv.i.i28 = getelementptr i8, ptr %1, i32 -44
  %22 = ptrtoint ptr %dev_priv.i.i28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_priv.i.i28, align 4
  %arrayidx.i29 = getelementptr i8, ptr %1, i32 191
  %24 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv12, ptr %arrayidx.i29, align 1
  %call3.i30 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext 7, i8 noundef zeroext %conv12) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.bb10, %sw.bb6, %sw.bb2, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb10 ], [ 0, %sw.bb6 ], [ 0, %sw.bb2 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !18, !20, !22, !24, !25, !26, !27, !28, !30, !31, !33, !34, !36, !37, !38, !40, !41, !42, !44, !46, !48, !49, !50, !51, !53, !54, !55, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !105, !106, !107, !109, !111}
!llvm.named.register.sp = !{!113}
!llvm.module.flags = !{!114, !115, !116, !117, !118, !119, !120, !121}
!llvm.ident = !{!122}

!0 = !{ptr @__UNIQUE_ID_description292, !1, !"__UNIQUE_ID_description292", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/saa7110.c", i32 27, i32 1}
!2 = !{ptr @__UNIQUE_ID_author293, !3, !"__UNIQUE_ID_author293", i1 false, i1 false}
!3 = !{!"../drivers/media/i2c/saa7110.c", i32 28, i32 1}
!4 = !{ptr @__UNIQUE_ID_file294, !5, !"__UNIQUE_ID_file294", i1 false, i1 false}
!5 = !{!"../drivers/media/i2c/saa7110.c", i32 29, i32 1}
!6 = !{ptr @__UNIQUE_ID_license295, !5, !"__UNIQUE_ID_license295", i1 false, i1 false}
!7 = !{ptr @__param_debug, !8, !"__param_debug", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/saa7110.c", i32 33, i32 1}
!9 = !{ptr @__UNIQUE_ID_debugtype296, !8, !"__UNIQUE_ID_debugtype296", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_debug297, !11, !"__UNIQUE_ID_debug297", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/saa7110.c", i32 34, i32 1}
!12 = !{ptr @__initcall__kmod_saa7110__298_458_saa7110_driver_init6, !13, !"__initcall__kmod_saa7110__298_458_saa7110_driver_init6", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/saa7110.c", i32 458, i32 1}
!14 = !{ptr @__exitcall_saa7110_driver_exit, !13, !"__exitcall_saa7110_driver_exit", i1 false, i1 false}
!15 = !{ptr @debug, !16, !"debug", i1 false, i1 false}
!16 = !{!"../drivers/media/i2c/saa7110.c", i32 32, i32 12}
!17 = !{ptr @__param_str_debug, !8, !"__param_str_debug", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/saa7110.c", i32 451, i32 11}
!20 = !{ptr @saa7110_driver, !21, !"saa7110_driver", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/saa7110.c", i32 449, i32 26}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/saa7110.c", i32 373, i32 2}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @saa7110_probe._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @saa7110_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @saa7110_probe._key, !29, !"_key", i1 false, i1 false}
!29 = !{!"../drivers/media/i2c/saa7110.c", i32 384, i32 2}
!30 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @saa7110_probe.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/media/i2c/saa7110.c", i32 402, i32 2}
!33 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/i2c/saa7110.c", i32 406, i32 3}
!36 = !{ptr @saa7110_probe._entry.6, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @saa7110_probe._entry_ptr.8, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/i2c/saa7110.c", i32 416, i32 3}
!40 = !{ptr @saa7110_probe._entry.9, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @saa7110_probe._entry_ptr.11, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @saa7110_ops, !43, !"saa7110_ops", i1 false, i1 false}
!43 = !{!"../drivers/media/i2c/saa7110.c", i32 355, i32 37}
!44 = !{ptr @saa7110_video_ops, !45, !"saa7110_video_ops", i1 false, i1 false}
!45 = !{!"../drivers/media/i2c/saa7110.c", i32 347, i32 43}
!46 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/i2c/saa7110.c", i32 296, i32 3}
!48 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @saa7110_s_routing._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @saa7110_s_routing._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/i2c/saa7110.c", i32 301, i32 3}
!53 = !{ptr @saa7110_s_routing._entry.14, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @saa7110_s_routing._entry_ptr.16, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @saa7110_selmux.modes, !56, !"modes", i1 false, i1 false}
!56 = !{!"../drivers/media/i2c/saa7110.c", i32 122, i32 29}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/i2c/saa7110.c", i32 270, i32 4}
!59 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @saa7110_s_std._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @saa7110_s_std._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.20, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/i2c/saa7110.c", i32 276, i32 4}
!64 = !{ptr @saa7110_s_std._entry.19, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @saa7110_s_std._entry_ptr.21, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/i2c/saa7110.c", i32 282, i32 4}
!68 = !{ptr @saa7110_s_std._entry.22, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @saa7110_s_std._entry_ptr.24, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/i2c/saa7110.c", i32 191, i32 3}
!72 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @determine_norm._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @determine_norm._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/i2c/saa7110.c", i32 197, i32 4}
!77 = !{ptr @determine_norm._entry.27, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @determine_norm._entry_ptr.29, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/i2c/saa7110.c", i32 201, i32 3}
!81 = !{ptr @determine_norm._entry.30, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @determine_norm._entry_ptr.32, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/i2c/saa7110.c", i32 207, i32 3}
!85 = !{ptr @determine_norm._entry.33, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @determine_norm._entry_ptr.35, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/i2c/saa7110.c", i32 227, i32 3}
!89 = !{ptr @determine_norm._entry.36, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @determine_norm._entry_ptr.38, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/i2c/saa7110.c", i32 231, i32 2}
!93 = !{ptr @determine_norm._entry.39, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @determine_norm._entry_ptr.41, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/i2c/saa7110.c", i32 241, i32 2}
!97 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @saa7110_g_input_status._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @saa7110_g_input_status._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/i2c/saa7110.c", i32 313, i32 3}
!102 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @saa7110_s_stream._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @saa7110_s_stream._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @saa7110_ctrl_ops, !108, !"saa7110_ctrl_ops", i1 false, i1 false}
!108 = !{!"../drivers/media/i2c/saa7110.c", i32 343, i32 35}
!109 = !{ptr @initseq, !110, !"initseq", i1 false, i1 false}
!110 = !{!"../drivers/media/i2c/saa7110.c", i32 167, i32 28}
!111 = !{ptr @saa7110_id, !112, !"saa7110_id", i1 false, i1 false}
!112 = !{!"../drivers/media/i2c/saa7110.c", i32 443, i32 35}
!113 = !{!"sp"}
!114 = !{i32 1, !"wchar_size", i32 2}
!115 = !{i32 1, !"min_enum_size", i32 4}
!116 = !{i32 8, !"branch-target-enforcement", i32 0}
!117 = !{i32 8, !"sign-return-address", i32 0}
!118 = !{i32 8, !"sign-return-address-all", i32 0}
!119 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!120 = !{i32 7, !"uwtable", i32 1}
!121 = !{i32 7, !"frame-pointer", i32 2}
!122 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
