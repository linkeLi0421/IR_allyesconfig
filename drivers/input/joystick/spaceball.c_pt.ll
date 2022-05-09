; ModuleID = '/llk/IR_all_yes/drivers/input/joystick/spaceball.c_pt.bc'
source_filename = "../drivers/input/joystick/spaceball.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.serio_driver = type { ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spaceball = type { ptr, i32, i32, [128 x i8], [32 x i8] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__UNIQUE_ID_author227 = internal constant [49 x i8] c"spaceball.author=Vojtech Pavlik <vojtech@ucw.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description228 = internal constant [67 x i8] c"spaceball.description=SpaceTec SpaceBall 2003/3003/4000 FLX driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [48 x i8] c"spaceball.file=drivers/input/joystick/spaceball\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [22 x i8] c"spaceball.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_spaceball__231_293_spaceball_drv_init6 = internal global ptr @spaceball_drv_init, section ".initcall6.init", align 4
@spaceball_drv = internal global { %struct.serio_driver, [44 x i8] } { %struct.serio_driver { ptr @.str.1, ptr @spaceball_serio_ids, i8 0, ptr null, ptr @spaceball_interrupt, ptr @spaceball_connect, ptr null, ptr null, ptr @spaceball_disconnect, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@__exitcall_spaceball_drv_exit = internal global ptr @spaceball_drv_exit, section ".exitcall.exit", align 4
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spaceball\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"SpaceTec SpaceBall 2003/3003/4000 FLX driver\00", [51 x i8] zeroinitializer }, align 32
@spaceball_serio_ids = internal constant { [2 x %struct.serio_device_id], [24 x i8] } { [2 x %struct.serio_device_id] [%struct.serio_device_id { i8 2, i8 -1, i8 -1, i8 27 }, %struct.serio_device_id zeroinitializer], [24 x i8] zeroinitializer }, align 32
@spaceball_process_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013spaceball: Device error. [%s]\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"spaceball_process_packet\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/input/joystick/spaceball.c\00", [61 x i8] zeroinitializer }, align 32
@spaceball_process_packet._entry_ptr = internal global ptr @spaceball_process_packet._entry, section ".printk_index", align 4
@spaceball_process_packet._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013spaceball: Bad command. [%s]\0A\00", [32 x i8] zeroinitializer }, align 32
@spaceball_process_packet._entry_ptr.7 = internal global ptr @spaceball_process_packet._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s/input0\00", [22 x i8] zeroinitializer }, align 32
@spaceball_names = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.9 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"?\00", [30 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SpaceTec SpaceBall 1003\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SpaceTec SpaceBall 2003\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SpaceTec SpaceBall 2003B\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SpaceTec SpaceBall 2003C\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SpaceTec SpaceBall 3003\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"SpaceTec SpaceBall SpaceController\00", [61 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SpaceTec SpaceBall 3003C\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"SpaceTec SpaceBall 4000FLX\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"SpaceTec SpaceBall 4000FLX Lefty\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 13, i64 77, i64 81, i64 83, i64 94]
@__sancov_gen_cov_switch_values.19 = internal global [7 x i64] [i64 5, i64 8, i64 46, i64 63, i64 68, i64 69, i64 75]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 8, i64 7, i64 8, i64 9]
@___asan_gen_.21 = private unnamed_addr constant [14 x i8] c"spaceball_drv\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 282, i32 28 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 293, i32 1 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 286, i32 17 }
@___asan_gen_.30 = private unnamed_addr constant [20 x i8] c"spaceball_serio_ids\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 270, i32 37 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 121, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 126, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 211, i32 53 }
@___asan_gen_.54 = private unnamed_addr constant [16 x i8] c"spaceball_names\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 45, i32 14 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 46, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 46, i32 7 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 46, i32 34 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 46, i32 61 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 47, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 47, i32 30 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 47, i32 57 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 48, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 48, i32 30 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private constant [38 x i8] c"../drivers/input/joystick/spaceball.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 48, i32 60 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_author227, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_spaceball_drv_exit, ptr @__initcall__kmod_spaceball__231_293_spaceball_drv_init6, ptr @spaceball_drv_exit, ptr @spaceball_process_packet._entry, ptr @spaceball_process_packet._entry.5, ptr @spaceball_process_packet._entry_ptr, ptr @spaceball_process_packet._entry_ptr.7, ptr @spaceball_drv, ptr @.str, ptr @.str.1, ptr @spaceball_serio_ids, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @spaceball_names, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spaceball_drv to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spaceball_serio_ids to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spaceball_process_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spaceball_process_packet._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spaceball_names to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @spaceball_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__serio_register_driver(ptr noundef nonnull @spaceball_drv, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @spaceball_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @serio_unregister_driver(ptr noundef nonnull @spaceball_drv) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__serio_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spaceball_interrupt(ptr nocapture noundef readonly %serio, i8 noundef zeroext %data, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = zext i8 %data to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %data, label %entry.sw.default_crit_edge [
    i8 13, label %sw.bb
    i8 94, label %sw.bb1
    i8 77, label %entry.sw.bb5_crit_edge
    i8 81, label %entry.sw.bb5_crit_edge38
    i8 83, label %entry.sw.bb5_crit_edge39
  ]

entry.sw.bb5_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5

entry.sw.bb5_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5

entry.sw.default_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %idx.i = getelementptr inbounds %struct.spaceball, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.i = icmp slt i32 %6, 2
  br i1 %cmp.i, label %sw.bb.spaceball_process_packet.exit_crit_edge, label %if.end.i

sw.bb.spaceball_process_packet.exit_crit_edge:    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %spaceball_process_packet.exit

if.end.i:                                         ; preds = %sw.bb
  %data2.i = getelementptr inbounds %struct.spaceball, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %data2.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %data2.i, align 4
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %8, label %if.end.i.sw.epilog.i_crit_edge [
    i8 68, label %sw.bb.i
    i8 75, label %sw.bb14.i
    i8 46, label %sw.bb47.i
    i8 69, label %sw.bb92.i
    i8 63, label %sw.bb100.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %6)
  %cmp5.not.i = icmp eq i32 %6, 15
  br i1 %cmp5.not.i, label %if.end8.i, label %sw.bb.i.spaceball_process_packet.exit_crit_edge

sw.bb.i.spaceball_process_packet.exit_crit_edge:  ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spaceball_process_packet.exit

if.end8.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr %struct.spaceball, ptr %1, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %add.ptr.i, align 1
  %conv13.i = sext i16 %11 to i32
  tail call void @input_event(ptr noundef %4, i32 noundef 3, i32 noundef 0, i32 noundef %conv13.i) #6
  %arrayidx12.1.i = getelementptr %struct.spaceball, ptr %1, i32 0, i32 3, i32 5
  %12 = ptrtoint ptr %arrayidx12.1.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %arrayidx12.1.i, align 1
  %conv13.1.i = sext i16 %13 to i32
  tail call void @input_event(ptr noundef %4, i32 noundef 3, i32 noundef 2, i32 noundef %conv13.1.i) #6
  %arrayidx12.2.i = getelementptr %struct.spaceball, ptr %1, i32 0, i32 3, i32 7
  %14 = ptrtoint ptr %arrayidx12.2.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %arrayidx12.2.i, align 1
  %conv13.2.i = sext i16 %15 to i32
  tail call void @input_event(ptr noundef %4, i32 noundef 3, i32 noundef 1, i32 noundef %conv13.2.i) #6
  %arrayidx12.3.i = getelementptr %struct.spaceball, ptr %1, i32 0, i32 3, i32 9
  %16 = ptrtoint ptr %arrayidx12.3.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %arrayidx12.3.i, align 1
  %conv13.3.i = sext i16 %17 to i32
  tail call void @input_event(ptr noundef %4, i32 noundef 3, i32 noundef 3, i32 noundef %conv13.3.i) #6
  %arrayidx12.4.i = getelementptr %struct.spaceball, ptr %1, i32 0, i32 3, i32 11
  %18 = ptrtoint ptr %arrayidx12.4.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %arrayidx12.4.i, align 1
  %conv13.4.i = sext i16 %19 to i32
  tail call void @input_event(ptr noundef %4, i32 noundef 3, i32 noundef 5, i32 noundef %conv13.4.i) #6
  %arrayidx12.5.i = getelementptr %struct.spaceball, ptr %1, i32 0, i32 3, i32 13
  %20 = ptrtoint ptr %arrayidx12.5.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %arrayidx12.5.i, align 1
  %conv13.5.i = sext i16 %21 to i32
  tail call void @input_event(ptr noundef %4, i32 noundef 3, i32 noundef 4, i32 noundef %conv13.5.i) #6
  br label %sw.epilog.i

sw.bb14.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp16.not.i = icmp eq i32 %6, 3
  br i1 %cmp16.not.i, label %if.end19.i, label %sw.bb14.i.spaceball_process_packet.exit_crit_edge

sw.bb14.i.spaceball_process_packet.exit_crit_edge: ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spaceball_process_packet.exit

if.end19.i:                                       ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx20.i = getelementptr %struct.spaceball, ptr %1, i32 0, i32 3, i32 2
  %22 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx20.i, align 1
  %24 = and i8 %23, 33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %25 = icmp ne i8 %24, 0
  %lnot.ext.i.i = zext i1 %25 to i32
  tail call void @input_event(ptr noundef %4, i32 noundef 1, i32 noundef 257, i32 noundef %lnot.ext.i.i) #6
  %26 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx20.i, align 1
  %28 = lshr i8 %27, 1
  %.lobit225.i = and i8 %28, 1
  %29 = zext i8 %.lobit225.i to i32
  tail call void @input_event(ptr noundef %4, i32 noundef 1, i32 noundef 258, i32 noundef %29) #6
  %30 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx20.i, align 1
  %32 = lshr i8 %31, 2
  %.lobit226.i = and i8 %32, 1
  %33 = zext i8 %.lobit226.i to i32
  tail call void @input_event(ptr noundef %4, i32 noundef 1, i32 noundef 259, i32 noundef %33) #6
  %34 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx20.i, align 1
  %36 = lshr i8 %35, 3
  %.lobit227.i = and i8 %36, 1
  %37 = zext i8 %.lobit227.i to i32
  tail call void @input_event(ptr noundef %4, i32 noundef 1, i32 noundef 260, i32 noundef %37) #6
  %arrayidx35.i = getelementptr %struct.spaceball, ptr %1, i32 0, i32 3, i32 1
  %38 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx35.i, align 1
  %40 = and i8 %39, 1
  %41 = zext i8 %40 to i32
  tail call void @input_event(ptr noundef %4, i32 noundef 1, i32 noundef 261, i32 noundef %41) #6
  %42 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx35.i, align 1
  %44 = lshr i8 %43, 1
  %.lobit228.i = and i8 %44, 1
  %45 = zext i8 %.lobit228.i to i32
  tail call void @input_event(ptr noundef %4, i32 noundef 1, i32 noundef 262, i32 noundef %45) #6
  %46 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx35.i, align 1
  %48 = lshr i8 %47, 2
  %.lobit229.i = and i8 %48, 1
  %49 = zext i8 %.lobit229.i to i32
  tail call void @input_event(ptr noundef %4, i32 noundef 1, i32 noundef 263, i32 noundef %49) #6
  %50 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx35.i, align 1
  %52 = lshr i8 %51, 4
  %.lobit230.i = and i8 %52, 1
  %53 = zext i8 %.lobit230.i to i32
  tail call void @input_event(ptr noundef %4, i32 noundef 1, i32 noundef 264, i32 noundef %53) #6
  br label %sw.epilog.i

sw.bb47.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp49.not.i = icmp eq i32 %6, 3
  br i1 %cmp49.not.i, label %if.end52.i, label %sw.bb47.i.spaceball_process_packet.exit_crit_edge

sw.bb47.i.spaceball_process_packet.exit_crit_edge: ; preds = %sw.bb47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spaceball_process_packet.exit

if.end52.i:                                       ; preds = %sw.bb47.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx53.i = getelementptr %struct.spaceball, ptr %1, i32 0, i32 3, i32 2
  %54 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx53.i, align 1
  %56 = and i8 %55, 1
  %57 = zext i8 %56 to i32
  tail call void @input_event(ptr noundef %4, i32 noundef 1, i32 noundef 257, i32 noundef %57) #6
  %58 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx53.i, align 1
  %60 = lshr i8 %59, 1
  %.lobit.i = and i8 %60, 1
  %61 = zext i8 %.lobit.i to i32
  tail call void @input_event(ptr noundef %4, i32 noundef 1, i32 noundef 258, i32 noundef %61) #6
  %62 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx53.i, align 1
  %64 = lshr i8 %63, 2
  %.lobit215.i = and i8 %64, 1
  %65 = zext i8 %.lobit215.i to i32
  tail call void @input_event(ptr noundef %4, i32 noundef 1, i32 noundef 259, i32 noundef %65) #6
  %66 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx53.i, align 1
  %68 = lshr i8 %67, 3
  %.lobit216.i = and i8 %68, 1
  %69 = zext i8 %.lobit216.i to i32
  tail call void @input_event(ptr noundef %4, i32 noundef 1, i32 noundef 260, i32 noundef %69) #6
  %70 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx53.i, align 1
  %72 = lshr i8 %71, 4
  %.lobit217.i = and i8 %72, 1
  %73 = zext i8 %.lobit217.i to i32
  tail call void @input_event(ptr noundef %4, i32 noundef 1, i32 noundef 261, i32 noundef %73) #6
  %74 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx53.i, align 1
  %76 = lshr i8 %75, 5
  %.lobit218.i = and i8 %76, 1
  %77 = zext i8 %.lobit218.i to i32
  tail call void @input_event(ptr noundef %4, i32 noundef 1, i32 noundef 262, i32 noundef %77) #6
  %78 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx53.i, align 1
  %.lobit219.i = lshr i8 %79, 7
  %80 = zext i8 %.lobit219.i to i32
  tail call void @input_event(ptr noundef %4, i32 noundef 1, i32 noundef 263, i32 noundef %80) #6
  %arrayidx74.i = getelementptr %struct.spaceball, ptr %1, i32 0, i32 3, i32 1
  %81 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx74.i, align 1
  %83 = and i8 %82, 1
  %84 = zext i8 %83 to i32
  tail call void @input_event(ptr noundef %4, i32 noundef 1, i32 noundef 264, i32 noundef %84) #6
  %85 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx74.i, align 1
  %87 = lshr i8 %86, 1
  %.lobit220.i = and i8 %87, 1
  %88 = zext i8 %.lobit220.i to i32
  tail call void @input_event(ptr noundef %4, i32 noundef 1, i32 noundef 265, i32 noundef %88) #6
  %89 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx74.i, align 1
  %91 = lshr i8 %90, 2
  %.lobit221.i = and i8 %91, 1
  %92 = zext i8 %.lobit221.i to i32
  tail call void @input_event(ptr noundef %4, i32 noundef 1, i32 noundef 304, i32 noundef %92) #6
  %93 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx74.i, align 1
  %95 = lshr i8 %94, 3
  %.lobit222.i = and i8 %95, 1
  %96 = zext i8 %.lobit222.i to i32
  tail call void @input_event(ptr noundef %4, i32 noundef 1, i32 noundef 305, i32 noundef %96) #6
  %97 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx74.i, align 1
  %99 = lshr i8 %98, 4
  %.lobit223.i = and i8 %99, 1
  %100 = zext i8 %.lobit223.i to i32
  tail call void @input_event(ptr noundef %4, i32 noundef 1, i32 noundef 306, i32 noundef %100) #6
  %101 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx74.i, align 1
  %103 = lshr i8 %102, 5
  %.lobit224.i = and i8 %103, 1
  %104 = zext i8 %.lobit224.i to i32
  tail call void @input_event(ptr noundef %4, i32 noundef 1, i32 noundef 316, i32 noundef %104) #6
  br label %sw.epilog.i

sw.bb92.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = add nsw i32 %6, -1
  %arrayidx95.i = getelementptr %struct.spaceball, ptr %1, i32 0, i32 3, i32 %sub.i
  %105 = ptrtoint ptr %arrayidx95.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %arrayidx95.i, align 1
  %add.ptr98.i = getelementptr %struct.spaceball, ptr %1, i32 0, i32 3, i32 1
  %call99.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %add.ptr98.i) #9
  br label %sw.epilog.i

sw.bb100.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub103.i = add nsw i32 %6, -1
  %arrayidx104.i = getelementptr %struct.spaceball, ptr %1, i32 0, i32 3, i32 %sub103.i
  %106 = ptrtoint ptr %arrayidx104.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %arrayidx104.i, align 1
  %add.ptr111.i = getelementptr %struct.spaceball, ptr %1, i32 0, i32 3, i32 1
  %call112.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %add.ptr111.i) #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb100.i, %sw.bb92.i, %if.end52.i, %if.end19.i, %if.end8.i, %if.end.i.sw.epilog.i_crit_edge
  tail call void @input_event(ptr noundef %4, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %spaceball_process_packet.exit

spaceball_process_packet.exit:                    ; preds = %sw.epilog.i, %sw.bb47.i.spaceball_process_packet.exit_crit_edge, %sw.bb14.i.spaceball_process_packet.exit_crit_edge, %sw.bb.i.spaceball_process_packet.exit_crit_edge, %sw.bb.spaceball_process_packet.exit_crit_edge
  %107 = ptrtoint ptr %idx.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %idx.i, align 4
  %escape = getelementptr inbounds %struct.spaceball, ptr %1, i32 0, i32 2
  %108 = ptrtoint ptr %escape to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %escape, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %escape2 = getelementptr inbounds %struct.spaceball, ptr %1, i32 0, i32 2
  %109 = ptrtoint ptr %escape2 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %escape2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool.not = icmp eq i32 %110, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %111 = ptrtoint ptr %escape2 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 1, ptr %escape2, align 4
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %112 = ptrtoint ptr %escape2 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %escape2, align 4
  br label %sw.bb5

sw.bb5:                                           ; preds = %if.end, %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge38, %entry.sw.bb5_crit_edge39
  %escape6 = getelementptr inbounds %struct.spaceball, ptr %1, i32 0, i32 2
  %113 = ptrtoint ptr %escape6 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %escape6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool7.not = icmp eq i32 %114, 0
  br i1 %tobool7.not, label %sw.bb5.sw.default_crit_edge, label %if.then8

sw.bb5.sw.default_crit_edge:                      ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default

if.then8:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  %115 = ptrtoint ptr %escape6 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %escape6, align 4
  %116 = and i8 %data, 31
  br label %sw.default

sw.default:                                       ; preds = %if.then8, %sw.bb5.sw.default_crit_edge, %entry.sw.default_crit_edge
  %data.addr.0 = phi i8 [ %data, %entry.sw.default_crit_edge ], [ %116, %if.then8 ], [ %data, %sw.bb5.sw.default_crit_edge ]
  %escape13 = getelementptr inbounds %struct.spaceball, ptr %1, i32 0, i32 2
  %117 = ptrtoint ptr %escape13 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %escape13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool14.not = icmp eq i32 %118, 0
  br i1 %tobool14.not, label %sw.default.if.end17_crit_edge, label %if.then15

sw.default.if.end17_crit_edge:                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then15:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  %119 = ptrtoint ptr %escape13 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %escape13, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %sw.default.if.end17_crit_edge
  %idx18 = getelementptr inbounds %struct.spaceball, ptr %1, i32 0, i32 1
  %120 = ptrtoint ptr %idx18 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %idx18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %121)
  %cmp = icmp slt i32 %121, 128
  br i1 %cmp, label %if.then20, label %if.end17.sw.epilog_crit_edge

if.end17.sw.epilog_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %inc = add nsw i32 %121, 1
  %122 = ptrtoint ptr %idx18 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %inc, ptr %idx18, align 4
  %arrayidx = getelementptr %struct.spaceball, ptr %1, i32 0, i32 3, i32 %121
  %123 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %data.addr.0, ptr %arrayidx, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then20, %if.end17.sw.epilog_crit_edge, %if.then, %spaceball_process_packet.exit
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spaceball_connect(ptr noundef %serio, ptr noundef %drv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %id2 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 5, i32 2
  %0 = ptrtoint ptr %id2 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id2, align 1
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %1)
  %cmp = icmp ugt i8 %1, 9
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 172) #10
  %call4 = tail call ptr @input_allocate_device() #6
  %tobool.not = icmp eq ptr %call7.i, null
  %tobool5.not = icmp eq ptr %call4, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %if.end.fail1_crit_edge, label %if.end7

if.end.fail1_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail1

if.end7:                                          ; preds = %if.end
  %3 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %call7.i, align 8
  %phys = getelementptr inbounds %struct.spaceball, ptr %call7.i, i32 0, i32 4
  %phys8 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 2
  %call10 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 32, ptr noundef nonnull @.str.8, ptr noundef %phys8)
  %arrayidx = getelementptr [10 x ptr], ptr @spaceball_names, i32 0, i32 %conv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %call4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %call4, align 8
  %phys13 = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 1
  %7 = ptrtoint ptr %phys13 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %phys, ptr %phys13, align 4
  %id14 = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 3
  %8 = ptrtoint ptr %id14 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 19, ptr %id14, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 27, ptr %vendor, align 2
  %conv16 = zext i8 %1 to i16
  %product = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv16, ptr %product, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 256, ptr %version, align 2
  %dev19 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18
  %parent = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 40, i32 1
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev19, ptr %parent, align 8
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call4, i32 0, i32 5
  %13 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 10, ptr %evbit, align 8
  %14 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %1, label %if.end7.sw.default_crit_edge [
    i8 8, label %if.end7.sw.bb_crit_edge
    i8 9, label %if.end7.sw.bb_crit_edge86
    i8 7, label %if.end7.sw.bb29_crit_edge
  ]

if.end7.sw.bb29_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb29

if.end7.sw.bb_crit_edge86:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end7.sw.bb_crit_edge:                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end7.sw.default_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default

sw.bb:                                            ; preds = %if.end7.sw.bb_crit_edge, %if.end7.sw.bb_crit_edge86
  %arrayidx22 = getelementptr %struct.input_dev, ptr %call4, i32 0, i32 6, i32 8
  %15 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx22, align 4
  %or = or i32 %16, 512
  store i32 %or, ptr %arrayidx22, align 4
  %arrayidx24 = getelementptr %struct.input_dev, ptr %call4, i32 0, i32 6, i32 9
  %17 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx24, align 4
  %or25 = or i32 %18, 268894208
  store i32 %or25, ptr %arrayidx24, align 4
  br label %sw.default

sw.default:                                       ; preds = %sw.bb, %if.end7.sw.default_crit_edge
  %arrayidx27 = getelementptr %struct.input_dev, ptr %call4, i32 0, i32 6, i32 8
  %19 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx27, align 4
  %or28 = or i32 %20, 508
  store i32 %or28, ptr %arrayidx27, align 4
  br label %sw.bb29

sw.bb29:                                          ; preds = %sw.default, %if.end7.sw.bb29_crit_edge
  %arrayidx31 = getelementptr %struct.input_dev, ptr %call4, i32 0, i32 6, i32 8
  %21 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx31, align 4
  %or32 = or i32 %22, 258
  store i32 %or32, ptr %arrayidx31, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call4, i32 noundef 0, i32 noundef -8000, i32 noundef 8000, i32 noundef 8, i32 noundef 40) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call4, i32 noundef 3, i32 noundef -1600, i32 noundef 1600, i32 noundef 2, i32 noundef 8) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call4, i32 noundef 1, i32 noundef -8000, i32 noundef 8000, i32 noundef 8, i32 noundef 40) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call4, i32 noundef 4, i32 noundef -1600, i32 noundef 1600, i32 noundef 2, i32 noundef 8) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call4, i32 noundef 2, i32 noundef -8000, i32 noundef 8000, i32 noundef 8, i32 noundef 40) #6
  tail call void @input_set_abs_params(ptr noundef nonnull %call4, i32 noundef 5, i32 noundef -1600, i32 noundef 1600, i32 noundef 2, i32 noundef 8) #6
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %23 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i, ptr %driver_data.i.i, align 4
  %call36 = tail call i32 @serio_open(ptr noundef %serio, ptr noundef %drv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %sw.bb29.fail2_crit_edge

sw.bb29.fail2_crit_edge:                          ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail2

if.end39:                                         ; preds = %sw.bb29
  %24 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call7.i, align 8
  %call41 = tail call i32 @input_register_device(ptr noundef %25) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end39.cleanup_crit_edge, label %fail3

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

fail3:                                            ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @serio_close(ptr noundef %serio) #6
  br label %fail2

fail2:                                            ; preds = %fail3, %sw.bb29.fail2_crit_edge
  %err.0 = phi i32 [ %call36, %sw.bb29.fail2_crit_edge ], [ %call41, %fail3 ]
  %26 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %fail1

fail1:                                            ; preds = %fail2, %if.end.fail1_crit_edge
  %err.1 = phi i32 [ %err.0, %fail2 ], [ -12, %if.end.fail1_crit_edge ]
  tail call void @input_free_device(ptr noundef %call4) #6
  tail call void @kfree(ptr noundef %call7.i) #6
  br label %cleanup

cleanup:                                          ; preds = %fail1, %if.end39.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %fail1 ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spaceball_disconnect(ptr noundef %serio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @serio_close(ptr noundef %serio) #6
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  tail call void @input_unregister_device(ptr noundef %4) #6
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serio_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !25, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__UNIQUE_ID_author227, !1, !"__UNIQUE_ID_author227", i1 false, i1 false}
!1 = !{!"../drivers/input/joystick/spaceball.c", i32 26, i32 1}
!2 = !{ptr @__UNIQUE_ID_description228, !3, !"__UNIQUE_ID_description228", i1 false, i1 false}
!3 = !{!"../drivers/input/joystick/spaceball.c", i32 27, i32 1}
!4 = !{ptr @__UNIQUE_ID_file229, !5, !"__UNIQUE_ID_file229", i1 false, i1 false}
!5 = !{!"../drivers/input/joystick/spaceball.c", i32 28, i32 1}
!6 = !{ptr @__UNIQUE_ID_license230, !5, !"__UNIQUE_ID_license230", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_spaceball__231_293_spaceball_drv_init6, !8, !"__initcall__kmod_spaceball__231_293_spaceball_drv_init6", i1 false, i1 false}
!8 = !{!"../drivers/input/joystick/spaceball.c", i32 293, i32 1}
!9 = !{ptr @__exitcall_spaceball_drv_exit, !8, !"__exitcall_spaceball_drv_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/input/joystick/spaceball.c", i32 286, i32 17}
!13 = !{ptr @spaceball_drv, !14, !"spaceball_drv", i1 false, i1 false}
!14 = !{!"../drivers/input/joystick/spaceball.c", i32 282, i32 28}
!15 = !{ptr @spaceball_serio_ids, !16, !"spaceball_serio_ids", i1 false, i1 false}
!16 = !{!"../drivers/input/joystick/spaceball.c", i32 270, i32 37}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/input/joystick/spaceball.c", i32 121, i32 4}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @spaceball_process_packet._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @spaceball_process_packet._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/input/joystick/spaceball.c", i32 126, i32 4}
!25 = !{ptr @spaceball_process_packet._entry.5, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @spaceball_process_packet._entry_ptr.7, !24, !"_entry_ptr", i1 false, i1 false}
!27 = distinct !{null, !28, !"spaceball_axes", i1 false, i1 false}
!28 = !{!"../drivers/input/joystick/spaceball.c", i32 44, i32 12}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/input/joystick/spaceball.c", i32 211, i32 53}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/joystick/spaceball.c", i32 46, i32 2}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/input/joystick/spaceball.c", i32 46, i32 7}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/input/joystick/spaceball.c", i32 46, i32 34}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/joystick/spaceball.c", i32 46, i32 61}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/joystick/spaceball.c", i32 47, i32 2}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/input/joystick/spaceball.c", i32 47, i32 30}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/input/joystick/spaceball.c", i32 47, i32 57}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/input/joystick/spaceball.c", i32 48, i32 2}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/input/joystick/spaceball.c", i32 48, i32 30}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/input/joystick/spaceball.c", i32 48, i32 60}
!51 = !{ptr @spaceball_names, !52, !"spaceball_names", i1 false, i1 false}
!52 = !{!"../drivers/input/joystick/spaceball.c", i32 45, i32 14}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
