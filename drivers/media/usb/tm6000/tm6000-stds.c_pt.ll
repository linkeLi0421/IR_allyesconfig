; ModuleID = '/llk/IR_all_yes/drivers/media/usb/tm6000/tm6000-stds.c_pt.bc'
source_filename = "../drivers/media/usb/tm6000/tm6000-stds.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.tm6000_std_settings = type { i64, ptr }
%struct.tm6000_reg_settings = type { i8, i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tm6000_core = type { [30 x i8], i32, i32, i32, [256 x i8], i32, i64, i32, i32, i32, %struct.tm6000_capabilities, %struct.work_struct, i32, i32, %struct.tm6000_gpio, ptr, i8, i32, i32, %struct.i2c_adapter, %struct.i2c_client, %struct.list_head, i32, ptr, i8, %struct.video_device, %struct.video_device, %struct.tm6000_dmaqueue, %struct.v4l2_device, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, i32, [3 x %struct.tm6000_input], %struct.tm6000_input, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.work_struct, %struct.atomic_t, ptr, %struct.mutex, %struct.mutex, ptr, %struct.tm6000_endpoint, %struct.tm6000_endpoint, %struct.tm6000_endpoint, %struct.tm6000_endpoint, %struct.tm6000_endpoint, %struct.tm6000_endpoint, i32, %struct.usb_isoc_ctl, %struct.spinlock, ptr, ptr, i32, i32 }
%struct.tm6000_capabilities = type { i8, [3 x i8] }
%struct.tm6000_gpio = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.tm6000_dmaqueue = type { %struct.list_head, %struct.list_head, ptr, %struct.wait_queue_head, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.tm6000_input = type { i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tm6000_endpoint = type { ptr, i8, i8, i32 }
%struct.usb_isoc_ctl = type { i32, i32, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }

@__param_str_tm6010_a_mode = internal constant [21 x i8] c"tm6000.tm6010_a_mode\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@tm6010_a_mode = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_tm6010_a_mode = internal constant %struct.kernel_param { ptr @__param_str_tm6010_a_mode, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @tm6010_a_mode } }, section "__param", align 4
@__UNIQUE_ID_tm6010_a_modetype298 = internal constant [34 x i8] c"tm6000.parmtype=tm6010_a_mode:int\00", section ".modinfo", align 1
@__UNIQUE_ID_tm6010_a_mode299 = internal constant [52 x i8] c"tm6000.parm=tm6010_a_mode:set tm6010 sif audio mode\00", section ".modinfo", align 1
@svideo_stds = internal constant { [5 x %struct.tm6000_std_settings], [48 x i8] } { [5 x %struct.tm6000_std_settings] [%struct.tm6000_std_settings { i64 256, ptr @svideo_pal_m }, %struct.tm6000_std_settings { i64 1024, ptr @svideo_pal_nc }, %struct.tm6000_std_settings { i64 255, ptr @svideo_pal }, %struct.tm6000_std_settings { i64 16711680, ptr @svideo_secam }, %struct.tm6000_std_settings { i64 45056, ptr @svideo_ntsc }], [48 x i8] zeroinitializer }, align 32
@composite_stds = internal constant { [5 x %struct.tm6000_std_settings], [48 x i8] } { [5 x %struct.tm6000_std_settings] [%struct.tm6000_std_settings { i64 256, ptr @composite_pal_m }, %struct.tm6000_std_settings { i64 1024, ptr @composite_pal_nc }, %struct.tm6000_std_settings { i64 255, ptr @composite_pal }, %struct.tm6000_std_settings { i64 16711680, ptr @composite_secam }, %struct.tm6000_std_settings { i64 45056, ptr @composite_ntsc }], [48 x i8] zeroinitializer }, align 32
@svideo_pal_m = internal global { [25 x %struct.tm6000_reg_settings], [53 x i8] } { [25 x %struct.tm6000_reg_settings] [%struct.tm6000_reg_settings { i8 7, i8 63, i8 1 }, %struct.tm6000_reg_settings { i8 7, i8 0, i8 5 }, %struct.tm6000_reg_settings { i8 7, i8 1, i8 14 }, %struct.tm6000_reg_settings { i8 7, i8 2, i8 95 }, %struct.tm6000_reg_settings { i8 7, i8 3, i8 4 }, %struct.tm6000_reg_settings { i8 7, i8 7, i8 49 }, %struct.tm6000_reg_settings { i8 7, i8 24, i8 30 }, %struct.tm6000_reg_settings { i8 7, i8 25, i8 -125 }, %struct.tm6000_reg_settings { i8 7, i8 26, i8 10 }, %struct.tm6000_reg_settings { i8 7, i8 27, i8 -32 }, %struct.tm6000_reg_settings { i8 7, i8 28, i8 28 }, %struct.tm6000_reg_settings { i8 7, i8 29, i8 -52 }, %struct.tm6000_reg_settings { i8 7, i8 30, i8 -52 }, %struct.tm6000_reg_settings { i8 7, i8 31, i8 -51 }, %struct.tm6000_reg_settings { i8 7, i8 46, i8 -120 }, %struct.tm6000_reg_settings { i8 7, i8 48, i8 34 }, %struct.tm6000_reg_settings { i8 7, i8 49, i8 97 }, %struct.tm6000_reg_settings { i8 7, i8 51, i8 12 }, %struct.tm6000_reg_settings { i8 7, i8 53, i8 28 }, %struct.tm6000_reg_settings { i8 7, i8 -126, i8 82 }, %struct.tm6000_reg_settings { i8 7, i8 -125, i8 111 }, %struct.tm6000_reg_settings { i8 7, i8 4, i8 -36 }, %struct.tm6000_reg_settings { i8 7, i8 13, i8 7 }, %struct.tm6000_reg_settings { i8 7, i8 63, i8 0 }, %struct.tm6000_reg_settings zeroinitializer], [53 x i8] zeroinitializer }, align 32
@svideo_pal_nc = internal global { [25 x %struct.tm6000_reg_settings], [53 x i8] } { [25 x %struct.tm6000_reg_settings] [%struct.tm6000_reg_settings { i8 7, i8 63, i8 1 }, %struct.tm6000_reg_settings { i8 7, i8 0, i8 55 }, %struct.tm6000_reg_settings { i8 7, i8 1, i8 14 }, %struct.tm6000_reg_settings { i8 7, i8 2, i8 95 }, %struct.tm6000_reg_settings { i8 7, i8 3, i8 4 }, %struct.tm6000_reg_settings { i8 7, i8 7, i8 49 }, %struct.tm6000_reg_settings { i8 7, i8 24, i8 30 }, %struct.tm6000_reg_settings { i8 7, i8 25, i8 -111 }, %struct.tm6000_reg_settings { i8 7, i8 26, i8 31 }, %struct.tm6000_reg_settings { i8 7, i8 27, i8 12 }, %struct.tm6000_reg_settings { i8 7, i8 28, i8 28 }, %struct.tm6000_reg_settings { i8 7, i8 29, i8 -52 }, %struct.tm6000_reg_settings { i8 7, i8 30, i8 -52 }, %struct.tm6000_reg_settings { i8 7, i8 31, i8 -51 }, %struct.tm6000_reg_settings { i8 7, i8 46, i8 -120 }, %struct.tm6000_reg_settings { i8 7, i8 48, i8 34 }, %struct.tm6000_reg_settings { i8 7, i8 49, i8 -63 }, %struct.tm6000_reg_settings { i8 7, i8 51, i8 12 }, %struct.tm6000_reg_settings { i8 7, i8 53, i8 28 }, %struct.tm6000_reg_settings { i8 7, i8 -126, i8 82 }, %struct.tm6000_reg_settings { i8 7, i8 -125, i8 111 }, %struct.tm6000_reg_settings { i8 7, i8 4, i8 -36 }, %struct.tm6000_reg_settings { i8 7, i8 13, i8 7 }, %struct.tm6000_reg_settings { i8 7, i8 63, i8 0 }, %struct.tm6000_reg_settings zeroinitializer], [53 x i8] zeroinitializer }, align 32
@svideo_pal = internal global { [25 x %struct.tm6000_reg_settings], [53 x i8] } { [25 x %struct.tm6000_reg_settings] [%struct.tm6000_reg_settings { i8 7, i8 63, i8 1 }, %struct.tm6000_reg_settings { i8 7, i8 0, i8 51 }, %struct.tm6000_reg_settings { i8 7, i8 1, i8 14 }, %struct.tm6000_reg_settings { i8 7, i8 2, i8 95 }, %struct.tm6000_reg_settings { i8 7, i8 3, i8 4 }, %struct.tm6000_reg_settings { i8 7, i8 7, i8 48 }, %struct.tm6000_reg_settings { i8 7, i8 24, i8 37 }, %struct.tm6000_reg_settings { i8 7, i8 25, i8 -43 }, %struct.tm6000_reg_settings { i8 7, i8 26, i8 99 }, %struct.tm6000_reg_settings { i8 7, i8 27, i8 80 }, %struct.tm6000_reg_settings { i8 7, i8 28, i8 28 }, %struct.tm6000_reg_settings { i8 7, i8 29, i8 -52 }, %struct.tm6000_reg_settings { i8 7, i8 30, i8 -52 }, %struct.tm6000_reg_settings { i8 7, i8 31, i8 -51 }, %struct.tm6000_reg_settings { i8 7, i8 46, i8 -116 }, %struct.tm6000_reg_settings { i8 7, i8 48, i8 42 }, %struct.tm6000_reg_settings { i8 7, i8 49, i8 -63 }, %struct.tm6000_reg_settings { i8 7, i8 51, i8 12 }, %struct.tm6000_reg_settings { i8 7, i8 53, i8 28 }, %struct.tm6000_reg_settings { i8 7, i8 -126, i8 82 }, %struct.tm6000_reg_settings { i8 7, i8 -125, i8 111 }, %struct.tm6000_reg_settings { i8 7, i8 4, i8 -36 }, %struct.tm6000_reg_settings { i8 7, i8 13, i8 7 }, %struct.tm6000_reg_settings { i8 7, i8 63, i8 0 }, %struct.tm6000_reg_settings zeroinitializer], [53 x i8] zeroinitializer }, align 32
@svideo_secam = internal global { [24 x %struct.tm6000_reg_settings], [56 x i8] } { [24 x %struct.tm6000_reg_settings] [%struct.tm6000_reg_settings { i8 7, i8 63, i8 1 }, %struct.tm6000_reg_settings { i8 7, i8 0, i8 57 }, %struct.tm6000_reg_settings { i8 7, i8 1, i8 14 }, %struct.tm6000_reg_settings { i8 7, i8 2, i8 95 }, %struct.tm6000_reg_settings { i8 7, i8 3, i8 3 }, %struct.tm6000_reg_settings { i8 7, i8 7, i8 49 }, %struct.tm6000_reg_settings { i8 7, i8 24, i8 36 }, %struct.tm6000_reg_settings { i8 7, i8 25, i8 -110 }, %struct.tm6000_reg_settings { i8 7, i8 26, i8 -24 }, %struct.tm6000_reg_settings { i8 7, i8 27, i8 -19 }, %struct.tm6000_reg_settings { i8 7, i8 28, i8 28 }, %struct.tm6000_reg_settings { i8 7, i8 29, i8 -52 }, %struct.tm6000_reg_settings { i8 7, i8 30, i8 -52 }, %struct.tm6000_reg_settings { i8 7, i8 31, i8 -51 }, %struct.tm6000_reg_settings { i8 7, i8 46, i8 -116 }, %struct.tm6000_reg_settings { i8 7, i8 48, i8 42 }, %struct.tm6000_reg_settings { i8 7, i8 49, i8 -63 }, %struct.tm6000_reg_settings { i8 7, i8 51, i8 44 }, %struct.tm6000_reg_settings { i8 7, i8 53, i8 24 }, %struct.tm6000_reg_settings { i8 7, i8 -126, i8 66 }, %struct.tm6000_reg_settings { i8 7, i8 -125, i8 -1 }, %struct.tm6000_reg_settings { i8 7, i8 13, i8 7 }, %struct.tm6000_reg_settings { i8 7, i8 63, i8 0 }, %struct.tm6000_reg_settings zeroinitializer], [56 x i8] zeroinitializer }, align 32
@svideo_ntsc = internal global { [26 x %struct.tm6000_reg_settings], [50 x i8] } { [26 x %struct.tm6000_reg_settings] [%struct.tm6000_reg_settings { i8 7, i8 63, i8 1 }, %struct.tm6000_reg_settings { i8 7, i8 0, i8 1 }, %struct.tm6000_reg_settings { i8 7, i8 1, i8 15 }, %struct.tm6000_reg_settings { i8 7, i8 2, i8 95 }, %struct.tm6000_reg_settings { i8 7, i8 3, i8 3 }, %struct.tm6000_reg_settings { i8 7, i8 7, i8 48 }, %struct.tm6000_reg_settings { i8 7, i8 23, i8 -117 }, %struct.tm6000_reg_settings { i8 7, i8 24, i8 30 }, %struct.tm6000_reg_settings { i8 7, i8 25, i8 -117 }, %struct.tm6000_reg_settings { i8 7, i8 26, i8 -94 }, %struct.tm6000_reg_settings { i8 7, i8 27, i8 -23 }, %struct.tm6000_reg_settings { i8 7, i8 28, i8 28 }, %struct.tm6000_reg_settings { i8 7, i8 29, i8 -52 }, %struct.tm6000_reg_settings { i8 7, i8 30, i8 -52 }, %struct.tm6000_reg_settings { i8 7, i8 31, i8 -51 }, %struct.tm6000_reg_settings { i8 7, i8 46, i8 -120 }, %struct.tm6000_reg_settings { i8 7, i8 48, i8 34 }, %struct.tm6000_reg_settings { i8 7, i8 49, i8 97 }, %struct.tm6000_reg_settings { i8 7, i8 51, i8 28 }, %struct.tm6000_reg_settings { i8 7, i8 53, i8 28 }, %struct.tm6000_reg_settings { i8 7, i8 -126, i8 66 }, %struct.tm6000_reg_settings { i8 7, i8 -125, i8 111 }, %struct.tm6000_reg_settings { i8 7, i8 4, i8 -35 }, %struct.tm6000_reg_settings { i8 7, i8 13, i8 7 }, %struct.tm6000_reg_settings { i8 7, i8 63, i8 0 }, %struct.tm6000_reg_settings zeroinitializer], [50 x i8] zeroinitializer }, align 32
@tm6000_load_std._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013Error %i while setting req %d, reg %d to value %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tm6000_load_std\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/usb/tm6000/tm6000-stds.c\00", [57 x i8] zeroinitializer }, align 32
@tm6000_load_std._entry_ptr = internal global ptr @tm6000_load_std._entry, section ".printk_index", align 4
@composite_pal_m = internal global { [25 x %struct.tm6000_reg_settings], [53 x i8] } { [25 x %struct.tm6000_reg_settings] [%struct.tm6000_reg_settings { i8 7, i8 63, i8 1 }, %struct.tm6000_reg_settings { i8 7, i8 0, i8 4 }, %struct.tm6000_reg_settings { i8 7, i8 1, i8 14 }, %struct.tm6000_reg_settings { i8 7, i8 2, i8 95 }, %struct.tm6000_reg_settings { i8 7, i8 3, i8 0 }, %struct.tm6000_reg_settings { i8 7, i8 7, i8 49 }, %struct.tm6000_reg_settings { i8 7, i8 24, i8 30 }, %struct.tm6000_reg_settings { i8 7, i8 25, i8 -125 }, %struct.tm6000_reg_settings { i8 7, i8 26, i8 10 }, %struct.tm6000_reg_settings { i8 7, i8 27, i8 -32 }, %struct.tm6000_reg_settings { i8 7, i8 28, i8 28 }, %struct.tm6000_reg_settings { i8 7, i8 29, i8 -52 }, %struct.tm6000_reg_settings { i8 7, i8 30, i8 -52 }, %struct.tm6000_reg_settings { i8 7, i8 31, i8 -51 }, %struct.tm6000_reg_settings { i8 7, i8 46, i8 -120 }, %struct.tm6000_reg_settings { i8 7, i8 48, i8 32 }, %struct.tm6000_reg_settings { i8 7, i8 49, i8 97 }, %struct.tm6000_reg_settings { i8 7, i8 51, i8 12 }, %struct.tm6000_reg_settings { i8 7, i8 53, i8 28 }, %struct.tm6000_reg_settings { i8 7, i8 -126, i8 82 }, %struct.tm6000_reg_settings { i8 7, i8 -125, i8 111 }, %struct.tm6000_reg_settings { i8 7, i8 4, i8 -36 }, %struct.tm6000_reg_settings { i8 7, i8 13, i8 7 }, %struct.tm6000_reg_settings { i8 7, i8 63, i8 0 }, %struct.tm6000_reg_settings zeroinitializer], [53 x i8] zeroinitializer }, align 32
@composite_pal_nc = internal global { [25 x %struct.tm6000_reg_settings], [53 x i8] } { [25 x %struct.tm6000_reg_settings] [%struct.tm6000_reg_settings { i8 7, i8 63, i8 1 }, %struct.tm6000_reg_settings { i8 7, i8 0, i8 54 }, %struct.tm6000_reg_settings { i8 7, i8 1, i8 14 }, %struct.tm6000_reg_settings { i8 7, i8 2, i8 95 }, %struct.tm6000_reg_settings { i8 7, i8 3, i8 2 }, %struct.tm6000_reg_settings { i8 7, i8 7, i8 49 }, %struct.tm6000_reg_settings { i8 7, i8 24, i8 30 }, %struct.tm6000_reg_settings { i8 7, i8 25, i8 -111 }, %struct.tm6000_reg_settings { i8 7, i8 26, i8 31 }, %struct.tm6000_reg_settings { i8 7, i8 27, i8 12 }, %struct.tm6000_reg_settings { i8 7, i8 28, i8 28 }, %struct.tm6000_reg_settings { i8 7, i8 29, i8 -52 }, %struct.tm6000_reg_settings { i8 7, i8 30, i8 -52 }, %struct.tm6000_reg_settings { i8 7, i8 31, i8 -51 }, %struct.tm6000_reg_settings { i8 7, i8 46, i8 -116 }, %struct.tm6000_reg_settings { i8 7, i8 48, i8 44 }, %struct.tm6000_reg_settings { i8 7, i8 49, i8 -63 }, %struct.tm6000_reg_settings { i8 7, i8 51, i8 12 }, %struct.tm6000_reg_settings { i8 7, i8 53, i8 28 }, %struct.tm6000_reg_settings { i8 7, i8 -126, i8 82 }, %struct.tm6000_reg_settings { i8 7, i8 -125, i8 111 }, %struct.tm6000_reg_settings { i8 7, i8 4, i8 -36 }, %struct.tm6000_reg_settings { i8 7, i8 13, i8 7 }, %struct.tm6000_reg_settings { i8 7, i8 63, i8 0 }, %struct.tm6000_reg_settings zeroinitializer], [53 x i8] zeroinitializer }, align 32
@composite_pal = internal global { [25 x %struct.tm6000_reg_settings], [53 x i8] } { [25 x %struct.tm6000_reg_settings] [%struct.tm6000_reg_settings { i8 7, i8 63, i8 1 }, %struct.tm6000_reg_settings { i8 7, i8 0, i8 50 }, %struct.tm6000_reg_settings { i8 7, i8 1, i8 14 }, %struct.tm6000_reg_settings { i8 7, i8 2, i8 95 }, %struct.tm6000_reg_settings { i8 7, i8 3, i8 2 }, %struct.tm6000_reg_settings { i8 7, i8 7, i8 49 }, %struct.tm6000_reg_settings { i8 7, i8 24, i8 37 }, %struct.tm6000_reg_settings { i8 7, i8 25, i8 -43 }, %struct.tm6000_reg_settings { i8 7, i8 26, i8 99 }, %struct.tm6000_reg_settings { i8 7, i8 27, i8 80 }, %struct.tm6000_reg_settings { i8 7, i8 28, i8 28 }, %struct.tm6000_reg_settings { i8 7, i8 29, i8 -52 }, %struct.tm6000_reg_settings { i8 7, i8 30, i8 -52 }, %struct.tm6000_reg_settings { i8 7, i8 31, i8 -51 }, %struct.tm6000_reg_settings { i8 7, i8 46, i8 -116 }, %struct.tm6000_reg_settings { i8 7, i8 48, i8 44 }, %struct.tm6000_reg_settings { i8 7, i8 49, i8 -63 }, %struct.tm6000_reg_settings { i8 7, i8 51, i8 12 }, %struct.tm6000_reg_settings { i8 7, i8 53, i8 28 }, %struct.tm6000_reg_settings { i8 7, i8 -126, i8 82 }, %struct.tm6000_reg_settings { i8 7, i8 -125, i8 111 }, %struct.tm6000_reg_settings { i8 7, i8 4, i8 -36 }, %struct.tm6000_reg_settings { i8 7, i8 13, i8 7 }, %struct.tm6000_reg_settings { i8 7, i8 63, i8 0 }, %struct.tm6000_reg_settings zeroinitializer], [53 x i8] zeroinitializer }, align 32
@composite_secam = internal global { [24 x %struct.tm6000_reg_settings], [56 x i8] } { [24 x %struct.tm6000_reg_settings] [%struct.tm6000_reg_settings { i8 7, i8 63, i8 1 }, %struct.tm6000_reg_settings { i8 7, i8 0, i8 56 }, %struct.tm6000_reg_settings { i8 7, i8 1, i8 14 }, %struct.tm6000_reg_settings { i8 7, i8 2, i8 95 }, %struct.tm6000_reg_settings { i8 7, i8 3, i8 2 }, %struct.tm6000_reg_settings { i8 7, i8 7, i8 49 }, %struct.tm6000_reg_settings { i8 7, i8 24, i8 36 }, %struct.tm6000_reg_settings { i8 7, i8 25, i8 -110 }, %struct.tm6000_reg_settings { i8 7, i8 26, i8 -24 }, %struct.tm6000_reg_settings { i8 7, i8 27, i8 -19 }, %struct.tm6000_reg_settings { i8 7, i8 28, i8 28 }, %struct.tm6000_reg_settings { i8 7, i8 29, i8 -52 }, %struct.tm6000_reg_settings { i8 7, i8 30, i8 -52 }, %struct.tm6000_reg_settings { i8 7, i8 31, i8 -51 }, %struct.tm6000_reg_settings { i8 7, i8 46, i8 -116 }, %struct.tm6000_reg_settings { i8 7, i8 48, i8 44 }, %struct.tm6000_reg_settings { i8 7, i8 49, i8 -63 }, %struct.tm6000_reg_settings { i8 7, i8 51, i8 44 }, %struct.tm6000_reg_settings { i8 7, i8 53, i8 24 }, %struct.tm6000_reg_settings { i8 7, i8 -126, i8 66 }, %struct.tm6000_reg_settings { i8 7, i8 -125, i8 -1 }, %struct.tm6000_reg_settings { i8 7, i8 13, i8 7 }, %struct.tm6000_reg_settings { i8 7, i8 63, i8 0 }, %struct.tm6000_reg_settings zeroinitializer], [56 x i8] zeroinitializer }, align 32
@composite_ntsc = internal global { [25 x %struct.tm6000_reg_settings], [53 x i8] } { [25 x %struct.tm6000_reg_settings] [%struct.tm6000_reg_settings { i8 7, i8 63, i8 1 }, %struct.tm6000_reg_settings { i8 7, i8 0, i8 0 }, %struct.tm6000_reg_settings { i8 7, i8 1, i8 15 }, %struct.tm6000_reg_settings { i8 7, i8 2, i8 95 }, %struct.tm6000_reg_settings { i8 7, i8 3, i8 0 }, %struct.tm6000_reg_settings { i8 7, i8 7, i8 49 }, %struct.tm6000_reg_settings { i8 7, i8 24, i8 30 }, %struct.tm6000_reg_settings { i8 7, i8 25, i8 -117 }, %struct.tm6000_reg_settings { i8 7, i8 26, i8 -94 }, %struct.tm6000_reg_settings { i8 7, i8 27, i8 -23 }, %struct.tm6000_reg_settings { i8 7, i8 28, i8 28 }, %struct.tm6000_reg_settings { i8 7, i8 29, i8 -52 }, %struct.tm6000_reg_settings { i8 7, i8 30, i8 -52 }, %struct.tm6000_reg_settings { i8 7, i8 31, i8 -51 }, %struct.tm6000_reg_settings { i8 7, i8 46, i8 -120 }, %struct.tm6000_reg_settings { i8 7, i8 48, i8 34 }, %struct.tm6000_reg_settings { i8 7, i8 49, i8 97 }, %struct.tm6000_reg_settings { i8 7, i8 51, i8 28 }, %struct.tm6000_reg_settings { i8 7, i8 53, i8 28 }, %struct.tm6000_reg_settings { i8 7, i8 -126, i8 66 }, %struct.tm6000_reg_settings { i8 7, i8 -125, i8 111 }, %struct.tm6000_reg_settings { i8 7, i8 4, i8 -35 }, %struct.tm6000_reg_settings { i8 7, i8 13, i8 7 }, %struct.tm6000_reg_settings { i8 7, i8 63, i8 0 }, %struct.tm6000_reg_settings zeroinitializer], [53 x i8] zeroinitializer }, align 32
@switch.table.tm6000_set_standard = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 16, i16 0, i16 16], [26 x i8] zeroinitializer }, align 32
@switch.table.tm6000_set_standard.3 = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 0, i16 0, i16 16], [26 x i8] zeroinitializer }, align 32
@switch.table.tm6000_set_standard.4 = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 15, i16 15, i16 0], [26 x i8] zeroinitializer }, align 32
@switch.table.tm6000_set_standard.5 = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 0, i16 0, i16 1], [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.6 = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 16, i64 8192, i64 32768]
@__sancov_gen_cov_switch_values.10 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.11 = private unnamed_addr constant [14 x i8] c"tm6010_a_mode\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 11, i32 21 }
@___asan_gen_.14 = private unnamed_addr constant [12 x i8] c"svideo_stds\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 314, i32 35 }
@___asan_gen_.17 = private unnamed_addr constant [15 x i8] c"composite_stds\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 166, i32 35 }
@___asan_gen_.20 = private unnamed_addr constant [13 x i8] c"svideo_pal_m\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 174, i32 35 }
@___asan_gen_.23 = private unnamed_addr constant [14 x i8] c"svideo_pal_nc\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 202, i32 35 }
@___asan_gen_.26 = private unnamed_addr constant [11 x i8] c"svideo_pal\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 230, i32 35 }
@___asan_gen_.29 = private unnamed_addr constant [13 x i8] c"svideo_secam\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 258, i32 35 }
@___asan_gen_.32 = private unnamed_addr constant [12 x i8] c"svideo_ntsc\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 285, i32 35 }
@___asan_gen_.35 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 453, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant [16 x i8] c"composite_pal_m\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 27, i32 35 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"composite_pal_nc\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 55, i32 35 }
@___asan_gen_.53 = private unnamed_addr constant [14 x i8] c"composite_pal\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 83, i32 35 }
@___asan_gen_.56 = private unnamed_addr constant [16 x i8] c"composite_secam\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 111, i32 35 }
@___asan_gen_.59 = private unnamed_addr constant [15 x i8] c"composite_ntsc\00", align 1
@___asan_gen_.60 = private constant [42 x i8] c"../drivers/media/usb/tm6000/tm6000-stds.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 138, i32 35 }
@___asan_gen_.62 = private unnamed_addr constant [33 x i8] c"switch.table.tm6000_set_standard\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [35 x i8] c"switch.table.tm6000_set_standard.3\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [35 x i8] c"switch.table.tm6000_set_standard.4\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [35 x i8] c"switch.table.tm6000_set_standard.5\00", align 1
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_tm6010_a_mode299, ptr @__UNIQUE_ID_tm6010_a_modetype298, ptr @__param_tm6010_a_mode, ptr @tm6000_load_std._entry, ptr @tm6000_load_std._entry_ptr, ptr @tm6010_a_mode, ptr @svideo_stds, ptr @composite_stds, ptr @svideo_pal_m, ptr @svideo_pal_nc, ptr @svideo_pal, ptr @svideo_secam, ptr @svideo_ntsc, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @composite_pal_m, ptr @composite_pal_nc, ptr @composite_pal, ptr @composite_secam, ptr @composite_ntsc, ptr @switch.table.tm6000_set_standard, ptr @switch.table.tm6000_set_standard.3, ptr @switch.table.tm6000_set_standard.4, ptr @switch.table.tm6000_set_standard.5], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6010_a_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svideo_stds to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @composite_stds to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svideo_pal_m to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svideo_pal_nc to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svideo_pal to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svideo_secam to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svideo_ntsc to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_load_std._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @composite_pal_m to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @composite_pal_nc to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @composite_pal to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @composite_secam to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @composite_ntsc to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tm6000_set_standard to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tm6000_set_standard.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tm6000_set_standard.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tm6000_set_standard.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @tm6000_get_std_res(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %norm = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %norm, align 8
  %and = and i64 %1, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %spec.select = select i1 %tobool.not, i32 576, i32 480
  %2 = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %spec.select, ptr %2, align 4
  %width = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 7
  %4 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 720, ptr %width, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tm6000_set_standard(ptr noundef %dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %norm.i = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %norm.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %norm.i, align 8
  %and.i = and i64 %1, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 576, i32 480
  %2 = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %spec.select.i, ptr %2, align 4
  %width.i = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 7
  %4 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 720, ptr %width.i, align 8
  %radio = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 16
  %5 = ptrtoint ptr %radio to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %radio, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %input1 = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 31
  %7 = ptrtoint ptr %input1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %input1, align 8
  %arrayidx = getelementptr %struct.tm6000_core, ptr %dev, i32 0, i32 32, i32 %8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %rinput = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 33
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %input.0 = phi ptr [ %rinput, %if.else ], [ %arrayidx, %if.then ]
  %dev_type = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 3
  %9 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dev_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp = icmp eq i32 %10, 2
  %vmux = getelementptr inbounds %struct.tm6000_input, ptr %input.0, i32 0, i32 1
  %11 = ptrtoint ptr %vmux to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vmux, align 4
  br i1 %cmp, label %if.then2, label %if.else66

if.then2:                                         ; preds = %if.end
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %12, label %if.then2.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb8
    i32 3, label %sw.bb17
  ]

if.then2.sw.epilog_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 227, i16 noundef zeroext 244) #4
  br label %sw.epilog.sink.split

sw.bb8:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  %call9 = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 227, i16 noundef zeroext 248) #4
  br label %sw.epilog.sink.split

sw.bb17:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  %call18 = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 227, i16 noundef zeroext 252) #4
  %call19 = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 228, i16 noundef zeroext 248) #4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb17, %sw.bb8, %sw.bb
  %.sink314 = phi i16 [ 242, %sw.bb17 ], [ 241, %sw.bb8 ], [ 241, %sw.bb ]
  %.sink313 = phi i16 [ 240, %sw.bb17 ], [ 224, %sw.bb8 ], [ 224, %sw.bb ]
  %.sink = phi i16 [ 224, %sw.bb17 ], [ 232, %sw.bb8 ], [ 232, %sw.bb ]
  %reg_07_fe.0.ph = phi i8 [ -118, %sw.bb17 ], [ -117, %sw.bb8 ], [ -117, %sw.bb ]
  %reg_08_e6.0.ph = phi i8 [ 0, %sw.bb17 ], [ 15, %sw.bb8 ], [ 15, %sw.bb ]
  %call20 = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 234, i16 noundef zeroext %.sink314) #4
  %call21 = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 235, i16 noundef zeroext %.sink313) #4
  %call22 = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 236, i16 noundef zeroext 194) #4
  %call23 = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 237, i16 noundef zeroext %.sink) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.then2.sw.epilog_crit_edge
  %reg_07_fe.0 = phi i8 [ -118, %if.then2.sw.epilog_crit_edge ], [ %reg_07_fe.0.ph, %sw.epilog.sink.split ]
  %reg_08_e6.0 = phi i8 [ 15, %if.then2.sw.epilog_crit_edge ], [ %reg_08_e6.0.ph, %sw.epilog.sink.split ]
  %amux = getelementptr inbounds %struct.tm6000_input, ptr %input.0, i32 0, i32 2
  %14 = ptrtoint ptr %amux to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %amux, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %15, label %sw.epilog.sw.epilog57_crit_edge [
    i32 4, label %sw.epilog.sw.epilog57.sink.split_crit_edge
    i32 5, label %sw.bb27
    i32 6, label %sw.bb30
    i32 7, label %sw.bb43
  ]

sw.epilog.sw.epilog57.sink.split_crit_edge:       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog57.sink.split

sw.epilog.sw.epilog57_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog57

sw.bb27:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog57.sink.split

sw.bb30:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %17 = or i8 %reg_07_fe.0, 64
  %call40 = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 228, i16 noundef zeroext 243) #4
  br label %sw.epilog57.sink.split

sw.bb43:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %18 = or i8 %reg_07_fe.0, 64
  %call53 = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 228, i16 noundef zeroext 247) #4
  br label %sw.epilog57.sink.split

sw.epilog57.sink.split:                           ; preds = %sw.bb43, %sw.bb30, %sw.bb27, %sw.epilog.sw.epilog57.sink.split_crit_edge
  %.sink316 = phi i16 [ 2, %sw.bb43 ], [ 2, %sw.bb30 ], [ 8, %sw.bb27 ], [ 0, %sw.epilog.sw.epilog57.sink.split_crit_edge ]
  %.sink315 = phi i16 [ 48, %sw.bb43 ], [ 48, %sw.bb30 ], [ 16, %sw.bb27 ], [ 16, %sw.epilog.sw.epilog57.sink.split_crit_edge ]
  %reg_07_fe.1.ph = phi i8 [ %18, %sw.bb43 ], [ %17, %sw.bb30 ], [ %reg_07_fe.0, %sw.bb27 ], [ %reg_07_fe.0, %sw.epilog.sw.epilog57.sink.split_crit_edge ]
  %reg_08_f1.0.ph = phi i8 [ -2, %sw.bb43 ], [ -2, %sw.bb30 ], [ -4, %sw.bb27 ], [ -4, %sw.epilog.sw.epilog57.sink.split_crit_edge ]
  %reg_08_e2.0.ph = phi i8 [ -14, %sw.bb43 ], [ -14, %sw.bb30 ], [ -16, %sw.bb27 ], [ -16, %sw.epilog.sw.epilog57.sink.split_crit_edge ]
  %reg_08_e6.1.ph = phi i8 [ 8, %sw.bb43 ], [ 8, %sw.bb30 ], [ %reg_08_e6.0, %sw.bb27 ], [ %reg_08_e6.0, %sw.epilog.sw.epilog57.sink.split_crit_edge ]
  %call54 = tail call i32 @tm6000_set_reg_mask(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 240, i16 noundef zeroext %.sink316, i16 noundef zeroext 15) #4
  %call55 = tail call i32 @tm6000_set_reg_mask(ptr noundef %dev, i8 noundef zeroext 7, i16 noundef zeroext 7, i16 noundef zeroext %.sink315, i16 noundef zeroext 240) #4
  br label %sw.epilog57

sw.epilog57:                                      ; preds = %sw.epilog57.sink.split, %sw.epilog.sw.epilog57_crit_edge
  %reg_07_fe.1 = phi i8 [ %reg_07_fe.0, %sw.epilog.sw.epilog57_crit_edge ], [ %reg_07_fe.1.ph, %sw.epilog57.sink.split ]
  %reg_08_f1.0 = phi i8 [ -4, %sw.epilog.sw.epilog57_crit_edge ], [ %reg_08_f1.0.ph, %sw.epilog57.sink.split ]
  %reg_08_e2.0 = phi i8 [ -16, %sw.epilog.sw.epilog57_crit_edge ], [ %reg_08_e2.0.ph, %sw.epilog57.sink.split ]
  %reg_08_e6.1 = phi i8 [ %reg_08_e6.0, %sw.epilog.sw.epilog57_crit_edge ], [ %reg_08_e6.1.ph, %sw.epilog57.sink.split ]
  %conv58 = zext i8 %reg_08_e2.0 to i16
  %call59 = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 226, i16 noundef zeroext %conv58) #4
  %conv60 = zext i8 %reg_08_e6.1 to i16
  %call61 = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 230, i16 noundef zeroext %conv60) #4
  %conv62 = zext i8 %reg_08_f1.0 to i16
  %call63 = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 241, i16 noundef zeroext %conv62) #4
  %conv64 = zext i8 %reg_07_fe.1 to i16
  %call65 = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 7, i16 noundef zeroext 254, i16 noundef zeroext %conv64) #4
  br label %if.end97

if.else66:                                        ; preds = %if.end
  %switch.tableidx = add i32 %12, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %19 = icmp ult i32 %switch.tableidx, 3
  br i1 %19, label %switch.lookup, label %if.else66.sw.epilog89_crit_edge

if.else66.sw.epilog89_crit_edge:                  ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog89

switch.lookup:                                    ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [3 x i16], ptr @switch.table.tm6000_set_standard, i32 0, i32 %switch.tableidx
  %20 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %20)
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.gep331 = getelementptr inbounds [3 x i16], ptr @switch.table.tm6000_set_standard.3, i32 0, i32 %switch.tableidx
  %21 = ptrtoint ptr %switch.gep331 to i32
  call void @__asan_load2_noabort(i32 %21)
  %switch.load332 = load i16, ptr %switch.gep331, align 2
  %switch.gep333 = getelementptr inbounds [3 x i16], ptr @switch.table.tm6000_set_standard.4, i32 0, i32 %switch.tableidx
  %22 = ptrtoint ptr %switch.gep333 to i32
  call void @__asan_load2_noabort(i32 %22)
  %switch.load334 = load i16, ptr %switch.gep333, align 2
  %switch.gep335 = getelementptr inbounds [3 x i16], ptr @switch.table.tm6000_set_standard.5, i32 0, i32 %switch.tableidx
  %23 = ptrtoint ptr %switch.gep335 to i32
  call void @__asan_load2_noabort(i32 %23)
  %switch.load336 = load i16, ptr %switch.gep335, align 2
  %call82 = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 7, i16 noundef zeroext 227, i16 noundef zeroext %switch.load) #4
  %call83 = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 7, i16 noundef zeroext 229, i16 noundef zeroext %switch.load332) #4
  %call84 = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 7, i16 noundef zeroext 232, i16 noundef zeroext %switch.load334) #4
  %v_gpio85 = getelementptr inbounds %struct.tm6000_input, ptr %input.0, i32 0, i32 3
  %24 = ptrtoint ptr %v_gpio85 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %v_gpio85, align 4
  %conv86 = trunc i32 %25 to i16
  %call87 = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 3, i16 noundef zeroext %conv86, i16 noundef zeroext %switch.load336) #4
  br label %sw.epilog89

sw.epilog89:                                      ; preds = %switch.lookup, %if.else66.sw.epilog89_crit_edge
  %amux90 = getelementptr inbounds %struct.tm6000_input, ptr %input.0, i32 0, i32 2
  %26 = ptrtoint ptr %amux90 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %amux90, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %27, label %sw.epilog89.if.end97_crit_edge [
    i32 4, label %sw.bb91
    i32 5, label %sw.bb93
  ]

sw.epilog89.if.end97_crit_edge:                   ; preds = %sw.epilog89
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end97

sw.bb91:                                          ; preds = %sw.epilog89
  call void @__sanitizer_cov_trace_pc() #6
  %call92 = tail call i32 @tm6000_set_reg_mask(ptr noundef %dev, i8 noundef zeroext 7, i16 noundef zeroext 235, i16 noundef zeroext 0, i16 noundef zeroext 15) #4
  br label %if.end97

sw.bb93:                                          ; preds = %sw.epilog89
  call void @__sanitizer_cov_trace_pc() #6
  %call94 = tail call i32 @tm6000_set_reg_mask(ptr noundef %dev, i8 noundef zeroext 7, i16 noundef zeroext 235, i16 noundef zeroext 4, i16 noundef zeroext 15) #4
  br label %if.end97

if.end97:                                         ; preds = %sw.bb93, %sw.bb91, %sw.epilog89.if.end97_crit_edge, %sw.epilog57
  %29 = ptrtoint ptr %input.0 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %input.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %30)
  %cmp98 = icmp eq i32 %30, 4
  %31 = ptrtoint ptr %norm.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %norm.i, align 8
  %and = and i64 %32, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool104.not = icmp eq i64 %and, 0
  br i1 %cmp98, label %for.cond.preheader, label %for.cond110.preheader

for.cond110.preheader:                            ; preds = %if.end97
  br i1 %tobool104.not, label %for.inc124, label %for.cond110.preheader.if.then119_crit_edge

for.cond110.preheader.if.then119_crit_edge:       ; preds = %for.cond110.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then119

for.cond.preheader:                               ; preds = %if.end97
  br i1 %tobool104.not, label %for.inc, label %for.cond.preheader.if.then105_crit_edge

for.cond.preheader.if.then105_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then105

if.then105:                                       ; preds = %for.inc.3.if.then105_crit_edge, %for.inc.2.if.then105_crit_edge, %for.inc.1.if.then105_crit_edge, %for.inc.if.then105_crit_edge, %for.cond.preheader.if.then105_crit_edge
  %i.0280.lcssa = phi i32 [ 0, %for.cond.preheader.if.then105_crit_edge ], [ 1, %for.inc.if.then105_crit_edge ], [ 2, %for.inc.1.if.then105_crit_edge ], [ 3, %for.inc.2.if.then105_crit_edge ], [ 4, %for.inc.3.if.then105_crit_edge ]
  %common = getelementptr [5 x %struct.tm6000_std_settings], ptr @svideo_stds, i32 0, i32 %i.0280.lcssa, i32 1
  %33 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %common, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not34.i = icmp eq i8 %36, 0
  br i1 %tobool.not34.i, label %if.then105.if.end130_crit_edge, label %for.body.i.preheader

if.then105.if.end130_crit_edge:                   ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end130

for.body.i.preheader:                             ; preds = %if.then105
  %reg.i281 = getelementptr %struct.tm6000_reg_settings, ptr %34, i32 0, i32 1
  %37 = ptrtoint ptr %reg.i281 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %reg.i281, align 1
  %conv.i282 = zext i8 %38 to i16
  %value.i283 = getelementptr %struct.tm6000_reg_settings, ptr %34, i32 0, i32 2
  %39 = ptrtoint ptr %value.i283 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %value.i283, align 1
  %conv5.i284 = zext i8 %40 to i16
  %call.i285 = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext %36, i16 noundef zeroext %conv.i282, i16 noundef zeroext %conv5.i284) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i285)
  %cmp.i286 = icmp slt i32 %call.i285, 0
  br i1 %cmp.i286, label %for.body.i.preheader.do.end.i_crit_edge, label %for.body.i.preheader.for.cond.i_crit_edge

for.body.i.preheader.for.cond.i_crit_edge:        ; preds = %for.body.i.preheader
  br label %for.cond.i

for.body.i.preheader.do.end.i_crit_edge:          ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.i.preheader.for.cond.i_crit_edge
  %i.035.i287 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %for.body.i.preheader.for.cond.i_crit_edge ]
  %inc.i = add i32 %i.035.i287, 1
  %arrayidx.i = getelementptr %struct.tm6000_reg_settings, ptr %34, i32 %inc.i
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i229 = icmp eq i8 %42, 0
  br i1 %tobool.not.i229, label %for.cond.i.if.end130_crit_edge, label %for.body.i

for.cond.i.if.end130_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end130

for.body.i:                                       ; preds = %for.cond.i
  %reg.i = getelementptr %struct.tm6000_reg_settings, ptr %34, i32 %inc.i, i32 1
  %43 = ptrtoint ptr %reg.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %reg.i, align 1
  %conv.i = zext i8 %44 to i16
  %value.i = getelementptr %struct.tm6000_reg_settings, ptr %34, i32 %inc.i, i32 2
  %45 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %value.i, align 1
  %conv5.i = zext i8 %46 to i16
  %call.i = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext %42, i16 noundef zeroext %conv.i, i16 noundef zeroext %conv5.i) #4
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %for.body.i.do.end.i_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i

for.body.i.do.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

do.end.i:                                         ; preds = %for.body.i.do.end.i_crit_edge, %for.body.i.preheader.do.end.i_crit_edge
  %arrayidx36.i.lcssa = phi ptr [ %34, %for.body.i.preheader.do.end.i_crit_edge ], [ %arrayidx.i, %for.body.i.do.end.i_crit_edge ]
  %reg.i.lcssa = phi ptr [ %reg.i281, %for.body.i.preheader.do.end.i_crit_edge ], [ %reg.i, %for.body.i.do.end.i_crit_edge ]
  %value.i.lcssa = phi ptr [ %value.i283, %for.body.i.preheader.do.end.i_crit_edge ], [ %value.i, %for.body.i.do.end.i_crit_edge ]
  %call.i.lcssa = phi i32 [ %call.i285, %for.body.i.preheader.do.end.i_crit_edge ], [ %call.i, %for.body.i.do.end.i_crit_edge ]
  %47 = ptrtoint ptr %arrayidx36.i.lcssa to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx36.i.lcssa, align 1
  %conv9.i = zext i8 %48 to i32
  %49 = ptrtoint ptr %reg.i.lcssa to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %reg.i.lcssa, align 1
  %conv12.i = zext i8 %50 to i32
  %51 = ptrtoint ptr %value.i.lcssa to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %value.i.lcssa, align 1
  %conv15.i = zext i8 %52 to i32
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call.i.lcssa, i32 noundef %conv9.i, i32 noundef %conv12.i, i32 noundef %conv15.i) #7
  br label %cleanup

for.inc:                                          ; preds = %for.cond.preheader
  %and.1 = and i64 %32, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.1)
  %tobool104.not.1 = icmp eq i64 %and.1, 0
  br i1 %tobool104.not.1, label %for.inc.1, label %for.inc.if.then105_crit_edge

for.inc.if.then105_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then105

for.inc.1:                                        ; preds = %for.inc
  %and.2 = and i64 %32, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.2)
  %tobool104.not.2 = icmp eq i64 %and.2, 0
  br i1 %tobool104.not.2, label %for.inc.2, label %for.inc.1.if.then105_crit_edge

for.inc.1.if.then105_crit_edge:                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then105

for.inc.2:                                        ; preds = %for.inc.1
  %and.3 = and i64 %32, 16711680
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.3)
  %tobool104.not.3 = icmp eq i64 %and.3, 0
  br i1 %tobool104.not.3, label %for.inc.3, label %for.inc.2.if.then105_crit_edge

for.inc.2.if.then105_crit_edge:                   ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then105

for.inc.3:                                        ; preds = %for.inc.2
  %and.4 = and i64 %32, 45056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.4)
  %tobool104.not.4 = icmp eq i64 %and.4, 0
  br i1 %tobool104.not.4, label %for.inc.3.cleanup_crit_edge, label %for.inc.3.if.then105_crit_edge

for.inc.3.if.then105_crit_edge:                   ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then105

for.inc.3.cleanup_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then119:                                       ; preds = %for.inc124.3.if.then119_crit_edge, %for.inc124.2.if.then119_crit_edge, %for.inc124.1.if.then119_crit_edge, %for.inc124.if.then119_crit_edge, %for.cond110.preheader.if.then119_crit_edge
  %i.1269.lcssa = phi i32 [ 0, %for.cond110.preheader.if.then119_crit_edge ], [ 1, %for.inc124.if.then119_crit_edge ], [ 2, %for.inc124.1.if.then119_crit_edge ], [ 3, %for.inc124.2.if.then119_crit_edge ], [ 4, %for.inc124.3.if.then119_crit_edge ]
  %common121 = getelementptr [5 x %struct.tm6000_std_settings], ptr @composite_stds, i32 0, i32 %i.1269.lcssa, i32 1
  %53 = ptrtoint ptr %common121 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %common121, align 8
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %54, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not34.i230 = icmp eq i8 %56, 0
  br i1 %tobool.not34.i230, label %if.then119.if.end130_crit_edge, label %for.body.i243.preheader

if.then119.if.end130_crit_edge:                   ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end130

for.body.i243.preheader:                          ; preds = %if.then119
  %reg.i237270 = getelementptr %struct.tm6000_reg_settings, ptr %54, i32 0, i32 1
  %57 = ptrtoint ptr %reg.i237270 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %reg.i237270, align 1
  %conv.i238271 = zext i8 %58 to i16
  %value.i239272 = getelementptr %struct.tm6000_reg_settings, ptr %54, i32 0, i32 2
  %59 = ptrtoint ptr %value.i239272 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %value.i239272, align 1
  %conv5.i240273 = zext i8 %60 to i16
  %call.i241274 = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext %56, i16 noundef zeroext %conv.i238271, i16 noundef zeroext %conv5.i240273) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i241274)
  %cmp.i242275 = icmp slt i32 %call.i241274, 0
  br i1 %cmp.i242275, label %for.body.i243.preheader.do.end.i248_crit_edge, label %for.body.i243.preheader.for.cond.i234_crit_edge

for.body.i243.preheader.for.cond.i234_crit_edge:  ; preds = %for.body.i243.preheader
  br label %for.cond.i234

for.body.i243.preheader.do.end.i248_crit_edge:    ; preds = %for.body.i243.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i248

for.cond.i234:                                    ; preds = %for.body.i243.for.cond.i234_crit_edge, %for.body.i243.preheader.for.cond.i234_crit_edge
  %i.035.i236276 = phi i32 [ %inc.i231, %for.body.i243.for.cond.i234_crit_edge ], [ 0, %for.body.i243.preheader.for.cond.i234_crit_edge ]
  %inc.i231 = add i32 %i.035.i236276, 1
  %arrayidx.i232 = getelementptr %struct.tm6000_reg_settings, ptr %54, i32 %inc.i231
  %61 = ptrtoint ptr %arrayidx.i232 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.i232, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i233 = icmp eq i8 %62, 0
  br i1 %tobool.not.i233, label %for.cond.i234.if.end130_crit_edge, label %for.body.i243

for.cond.i234.if.end130_crit_edge:                ; preds = %for.cond.i234
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end130

for.body.i243:                                    ; preds = %for.cond.i234
  %reg.i237 = getelementptr %struct.tm6000_reg_settings, ptr %54, i32 %inc.i231, i32 1
  %63 = ptrtoint ptr %reg.i237 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %reg.i237, align 1
  %conv.i238 = zext i8 %64 to i16
  %value.i239 = getelementptr %struct.tm6000_reg_settings, ptr %54, i32 %inc.i231, i32 2
  %65 = ptrtoint ptr %value.i239 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %value.i239, align 1
  %conv5.i240 = zext i8 %66 to i16
  %call.i241 = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext %62, i16 noundef zeroext %conv.i238, i16 noundef zeroext %conv5.i240) #4
  %cmp.i242 = icmp slt i32 %call.i241, 0
  br i1 %cmp.i242, label %for.body.i243.do.end.i248_crit_edge, label %for.body.i243.for.cond.i234_crit_edge

for.body.i243.for.cond.i234_crit_edge:            ; preds = %for.body.i243
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i234

for.body.i243.do.end.i248_crit_edge:              ; preds = %for.body.i243
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i248

do.end.i248:                                      ; preds = %for.body.i243.do.end.i248_crit_edge, %for.body.i243.preheader.do.end.i248_crit_edge
  %arrayidx36.i235.lcssa = phi ptr [ %54, %for.body.i243.preheader.do.end.i248_crit_edge ], [ %arrayidx.i232, %for.body.i243.do.end.i248_crit_edge ]
  %reg.i237.lcssa = phi ptr [ %reg.i237270, %for.body.i243.preheader.do.end.i248_crit_edge ], [ %reg.i237, %for.body.i243.do.end.i248_crit_edge ]
  %value.i239.lcssa = phi ptr [ %value.i239272, %for.body.i243.preheader.do.end.i248_crit_edge ], [ %value.i239, %for.body.i243.do.end.i248_crit_edge ]
  %call.i241.lcssa = phi i32 [ %call.i241274, %for.body.i243.preheader.do.end.i248_crit_edge ], [ %call.i241, %for.body.i243.do.end.i248_crit_edge ]
  %67 = ptrtoint ptr %arrayidx36.i235.lcssa to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx36.i235.lcssa, align 1
  %conv9.i244 = zext i8 %68 to i32
  %69 = ptrtoint ptr %reg.i237.lcssa to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %reg.i237.lcssa, align 1
  %conv12.i245 = zext i8 %70 to i32
  %71 = ptrtoint ptr %value.i239.lcssa to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %value.i239.lcssa, align 1
  %conv15.i246 = zext i8 %72 to i32
  %call16.i247 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call.i241.lcssa, i32 noundef %conv9.i244, i32 noundef %conv12.i245, i32 noundef %conv15.i246) #7
  br label %cleanup

for.inc124:                                       ; preds = %for.cond110.preheader
  %and117.1 = and i64 %32, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and117.1)
  %tobool118.not.1 = icmp eq i64 %and117.1, 0
  br i1 %tobool118.not.1, label %for.inc124.1, label %for.inc124.if.then119_crit_edge

for.inc124.if.then119_crit_edge:                  ; preds = %for.inc124
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then119

for.inc124.1:                                     ; preds = %for.inc124
  %and117.2 = and i64 %32, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and117.2)
  %tobool118.not.2 = icmp eq i64 %and117.2, 0
  br i1 %tobool118.not.2, label %for.inc124.2, label %for.inc124.1.if.then119_crit_edge

for.inc124.1.if.then119_crit_edge:                ; preds = %for.inc124.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then119

for.inc124.2:                                     ; preds = %for.inc124.1
  %and117.3 = and i64 %32, 16711680
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and117.3)
  %tobool118.not.3 = icmp eq i64 %and117.3, 0
  br i1 %tobool118.not.3, label %for.inc124.3, label %for.inc124.2.if.then119_crit_edge

for.inc124.2.if.then119_crit_edge:                ; preds = %for.inc124.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then119

for.inc124.3:                                     ; preds = %for.inc124.2
  %and117.4 = and i64 %32, 45056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and117.4)
  %tobool118.not.4 = icmp eq i64 %and117.4, 0
  br i1 %tobool118.not.4, label %for.inc124.3.cleanup_crit_edge, label %for.inc124.3.if.then119_crit_edge

for.inc124.3.if.then119_crit_edge:                ; preds = %for.inc124.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then119

for.inc124.3.cleanup_crit_edge:                   ; preds = %for.inc124.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end130:                                        ; preds = %for.cond.i234.if.end130_crit_edge, %if.then119.if.end130_crit_edge, %for.cond.i.if.end130_crit_edge, %if.then105.if.end130_crit_edge
  %73 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %dev_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %74)
  %cmp132 = icmp eq i32 %74, 2
  br i1 %cmp132, label %land.lhs.true, label %if.end130.if.end142_crit_edge

if.end130.if.end142_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end142

land.lhs.true:                                    ; preds = %if.end130
  %amux134 = getelementptr inbounds %struct.tm6000_input, ptr %input.0, i32 0, i32 2
  %75 = ptrtoint ptr %amux134 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %amux134, align 4
  %77 = and i32 %76, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %77)
  %switch = icmp eq i32 %77, 6
  br i1 %switch, label %if.then140, label %land.lhs.true.if.end142_crit_edge

land.lhs.true.if.end142_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end142

if.then140:                                       ; preds = %land.lhs.true
  %78 = ptrtoint ptr %radio to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %radio, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool.not.i251 = icmp eq i8 %79, 0
  br i1 %tobool.not.i251, label %if.end19.i, label %if.then.i

if.then.i:                                        ; preds = %if.then140
  %call.i252 = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 1, i16 noundef zeroext 0) #4
  %call1.i = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 2, i16 noundef zeroext 4) #4
  %call2.i = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 3, i16 noundef zeroext 0) #4
  %call3.i = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 4, i16 noundef zeroext 128) #4
  %call4.i = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 5, i16 noundef zeroext 12) #4
  %amode.i = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 39
  %80 = ptrtoint ptr %amode.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %amode.i, align 8
  %82 = zext i32 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %81, label %if.then.i.if.end11.i_crit_edge [
    i32 0, label %if.then.i.if.end11.sink.split.i_crit_edge
    i32 1, label %if.then9.i
  ]

if.then.i.if.end11.sink.split.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11.sink.split.i

if.then.i.if.end11.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11.i

if.then9.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11.sink.split.i

if.end11.sink.split.i:                            ; preds = %if.then9.i, %if.then.i.if.end11.sink.split.i_crit_edge
  %.sink.i = phi i16 [ 2, %if.then9.i ], [ 0, %if.then.i.if.end11.sink.split.i_crit_edge ]
  %call10.i = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 6, i16 noundef zeroext %.sink.i) #4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end11.sink.split.i, %if.then.i.if.end11.i_crit_edge
  %call12.i = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 9, i16 noundef zeroext 24) #4
  %call13.i = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 12, i16 noundef zeroext 10) #4
  %call14.i = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 13, i16 noundef zeroext 64) #4
  %call15.i = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 241, i16 noundef zeroext 254) #4
  %call16.i253 = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 30, i16 noundef zeroext 19) #4
  %call17.i = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 1, i16 noundef zeroext 128) #4
  %call18.i = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 7, i16 noundef zeroext 254, i16 noundef zeroext 255) #4
  br label %if.end142

if.end19.i:                                       ; preds = %if.then140
  %83 = ptrtoint ptr %norm.i to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %norm.i, align 8
  %85 = trunc i64 %84 to i16
  %trunc.i = and i16 %85, -20480
  %86 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.9)
  switch i16 %trunc.i, label %if.else32.i [
    i16 -32768, label %if.end19.i.if.end89.i_crit_edge
    i16 8192, label %if.then28.i
  ]

if.end19.i.if.end89.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end89.i

if.then28.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end89.i

if.else32.i:                                      ; preds = %if.end19.i
  %and34.i = and i64 %84, 46848
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and34.i)
  %tobool35.not.i = icmp eq i64 %and34.i, 0
  br i1 %tobool35.not.i, label %if.else40.i, label %if.else32.i.if.end89.i_crit_edge

if.else32.i.if.end89.i_crit_edge:                 ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end89.i

if.else40.i:                                      ; preds = %if.else32.i
  %87 = load i32, ptr @tm6010_a_mode, align 4
  %88 = zext i32 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %87, label %if.else40.i.if.end89.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb54.i
    i32 2, label %sw.bb61.i
    i32 3, label %sw.bb80.i
  ]

if.else40.i.if.end89.i_crit_edge:                 ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end89.i

sw.bb.i:                                          ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #6
  %and42.i = and i64 %84, 16711680
  call void @__sanitizer_cov_trace_const_cmp8(i64 4194304, i64 %and42.i)
  %cmp43.i = icmp eq i64 %and42.i, 4194304
  %..i = select i1 %cmp43.i, i8 1, i8 17
  br label %if.end89.i

sw.bb54.i:                                        ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #6
  %and56.i = and i64 %84, 3277024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and56.i)
  %tobool57.not.i = icmp eq i64 %and56.i, 0
  %.1.i = select i1 %tobool57.not.i, i8 5, i8 9
  br label %if.end89.i

sw.bb61.i:                                        ; preds = %if.else40.i
  %and63.i = and i64 %84, 3277024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and63.i)
  %tobool64.not.i = icmp eq i64 %and63.i, 0
  br i1 %tobool64.not.i, label %if.else66.i, label %sw.bb61.i.if.end89.i_crit_edge

sw.bb61.i.if.end89.i_crit_edge:                   ; preds = %sw.bb61.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end89.i

if.else66.i:                                      ; preds = %sw.bb61.i
  %and68.i = and i64 %84, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and68.i)
  %tobool69.not.i = icmp eq i64 %and68.i, 0
  br i1 %tobool69.not.i, label %if.else71.i, label %if.else66.i.if.end89.i_crit_edge

if.else66.i.if.end89.i_crit_edge:                 ; preds = %if.else66.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end89.i

if.else71.i:                                      ; preds = %if.else66.i
  call void @__sanitizer_cov_trace_pc() #6
  %and73.i = and i64 %84, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and73.i)
  %tobool74.not.i = icmp eq i64 %and73.i, 0
  %.2.i = select i1 %tobool74.not.i, i8 4, i8 2
  %.3.i = select i1 %tobool74.not.i, i8 7, i8 10
  br label %if.end89.i

sw.bb80.i:                                        ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #6
  %and82.i = and i64 %84, 3277024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and82.i)
  %tobool83.not.i = icmp eq i64 %and82.i, 0
  %.4.i = select i1 %tobool83.not.i, i8 2, i8 11
  br label %if.end89.i

if.end89.i:                                       ; preds = %sw.bb80.i, %if.else71.i, %if.else66.i.if.end89.i_crit_edge, %sw.bb61.i.if.end89.i_crit_edge, %sw.bb54.i, %sw.bb.i, %if.else40.i.if.end89.i_crit_edge, %if.else32.i.if.end89.i_crit_edge, %if.then28.i, %if.end19.i.if.end89.i_crit_edge
  %areg_02.0.i = phi i8 [ 4, %if.then28.i ], [ 4, %if.else40.i.if.end89.i_crit_edge ], [ 4, %if.end19.i.if.end89.i_crit_edge ], [ 4, %if.else32.i.if.end89.i_crit_edge ], [ 4, %sw.bb.i ], [ 4, %sw.bb54.i ], [ 4, %sw.bb61.i.if.end89.i_crit_edge ], [ 4, %if.else66.i.if.end89.i_crit_edge ], [ %.2.i, %if.else71.i ], [ 4, %sw.bb80.i ]
  %areg_05.0.i = phi i8 [ 67, %if.then28.i ], [ 1, %if.else40.i.if.end89.i_crit_edge ], [ 5, %if.end19.i.if.end89.i_crit_edge ], [ 35, %if.else32.i.if.end89.i_crit_edge ], [ %..i, %sw.bb.i ], [ %.1.i, %sw.bb54.i ], [ 6, %sw.bb61.i.if.end89.i_crit_edge ], [ 8, %if.else66.i.if.end89.i_crit_edge ], [ %.3.i, %if.else71.i ], [ %.4.i, %sw.bb80.i ]
  %call90.i = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 1, i16 noundef zeroext 0) #4
  %conv91.i = zext i8 %areg_02.0.i to i16
  %call92.i = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 2, i16 noundef zeroext %conv91.i) #4
  %call93.i = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 3, i16 noundef zeroext 0) #4
  %call94.i = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 4, i16 noundef zeroext 160) #4
  %conv95.i = zext i8 %areg_05.0.i to i16
  %call96.i = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 5, i16 noundef zeroext %conv95.i) #4
  %call98.i = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 6, i16 noundef zeroext 2) #4
  %call99.i = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 7, i16 noundef zeroext 0) #4
  %call100.i = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 8, i16 noundef zeroext 0) #4
  %call101.i = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 9, i16 noundef zeroext 8) #4
  %call102.i = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 10, i16 noundef zeroext 145) #4
  %call103.i = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 11, i16 noundef zeroext 32) #4
  %call104.i = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 12, i16 noundef zeroext 18) #4
  %call105.i = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 13, i16 noundef zeroext 32) #4
  %call106.i = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 14, i16 noundef zeroext 240) #4
  %call107.i = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 15, i16 noundef zeroext 128) #4
  %call108.i = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 16, i16 noundef zeroext 192) #4
  %call109.i = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 17, i16 noundef zeroext 128) #4
  %call110.i = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 18, i16 noundef zeroext 18) #4
  %call111.i = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 19, i16 noundef zeroext 254) #4
  %call112.i = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 20, i16 noundef zeroext 32) #4
  %call113.i = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 21, i16 noundef zeroext 20) #4
  %call114.i = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 22, i16 noundef zeroext 254) #4
  %call115.i = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 23, i16 noundef zeroext 1) #4
  %call116.i = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 24, i16 noundef zeroext 160) #4
  %call117.i = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 25, i16 noundef zeroext 50) #4
  %call118.i = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 26, i16 noundef zeroext 100) #4
  %call119.i = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 27, i16 noundef zeroext 32) #4
  %call120.i = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 28, i16 noundef zeroext 0) #4
  %call121.i = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 29, i16 noundef zeroext 0) #4
  %call122.i = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 30, i16 noundef zeroext 19) #4
  %call123.i = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 31, i16 noundef zeroext 0) #4
  %call124.i = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 32, i16 noundef zeroext 0) #4
  %call125.i = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 8, i16 noundef zeroext 1, i16 noundef zeroext 128) #4
  br label %if.end142

if.end142:                                        ; preds = %if.end89.i, %if.end11.i, %land.lhs.true.if.end142_crit_edge, %if.end130.if.end142_crit_edge
  tail call void @msleep(i32 noundef 40) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end142, %for.inc124.3.cleanup_crit_edge, %do.end.i248, %for.inc.3.cleanup_crit_edge, %do.end.i
  %retval.0 = phi i32 [ 0, %if.end142 ], [ %call.i.lcssa, %do.end.i ], [ %call.i241.lcssa, %do.end.i248 ], [ -22, %for.inc.3.cleanup_crit_edge ], [ -22, %for.inc124.3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tm6000_set_reg(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tm6000_set_reg_mask(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !28, !30, !32, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__param_tm6010_a_mode, !1, !"__param_tm6010_a_mode", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/tm6000/tm6000-stds.c", i32 12, i32 1}
!2 = !{ptr @__UNIQUE_ID_tm6010_a_modetype298, !1, !"__UNIQUE_ID_tm6010_a_modetype298", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_tm6010_a_mode299, !4, !"__UNIQUE_ID_tm6010_a_mode299", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/tm6000/tm6000-stds.c", i32 13, i32 1}
!5 = !{ptr @tm6010_a_mode, !6, !"tm6010_a_mode", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/tm6000/tm6000-stds.c", i32 11, i32 21}
!7 = !{ptr @__param_str_tm6010_a_mode, !1, !"__param_str_tm6010_a_mode", i1 false, i1 false}
!8 = !{ptr @svideo_stds, !9, !"svideo_stds", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/tm6000/tm6000-stds.c", i32 314, i32 35}
!10 = !{ptr @svideo_pal_m, !11, !"svideo_pal_m", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/tm6000/tm6000-stds.c", i32 174, i32 35}
!12 = !{ptr @svideo_pal_nc, !13, !"svideo_pal_nc", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/tm6000/tm6000-stds.c", i32 202, i32 35}
!14 = !{ptr @svideo_pal, !15, !"svideo_pal", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/tm6000/tm6000-stds.c", i32 230, i32 35}
!16 = !{ptr @svideo_secam, !17, !"svideo_secam", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/tm6000/tm6000-stds.c", i32 258, i32 35}
!18 = !{ptr @svideo_ntsc, !19, !"svideo_ntsc", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/tm6000/tm6000-stds.c", i32 285, i32 35}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/tm6000/tm6000-stds.c", i32 453, i32 4}
!22 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @tm6000_load_std._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @tm6000_load_std._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @composite_stds, !27, !"composite_stds", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/tm6000/tm6000-stds.c", i32 166, i32 35}
!28 = !{ptr @composite_pal_m, !29, !"composite_pal_m", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/tm6000/tm6000-stds.c", i32 27, i32 35}
!30 = !{ptr @composite_pal_nc, !31, !"composite_pal_nc", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/tm6000/tm6000-stds.c", i32 55, i32 35}
!32 = !{ptr @composite_pal, !33, !"composite_pal", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/tm6000/tm6000-stds.c", i32 83, i32 35}
!34 = !{ptr @composite_secam, !35, !"composite_secam", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/tm6000/tm6000-stds.c", i32 111, i32 35}
!36 = !{ptr @composite_ntsc, !37, !"composite_ntsc", i1 false, i1 false}
!37 = !{!"../drivers/media/usb/tm6000/tm6000-stds.c", i32 138, i32 35}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
