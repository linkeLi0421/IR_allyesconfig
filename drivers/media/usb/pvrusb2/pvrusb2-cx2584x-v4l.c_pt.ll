; ModuleID = '/llk/IR_all_yes/drivers/media/usb/pvrusb2/pvrusb2-cx2584x-v4l.c_pt.bc'
source_filename = "../drivers/media/usb/pvrusb2/pvrusb2-cx2584x-v4l.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.routing_scheme = type { ptr, i32 }
%struct.routing_scheme_item = type { i32, i32 }
%struct.pvr2_hdw = type { ptr, ptr, %struct.v4l2_device, ptr, %struct.work_struct, ptr, %struct.mutex, i32, [32 x i8], [32 x i8], %struct.i2c_adapter, %struct.i2c_algorithm, [128 x ptr], i32, i32, i32, %struct.IR_i2c_init_data, [500 x i32], i32, %struct.mutex, i32, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.completion, [64 x i8], i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_tuner, i32, %struct.v4l2_cropcap, i32, i64, i64, i64, i32, i32, %struct.pvr2_ctl_info, %struct.pvr2_ctl_info, %struct.pvr2_ctl_info, %struct.pvr2_ctl_info, [32 x ptr], [32 x [16 x i8]], i32, i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.atomic_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_cropcap = type { i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_fract }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.pvr2_ctl_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %union.anon.143 }
%union.anon.143 = type { %struct.anon.144 }
%struct.anon.144 = type { i32, i32 }
%struct.cx2341x_mpeg_params = type { i32, i32, i16, i16, i16, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i16, i32, i32, i32, i16, i32, i16, i16, i16, i16 }
%struct.pvr2_device_desc = type { ptr, ptr, %struct.pvr2_string_table, %struct.pvr2_device_client_table, %struct.pvr2_string_table, ptr, i64, i32, i8, i8, i8, i8, i16 }
%struct.pvr2_device_client_table = type { ptr, i8 }
%struct.pvr2_string_table = type { ptr, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.106 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.106 = type { %struct.anon.107 }
%struct.anon.107 = type { i32, i32 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_audio_ops = type { ptr, ptr, ptr, ptr }

@pvrusb2_debug = external dso_local local_unnamed_addr global i32, align 4
@pvr2_cx25840_subdev_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016pvrusb2: subdev cx2584x update...\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pvr2_cx25840_subdev_update\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/media/usb/pvrusb2/pvrusb2-cx2584x-v4l.c\00", [48 x i8] zeroinitializer }, align 32
@pvr2_cx25840_subdev_update._entry_ptr = internal global ptr @pvr2_cx25840_subdev_update._entry, section ".printk_index", align 4
@routing_schemes = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @routing_def0, ptr @routing_defgv, ptr null, ptr @routing_defav400, ptr @routing_def160xxx], [44 x i8] zeroinitializer }, align 32
@pvr2_cx25840_subdev_update._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"\016pvrusb2: *** WARNING *** subdev cx2584x set_input: Invalid routing scheme (%u) and/or input (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@pvr2_cx25840_subdev_update._entry_ptr.5 = internal global ptr @pvr2_cx25840_subdev_update._entry.3, section ".printk_index", align 4
@pvr2_cx25840_subdev_update._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016pvrusb2: subdev cx2584x set_input vid=0x%x aud=0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@pvr2_cx25840_subdev_update._entry_ptr.8 = internal global ptr @pvr2_cx25840_subdev_update._entry.6, section ".printk_index", align 4
@routing_def0 = internal constant { %struct.routing_scheme, [24 x i8] } { %struct.routing_scheme { ptr @routing_scheme0, i32 5 }, [24 x i8] zeroinitializer }, align 32
@routing_defgv = internal constant { %struct.routing_scheme, [24 x i8] } { %struct.routing_scheme { ptr @routing_schemegv, i32 5 }, [24 x i8] zeroinitializer }, align 32
@routing_defav400 = internal constant { %struct.routing_scheme, [24 x i8] } { %struct.routing_scheme { ptr @routing_schemeav400, i32 4 }, [24 x i8] zeroinitializer }, align 32
@routing_def160xxx = internal constant { %struct.routing_scheme, [24 x i8] } { %struct.routing_scheme { ptr @routing_scheme160xxx, i32 5 }, [24 x i8] zeroinitializer }, align 32
@routing_scheme0 = internal constant { [5 x %struct.routing_scheme_item], [56 x i8] } { [5 x %struct.routing_scheme_item] [%struct.routing_scheme_item { i32 7, i32 8 }, %struct.routing_scheme_item zeroinitializer, %struct.routing_scheme_item { i32 3, i32 0 }, %struct.routing_scheme_item { i32 1296, i32 0 }, %struct.routing_scheme_item { i32 3, i32 0 }], [56 x i8] zeroinitializer }, align 32
@routing_schemegv = internal constant { [5 x %struct.routing_scheme_item], [56 x i8] } { [5 x %struct.routing_scheme_item] [%struct.routing_scheme_item { i32 2, i32 5 }, %struct.routing_scheme_item zeroinitializer, %struct.routing_scheme_item { i32 1, i32 0 }, %struct.routing_scheme_item { i32 1072, i32 0 }, %struct.routing_scheme_item { i32 1, i32 0 }], [56 x i8] zeroinitializer }, align 32
@routing_schemeav400 = internal constant { [4 x %struct.routing_scheme_item], [32 x i8] } { [4 x %struct.routing_scheme_item] [%struct.routing_scheme_item zeroinitializer, %struct.routing_scheme_item zeroinitializer, %struct.routing_scheme_item { i32 1, i32 0 }, %struct.routing_scheme_item { i32 1056, i32 0 }], [32 x i8] zeroinitializer }, align 32
@routing_scheme160xxx = internal constant { [5 x %struct.routing_scheme_item], [56 x i8] } { [5 x %struct.routing_scheme_item] [%struct.routing_scheme_item { i32 7, i32 8 }, %struct.routing_scheme_item zeroinitializer, %struct.routing_scheme_item { i32 3, i32 0 }, %struct.routing_scheme_item { i32 1296, i32 0 }, %struct.routing_scheme_item { i32 4, i32 6 }], [56 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 137, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [16 x i8] c"routing_schemes\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 128, i32 37 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 149, i32 4 }
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 156, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [13 x i8] c"routing_def0\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 55, i32 36 }
@___asan_gen_.39 = private unnamed_addr constant [14 x i8] c"routing_defgv\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 82, i32 36 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"routing_defav400\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 99, i32 36 }
@___asan_gen_.45 = private unnamed_addr constant [18 x i8] c"routing_def160xxx\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 123, i32 36 }
@___asan_gen_.48 = private unnamed_addr constant [16 x i8] c"routing_scheme0\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 36, i32 41 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"routing_schemegv\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 61, i32 41 }
@___asan_gen_.54 = private unnamed_addr constant [20 x i8] c"routing_schemeav400\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 88, i32 41 }
@___asan_gen_.57 = private unnamed_addr constant [21 x i8] c"routing_scheme160xxx\00", align 1
@___asan_gen_.58 = private constant [51 x i8] c"../drivers/media/usb/pvrusb2/pvrusb2-cx2584x-v4l.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 104, i32 41 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @pvr2_cx25840_subdev_update._entry, ptr @pvr2_cx25840_subdev_update._entry.3, ptr @pvr2_cx25840_subdev_update._entry.6, ptr @pvr2_cx25840_subdev_update._entry_ptr, ptr @pvr2_cx25840_subdev_update._entry_ptr.5, ptr @pvr2_cx25840_subdev_update._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @routing_schemes, ptr @.str.4, ptr @.str.7, ptr @routing_def0, ptr @routing_defgv, ptr @routing_defav400, ptr @routing_def160xxx, ptr @routing_scheme0, ptr @routing_schemegv, ptr @routing_schemeav400, ptr @routing_scheme160xxx], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_cx25840_subdev_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @routing_schemes to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_cx25840_subdev_update._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_cx25840_subdev_update._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @routing_def0 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @routing_defgv to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @routing_defav400 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @routing_def160xxx to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @routing_scheme0 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @routing_schemegv to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @routing_schemeav400 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @routing_scheme160xxx to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pvr2_cx25840_subdev_update(ptr nocapture noundef readonly %hdw, ptr noundef %sd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %0 = load i32, ptr @pvrusb2_debug, align 4
  %and = and i32 %0, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #5
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %input_dirty = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 137
  %1 = ptrtoint ptr %input_dirty to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %input_dirty, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool3.not = icmp eq i32 %2, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %do.end2.if.then5_crit_edge

do.end2.if.then5_crit_edge:                       ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then5

lor.lhs.false:                                    ; preds = %do.end2
  %force_dirty = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 58
  %3 = ptrtoint ptr %force_dirty to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %force_dirty, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool4.not = icmp eq i32 %4, 0
  br i1 %tobool4.not, label %lor.lhs.false.if.end54_crit_edge, label %lor.lhs.false.if.then5_crit_edge

lor.lhs.false.if.then5_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then5

lor.lhs.false.if.end54_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end54

if.then5:                                         ; preds = %lor.lhs.false.if.then5_crit_edge, %do.end2.if.then5_crit_edge
  %hdw_desc = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 3
  %5 = ptrtoint ptr %hdw_desc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hdw_desc, align 8
  %signal_routing_scheme = getelementptr inbounds %struct.pvr2_device_desc, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %signal_routing_scheme to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %signal_routing_scheme, align 4
  %conv = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %8)
  %cmp = icmp ult i8 %8, 5
  br i1 %cmp, label %cond.end, label %if.then5.do.body17_crit_edge

if.then5.do.body17_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body17

cond.end:                                         ; preds = %if.then5
  %arrayidx = getelementptr [5 x ptr], ptr @routing_schemes, i32 0, i32 %conv
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp7 = icmp eq i8 %8, 2
  br i1 %cmp7, label %cond.end.do.body17_crit_edge, label %lor.lhs.false9

cond.end.do.body17_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body17

lor.lhs.false9:                                   ; preds = %cond.end
  %input_val = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 136
  %11 = ptrtoint ptr %input_val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %input_val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp10 = icmp slt i32 %12, 0
  br i1 %cmp10, label %lor.lhs.false9.do.body17_crit_edge, label %lor.lhs.false12

lor.lhs.false9.do.body17_crit_edge:               ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body17

lor.lhs.false12:                                  ; preds = %lor.lhs.false9
  %cnt = getelementptr inbounds %struct.routing_scheme, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp14.not = icmp ult i32 %12, %14
  br i1 %cmp14.not, label %if.end29, label %lor.lhs.false12.do.body17_crit_edge

lor.lhs.false12.do.body17_crit_edge:              ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body17

do.body17:                                        ; preds = %lor.lhs.false12.do.body17_crit_edge, %lor.lhs.false9.do.body17_crit_edge, %cond.end.do.body17_crit_edge, %if.then5.do.body17_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %15 = load i32, ptr @pvrusb2_debug, align 4
  %and18 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %do.body17.if.end54_crit_edge, label %do.end22

do.body17.if.end54_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end54

do.end22:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #4
  %input_val24 = getelementptr inbounds %struct.pvr2_hdw, ptr %hdw, i32 0, i32 136
  %16 = ptrtoint ptr %input_val24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %input_val24, align 4
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv, i32 noundef %17) #5
  br label %if.end54

if.end29:                                         ; preds = %lor.lhs.false12
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %10, align 4
  %arrayidx31 = getelementptr %struct.routing_scheme_item, ptr %19, i32 %12
  %20 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx31, align 4
  %aud = getelementptr %struct.routing_scheme_item, ptr %19, i32 %12, i32 1
  %22 = ptrtoint ptr %aud to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %aud, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pvrusb2_debug to i32))
  %24 = load i32, ptr @pvrusb2_debug, align 4
  %and36 = and i32 %24, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end29.do.end46_crit_edge, label %do.end41

if.end29.do.end46_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.end46

do.end41:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #4
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %21, i32 noundef %23) #5
  br label %do.end46

do.end46:                                         ; preds = %do.end41, %if.end29.do.end46_crit_edge
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 6
  %25 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %video, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %call47 = tail call i32 %30(ptr noundef %sd, i32 noundef %21, i32 noundef 0, i32 noundef 0) #2
  %31 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops, align 4
  %audio = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %audio, align 4
  %s_routing49 = getelementptr inbounds %struct.v4l2_subdev_audio_ops, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %s_routing49 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %s_routing49, align 4
  %call50 = tail call i32 %36(ptr noundef %sd, i32 noundef %23, i32 noundef 0, i32 noundef 0) #2
  br label %if.end54

if.end54:                                         ; preds = %do.end46, %do.end22, %do.body17.if.end54_crit_edge, %lor.lhs.false.if.end54_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }
attributes #5 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-cx2584x-v4l.c", i32 137, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @pvr2_cx25840_subdev_update._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @pvr2_cx25840_subdev_update._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-cx2584x-v4l.c", i32 149, i32 4}
!8 = !{ptr @pvr2_cx25840_subdev_update._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @pvr2_cx25840_subdev_update._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-cx2584x-v4l.c", i32 156, i32 3}
!12 = !{ptr @pvr2_cx25840_subdev_update._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @pvr2_cx25840_subdev_update._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @routing_schemes, !15, !"routing_schemes", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-cx2584x-v4l.c", i32 128, i32 37}
!16 = !{ptr @routing_def0, !17, !"routing_def0", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-cx2584x-v4l.c", i32 55, i32 36}
!18 = !{ptr @routing_scheme0, !19, !"routing_scheme0", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-cx2584x-v4l.c", i32 36, i32 41}
!20 = !{ptr @routing_defgv, !21, !"routing_defgv", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-cx2584x-v4l.c", i32 82, i32 36}
!22 = !{ptr @routing_schemegv, !23, !"routing_schemegv", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-cx2584x-v4l.c", i32 61, i32 41}
!24 = !{ptr @routing_defav400, !25, !"routing_defav400", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-cx2584x-v4l.c", i32 99, i32 36}
!26 = !{ptr @routing_schemeav400, !27, !"routing_schemeav400", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-cx2584x-v4l.c", i32 88, i32 41}
!28 = !{ptr @routing_def160xxx, !29, !"routing_def160xxx", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-cx2584x-v4l.c", i32 123, i32 36}
!30 = !{ptr @routing_scheme160xxx, !31, !"routing_scheme160xxx", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-cx2584x-v4l.c", i32 104, i32 41}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
