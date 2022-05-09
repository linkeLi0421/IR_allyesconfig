; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/msp3400-kthreads.c_pt.bc'
source_filename = "../drivers/media/i2c/msp3400-kthreads.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon = type { i32, i32, i32, ptr, i64 }
%struct.msp3400c_init_data_dem = type { [6 x i32], [6 x i32], i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.msp3400c_carrier_detect = type { i32, ptr }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.msp_state = type { %struct.v4l2_subdev, %struct.v4l2_ctrl_handler, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.99, i32, ptr, %struct.wait_queue_head, i8, [2 x %struct.media_pad] }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.88 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.88 = type { %struct.anon.89 }
%struct.anon.89 = type { i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.99 = type { ptr, ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }

@msp_stdlist = internal constant { [22 x %struct.anon], [144 x i8] } { [22 x %struct.anon] [%struct.anon { i32 0, i32 0, i32 0, ptr @.str.83, i64 16777215 }, %struct.anon { i32 1, i32 0, i32 0, ptr @.str.84, i64 16777215 }, %struct.anon { i32 2, i32 4096000, i32 4296249, ptr @.str.85, i64 46848 }, %struct.anon { i32 3, i32 5006222, i32 5226666, ptr @.str.86, i64 327687 }, %struct.anon { i32 4, i32 5916444, i32 5696000, ptr @.str.87, i64 3277024 }, %struct.anon { i32 5, i32 5916444, i32 6136889, ptr @.str.88, i64 3277024 }, %struct.anon { i32 6, i32 5916444, i32 5916444, ptr @.str.89, i64 3277024 }, %struct.anon { i32 7, i32 5916444, i32 5226666, ptr @.str.90, i64 3277024 }, %struct.anon { i32 8, i32 5006222, i32 5324800, ptr @.str.91, i64 327687 }, %struct.anon { i32 9, i32 5916444, i32 5324800, ptr @.str.92, i64 12582912 }, %struct.anon { i32 10, i32 5461333, i32 5961955, ptr @.str.93, i64 16 }, %struct.anon { i32 11, i32 5916444, i32 5324800, ptr @.str.94, i64 3277024 }, %struct.anon { i32 12, i32 5916444, i32 5324800, ptr @.str.95, i64 3277024 }, %struct.anon { i32 13, i32 5916444, i32 5324800, ptr @.str.96, i64 3277024 }, %struct.anon { i32 32, i32 4096000, i32 4096000, ptr @.str.97, i64 5888 }, %struct.anon { i32 33, i32 4096000, i32 4096000, ptr @.str.98, i64 5888 }, %struct.anon { i32 48, i32 4096000, i32 4096000, ptr @.str.99, i64 8192 }, %struct.anon { i32 64, i32 9739378, i32 9739378, ptr @.str.100, i64 16777215 }, %struct.anon { i32 80, i32 5916444, i32 5916444, ptr @.str.101, i64 16777215 }, %struct.anon { i32 81, i32 6389760, i32 6553600, ptr @.str.102, i64 16777215 }, %struct.anon { i32 96, i32 6553600, i32 6553600, ptr @.str.103, i64 16777215 }, %struct.anon { i32 -1, i32 0, i32 0, ptr null, i64 0 }], [144 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@msp3400c_init_data = internal constant { [8 x %struct.msp3400c_init_data_dem], [128 x i8] } { [8 x %struct.msp3400c_init_data_dem] [%struct.msp3400c_init_data_dem { [6 x i32] [i32 75, i32 19, i32 36, i32 35, i32 39, i32 40], [6 x i32] [i32 75, i32 19, i32 36, i32 35, i32 39, i32 40], i32 5006222, i32 5006222, i32 208, i32 1280, i32 32, i32 12288 }, %struct.msp3400c_init_data_dem { [6 x i32] [i32 -1, i32 -1, i32 -8, i32 2, i32 59, i32 126], [6 x i32] [i32 -1, i32 -1, i32 -8, i32 2, i32 59, i32 126], i32 5006222, i32 5006222, i32 208, i32 256, i32 32, i32 12288 }, %struct.msp3400c_init_data_dem { [6 x i32] [i32 -8, i32 -8, i32 4, i32 6, i32 78, i32 107], [6 x i32] [i32 -8, i32 -8, i32 4, i32 6, i32 78, i32 107], i32 9739378, i32 9739378, i32 208, i32 1152, i32 32, i32 12288 }, %struct.msp3400c_init_data_dem { [6 x i32] [i32 3, i32 18, i32 27, i32 48, i32 66, i32 72], [6 x i32] [i32 3, i32 18, i32 27, i32 48, i32 66, i32 72], i32 5006222, i32 5006222, i32 208, i32 1152, i32 48, i32 12288 }, %struct.msp3400c_init_data_dem { [6 x i32] [i32 1, i32 9, i32 14, i32 24, i32 33, i32 37], [6 x i32] [i32 3, i32 18, i32 27, i32 48, i32 66, i32 72], i32 5916444, i32 5916444, i32 198, i32 1152, i32 0, i32 12288 }, %struct.msp3400c_init_data_dem { [6 x i32] [i32 -2, i32 -8, i32 -10, i32 10, i32 50, i32 86], [6 x i32] [i32 3, i32 18, i32 27, i32 48, i32 66, i32 72], i32 5006222, i32 5006222, i32 208, i32 64, i32 288, i32 12288 }, %struct.msp3400c_init_data_dem { [6 x i32] [i32 2, i32 4, i32 -6, i32 -4, i32 40, i32 94], [6 x i32] [i32 3, i32 18, i32 27, i32 48, i32 66, i32 72], i32 5461333, i32 5461333, i32 208, i32 64, i32 288, i32 12288 }, %struct.msp3400c_init_data_dem { [6 x i32] [i32 -2, i32 -8, i32 -10, i32 10, i32 50, i32 86], [6 x i32] [i32 -4, i32 -12, i32 -9, i32 23, i32 79, i32 126], i32 5916444, i32 5916444, i32 198, i32 320, i32 288, i32 31744 }], [128 x i8] zeroinitializer }, align 32
@msp_debug = external dso_local local_unnamed_addr global i32, align 4
@msp3400c_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 209, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"set_mode: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"msp3400c_set_mode\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/media/i2c/msp3400-kthreads.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@msp3400c_set_mode._entry_ptr = internal global ptr @msp3400c_set_mode._entry, section ".printk_index", align 4
@msp3400c_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 497, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"msp3400 daemon started\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"msp3400c_thread\00", [16 x i8] zeroinitializer }, align 32
@msp3400c_thread._entry_ptr = internal global ptr @msp3400c_thread._entry, section ".printk_index", align 4
@msp3400c_thread._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.3, i32 501, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"msp3400 thread: sleep\0A\00", [41 x i8] zeroinitializer }, align 32
@msp3400c_thread._entry_ptr.10 = internal global ptr @msp3400c_thread._entry.8, section ".printk_index", align 4
@msp3400c_thread._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.3, i32 503, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"msp3400 thread: wakeup\0A\00", [40 x i8] zeroinitializer }, align 32
@msp3400c_thread._entry_ptr.13 = internal global ptr @msp3400c_thread._entry.11, section ".printk_index", align 4
@msp3400c_thread._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.3, i32 506, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"thread: restart scan\0A\00", [42 x i8] zeroinitializer }, align 32
@msp3400c_thread._entry_ptr.16 = internal global ptr @msp3400c_thread._entry.14, section ".printk_index", align 4
@msp3400c_thread._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.7, ptr @.str.3, i32 514, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"thread: no carrier scan\0A\00", [39 x i8] zeroinitializer }, align 32
@msp3400c_thread._entry_ptr.19 = internal global ptr @msp3400c_thread._entry.17, section ".printk_index", align 4
@msp3400c_carrier_detect_main = internal constant { [4 x %struct.msp3400c_carrier_detect], [32 x i8] } { [4 x %struct.msp3400c_carrier_detect] [%struct.msp3400c_carrier_detect { i32 4096000, ptr @.str.104 }, %struct.msp3400c_carrier_detect { i32 5006222, ptr @.str.105 }, %struct.msp3400c_carrier_detect { i32 5461333, ptr @.str.106 }, %struct.msp3400c_carrier_detect { i32 5916444, ptr @.str.107 }], [32 x i8] zeroinitializer }, align 32
@msp_amsound = external dso_local local_unnamed_addr global i8, align 1
@msp3400c_thread._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.7, ptr @.str.3, i32 542, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"AM sound override\0A\00", [45 x i8] zeroinitializer }, align 32
@msp3400c_thread._entry_ptr.22 = internal global ptr @msp3400c_thread._entry.20, section ".printk_index", align 4
@msp3400c_thread._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.7, ptr @.str.3, i32 557, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"carrier1 val: %5d / %s\0A\00", [40 x i8] zeroinitializer }, align 32
@msp3400c_thread._entry_ptr.25 = internal global ptr @msp3400c_thread._entry.23, section ".printk_index", align 4
@msp3400c_carrier_detect_55 = internal constant { [2 x %struct.msp3400c_carrier_detect], [16 x i8] } { [2 x %struct.msp3400c_carrier_detect] [%struct.msp3400c_carrier_detect { i32 5226666, ptr @.str.108 }, %struct.msp3400c_carrier_detect { i32 5324800, ptr @.str.109 }], [16 x i8] zeroinitializer }, align 32
@msp3400c_carrier_detect_65 = internal constant { [6 x %struct.msp3400c_carrier_detect], [48 x i8] } { [6 x %struct.msp3400c_carrier_detect] [%struct.msp3400c_carrier_detect { i32 5324800, ptr @.str.110 }, %struct.msp3400c_carrier_detect { i32 5696000, ptr @.str.111 }, %struct.msp3400c_carrier_detect { i32 6136889, ptr @.str.112 }, %struct.msp3400c_carrier_detect { i32 6389760, ptr @.str.113 }, %struct.msp3400c_carrier_detect { i32 6553600, ptr @.str.114 }, %struct.msp3400c_carrier_detect { i32 6717440, ptr @.str.115 }], [48 x i8] zeroinitializer }, align 32
@msp3400c_thread._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.7, ptr @.str.3, i32 596, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"carrier2 val: %5d / %s\0A\00", [40 x i8] zeroinitializer }, align 32
@msp3400c_thread._entry_ptr.28 = internal global ptr @msp3400c_thread._entry.26, section ".printk_index", align 4
@msp3400c_thread._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.7, ptr @.str.3, i32 681, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"thread: exit\0A\00", [18 x i8] zeroinitializer }, align 32
@msp3400c_thread._entry_ptr.31 = internal global ptr @msp3400c_thread._entry.29, section ".printk_index", align 4
@msp3410d_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 692, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"msp3410 daemon started\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"msp3410d_thread\00", [16 x i8] zeroinitializer }, align 32
@msp3410d_thread._entry_ptr = internal global ptr @msp3410d_thread._entry, section ".printk_index", align 4
@msp3410d_thread._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.3, i32 696, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"msp3410 thread: sleep\0A\00", [41 x i8] zeroinitializer }, align 32
@msp3410d_thread._entry_ptr.36 = internal global ptr @msp3410d_thread._entry.34, section ".printk_index", align 4
@msp3410d_thread._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.3, i32 698, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"msp3410 thread: wakeup\0A\00", [40 x i8] zeroinitializer }, align 32
@msp3410d_thread._entry_ptr.39 = internal global ptr @msp3410d_thread._entry.37, section ".printk_index", align 4
@msp3410d_thread._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.33, ptr @.str.3, i32 701, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@msp3410d_thread._entry_ptr.41 = internal global ptr @msp3410d_thread._entry.40, section ".printk_index", align 4
@msp3410d_thread._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.33, ptr @.str.3, i32 709, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@msp3410d_thread._entry_ptr.43 = internal global ptr @msp3410d_thread._entry.42, section ".printk_index", align 4
@msp3410d_thread._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.33, ptr @.str.3, i32 736, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"setting standard: %s (0x%04x)\0A\00", [33 x i8] zeroinitializer }, align 32
@msp3410d_thread._entry_ptr.46 = internal global ptr @msp3410d_thread._entry.44, section ".printk_index", align 4
@msp3410d_thread._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.33, ptr @.str.3, i32 753, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"detection still in progress\0A\00", [35 x i8] zeroinitializer }, align 32
@msp3410d_thread._entry_ptr.49 = internal global ptr @msp3410d_thread._entry.47, section ".printk_index", align 4
@msp3410d_thread._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.33, ptr @.str.3, i32 760, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"current standard: %s (0x%04x)\0A\00", [33 x i8] zeroinitializer }, align 32
@msp3410d_thread._entry_ptr.52 = internal global ptr @msp3410d_thread._entry.50, section ".printk_index", align 4
@msp3410d_thread._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.33, ptr @.str.3, i32 771, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"autodetection failed, switching to backup standard: %s (0x%04x)\0A\00", [63 x i8] zeroinitializer }, align 32
@msp3410d_thread._entry_ptr.55 = internal global ptr @msp3410d_thread._entry.53, section ".printk_index", align 4
@msp3410d_thread._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.33, ptr @.str.3, i32 843, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@msp3410d_thread._entry_ptr.57 = internal global ptr @msp3410d_thread._entry.56, section ".printk_index", align 4
@msp34xxg_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.3, i32 989, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"msp34xxg daemon started\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"msp34xxg_thread\00", [16 x i8] zeroinitializer }, align 32
@msp34xxg_thread._entry_ptr = internal global ptr @msp34xxg_thread._entry, section ".printk_index", align 4
@msp34xxg_thread._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.3, i32 993, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"msp34xxg thread: sleep\0A\00", [40 x i8] zeroinitializer }, align 32
@msp34xxg_thread._entry_ptr.62 = internal global ptr @msp34xxg_thread._entry.60, section ".printk_index", align 4
@msp34xxg_thread._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.59, ptr @.str.3, i32 995, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"msp34xxg thread: wakeup\0A\00", [39 x i8] zeroinitializer }, align 32
@msp34xxg_thread._entry_ptr.65 = internal global ptr @msp34xxg_thread._entry.63, section ".printk_index", align 4
@msp34xxg_thread._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.59, ptr @.str.3, i32 998, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@msp34xxg_thread._entry_ptr.67 = internal global ptr @msp34xxg_thread._entry.66, section ".printk_index", align 4
@msp34xxg_thread._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.59, ptr @.str.3, i32 1006, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@msp34xxg_thread._entry_ptr.69 = internal global ptr @msp34xxg_thread._entry.68, section ".printk_index", align 4
@msp_standard = external dso_local local_unnamed_addr global i32, align 4
@msp34xxg_thread._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.59, ptr @.str.3, i32 1023, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"started autodetect, waiting for result\0A\00", [56 x i8] zeroinitializer }, align 32
@msp34xxg_thread._entry_ptr.72 = internal global ptr @msp34xxg_thread._entry.70, section ".printk_index", align 4
@msp34xxg_thread._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.59, ptr @.str.3, i32 1035, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@msp34xxg_thread._entry_ptr.74 = internal global ptr @msp34xxg_thread._entry.73, section ".printk_index", align 4
@msp34xxg_thread._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.59, ptr @.str.3, i32 1039, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"detection still in progress after 10 tries. giving up.\0A\00", [40 x i8] zeroinitializer }, align 32
@msp34xxg_thread._entry_ptr.77 = internal global ptr @msp34xxg_thread._entry.75, section ".printk_index", align 4
@msp34xxg_thread._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.59, ptr @.str.3, i32 1046, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"detected standard: %s (0x%04x)\0A\00", [32 x i8] zeroinitializer }, align 32
@msp34xxg_thread._entry_ptr.80 = internal global ptr @msp34xxg_thread._entry.78, section ".printk_index", align 4
@msp34xxg_thread._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.59, ptr @.str.3, i32 1077, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@msp34xxg_thread._entry_ptr.82 = internal global ptr @msp34xxg_thread._entry.81, section ".printk_index", align 4
@.str.83 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"could not detect sound standard\00", [32 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"autodetect start\00", [47 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"4.5/4.72  M Dual FM-Stereo\00", [37 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"5.5/5.74  B/G Dual FM-Stereo\00", [35 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"6.5/6.25  D/K1 Dual FM-Stereo\00", [34 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"6.5/6.74  D/K2 Dual FM-Stereo\00", [34 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"6.5  D/K FM-Mono (HDEV3)\00", [39 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"6.5/5.74  D/K3 Dual FM-Stereo\00", [34 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"5.5/5.85  B/G NICAM FM\00", [41 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"6.5/5.85  L NICAM AM\00", [43 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"6.0/6.55  I NICAM FM\00", [43 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"6.5/5.85  D/K NICAM FM\00", [41 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"6.5/5.85  D/K NICAM FM (HDEV2)\00", [33 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"6.5/5.85  D/K NICAM FM (HDEV3)\00", [33 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"4.5  M BTSC-Stereo\00", [45 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"4.5  M BTSC-Mono + SAP\00", [41 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"4.5  M EIA-J Japan Stereo\00", [38 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"10.7  FM-Stereo Radio\00", [42 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"6.5  SAT-Mono\00", [18 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"7.02/7.20  SAT-Stereo\00", [42 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"7.2  SAT ADR\00", [19 x i8] zeroinitializer }, align 32
@msp_dolby = external dso_local local_unnamed_addr global i8, align 1
@.str.104 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"4.5   NTSC\00", [21 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"5.5   PAL B/G\00", [18 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"6.0   PAL I\00", [20 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"6.5   PAL D/K + SAT + SECAM\00", [36 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"5.742 PAL B/G FM-stereo\00", [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"5.85  PAL B/G NICAM\00", [44 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"5.85  PAL D/K + SECAM NICAM\00", [36 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"6.25  PAL D/K1 FM-stereo\00", [39 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"6.74  PAL D/K2 FM-stereo\00", [39 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"7.02  PAL SAT FM-stereo s/b\00", [36 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"7.20  PAL SAT FM-stereo s\00", [38 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"7.38  PAL SAT FM-stereo b\00", [38 x i8] zeroinitializer }, align 32
@msp3400c_set_audmode.strmode = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120], [44 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mono\00", [27 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"stereo\00", [25 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lang2\00", [26 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lang1\00", [26 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lang1+lang2\00", [20 x i8] zeroinitializer }, align 32
@msp3400c_set_audmode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.3, i32 257, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"set_audmode called with mode=%d instead of set_source (ignored)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"msp3400c_set_audmode\00", [43 x i8] zeroinitializer }, align 32
@msp3400c_set_audmode._entry_ptr = internal global ptr @msp3400c_set_audmode._entry, section ".printk_index", align 4
@msp3400c_set_audmode._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.122, ptr @.str.3, i32 284, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"FM set_audmode: %s\0A\00", [44 x i8] zeroinitializer }, align 32
@msp3400c_set_audmode._entry_ptr.125 = internal global ptr @msp3400c_set_audmode._entry.123, section ".printk_index", align 4
@msp3400c_set_audmode._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.122, ptr @.str.3, i32 298, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SAT set_audmode: %s\0A\00", [43 x i8] zeroinitializer }, align 32
@msp3400c_set_audmode._entry_ptr.128 = internal global ptr @msp3400c_set_audmode._entry.126, section ".printk_index", align 4
@msp3400c_set_audmode._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.122, ptr @.str.3, i32 319, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NICAM set_audmode: %s\0A\00", [41 x i8] zeroinitializer }, align 32
@msp3400c_set_audmode._entry_ptr.131 = internal global ptr @msp3400c_set_audmode._entry.129, section ".printk_index", align 4
@msp3400c_set_audmode._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.122, ptr @.str.3, i32 325, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"BTSC set_audmode: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@msp3400c_set_audmode._entry_ptr.134 = internal global ptr @msp3400c_set_audmode._entry.132, section ".printk_index", align 4
@msp3400c_set_audmode._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.122, ptr @.str.3, i32 329, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"extern set_audmode: %s\0A\00", [40 x i8] zeroinitializer }, align 32
@msp3400c_set_audmode._entry_ptr.137 = internal global ptr @msp3400c_set_audmode._entry.135, section ".printk_index", align 4
@msp3400c_set_audmode._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.122, ptr @.str.3, i32 334, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"FM-Radio set_audmode: %s\0A\00", [38 x i8] zeroinitializer }, align 32
@msp3400c_set_audmode._entry_ptr.140 = internal global ptr @msp3400c_set_audmode._entry.138, section ".printk_index", align 4
@msp3400c_set_audmode._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.122, ptr @.str.3, i32 337, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mono set_audmode\0A\00", [46 x i8] zeroinitializer }, align 32
@msp3400c_set_audmode._entry_ptr.143 = internal global ptr @msp3400c_set_audmode._entry.141, section ".printk_index", align 4
@msp3400c_set_audmode._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.122, ptr @.str.3, i32 342, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"set audmode %d\0A\00", [16 x i8] zeroinitializer }, align 32
@msp3400c_set_audmode._entry_ptr.146 = internal global ptr @msp3400c_set_audmode._entry.144, section ".printk_index", align 4
@msp3400c_set_audmode._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.122, ptr @.str.3, i32 350, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"switching to AM mono\0A\00", [42 x i8] zeroinitializer }, align 32
@msp3400c_set_audmode._entry_ptr.149 = internal global ptr @msp3400c_set_audmode._entry.147, section ".printk_index", align 4
@msp3400c_set_audmode._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.122, ptr @.str.3, i32 367, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"set_audmode final source/matrix = 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@msp3400c_set_audmode._entry_ptr.152 = internal global ptr @msp3400c_set_audmode._entry.150, section ".printk_index", align 4
@msp3400c_print_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.154, ptr @.str.3, i32 379, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mono sound carrier: %d.%03d MHz\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"msp3400c_print_mode\00", [44 x i8] zeroinitializer }, align 32
@msp3400c_print_mode._entry_ptr = internal global ptr @msp3400c_print_mode._entry, section ".printk_index", align 4
@msp3400c_print_mode._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.154, ptr @.str.3, i32 383, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"main sound carrier: %d.%03d MHz\0A\00", [63 x i8] zeroinitializer }, align 32
@msp3400c_print_mode._entry_ptr.157 = internal global ptr @msp3400c_print_mode._entry.155, section ".printk_index", align 4
@msp3400c_print_mode._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.154, ptr @.str.3, i32 387, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"NICAM/FM carrier  : %d.%03d MHz\0A\00", [63 x i8] zeroinitializer }, align 32
@msp3400c_print_mode._entry_ptr.160 = internal global ptr @msp3400c_print_mode._entry.158, section ".printk_index", align 4
@msp3400c_print_mode._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.154, ptr @.str.3, i32 391, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"NICAM/AM carrier  : %d.%03d MHz\0A\00", [63 x i8] zeroinitializer }, align 32
@msp3400c_print_mode._entry_ptr.163 = internal global ptr @msp3400c_print_mode._entry.161, section ".printk_index", align 4
@msp3400c_print_mode._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.154, ptr @.str.3, i32 395, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"FM-stereo carrier : %d.%03d MHz\0A\00", [63 x i8] zeroinitializer }, align 32
@msp3400c_print_mode._entry_ptr.166 = internal global ptr @msp3400c_print_mode._entry.164, section ".printk_index", align 4
@msp_once = external dso_local local_unnamed_addr global i8, align 1
@msp_stereo_thresh = external dso_local local_unnamed_addr global i32, align 4
@msp34xxg_modus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.168, ptr @.str.3, i32 860, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"selected radio modus\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"msp34xxg_modus\00", [17 x i8] zeroinitializer }, align 32
@msp34xxg_modus._entry_ptr = internal global ptr @msp34xxg_modus._entry, section ".printk_index", align 4
@msp34xxg_modus._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.168, ptr @.str.3, i32 864, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"selected M (EIA-J) modus\0A\00", [38 x i8] zeroinitializer }, align 32
@msp34xxg_modus._entry_ptr.171 = internal global ptr @msp34xxg_modus._entry.169, section ".printk_index", align 4
@msp34xxg_modus._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.168, ptr @.str.3, i32 868, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"selected M (A2) modus\0A\00", [41 x i8] zeroinitializer }, align 32
@msp34xxg_modus._entry_ptr.174 = internal global ptr @msp34xxg_modus._entry.172, section ".printk_index", align 4
@msp34xxg_modus._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.168, ptr @.str.3, i32 872, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"selected SECAM-L modus\0A\00", [40 x i8] zeroinitializer }, align 32
@msp34xxg_modus._entry_ptr.177 = internal global ptr @msp34xxg_modus._entry.175, section ".printk_index", align 4
@msp34xxg_modus._entry.178 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.168, ptr @.str.3, i32 876, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"selected M (BTSC) modus\0A\00", [39 x i8] zeroinitializer }, align 32
@msp34xxg_modus._entry_ptr.180 = internal global ptr @msp34xxg_modus._entry.178, section ".printk_index", align 4
@msp34xxg_set_source._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.182, ptr @.str.3, i32 921, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"set source to %d (0x%x) for output %02x\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"msp34xxg_set_source\00", [44 x i8] zeroinitializer }, align 32
@msp34xxg_set_source._entry_ptr = internal global ptr @msp34xxg_set_source._entry, section ".printk_index", align 4
@msp3400c_detect_stereo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.184, ptr @.str.3, i32 415, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"stereo detect register: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"msp3400c_detect_stereo\00", [41 x i8] zeroinitializer }, align 32
@msp3400c_detect_stereo._entry_ptr = internal global ptr @msp3400c_detect_stereo._entry, section ".printk_index", align 4
@msp3400c_detect_stereo._entry.185 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.184, ptr @.str.3, i32 430, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nicam sync=%d, mode=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@msp3400c_detect_stereo._entry_ptr.187 = internal global ptr @msp3400c_detect_stereo._entry.185, section ".printk_index", align 4
@msp3400c_detect_stereo._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.184, ptr @.str.3, i32 462, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"watch: rxsubchans %02x => %02x\0A\00", [32 x i8] zeroinitializer }, align 32
@msp3400c_detect_stereo._entry_ptr.190 = internal global ptr @msp3400c_detect_stereo._entry.188, section ".printk_index", align 4
@msp3400c_detect_stereo._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.184, ptr @.str.3, i32 468, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"watch: nicam %d => %d\0A\00", [41 x i8] zeroinitializer }, align 32
@msp3400c_detect_stereo._entry_ptr.193 = internal global ptr @msp3400c_detect_stereo._entry.191, section ".printk_index", align 4
@msp34xxg_detect_stereo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.195, ptr @.str.3, i32 1106, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"status=0x%x, stereo=%d, bilingual=%d -> rxsubchans=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"msp34xxg_detect_stereo\00", [41 x i8] zeroinitializer }, align 32
@msp34xxg_detect_stereo._entry_ptr = internal global ptr @msp34xxg_detect_stereo._entry, section ".printk_index", align 4
@switch.table.msp_detect_stereo = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 2, i32 1, i32 12, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 1, i32 12], [52 x i8] zeroinitializer }, align 32
@switch.table.msp34xxg_set_sources = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 32, i32 800, i32 1056, i32 800, i32 288], [44 x i8] zeroinitializer }, align 32
@switch.table.msp34xxg_set_sources.196 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 48, i32 32, i32 16, i32 0, i32 32], [44 x i8] zeroinitializer }, align 32
@switch.table.msp34xxg_set_sources.197 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 32, i32 800, i32 1056, i32 800, i32 288], [44 x i8] zeroinitializer }, align 32
@switch.table.msp34xxg_set_sources.198 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 48, i32 32, i32 16, i32 0, i32 32], [44 x i8] zeroinitializer }, align 32
@switch.table.msp34xxg_set_sources.199 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 32, i32 800, i32 1056, i32 800, i32 288], [44 x i8] zeroinitializer }, align 32
@switch.table.msp34xxg_set_sources.200 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 48, i32 32, i32 16, i32 0, i32 32], [44 x i8] zeroinitializer }, align 32
@switch.table.msp34xxg_set_sources.201 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 32, i32 800, i32 1056, i32 800, i32 288], [44 x i8] zeroinitializer }, align 32
@switch.table.msp34xxg_set_sources.202 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 48, i32 32, i32 16, i32 0, i32 32], [44 x i8] zeroinitializer }, align 32
@switch.table.msp34xxg_set_sources.203 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 32, i32 800, i32 1056, i32 800, i32 288], [44 x i8] zeroinitializer }, align 32
@switch.table.msp34xxg_set_sources.204 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 48, i32 32, i32 16, i32 0, i32 32], [44 x i8] zeroinitializer }, align 32
@switch.table.msp34xxg_set_sources.205 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 32, i32 800, i32 1056, i32 800, i32 288], [44 x i8] zeroinitializer }, align 32
@switch.table.msp34xxg_set_sources.206 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 48, i32 32, i32 16, i32 0, i32 32], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [23 x i64] [i64 21, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 32, i64 33, i64 48, i64 64, i64 80, i64 81, i64 96]
@__sancov_gen_cov_switch_values.207 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.208 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.209 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.210 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.211 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.212 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.213 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.214 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.215 = internal global [9 x i64] [i64 7, i64 32, i64 32, i64 33, i64 48, i64 64, i64 80, i64 81, i64 96]
@__sancov_gen_cov_switch_values.216 = internal global [12 x i64] [i64 10, i64 32, i64 2, i64 3, i64 4, i64 5, i64 8, i64 9, i64 10, i64 11, i64 32, i64 64]
@__sancov_gen_cov_switch_values.217 = internal global [23 x i64] [i64 21, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 32, i64 33, i64 48, i64 64, i64 80, i64 81, i64 96]
@__sancov_gen_cov_switch_values.218 = internal global [5 x i64] [i64 3, i64 64, i64 8192, i64 32768, i64 4194304]
@__sancov_gen_cov_switch_values.219 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.220 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.221 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 5, i64 6, i64 7]
@___asan_gen_.222 = private unnamed_addr constant [12 x i8] c"msp_stdlist\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 27, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 162, i32 9 }
@___asan_gen_.228 = private unnamed_addr constant [19 x i8] c"msp3400c_init_data\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 80, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 209, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 497, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 501, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 503, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 506, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 513, i32 4 }
@___asan_gen_.282 = private unnamed_addr constant [29 x i8] c"msp3400c_carrier_detect_main\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 129, i32 39 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 542, i32 4 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 556, i32 4 }
@___asan_gen_.297 = private unnamed_addr constant [27 x i8] c"msp3400c_carrier_detect_55\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 137, i32 39 }
@___asan_gen_.300 = private unnamed_addr constant [27 x i8] c"msp3400c_carrier_detect_65\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 143, i32 39 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 595, i32 4 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 681, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 692, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 696, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 698, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 701, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 708, i32 4 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 734, i32 4 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 752, i32 5 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 759, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 769, i32 4 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 843, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 989, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 993, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 995, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 998, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1005, i32 4 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1022, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1034, i32 4 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1038, i32 4 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1044, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1077, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 28, i32 18 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 29, i32 18 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 31, i32 4 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 33, i32 4 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 35, i32 4 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 37, i32 4 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 39, i32 4 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 41, i32 4 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 43, i32 4 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 45, i32 4 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 47, i32 4 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 49, i32 4 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 51, i32 4 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 53, i32 4 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 55, i32 4 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 57, i32 4 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 59, i32 4 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 61, i32 4 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 63, i32 4 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 65, i32 4 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 67, i32 4 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 131, i32 29 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 132, i32 29 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 133, i32 29 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 134, i32 29 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 139, i32 29 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 140, i32 29 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 145, i32 29 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 146, i32 29 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 147, i32 29 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 148, i32 29 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 149, i32 29 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 150, i32 29 }
@___asan_gen_.519 = private unnamed_addr constant [8 x i8] c"strmode\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 242, i32 15 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 243, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 243, i32 11 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 243, i32 21 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 243, i32 30 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 243, i32 39 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 255, i32 3 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 284, i32 3 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 298, i32 3 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 318, i32 3 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 324, i32 3 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 328, i32 3 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 333, i32 3 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 337, i32 3 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 342, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 350, i32 4 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 366, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 377, i32 3 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 381, i32 3 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 385, i32 3 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 389, i32 3 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 393, i32 3 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 860, i32 3 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 864, i32 3 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 868, i32 3 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 872, i32 3 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 876, i32 3 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 920, i32 2 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 414, i32 3 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 429, i32 3 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 460, i32 3 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 467, i32 3 }
@___asan_gen_.708 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.714 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.715 = private constant [40 x i8] c"../drivers/media/i2c/msp3400-kthreads.c\00", align 1
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.715, i32 1104, i32 2 }
@___asan_gen_.717 = private unnamed_addr constant [31 x i8] c"switch.table.msp_detect_stereo\00", align 1
@___asan_gen_.718 = private unnamed_addr constant [34 x i8] c"switch.table.msp34xxg_set_sources\00", align 1
@___asan_gen_.719 = private unnamed_addr constant [38 x i8] c"switch.table.msp34xxg_set_sources.196\00", align 1
@___asan_gen_.720 = private unnamed_addr constant [38 x i8] c"switch.table.msp34xxg_set_sources.197\00", align 1
@___asan_gen_.721 = private unnamed_addr constant [38 x i8] c"switch.table.msp34xxg_set_sources.198\00", align 1
@___asan_gen_.722 = private unnamed_addr constant [38 x i8] c"switch.table.msp34xxg_set_sources.199\00", align 1
@___asan_gen_.723 = private unnamed_addr constant [38 x i8] c"switch.table.msp34xxg_set_sources.200\00", align 1
@___asan_gen_.724 = private unnamed_addr constant [38 x i8] c"switch.table.msp34xxg_set_sources.201\00", align 1
@___asan_gen_.725 = private unnamed_addr constant [38 x i8] c"switch.table.msp34xxg_set_sources.202\00", align 1
@___asan_gen_.726 = private unnamed_addr constant [38 x i8] c"switch.table.msp34xxg_set_sources.203\00", align 1
@___asan_gen_.727 = private unnamed_addr constant [38 x i8] c"switch.table.msp34xxg_set_sources.204\00", align 1
@___asan_gen_.728 = private unnamed_addr constant [38 x i8] c"switch.table.msp34xxg_set_sources.205\00", align 1
@___asan_gen_.729 = private unnamed_addr constant [38 x i8] c"switch.table.msp34xxg_set_sources.206\00", align 1
@llvm.compiler.used = appending global [235 x ptr] [ptr @msp3400c_detect_stereo._entry, ptr @msp3400c_detect_stereo._entry.185, ptr @msp3400c_detect_stereo._entry.188, ptr @msp3400c_detect_stereo._entry.191, ptr @msp3400c_detect_stereo._entry_ptr, ptr @msp3400c_detect_stereo._entry_ptr.187, ptr @msp3400c_detect_stereo._entry_ptr.190, ptr @msp3400c_detect_stereo._entry_ptr.193, ptr @msp3400c_print_mode._entry, ptr @msp3400c_print_mode._entry.155, ptr @msp3400c_print_mode._entry.158, ptr @msp3400c_print_mode._entry.161, ptr @msp3400c_print_mode._entry.164, ptr @msp3400c_print_mode._entry_ptr, ptr @msp3400c_print_mode._entry_ptr.157, ptr @msp3400c_print_mode._entry_ptr.160, ptr @msp3400c_print_mode._entry_ptr.163, ptr @msp3400c_print_mode._entry_ptr.166, ptr @msp3400c_set_audmode._entry, ptr @msp3400c_set_audmode._entry.123, ptr @msp3400c_set_audmode._entry.126, ptr @msp3400c_set_audmode._entry.129, ptr @msp3400c_set_audmode._entry.132, ptr @msp3400c_set_audmode._entry.135, ptr @msp3400c_set_audmode._entry.138, ptr @msp3400c_set_audmode._entry.141, ptr @msp3400c_set_audmode._entry.144, ptr @msp3400c_set_audmode._entry.147, ptr @msp3400c_set_audmode._entry.150, ptr @msp3400c_set_audmode._entry_ptr, ptr @msp3400c_set_audmode._entry_ptr.125, ptr @msp3400c_set_audmode._entry_ptr.128, ptr @msp3400c_set_audmode._entry_ptr.131, ptr @msp3400c_set_audmode._entry_ptr.134, ptr @msp3400c_set_audmode._entry_ptr.137, ptr @msp3400c_set_audmode._entry_ptr.140, ptr @msp3400c_set_audmode._entry_ptr.143, ptr @msp3400c_set_audmode._entry_ptr.146, ptr @msp3400c_set_audmode._entry_ptr.149, ptr @msp3400c_set_audmode._entry_ptr.152, ptr @msp3400c_set_mode._entry, ptr @msp3400c_set_mode._entry_ptr, ptr @msp3400c_thread._entry, ptr @msp3400c_thread._entry.11, ptr @msp3400c_thread._entry.14, ptr @msp3400c_thread._entry.17, ptr @msp3400c_thread._entry.20, ptr @msp3400c_thread._entry.23, ptr @msp3400c_thread._entry.26, ptr @msp3400c_thread._entry.29, ptr @msp3400c_thread._entry.8, ptr @msp3400c_thread._entry_ptr, ptr @msp3400c_thread._entry_ptr.10, ptr @msp3400c_thread._entry_ptr.13, ptr @msp3400c_thread._entry_ptr.16, ptr @msp3400c_thread._entry_ptr.19, ptr @msp3400c_thread._entry_ptr.22, ptr @msp3400c_thread._entry_ptr.25, ptr @msp3400c_thread._entry_ptr.28, ptr @msp3400c_thread._entry_ptr.31, ptr @msp3410d_thread._entry, ptr @msp3410d_thread._entry.34, ptr @msp3410d_thread._entry.37, ptr @msp3410d_thread._entry.40, ptr @msp3410d_thread._entry.42, ptr @msp3410d_thread._entry.44, ptr @msp3410d_thread._entry.47, ptr @msp3410d_thread._entry.50, ptr @msp3410d_thread._entry.53, ptr @msp3410d_thread._entry.56, ptr @msp3410d_thread._entry_ptr, ptr @msp3410d_thread._entry_ptr.36, ptr @msp3410d_thread._entry_ptr.39, ptr @msp3410d_thread._entry_ptr.41, ptr @msp3410d_thread._entry_ptr.43, ptr @msp3410d_thread._entry_ptr.46, ptr @msp3410d_thread._entry_ptr.49, ptr @msp3410d_thread._entry_ptr.52, ptr @msp3410d_thread._entry_ptr.55, ptr @msp3410d_thread._entry_ptr.57, ptr @msp34xxg_detect_stereo._entry, ptr @msp34xxg_detect_stereo._entry_ptr, ptr @msp34xxg_modus._entry, ptr @msp34xxg_modus._entry.169, ptr @msp34xxg_modus._entry.172, ptr @msp34xxg_modus._entry.175, ptr @msp34xxg_modus._entry.178, ptr @msp34xxg_modus._entry_ptr, ptr @msp34xxg_modus._entry_ptr.171, ptr @msp34xxg_modus._entry_ptr.174, ptr @msp34xxg_modus._entry_ptr.177, ptr @msp34xxg_modus._entry_ptr.180, ptr @msp34xxg_set_source._entry, ptr @msp34xxg_set_source._entry_ptr, ptr @msp34xxg_thread._entry, ptr @msp34xxg_thread._entry.60, ptr @msp34xxg_thread._entry.63, ptr @msp34xxg_thread._entry.66, ptr @msp34xxg_thread._entry.68, ptr @msp34xxg_thread._entry.70, ptr @msp34xxg_thread._entry.73, ptr @msp34xxg_thread._entry.75, ptr @msp34xxg_thread._entry.78, ptr @msp34xxg_thread._entry.81, ptr @msp34xxg_thread._entry_ptr, ptr @msp34xxg_thread._entry_ptr.62, ptr @msp34xxg_thread._entry_ptr.65, ptr @msp34xxg_thread._entry_ptr.67, ptr @msp34xxg_thread._entry_ptr.69, ptr @msp34xxg_thread._entry_ptr.72, ptr @msp34xxg_thread._entry_ptr.74, ptr @msp34xxg_thread._entry_ptr.77, ptr @msp34xxg_thread._entry_ptr.80, ptr @msp34xxg_thread._entry_ptr.82, ptr @msp_stdlist, ptr @.str, ptr @msp3400c_init_data, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @msp3400c_carrier_detect_main, ptr @.str.21, ptr @.str.24, ptr @msp3400c_carrier_detect_55, ptr @msp3400c_carrier_detect_65, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.64, ptr @.str.71, ptr @.str.76, ptr @.str.79, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @msp3400c_set_audmode.strmode, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.124, ptr @.str.127, ptr @.str.130, ptr @.str.133, ptr @.str.136, ptr @.str.139, ptr @.str.142, ptr @.str.145, ptr @.str.148, ptr @.str.151, ptr @.str.153, ptr @.str.154, ptr @.str.156, ptr @.str.159, ptr @.str.162, ptr @.str.165, ptr @.str.167, ptr @.str.168, ptr @.str.170, ptr @.str.173, ptr @.str.176, ptr @.str.179, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.186, ptr @.str.189, ptr @.str.192, ptr @.str.194, ptr @.str.195, ptr @switch.table.msp_detect_stereo, ptr @switch.table.msp34xxg_set_sources, ptr @switch.table.msp34xxg_set_sources.196, ptr @switch.table.msp34xxg_set_sources.197, ptr @switch.table.msp34xxg_set_sources.198, ptr @switch.table.msp34xxg_set_sources.199, ptr @switch.table.msp34xxg_set_sources.200, ptr @switch.table.msp34xxg_set_sources.201, ptr @switch.table.msp34xxg_set_sources.202, ptr @switch.table.msp34xxg_set_sources.203, ptr @switch.table.msp34xxg_set_sources.204, ptr @switch.table.msp34xxg_set_sources.205, ptr @switch.table.msp34xxg_set_sources.206], section "llvm.metadata"
@0 = internal global [178 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp_stdlist to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp3400c_init_data to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp3400c_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp3400c_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp3400c_thread._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp3400c_thread._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp3400c_thread._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp3400c_thread._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp3400c_carrier_detect_main to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp3400c_thread._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp3400c_thread._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp3400c_carrier_detect_55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp3400c_carrier_detect_65 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp3400c_thread._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp3400c_thread._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp3410d_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp3410d_thread._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp3410d_thread._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp3410d_thread._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp3410d_thread._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp3410d_thread._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp3410d_thread._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp3410d_thread._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp3410d_thread._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp3410d_thread._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp34xxg_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp34xxg_thread._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp34xxg_thread._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp34xxg_thread._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp34xxg_thread._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp34xxg_thread._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp34xxg_thread._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp34xxg_thread._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp34xxg_thread._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp34xxg_thread._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp3400c_set_audmode.strmode to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp3400c_set_audmode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp3400c_set_audmode._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp3400c_set_audmode._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp3400c_set_audmode._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp3400c_set_audmode._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp3400c_set_audmode._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp3400c_set_audmode._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp3400c_set_audmode._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp3400c_set_audmode._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp3400c_set_audmode._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp3400c_set_audmode._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp3400c_print_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp3400c_print_mode._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp3400c_print_mode._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp3400c_print_mode._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp3400c_print_mode._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp34xxg_modus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp34xxg_modus._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp34xxg_modus._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp34xxg_modus._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp34xxg_modus._entry.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp34xxg_set_source._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp3400c_detect_stereo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp3400c_detect_stereo._entry.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp3400c_detect_stereo._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp3400c_detect_stereo._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msp34xxg_detect_stereo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.msp_detect_stereo to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.msp34xxg_set_sources to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.msp34xxg_set_sources.196 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.msp34xxg_set_sources.197 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.msp34xxg_set_sources.198 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.msp34xxg_set_sources.199 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.msp34xxg_set_sources.200 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.msp34xxg_set_sources.201 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.msp34xxg_set_sources.202 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.msp34xxg_set_sources.203 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.msp34xxg_set_sources.204 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.msp34xxg_set_sources.205 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.msp34xxg_set_sources.206 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local ptr @msp_standard_std_name(i32 noundef %std) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %std to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %std, label %entry.cleanup_crit_edge [
    i32 0, label %entry.cleanup.split.loop.exit9_crit_edge
    i32 1, label %entry.cleanup.split.loop.exit9_crit_edge32
    i32 2, label %entry.cleanup.split.loop.exit9_crit_edge33
    i32 3, label %entry.cleanup.split.loop.exit9_crit_edge34
    i32 4, label %entry.cleanup.split.loop.exit9_crit_edge35
    i32 5, label %entry.cleanup.split.loop.exit9_crit_edge36
    i32 6, label %entry.cleanup.split.loop.exit9_crit_edge37
    i32 7, label %entry.cleanup.split.loop.exit9_crit_edge38
    i32 8, label %entry.cleanup.split.loop.exit9_crit_edge39
    i32 9, label %entry.cleanup.split.loop.exit9_crit_edge40
    i32 10, label %entry.cleanup.split.loop.exit9_crit_edge41
    i32 11, label %entry.cleanup.split.loop.exit9_crit_edge42
    i32 12, label %entry.cleanup.split.loop.exit9_crit_edge43
    i32 13, label %entry.cleanup.split.loop.exit9_crit_edge44
    i32 32, label %cleanup.split.loop.exit9.fold.split25
    i32 33, label %cleanup.split.loop.exit9.fold.split26
    i32 48, label %cleanup.split.loop.exit9.fold.split27
    i32 64, label %cleanup.split.loop.exit9.fold.split28
    i32 80, label %cleanup.split.loop.exit9.fold.split29
    i32 81, label %cleanup.split.loop.exit9.fold.split30
    i32 96, label %cleanup.split.loop.exit9.fold.split31
  ]

entry.cleanup.split.loop.exit9_crit_edge44:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.split.loop.exit9

entry.cleanup.split.loop.exit9_crit_edge43:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.split.loop.exit9

entry.cleanup.split.loop.exit9_crit_edge42:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.split.loop.exit9

entry.cleanup.split.loop.exit9_crit_edge41:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.split.loop.exit9

entry.cleanup.split.loop.exit9_crit_edge40:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.split.loop.exit9

entry.cleanup.split.loop.exit9_crit_edge39:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.split.loop.exit9

entry.cleanup.split.loop.exit9_crit_edge38:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.split.loop.exit9

entry.cleanup.split.loop.exit9_crit_edge37:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.split.loop.exit9

entry.cleanup.split.loop.exit9_crit_edge36:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.split.loop.exit9

entry.cleanup.split.loop.exit9_crit_edge35:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.split.loop.exit9

entry.cleanup.split.loop.exit9_crit_edge34:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.split.loop.exit9

entry.cleanup.split.loop.exit9_crit_edge33:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.split.loop.exit9

entry.cleanup.split.loop.exit9_crit_edge32:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.split.loop.exit9

entry.cleanup.split.loop.exit9_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.split.loop.exit9

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.split.loop.exit9.fold.split25:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.split.loop.exit9

cleanup.split.loop.exit9.fold.split26:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.split.loop.exit9

cleanup.split.loop.exit9.fold.split27:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.split.loop.exit9

cleanup.split.loop.exit9.fold.split28:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.split.loop.exit9

cleanup.split.loop.exit9.fold.split29:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.split.loop.exit9

cleanup.split.loop.exit9.fold.split30:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.split.loop.exit9

cleanup.split.loop.exit9.fold.split31:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.split.loop.exit9

cleanup.split.loop.exit9:                         ; preds = %cleanup.split.loop.exit9.fold.split31, %cleanup.split.loop.exit9.fold.split30, %cleanup.split.loop.exit9.fold.split29, %cleanup.split.loop.exit9.fold.split28, %cleanup.split.loop.exit9.fold.split27, %cleanup.split.loop.exit9.fold.split26, %cleanup.split.loop.exit9.fold.split25, %entry.cleanup.split.loop.exit9_crit_edge, %entry.cleanup.split.loop.exit9_crit_edge32, %entry.cleanup.split.loop.exit9_crit_edge33, %entry.cleanup.split.loop.exit9_crit_edge34, %entry.cleanup.split.loop.exit9_crit_edge35, %entry.cleanup.split.loop.exit9_crit_edge36, %entry.cleanup.split.loop.exit9_crit_edge37, %entry.cleanup.split.loop.exit9_crit_edge38, %entry.cleanup.split.loop.exit9_crit_edge39, %entry.cleanup.split.loop.exit9_crit_edge40, %entry.cleanup.split.loop.exit9_crit_edge41, %entry.cleanup.split.loop.exit9_crit_edge42, %entry.cleanup.split.loop.exit9_crit_edge43, %entry.cleanup.split.loop.exit9_crit_edge44
  %i.011.lcssa = phi i32 [ %std, %entry.cleanup.split.loop.exit9_crit_edge ], [ 14, %cleanup.split.loop.exit9.fold.split25 ], [ 15, %cleanup.split.loop.exit9.fold.split26 ], [ 16, %cleanup.split.loop.exit9.fold.split27 ], [ 17, %cleanup.split.loop.exit9.fold.split28 ], [ 18, %cleanup.split.loop.exit9.fold.split29 ], [ 19, %cleanup.split.loop.exit9.fold.split30 ], [ 20, %cleanup.split.loop.exit9.fold.split31 ], [ %std, %entry.cleanup.split.loop.exit9_crit_edge32 ], [ %std, %entry.cleanup.split.loop.exit9_crit_edge33 ], [ %std, %entry.cleanup.split.loop.exit9_crit_edge34 ], [ %std, %entry.cleanup.split.loop.exit9_crit_edge35 ], [ %std, %entry.cleanup.split.loop.exit9_crit_edge36 ], [ %std, %entry.cleanup.split.loop.exit9_crit_edge37 ], [ %std, %entry.cleanup.split.loop.exit9_crit_edge38 ], [ %std, %entry.cleanup.split.loop.exit9_crit_edge39 ], [ %std, %entry.cleanup.split.loop.exit9_crit_edge40 ], [ %std, %entry.cleanup.split.loop.exit9_crit_edge41 ], [ %std, %entry.cleanup.split.loop.exit9_crit_edge42 ], [ %std, %entry.cleanup.split.loop.exit9_crit_edge43 ], [ %std, %entry.cleanup.split.loop.exit9_crit_edge44 ]
  %name.le = getelementptr [22 x %struct.anon], ptr @msp_stdlist, i32 0, i32 %i.011.lcssa, i32 3
  %1 = ptrtoint ptr %name.le to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name.le, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.split.loop.exit9, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %2, %cleanup.split.loop.exit9 ], [ @.str, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msp3400c_set_carrier(ptr noundef %client, i32 noundef %cdo1, i32 noundef %cdo2) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %cdo1, 4095
  %call = tail call i32 @msp_write_dem(ptr noundef %client, i32 noundef 147, i32 noundef %and) #5
  %shr = ashr i32 %cdo1, 12
  %call1 = tail call i32 @msp_write_dem(ptr noundef %client, i32 noundef 155, i32 noundef %shr) #5
  %and2 = and i32 %cdo2, 4095
  %call3 = tail call i32 @msp_write_dem(ptr noundef %client, i32 noundef 163, i32 noundef %and2) #5
  %shr4 = ashr i32 %cdo2, 12
  %call5 = tail call i32 @msp_write_dem(ptr noundef %client, i32 noundef 171, i32 noundef %shr4) #5
  %call6 = tail call i32 @msp_write_dem(ptr noundef %client, i32 noundef 86, i32 noundef 0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msp_write_dem(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msp3400c_set_mode(ptr noundef %client, i32 noundef %mode) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx = getelementptr [8 x %struct.msp3400c_init_data_dem], ptr @msp3400c_init_data, i32 0, i32 %mode
  %route_in = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %route_in to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %route_in, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %4 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %mode) #8
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %mode5 = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 23
  %5 = ptrtoint ptr %mode5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %mode, ptr %mode5, align 4
  %rxsubchans = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 36
  %6 = ptrtoint ptr %rxsubchans to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %rxsubchans, align 8
  %ad_cv = getelementptr [8 x %struct.msp3400c_init_data_dem], ptr @msp3400c_init_data, i32 0, i32 %mode, i32 4
  %7 = ptrtoint ptr %ad_cv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ad_cv, align 4
  %9 = shl i32 %3, 5
  %10 = and i32 %9, 256
  %or = or i32 %8, %10
  %call6 = tail call i32 @msp_write_dem(ptr noundef %client, i32 noundef 187, i32 noundef %or) #5
  %arrayidx8 = getelementptr [6 x i32], ptr %arrayidx, i32 0, i32 5
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx8, align 4
  %call9 = tail call i32 @msp_write_dem(ptr noundef %client, i32 noundef 1, i32 noundef %12) #5
  %arrayidx8.1 = getelementptr [6 x i32], ptr %arrayidx, i32 0, i32 4
  %13 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx8.1, align 4
  %call9.1 = tail call i32 @msp_write_dem(ptr noundef %client, i32 noundef 1, i32 noundef %14) #5
  %arrayidx8.2 = getelementptr [6 x i32], ptr %arrayidx, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx8.2, align 4
  %call9.2 = tail call i32 @msp_write_dem(ptr noundef %client, i32 noundef 1, i32 noundef %16) #5
  %arrayidx8.3 = getelementptr [6 x i32], ptr %arrayidx, i32 0, i32 2
  %17 = ptrtoint ptr %arrayidx8.3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx8.3, align 4
  %call9.3 = tail call i32 @msp_write_dem(ptr noundef %client, i32 noundef 1, i32 noundef %18) #5
  %arrayidx8.4 = getelementptr [6 x i32], ptr %arrayidx, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx8.4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx8.4, align 4
  %call9.4 = tail call i32 @msp_write_dem(ptr noundef %client, i32 noundef 1, i32 noundef %20) #5
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %call9.5 = tail call i32 @msp_write_dem(ptr noundef %client, i32 noundef 1, i32 noundef %22) #5
  %call10 = tail call i32 @msp_write_dem(ptr noundef %client, i32 noundef 5, i32 noundef 4) #5
  %call11 = tail call i32 @msp_write_dem(ptr noundef %client, i32 noundef 5, i32 noundef 64) #5
  %call12 = tail call i32 @msp_write_dem(ptr noundef %client, i32 noundef 5, i32 noundef 0) #5
  %arrayidx16 = getelementptr [8 x %struct.msp3400c_init_data_dem], ptr @msp3400c_init_data, i32 0, i32 %mode, i32 1, i32 5
  %23 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx16, align 4
  %call17 = tail call i32 @msp_write_dem(ptr noundef %client, i32 noundef 5, i32 noundef %24) #5
  %arrayidx16.1 = getelementptr [8 x %struct.msp3400c_init_data_dem], ptr @msp3400c_init_data, i32 0, i32 %mode, i32 1, i32 4
  %25 = ptrtoint ptr %arrayidx16.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx16.1, align 4
  %call17.1 = tail call i32 @msp_write_dem(ptr noundef %client, i32 noundef 5, i32 noundef %26) #5
  %arrayidx16.2 = getelementptr [8 x %struct.msp3400c_init_data_dem], ptr @msp3400c_init_data, i32 0, i32 %mode, i32 1, i32 3
  %27 = ptrtoint ptr %arrayidx16.2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx16.2, align 4
  %call17.2 = tail call i32 @msp_write_dem(ptr noundef %client, i32 noundef 5, i32 noundef %28) #5
  %arrayidx16.3 = getelementptr [8 x %struct.msp3400c_init_data_dem], ptr @msp3400c_init_data, i32 0, i32 %mode, i32 1, i32 2
  %29 = ptrtoint ptr %arrayidx16.3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx16.3, align 4
  %call17.3 = tail call i32 @msp_write_dem(ptr noundef %client, i32 noundef 5, i32 noundef %30) #5
  %arrayidx16.4 = getelementptr [8 x %struct.msp3400c_init_data_dem], ptr @msp3400c_init_data, i32 0, i32 %mode, i32 1, i32 1
  %31 = ptrtoint ptr %arrayidx16.4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx16.4, align 4
  %call17.4 = tail call i32 @msp_write_dem(ptr noundef %client, i32 noundef 5, i32 noundef %32) #5
  %arrayidx16.5 = getelementptr [8 x %struct.msp3400c_init_data_dem], ptr @msp3400c_init_data, i32 0, i32 %mode, i32 1, i32 0
  %33 = ptrtoint ptr %arrayidx16.5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx16.5, align 4
  %call17.5 = tail call i32 @msp_write_dem(ptr noundef %client, i32 noundef 5, i32 noundef %34) #5
  %mode_reg = getelementptr [8 x %struct.msp3400c_init_data_dem], ptr @msp3400c_init_data, i32 0, i32 %mode, i32 5
  %35 = ptrtoint ptr %mode_reg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mode_reg, align 4
  %call21 = tail call i32 @msp_write_dem(ptr noundef %client, i32 noundef 131, i32 noundef %36) #5
  %cdo1 = getelementptr [8 x %struct.msp3400c_init_data_dem], ptr @msp3400c_init_data, i32 0, i32 %mode, i32 2
  %37 = ptrtoint ptr %cdo1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cdo1, align 4
  %cdo2 = getelementptr [8 x %struct.msp3400c_init_data_dem], ptr @msp3400c_init_data, i32 0, i32 %mode, i32 3
  %39 = ptrtoint ptr %cdo2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cdo2, align 4
  %and.i = and i32 %38, 4095
  %call.i = tail call i32 @msp_write_dem(ptr noundef %client, i32 noundef 147, i32 noundef %and.i) #5
  %shr.i = ashr i32 %38, 12
  %call1.i = tail call i32 @msp_write_dem(ptr noundef %client, i32 noundef 155, i32 noundef %shr.i) #5
  %and2.i = and i32 %40, 4095
  %call3.i = tail call i32 @msp_write_dem(ptr noundef %client, i32 noundef 163, i32 noundef %and2.i) #5
  %shr4.i = ashr i32 %40, 12
  %call5.i = tail call i32 @msp_write_dem(ptr noundef %client, i32 noundef 171, i32 noundef %shr4.i) #5
  %call6.i = tail call i32 @msp_write_dem(ptr noundef %client, i32 noundef 86, i32 noundef 0) #5
  %dsp_src = getelementptr [8 x %struct.msp3400c_init_data_dem], ptr @msp3400c_init_data, i32 0, i32 %mode, i32 6
  %41 = ptrtoint ptr %dsp_src to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dsp_src, align 4
  %conv = trunc i32 %42 to i16
  tail call fastcc void @msp_set_source(ptr noundef %client, i16 noundef zeroext %conv)
  %call22 = tail call i32 @msp_write_dsp(ptr noundef %client, i32 noundef 13, i32 noundef 6400) #5
  %dsp_matrix = getelementptr [8 x %struct.msp3400c_init_data_dem], ptr @msp3400c_init_data, i32 0, i32 %mode, i32 7
  %43 = ptrtoint ptr %dsp_matrix to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dsp_matrix, align 4
  %call23 = tail call i32 @msp_write_dsp(ptr noundef %client, i32 noundef 14, i32 noundef %44) #5
  %has_nicam = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 5
  %45 = ptrtoint ptr %has_nicam to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %has_nicam, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool24.not = icmp eq i8 %46, 0
  br i1 %tobool24.not, label %do.end4.if.end27_crit_edge, label %if.then25

do.end4.if.end27_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then25:                                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #7
  %call26 = tail call i32 @msp_write_dsp(ptr noundef %client, i32 noundef 16, i32 noundef 23040) #5
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %do.end4.if.end27_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msp_set_source(ptr noundef %client, i16 noundef zeroext %src) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @msp_dolby to i32))
  %2 = load i8, ptr @msp_dolby, align 1, !range !333
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 @msp_write_dsp(ptr noundef %client, i32 noundef 8, i32 noundef 1312) #5
  %call3 = tail call i32 @msp_write_dsp(ptr noundef %client, i32 noundef 9, i32 noundef 1568) #5
  %.pre = zext i16 %src to i32
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i16 %src to i32
  %call4 = tail call i32 @msp_write_dsp(ptr noundef %client, i32 noundef 8, i32 noundef %conv) #5
  %call6 = tail call i32 @msp_write_dsp(ptr noundef %client, i32 noundef 9, i32 noundef %conv) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %conv7.pre-phi = phi i32 [ %conv, %if.else ], [ %.pre, %if.then ]
  %call8 = tail call i32 @msp_write_dsp(ptr noundef %client, i32 noundef 10, i32 noundef %conv7.pre-phi) #5
  %call10 = tail call i32 @msp_write_dsp(ptr noundef %client, i32 noundef 11, i32 noundef %conv7.pre-phi) #5
  %call12 = tail call i32 @msp_write_dsp(ptr noundef %client, i32 noundef 12, i32 noundef %conv7.pre-phi) #5
  %has_scart2_out = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 12
  %3 = ptrtoint ptr %has_scart2_out to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %has_scart2_out, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool13.not = icmp eq i8 %4, 0
  br i1 %tobool13.not, label %if.end.if.end17_crit_edge, label %if.then14

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call16 = tail call i32 @msp_write_dsp(ptr noundef %client, i32 noundef 65, i32 noundef %conv7.pre-phi) #5
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end.if.end17_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msp_write_dsp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msp3400c_thread(ptr noundef %data) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %data, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %2 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.i2c_client, ptr %data, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev, ptr noundef nonnull @.str.6) #8
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %detected_std = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 25
  %3 = ptrtoint ptr %detected_std to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 16777215, ptr %detected_std, align 8
  %call5 = tail call zeroext i1 @set_freezable() #5
  %dev12 = getelementptr inbounds %struct.i2c_client, ptr %data, i32 0, i32 4
  %restart37 = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 41
  %radio = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 20
  %mode = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 23
  %scan_in_progress54 = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 38
  %nicam_on = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 26
  %v4l2_std = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 24
  %main = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 30
  %second205 = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 31
  %has_nicam215 = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 5
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %do.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %4 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp7 = icmp sgt i32 %4, 1
  br i1 %cmp7, label %do.end11, label %for.cond.do.end15_crit_edge

for.cond.do.end15_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end15

do.end11:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev12, ptr noundef nonnull @.str.9) #8
  br label %do.end15

do.end15:                                         ; preds = %do.end11, %for.cond.do.end15_crit_edge
  %call16 = tail call i32 @msp_sleep(ptr noundef %1, i32 noundef -1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %5 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp18 = icmp sgt i32 %5, 1
  br i1 %cmp18, label %do.end22, label %do.end15.restart.preheader_crit_edge

do.end15.restart.preheader_crit_edge:             ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %restart.preheader

do.end22:                                         ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev12, ptr noundef nonnull @.str.12) #8
  br label %restart.preheader

restart.preheader:                                ; preds = %do.end22, %do.end15.restart.preheader_crit_edge
  br label %restart

restart:                                          ; preds = %restart.backedge, %restart.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %6 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp28 = icmp sgt i32 %6, 1
  br i1 %cmp28, label %do.end32, label %restart.do.end36_crit_edge

restart.do.end36_crit_edge:                       ; preds = %restart
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end36

do.end32:                                         ; preds = %restart
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev12, ptr noundef nonnull @.str.15) #8
  br label %do.end36

do.end36:                                         ; preds = %do.end32, %restart.do.end36_crit_edge
  %7 = ptrtoint ptr %restart37 to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %restart37, align 8
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %restart37, align 8
  %call38 = tail call zeroext i1 @kthread_should_stop() #5
  br i1 %call38, label %do.body258, label %if.end40

if.end40:                                         ; preds = %do.end36
  %8 = ptrtoint ptr %radio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %radio, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end40.do.body43_crit_edge

if.end40.do.body43_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body43

lor.lhs.false:                                    ; preds = %if.end40
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %11)
  %cmp41 = icmp eq i32 %11, 9
  br i1 %cmp41, label %lor.lhs.false.do.body43_crit_edge, label %if.end53

lor.lhs.false.do.body43_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body43

do.body43:                                        ; preds = %lor.lhs.false.do.body43_crit_edge, %if.end40.do.body43_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %12 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp44 = icmp sgt i32 %12, 0
  br i1 %cmp44, label %do.end48, label %do.body43.do.end52_crit_edge

do.body43.do.end52_crit_edge:                     ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end52

do.end48:                                         ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev12, ptr noundef nonnull @.str.18) #8
  br label %do.end52

do.end52:                                         ; preds = %do.end48, %do.body43.do.end52_crit_edge
  %13 = ptrtoint ptr %scan_in_progress54 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %scan_in_progress54, align 4
  tail call void @msp_update_volume(ptr noundef %1) #5
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.end253.for.cond.backedge_crit_edge, %if.end244.for.cond.backedge_crit_edge, %do.end52
  br label %for.cond

if.end53:                                         ; preds = %lor.lhs.false
  %14 = ptrtoint ptr %scan_in_progress54 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %scan_in_progress54, align 4
  tail call void @msp_update_volume(ptr noundef %1) #5
  tail call void @msp3400c_set_mode(ptr noundef %data, i32 noundef 0)
  %15 = ptrtoint ptr %restart37 to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load55 = load i8, ptr %restart37, align 8
  %bf.clear56 = and i8 %bf.load55, -65
  store i8 %bf.clear56, ptr %restart37, align 8
  %16 = ptrtoint ptr %nicam_on to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %nicam_on, align 8
  %call58 = tail call i32 @msp_sleep(ptr noundef %1, i32 noundef 200) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %if.end53.restart.backedge_crit_edge

if.end53.restart.backedge_crit_edge:              ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %restart.backedge

restart.backedge:                                 ; preds = %while.body.restart.backedge_crit_edge, %for.body113.restart.backedge_crit_edge, %for.body.restart.backedge_crit_edge, %if.end53.restart.backedge_crit_edge
  br label %restart

if.end61:                                         ; preds = %if.end53
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @msp_amsound to i32))
  %17 = load i8, ptr @msp_amsound, align 1, !range !333
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool62.not = icmp eq i8 %17, 0
  br i1 %tobool62.not, label %if.end61.for.body.preheader_crit_edge, label %land.lhs.true

if.end61.for.body.preheader_crit_edge:            ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.preheader

for.body.preheader:                               ; preds = %land.lhs.true.for.body.preheader_crit_edge, %if.end61.for.body.preheader_crit_edge
  br label %for.body

land.lhs.true:                                    ; preds = %if.end61
  %18 = ptrtoint ptr %v4l2_std to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %v4l2_std, align 8
  %and = and i64 %19, 16711680
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool63.not = icmp eq i64 %and, 0
  br i1 %tobool63.not, label %land.lhs.true.for.body.preheader_crit_edge, label %if.then64

land.lhs.true.for.body.preheader_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.preheader

if.then64:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %20 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp66 = icmp sgt i32 %20, 0
  br i1 %cmp66, label %do.end70, label %if.then64.sw.bb102_crit_edge

if.then64.sw.bb102_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb102

do.end70:                                         ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev12, ptr noundef nonnull @.str.21) #8
  br label %sw.bb102

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0410 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %val1.0409 = phi i32 [ %23, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %max1.1408 = phi i32 [ %max1.2, %for.inc.for.body_crit_edge ], [ -1, %for.body.preheader ]
  %arrayidx = getelementptr %struct.msp3400c_carrier_detect, ptr @msp3400c_carrier_detect_main, i32 %i.0410
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %and.i = and i32 %22, 4095
  %call.i = tail call i32 @msp_write_dem(ptr noundef %data, i32 noundef 147, i32 noundef %and.i) #5
  %shr.i = ashr i32 %22, 12
  %call1.i = tail call i32 @msp_write_dem(ptr noundef %data, i32 noundef 155, i32 noundef %shr.i) #5
  %call3.i = tail call i32 @msp_write_dem(ptr noundef %data, i32 noundef 163, i32 noundef %and.i) #5
  %call5.i = tail call i32 @msp_write_dem(ptr noundef %data, i32 noundef 171, i32 noundef %shr.i) #5
  %call6.i = tail call i32 @msp_write_dem(ptr noundef %data, i32 noundef 86, i32 noundef 0) #5
  %call80 = tail call i32 @msp_sleep(ptr noundef %1, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %for.body.restart.backedge_crit_edge

for.body.restart.backedge_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %restart.backedge

if.end83:                                         ; preds = %for.body
  %call84 = tail call i32 @msp_read_dsp(ptr noundef %data, i32 noundef 27) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %call84)
  %cmp85 = icmp sgt i32 %call84, 32767
  %sub = add i32 %call84, -65536
  %spec.select = select i1 %cmp85, i32 %sub, i32 %call84
  call void @__sanitizer_cov_trace_cmp4(i32 %val1.0409, i32 %spec.select)
  %cmp88 = icmp slt i32 %val1.0409, %spec.select
  %max1.2 = select i1 %cmp88, i32 %i.0410, i32 %max1.1408
  %23 = tail call i32 @llvm.smax.i32(i32 %val1.0409, i32 %spec.select)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %24 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp92 = icmp sgt i32 %24, 0
  br i1 %cmp92, label %do.end96, label %if.end83.for.inc_crit_edge

if.end83.for.inc_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.end96:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr %struct.msp3400c_carrier_detect, ptr @msp3400c_carrier_detect_main, i32 %i.0410, i32 1
  %25 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev12, ptr noundef nonnull @.str.24, i32 noundef %spec.select, ptr noundef %26) #8
  br label %for.inc

for.inc:                                          ; preds = %do.end96, %if.end83.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0410, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  %27 = zext i32 %max1.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.207)
  switch i32 %max1.2, label %sw.default [
    i32 1, label %for.end.sw.epilog_crit_edge
    i32 3, label %for.end.sw.bb102_crit_edge
  ]

for.end.sw.bb102_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb102

for.end.sw.epilog_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb102:                                         ; preds = %for.end.sw.bb102_crit_edge, %do.end70, %if.then64.sw.bb102_crit_edge
  br label %sw.epilog

sw.default:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb102, %for.end.sw.epilog_crit_edge
  %max1.1.lcssa432 = phi i32 [ %max1.2, %sw.default ], [ 3, %sw.bb102 ], [ %max1.2, %for.end.sw.epilog_crit_edge ]
  %cd.0 = phi ptr [ null, %sw.default ], [ @msp3400c_carrier_detect_65, %sw.bb102 ], [ @msp3400c_carrier_detect_55, %for.end.sw.epilog_crit_edge ]
  %cmp112412 = phi i1 [ false, %sw.default ], [ true, %sw.bb102 ], [ true, %for.end.sw.epilog_crit_edge ]
  %count.1 = phi i32 [ 0, %sw.default ], [ 6, %sw.bb102 ], [ 2, %for.end.sw.epilog_crit_edge ]
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @msp_amsound to i32))
  %28 = load i8, ptr @msp_amsound, align 1, !range !333
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool104.not = icmp eq i8 %28, 0
  br i1 %tobool104.not, label %if.end110, label %land.lhs.true105

land.lhs.true105:                                 ; preds = %sw.epilog
  %29 = ptrtoint ptr %v4l2_std to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %v4l2_std, align 8
  %and107 = and i64 %30, 16711680
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and107)
  %tobool108.not = icmp ne i64 %and107, 0
  %cmp112412.not = xor i1 %cmp112412, true
  %brmerge = or i1 %tobool108.not, %cmp112412.not
  %not.tobool108.not = xor i1 %tobool108.not, true
  %.mux = sext i1 %not.tobool108.not to i32
  br i1 %brmerge, label %land.lhs.true105.for.end144_crit_edge, label %land.lhs.true105.for.body113.preheader_crit_edge

land.lhs.true105.for.body113.preheader_crit_edge: ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body113.preheader

land.lhs.true105.for.end144_crit_edge:            ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end144

if.end110:                                        ; preds = %sw.epilog
  br i1 %cmp112412, label %if.end110.for.body113.preheader_crit_edge, label %if.end110.for.end144_crit_edge

if.end110.for.end144_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end144

if.end110.for.body113.preheader_crit_edge:        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body113.preheader

for.body113.preheader:                            ; preds = %if.end110.for.body113.preheader_crit_edge, %land.lhs.true105.for.body113.preheader_crit_edge
  br label %for.body113

for.body113:                                      ; preds = %for.inc142.for.body113_crit_edge, %for.body113.preheader
  %i.1415 = phi i32 [ %inc143, %for.inc142.for.body113_crit_edge ], [ 0, %for.body113.preheader ]
  %val2.0414 = phi i32 [ %33, %for.inc142.for.body113_crit_edge ], [ 0, %for.body113.preheader ]
  %max2.1413 = phi i32 [ %max2.2, %for.inc142.for.body113_crit_edge ], [ -1, %for.body113.preheader ]
  %arrayidx114 = getelementptr %struct.msp3400c_carrier_detect, ptr %cd.0, i32 %i.1415
  %31 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx114, align 4
  %and.i385 = and i32 %32, 4095
  %call.i386 = tail call i32 @msp_write_dem(ptr noundef %data, i32 noundef 147, i32 noundef %and.i385) #5
  %shr.i387 = ashr i32 %32, 12
  %call1.i388 = tail call i32 @msp_write_dem(ptr noundef %data, i32 noundef 155, i32 noundef %shr.i387) #5
  %call3.i390 = tail call i32 @msp_write_dem(ptr noundef %data, i32 noundef 163, i32 noundef %and.i385) #5
  %call5.i392 = tail call i32 @msp_write_dem(ptr noundef %data, i32 noundef 171, i32 noundef %shr.i387) #5
  %call6.i393 = tail call i32 @msp_write_dem(ptr noundef %data, i32 noundef 86, i32 noundef 0) #5
  %call118 = tail call i32 @msp_sleep(ptr noundef %1, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.end121, label %for.body113.restart.backedge_crit_edge

for.body113.restart.backedge_crit_edge:           ; preds = %for.body113
  call void @__sanitizer_cov_trace_pc() #7
  br label %restart.backedge

if.end121:                                        ; preds = %for.body113
  %call122 = tail call i32 @msp_read_dsp(ptr noundef %data, i32 noundef 27) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %call122)
  %cmp123 = icmp sgt i32 %call122, 32767
  %sub125 = add i32 %call122, -65536
  %spec.select383 = select i1 %cmp123, i32 %sub125, i32 %call122
  call void @__sanitizer_cov_trace_cmp4(i32 %val2.0414, i32 %spec.select383)
  %cmp127 = icmp slt i32 %val2.0414, %spec.select383
  %max2.2 = select i1 %cmp127, i32 %i.1415, i32 %max2.1413
  %33 = tail call i32 @llvm.smax.i32(i32 %val2.0414, i32 %spec.select383)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %34 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp131 = icmp sgt i32 %34, 0
  br i1 %cmp131, label %do.end135, label %if.end121.for.inc142_crit_edge

if.end121.for.inc142_crit_edge:                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc142

do.end135:                                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #7
  %name138 = getelementptr %struct.msp3400c_carrier_detect, ptr %cd.0, i32 %i.1415, i32 1
  %35 = ptrtoint ptr %name138 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %name138, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev12, ptr noundef nonnull @.str.27, i32 noundef %spec.select383, ptr noundef %36) #8
  br label %for.inc142

for.inc142:                                       ; preds = %do.end135, %if.end121.for.inc142_crit_edge
  %inc143 = add nuw nsw i32 %i.1415, 1
  %exitcond424.not = icmp eq i32 %inc143, %count.1
  br i1 %exitcond424.not, label %for.inc142.for.end144_crit_edge, label %for.inc142.for.body113_crit_edge

for.inc142.for.body113_crit_edge:                 ; preds = %for.inc142
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body113

for.inc142.for.end144_crit_edge:                  ; preds = %for.inc142
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end144

for.end144:                                       ; preds = %for.inc142.for.end144_crit_edge, %if.end110.for.end144_crit_edge, %land.lhs.true105.for.end144_crit_edge
  %max2.1.lcssa = phi i32 [ -1, %if.end110.for.end144_crit_edge ], [ %.mux, %land.lhs.true105.for.end144_crit_edge ], [ %max2.2, %for.inc142.for.end144_crit_edge ]
  %arrayidx145 = getelementptr [4 x %struct.msp3400c_carrier_detect], ptr @msp3400c_carrier_detect_main, i32 0, i32 %max1.1.lcssa432
  %37 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx145, align 4
  %39 = ptrtoint ptr %main to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %main, align 8
  %40 = zext i32 %max1.1.lcssa432 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.208)
  switch i32 %max1.1.lcssa432, label %for.end144.no_second_crit_edge [
    i32 1, label %sw.bb147
    i32 2, label %sw.bb172
    i32 3, label %sw.bb180
    i32 0, label %sw.bb232
  ]

for.end144.no_second_crit_edge:                   ; preds = %for.end144
  call void @__sanitizer_cov_trace_pc() #7
  br label %no_second

sw.bb147:                                         ; preds = %for.end144
  %41 = ptrtoint ptr %detected_std to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 327695, ptr %detected_std, align 8
  %42 = zext i32 %max2.1.lcssa to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.209)
  switch i32 %max2.1.lcssa, label %sw.bb147.no_second_crit_edge [
    i32 0, label %if.then150
    i32 1, label %land.lhs.true158
  ]

sw.bb147.no_second_crit_edge:                     ; preds = %sw.bb147
  call void @__sanitizer_cov_trace_pc() #7
  br label %no_second

if.then150:                                       ; preds = %sw.bb147
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %second205 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 5226666, ptr %second205, align 4
  tail call void @msp3400c_set_mode(ptr noundef %data, i32 noundef 3)
  %44 = ptrtoint ptr %restart37 to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load154 = load i8, ptr %restart37, align 8
  %bf.set156 = or i8 %bf.load154, 64
  store i8 %bf.set156, ptr %restart37, align 8
  br label %sw.epilog238

land.lhs.true158:                                 ; preds = %sw.bb147
  %45 = ptrtoint ptr %has_nicam215 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %has_nicam215, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool159.not = icmp eq i8 %46, 0
  br i1 %tobool159.not, label %land.lhs.true158.no_second_crit_edge, label %if.then160

land.lhs.true158.no_second_crit_edge:             ; preds = %land.lhs.true158
  call void @__sanitizer_cov_trace_pc() #7
  br label %no_second

if.then160:                                       ; preds = %land.lhs.true158
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %second205 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 5324800, ptr %second205, align 4
  tail call void @msp3400c_set_mode(ptr noundef %data, i32 noundef 5)
  %48 = ptrtoint ptr %nicam_on to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %nicam_on, align 8
  %49 = ptrtoint ptr %restart37 to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load166 = load i8, ptr %restart37, align 8
  %bf.set168 = or i8 %bf.load166, 64
  store i8 %bf.set168, ptr %restart37, align 8
  br label %sw.epilog238

sw.bb172:                                         ; preds = %for.end144
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %detected_std to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 16, ptr %detected_std, align 8
  %51 = ptrtoint ptr %second205 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 5963776, ptr %second205, align 4
  tail call void @msp3400c_set_mode(ptr noundef %data, i32 noundef 6)
  %52 = ptrtoint ptr %nicam_on to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %nicam_on, align 8
  %53 = ptrtoint ptr %restart37 to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load177 = load i8, ptr %restart37, align 8
  %bf.set179 = or i8 %bf.load177, 64
  store i8 %bf.set179, ptr %restart37, align 8
  br label %sw.epilog238

sw.bb180:                                         ; preds = %for.end144
  %max2.1.off = add i32 %max2.1.lcssa, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %max2.1.off)
  %switch = icmp ult i32 %max2.1.off, 2
  br i1 %switch, label %if.then186, label %if.else195

if.then186:                                       ; preds = %sw.bb180
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx187 = getelementptr [6 x %struct.msp3400c_carrier_detect], ptr @msp3400c_carrier_detect_65, i32 0, i32 %max2.1.lcssa
  %54 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx187, align 4
  %56 = ptrtoint ptr %second205 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %second205, align 4
  tail call void @msp3400c_set_mode(ptr noundef %data, i32 noundef 3)
  %57 = ptrtoint ptr %restart37 to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load191 = load i8, ptr %restart37, align 8
  %bf.set193 = or i8 %bf.load191, 64
  store i8 %bf.set193, ptr %restart37, align 8
  %58 = ptrtoint ptr %detected_std to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 3277024, ptr %detected_std, align 8
  br label %sw.epilog238

if.else195:                                       ; preds = %sw.bb180
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max2.1.lcssa)
  %cmp196 = icmp eq i32 %max2.1.lcssa, 0
  br i1 %cmp196, label %land.lhs.true198, label %if.else195.no_second_crit_edge

if.else195.no_second_crit_edge:                   ; preds = %if.else195
  call void @__sanitizer_cov_trace_pc() #7
  br label %no_second

land.lhs.true198:                                 ; preds = %if.else195
  %59 = ptrtoint ptr %v4l2_std to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %v4l2_std, align 8
  %and200 = and i64 %60, 16711680
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and200)
  %tobool201.not = icmp eq i64 %and200, 0
  br i1 %tobool201.not, label %land.lhs.true214.critedge, label %if.then202

if.then202:                                       ; preds = %land.lhs.true198
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %second205 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 5324800, ptr %second205, align 4
  tail call void @msp3400c_set_mode(ptr noundef %data, i32 noundef 7)
  %62 = ptrtoint ptr %restart37 to i32
  call void @__asan_load1_noabort(i32 %62)
  %bf.load207 = load i8, ptr %restart37, align 8
  %bf.set209 = or i8 %bf.load207, 64
  store i8 %bf.set209, ptr %restart37, align 8
  %63 = ptrtoint ptr %detected_std to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 12582912, ptr %detected_std, align 8
  br label %sw.epilog238

land.lhs.true214.critedge:                        ; preds = %land.lhs.true198
  %64 = ptrtoint ptr %has_nicam215 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %has_nicam215, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool217.not = icmp eq i8 %65, 0
  br i1 %tobool217.not, label %land.lhs.true214.critedge.no_second_crit_edge, label %if.then218

land.lhs.true214.critedge.no_second_crit_edge:    ; preds = %land.lhs.true214.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %no_second

if.then218:                                       ; preds = %land.lhs.true214.critedge
  call void @__sanitizer_cov_trace_pc() #7
  %66 = ptrtoint ptr %second205 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 5324800, ptr %second205, align 4
  tail call void @msp3400c_set_mode(ptr noundef %data, i32 noundef 5)
  %67 = ptrtoint ptr %nicam_on to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %nicam_on, align 8
  %68 = ptrtoint ptr %restart37 to i32
  call void @__asan_load1_noabort(i32 %68)
  %bf.load224 = load i8, ptr %restart37, align 8
  %bf.set226 = or i8 %bf.load224, 64
  store i8 %bf.set226, ptr %restart37, align 8
  %69 = ptrtoint ptr %detected_std to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 3277024, ptr %detected_std, align 8
  br label %sw.epilog238

sw.bb232:                                         ; preds = %for.end144
  call void @__sanitizer_cov_trace_pc() #7
  %70 = ptrtoint ptr %detected_std to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 46848, ptr %detected_std, align 8
  br label %no_second

no_second:                                        ; preds = %sw.bb232, %land.lhs.true214.critedge.no_second_crit_edge, %if.else195.no_second_crit_edge, %land.lhs.true158.no_second_crit_edge, %sw.bb147.no_second_crit_edge, %for.end144.no_second_crit_edge
  %71 = ptrtoint ptr %second205 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %38, ptr %second205, align 4
  tail call void @msp3400c_set_mode(ptr noundef %data, i32 noundef 3)
  br label %sw.epilog238

sw.epilog238:                                     ; preds = %no_second, %if.then218, %if.then202, %if.then186, %sw.bb172, %if.then160, %if.then150
  %72 = ptrtoint ptr %second205 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %second205, align 4
  %74 = ptrtoint ptr %main to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %main, align 8
  %and.i394 = and i32 %73, 4095
  %call.i395 = tail call i32 @msp_write_dem(ptr noundef %data, i32 noundef 147, i32 noundef %and.i394) #5
  %shr.i396 = ashr i32 %73, 12
  %call1.i397 = tail call i32 @msp_write_dem(ptr noundef %data, i32 noundef 155, i32 noundef %shr.i396) #5
  %and2.i398 = and i32 %75, 4095
  %call3.i399 = tail call i32 @msp_write_dem(ptr noundef %data, i32 noundef 163, i32 noundef %and2.i398) #5
  %shr4.i400 = ashr i32 %75, 12
  %call5.i401 = tail call i32 @msp_write_dem(ptr noundef %data, i32 noundef 171, i32 noundef %shr4.i400) #5
  %call6.i402 = tail call i32 @msp_write_dem(ptr noundef %data, i32 noundef 86, i32 noundef 0) #5
  %76 = ptrtoint ptr %scan_in_progress54 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %scan_in_progress54, align 4
  tail call fastcc void @msp3400c_set_audmode(ptr noundef %data)
  tail call void @msp_update_volume(ptr noundef %1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %77 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool242.not = icmp eq i32 %77, 0
  br i1 %tobool242.not, label %sw.epilog238.if.end244_crit_edge, label %if.then243

sw.epilog238.if.end244_crit_edge:                 ; preds = %sw.epilog238
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end244

if.then243:                                       ; preds = %sw.epilog238
  %78 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %driver_data.i.i, align 4
  %main.i = getelementptr inbounds %struct.msp_state, ptr %79, i32 0, i32 30
  %second.i = getelementptr inbounds %struct.msp_state, ptr %79, i32 0, i32 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp2.i = icmp sgt i32 %77, 0
  br i1 %cmp2.i, label %if.end25.sink.split.i, label %if.then243.if.end25.i_crit_edge

if.then243.if.end25.i_crit_edge:                  ; preds = %if.then243
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25.i

if.end25.sink.split.i:                            ; preds = %if.then243
  call void @__sanitizer_cov_trace_pc() #7
  %80 = ptrtoint ptr %main.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %main.i, align 8
  %82 = ptrtoint ptr %second.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %second.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %83)
  %cmp.i = icmp eq i32 %81, %83
  %.str.153..str.156.i = select i1 %cmp.i, ptr @.str.153, ptr @.str.156
  %div18.i = sdiv i32 %81, 910000
  %div20.i = sdiv i32 %81, 910
  %rem21.i = srem i32 %div20.i, 1000
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev12, ptr noundef nonnull %.str.153..str.156.i, i32 noundef %div18.i, i32 noundef %rem21.i) #8
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.end25.sink.split.i, %if.then243.if.end25.i_crit_edge
  %mode.i = getelementptr inbounds %struct.msp_state, ptr %79, i32 0, i32 23
  %84 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %mode.i, align 4
  %.off.i = add i32 %85, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %do.body30.i, label %if.end25.i.if.end45.i_crit_edge

if.end25.i.if.end45.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45.i

do.body30.i:                                      ; preds = %if.end25.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %86 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp31.i = icmp sgt i32 %86, 0
  br i1 %cmp31.i, label %do.end35.i, label %do.body30.i.if.end45thread-pre-split.i_crit_edge

do.body30.i.if.end45thread-pre-split.i_crit_edge: ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45thread-pre-split.i

do.end35.i:                                       ; preds = %do.body30.i
  call void @__sanitizer_cov_trace_pc() #7
  %87 = ptrtoint ptr %second.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %second.i, align 4
  %div38.i = sdiv i32 %88, 910000
  %div40.i = sdiv i32 %88, 910
  %rem41.i = srem i32 %div40.i, 1000
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev12, ptr noundef nonnull @.str.159, i32 noundef %div38.i, i32 noundef %rem41.i) #8
  br label %if.end45thread-pre-split.i

if.end45thread-pre-split.i:                       ; preds = %do.end35.i, %do.body30.i.if.end45thread-pre-split.i_crit_edge
  %89 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %.pr.i = load i32, ptr %mode.i, align 4
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.end45thread-pre-split.i, %if.end25.i.if.end45.i_crit_edge
  %90 = phi i32 [ %.pr.i, %if.end45thread-pre-split.i ], [ %85, %if.end25.i.if.end45.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %90)
  %cmp47.i = icmp eq i32 %90, 7
  br i1 %cmp47.i, label %do.body49.i, label %if.end45.i.if.end64.i_crit_edge

if.end45.i.if.end64.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64.i

do.body49.i:                                      ; preds = %if.end45.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %91 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp50.i = icmp sgt i32 %91, 0
  br i1 %cmp50.i, label %do.end54.i, label %do.body49.i.if.end64.i_crit_edge

do.body49.i.if.end64.i_crit_edge:                 ; preds = %do.body49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64.i

do.end54.i:                                       ; preds = %do.body49.i
  call void @__sanitizer_cov_trace_pc() #7
  %92 = ptrtoint ptr %second.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %second.i, align 4
  %div57.i = sdiv i32 %93, 910000
  %div59.i = sdiv i32 %93, 910
  %rem60.i = srem i32 %div59.i, 1000
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev12, ptr noundef nonnull @.str.162, i32 noundef %div57.i, i32 noundef %rem60.i) #8
  br label %if.end64.i

if.end64.i:                                       ; preds = %do.end54.i, %do.body49.i.if.end64.i_crit_edge, %if.end45.i.if.end64.i_crit_edge
  %94 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %95)
  %cmp66.i = icmp eq i32 %95, 3
  br i1 %cmp66.i, label %land.lhs.true.i, label %if.end64.i.if.end244_crit_edge

if.end64.i.if.end244_crit_edge:                   ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end244

land.lhs.true.i:                                  ; preds = %if.end64.i
  %96 = ptrtoint ptr %main.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %main.i, align 8
  %98 = ptrtoint ptr %second.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %second.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %97, i32 %99)
  %cmp69.not.i = icmp eq i32 %97, %99
  br i1 %cmp69.not.i, label %land.lhs.true.i.if.end244_crit_edge, label %do.body71.i

land.lhs.true.i.if.end244_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end244

do.body71.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %100 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp72.i = icmp sgt i32 %100, 0
  br i1 %cmp72.i, label %do.end76.i, label %do.body71.i.if.end244_crit_edge

do.body71.i.if.end244_crit_edge:                  ; preds = %do.body71.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end244

do.end76.i:                                       ; preds = %do.body71.i
  call void @__sanitizer_cov_trace_pc() #7
  %div79.i = sdiv i32 %99, 910000
  %div81.i = sdiv i32 %99, 910
  %rem82.i = srem i32 %div81.i, 1000
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev12, ptr noundef nonnull @.str.165, i32 noundef %div79.i, i32 noundef %rem82.i) #8
  br label %if.end244

if.end244:                                        ; preds = %do.end76.i, %do.body71.i.if.end244_crit_edge, %land.lhs.true.i.if.end244_crit_edge, %if.end64.i.if.end244_crit_edge, %sw.epilog238.if.end244_crit_edge
  %101 = ptrtoint ptr %restart37 to i32
  call void @__asan_load1_noabort(i32 %101)
  %bf.load246418 = load i8, ptr %restart37, align 8
  %102 = and i8 %bf.load246418, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool248.not419 = icmp eq i8 %102, 0
  br i1 %tobool248.not419, label %if.end244.for.cond.backedge_crit_edge, label %if.end244.while.body_crit_edge

if.end244.while.body_crit_edge:                   ; preds = %if.end244
  br label %while.body

if.end244.for.cond.backedge_crit_edge:            ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.backedge

while.body:                                       ; preds = %if.end253.while.body_crit_edge, %if.end244.while.body_crit_edge
  %count.3420 = phi i32 [ %spec.select384, %if.end253.while.body_crit_edge ], [ 3, %if.end244.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.3420)
  %tobool249.not = icmp eq i32 %count.3420, 0
  %cond = select i1 %tobool249.not, i32 5000, i32 1000
  %call250 = tail call i32 @msp_sleep(ptr noundef %1, i32 noundef %cond) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call250)
  %tobool251.not = icmp eq i32 %call250, 0
  br i1 %tobool251.not, label %if.end253, label %while.body.restart.backedge_crit_edge

while.body.restart.backedge_crit_edge:            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %restart.backedge

if.end253:                                        ; preds = %while.body
  %dec = add i32 %count.3420, -1
  %spec.select384 = select i1 %tobool249.not, i32 0, i32 %dec
  tail call fastcc void @watch_stereo(ptr noundef %data)
  %103 = ptrtoint ptr %restart37 to i32
  call void @__asan_load1_noabort(i32 %103)
  %bf.load246 = load i8, ptr %restart37, align 8
  %104 = and i8 %bf.load246, 64
  %tobool248.not = icmp eq i8 %104, 0
  br i1 %tobool248.not, label %if.end253.for.cond.backedge_crit_edge, label %if.end253.while.body_crit_edge

if.end253.while.body_crit_edge:                   ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end253.for.cond.backedge_crit_edge:            ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.backedge

do.body258:                                       ; preds = %do.end36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %105 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp259 = icmp sgt i32 %105, 0
  br i1 %cmp259, label %do.end264, label %do.body258.do.end268_crit_edge

do.body258.do.end268_crit_edge:                   ; preds = %do.body258
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end268

do.end264:                                        ; preds = %do.body258
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev12, ptr noundef nonnull @.str.30) #8
  br label %do.end268

do.end268:                                        ; preds = %do.end264, %do.body258.do.end268_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_freezable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msp_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msp_update_volume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msp_read_dsp(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msp3400c_set_audmode(ptr noundef %client) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %audmode = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 35
  %2 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %audmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %4 = icmp ult i32 %3, 5
  br i1 %4, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr [5 x ptr], ptr @msp3400c_set_audmode.strmode, i32 0, i32 %3
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %6, %cond.true ], [ @.str, %entry.cond.end_crit_edge ]
  %opmode = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 21
  %7 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %opmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp7 = icmp eq i32 %8, 2
  br i1 %cmp7, label %do.body, label %if.end14

do.body:                                          ; preds = %cond.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %9 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp8 = icmp sgt i32 %9, 0
  br i1 %cmp8, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev, ptr noundef nonnull @.str.121, i32 noundef %3) #8
  br label %cleanup

if.end14:                                         ; preds = %cond.end
  %mode = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 23
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %11)
  %cmp15.not = icmp eq i32 %11, 9
  br i1 %cmp15.not, label %do.body89, label %if.then16

if.then16:                                        ; preds = %if.end14
  %rxsubchans = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 36
  %12 = ptrtoint ptr %rxsubchans to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rxsubchans, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp17 = icmp eq i32 %13, 1
  br i1 %cmp17, label %if.then16.if.end31_crit_edge, label %if.else

if.then16.if.end31_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

if.else:                                          ; preds = %if.then16
  %and = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else25, label %if.then20

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch = icmp ult i32 %3, 2
  %spec.select216 = select i1 %switch, i32 3, i32 %3
  br label %if.end31

if.else25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp26.not = icmp ne i32 %3, 0
  %spec.store.select = zext i1 %cmp26.not to i32
  br label %if.end31

if.end31:                                         ; preds = %if.else25, %if.then20, %if.then16.if.end31_crit_edge
  %audmode5.0 = phi i32 [ %spec.store.select, %if.else25 ], [ 0, %if.then16.if.end31_crit_edge ], [ %spec.select216, %if.then20 ]
  %14 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.210)
  switch i32 %11, label %do.body110 [
    i32 3, label %do.body33
    i32 4, label %do.body48
    i32 5, label %if.end31.do.body64_crit_edge
    i32 6, label %if.end31.do.body64_crit_edge227
    i32 7, label %if.end31.do.body64_crit_edge228
    i32 8, label %do.body78
    i32 2, label %do.body100
  ]

if.end31.do.body64_crit_edge228:                  ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body64

if.end31.do.body64_crit_edge227:                  ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body64

if.end31.do.body64_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body64

do.body33:                                        ; preds = %if.end31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %15 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp34 = icmp sgt i32 %15, 0
  br i1 %cmp34, label %do.end38, label %do.body33.do.end42_crit_edge

do.body33.do.end42_crit_edge:                     ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end42

do.end38:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #7
  %dev39 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev39, ptr noundef nonnull @.str.124, ptr noundef %cond) #8
  br label %do.end42

do.end42:                                         ; preds = %do.end38, %do.body33.do.end42_crit_edge
  %16 = zext i32 %audmode5.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.211)
  switch i32 %audmode5.0, label %do.end42.do.body121_crit_edge [
    i32 1, label %sw.bb43
    i32 0, label %do.end42.sw.bb45_crit_edge
    i32 3, label %do.end42.sw.bb45_crit_edge229
    i32 2, label %do.end42.sw.bb45_crit_edge230
    i32 4, label %do.end42.sw.bb45_crit_edge231
  ]

do.end42.sw.bb45_crit_edge231:                    ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb45

do.end42.sw.bb45_crit_edge230:                    ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb45

do.end42.sw.bb45_crit_edge229:                    ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb45

do.end42.sw.bb45_crit_edge:                       ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb45

do.end42.do.body121_crit_edge:                    ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body121

sw.bb43:                                          ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #7
  %call44 = tail call i32 @msp_write_dsp(ptr noundef %client, i32 noundef 14, i32 noundef 12289) #5
  br label %do.body121

sw.bb45:                                          ; preds = %do.end42.sw.bb45_crit_edge, %do.end42.sw.bb45_crit_edge229, %do.end42.sw.bb45_crit_edge230, %do.end42.sw.bb45_crit_edge231
  %call46 = tail call i32 @msp_write_dsp(ptr noundef %client, i32 noundef 14, i32 noundef 12288) #5
  br label %do.body121

do.body48:                                        ; preds = %if.end31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %17 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp49 = icmp sgt i32 %17, 0
  br i1 %cmp49, label %do.end53, label %do.body48.do.end57_crit_edge

do.body48.do.end57_crit_edge:                     ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end57

do.end53:                                         ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #7
  %dev54 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev54, ptr noundef nonnull @.str.127, ptr noundef %cond) #8
  br label %do.end57

do.end57:                                         ; preds = %do.end53, %do.body48.do.end57_crit_edge
  %18 = zext i32 %audmode5.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.212)
  switch i32 %audmode5.0, label %do.end57.do.body121_crit_edge [
    i32 0, label %sw.bb58
    i32 1, label %do.end57.sw.bb59_crit_edge
    i32 4, label %do.end57.sw.bb59_crit_edge232
    i32 3, label %sw.bb60
    i32 2, label %sw.bb61
  ]

do.end57.sw.bb59_crit_edge232:                    ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb59

do.end57.sw.bb59_crit_edge:                       ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb59

do.end57.do.body121_crit_edge:                    ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body121

sw.bb58:                                          ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @msp3400c_set_carrier(ptr noundef %client, i32 noundef 5916444, i32 noundef 5916444)
  br label %do.body121

sw.bb59:                                          ; preds = %do.end57.sw.bb59_crit_edge, %do.end57.sw.bb59_crit_edge232
  tail call void @msp3400c_set_carrier(ptr noundef %client, i32 noundef 6553600, i32 noundef 6389760)
  br label %do.body121

sw.bb60:                                          ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @msp3400c_set_carrier(ptr noundef %client, i32 noundef 6717440, i32 noundef 6389760)
  br label %do.body121

sw.bb61:                                          ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @msp3400c_set_carrier(ptr noundef %client, i32 noundef 6717440, i32 noundef 6389760)
  br label %do.body121

do.body64:                                        ; preds = %if.end31.do.body64_crit_edge, %if.end31.do.body64_crit_edge227, %if.end31.do.body64_crit_edge228
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %19 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp65 = icmp sgt i32 %19, 0
  br i1 %cmp65, label %do.end69, label %do.body64.do.end73_crit_edge

do.body64.do.end73_crit_edge:                     ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end73

do.end69:                                         ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #7
  %dev70 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev70, ptr noundef nonnull @.str.130, ptr noundef %cond) #8
  br label %do.end73

do.end73:                                         ; preds = %do.end69, %do.body64.do.end73_crit_edge
  %nicam_on = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 26
  %20 = ptrtoint ptr %nicam_on to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nicam_on, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool74.not = icmp eq i32 %21, 0
  %spec.select = select i1 %tobool74.not, i32 0, i32 256
  br label %do.body121

do.body78:                                        ; preds = %if.end31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %22 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp79 = icmp sgt i32 %22, 0
  br i1 %cmp79, label %do.end83, label %do.body78.do.end130_crit_edge

do.body78.do.end130_crit_edge:                    ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end130

do.end83:                                         ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #7
  %dev84 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev84, ptr noundef nonnull @.str.133, ptr noundef %cond) #8
  br label %do.body121

do.body89:                                        ; preds = %if.end14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %23 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp90 = icmp sgt i32 %23, 0
  br i1 %cmp90, label %do.end94, label %do.body89.do.end130_crit_edge

do.body89.do.end130_crit_edge:                    ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end130

do.end94:                                         ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #7
  %dev95 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev95, ptr noundef nonnull @.str.136, ptr noundef %cond) #8
  br label %do.body121

do.body100:                                       ; preds = %if.end31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %24 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp101 = icmp sgt i32 %24, 0
  br i1 %cmp101, label %do.end105, label %do.body100.do.end130_crit_edge

do.body100.do.end130_crit_edge:                   ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end130

do.end105:                                        ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #7
  %dev106 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev106, ptr noundef nonnull @.str.139, ptr noundef %cond) #8
  br label %do.body121

do.body110:                                       ; preds = %if.end31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %25 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp111 = icmp sgt i32 %25, 0
  br i1 %cmp111, label %do.end115, label %do.body110.cleanup_crit_edge

do.body110.cleanup_crit_edge:                     ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end115:                                        ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #7
  %dev116 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev116, ptr noundef nonnull @.str.142) #8
  br label %cleanup

do.body121:                                       ; preds = %do.end105, %do.end94, %do.end83, %do.end73, %sw.bb61, %sw.bb60, %sw.bb59, %sw.bb58, %do.end57.do.body121_crit_edge, %sw.bb45, %sw.bb43, %do.end42.do.body121_crit_edge
  %audmode5.0218.ph = phi i32 [ %3, %do.end94 ], [ %audmode5.0, %do.end73 ], [ 1, %sw.bb43 ], [ %audmode5.0, %sw.bb45 ], [ %audmode5.0, %do.end42.do.body121_crit_edge ], [ 0, %sw.bb58 ], [ %audmode5.0, %sw.bb59 ], [ 3, %sw.bb60 ], [ 2, %sw.bb61 ], [ %audmode5.0, %do.end57.do.body121_crit_edge ], [ %audmode5.0, %do.end83 ], [ %audmode5.0, %do.end105 ]
  %src.0.ph = phi i32 [ 512, %do.end94 ], [ %spec.select, %do.end73 ], [ 0, %sw.bb43 ], [ 0, %sw.bb45 ], [ 0, %do.end42.do.body121_crit_edge ], [ 0, %sw.bb58 ], [ 0, %sw.bb59 ], [ 0, %sw.bb60 ], [ 0, %sw.bb61 ], [ 0, %do.end57.do.body121_crit_edge ], [ 0, %do.end83 ], [ 0, %do.end105 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %.pr = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp122 = icmp sgt i32 %.pr, 0
  br i1 %cmp122, label %do.end126, label %do.body121.do.end130_crit_edge

do.body121.do.end130_crit_edge:                   ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end130

do.end126:                                        ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #7
  %dev127 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev127, ptr noundef nonnull @.str.145, i32 noundef %audmode5.0218.ph) #8
  br label %do.end130

do.end130:                                        ; preds = %do.end126, %do.body121.do.end130_crit_edge, %do.body100.do.end130_crit_edge, %do.body89.do.end130_crit_edge, %do.body78.do.end130_crit_edge
  %src.0226 = phi i32 [ %src.0.ph, %do.end126 ], [ %src.0.ph, %do.body121.do.end130_crit_edge ], [ 512, %do.body89.do.end130_crit_edge ], [ 0, %do.body78.do.end130_crit_edge ], [ 0, %do.body100.do.end130_crit_edge ]
  %audmode5.0220 = phi i32 [ %audmode5.0218.ph, %do.end126 ], [ %audmode5.0218.ph, %do.body121.do.end130_crit_edge ], [ %3, %do.body89.do.end130_crit_edge ], [ %audmode5.0, %do.body78.do.end130_crit_edge ], [ %audmode5.0, %do.body100.do.end130_crit_edge ]
  %26 = zext i32 %audmode5.0220 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.213)
  switch i32 %audmode5.0220, label %do.end130.do.body155_crit_edge [
    i32 1, label %do.end130.sw.bb131_crit_edge
    i32 4, label %do.end130.sw.bb131_crit_edge233
    i32 0, label %sw.bb132
    i32 2, label %sw.bb152
  ]

do.end130.sw.bb131_crit_edge233:                  ; preds = %do.end130
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb131

do.end130.sw.bb131_crit_edge:                     ; preds = %do.end130
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb131

do.end130.do.body155_crit_edge:                   ; preds = %do.end130
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body155

sw.bb131:                                         ; preds = %do.end130.sw.bb131_crit_edge, %do.end130.sw.bb131_crit_edge233
  %or = or i32 %src.0226, 32
  br label %do.body155

sw.bb132:                                         ; preds = %do.end130
  %27 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %28)
  %cmp134 = icmp eq i32 %28, 7
  br i1 %cmp134, label %do.body136, label %if.end146

do.body136:                                       ; preds = %sw.bb132
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %29 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp137 = icmp sgt i32 %29, 0
  br i1 %cmp137, label %do.end141, label %do.body136.do.end145_crit_edge

do.body136.do.end145_crit_edge:                   ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end145

do.end141:                                        ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #7
  %dev142 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev142, ptr noundef nonnull @.str.148) #8
  br label %do.end145

do.end145:                                        ; preds = %do.end141, %do.body136.do.end145_crit_edge
  tail call void @msp_set_scart(ptr noundef %client, i32 noundef 6, i32 noundef 0) #5
  br label %do.body155

if.end146:                                        ; preds = %sw.bb132
  call void @__sanitizer_cov_trace_pc() #7
  %rxsubchans147 = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 36
  %30 = ptrtoint ptr %rxsubchans147 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rxsubchans147, align 8
  %and148 = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  %spec.select215 = select i1 %tobool149.not, i32 %src.0226, i32 48
  br label %do.body155

sw.bb152:                                         ; preds = %do.end130
  call void @__sanitizer_cov_trace_pc() #7
  %or153 = or i32 %src.0226, 16
  br label %do.body155

do.body155:                                       ; preds = %sw.bb152, %if.end146, %do.end145, %sw.bb131, %do.end130.do.body155_crit_edge
  %src.1 = phi i32 [ %src.0226, %do.end130.do.body155_crit_edge ], [ %or153, %sw.bb152 ], [ 512, %do.end145 ], [ %or, %sw.bb131 ], [ %spec.select215, %if.end146 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %32 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp156 = icmp sgt i32 %32, 0
  br i1 %cmp156, label %do.end160, label %do.body155.do.end164_crit_edge

do.body155.do.end164_crit_edge:                   ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end164

do.end160:                                        ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #7
  %dev161 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev161, ptr noundef nonnull @.str.151, i32 noundef %src.1) #8
  br label %do.end164

do.end164:                                        ; preds = %do.end160, %do.body155.do.end164_crit_edge
  %conv = trunc i32 %src.1 to i16
  tail call fastcc void @msp_set_source(ptr noundef %client, i16 noundef zeroext %conv)
  br label %cleanup

cleanup:                                          ; preds = %do.end164, %do.end115, %do.body110.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @watch_stereo(ptr noundef %client) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @msp_detect_stereo(ptr noundef %client)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %opmode.i = getelementptr inbounds %struct.msp_state, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %opmode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %opmode.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.214)
  switch i32 %5, label %if.then.if.end_crit_edge [
    i32 0, label %if.then.sw.bb.i_crit_edge
    i32 1, label %if.then.sw.bb.i_crit_edge8
    i32 2, label %sw.bb2.i
  ]

if.then.sw.bb.i_crit_edge8:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

if.then.sw.bb.i_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

sw.bb.i:                                          ; preds = %if.then.sw.bb.i_crit_edge, %if.then.sw.bb.i_crit_edge8
  tail call fastcc void @msp3400c_set_audmode(ptr noundef %client) #5
  br label %if.end

sw.bb2.i:                                         ; preds = %if.then
  %std.i.i = getelementptr inbounds %struct.msp_state, ptr %3, i32 0, i32 22
  %7 = ptrtoint ptr %std.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %std.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %8)
  %cmp.i.i = icmp eq i32 %8, 32
  br i1 %cmp.i.i, label %if.then.i.i, label %sw.bb2.i.msp34xxg_set_audmode.exit.i_crit_edge

sw.bb2.i.msp34xxg_set_audmode.exit.i_crit_edge:   ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp34xxg_set_audmode.exit.i

if.then.i.i:                                      ; preds = %sw.bb2.i
  %rxsubchans.i.i = getelementptr inbounds %struct.msp_state, ptr %3, i32 0, i32 36
  %9 = ptrtoint ptr %rxsubchans.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rxsubchans.i.i, align 8
  %and.i.i = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.if.end8.sink.split.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.if.end8.sink.split.i.i_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.sink.split.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %audmode.i.i = getelementptr inbounds %struct.msp_state, ptr %3, i32 0, i32 35
  %11 = ptrtoint ptr %audmode.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %audmode.i.i, align 4
  %13 = add i32 %12, -2
  %switch.and.i.i = and i32 %13, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i)
  %switch.selectcmp.i.i = icmp eq i32 %switch.and.i.i, 0
  %14 = select i1 %switch.selectcmp.i.i, i32 33, i32 32
  br label %if.end8.sink.split.i.i

if.end8.sink.split.i.i:                           ; preds = %land.lhs.true.i.i, %if.then.i.i.if.end8.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ %14, %land.lhs.true.i.i ], [ 32, %if.then.i.i.if.end8.sink.split.i.i_crit_edge ]
  %call6.i.i = tail call i32 @msp_write_dem(ptr noundef %client, i32 noundef 32, i32 noundef %.sink.i.i) #5
  br label %msp34xxg_set_audmode.exit.i

msp34xxg_set_audmode.exit.i:                      ; preds = %if.end8.sink.split.i.i, %sw.bb2.i.msp34xxg_set_audmode.exit.i_crit_edge
  tail call fastcc void @msp34xxg_set_sources(ptr noundef %client) #5
  br label %if.end

if.end:                                           ; preds = %msp34xxg_set_audmode.exit.i, %sw.bb.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @msp_once to i32))
  %15 = load i8, ptr @msp_once, align 1, !range !333
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool3.not = icmp eq i8 %15, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %watch_stereo = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 41
  %16 = ptrtoint ptr %watch_stereo to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %watch_stereo, align 8
  %bf.clear = and i8 %bf.load, -65
  store i8 %bf.clear, ptr %watch_stereo, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msp3410d_thread(ptr noundef %data) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %data, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %2 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.i2c_client, ptr %data, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev, ptr noundef nonnull @.str.32) #8
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %detected_std = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 25
  %3 = ptrtoint ptr %detected_std to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 16777215, ptr %detected_std, align 8
  %call5 = tail call zeroext i1 @set_freezable() #5
  %dev12 = getelementptr inbounds %struct.i2c_client, ptr %data, i32 0, i32 4
  %restart37 = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 41
  %mode = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 23
  %scan_in_progress54 = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 38
  %radio = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 20
  %v4l2_std = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 24
  %nicam_on = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 26
  %main123 = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 30
  %second125 = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 31
  %std126 = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 22
  %rxsubchans = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 36
  %has_nicam = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 5
  %has_i2s_conf = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 14
  %i2s_mode = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 29
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %do.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %4 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp7 = icmp sgt i32 %4, 1
  br i1 %cmp7, label %do.end11, label %for.cond.do.end15_crit_edge

for.cond.do.end15_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end15

do.end11:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev12, ptr noundef nonnull @.str.35) #8
  br label %do.end15

do.end15:                                         ; preds = %do.end11, %for.cond.do.end15_crit_edge
  %call16 = tail call i32 @msp_sleep(ptr noundef %1, i32 noundef -1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %5 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp18 = icmp sgt i32 %5, 1
  br i1 %cmp18, label %do.end22, label %do.end15.restart.preheader_crit_edge

do.end15.restart.preheader_crit_edge:             ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %restart.preheader

do.end22:                                         ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev12, ptr noundef nonnull @.str.38) #8
  br label %restart.preheader

restart.preheader:                                ; preds = %do.end22, %do.end15.restart.preheader_crit_edge
  br label %restart

restart:                                          ; preds = %restart.backedge, %restart.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %6 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp28 = icmp sgt i32 %6, 1
  br i1 %cmp28, label %do.end32, label %restart.do.end36_crit_edge

restart.do.end36_crit_edge:                       ; preds = %restart
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end36

do.end32:                                         ; preds = %restart
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev12, ptr noundef nonnull @.str.15) #8
  br label %do.end36

do.end36:                                         ; preds = %do.end32, %restart.do.end36_crit_edge
  %7 = ptrtoint ptr %restart37 to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %restart37, align 8
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %restart37, align 8
  %call38 = tail call zeroext i1 @kthread_should_stop() #5
  br i1 %call38, label %do.body210, label %if.end40

if.end40:                                         ; preds = %do.end36
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %9)
  %cmp41 = icmp eq i32 %9, 9
  br i1 %cmp41, label %do.body43, label %if.end53

do.body43:                                        ; preds = %if.end40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %10 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp44 = icmp sgt i32 %10, 0
  br i1 %cmp44, label %do.end48, label %do.body43.do.end52_crit_edge

do.body43.do.end52_crit_edge:                     ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end52

do.end48:                                         ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev12, ptr noundef nonnull @.str.18) #8
  br label %do.end52

do.end52:                                         ; preds = %do.end48, %do.body43.do.end52_crit_edge
  %11 = ptrtoint ptr %scan_in_progress54 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %scan_in_progress54, align 4
  tail call void @msp_update_volume(ptr noundef %1) #5
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.end205.for.cond.backedge_crit_edge, %if.end194.for.cond.backedge_crit_edge, %do.end52
  br label %for.cond

if.end53:                                         ; preds = %if.end40
  %12 = ptrtoint ptr %scan_in_progress54 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %scan_in_progress54, align 4
  tail call void @msp_update_volume(ptr noundef %1) #5
  %13 = ptrtoint ptr %radio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %radio, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.else, label %if.end53.if.end57_crit_edge

if.end53.if.end57_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

if.else:                                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %v4l2_std to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %v4l2_std, align 8
  %and = and i64 %16, 45056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool56.not = icmp eq i64 %and, 0
  %cond = select i1 %tobool56.not, i32 1, i32 32
  br label %if.end57

if.end57:                                         ; preds = %if.else, %if.end53.if.end57_crit_edge
  %std.0 = phi i32 [ %cond, %if.else ], [ 64, %if.end53.if.end57_crit_edge ]
  %17 = ptrtoint ptr %restart37 to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load58 = load i8, ptr %restart37, align 8
  %bf.clear59 = and i8 %bf.load58, -65
  store i8 %bf.clear59, ptr %restart37, align 8
  %18 = ptrtoint ptr %nicam_on to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %nicam_on, align 8
  %call61 = tail call i32 @msp_sleep(ptr noundef %1, i32 noundef 200) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.end57.restart.backedge_crit_edge

if.end57.restart.backedge_crit_edge:              ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %restart.backedge

if.end64:                                         ; preds = %if.end57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %19 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp68 = icmp sgt i32 %19, 1
  br i1 %cmp68, label %do.end72, label %if.end64.if.end78_crit_edge

if.end64.if.end78_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end78

do.end72:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  %call74 = tail call ptr @msp_standard_std_name(i32 noundef %std.0)
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev12, ptr noundef nonnull @.str.45, ptr noundef %call74, i32 noundef %std.0) #8
  br label %if.end78

if.end78:                                         ; preds = %do.end72, %if.end64.if.end78_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %std.0)
  %cmp79.not = icmp eq i32 %std.0, 1
  br i1 %cmp79.not, label %if.else81, label %if.end78.for.inc.13_crit_edge

if.end78.for.inc.13_crit_edge:                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.13

if.else81:                                        ; preds = %if.end78
  %call82 = tail call i32 @msp_write_dem(ptr noundef %data, i32 noundef 32, i32 noundef 1) #5
  %call84305 = tail call i32 @msp_sleep(ptr noundef %1, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84305)
  %tobool85.not306 = icmp eq i32 %call84305, 0
  br i1 %tobool85.not306, label %if.else81.if.end87_crit_edge, label %if.else81.restart.backedge_crit_edge

if.else81.restart.backedge_crit_edge:             ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #7
  br label %restart.backedge

if.else81.if.end87_crit_edge:                     ; preds = %if.else81
  br label %if.end87

restart.backedge:                                 ; preds = %while.body.restart.backedge_crit_edge, %do.end101.restart.backedge_crit_edge, %if.else81.restart.backedge_crit_edge, %if.end57.restart.backedge_crit_edge
  br label %restart

if.end87:                                         ; preds = %do.end101.if.end87_crit_edge, %if.else81.if.end87_crit_edge
  %call88 = tail call i32 @msp_read_dem(ptr noundef %data, i32 noundef 126) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %call88)
  %cmp89 = icmp slt i32 %call88, 2047
  br i1 %cmp89, label %if.end102, label %do.body92

do.body92:                                        ; preds = %if.end87
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %20 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp93 = icmp sgt i32 %20, 1
  br i1 %cmp93, label %do.end97, label %do.body92.do.end101_crit_edge

do.body92.do.end101_crit_edge:                    ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end101

do.end97:                                         ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev12, ptr noundef nonnull @.str.48) #8
  br label %do.end101

do.end101:                                        ; preds = %do.end97, %do.body92.do.end101_crit_edge
  %call84 = tail call i32 @msp_sleep(ptr noundef %1, i32 noundef 100) #5
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %do.end101.if.end87_crit_edge, label %do.end101.restart.backedge_crit_edge

do.end101.restart.backedge_crit_edge:             ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #7
  br label %restart.backedge

do.end101.if.end87_crit_edge:                     ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end87

if.end102:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %call88)
  %21 = icmp ult i32 %call88, 14
  br i1 %21, label %if.end102.do.body111_crit_edge, label %if.end102.for.inc.13_crit_edge

if.end102.for.inc.13_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.13

if.end102.do.body111_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body111

for.inc.13:                                       ; preds = %if.end102.for.inc.13_crit_edge, %if.end78.for.inc.13_crit_edge
  %val.0316322325328331334337340343346349352355358 = phi i32 [ %std.0, %if.end78.for.inc.13_crit_edge ], [ %call88, %if.end102.for.inc.13_crit_edge ]
  %22 = zext i32 %val.0316322325328331334337340343346349352355358 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.215)
  switch i32 %val.0316322325328331334337340343346349352355358, label %for.inc.20 [
    i32 32, label %for.inc.13.do.body111_crit_edge
    i32 33, label %do.body111.fold.split374
    i32 48, label %do.body111.fold.split375
    i32 64, label %do.body111.fold.split376
    i32 80, label %do.body111.fold.split377
    i32 81, label %do.body111.fold.split378
    i32 96, label %do.body111.fold.split379
  ]

for.inc.13.do.body111_crit_edge:                  ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body111

for.inc.20:                                       ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body111

do.body111.fold.split374:                         ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body111

do.body111.fold.split375:                         ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body111

do.body111.fold.split376:                         ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body111

do.body111.fold.split377:                         ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body111

do.body111.fold.split378:                         ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body111

do.body111.fold.split379:                         ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body111

do.body111:                                       ; preds = %do.body111.fold.split379, %do.body111.fold.split378, %do.body111.fold.split377, %do.body111.fold.split376, %do.body111.fold.split375, %do.body111.fold.split374, %for.inc.20, %for.inc.13.do.body111_crit_edge, %if.end102.do.body111_crit_edge
  %val.0317 = phi i32 [ %val.0316322325328331334337340343346349352355358, %for.inc.13.do.body111_crit_edge ], [ %val.0316322325328331334337340343346349352355358, %for.inc.20 ], [ %val.0316322325328331334337340343346349352355358, %do.body111.fold.split374 ], [ %val.0316322325328331334337340343346349352355358, %do.body111.fold.split375 ], [ %val.0316322325328331334337340343346349352355358, %do.body111.fold.split376 ], [ %val.0316322325328331334337340343346349352355358, %do.body111.fold.split377 ], [ %val.0316322325328331334337340343346349352355358, %do.body111.fold.split378 ], [ %val.0316322325328331334337340343346349352355358, %do.body111.fold.split379 ], [ %call88, %if.end102.do.body111_crit_edge ]
  %i.0.lcssa = phi i32 [ 14, %for.inc.13.do.body111_crit_edge ], [ 21, %for.inc.20 ], [ 15, %do.body111.fold.split374 ], [ 16, %do.body111.fold.split375 ], [ 17, %do.body111.fold.split376 ], [ 18, %do.body111.fold.split377 ], [ 19, %do.body111.fold.split378 ], [ 20, %do.body111.fold.split379 ], [ %call88, %if.end102.do.body111_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %23 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp112 = icmp sgt i32 %23, 0
  br i1 %cmp112, label %do.end116, label %do.body111.do.end121_crit_edge

do.body111.do.end121_crit_edge:                   ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end121

do.end116:                                        ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #7
  %call118 = tail call ptr @msp_standard_std_name(i32 noundef %val.0317)
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev12, ptr noundef nonnull @.str.51, ptr noundef %call118, i32 noundef %val.0317) #8
  br label %do.end121

do.end121:                                        ; preds = %do.end116, %do.body111.do.end121_crit_edge
  %main = getelementptr [22 x %struct.anon], ptr @msp_stdlist, i32 0, i32 %i.0.lcssa, i32 1
  %24 = ptrtoint ptr %main to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %main, align 4
  %26 = ptrtoint ptr %main123 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %main123, align 8
  %second = getelementptr [22 x %struct.anon], ptr @msp_stdlist, i32 0, i32 %i.0.lcssa, i32 2
  %27 = ptrtoint ptr %second to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %second, align 8
  %29 = ptrtoint ptr %second125 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %second125, align 4
  %30 = ptrtoint ptr %std126 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %val.0317, ptr %std126, align 8
  %31 = ptrtoint ptr %rxsubchans to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %rxsubchans, align 8
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @msp_amsound to i32))
  %32 = load i8, ptr @msp_amsound, align 1, !range !333
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool127.not = icmp eq i8 %32, 0
  br i1 %tobool127.not, label %do.end121.if.end155_crit_edge, label %land.lhs.true

do.end121.if.end155_crit_edge:                    ; preds = %do.end121
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end155

land.lhs.true:                                    ; preds = %do.end121
  %33 = ptrtoint ptr %radio to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %radio, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool129.not = icmp eq i32 %34, 0
  br i1 %tobool129.not, label %land.lhs.true130, label %land.lhs.true.if.end155_crit_edge

land.lhs.true.if.end155_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end155

land.lhs.true130:                                 ; preds = %land.lhs.true
  %35 = ptrtoint ptr %v4l2_std to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %v4l2_std, align 8
  %and132 = and i64 %36, 16711680
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and132)
  %tobool133.not = icmp eq i64 %and132, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %val.0317)
  %cmp135.not = icmp eq i32 %val.0317, 9
  %or.cond302 = select i1 %tobool133.not, i1 true, i1 %cmp135.not
  br i1 %or.cond302, label %land.lhs.true130.if.end155_crit_edge, label %do.body137

land.lhs.true130.if.end155_crit_edge:             ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end155

do.body137:                                       ; preds = %land.lhs.true130
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %37 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp138 = icmp sgt i32 %37, 0
  br i1 %cmp138, label %do.end142, label %do.body137.if.end155.thread_crit_edge

do.body137.if.end155.thread_crit_edge:            ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end155.thread

do.end142:                                        ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev12, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.91, i32 noundef %val.0317) #8
  br label %if.end155.thread

if.end155.thread:                                 ; preds = %do.end142, %do.body137.if.end155.thread_crit_edge
  %38 = ptrtoint ptr %std126 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 9, ptr %std126, align 8
  %call150 = tail call i32 @msp_write_dem(ptr noundef %data, i32 noundef 32, i32 noundef 9) #5
  br label %sw.bb167

if.end155:                                        ; preds = %land.lhs.true130.if.end155_crit_edge, %land.lhs.true.if.end155_crit_edge, %do.end121.if.end155_crit_edge
  %call153 = tail call fastcc i64 @msp_standard_std(i32 noundef %val.0317)
  %39 = ptrtoint ptr %detected_std to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %call153, ptr %detected_std, align 8
  %40 = zext i32 %val.0317 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.216)
  switch i32 %val.0317, label %if.end155.sw.epilog_crit_edge [
    i32 5, label %if.end155.sw.bb179_crit_edge
    i32 4, label %if.end155.sw.bb179_crit_edge387
    i32 3, label %if.end155.sw.bb179_crit_edge388
    i32 9, label %if.end155.sw.bb167_crit_edge
    i32 32, label %sw.bb174
    i32 64, label %sw.bb176
    i32 2, label %if.end155.sw.bb179_crit_edge389
    i32 10, label %if.end155.if.end161_crit_edge
    i32 8, label %if.end155.if.else159_crit_edge
    i32 11, label %if.end155.if.else159_crit_edge390
  ]

if.end155.if.else159_crit_edge390:                ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else159

if.end155.if.else159_crit_edge:                   ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else159

if.end155.if.end161_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end161

if.end155.sw.bb179_crit_edge389:                  ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb179

if.end155.sw.bb167_crit_edge:                     ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb167

if.end155.sw.bb179_crit_edge388:                  ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb179

if.end155.sw.bb179_crit_edge387:                  ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb179

if.end155.sw.bb179_crit_edge:                     ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb179

if.end155.sw.epilog_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.else159:                                       ; preds = %if.end155.if.else159_crit_edge, %if.end155.if.else159_crit_edge390
  br label %if.end161

if.end161:                                        ; preds = %if.else159, %if.end155.if.end161_crit_edge
  %storemerge = phi i32 [ 5, %if.else159 ], [ 6, %if.end155.if.end161_crit_edge ]
  %41 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %storemerge, ptr %mode, align 4
  %42 = ptrtoint ptr %nicam_on to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %nicam_on, align 8
  %43 = ptrtoint ptr %restart37 to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load164 = load i8, ptr %restart37, align 8
  %bf.set166 = or i8 %bf.load164, 64
  store i8 %bf.set166, ptr %restart37, align 8
  br label %sw.epilog

sw.bb167:                                         ; preds = %if.end155.sw.bb167_crit_edge, %if.end155.thread
  %44 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 7, ptr %mode, align 4
  %45 = ptrtoint ptr %nicam_on to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %nicam_on, align 8
  %46 = ptrtoint ptr %restart37 to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load171 = load i8, ptr %restart37, align 8
  %bf.set173 = or i8 %bf.load171, 64
  store i8 %bf.set173, ptr %restart37, align 8
  br label %sw.epilog

sw.bb174:                                         ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 8, ptr %mode, align 4
  br label %sw.epilog

sw.bb176:                                         ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2, ptr %mode, align 4
  %49 = ptrtoint ptr %rxsubchans to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 2, ptr %rxsubchans, align 8
  tail call void @msp3400c_set_mode(ptr noundef %data, i32 noundef 2)
  %call.i = tail call i32 @msp_write_dem(ptr noundef %data, i32 noundef 147, i32 noundef 3186) #5
  %call1.i = tail call i32 @msp_write_dem(ptr noundef %data, i32 noundef 155, i32 noundef 2377) #5
  %call3.i = tail call i32 @msp_write_dem(ptr noundef %data, i32 noundef 163, i32 noundef 3186) #5
  %call5.i = tail call i32 @msp_write_dem(ptr noundef %data, i32 noundef 171, i32 noundef 2377) #5
  %call6.i = tail call i32 @msp_write_dem(ptr noundef %data, i32 noundef 86, i32 noundef 0) #5
  br label %sw.epilog

sw.bb179:                                         ; preds = %if.end155.sw.bb179_crit_edge, %if.end155.sw.bb179_crit_edge387, %if.end155.sw.bb179_crit_edge388, %if.end155.sw.bb179_crit_edge389
  %50 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 3, ptr %mode, align 4
  %51 = ptrtoint ptr %restart37 to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load182 = load i8, ptr %restart37, align 8
  %bf.set184 = or i8 %bf.load182, 64
  store i8 %bf.set184, ptr %restart37, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb179, %sw.bb176, %sw.bb174, %sw.bb167, %if.end161, %if.end155.sw.epilog_crit_edge
  %call185 = tail call i32 @msp_write_dsp(ptr noundef %data, i32 noundef 13, i32 noundef 6400) #5
  %call186 = tail call i32 @msp_write_dsp(ptr noundef %data, i32 noundef 14, i32 noundef 12288) #5
  %52 = ptrtoint ptr %has_nicam to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %has_nicam, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool187.not = icmp eq i8 %53, 0
  br i1 %tobool187.not, label %sw.epilog.if.end190_crit_edge, label %if.then188

sw.epilog.if.end190_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end190

if.then188:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %call189 = tail call i32 @msp_write_dsp(ptr noundef %data, i32 noundef 16, i32 noundef 23040) #5
  br label %if.end190

if.end190:                                        ; preds = %if.then188, %sw.epilog.if.end190_crit_edge
  %54 = ptrtoint ptr %has_i2s_conf to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %has_i2s_conf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool191.not = icmp eq i8 %55, 0
  br i1 %tobool191.not, label %if.end190.if.end194_crit_edge, label %if.then192

if.end190.if.end194_crit_edge:                    ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end194

if.then192:                                       ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %i2s_mode to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %i2s_mode, align 4
  %call193 = tail call i32 @msp_write_dem(ptr noundef %data, i32 noundef 64, i32 noundef %57) #5
  br label %if.end194

if.end194:                                        ; preds = %if.then192, %if.end190.if.end194_crit_edge
  tail call fastcc void @msp3400c_set_audmode(ptr noundef %data)
  %58 = ptrtoint ptr %scan_in_progress54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %scan_in_progress54, align 4
  tail call void @msp_update_volume(ptr noundef %1) #5
  %59 = ptrtoint ptr %restart37 to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load197308 = load i8, ptr %restart37, align 8
  %60 = and i8 %bf.load197308, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool199.not309 = icmp eq i8 %60, 0
  br i1 %tobool199.not309, label %if.end194.for.cond.backedge_crit_edge, label %if.end194.while.body_crit_edge

if.end194.while.body_crit_edge:                   ; preds = %if.end194
  br label %while.body

if.end194.for.cond.backedge_crit_edge:            ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.backedge

while.body:                                       ; preds = %if.end205.while.body_crit_edge, %if.end194.while.body_crit_edge
  %count.0310 = phi i32 [ %spec.select, %if.end205.while.body_crit_edge ], [ 3, %if.end194.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0310)
  %tobool200.not = icmp eq i32 %count.0310, 0
  %cond201 = select i1 %tobool200.not, i32 5000, i32 1000
  %call202 = tail call i32 @msp_sleep(ptr noundef %1, i32 noundef %cond201) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call202)
  %tobool203.not = icmp eq i32 %call202, 0
  br i1 %tobool203.not, label %if.end205, label %while.body.restart.backedge_crit_edge

while.body.restart.backedge_crit_edge:            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %restart.backedge

if.end205:                                        ; preds = %while.body
  %dec = add i32 %count.0310, -1
  %spec.select = select i1 %tobool200.not, i32 0, i32 %dec
  tail call fastcc void @watch_stereo(ptr noundef %data)
  %61 = ptrtoint ptr %restart37 to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load197 = load i8, ptr %restart37, align 8
  %62 = and i8 %bf.load197, 64
  %tobool199.not = icmp eq i8 %62, 0
  br i1 %tobool199.not, label %if.end205.for.cond.backedge_crit_edge, label %if.end205.while.body_crit_edge

if.end205.while.body_crit_edge:                   ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end205.for.cond.backedge_crit_edge:            ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.backedge

do.body210:                                       ; preds = %do.end36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %63 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp211 = icmp sgt i32 %63, 0
  br i1 %cmp211, label %do.end215, label %do.body210.do.end219_crit_edge

do.body210.do.end219_crit_edge:                   ; preds = %do.body210
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end219

do.end215:                                        ; preds = %do.body210
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev12, ptr noundef nonnull @.str.30) #8
  br label %do.end219

do.end219:                                        ; preds = %do.end215, %do.body210.do.end219_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msp_read_dem(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @msp_standard_std(i32 noundef %std) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %std to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.217)
  switch i32 %std, label %entry.cleanup_crit_edge [
    i32 0, label %entry.if.then_crit_edge
    i32 1, label %entry.if.then_crit_edge31
    i32 2, label %entry.if.then_crit_edge32
    i32 3, label %entry.if.then_crit_edge33
    i32 4, label %entry.if.then_crit_edge34
    i32 5, label %entry.if.then_crit_edge35
    i32 6, label %entry.if.then_crit_edge36
    i32 7, label %entry.if.then_crit_edge37
    i32 8, label %entry.if.then_crit_edge38
    i32 9, label %entry.if.then_crit_edge39
    i32 10, label %entry.if.then_crit_edge40
    i32 11, label %entry.if.then_crit_edge41
    i32 12, label %entry.if.then_crit_edge42
    i32 13, label %entry.if.then_crit_edge43
    i32 32, label %if.then.fold.split24
    i32 33, label %if.then.fold.split25
    i32 48, label %if.then.fold.split26
    i32 64, label %if.then.fold.split27
    i32 80, label %if.then.fold.split28
    i32 81, label %if.then.fold.split29
    i32 96, label %if.then.fold.split30
  ]

entry.if.then_crit_edge43:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

entry.if.then_crit_edge42:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

entry.if.then_crit_edge41:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

entry.if.then_crit_edge40:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

entry.if.then_crit_edge39:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

entry.if.then_crit_edge38:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

entry.if.then_crit_edge37:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

entry.if.then_crit_edge36:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

entry.if.then_crit_edge35:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

entry.if.then_crit_edge34:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

entry.if.then_crit_edge33:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

entry.if.then_crit_edge32:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

entry.if.then_crit_edge31:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.fold.split24:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then.fold.split25:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then.fold.split26:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then.fold.split27:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then.fold.split28:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then.fold.split29:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then.fold.split30:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %if.then.fold.split30, %if.then.fold.split29, %if.then.fold.split28, %if.then.fold.split27, %if.then.fold.split26, %if.then.fold.split25, %if.then.fold.split24, %entry.if.then_crit_edge, %entry.if.then_crit_edge31, %entry.if.then_crit_edge32, %entry.if.then_crit_edge33, %entry.if.then_crit_edge34, %entry.if.then_crit_edge35, %entry.if.then_crit_edge36, %entry.if.then_crit_edge37, %entry.if.then_crit_edge38, %entry.if.then_crit_edge39, %entry.if.then_crit_edge40, %entry.if.then_crit_edge41, %entry.if.then_crit_edge42, %entry.if.then_crit_edge43
  %i.010.lcssa = phi i32 [ %std, %entry.if.then_crit_edge ], [ 14, %if.then.fold.split24 ], [ 15, %if.then.fold.split25 ], [ 16, %if.then.fold.split26 ], [ 17, %if.then.fold.split27 ], [ 18, %if.then.fold.split28 ], [ 19, %if.then.fold.split29 ], [ 20, %if.then.fold.split30 ], [ %std, %entry.if.then_crit_edge31 ], [ %std, %entry.if.then_crit_edge32 ], [ %std, %entry.if.then_crit_edge33 ], [ %std, %entry.if.then_crit_edge34 ], [ %std, %entry.if.then_crit_edge35 ], [ %std, %entry.if.then_crit_edge36 ], [ %std, %entry.if.then_crit_edge37 ], [ %std, %entry.if.then_crit_edge38 ], [ %std, %entry.if.then_crit_edge39 ], [ %std, %entry.if.then_crit_edge40 ], [ %std, %entry.if.then_crit_edge41 ], [ %std, %entry.if.then_crit_edge42 ], [ %std, %entry.if.then_crit_edge43 ]
  %std5 = getelementptr [22 x %struct.anon], ptr @msp_stdlist, i32 0, i32 %i.010.lcssa, i32 4
  %1 = ptrtoint ptr %std5 to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %std5, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %2, %if.then ], [ 16777215, %entry.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msp34xxg_thread(ptr noundef %data) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %data, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %2 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.i2c_client, ptr %data, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev, ptr noundef nonnull @.str.58) #8
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %detected_std = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 25
  %3 = ptrtoint ptr %detected_std to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 16777215, ptr %detected_std, align 8
  %call5 = tail call zeroext i1 @set_freezable() #5
  %dev12 = getelementptr inbounds %struct.i2c_client, ptr %data, i32 0, i32 4
  %restart37 = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 41
  %mode = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 23
  %radio = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 20
  %force_btsc = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 19
  %std = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 22
  %acb = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 27
  %scan_in_progress = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 38
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %do.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %4 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp7 = icmp sgt i32 %4, 1
  br i1 %cmp7, label %do.end11, label %for.cond.do.end15_crit_edge

for.cond.do.end15_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end15

do.end11:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev12, ptr noundef nonnull @.str.61) #8
  br label %do.end15

do.end15:                                         ; preds = %do.end11, %for.cond.do.end15_crit_edge
  %call16 = tail call i32 @msp_sleep(ptr noundef %1, i32 noundef -1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %5 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp18 = icmp sgt i32 %5, 1
  br i1 %cmp18, label %do.end22, label %do.end15.restart.preheader_crit_edge

do.end15.restart.preheader_crit_edge:             ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %restart.preheader

do.end22:                                         ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev12, ptr noundef nonnull @.str.64) #8
  br label %restart.preheader

restart.preheader:                                ; preds = %do.end22, %do.end15.restart.preheader_crit_edge
  br label %restart

restart.backedge:                                 ; preds = %while.body.restart.backedge_crit_edge, %for.body.restart.backedge_crit_edge
  br label %restart

restart:                                          ; preds = %restart.backedge, %restart.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %6 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp28 = icmp sgt i32 %6, 0
  br i1 %cmp28, label %do.end32, label %restart.do.end36_crit_edge

restart.do.end36_crit_edge:                       ; preds = %restart
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end36

do.end32:                                         ; preds = %restart
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev12, ptr noundef nonnull @.str.15) #8
  br label %do.end36

do.end36:                                         ; preds = %do.end32, %restart.do.end36_crit_edge
  %7 = ptrtoint ptr %restart37 to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %restart37, align 8
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %restart37, align 8
  %call38 = tail call zeroext i1 @kthread_should_stop() #5
  br i1 %call38, label %do.body163, label %if.end40

if.end40:                                         ; preds = %do.end36
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %9)
  %cmp41 = icmp eq i32 %9, 9
  br i1 %cmp41, label %do.body43, label %if.end53

do.body43:                                        ; preds = %if.end40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %10 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp44 = icmp sgt i32 %10, 0
  br i1 %cmp44, label %do.end48, label %do.body43.do.end52_crit_edge

do.body43.do.end52_crit_edge:                     ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end52

do.end48:                                         ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev12, ptr noundef nonnull @.str.18) #8
  br label %do.end52

do.end52:                                         ; preds = %do.end48, %do.body43.do.end52_crit_edge
  %11 = ptrtoint ptr %scan_in_progress to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %scan_in_progress, align 4
  tail call void @msp_update_volume(ptr noundef %1) #5
  br label %for.cond.backedge

if.end53:                                         ; preds = %if.end40
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i, align 4
  %route_in.i = getelementptr inbounds %struct.msp_state, ptr %13, i32 0, i32 33
  %14 = ptrtoint ptr %route_in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %route_in.i, align 4
  %std.i = getelementptr inbounds %struct.msp_state, ptr %13, i32 0, i32 22
  %16 = ptrtoint ptr %std.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %std.i, align 8
  %call2.i = tail call i32 @msp_reset(ptr noundef %data) #5
  %has_i2s_conf.i = getelementptr inbounds %struct.msp_state, ptr %13, i32 0, i32 14
  %17 = ptrtoint ptr %has_i2s_conf.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %has_i2s_conf.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %if.end53.if.end.i_crit_edge, label %if.then.i

if.end53.if.end.i_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  %i2s_mode.i = getelementptr inbounds %struct.msp_state, ptr %13, i32 0, i32 29
  %19 = ptrtoint ptr %i2s_mode.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %i2s_mode.i, align 4
  %call3.i = tail call i32 @msp_write_dem(ptr noundef %data, i32 noundef 64, i32 noundef %20) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end53.if.end.i_crit_edge
  %21 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %driver_data.i.i, align 4
  %radio.i.i = getelementptr inbounds %struct.msp_state, ptr %22, i32 0, i32 20
  %23 = ptrtoint ptr %radio.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %radio.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i, label %if.end6.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %25 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i.i = icmp sgt i32 %25, 0
  br i1 %cmp.i.i, label %do.body.i.i.cleanup.sink.split.i.i_crit_edge, label %do.body.i.i.msp34xxg_modus.exit.i_crit_edge

do.body.i.i.msp34xxg_modus.exit.i_crit_edge:      ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp34xxg_modus.exit.i

do.body.i.i.cleanup.sink.split.i.i_crit_edge:     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i.i

if.end6.i.i:                                      ; preds = %if.end.i
  %v4l2_std.i.i = getelementptr inbounds %struct.msp_state, ptr %22, i32 0, i32 24
  %26 = ptrtoint ptr %v4l2_std.i.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %v4l2_std.i.i, align 8
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.218)
  switch i64 %27, label %if.end47.i.i [
    i64 8192, label %do.body9.i.i
    i64 32768, label %do.body23.i.i
    i64 4194304, label %do.body37.i.i
  ]

do.body9.i.i:                                     ; preds = %if.end6.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %28 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp10.i.i = icmp sgt i32 %28, 0
  br i1 %cmp10.i.i, label %do.body9.i.i.cleanup.sink.split.i.i_crit_edge, label %do.body9.i.i.msp34xxg_modus.exit.i_crit_edge

do.body9.i.i.msp34xxg_modus.exit.i_crit_edge:     ; preds = %do.body9.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp34xxg_modus.exit.i

do.body9.i.i.cleanup.sink.split.i.i_crit_edge:    ; preds = %do.body9.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i.i

do.body23.i.i:                                    ; preds = %if.end6.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %29 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp24.i.i = icmp sgt i32 %29, 0
  br i1 %cmp24.i.i, label %do.body23.i.i.cleanup.sink.split.i.i_crit_edge, label %do.body23.i.i.msp34xxg_modus.exit.i_crit_edge

do.body23.i.i.msp34xxg_modus.exit.i_crit_edge:    ; preds = %do.body23.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp34xxg_modus.exit.i

do.body23.i.i.cleanup.sink.split.i.i_crit_edge:   ; preds = %do.body23.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i.i

do.body37.i.i:                                    ; preds = %if.end6.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %30 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp38.i.i = icmp sgt i32 %30, 0
  br i1 %cmp38.i.i, label %do.body37.i.i.cleanup.sink.split.i.i_crit_edge, label %do.body37.i.i.msp34xxg_modus.exit.i_crit_edge

do.body37.i.i.msp34xxg_modus.exit.i_crit_edge:    ; preds = %do.body37.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp34xxg_modus.exit.i

do.body37.i.i.cleanup.sink.split.i.i_crit_edge:   ; preds = %do.body37.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i.i

if.end47.i.i:                                     ; preds = %if.end6.i.i
  %and.i.i = and i64 %27, 46848
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool49.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool49.not.i.i, label %if.end47.i.i.msp34xxg_modus.exit.i_crit_edge, label %do.body51.i.i

if.end47.i.i.msp34xxg_modus.exit.i_crit_edge:     ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp34xxg_modus.exit.i

do.body51.i.i:                                    ; preds = %if.end47.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %31 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp52.i.i = icmp sgt i32 %31, 0
  br i1 %cmp52.i.i, label %do.body51.i.i.cleanup.sink.split.i.i_crit_edge, label %do.body51.i.i.msp34xxg_modus.exit.i_crit_edge

do.body51.i.i.msp34xxg_modus.exit.i_crit_edge:    ; preds = %do.body51.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp34xxg_modus.exit.i

do.body51.i.i.cleanup.sink.split.i.i_crit_edge:   ; preds = %do.body51.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %do.body51.i.i.cleanup.sink.split.i.i_crit_edge, %do.body37.i.i.cleanup.sink.split.i.i_crit_edge, %do.body23.i.i.cleanup.sink.split.i.i_crit_edge, %do.body9.i.i.cleanup.sink.split.i.i_crit_edge, %do.body.i.i.cleanup.sink.split.i.i_crit_edge
  %.str.179.sink.i.i = phi ptr [ @.str.167, %do.body.i.i.cleanup.sink.split.i.i_crit_edge ], [ @.str.170, %do.body9.i.i.cleanup.sink.split.i.i_crit_edge ], [ @.str.173, %do.body23.i.i.cleanup.sink.split.i.i_crit_edge ], [ @.str.176, %do.body37.i.i.cleanup.sink.split.i.i_crit_edge ], [ @.str.179, %do.body51.i.i.cleanup.sink.split.i.i_crit_edge ]
  %retval.0.ph.i.i = phi i32 [ 1, %do.body.i.i.cleanup.sink.split.i.i_crit_edge ], [ 16385, %do.body9.i.i.cleanup.sink.split.i.i_crit_edge ], [ 1, %do.body23.i.i.cleanup.sink.split.i.i_crit_edge ], [ 24577, %do.body37.i.i.cleanup.sink.split.i.i_crit_edge ], [ 8193, %do.body51.i.i.cleanup.sink.split.i.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev12, ptr noundef nonnull %.str.179.sink.i.i) #8
  br label %msp34xxg_modus.exit.i

msp34xxg_modus.exit.i:                            ; preds = %cleanup.sink.split.i.i, %do.body51.i.i.msp34xxg_modus.exit.i_crit_edge, %if.end47.i.i.msp34xxg_modus.exit.i_crit_edge, %do.body37.i.i.msp34xxg_modus.exit.i_crit_edge, %do.body23.i.i.msp34xxg_modus.exit.i_crit_edge, %do.body9.i.i.msp34xxg_modus.exit.i_crit_edge, %do.body.i.i.msp34xxg_modus.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 1, %do.body.i.i.msp34xxg_modus.exit.i_crit_edge ], [ 16385, %do.body9.i.i.msp34xxg_modus.exit.i_crit_edge ], [ 1, %do.body23.i.i.msp34xxg_modus.exit.i_crit_edge ], [ 24577, %do.body37.i.i.msp34xxg_modus.exit.i_crit_edge ], [ 8193, %do.body51.i.i.msp34xxg_modus.exit.i_crit_edge ], [ 28673, %if.end47.i.i.msp34xxg_modus.exit.i_crit_edge ], [ %retval.0.ph.i.i, %cleanup.sink.split.i.i ]
  %32 = shl i32 %15, 5
  %33 = and i32 %32, 256
  %or.i = or i32 %retval.0.i.i, %33
  %call6.i = tail call i32 @msp_write_dem(ptr noundef %data, i32 noundef 48, i32 noundef %or.i) #5
  tail call fastcc void @msp34xxg_set_sources(ptr noundef %data) #5
  %call7.i = tail call i32 @msp_write_dsp(ptr noundef %data, i32 noundef 13, i32 noundef 6400) #5
  %call8.i = tail call i32 @msp_write_dsp(ptr noundef %data, i32 noundef 14, i32 noundef 12288) #5
  %has_nicam.i = getelementptr inbounds %struct.msp_state, ptr %13, i32 0, i32 5
  %34 = ptrtoint ptr %has_nicam.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %has_nicam.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool9.not.i = icmp eq i8 %35, 0
  br i1 %tobool9.not.i, label %msp34xxg_modus.exit.i.msp34xxg_reset.exit_crit_edge, label %if.then10.i

msp34xxg_modus.exit.i.msp34xxg_reset.exit_crit_edge: ; preds = %msp34xxg_modus.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp34xxg_reset.exit

if.then10.i:                                      ; preds = %msp34xxg_modus.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %call11.i = tail call i32 @msp_write_dsp(ptr noundef %data, i32 noundef 16, i32 noundef 23040) #5
  br label %msp34xxg_reset.exit

msp34xxg_reset.exit:                              ; preds = %if.then10.i, %msp34xxg_modus.exit.i.msp34xxg_reset.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_stereo_thresh to i32))
  %36 = load i32, ptr @msp_stereo_thresh, align 4
  %call13.i = tail call i32 @msp_write_dem(ptr noundef %data, i32 noundef 34, i32 noundef %36) #5
  %37 = ptrtoint ptr %radio to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %radio, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not = icmp eq i32 %38, 0
  br i1 %tobool.not, label %cond.false, label %msp34xxg_reset.exit.cond.end59_crit_edge

msp34xxg_reset.exit.cond.end59_crit_edge:         ; preds = %msp34xxg_reset.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end59

cond.false:                                       ; preds = %msp34xxg_reset.exit
  %39 = ptrtoint ptr %force_btsc to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %force_btsc, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool54.not = icmp eq i8 %40, 0
  br i1 %tobool54.not, label %cond.false.cond.false58_crit_edge, label %land.lhs.true

cond.false.cond.false58_crit_edge:                ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false58

land.lhs.true:                                    ; preds = %cond.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_standard to i32))
  %41 = load i32, ptr @msp_standard, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp55 = icmp eq i32 %41, 1
  br i1 %cmp55, label %land.lhs.true.cond.end59_crit_edge, label %land.lhs.true.cond.false58_crit_edge

land.lhs.true.cond.false58_crit_edge:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false58

land.lhs.true.cond.end59_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end59

cond.false58:                                     ; preds = %land.lhs.true.cond.false58_crit_edge, %cond.false.cond.false58_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_standard to i32))
  %42 = load i32, ptr @msp_standard, align 4
  br label %cond.end59

cond.end59:                                       ; preds = %cond.false58, %land.lhs.true.cond.end59_crit_edge, %msp34xxg_reset.exit.cond.end59_crit_edge
  %cond60 = phi i32 [ 64, %msp34xxg_reset.exit.cond.end59_crit_edge ], [ %42, %cond.false58 ], [ 32, %land.lhs.true.cond.end59_crit_edge ]
  %43 = ptrtoint ptr %std to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %cond60, ptr %std, align 8
  %call62 = tail call i32 @msp_write_dem(ptr noundef %data, i32 noundef 32, i32 noundef %cond60) #5
  %44 = ptrtoint ptr %std to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %std, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp64.not = icmp eq i32 %45, 1
  br i1 %cmp64.not, label %do.body68, label %cond.end59.do.body119_crit_edge

cond.end59.do.body119_crit_edge:                  ; preds = %cond.end59
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body119

do.body68:                                        ; preds = %cond.end59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %46 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp69 = icmp sgt i32 %46, 0
  br i1 %cmp69, label %do.end74, label %do.body68.for.body.preheader_crit_edge

do.body68.for.body.preheader_crit_edge:           ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.preheader

do.end74:                                         ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev12, ptr noundef nonnull @.str.71) #8
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.end74, %do.body68.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0222 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %call82 = tail call i32 @msp_sleep(ptr noundef %1, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end85, label %for.body.restart.backedge_crit_edge

for.body.restart.backedge_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %restart.backedge

if.end85:                                         ; preds = %for.body
  %call86 = tail call i32 @msp_read_dem(ptr noundef %data, i32 noundef 126) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %call86)
  %cmp87 = icmp slt i32 %call86, 2047
  br i1 %cmp87, label %if.then89, label %do.body92

if.then89:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %std to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call86, ptr %std, align 8
  br label %for.end

do.body92:                                        ; preds = %if.end85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %48 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp93 = icmp sgt i32 %48, 1
  br i1 %cmp93, label %do.end98, label %do.body92.for.inc_crit_edge

do.body92.for.inc_crit_edge:                      ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.end98:                                         ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev12, ptr noundef nonnull @.str.48) #8
  br label %for.inc

for.inc:                                          ; preds = %do.end98, %do.body92.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0222, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.endthread-pre-split, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.endthread-pre-split:                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %std to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pr = load i32, ptr %std, align 8
  br label %for.end

for.end:                                          ; preds = %for.endthread-pre-split, %if.then89
  %50 = phi i32 [ %.pr, %for.endthread-pre-split ], [ %call86, %if.then89 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp104 = icmp eq i32 %50, 1
  br i1 %cmp104, label %do.body107, label %for.end.do.body119_crit_edge

for.end.do.body119_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body119

do.body107:                                       ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %51 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp108 = icmp sgt i32 %51, 0
  br i1 %cmp108, label %do.end113, label %do.body107.for.cond.backedge_crit_edge

do.body107.for.cond.backedge_crit_edge:           ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %while.cond.for.cond.backedge_crit_edge, %if.end145.for.cond.backedge_crit_edge, %do.end113, %do.body107.for.cond.backedge_crit_edge, %do.end52
  br label %for.cond

do.end113:                                        ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev12, ptr noundef nonnull @.str.76) #8
  br label %for.cond.backedge

do.body119:                                       ; preds = %for.end.do.body119_crit_edge, %cond.end59.do.body119_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %52 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp120 = icmp sgt i32 %52, 0
  br i1 %cmp120, label %do.end125, label %do.body119.do.end132_crit_edge

do.body119.do.end132_crit_edge:                   ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end132

do.end125:                                        ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %std to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %std, align 8
  %call128 = tail call ptr @msp_standard_std_name(i32 noundef %54)
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev12, ptr noundef nonnull @.str.79, ptr noundef %call128, i32 noundef %54) #8
  br label %do.end132

do.end132:                                        ; preds = %do.end125, %do.body119.do.end132_crit_edge
  %55 = ptrtoint ptr %std to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %std, align 8
  %call134 = tail call fastcc i64 @msp_standard_std(i32 noundef %56)
  %57 = ptrtoint ptr %detected_std to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %call134, ptr %detected_std, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %56)
  %cmp137 = icmp eq i32 %56, 9
  br i1 %cmp137, label %if.then139, label %do.end132.if.end141_crit_edge

do.end132.if.end141_crit_edge:                    ; preds = %do.end132
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end141

if.then139:                                       ; preds = %do.end132
  call void @__sanitizer_cov_trace_pc() #7
  %call140 = tail call i32 @msp_write_dsp(ptr noundef %data, i32 noundef 14, i32 noundef 31744) #5
  br label %if.end141

if.end141:                                        ; preds = %if.then139, %do.end132.if.end141_crit_edge
  tail call void @msp_update_volume(ptr noundef %1) #5
  %58 = ptrtoint ptr %acb to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %acb, align 4
  %call142 = tail call i32 @msp_write_dsp(ptr noundef %data, i32 noundef 19, i32 noundef %59) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %if.end145, label %if.end141.cleanup_crit_edge

if.end141.cleanup_crit_edge:                      ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end145:                                        ; preds = %if.end141
  %60 = ptrtoint ptr %std to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %std, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %61)
  %cmp147.not = icmp eq i32 %61, 32
  br i1 %cmp147.not, label %if.end150, label %if.end145.for.cond.backedge_crit_edge

if.end145.for.cond.backedge_crit_edge:            ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.backedge

if.end150:                                        ; preds = %if.end145
  %62 = ptrtoint ptr %restart37 to i32
  call void @__asan_load1_noabort(i32 %62)
  %bf.load151 = load i8, ptr %restart37, align 8
  %bf.set153 = or i8 %bf.load151, 64
  store i8 %bf.set153, ptr %restart37, align 8
  tail call fastcc void @watch_stereo(ptr noundef %data)
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.end150
  %63 = ptrtoint ptr %restart37 to i32
  call void @__asan_load1_noabort(i32 %63)
  %bf.load155 = load i8, ptr %restart37, align 8
  %64 = and i8 %bf.load155, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool157.not = icmp eq i8 %64, 0
  br i1 %tobool157.not, label %while.cond.for.cond.backedge_crit_edge, label %while.body

while.cond.for.cond.backedge_crit_edge:           ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.backedge

while.body:                                       ; preds = %while.cond
  tail call fastcc void @watch_stereo(ptr noundef %data)
  %call158 = tail call i32 @msp_sleep(ptr noundef %1, i32 noundef 5000) #5
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %while.body.while.cond_crit_edge, label %while.body.restart.backedge_crit_edge

while.body.restart.backedge_crit_edge:            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %restart.backedge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

do.body163:                                       ; preds = %do.end36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %65 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp164 = icmp sgt i32 %65, 0
  br i1 %cmp164, label %do.end169, label %do.body163.cleanup_crit_edge

do.body163.cleanup_crit_edge:                     ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end169:                                        ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev12, ptr noundef nonnull @.str.30) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end169, %do.body163.cleanup_crit_edge, %if.end141.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end169 ], [ 0, %do.body163.cleanup_crit_edge ], [ -1, %if.end141.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @msp_set_audmode(ptr noundef %client) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %opmode = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %opmode, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.219)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge5
    i32 2, label %sw.bb2
  ]

entry.sw.bb_crit_edge5:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge5
  tail call fastcc void @msp3400c_set_audmode(ptr noundef %client)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %std.i = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 22
  %5 = ptrtoint ptr %std.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %std.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %6)
  %cmp.i = icmp eq i32 %6, 32
  br i1 %cmp.i, label %if.then.i, label %sw.bb2.msp34xxg_set_audmode.exit_crit_edge

sw.bb2.msp34xxg_set_audmode.exit_crit_edge:       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp34xxg_set_audmode.exit

if.then.i:                                        ; preds = %sw.bb2
  %rxsubchans.i = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 36
  %7 = ptrtoint ptr %rxsubchans.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rxsubchans.i, align 8
  %and.i = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end8.sink.split.i_crit_edge, label %land.lhs.true.i

if.then.i.if.end8.sink.split.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.sink.split.i

land.lhs.true.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %audmode.i = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 35
  %9 = ptrtoint ptr %audmode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %audmode.i, align 4
  %11 = add i32 %10, -2
  %switch.and.i = and i32 %11, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  %12 = select i1 %switch.selectcmp.i, i32 33, i32 32
  br label %if.end8.sink.split.i

if.end8.sink.split.i:                             ; preds = %land.lhs.true.i, %if.then.i.if.end8.sink.split.i_crit_edge
  %.sink.i = phi i32 [ %12, %land.lhs.true.i ], [ 32, %if.then.i.if.end8.sink.split.i_crit_edge ]
  %call6.i = tail call i32 @msp_write_dem(ptr noundef %client, i32 noundef 32, i32 noundef %.sink.i) #5
  br label %msp34xxg_set_audmode.exit

msp34xxg_set_audmode.exit:                        ; preds = %if.end8.sink.split.i, %sw.bb2.msp34xxg_set_audmode.exit_crit_edge
  tail call fastcc void @msp34xxg_set_sources(ptr noundef %client) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %msp34xxg_set_audmode.exit, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msp_detect_stereo(ptr noundef %client) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %opmode = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %opmode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %opmode, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.220)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge16
    i32 2, label %sw.bb3
  ]

entry.sw.bb_crit_edge16:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge16
  %rxsubchans2.i = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 36
  %5 = ptrtoint ptr %rxsubchans2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rxsubchans2.i, align 8
  %nicam_on.i = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 26
  %7 = ptrtoint ptr %nicam_on.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nicam_on.i, align 8
  %mode.i = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 23
  %9 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode.i, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.221)
  switch i32 %10, label %sw.bb.sw.epilog39.i_crit_edge [
    i32 3, label %sw.bb.i
    i32 5, label %sw.bb.sw.bb17.i_crit_edge
    i32 6, label %sw.bb.sw.bb17.i_crit_edge17
    i32 7, label %sw.bb.sw.bb17.i_crit_edge18
  ]

sw.bb.sw.bb17.i_crit_edge18:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb17.i

sw.bb.sw.bb17.i_crit_edge17:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb17.i

sw.bb.sw.bb17.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb17.i

sw.bb.sw.epilog39.i_crit_edge:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog39.i

sw.bb.i:                                          ; preds = %sw.bb
  %call3.i = tail call i32 @msp_read_dsp(ptr noundef %client, i32 noundef 24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %call3.i)
  %cmp.i = icmp sgt i32 %call3.i, 32767
  %sub.i = add i32 %call3.i, -65536
  %spec.select.i = select i1 %cmp.i, i32 %sub.i, i32 %call3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %12 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp4.i = icmp sgt i32 %12, 1
  br i1 %cmp4.i, label %do.end.i, label %sw.bb.i.do.end9.i_crit_edge

sw.bb.i.do.end9.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9.i

do.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev.i, ptr noundef nonnull @.str.183, i32 noundef %spec.select.i) #8
  br label %do.end9.i

do.end9.i:                                        ; preds = %do.end.i, %sw.bb.i.do.end9.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %spec.select.i)
  %cmp10.i = icmp sgt i32 %spec.select.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %spec.select.i)
  %cmp12.i = icmp slt i32 %spec.select.i, -4096
  %..i = select i1 %cmp12.i, i32 12, i32 1
  %rxsubchans.0.i = select i1 %cmp10.i, i32 2, i32 %..i
  br label %sw.epilog39.i

sw.bb17.i:                                        ; preds = %sw.bb.sw.bb17.i_crit_edge, %sw.bb.sw.bb17.i_crit_edge17, %sw.bb.sw.bb17.i_crit_edge18
  %call18.i = tail call i32 @msp_read_dem(ptr noundef %client, i32 noundef 35) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %13 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp20.i = icmp sgt i32 %13, 1
  br i1 %cmp20.i, label %do.end24.i, label %sw.bb17.do.end29_crit_edge.i

sw.bb17.do.end29_crit_edge.i:                     ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #7
  %.pre.i = and i32 %call18.i, 1
  br label %do.end29.i

do.end24.i:                                       ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev25.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %and.i = and i32 %call18.i, 1
  %and26.i = lshr i32 %call18.i, 1
  %14 = and i32 %and26.i, 15
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev25.i, ptr noundef nonnull @.str.186, i32 noundef %and.i, i32 noundef %14) #8
  br label %do.end29.i

do.end29.i:                                       ; preds = %do.end24.i, %sw.bb17.do.end29_crit_edge.i
  %and30.pre-phi.i = phi i32 [ %.pre.i, %sw.bb17.do.end29_crit_edge.i ], [ %and.i, %do.end24.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.pre-phi.i)
  %tobool.not.i = icmp eq i32 %and30.pre-phi.i, 0
  br i1 %tobool.not.i, label %do.end29.i.sw.epilog39.i_crit_edge, label %if.then31.i

do.end29.i.sw.epilog39.i_crit_edge:               ; preds = %do.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog39.i

if.then31.i:                                      ; preds = %do.end29.i
  %and32.i = lshr i32 %call18.i, 1
  %15 = and i32 %and32.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %15)
  %16 = icmp ult i32 %15, 11
  br i1 %16, label %switch.lookup, label %if.then31.i.sw.epilog39.i_crit_edge

if.then31.i.sw.epilog39.i_crit_edge:              ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog39.i

switch.lookup:                                    ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [11 x i32], ptr @switch.table.msp_detect_stereo, i32 0, i32 %15
  %17 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog39.i

sw.epilog39.i:                                    ; preds = %switch.lookup, %if.then31.i.sw.epilog39.i_crit_edge, %do.end29.i.sw.epilog39.i_crit_edge, %do.end9.i, %sw.bb.sw.epilog39.i_crit_edge
  %rxsubchans.2.i = phi i32 [ %6, %sw.bb.sw.epilog39.i_crit_edge ], [ %rxsubchans.0.i, %do.end9.i ], [ 1, %do.end29.i.sw.epilog39.i_crit_edge ], [ %switch.load, %switch.lookup ], [ 1, %if.then31.i.sw.epilog39.i_crit_edge ]
  %newnicam.0.i = phi i32 [ %8, %sw.bb.sw.epilog39.i_crit_edge ], [ 0, %do.end9.i ], [ 0, %do.end29.i.sw.epilog39.i_crit_edge ], [ 1, %switch.lookup ], [ 1, %if.then31.i.sw.epilog39.i_crit_edge ]
  %18 = ptrtoint ptr %rxsubchans2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rxsubchans2.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %rxsubchans.2.i, i32 %19)
  %cmp41.not.i = icmp eq i32 %rxsubchans.2.i, %19
  br i1 %cmp41.not.i, label %sw.epilog39.i.if.end55.i_crit_edge, label %if.then42.i

sw.epilog39.i.if.end55.i_crit_edge:               ; preds = %sw.epilog39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55.i

if.then42.i:                                      ; preds = %sw.epilog39.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %20 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp44.i = icmp sgt i32 %20, 0
  br i1 %cmp44.i, label %do.end48.i, label %if.then42.i.do.end53.i_crit_edge

if.then42.i.do.end53.i_crit_edge:                 ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end53.i

do.end48.i:                                       ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev49.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev49.i, ptr noundef nonnull @.str.189, i32 noundef %19, i32 noundef %rxsubchans.2.i) #8
  br label %do.end53.i

do.end53.i:                                       ; preds = %do.end48.i, %if.then42.i.do.end53.i_crit_edge
  %21 = ptrtoint ptr %rxsubchans2.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %rxsubchans.2.i, ptr %rxsubchans2.i, align 8
  br label %if.end55.i

if.end55.i:                                       ; preds = %do.end53.i, %sw.epilog39.i.if.end55.i_crit_edge
  %update.0.i = phi i32 [ 1, %do.end53.i ], [ 0, %sw.epilog39.i.if.end55.i_crit_edge ]
  %22 = ptrtoint ptr %nicam_on.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nicam_on.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %newnicam.0.i, i32 %23)
  %cmp57.not.i = icmp eq i32 %newnicam.0.i, %23
  br i1 %cmp57.not.i, label %if.end55.i.cleanup_crit_edge, label %if.then58.i

if.end55.i.cleanup_crit_edge:                     ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then58.i:                                      ; preds = %if.end55.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %24 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp60.i = icmp sgt i32 %24, 0
  br i1 %cmp60.i, label %do.end64.i, label %if.then58.i.do.end69.i_crit_edge

if.then58.i.do.end69.i_crit_edge:                 ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end69.i

do.end64.i:                                       ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev65.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev65.i, ptr noundef nonnull @.str.192, i32 noundef %23, i32 noundef %newnicam.0.i) #8
  br label %do.end69.i

do.end69.i:                                       ; preds = %do.end64.i, %if.then58.i.do.end69.i_crit_edge
  %25 = ptrtoint ptr %nicam_on.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %newnicam.0.i, ptr %nicam_on.i, align 8
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %call2.i = tail call i32 @msp_read_dem(ptr noundef %client, i32 noundef 512) #5
  %and.i8 = and i32 %call2.i, 256
  %and3.i = and i32 %call2.i, 64
  %rxsubchans.i = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 36
  %26 = ptrtoint ptr %rxsubchans.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rxsubchans.i, align 8
  %mode.i9 = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 23
  %28 = ptrtoint ptr %mode.i9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mode.i9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %29)
  %cmp.i10 = icmp eq i32 %29, 9
  br i1 %cmp.i10, label %sw.bb3.cleanup_crit_edge, label %if.end.i

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.not.i11 = icmp eq i32 %and3.i, 0
  %..i12 = select i1 %tobool.not.i11, i32 1, i32 2
  %30 = ptrtoint ptr %rxsubchans.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %..i12, ptr %rxsubchans.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8)
  %tobool9.not.i = icmp eq i32 %and.i8, 0
  br i1 %tobool9.not.i, label %if.end.i.do.body.i_crit_edge, label %if.then10.i

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %std.i = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 22
  %31 = ptrtoint ptr %std.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %std.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %32)
  %cmp11.i = icmp eq i32 %32, 32
  %or.i = or i32 %..i12, 4
  %.sink.i = select i1 %cmp11.i, i32 %or.i, i32 12
  %33 = ptrtoint ptr %rxsubchans.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.sink.i, ptr %rxsubchans.i, align 8
  br label %do.body.i

do.body.i:                                        ; preds = %if.then10.i, %if.end.i.do.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %34 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp18.i = icmp sgt i32 %34, 0
  br i1 %cmp18.i, label %do.end.i14, label %do.body.i.do.end24.i15_crit_edge

do.body.i.do.end24.i15_crit_edge:                 ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end24.i15

do.end.i14:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i13 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %35 = ptrtoint ptr %rxsubchans.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rxsubchans.i, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev.i13, ptr noundef nonnull @.str.194, i32 noundef %call2.i, i32 noundef %and3.i, i32 noundef %and.i8, i32 noundef %36) #8
  br label %do.end24.i15

do.end24.i15:                                     ; preds = %do.end.i14, %do.body.i.do.end24.i15_crit_edge
  %37 = ptrtoint ptr %rxsubchans.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rxsubchans.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %38)
  %cmp26.i = icmp ne i32 %27, %38
  %conv.i = zext i1 %cmp26.i to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end24.i15, %sw.bb3.cleanup_crit_edge, %do.end69.i, %if.end55.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %do.end69.i ], [ %update.0.i, %if.end55.i.cleanup_crit_edge ], [ %conv.i, %do.end24.i15 ], [ 0, %sw.bb3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msp_set_scart(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msp_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msp34xxg_set_sources(ptr noundef %client) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %route_in = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %route_in to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %route_in, align 4
  %shr = lshr i32 %3, 4
  %and = and i32 %shr, 15
  %audmode.i = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 35
  %4 = ptrtoint ptr %audmode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %audmode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %6 = icmp ult i32 %5, 5
  br i1 %6, label %switch.lookup, label %entry.sw.epilog.i_crit_edge

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.msp34xxg_set_sources, i32 0, i32 %5
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep174 = getelementptr inbounds [5 x i32], ptr @switch.table.msp34xxg_set_sources.196, i32 0, i32 %5
  %8 = ptrtoint ptr %switch.gep174 to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load175 = load i32, ptr %switch.gep174, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %entry.sw.epilog.i_crit_edge
  %source.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 800, %entry.sw.epilog.i_crit_edge ]
  %matrix.0.i = phi i32 [ %switch.load175, %switch.lookup ], [ 32, %entry.sw.epilog.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.i = icmp eq i32 %and, 0
  br i1 %cmp.i, label %sw.epilog.i.do.body.i_crit_edge, label %if.else.i

sw.epilog.i.do.body.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

if.else.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and)
  %cmp6.i = icmp ugt i32 %and, 10
  br i1 %cmp6.i, label %land.lhs.true.i, label %if.else.i.if.else10.i_crit_edge

if.else.i.if.else10.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else10.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %has_dolby_pro_logic.i = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 18
  %9 = ptrtoint ptr %has_dolby_pro_logic.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %has_dolby_pro_logic.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.else10.i_crit_edge, label %if.then7.i

land.lhs.true.i.if.else10.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else10.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.i = shl nuw nsw i32 %and, 8
  %shl8.i = add nuw nsw i32 %add.i, 256
  %or9.i = or i32 %matrix.0.i, %shl8.i
  br label %do.body.i

if.else10.i:                                      ; preds = %land.lhs.true.i.if.else10.i_crit_edge, %if.else.i.if.else10.i_crit_edge
  %shl11.i = shl nuw nsw i32 %and, 8
  %or12.i = or i32 %matrix.0.i, %shl11.i
  br label %do.body.i

do.body.i:                                        ; preds = %if.else10.i, %if.then7.i, %sw.epilog.i.do.body.i_crit_edge
  %source.1.i = phi i32 [ %or9.i, %if.then7.i ], [ %or12.i, %if.else10.i ], [ %source.0.i, %sw.epilog.i.do.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %11 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp14.i = icmp sgt i32 %11, 0
  br i1 %cmp14.i, label %do.end.i, label %do.body.i.msp34xxg_set_source.exit_crit_edge

do.body.i.msp34xxg_set_source.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp34xxg_set_source.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev.i, ptr noundef nonnull @.str.181, i32 noundef %and, i32 noundef %source.1.i, i32 noundef 8) #8
  br label %msp34xxg_set_source.exit

msp34xxg_set_source.exit:                         ; preds = %do.end.i, %do.body.i.msp34xxg_set_source.exit_crit_edge
  %call23.i = tail call i32 @msp_write_dsp(ptr noundef %client, i32 noundef 8, i32 noundef %source.1.i) #5
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i, align 4
  %audmode.i25 = getelementptr inbounds %struct.msp_state, ptr %13, i32 0, i32 35
  %14 = ptrtoint ptr %audmode.i25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %audmode.i25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %15)
  %16 = icmp ult i32 %15, 5
  br i1 %16, label %switch.lookup176, label %msp34xxg_set_source.exit.sw.epilog.i33_crit_edge

msp34xxg_set_source.exit.sw.epilog.i33_crit_edge: ; preds = %msp34xxg_set_source.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i33

switch.lookup176:                                 ; preds = %msp34xxg_set_source.exit
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep177 = getelementptr inbounds [5 x i32], ptr @switch.table.msp34xxg_set_sources.197, i32 0, i32 %15
  %17 = ptrtoint ptr %switch.gep177 to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load178 = load i32, ptr %switch.gep177, align 4
  %switch.gep179 = getelementptr inbounds [5 x i32], ptr @switch.table.msp34xxg_set_sources.198, i32 0, i32 %15
  %18 = ptrtoint ptr %switch.gep179 to i32
  call void @__asan_load4_noabort(i32 %18)
  %switch.load180 = load i32, ptr %switch.gep179, align 4
  br label %sw.epilog.i33

sw.epilog.i33:                                    ; preds = %switch.lookup176, %msp34xxg_set_source.exit.sw.epilog.i33_crit_edge
  %source.0.i30 = phi i32 [ %switch.load178, %switch.lookup176 ], [ 800, %msp34xxg_set_source.exit.sw.epilog.i33_crit_edge ]
  %matrix.0.i31 = phi i32 [ %switch.load180, %switch.lookup176 ], [ 32, %msp34xxg_set_source.exit.sw.epilog.i33_crit_edge ]
  br i1 %cmp.i, label %sw.epilog.i33.do.body.i48_crit_edge, label %if.else.i35

sw.epilog.i33.do.body.i48_crit_edge:              ; preds = %sw.epilog.i33
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i48

if.else.i35:                                      ; preds = %sw.epilog.i33
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and)
  %cmp6.i34 = icmp ugt i32 %and, 10
  br i1 %cmp6.i34, label %land.lhs.true.i38, label %if.else.i35.if.else10.i45_crit_edge

if.else.i35.if.else10.i45_crit_edge:              ; preds = %if.else.i35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else10.i45

land.lhs.true.i38:                                ; preds = %if.else.i35
  %has_dolby_pro_logic.i36 = getelementptr inbounds %struct.msp_state, ptr %13, i32 0, i32 18
  %19 = ptrtoint ptr %has_dolby_pro_logic.i36 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %has_dolby_pro_logic.i36, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i37 = icmp eq i8 %20, 0
  br i1 %tobool.not.i37, label %land.lhs.true.i38.if.else10.i45_crit_edge, label %if.then7.i42

land.lhs.true.i38.if.else10.i45_crit_edge:        ; preds = %land.lhs.true.i38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else10.i45

if.then7.i42:                                     ; preds = %land.lhs.true.i38
  call void @__sanitizer_cov_trace_pc() #7
  %add.i39 = shl nuw nsw i32 %and, 8
  %shl8.i40 = add nuw nsw i32 %add.i39, 256
  %or9.i41 = or i32 %matrix.0.i31, %shl8.i40
  br label %do.body.i48

if.else10.i45:                                    ; preds = %land.lhs.true.i38.if.else10.i45_crit_edge, %if.else.i35.if.else10.i45_crit_edge
  %shl11.i43 = shl nuw nsw i32 %and, 8
  %or12.i44 = or i32 %matrix.0.i31, %shl11.i43
  br label %do.body.i48

do.body.i48:                                      ; preds = %if.else10.i45, %if.then7.i42, %sw.epilog.i33.do.body.i48_crit_edge
  %source.1.i46 = phi i32 [ %or9.i41, %if.then7.i42 ], [ %or12.i44, %if.else10.i45 ], [ %source.0.i30, %sw.epilog.i33.do.body.i48_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %21 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp14.i47 = icmp sgt i32 %21, 0
  br i1 %cmp14.i47, label %do.end.i51, label %do.body.i48.msp34xxg_set_source.exit53_crit_edge

do.body.i48.msp34xxg_set_source.exit53_crit_edge: ; preds = %do.body.i48
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp34xxg_set_source.exit53

do.end.i51:                                       ; preds = %do.body.i48
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i50 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev.i50, ptr noundef nonnull @.str.181, i32 noundef %and, i32 noundef %source.1.i46, i32 noundef 12) #8
  br label %msp34xxg_set_source.exit53

msp34xxg_set_source.exit53:                       ; preds = %do.end.i51, %do.body.i48.msp34xxg_set_source.exit53_crit_edge
  %call23.i52 = tail call i32 @msp_write_dsp(ptr noundef %client, i32 noundef 12, i32 noundef %source.1.i46) #5
  %shr4 = lshr i32 %3, 8
  %and5 = and i32 %shr4, 15
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data.i.i, align 4
  %audmode.i55 = getelementptr inbounds %struct.msp_state, ptr %23, i32 0, i32 35
  %24 = ptrtoint ptr %audmode.i55 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %audmode.i55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %25)
  %26 = icmp ult i32 %25, 5
  br i1 %26, label %switch.lookup181, label %msp34xxg_set_source.exit53.sw.epilog.i63_crit_edge

msp34xxg_set_source.exit53.sw.epilog.i63_crit_edge: ; preds = %msp34xxg_set_source.exit53
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i63

switch.lookup181:                                 ; preds = %msp34xxg_set_source.exit53
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep182 = getelementptr inbounds [5 x i32], ptr @switch.table.msp34xxg_set_sources.199, i32 0, i32 %25
  %27 = ptrtoint ptr %switch.gep182 to i32
  call void @__asan_load4_noabort(i32 %27)
  %switch.load183 = load i32, ptr %switch.gep182, align 4
  %switch.gep184 = getelementptr inbounds [5 x i32], ptr @switch.table.msp34xxg_set_sources.200, i32 0, i32 %25
  %28 = ptrtoint ptr %switch.gep184 to i32
  call void @__asan_load4_noabort(i32 %28)
  %switch.load185 = load i32, ptr %switch.gep184, align 4
  br label %sw.epilog.i63

sw.epilog.i63:                                    ; preds = %switch.lookup181, %msp34xxg_set_source.exit53.sw.epilog.i63_crit_edge
  %source.0.i60 = phi i32 [ %switch.load183, %switch.lookup181 ], [ 800, %msp34xxg_set_source.exit53.sw.epilog.i63_crit_edge ]
  %matrix.0.i61 = phi i32 [ %switch.load185, %switch.lookup181 ], [ 32, %msp34xxg_set_source.exit53.sw.epilog.i63_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %cmp.i62 = icmp eq i32 %and5, 0
  br i1 %cmp.i62, label %sw.epilog.i63.do.body.i78_crit_edge, label %if.else.i65

sw.epilog.i63.do.body.i78_crit_edge:              ; preds = %sw.epilog.i63
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i78

if.else.i65:                                      ; preds = %sw.epilog.i63
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and5)
  %cmp6.i64 = icmp ugt i32 %and5, 10
  br i1 %cmp6.i64, label %land.lhs.true.i68, label %if.else.i65.if.else10.i75_crit_edge

if.else.i65.if.else10.i75_crit_edge:              ; preds = %if.else.i65
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else10.i75

land.lhs.true.i68:                                ; preds = %if.else.i65
  %has_dolby_pro_logic.i66 = getelementptr inbounds %struct.msp_state, ptr %23, i32 0, i32 18
  %29 = ptrtoint ptr %has_dolby_pro_logic.i66 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %has_dolby_pro_logic.i66, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i67 = icmp eq i8 %30, 0
  br i1 %tobool.not.i67, label %land.lhs.true.i68.if.else10.i75_crit_edge, label %if.then7.i72

land.lhs.true.i68.if.else10.i75_crit_edge:        ; preds = %land.lhs.true.i68
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else10.i75

if.then7.i72:                                     ; preds = %land.lhs.true.i68
  call void @__sanitizer_cov_trace_pc() #7
  %add.i69 = shl nuw nsw i32 %and5, 8
  %shl8.i70 = add nuw nsw i32 %add.i69, 256
  %or9.i71 = or i32 %matrix.0.i61, %shl8.i70
  br label %do.body.i78

if.else10.i75:                                    ; preds = %land.lhs.true.i68.if.else10.i75_crit_edge, %if.else.i65.if.else10.i75_crit_edge
  %shl11.i73 = shl nuw nsw i32 %and5, 8
  %or12.i74 = or i32 %matrix.0.i61, %shl11.i73
  br label %do.body.i78

do.body.i78:                                      ; preds = %if.else10.i75, %if.then7.i72, %sw.epilog.i63.do.body.i78_crit_edge
  %source.1.i76 = phi i32 [ %or9.i71, %if.then7.i72 ], [ %or12.i74, %if.else10.i75 ], [ %source.0.i60, %sw.epilog.i63.do.body.i78_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %31 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp14.i77 = icmp sgt i32 %31, 0
  br i1 %cmp14.i77, label %do.end.i81, label %do.body.i78.msp34xxg_set_source.exit83_crit_edge

do.body.i78.msp34xxg_set_source.exit83_crit_edge: ; preds = %do.body.i78
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp34xxg_set_source.exit83

do.end.i81:                                       ; preds = %do.body.i78
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i80 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev.i80, ptr noundef nonnull @.str.181, i32 noundef %and5, i32 noundef %source.1.i76, i32 noundef 9) #8
  br label %msp34xxg_set_source.exit83

msp34xxg_set_source.exit83:                       ; preds = %do.end.i81, %do.body.i78.msp34xxg_set_source.exit83_crit_edge
  %call23.i82 = tail call i32 @msp_write_dsp(ptr noundef %client, i32 noundef 9, i32 noundef %source.1.i76) #5
  %shr6 = lshr i32 %3, 12
  %and7 = and i32 %shr6, 15
  %32 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %driver_data.i.i, align 4
  %audmode.i85 = getelementptr inbounds %struct.msp_state, ptr %33, i32 0, i32 35
  %34 = ptrtoint ptr %audmode.i85 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %audmode.i85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %35)
  %36 = icmp ult i32 %35, 5
  br i1 %36, label %switch.lookup186, label %msp34xxg_set_source.exit83.sw.epilog.i93_crit_edge

msp34xxg_set_source.exit83.sw.epilog.i93_crit_edge: ; preds = %msp34xxg_set_source.exit83
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i93

switch.lookup186:                                 ; preds = %msp34xxg_set_source.exit83
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep187 = getelementptr inbounds [5 x i32], ptr @switch.table.msp34xxg_set_sources.201, i32 0, i32 %35
  %37 = ptrtoint ptr %switch.gep187 to i32
  call void @__asan_load4_noabort(i32 %37)
  %switch.load188 = load i32, ptr %switch.gep187, align 4
  %switch.gep189 = getelementptr inbounds [5 x i32], ptr @switch.table.msp34xxg_set_sources.202, i32 0, i32 %35
  %38 = ptrtoint ptr %switch.gep189 to i32
  call void @__asan_load4_noabort(i32 %38)
  %switch.load190 = load i32, ptr %switch.gep189, align 4
  br label %sw.epilog.i93

sw.epilog.i93:                                    ; preds = %switch.lookup186, %msp34xxg_set_source.exit83.sw.epilog.i93_crit_edge
  %source.0.i90 = phi i32 [ %switch.load188, %switch.lookup186 ], [ 800, %msp34xxg_set_source.exit83.sw.epilog.i93_crit_edge ]
  %matrix.0.i91 = phi i32 [ %switch.load190, %switch.lookup186 ], [ 32, %msp34xxg_set_source.exit83.sw.epilog.i93_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %cmp.i92 = icmp eq i32 %and7, 0
  br i1 %cmp.i92, label %sw.epilog.i93.do.body.i108_crit_edge, label %if.else.i95

sw.epilog.i93.do.body.i108_crit_edge:             ; preds = %sw.epilog.i93
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i108

if.else.i95:                                      ; preds = %sw.epilog.i93
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and7)
  %cmp6.i94 = icmp ugt i32 %and7, 10
  br i1 %cmp6.i94, label %land.lhs.true.i98, label %if.else.i95.if.else10.i105_crit_edge

if.else.i95.if.else10.i105_crit_edge:             ; preds = %if.else.i95
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else10.i105

land.lhs.true.i98:                                ; preds = %if.else.i95
  %has_dolby_pro_logic.i96 = getelementptr inbounds %struct.msp_state, ptr %33, i32 0, i32 18
  %39 = ptrtoint ptr %has_dolby_pro_logic.i96 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %has_dolby_pro_logic.i96, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i97 = icmp eq i8 %40, 0
  br i1 %tobool.not.i97, label %land.lhs.true.i98.if.else10.i105_crit_edge, label %if.then7.i102

land.lhs.true.i98.if.else10.i105_crit_edge:       ; preds = %land.lhs.true.i98
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else10.i105

if.then7.i102:                                    ; preds = %land.lhs.true.i98
  call void @__sanitizer_cov_trace_pc() #7
  %add.i99 = shl nuw nsw i32 %and7, 8
  %shl8.i100 = add nuw nsw i32 %add.i99, 256
  %or9.i101 = or i32 %matrix.0.i91, %shl8.i100
  br label %do.body.i108

if.else10.i105:                                   ; preds = %land.lhs.true.i98.if.else10.i105_crit_edge, %if.else.i95.if.else10.i105_crit_edge
  %shl11.i103 = shl nuw nsw i32 %and7, 8
  %or12.i104 = or i32 %matrix.0.i91, %shl11.i103
  br label %do.body.i108

do.body.i108:                                     ; preds = %if.else10.i105, %if.then7.i102, %sw.epilog.i93.do.body.i108_crit_edge
  %source.1.i106 = phi i32 [ %or9.i101, %if.then7.i102 ], [ %or12.i104, %if.else10.i105 ], [ %source.0.i90, %sw.epilog.i93.do.body.i108_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %41 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp14.i107 = icmp sgt i32 %41, 0
  br i1 %cmp14.i107, label %do.end.i111, label %do.body.i108.msp34xxg_set_source.exit113_crit_edge

do.body.i108.msp34xxg_set_source.exit113_crit_edge: ; preds = %do.body.i108
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp34xxg_set_source.exit113

do.end.i111:                                      ; preds = %do.body.i108
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i110 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev.i110, ptr noundef nonnull @.str.181, i32 noundef %and7, i32 noundef %source.1.i106, i32 noundef 10) #8
  br label %msp34xxg_set_source.exit113

msp34xxg_set_source.exit113:                      ; preds = %do.end.i111, %do.body.i108.msp34xxg_set_source.exit113_crit_edge
  %call23.i112 = tail call i32 @msp_write_dsp(ptr noundef %client, i32 noundef 10, i32 noundef %source.1.i106) #5
  %has_scart2_out = getelementptr inbounds %struct.msp_state, ptr %1, i32 0, i32 12
  %42 = ptrtoint ptr %has_scart2_out to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %has_scart2_out, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not = icmp eq i8 %43, 0
  br i1 %tobool.not, label %msp34xxg_set_source.exit113.if.end_crit_edge, label %if.then

msp34xxg_set_source.exit113.if.end_crit_edge:     ; preds = %msp34xxg_set_source.exit113
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %msp34xxg_set_source.exit113
  %shr8 = lshr i32 %3, 16
  %and9 = and i32 %shr8, 15
  %44 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %driver_data.i.i, align 4
  %audmode.i115 = getelementptr inbounds %struct.msp_state, ptr %45, i32 0, i32 35
  %46 = ptrtoint ptr %audmode.i115 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %audmode.i115, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %47)
  %48 = icmp ult i32 %47, 5
  br i1 %48, label %switch.lookup191, label %if.then.sw.epilog.i123_crit_edge

if.then.sw.epilog.i123_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i123

switch.lookup191:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep192 = getelementptr inbounds [5 x i32], ptr @switch.table.msp34xxg_set_sources.203, i32 0, i32 %47
  %49 = ptrtoint ptr %switch.gep192 to i32
  call void @__asan_load4_noabort(i32 %49)
  %switch.load193 = load i32, ptr %switch.gep192, align 4
  %switch.gep194 = getelementptr inbounds [5 x i32], ptr @switch.table.msp34xxg_set_sources.204, i32 0, i32 %47
  %50 = ptrtoint ptr %switch.gep194 to i32
  call void @__asan_load4_noabort(i32 %50)
  %switch.load195 = load i32, ptr %switch.gep194, align 4
  br label %sw.epilog.i123

sw.epilog.i123:                                   ; preds = %switch.lookup191, %if.then.sw.epilog.i123_crit_edge
  %source.0.i120 = phi i32 [ %switch.load193, %switch.lookup191 ], [ 800, %if.then.sw.epilog.i123_crit_edge ]
  %matrix.0.i121 = phi i32 [ %switch.load195, %switch.lookup191 ], [ 32, %if.then.sw.epilog.i123_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %cmp.i122 = icmp eq i32 %and9, 0
  br i1 %cmp.i122, label %sw.epilog.i123.do.body.i138_crit_edge, label %if.else.i125

sw.epilog.i123.do.body.i138_crit_edge:            ; preds = %sw.epilog.i123
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i138

if.else.i125:                                     ; preds = %sw.epilog.i123
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and9)
  %cmp6.i124 = icmp ugt i32 %and9, 10
  br i1 %cmp6.i124, label %land.lhs.true.i128, label %if.else.i125.if.else10.i135_crit_edge

if.else.i125.if.else10.i135_crit_edge:            ; preds = %if.else.i125
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else10.i135

land.lhs.true.i128:                               ; preds = %if.else.i125
  %has_dolby_pro_logic.i126 = getelementptr inbounds %struct.msp_state, ptr %45, i32 0, i32 18
  %51 = ptrtoint ptr %has_dolby_pro_logic.i126 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %has_dolby_pro_logic.i126, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i127 = icmp eq i8 %52, 0
  br i1 %tobool.not.i127, label %land.lhs.true.i128.if.else10.i135_crit_edge, label %if.then7.i132

land.lhs.true.i128.if.else10.i135_crit_edge:      ; preds = %land.lhs.true.i128
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else10.i135

if.then7.i132:                                    ; preds = %land.lhs.true.i128
  call void @__sanitizer_cov_trace_pc() #7
  %add.i129 = shl nuw nsw i32 %and9, 8
  %shl8.i130 = add nuw nsw i32 %add.i129, 256
  %or9.i131 = or i32 %matrix.0.i121, %shl8.i130
  br label %do.body.i138

if.else10.i135:                                   ; preds = %land.lhs.true.i128.if.else10.i135_crit_edge, %if.else.i125.if.else10.i135_crit_edge
  %shl11.i133 = shl nuw nsw i32 %and9, 8
  %or12.i134 = or i32 %matrix.0.i121, %shl11.i133
  br label %do.body.i138

do.body.i138:                                     ; preds = %if.else10.i135, %if.then7.i132, %sw.epilog.i123.do.body.i138_crit_edge
  %source.1.i136 = phi i32 [ %or9.i131, %if.then7.i132 ], [ %or12.i134, %if.else10.i135 ], [ %source.0.i120, %sw.epilog.i123.do.body.i138_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %53 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp14.i137 = icmp sgt i32 %53, 0
  br i1 %cmp14.i137, label %do.end.i141, label %do.body.i138.msp34xxg_set_source.exit143_crit_edge

do.body.i138.msp34xxg_set_source.exit143_crit_edge: ; preds = %do.body.i138
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp34xxg_set_source.exit143

do.end.i141:                                      ; preds = %do.body.i138
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i140 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev.i140, ptr noundef nonnull @.str.181, i32 noundef %and9, i32 noundef %source.1.i136, i32 noundef 65) #8
  br label %msp34xxg_set_source.exit143

msp34xxg_set_source.exit143:                      ; preds = %do.end.i141, %do.body.i138.msp34xxg_set_source.exit143_crit_edge
  %call23.i142 = tail call i32 @msp_write_dsp(ptr noundef %client, i32 noundef 65, i32 noundef %source.1.i136) #5
  br label %if.end

if.end:                                           ; preds = %msp34xxg_set_source.exit143, %msp34xxg_set_source.exit113.if.end_crit_edge
  %shr10 = lshr i32 %3, 20
  %and11 = and i32 %shr10, 15
  %54 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %driver_data.i.i, align 4
  %audmode.i145 = getelementptr inbounds %struct.msp_state, ptr %55, i32 0, i32 35
  %56 = ptrtoint ptr %audmode.i145 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %audmode.i145, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %57)
  %58 = icmp ult i32 %57, 5
  br i1 %58, label %switch.lookup196, label %if.end.sw.epilog.i153_crit_edge

if.end.sw.epilog.i153_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i153

switch.lookup196:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep197 = getelementptr inbounds [5 x i32], ptr @switch.table.msp34xxg_set_sources.205, i32 0, i32 %57
  %59 = ptrtoint ptr %switch.gep197 to i32
  call void @__asan_load4_noabort(i32 %59)
  %switch.load198 = load i32, ptr %switch.gep197, align 4
  %switch.gep199 = getelementptr inbounds [5 x i32], ptr @switch.table.msp34xxg_set_sources.206, i32 0, i32 %57
  %60 = ptrtoint ptr %switch.gep199 to i32
  call void @__asan_load4_noabort(i32 %60)
  %switch.load200 = load i32, ptr %switch.gep199, align 4
  br label %sw.epilog.i153

sw.epilog.i153:                                   ; preds = %switch.lookup196, %if.end.sw.epilog.i153_crit_edge
  %source.0.i150 = phi i32 [ %switch.load198, %switch.lookup196 ], [ 800, %if.end.sw.epilog.i153_crit_edge ]
  %matrix.0.i151 = phi i32 [ %switch.load200, %switch.lookup196 ], [ 32, %if.end.sw.epilog.i153_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %cmp.i152 = icmp eq i32 %and11, 0
  br i1 %cmp.i152, label %sw.epilog.i153.do.body.i168_crit_edge, label %if.else.i155

sw.epilog.i153.do.body.i168_crit_edge:            ; preds = %sw.epilog.i153
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i168

if.else.i155:                                     ; preds = %sw.epilog.i153
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and11)
  %cmp6.i154 = icmp ugt i32 %and11, 10
  br i1 %cmp6.i154, label %land.lhs.true.i158, label %if.else.i155.if.else10.i165_crit_edge

if.else.i155.if.else10.i165_crit_edge:            ; preds = %if.else.i155
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else10.i165

land.lhs.true.i158:                               ; preds = %if.else.i155
  %has_dolby_pro_logic.i156 = getelementptr inbounds %struct.msp_state, ptr %55, i32 0, i32 18
  %61 = ptrtoint ptr %has_dolby_pro_logic.i156 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %has_dolby_pro_logic.i156, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i157 = icmp eq i8 %62, 0
  br i1 %tobool.not.i157, label %land.lhs.true.i158.if.else10.i165_crit_edge, label %if.then7.i162

land.lhs.true.i158.if.else10.i165_crit_edge:      ; preds = %land.lhs.true.i158
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else10.i165

if.then7.i162:                                    ; preds = %land.lhs.true.i158
  call void @__sanitizer_cov_trace_pc() #7
  %add.i159 = shl nuw nsw i32 %and11, 8
  %shl8.i160 = add nuw nsw i32 %add.i159, 256
  %or9.i161 = or i32 %matrix.0.i151, %shl8.i160
  br label %do.body.i168

if.else10.i165:                                   ; preds = %land.lhs.true.i158.if.else10.i165_crit_edge, %if.else.i155.if.else10.i165_crit_edge
  %shl11.i163 = shl nuw nsw i32 %and11, 8
  %or12.i164 = or i32 %matrix.0.i151, %shl11.i163
  br label %do.body.i168

do.body.i168:                                     ; preds = %if.else10.i165, %if.then7.i162, %sw.epilog.i153.do.body.i168_crit_edge
  %source.1.i166 = phi i32 [ %or9.i161, %if.then7.i162 ], [ %or12.i164, %if.else10.i165 ], [ %source.0.i150, %sw.epilog.i153.do.body.i168_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @msp_debug to i32))
  %63 = load i32, ptr @msp_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp14.i167 = icmp sgt i32 %63, 0
  br i1 %cmp14.i167, label %do.end.i171, label %do.body.i168.msp34xxg_set_source.exit173_crit_edge

do.body.i168.msp34xxg_set_source.exit173_crit_edge: ; preds = %do.body.i168
  call void @__sanitizer_cov_trace_pc() #7
  br label %msp34xxg_set_source.exit173

do.end.i171:                                      ; preds = %do.body.i168
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i170 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev.i170, ptr noundef nonnull @.str.181, i32 noundef %and11, i32 noundef %source.1.i166, i32 noundef 11) #8
  br label %msp34xxg_set_source.exit173

msp34xxg_set_source.exit173:                      ; preds = %do.end.i171, %do.body.i168.msp34xxg_set_source.exit173_crit_edge
  %call23.i172 = tail call i32 @msp_write_dsp(ptr noundef %client, i32 noundef 11, i32 noundef %source.1.i166) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 178)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 178)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !103, !104, !106, !107, !108, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !213, !214, !215, !217, !218, !219, !221, !222, !223, !225, !226, !227, !229, !230, !231, !233, !234, !235, !237, !238, !239, !241, !242, !243, !245, !246, !247, !249, !250, !251, !253, !254, !255, !257, !258, !259, !260, !262, !263, !264, !266, !267, !268, !270, !271, !272, !274, !275, !276, !278, !279, !280, !281, !283, !284, !285, !287, !288, !289, !291, !292, !293, !295, !296, !297, !299, !300, !301, !302, !304, !305, !306, !307, !309, !310, !311, !313, !314, !315, !317, !318, !319, !321, !322, !323}
!llvm.module.flags = !{!324, !325, !326, !327, !328, !329, !330, !331}
!llvm.ident = !{!332}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 162, i32 9}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 209, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @msp3400c_set_mode._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @msp3400c_set_mode._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 497, i32 2}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @msp3400c_thread._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @msp3400c_thread._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 501, i32 3}
!17 = !{ptr @msp3400c_thread._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @msp3400c_thread._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 503, i32 3}
!21 = !{ptr @msp3400c_thread._entry.11, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @msp3400c_thread._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 506, i32 3}
!25 = !{ptr @msp3400c_thread._entry.14, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @msp3400c_thread._entry_ptr.16, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 513, i32 4}
!29 = !{ptr @msp3400c_thread._entry.17, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @msp3400c_thread._entry_ptr.19, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.21, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 542, i32 4}
!33 = !{ptr @msp3400c_thread._entry.20, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @msp3400c_thread._entry_ptr.22, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.24, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 556, i32 4}
!37 = !{ptr @msp3400c_thread._entry.23, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @msp3400c_thread._entry_ptr.25, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.27, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 595, i32 4}
!41 = !{ptr @msp3400c_thread._entry.26, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @msp3400c_thread._entry_ptr.28, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.30, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 681, i32 2}
!45 = !{ptr @msp3400c_thread._entry.29, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @msp3400c_thread._entry_ptr.31, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.32, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 692, i32 2}
!49 = !{ptr @.str.33, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @msp3410d_thread._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @msp3410d_thread._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.35, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 696, i32 3}
!54 = !{ptr @msp3410d_thread._entry.34, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @msp3410d_thread._entry_ptr.36, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.38, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 698, i32 3}
!58 = !{ptr @msp3410d_thread._entry.37, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @msp3410d_thread._entry_ptr.39, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @msp3410d_thread._entry.40, !61, !"_entry", i1 false, i1 false}
!61 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 701, i32 3}
!62 = !{ptr @msp3410d_thread._entry_ptr.41, !61, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @msp3410d_thread._entry.42, !64, !"_entry", i1 false, i1 false}
!64 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 708, i32 4}
!65 = !{ptr @msp3410d_thread._entry_ptr.43, !64, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.45, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 734, i32 4}
!68 = !{ptr @msp3410d_thread._entry.44, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @msp3410d_thread._entry_ptr.46, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.48, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 752, i32 5}
!72 = !{ptr @msp3410d_thread._entry.47, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @msp3410d_thread._entry_ptr.49, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.51, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 759, i32 3}
!76 = !{ptr @msp3410d_thread._entry.50, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @msp3410d_thread._entry_ptr.52, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.54, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 769, i32 4}
!80 = !{ptr @msp3410d_thread._entry.53, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @msp3410d_thread._entry_ptr.55, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @msp3410d_thread._entry.56, !83, !"_entry", i1 false, i1 false}
!83 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 843, i32 2}
!84 = !{ptr @msp3410d_thread._entry_ptr.57, !83, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.58, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 989, i32 2}
!87 = !{ptr @.str.59, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @msp34xxg_thread._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @msp34xxg_thread._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.61, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 993, i32 3}
!92 = !{ptr @msp34xxg_thread._entry.60, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @msp34xxg_thread._entry_ptr.62, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.64, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 995, i32 3}
!96 = !{ptr @msp34xxg_thread._entry.63, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @msp34xxg_thread._entry_ptr.65, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @msp34xxg_thread._entry.66, !99, !"_entry", i1 false, i1 false}
!99 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 998, i32 3}
!100 = !{ptr @msp34xxg_thread._entry_ptr.67, !99, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @msp34xxg_thread._entry.68, !102, !"_entry", i1 false, i1 false}
!102 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 1005, i32 4}
!103 = !{ptr @msp34xxg_thread._entry_ptr.69, !102, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.71, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 1022, i32 3}
!106 = !{ptr @msp34xxg_thread._entry.70, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @msp34xxg_thread._entry_ptr.72, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @msp34xxg_thread._entry.73, !109, !"_entry", i1 false, i1 false}
!109 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 1034, i32 4}
!110 = !{ptr @msp34xxg_thread._entry_ptr.74, !109, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.76, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 1038, i32 4}
!113 = !{ptr @msp34xxg_thread._entry.75, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @msp34xxg_thread._entry_ptr.77, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.79, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 1044, i32 3}
!117 = !{ptr @msp34xxg_thread._entry.78, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @msp34xxg_thread._entry_ptr.80, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @msp34xxg_thread._entry.81, !120, !"_entry", i1 false, i1 false}
!120 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 1077, i32 2}
!121 = !{ptr @msp34xxg_thread._entry_ptr.82, !120, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.83, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 28, i32 18}
!124 = !{ptr @.str.84, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 29, i32 18}
!126 = !{ptr @.str.85, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 31, i32 4}
!128 = !{ptr @.str.86, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 33, i32 4}
!130 = !{ptr @.str.87, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 35, i32 4}
!132 = !{ptr @.str.88, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 37, i32 4}
!134 = !{ptr @.str.89, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 39, i32 4}
!136 = !{ptr @.str.90, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 41, i32 4}
!138 = !{ptr @.str.91, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 43, i32 4}
!140 = !{ptr @.str.92, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 45, i32 4}
!142 = !{ptr @.str.93, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 47, i32 4}
!144 = !{ptr @.str.94, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 49, i32 4}
!146 = !{ptr @.str.95, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 51, i32 4}
!148 = !{ptr @.str.96, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 53, i32 4}
!150 = !{ptr @.str.97, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 55, i32 4}
!152 = !{ptr @.str.98, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 57, i32 4}
!154 = !{ptr @.str.99, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 59, i32 4}
!156 = !{ptr @.str.100, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 61, i32 4}
!158 = !{ptr @.str.101, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 63, i32 4}
!160 = !{ptr @.str.102, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 65, i32 4}
!162 = !{ptr @.str.103, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 67, i32 4}
!164 = !{ptr @msp_stdlist, !165, !"msp_stdlist", i1 false, i1 false}
!165 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 27, i32 3}
!166 = !{ptr @msp3400c_init_data, !167, !"msp3400c_init_data", i1 false, i1 false}
!167 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 80, i32 3}
!168 = !{ptr @.str.104, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 131, i32 29}
!170 = !{ptr @.str.105, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 132, i32 29}
!172 = !{ptr @.str.106, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 133, i32 29}
!174 = !{ptr @.str.107, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 134, i32 29}
!176 = !{ptr @msp3400c_carrier_detect_main, !177, !"msp3400c_carrier_detect_main", i1 false, i1 false}
!177 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 129, i32 39}
!178 = !{ptr @.str.108, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 139, i32 29}
!180 = !{ptr @.str.109, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 140, i32 29}
!182 = !{ptr @msp3400c_carrier_detect_55, !183, !"msp3400c_carrier_detect_55", i1 false, i1 false}
!183 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 137, i32 39}
!184 = !{ptr @.str.110, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 145, i32 29}
!186 = !{ptr @.str.111, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 146, i32 29}
!188 = !{ptr @.str.112, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 147, i32 29}
!190 = !{ptr @.str.113, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 148, i32 29}
!192 = !{ptr @.str.114, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 149, i32 29}
!194 = !{ptr @.str.115, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 150, i32 29}
!196 = !{ptr @msp3400c_carrier_detect_65, !197, !"msp3400c_carrier_detect_65", i1 false, i1 false}
!197 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 143, i32 39}
!198 = !{ptr @.str.116, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 243, i32 3}
!200 = !{ptr @.str.117, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 243, i32 11}
!202 = !{ptr @.str.118, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 243, i32 21}
!204 = !{ptr @.str.119, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 243, i32 30}
!206 = !{ptr @.str.120, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 243, i32 39}
!208 = !{ptr @msp3400c_set_audmode.strmode, !209, !"strmode", i1 false, i1 false}
!209 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 242, i32 15}
!210 = !{ptr @.str.121, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 255, i32 3}
!212 = !{ptr @.str.122, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @msp3400c_set_audmode._entry, !211, !"_entry", i1 false, i1 false}
!214 = !{ptr @msp3400c_set_audmode._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.124, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 284, i32 3}
!217 = !{ptr @msp3400c_set_audmode._entry.123, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @msp3400c_set_audmode._entry_ptr.125, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.127, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 298, i32 3}
!221 = !{ptr @msp3400c_set_audmode._entry.126, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @msp3400c_set_audmode._entry_ptr.128, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.130, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 318, i32 3}
!225 = !{ptr @msp3400c_set_audmode._entry.129, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @msp3400c_set_audmode._entry_ptr.131, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.133, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 324, i32 3}
!229 = !{ptr @msp3400c_set_audmode._entry.132, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @msp3400c_set_audmode._entry_ptr.134, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.136, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 328, i32 3}
!233 = !{ptr @msp3400c_set_audmode._entry.135, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @msp3400c_set_audmode._entry_ptr.137, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.139, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 333, i32 3}
!237 = !{ptr @msp3400c_set_audmode._entry.138, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @msp3400c_set_audmode._entry_ptr.140, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.142, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 337, i32 3}
!241 = !{ptr @msp3400c_set_audmode._entry.141, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @msp3400c_set_audmode._entry_ptr.143, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.145, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 342, i32 2}
!245 = !{ptr @msp3400c_set_audmode._entry.144, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @msp3400c_set_audmode._entry_ptr.146, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.148, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 350, i32 4}
!249 = !{ptr @msp3400c_set_audmode._entry.147, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @msp3400c_set_audmode._entry_ptr.149, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.151, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 366, i32 2}
!253 = !{ptr @msp3400c_set_audmode._entry.150, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @msp3400c_set_audmode._entry_ptr.152, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.153, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 377, i32 3}
!257 = !{ptr @.str.154, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @msp3400c_print_mode._entry, !256, !"_entry", i1 false, i1 false}
!259 = !{ptr @msp3400c_print_mode._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.156, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 381, i32 3}
!262 = !{ptr @msp3400c_print_mode._entry.155, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @msp3400c_print_mode._entry_ptr.157, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.159, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 385, i32 3}
!266 = !{ptr @msp3400c_print_mode._entry.158, !265, !"_entry", i1 false, i1 false}
!267 = !{ptr @msp3400c_print_mode._entry_ptr.160, !265, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.162, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 389, i32 3}
!270 = !{ptr @msp3400c_print_mode._entry.161, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @msp3400c_print_mode._entry_ptr.163, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.165, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 393, i32 3}
!274 = !{ptr @msp3400c_print_mode._entry.164, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @msp3400c_print_mode._entry_ptr.166, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.167, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 860, i32 3}
!278 = !{ptr @.str.168, !277, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @msp34xxg_modus._entry, !277, !"_entry", i1 false, i1 false}
!280 = !{ptr @msp34xxg_modus._entry_ptr, !277, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.170, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 864, i32 3}
!283 = !{ptr @msp34xxg_modus._entry.169, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @msp34xxg_modus._entry_ptr.171, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.173, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 868, i32 3}
!287 = !{ptr @msp34xxg_modus._entry.172, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @msp34xxg_modus._entry_ptr.174, !286, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.176, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 872, i32 3}
!291 = !{ptr @msp34xxg_modus._entry.175, !290, !"_entry", i1 false, i1 false}
!292 = !{ptr @msp34xxg_modus._entry_ptr.177, !290, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.179, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 876, i32 3}
!295 = !{ptr @msp34xxg_modus._entry.178, !294, !"_entry", i1 false, i1 false}
!296 = !{ptr @msp34xxg_modus._entry_ptr.180, !294, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.181, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 920, i32 2}
!299 = !{ptr @.str.182, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @msp34xxg_set_source._entry, !298, !"_entry", i1 false, i1 false}
!301 = !{ptr @msp34xxg_set_source._entry_ptr, !298, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.183, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 414, i32 3}
!304 = !{ptr @.str.184, !303, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @msp3400c_detect_stereo._entry, !303, !"_entry", i1 false, i1 false}
!306 = !{ptr @msp3400c_detect_stereo._entry_ptr, !303, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.186, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 429, i32 3}
!309 = !{ptr @msp3400c_detect_stereo._entry.185, !308, !"_entry", i1 false, i1 false}
!310 = !{ptr @msp3400c_detect_stereo._entry_ptr.187, !308, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.189, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 460, i32 3}
!313 = !{ptr @msp3400c_detect_stereo._entry.188, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @msp3400c_detect_stereo._entry_ptr.190, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.192, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 467, i32 3}
!317 = !{ptr @msp3400c_detect_stereo._entry.191, !316, !"_entry", i1 false, i1 false}
!318 = !{ptr @msp3400c_detect_stereo._entry_ptr.193, !316, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.194, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/media/i2c/msp3400-kthreads.c", i32 1104, i32 2}
!321 = !{ptr @.str.195, !320, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @msp34xxg_detect_stereo._entry, !320, !"_entry", i1 false, i1 false}
!323 = !{ptr @msp34xxg_detect_stereo._entry_ptr, !320, !"_entry_ptr", i1 false, i1 false}
!324 = !{i32 1, !"wchar_size", i32 2}
!325 = !{i32 1, !"min_enum_size", i32 4}
!326 = !{i32 8, !"branch-target-enforcement", i32 0}
!327 = !{i32 8, !"sign-return-address", i32 0}
!328 = !{i32 8, !"sign-return-address-all", i32 0}
!329 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!330 = !{i32 7, !"uwtable", i32 1}
!331 = !{i32 7, !"frame-pointer", i32 2}
!332 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!333 = !{i8 0, i8 2}
