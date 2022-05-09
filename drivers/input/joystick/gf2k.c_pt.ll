; ModuleID = '/llk/IR_all_yes/drivers/input/joystick/gf2k.c_pt.bc'
source_filename = "../drivers/input/joystick/gf2k.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gameport_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.gf2k = type { ptr, ptr, i32, i32, i8, i8, [32 x i8] }
%struct.gameport = type { ptr, [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, i32, %struct.spinlock, i32, ptr, ptr, ptr, ptr, %struct.mutex, %struct.device, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }

@__UNIQUE_ID_author223 = internal constant [44 x i8] c"gf2k.author=Vojtech Pavlik <vojtech@ucw.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description224 = internal constant [52 x i8] c"gf2k.description=Genius Flight 2000 joystick driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file225 = internal constant [38 x i8] c"gf2k.file=drivers/input/joystick/gf2k\00", section ".modinfo", align 1
@__UNIQUE_ID_license226 = internal constant [17 x i8] c"gf2k.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_gf2k__227_359_gf2k_drv_init6 = internal global ptr @gf2k_drv_init, section ".initcall6.init", align 4
@gf2k_drv = internal global { %struct.gameport_driver, [32 x i8] } { %struct.gameport_driver { ptr @.str.1, ptr @gf2k_connect, ptr null, ptr @gf2k_disconnect, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_gf2k_drv_exit = internal global ptr @gf2k_drv_exit, section ".exitcall.exit", align 4
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gf2k\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Genius Flight 2000 joystick driver\00", [61 x i8] zeroinitializer }, align 32
@gf2k_seq_reset = internal global { [3 x i16], [26 x i8] } { [3 x i16] [i16 240, i16 340, i16 0], [26 x i8] zeroinitializer }, align 32
@gf2k_seq_digital = internal global { [4 x i16], [24 x i8] } { [4 x i16] [i16 590, i16 320, i16 860, i16 0], [24 x i8] zeroinitializer }, align 32
@gf2k_axes = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\02\00\00\04\00\04\00", [24 x i8] zeroinitializer }, align 32
@gf2k_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014gf2k.c: Not yet supported joystick on %s. [id: %d type:%s]\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gf2k_connect\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/input/joystick/gf2k.c\00", [34 x i8] zeroinitializer }, align 32
@gf2k_connect._entry_ptr = internal global ptr @gf2k_connect._entry, section ".printk_index", align 4
@gf2k_names = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s/input0\00", [22 x i8] zeroinitializer }, align 32
@gf2k_lens = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\12\00\00\12\00\12\00", [24 x i8] zeroinitializer }, align 32
@gf2k_abs = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\00\01\06\07\09\0A", [26 x i8] zeroinitializer }, align 32
@gf2k_hats = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\02\00\00\02\00\02\00", [24 x i8] zeroinitializer }, align 32
@gf2k_joys = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\00\00\00\0A\00\08\00", [24 x i8] zeroinitializer }, align 32
@gf2k_btn_joy = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 288, i16 289, i16 291, i16 292, i16 294, i16 295, i16 296, i16 297], [16 x i8] zeroinitializer }, align 32
@gf2k_pads = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\06\00\00\00\00\00\00", [24 x i8] zeroinitializer }, align 32
@gf2k_btn_pad = internal constant { [12 x i16], [40 x i8] } { [12 x i16] [i16 304, i16 305, i16 306, i16 307, i16 308, i16 309, i16 310, i16 311, i16 312, i16 313, i16 315, i16 314], [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.7 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Genius G-09D\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Genius F-30D\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Genius F-30\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Genius MaxFighter F-31D\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Genius F-30-5\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Genius Flight2000 F-23\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Genius F-31\00", [20 x i8] zeroinitializer }, align 32
@gf2k_length = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"((((((((", [24 x i8] zeroinitializer }, align 32
@gf2k_hat_to_axis = internal constant { [9 x [2 x i8]], [46 x i8] } { [9 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\00\FF", [2 x i8] c"\01\FF", [2 x i8] c"\01\00", [2 x i8] c"\01\01", [2 x i8] c"\00\01", [2 x i8] c"\FF\01", [2 x i8] c"\FF\00", [2 x i8] c"\FF\FF"], [46 x i8] zeroinitializer }, align 32
@___asan_gen_.15 = private unnamed_addr constant [9 x i8] c"gf2k_drv\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 350, i32 31 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 359, i32 1 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 354, i32 17 }
@___asan_gen_.24 = private unnamed_addr constant [15 x i8] c"gf2k_seq_reset\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 61, i32 14 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"gf2k_seq_digital\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 62, i32 14 }
@___asan_gen_.30 = private unnamed_addr constant [10 x i8] c"gf2k_axes\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 51, i32 22 }
@___asan_gen_.33 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 273, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [11 x i8] c"gf2k_names\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 48, i32 14 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 282, i32 43 }
@___asan_gen_.51 = private unnamed_addr constant [10 x i8] c"gf2k_lens\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 54, i32 22 }
@___asan_gen_.54 = private unnamed_addr constant [9 x i8] c"gf2k_abs\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 56, i32 22 }
@___asan_gen_.57 = private unnamed_addr constant [10 x i8] c"gf2k_hats\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 50, i32 22 }
@___asan_gen_.60 = private unnamed_addr constant [10 x i8] c"gf2k_joys\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 52, i32 22 }
@___asan_gen_.63 = private unnamed_addr constant [13 x i8] c"gf2k_btn_joy\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 57, i32 14 }
@___asan_gen_.66 = private unnamed_addr constant [10 x i8] c"gf2k_pads\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 53, i32 22 }
@___asan_gen_.69 = private unnamed_addr constant [13 x i8] c"gf2k_btn_pad\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 58, i32 14 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 48, i32 30 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 48, i32 34 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 48, i32 50 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 48, i32 66 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 48, i32 81 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 49, i32 5 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 49, i32 22 }
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 49, i32 48 }
@___asan_gen_.96 = private unnamed_addr constant [12 x i8] c"gf2k_length\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 45, i32 13 }
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"gf2k_hat_to_axis\00", align 1
@___asan_gen_.100 = private constant [33 x i8] c"../drivers/input/joystick/gf2k.c\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 46, i32 13 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_author223, ptr @__UNIQUE_ID_description224, ptr @__UNIQUE_ID_file225, ptr @__UNIQUE_ID_license226, ptr @__exitcall_gf2k_drv_exit, ptr @__initcall__kmod_gf2k__227_359_gf2k_drv_init6, ptr @gf2k_connect._entry, ptr @gf2k_connect._entry_ptr, ptr @gf2k_drv_exit, ptr @gf2k_drv, ptr @.str, ptr @.str.1, ptr @gf2k_seq_reset, ptr @gf2k_seq_digital, ptr @gf2k_axes, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @gf2k_names, ptr @.str.6, ptr @gf2k_lens, ptr @gf2k_abs, ptr @gf2k_hats, ptr @gf2k_joys, ptr @gf2k_btn_joy, ptr @gf2k_pads, ptr @gf2k_btn_pad, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @gf2k_length, ptr @gf2k_hat_to_axis], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf2k_drv to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf2k_seq_reset to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf2k_seq_digital to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf2k_axes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf2k_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf2k_names to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf2k_lens to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf2k_abs to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf2k_hats to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf2k_joys to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf2k_btn_joy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf2k_pads to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf2k_btn_pad to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf2k_length to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf2k_hat_to_axis to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gf2k_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__gameport_register_driver(ptr noundef nonnull @gf2k_drv, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gf2k_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gameport_unregister_driver(ptr noundef nonnull @gf2k_drv) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__gameport_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gf2k_connect(ptr noundef %gameport, ptr noundef %drv) #2 align 64 {
entry:
  %data = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %data) #6
  %0 = call ptr @memset(ptr %data, i32 255, i32 80)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 52) #9
  %call1 = tail call ptr @input_allocate_device() #6
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool2.not = icmp eq ptr %call1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.fail1_crit_edge, label %if.end

entry.fail1_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail1

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %gameport, ptr %call7.i.i, align 8
  %dev = getelementptr inbounds %struct.gf2k, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1, ptr %dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call4 = tail call i32 @gameport_open(ptr noundef %gameport, ptr noundef %drv, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.fail1_crit_edge

if.end.fail1_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail1

if.end7:                                          ; preds = %if.end
  tail call fastcc void @gf2k_trigger_seq(ptr noundef %gameport, ptr noundef nonnull @gf2k_seq_reset)
  tail call void @msleep(i32 noundef 4) #6
  tail call fastcc void @gf2k_trigger_seq(ptr noundef %gameport, ptr noundef nonnull @gf2k_seq_digital)
  tail call void @msleep(i32 noundef 4) #6
  %call8 = call fastcc i32 @gf2k_read_packet(ptr noundef %gameport, i32 noundef 80, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call8)
  %cmp = icmp slt i32 %call8, 12
  br i1 %cmp, label %if.end7.fail2_crit_edge, label %for.body.i.preheader

if.end7.fail2_crit_edge:                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail2

for.body.i.preheader:                             ; preds = %if.end7
  %arrayidx.i = getelementptr inbounds i8, ptr %data, i32 2
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  %7 = lshr i8 %6, 1
  %arrayidx.i240 = getelementptr inbounds i8, ptr %data, i32 1
  %8 = ptrtoint ptr %arrayidx.i240 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i240, align 1
  %10 = shl i8 %9, 2
  %conv8.i250 = and i8 %10, 28
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %data, align 1
  %13 = and i8 %7, 3
  %or = or i8 %conv8.i250, %13
  %14 = shl i8 %12, 5
  %or17 = or i8 %14, %or
  %id = getelementptr inbounds %struct.gf2k, ptr %call7.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %or17, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or17)
  %tobool18.not = icmp eq i8 %or17, 0
  br i1 %tobool18.not, label %for.body.i.preheader.fail2_crit_edge, label %if.end20

for.body.i.preheader.fail2_crit_edge:             ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail2

if.end20:                                         ; preds = %for.body.i.preheader
  %16 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 6, ptr %id, align 8
  %poll_handler.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 16
  %17 = ptrtoint ptr %poll_handler.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @gf2k_poll, ptr %poll_handler.i, align 4
  %poll_interval.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 13
  %18 = ptrtoint ptr %poll_interval.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 20, ptr %poll_interval.i, align 8
  %phys42 = getelementptr inbounds %struct.gf2k, ptr %call7.i.i, i32 0, i32 6
  %phys44 = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 2
  %call46 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys42, i32 noundef 32, ptr noundef nonnull @.str.6, ptr noundef %phys44)
  %19 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %id, align 8
  %idxprom48 = zext i8 %20 to i32
  %arrayidx49 = getelementptr [8 x i8], ptr @gf2k_lens, i32 0, i32 %idxprom48
  %21 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx49, align 1
  %length = getelementptr inbounds %struct.gf2k, ptr %call7.i.i, i32 0, i32 5
  %23 = ptrtoint ptr %length to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %length, align 1
  %arrayidx52 = getelementptr [8 x ptr], ptr @gf2k_names, i32 0, i32 %idxprom48
  %24 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx52, align 4
  %26 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %call1, align 8
  %phys55 = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 1
  %27 = ptrtoint ptr %phys55 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %phys42, ptr %phys55, align 4
  %id56 = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3
  %28 = ptrtoint ptr %id56 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 20, ptr %id56, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 5, ptr %vendor, align 2
  %30 = load i8, ptr %id, align 8
  %conv59 = zext i8 %30 to i16
  %product = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3, i32 2
  %31 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv59, ptr %product, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3, i32 3
  %32 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 256, ptr %version, align 2
  %dev62 = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21
  %parent = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 40, i32 1
  %33 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %dev62, ptr %parent, align 8
  %driver_data.i.i267 = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 40, i32 8
  %34 = ptrtoint ptr %driver_data.i.i267 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call7.i.i, ptr %driver_data.i.i267, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 31
  %35 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @gf2k_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 32
  %36 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @gf2k_close, ptr %close, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 5
  %37 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 10, ptr %evbit, align 8
  %38 = load i8, ptr %id, align 8
  %idxprom66283 = zext i8 %38 to i32
  %39 = lshr i32 173, %idxprom66283
  %40 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp69286.not.not = icmp eq i32 %40, 0
  br i1 %cmp69286.not.not, label %for.body.lr.ph, label %if.end20.for.cond74.preheader_crit_edge

if.end20.for.cond74.preheader_crit_edge:          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond74.preheader

for.body.lr.ph:                                   ; preds = %if.end20
  %absbit = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 8
  br label %for.body

for.cond74.preheader:                             ; preds = %for.body.for.cond74.preheader_crit_edge, %if.end20.for.cond74.preheader_crit_edge
  %41 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %id, align 8
  %idxprom76288 = zext i8 %42 to i32
  %43 = lshr i32 173, %idxprom76288
  %44 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp79291.not.not = icmp eq i32 %44, 0
  br i1 %cmp79291.not.not, label %for.cond74.preheader.for.body81_crit_edge, label %for.cond74.preheader.for.cond85.preheader_crit_edge

for.cond74.preheader.for.cond85.preheader_crit_edge: ; preds = %for.cond74.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond85.preheader

for.cond74.preheader.for.body81_crit_edge:        ; preds = %for.cond74.preheader
  br label %for.body81

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0287 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx71 = getelementptr [6 x i8], ptr @gf2k_abs, i32 0, i32 %i.0287
  %45 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx71, align 1
  %conv72 = zext i8 %46 to i32
  tail call void @_set_bit(i32 noundef %conv72, ptr noundef %absbit) #6
  %inc = add nuw nsw i32 %i.0287, 1
  %47 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %id, align 8
  %idxprom66 = zext i8 %48 to i32
  %arrayidx67 = getelementptr [8 x i8], ptr @gf2k_axes, i32 0, i32 %idxprom66
  %49 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %50 to i32
  %cmp69 = icmp ult i32 %inc, %conv68
  br i1 %cmp69, label %for.body.for.body_crit_edge, label %for.body.for.cond74.preheader_crit_edge

for.body.for.cond74.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond74.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond85.preheader:                             ; preds = %for.body81.for.cond85.preheader_crit_edge, %for.cond74.preheader.for.cond85.preheader_crit_edge
  %51 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %id, align 8
  %53 = and i8 %52, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %53)
  %.not = icmp eq i8 %53, 4
  br i1 %.not, label %for.body92.lr.ph, label %for.cond85.preheader.for.cond99.preheader_crit_edge

for.cond85.preheader.for.cond99.preheader_crit_edge: ; preds = %for.cond85.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond99.preheader

for.body92.lr.ph:                                 ; preds = %for.cond85.preheader
  %keybit = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 6
  br label %for.body92

for.body81:                                       ; preds = %for.body81.for.body81_crit_edge, %for.cond74.preheader.for.body81_crit_edge
  %i.1292 = phi i32 [ %inc83, %for.body81.for.body81_crit_edge ], [ 0, %for.cond74.preheader.for.body81_crit_edge ]
  %add = add nuw nsw i32 %i.1292, 16
  tail call void @input_set_abs_params(ptr noundef %call1, i32 noundef %add, i32 noundef -1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %inc83 = add nuw nsw i32 %i.1292, 1
  %54 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %id, align 8
  %idxprom76 = zext i8 %55 to i32
  %arrayidx77 = getelementptr [8 x i8], ptr @gf2k_hats, i32 0, i32 %idxprom76
  %56 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx77, align 1
  %conv78 = zext i8 %57 to i32
  %cmp79 = icmp ult i32 %inc83, %conv78
  br i1 %cmp79, label %for.body81.for.body81_crit_edge, label %for.body81.for.cond85.preheader_crit_edge

for.body81.for.cond85.preheader_crit_edge:        ; preds = %for.body81
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond85.preheader

for.body81.for.body81_crit_edge:                  ; preds = %for.body81
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body81

for.cond99.preheaderthread-pre-split:             ; preds = %for.body92
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %58)
  %.pr = load i8, ptr %id, align 8
  br label %for.cond99.preheader

for.cond99.preheader:                             ; preds = %for.cond99.preheaderthread-pre-split, %for.cond85.preheader.for.cond99.preheader_crit_edge
  %59 = phi i8 [ %.pr, %for.cond99.preheaderthread-pre-split ], [ %52, %for.cond85.preheader.for.cond99.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %59)
  %cmp104301.not.not = icmp eq i8 %59, 1
  br i1 %cmp104301.not.not, label %for.body106.lr.ph, label %for.cond99.preheader.for.end113_crit_edge

for.cond99.preheader.for.end113_crit_edge:        ; preds = %for.cond99.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end113

for.body106.lr.ph:                                ; preds = %for.cond99.preheader
  %keybit109 = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 6
  br label %for.body106

for.body92:                                       ; preds = %for.body92.for.body92_crit_edge, %for.body92.lr.ph
  %i.2297 = phi i32 [ 0, %for.body92.lr.ph ], [ %inc97, %for.body92.for.body92_crit_edge ]
  %arrayidx93 = getelementptr [8 x i16], ptr @gf2k_btn_joy, i32 0, i32 %i.2297
  %60 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx93, align 2
  %conv94 = sext i16 %61 to i32
  tail call void @_set_bit(i32 noundef %conv94, ptr noundef %keybit) #6
  %inc97 = add nuw nsw i32 %i.2297, 1
  %62 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %id, align 8
  %idxprom87 = zext i8 %63 to i32
  %arrayidx88 = getelementptr [8 x i8], ptr @gf2k_joys, i32 0, i32 %idxprom87
  %64 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx88, align 1
  %conv89 = zext i8 %65 to i32
  %cmp90 = icmp ult i32 %inc97, %conv89
  br i1 %cmp90, label %for.body92.for.body92_crit_edge, label %for.cond99.preheaderthread-pre-split

for.body92.for.body92_crit_edge:                  ; preds = %for.body92
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body92

for.body106:                                      ; preds = %for.body106.for.body106_crit_edge, %for.body106.lr.ph
  %i.3302 = phi i32 [ 0, %for.body106.lr.ph ], [ %inc112, %for.body106.for.body106_crit_edge ]
  %arrayidx107 = getelementptr [12 x i16], ptr @gf2k_btn_pad, i32 0, i32 %i.3302
  %66 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx107, align 2
  %conv108 = sext i16 %67 to i32
  tail call void @_set_bit(i32 noundef %conv108, ptr noundef %keybit109) #6
  %inc112 = add nuw nsw i32 %i.3302, 1
  %68 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %id, align 8
  %idxprom101 = zext i8 %69 to i32
  %arrayidx102 = getelementptr [8 x i8], ptr @gf2k_pads, i32 0, i32 %idxprom101
  %70 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx102, align 1
  %conv103 = zext i8 %71 to i32
  %cmp104 = icmp ult i32 %inc112, %conv103
  br i1 %cmp104, label %for.body106.for.body106_crit_edge, label %for.body106.for.end113_crit_edge

for.body106.for.end113_crit_edge:                 ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end113

for.body106.for.body106_crit_edge:                ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body106

for.end113:                                       ; preds = %for.body106.for.end113_crit_edge, %for.cond99.preheader.for.end113_crit_edge
  %72 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %length, align 1
  %conv115 = zext i8 %73 to i32
  %call117 = call fastcc i32 @gf2k_read_packet(ptr noundef %gameport, i32 noundef %conv115, ptr noundef nonnull %data)
  call fastcc void @gf2k_read(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %data)
  %74 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %id, align 8
  %idxprom121303 = zext i8 %75 to i32
  %76 = lshr i32 173, %idxprom121303
  %77 = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp124306.not.not = icmp eq i32 %77, 0
  br i1 %cmp124306.not.not, label %cond.true129.peel, label %for.end113.for.end148_crit_edge

for.end113.for.end148_crit_edge:                  ; preds = %for.end113
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end148

cond.true129.peel:                                ; preds = %for.end113
  %absinfo.i269 = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 26
  %78 = ptrtoint ptr %absinfo.i269 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %absinfo.i269, align 8
  %tobool.not.i.peel = icmp eq ptr %79, null
  br i1 %tobool.not.i.peel, label %cond.true129.peel.cond.end139.peel_crit_edge, label %cond.true.i.peel

cond.true129.peel.cond.end139.peel_crit_edge:     ; preds = %cond.true129.peel
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end139.peel

cond.true.i.peel:                                 ; preds = %cond.true129.peel
  call void @__sanitizer_cov_trace_pc() #8
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 4
  %phi.bo = shl i32 %81, 1
  %phi.bo339 = add i32 %phi.bo, -32
  br label %cond.end139.peel

cond.end139.peel:                                 ; preds = %cond.true.i.peel, %cond.true129.peel.cond.end139.peel_crit_edge
  %cond.i.peel = phi i32 [ %phi.bo339, %cond.true.i.peel ], [ -32, %cond.true129.peel.cond.end139.peel_crit_edge ]
  tail call void @input_set_abs_params(ptr noundef %call1, i32 noundef 0, i32 noundef 32, i32 noundef %cond.i.peel, i32 noundef 8, i32 noundef 24) #6
  %82 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %id, align 8
  %idxprom121.peel = zext i8 %83 to i32
  %84 = lshr i32 82, %idxprom121.peel
  %85 = and i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp124.peel.not = icmp eq i32 %85, 0
  br i1 %cmp124.peel.not, label %cond.end139.peel.for.end148_crit_edge, label %cond.true129.peel317

cond.end139.peel.for.end148_crit_edge:            ; preds = %cond.end139.peel
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end148

cond.true129.peel317:                             ; preds = %cond.end139.peel
  %86 = ptrtoint ptr %absinfo.i269 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %absinfo.i269, align 8
  %tobool.not.i.peel318 = icmp eq ptr %87, null
  br i1 %tobool.not.i.peel318, label %cond.true129.peel317.cond.end139.peel326_crit_edge, label %cond.true.i.peel319

cond.true129.peel317.cond.end139.peel326_crit_edge: ; preds = %cond.true129.peel317
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end139.peel326

cond.true.i.peel319:                              ; preds = %cond.true129.peel317
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i268.peel322 = getelementptr %struct.input_absinfo, ptr %87, i32 1
  %88 = ptrtoint ptr %arrayidx.i268.peel322 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx.i268.peel322, align 4
  %phi.bo338 = shl i32 %89, 1
  %phi.bo340 = add i32 %phi.bo338, -32
  br label %cond.end139.peel326

cond.end139.peel326:                              ; preds = %cond.true.i.peel319, %cond.true129.peel317.cond.end139.peel326_crit_edge
  %cond.i.peel324 = phi i32 [ %phi.bo340, %cond.true.i.peel319 ], [ -32, %cond.true129.peel317.cond.end139.peel326_crit_edge ]
  tail call void @input_set_abs_params(ptr noundef %call1, i32 noundef 1, i32 noundef 32, i32 noundef %cond.i.peel324, i32 noundef 8, i32 noundef 24) #6
  %90 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %id, align 8
  %92 = and i8 %91, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %92)
  %93 = icmp eq i8 %92, 4
  br i1 %93, label %cond.end139.peel326.cond.false133_crit_edge, label %cond.end139.peel326.for.end148_crit_edge

cond.end139.peel326.for.end148_crit_edge:         ; preds = %cond.end139.peel326
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end148

cond.end139.peel326.cond.false133_crit_edge:      ; preds = %cond.end139.peel326
  br label %cond.false133

cond.false133:                                    ; preds = %cond.end139.cond.false133_crit_edge, %cond.end139.peel326.cond.false133_crit_edge
  %i.4307 = phi i32 [ %inc147, %cond.end139.cond.false133_crit_edge ], [ 2, %cond.end139.peel326.cond.false133_crit_edge ]
  %94 = ptrtoint ptr %absinfo.i269 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %absinfo.i269, align 8
  %tobool.not.i270 = icmp eq ptr %95, null
  br i1 %tobool.not.i270, label %cond.false133.cond.end139_crit_edge, label %cond.true.i277

cond.false133.cond.end139_crit_edge:              ; preds = %cond.false133
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end139

cond.true.i277:                                   ; preds = %cond.false133
  call void @__sanitizer_cov_trace_pc() #8
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %95, align 4
  %arrayidx.i276 = getelementptr %struct.input_absinfo, ptr %95, i32 1
  %98 = ptrtoint ptr %arrayidx.i276 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx.i276, align 4
  %100 = add i32 %99, %97
  br label %cond.end139

cond.end139:                                      ; preds = %cond.true.i277, %cond.false133.cond.end139_crit_edge
  %cond140 = phi i32 [ 0, %cond.false133.cond.end139_crit_edge ], [ %100, %cond.true.i277 ]
  %arrayidx144 = getelementptr [6 x i8], ptr @gf2k_abs, i32 0, i32 %i.4307
  %101 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx144, align 1
  %conv145 = zext i8 %102 to i32
  %sub = add i32 %cond140, -32
  tail call void @input_set_abs_params(ptr noundef %call1, i32 noundef %conv145, i32 noundef 32, i32 noundef %sub, i32 noundef 8, i32 noundef 0) #6
  %inc147 = add nuw nsw i32 %i.4307, 1
  %103 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %id, align 8
  %idxprom121 = zext i8 %104 to i32
  %arrayidx122 = getelementptr [8 x i8], ptr @gf2k_axes, i32 0, i32 %idxprom121
  %105 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx122, align 1
  %conv123 = zext i8 %106 to i32
  %cmp124 = icmp ult i32 %inc147, %conv123
  br i1 %cmp124, label %cond.end139.cond.false133_crit_edge, label %cond.end139.for.end148_crit_edge, !llvm.loop !75

cond.end139.for.end148_crit_edge:                 ; preds = %cond.end139
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end148

cond.end139.cond.false133_crit_edge:              ; preds = %cond.end139
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false133

for.end148:                                       ; preds = %cond.end139.for.end148_crit_edge, %cond.end139.peel326.for.end148_crit_edge, %cond.end139.peel.for.end148_crit_edge, %for.end113.for.end148_crit_edge
  %107 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev, align 4
  %call150 = tail call i32 @input_register_device(ptr noundef %108) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %for.end148.cleanup_crit_edge, label %for.end148.fail2_crit_edge

for.end148.fail2_crit_edge:                       ; preds = %for.end148
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail2

for.end148.cleanup_crit_edge:                     ; preds = %for.end148
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

fail2:                                            ; preds = %for.end148.fail2_crit_edge, %for.body.i.preheader.fail2_crit_edge, %if.end7.fail2_crit_edge
  %err.0 = phi i32 [ %call150, %for.end148.fail2_crit_edge ], [ -19, %if.end7.fail2_crit_edge ], [ -19, %for.body.i.preheader.fail2_crit_edge ]
  tail call void @gameport_close(ptr noundef %gameport) #6
  br label %fail1

fail1:                                            ; preds = %fail2, %if.end.fail1_crit_edge, %entry.fail1_crit_edge
  %err.1 = phi i32 [ %call4, %if.end.fail1_crit_edge ], [ %err.0, %fail2 ], [ -12, %entry.fail1_crit_edge ]
  %driver_data.i.i280 = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21, i32 8
  %109 = ptrtoint ptr %driver_data.i.i280 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr null, ptr %driver_data.i.i280, align 4
  tail call void @input_free_device(ptr noundef %call1) #6
  tail call void @kfree(ptr noundef %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %fail1, %for.end148.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %fail1 ], [ 0, %for.end148.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %data) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gf2k_disconnect(ptr noundef %gameport) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.gf2k, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void @input_unregister_device(ptr noundef %3) #6
  tail call void @gameport_close(ptr noundef %gameport) #6
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gameport_open(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gf2k_trigger_seq(ptr noundef %gameport, ptr nocapture noundef readonly %seq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !77
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end11_crit_edge

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_off() #6
  br label %do.end11

do.end11:                                         ; preds = %if.then, %entry.do.end11_crit_edge
  %trigger.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 6
  %io.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 3
  %speed.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 4
  %read.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 7
  br label %do.body12

do.body12:                                        ; preds = %cond.false25.do.body12_crit_edge, %do.end11
  %i.0 = phi i32 [ 0, %do.end11 ], [ %inc, %cond.false25.do.body12_crit_edge ]
  %1 = ptrtoint ptr %trigger.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %trigger.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %2(ptr noundef %gameport) #6
  br label %gameport_trigger.exit

do.body.i:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %3 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %io.i, align 4
  %and.i78 = and i32 %4, 1048575
  %add.i = or i32 %and.i78, -18874368
  %5 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 -1) #6, !srcloc !79
  br label %gameport_trigger.exit

gameport_trigger.exit:                            ; preds = %do.body.i, %if.then.i
  %6 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed.i, align 8
  %mul.i = mul i32 %7, 4000
  %div.i = sdiv i32 %mul.i, 1000
  br label %while.cond

while.cond:                                       ; preds = %gameport_read.exit.while.cond_crit_edge, %gameport_trigger.exit
  %t.0 = phi i32 [ %div.i, %gameport_trigger.exit ], [ %dec, %gameport_read.exit.while.cond_crit_edge ]
  %8 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read.i, align 4
  %tobool.not.i79 = icmp eq ptr %9, null
  br i1 %tobool.not.i79, label %if.else.i, label %if.then.i80

if.then.i80:                                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call zeroext i8 %9(ptr noundef %gameport) #6
  br label %gameport_read.exit

if.else.i:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %io.i, align 4
  %and.i82 = and i32 %11, 1048575
  %add.i83 = or i32 %and.i82, -18874368
  %12 = inttoptr i32 %add.i83 to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #6, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  br label %gameport_read.exit

gameport_read.exit:                               ; preds = %if.else.i, %if.then.i80
  %retval.0.i = phi i8 [ %call.i, %if.then.i80 ], [ %13, %if.else.i ]
  %14 = and i8 %retval.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool16.not = icmp eq i8 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.0)
  %tobool17.not = icmp eq i32 %t.0, 0
  %or.cond = select i1 %tobool16.not, i1 true, i1 %tobool17.not
  %dec = add i32 %t.0, -1
  br i1 %or.cond, label %cond.false25, label %gameport_read.exit.while.cond_crit_edge

gameport_read.exit.while.cond_crit_edge:          ; preds = %gameport_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

cond.false25:                                     ; preds = %gameport_read.exit
  %arrayidx = getelementptr i16, ptr %seq, i32 %i.0
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  %conv27 = sext i16 %16 to i32
  tail call void %17(i32 noundef %conv27) #6
  %inc = add i32 %i.0, 1
  %arrayidx30 = getelementptr i16, ptr %seq, i32 %inc
  %18 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx30, align 2
  %tobool31.not = icmp eq i16 %19, 0
  br i1 %tobool31.not, label %do.end32, label %cond.false25.do.body12_crit_edge

cond.false25.do.body12_crit_edge:                 ; preds = %cond.false25
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body12

do.end32:                                         ; preds = %cond.false25
  %20 = ptrtoint ptr %trigger.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %trigger.i, align 8
  %tobool.not.i85 = icmp eq ptr %21, null
  br i1 %tobool.not.i85, label %do.body.i90, label %if.then.i86

if.then.i86:                                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %21(ptr noundef %gameport) #6
  br label %gameport_trigger.exit91

do.body.i90:                                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %22 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %io.i, align 4
  %and.i88 = and i32 %23, 1048575
  %add.i89 = or i32 %and.i88, -18874368
  %24 = inttoptr i32 %add.i89 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 -1) #6, !srcloc !79
  br label %gameport_trigger.exit91

gameport_trigger.exit91:                          ; preds = %do.body.i90, %if.then.i86
  br i1 %tobool.not, label %if.then42, label %gameport_trigger.exit91.do.body44_crit_edge

gameport_trigger.exit91.do.body44_crit_edge:      ; preds = %gameport_trigger.exit91
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body44

if.then42:                                        ; preds = %gameport_trigger.exit91
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_on() #6
  br label %do.body44

do.body44:                                        ; preds = %if.then42, %gameport_trigger.exit91.do.body44_crit_edge
  %25 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !82
  %and.i.i = and i32 %25, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool52.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool52.not, label %if.then56, label %do.body44.do.end59_crit_edge, !prof !83

do.body44.do.end59_crit_edge:                     ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end59

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #6
  br label %do.end59

do.end59:                                         ; preds = %if.then56, %do.body44.do.end59_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #6, !srcloc !84
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gf2k_read_packet(ptr noundef %gameport, i32 noundef %length, ptr nocapture noundef writeonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %speed.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 4
  %0 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed.i, align 8
  %mul.i = mul i32 %1, 400
  %div.i = sdiv i32 %mul.i, 1000
  %mul.i70 = mul i32 %1, 40
  %div.i71 = sdiv i32 %mul.i70, 1000
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !77
  %and.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end12_crit_edge

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_off() #6
  br label %do.end12

do.end12:                                         ; preds = %if.then, %entry.do.end12_crit_edge
  %trigger.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 6
  %3 = ptrtoint ptr %trigger.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %trigger.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %4(ptr noundef %gameport) #6
  br label %gameport_trigger.exit

do.body.i:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %io.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 3
  %5 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %io.i, align 4
  %and.i72 = and i32 %6, 1048575
  %add.i = or i32 %and.i72, -18874368
  %7 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 -1) #6, !srcloc !79
  br label %gameport_trigger.exit

gameport_trigger.exit:                            ; preds = %do.body.i, %if.then.i
  %read.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 7
  %8 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read.i, align 4
  %tobool.not.i73 = icmp eq ptr %9, null
  br i1 %tobool.not.i73, label %if.else.i, label %if.then.i74

if.then.i74:                                      ; preds = %gameport_trigger.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call zeroext i8 %9(ptr noundef %gameport) #6
  br label %gameport_read.exit

if.else.i:                                        ; preds = %gameport_trigger.exit
  call void @__sanitizer_cov_trace_pc() #8
  %io.i75 = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 3
  %10 = ptrtoint ptr %io.i75 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %io.i75, align 4
  %and.i76 = and i32 %11, 1048575
  %add.i77 = or i32 %and.i76, -18874368
  %12 = inttoptr i32 %add.i77 to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #6, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  br label %gameport_read.exit

gameport_read.exit:                               ; preds = %if.else.i, %if.then.i74
  %retval.0.i = phi i8 [ %call.i, %if.then.i74 ], [ %13, %if.else.i ]
  %14 = add i32 %mul.i, -1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1999, i32 %14)
  %15 = icmp ult i32 %14, -1999
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp1690 = icmp sgt i32 %length, 0
  %or.cond91 = and i1 %15, %cmp1690
  br i1 %or.cond91, label %while.body.lr.ph, label %gameport_read.exit.do.body27_crit_edge

gameport_read.exit.do.body27_crit_edge:           ; preds = %gameport_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body27

while.body.lr.ph:                                 ; preds = %gameport_read.exit
  %io.i82 = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end26.while.body_crit_edge, %while.body.lr.ph
  %v.094 = phi i8 [ %retval.0.i, %while.body.lr.ph ], [ %retval.0.i86, %if.end26.while.body_crit_edge ]
  %i.093 = phi i32 [ 0, %while.body.lr.ph ], [ %i.1, %if.end26.while.body_crit_edge ]
  %t.092 = phi i32 [ %div.i, %while.body.lr.ph ], [ %t.1, %if.end26.while.body_crit_edge ]
  %dec = add i32 %t.092, -1
  %16 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read.i, align 4
  %tobool.not.i79 = icmp eq ptr %17, null
  br i1 %tobool.not.i79, label %if.else.i85, label %if.then.i81

if.then.i81:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %call.i80 = tail call zeroext i8 %17(ptr noundef %gameport) #6
  br label %gameport_read.exit87

if.else.i85:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %io.i82 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %io.i82, align 4
  %and.i83 = and i32 %19, 1048575
  %add.i84 = or i32 %and.i83, -18874368
  %20 = inttoptr i32 %add.i84 to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #6, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  br label %gameport_read.exit87

gameport_read.exit87:                             ; preds = %if.else.i85, %if.then.i81
  %retval.0.i86 = phi i8 [ %call.i80, %if.then.i81 ], [ %21, %if.else.i85 ]
  %22 = and i8 %v.094, 16
  %23 = xor i8 %22, 16
  %and2195 = and i8 %23, %retval.0.i86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and2195)
  %tobool22.not = icmp eq i8 %and2195, 0
  br i1 %tobool22.not, label %gameport_read.exit87.if.end26_crit_edge, label %if.then23

gameport_read.exit87.if.end26_crit_edge:          ; preds = %gameport_read.exit87
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then23:                                        ; preds = %gameport_read.exit87
  call void @__sanitizer_cov_trace_pc() #8
  %24 = lshr i8 %retval.0.i86, 5
  %inc = add nsw i32 %i.093, 1
  %arrayidx = getelementptr i8, ptr %data, i32 %i.093
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %arrayidx, align 1
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %gameport_read.exit87.if.end26_crit_edge
  %t.1 = phi i32 [ %div.i71, %if.then23 ], [ %dec, %gameport_read.exit87.if.end26_crit_edge ]
  %i.1 = phi i32 [ %inc, %if.then23 ], [ %i.093, %gameport_read.exit87.if.end26_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.1)
  %cmp14.not = icmp ne i32 %t.1, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1, i32 %length)
  %cmp16 = icmp slt i32 %i.1, %length
  %or.cond = select i1 %cmp14.not, i1 %cmp16, i1 false
  br i1 %or.cond, label %if.end26.while.body_crit_edge, label %if.end26.do.body27_crit_edge

if.end26.do.body27_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body27

if.end26.while.body_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

do.body27:                                        ; preds = %if.end26.do.body27_crit_edge, %gameport_read.exit.do.body27_crit_edge
  %i.0.lcssa = phi i32 [ 0, %gameport_read.exit.do.body27_crit_edge ], [ %i.1, %if.end26.do.body27_crit_edge ]
  br i1 %tobool.not, label %if.then36, label %do.body27.do.body38_crit_edge

do.body27.do.body38_crit_edge:                    ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body38

if.then36:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_on() #6
  br label %do.body38

do.body38:                                        ; preds = %if.then36, %do.body27.do.body38_crit_edge
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !82
  %and.i.i = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool46.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool46.not, label %if.then50, label %do.body38.do.end53_crit_edge, !prof !83

do.body38.do.end53_crit_edge:                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end53

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #6
  br label %do.end53

do.end53:                                         ; preds = %if.then50, %do.body38.do.end53_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #6, !srcloc !84
  ret i32 %i.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gf2k_poll(ptr nocapture noundef readonly %gameport) #2 align 64 {
entry:
  %data = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %data) #6
  %2 = call ptr @memset(ptr %data, i32 255, i32 80)
  %reads = getelementptr inbounds %struct.gf2k, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %reads to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reads, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %reads, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %id = getelementptr inbounds %struct.gf2k, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %id, align 4
  %idxprom = zext i8 %8 to i32
  %arrayidx = getelementptr [8 x i8], ptr @gf2k_length, i32 0, i32 %idxprom
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %10 to i32
  %call2 = call fastcc i32 @gf2k_read_packet(ptr noundef %6, i32 noundef %conv, ptr noundef nonnull %data)
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %id, align 4
  %idxprom4 = zext i8 %12 to i32
  %arrayidx5 = getelementptr [8 x i8], ptr @gf2k_length, i32 0, i32 %idxprom4
  %13 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %conv6)
  %cmp = icmp slt i32 %call2, %conv6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bads = getelementptr inbounds %struct.gf2k, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %bads to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bads, align 4
  %inc8 = add i32 %16, 1
  store i32 %inc8, ptr %bads, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @gf2k_read(ptr noundef %1, ptr noundef nonnull %data)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %data) #6
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gf2k_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @gameport_start_polling(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gf2k_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @gameport_stop_polling(ptr noundef %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gf2k_read(ptr nocapture noundef readonly %gf2k, ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.gf2k, ptr %gf2k, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %id = getelementptr inbounds %struct.gf2k, ptr %gf2k, i32 0, i32 4
  br label %land.rhs

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %entry
  %i.0272 = phi i32 [ 0, %entry ], [ %inc, %for.body.land.rhs_crit_edge ]
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %id, align 4
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr [8 x i8], ptr @gf2k_axes, i32 0, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0272, i32 %conv)
  %cmp2 = icmp ult i32 %i.0272, %conv
  br i1 %cmp2, label %for.body, label %land.rhs.for.end31_crit_edge

land.rhs.for.end31_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end31

for.body:                                         ; preds = %land.rhs
  %arrayidx4 = getelementptr [6 x i8], ptr @gf2k_abs, i32 0, i32 %i.0272
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx4, align 1
  %shl = shl i32 %i.0272, 3
  %shl.frozen = freeze i32 %shl
  %div1.i.udiv = udiv i32 %shl.frozen, 3
  %arrayidx.i = getelementptr i8, ptr %data, i32 %div1.i.udiv
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %10 = zext i8 %9 to i32
  %add2.i.1 = add nuw nsw i32 %div1.i.udiv, 1
  %arrayidx.i.1 = getelementptr i8, ptr %data, i32 %add2.i.1
  %11 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i.1, align 1
  %conv.i.1 = zext i8 %12 to i32
  %shl.i.1 = shl nuw nsw i32 %conv.i.1, 3
  %or.i.1 = or i32 %shl.i.1, %10
  %add2.i.2 = add nuw nsw i32 %div1.i.udiv, 2
  %arrayidx.i.2 = getelementptr i8, ptr %data, i32 %add2.i.2
  %13 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i.2, align 1
  %conv.i.2 = zext i8 %14 to i32
  %shl.i.2 = shl nuw nsw i32 %conv.i.2, 6
  %or.i.2 = or i32 %or.i.1, %shl.i.2
  %add2.i.3 = add nuw nsw i32 %div1.i.udiv, 3
  %arrayidx.i.3 = getelementptr i8, ptr %data, i32 %add2.i.3
  %15 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i.3, align 1
  %conv.i.3 = zext i8 %16 to i32
  %shl.i.3 = shl nuw nsw i32 %conv.i.3, 9
  %or.i.3 = or i32 %or.i.2, %shl.i.3
  %17 = mul i32 %div1.i.udiv, 3
  %rem.i.urem.decomposed = sub i32 %shl.frozen, %17
  %shr.i = lshr i32 %or.i.3, %rem.i.urem.decomposed
  %add = add nuw nsw i32 %i.0272, 46
  %add.frozen = freeze i32 %add
  %div1.i127.udiv = udiv i32 %add.frozen, 3
  %arrayidx.i131 = getelementptr i8, ptr %data, i32 %div1.i127.udiv
  %18 = ptrtoint ptr %arrayidx.i131 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i131, align 1
  %20 = zext i8 %19 to i32
  %add2.i130.1 = add nuw nsw i32 %div1.i127.udiv, 1
  %arrayidx.i131.1 = getelementptr i8, ptr %data, i32 %add2.i130.1
  %21 = ptrtoint ptr %arrayidx.i131.1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i131.1, align 1
  %conv.i132.1 = zext i8 %22 to i32
  %shl.i134.1 = shl nuw nsw i32 %conv.i132.1, 3
  %or.i136.1 = or i32 %shl.i134.1, %20
  %conv5 = zext i8 %7 to i32
  %23 = mul i32 %div1.i127.udiv, 3
  %rem.i140.urem.decomposed = sub i32 %add.frozen, %23
  %shr.i142 = lshr i32 %or.i136.1, %rem.i140.urem.decomposed
  %24 = shl nuw nsw i32 %shr.i142, 8
  %conv8.i144 = and i32 %24, 256
  %add7 = add nuw nsw i32 %i.0272, 50
  %add7.frozen = freeze i32 %add7
  %div1.i146.udiv = udiv i32 %add7.frozen, 3
  %arrayidx.i150 = getelementptr i8, ptr %data, i32 %div1.i146.udiv
  %25 = ptrtoint ptr %arrayidx.i150 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i150, align 1
  %27 = zext i8 %26 to i32
  %add2.i149.1 = add nuw nsw i32 %div1.i146.udiv, 1
  %arrayidx.i150.1 = getelementptr i8, ptr %data, i32 %add2.i149.1
  %28 = ptrtoint ptr %arrayidx.i150.1 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i150.1, align 1
  %conv.i151.1 = zext i8 %29 to i32
  %shl.i153.1 = shl nuw nsw i32 %conv.i151.1, 3
  %or.i155.1 = or i32 %shl.i153.1, %27
  %conv8.i = and i32 %shr.i, 255
  %or = or i32 %conv8.i144, %conv8.i
  %30 = mul i32 %div1.i146.udiv, 3
  %rem.i159.urem.decomposed = sub i32 %add7.frozen, %30
  %shr.i161 = lshr i32 %or.i155.1, %rem.i159.urem.decomposed
  %31 = shl nuw nsw i32 %shr.i161, 9
  %conv8.i164 = and i32 %31, 512
  %or9 = or i32 %or, %conv8.i164
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef %conv5, i32 noundef %or9) #6
  %inc = add nuw nsw i32 %i.0272, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.body.for.end31_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

for.body.for.end31_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end31

for.end31:                                        ; preds = %for.body.for.end31_crit_edge, %land.rhs.for.end31_crit_edge
  %arrayidx.i208 = getelementptr i8, ptr %data, i32 13
  %32 = ptrtoint ptr %arrayidx.i208 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i208, align 1
  %34 = zext i8 %33 to i32
  %arrayidx.i208.1 = getelementptr i8, ptr %data, i32 14
  %35 = ptrtoint ptr %arrayidx.i208.1 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i208.1, align 1
  %conv.i209.1 = zext i8 %36 to i32
  %shl.i211.1 = shl nuw nsw i32 %conv.i209.1, 3
  %or.i213.1 = or i32 %shl.i211.1, %34
  %arrayidx.i208.2 = getelementptr i8, ptr %data, i32 15
  %37 = lshr i32 %or.i213.1, 1
  %conv8.i219 = and i32 %37, 15
  %38 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %id, align 4
  %idxprom35274 = zext i8 %39 to i32
  %40 = lshr i32 173, %idxprom35274
  %41 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp38277.not.not = icmp eq i32 %41, 0
  br i1 %cmp38277.not.not, label %for.end31.for.body40_crit_edge, label %for.end31.for.body.i232.preheader_crit_edge

for.end31.for.body.i232.preheader_crit_edge:      ; preds = %for.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i232.preheader

for.end31.for.body40_crit_edge:                   ; preds = %for.end31
  br label %for.body40

for.body.i232.preheader:                          ; preds = %for.body40.for.body.i232.preheader_crit_edge, %for.end31.for.body.i232.preheader_crit_edge
  %42 = ptrtoint ptr %arrayidx.i208.1 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i208.1, align 1
  %44 = zext i8 %43 to i32
  %45 = ptrtoint ptr %arrayidx.i208.2 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.i208.2, align 1
  %conv.i225.1 = zext i8 %46 to i32
  %shl.i227.1 = shl nuw nsw i32 %conv.i225.1, 3
  %or.i229.1 = or i32 %shl.i227.1, %44
  %47 = lshr i32 %or.i229.1, 2
  %arrayidx.i240 = getelementptr i8, ptr %data, i32 10
  %48 = ptrtoint ptr %arrayidx.i240 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.i240, align 1
  %50 = zext i8 %49 to i32
  %arrayidx.i240.1 = getelementptr i8, ptr %data, i32 11
  %51 = ptrtoint ptr %arrayidx.i240.1 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.i240.1, align 1
  %conv.i241.1 = zext i8 %52 to i32
  %shl.i243.1 = shl nuw nsw i32 %conv.i241.1, 3
  %or.i245.1 = or i32 %shl.i243.1, %50
  %arrayidx.i240.2 = getelementptr i8, ptr %data, i32 12
  %53 = ptrtoint ptr %arrayidx.i240.2 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.i240.2, align 1
  %conv.i241.2 = zext i8 %54 to i32
  %shl.i243.2 = shl nuw nsw i32 %conv.i241.2, 6
  %or.i245.2 = or i32 %or.i245.1, %shl.i243.2
  %55 = ptrtoint ptr %arrayidx.i208 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.i208, align 1
  %conv.i241.3 = zext i8 %56 to i32
  %shl.i243.3 = shl nuw nsw i32 %conv.i241.3, 9
  %or.i245.3 = or i32 %or.i245.2, %shl.i243.3
  %conv8.i252 = and i32 %or.i245.3, 1020
  %arrayidx.i257 = getelementptr i8, ptr %data, i32 26
  %57 = ptrtoint ptr %arrayidx.i257 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.i257, align 1
  %conv8.i235 = and i32 %47, 3
  %or50 = or i32 %conv8.i252, %conv8.i235
  %or.i262.tr = zext i8 %58 to i32
  %59 = shl nuw nsw i32 %or.i262.tr, 10
  %conv8.i268 = and i32 %59, 3072
  %or52 = or i32 %or50, %conv8.i268
  %60 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %id, align 4
  %62 = and i8 %61, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %62)
  %.not = icmp eq i8 %62, 4
  br i1 %.not, label %for.body.i232.preheader.for.body60_crit_edge, label %for.body.i232.preheader.for.cond66.preheader_crit_edge

for.body.i232.preheader.for.cond66.preheader_crit_edge: ; preds = %for.body.i232.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond66.preheader

for.body.i232.preheader.for.body60_crit_edge:     ; preds = %for.body.i232.preheader
  br label %for.body60

for.body40:                                       ; preds = %for.body40.for.body40_crit_edge, %for.end31.for.body40_crit_edge
  %i.2278 = phi i32 [ %inc46, %for.body40.for.body40_crit_edge ], [ 0, %for.end31.for.body40_crit_edge ]
  %add41 = add nuw nsw i32 %i.2278, 16
  %arrayidx43 = getelementptr [9 x [2 x i8]], ptr @gf2k_hat_to_axis, i32 0, i32 %conv8.i219, i32 %i.2278
  %63 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx43, align 1
  %conv44 = zext i8 %64 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef %add41, i32 noundef %conv44) #6
  %inc46 = add nuw nsw i32 %i.2278, 1
  %65 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %id, align 4
  %idxprom35 = zext i8 %66 to i32
  %arrayidx36 = getelementptr [8 x i8], ptr @gf2k_hats, i32 0, i32 %idxprom35
  %67 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %68 to i32
  %cmp38 = icmp ult i32 %inc46, %conv37
  br i1 %cmp38, label %for.body40.for.body40_crit_edge, label %for.body40.for.body.i232.preheader_crit_edge

for.body40.for.body.i232.preheader_crit_edge:     ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i232.preheader

for.body40.for.body40_crit_edge:                  ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body40

for.cond66.preheaderthread-pre-split:             ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %69)
  %.pr = load i8, ptr %id, align 4
  br label %for.cond66.preheader

for.cond66.preheader:                             ; preds = %for.cond66.preheaderthread-pre-split, %for.body.i232.preheader.for.cond66.preheader_crit_edge
  %70 = phi i8 [ %.pr, %for.cond66.preheaderthread-pre-split ], [ %61, %for.body.i232.preheader.for.cond66.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %70)
  %cmp71287.not.not = icmp eq i8 %70, 1
  br i1 %cmp71287.not.not, label %for.cond66.preheader.for.body73_crit_edge, label %for.cond66.preheader.for.end80_crit_edge

for.cond66.preheader.for.end80_crit_edge:         ; preds = %for.cond66.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end80

for.cond66.preheader.for.body73_crit_edge:        ; preds = %for.cond66.preheader
  br label %for.body73

for.body60:                                       ; preds = %for.body60.for.body60_crit_edge, %for.body.i232.preheader.for.body60_crit_edge
  %i.3283 = phi i32 [ %inc64, %for.body60.for.body60_crit_edge ], [ 0, %for.body.i232.preheader.for.body60_crit_edge ]
  %arrayidx61 = getelementptr [8 x i16], ptr @gf2k_btn_joy, i32 0, i32 %i.3283
  %71 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %arrayidx61, align 2
  %conv62 = sext i16 %72 to i32
  %73 = lshr i32 %or52, %i.3283
  %74 = and i32 %73, 1
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef %conv62, i32 noundef %74) #6
  %inc64 = add nuw nsw i32 %i.3283, 1
  %75 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %id, align 4
  %idxprom55 = zext i8 %76 to i32
  %arrayidx56 = getelementptr [8 x i8], ptr @gf2k_joys, i32 0, i32 %idxprom55
  %77 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx56, align 1
  %conv57 = zext i8 %78 to i32
  %cmp58 = icmp ult i32 %inc64, %conv57
  br i1 %cmp58, label %for.body60.for.body60_crit_edge, label %for.cond66.preheaderthread-pre-split

for.body60.for.body60_crit_edge:                  ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body60

for.body73:                                       ; preds = %for.body73.for.body73_crit_edge, %for.cond66.preheader.for.body73_crit_edge
  %i.4288 = phi i32 [ %inc79, %for.body73.for.body73_crit_edge ], [ 0, %for.cond66.preheader.for.body73_crit_edge ]
  %arrayidx74 = getelementptr [12 x i16], ptr @gf2k_btn_pad, i32 0, i32 %i.4288
  %79 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %arrayidx74, align 2
  %conv75 = sext i16 %80 to i32
  %81 = lshr i32 %or52, %i.4288
  %82 = and i32 %81, 1
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef %conv75, i32 noundef %82) #6
  %inc79 = add nuw nsw i32 %i.4288, 1
  %83 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %id, align 4
  %idxprom68 = zext i8 %84 to i32
  %arrayidx69 = getelementptr [8 x i8], ptr @gf2k_pads, i32 0, i32 %idxprom68
  %85 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx69, align 1
  %conv70 = zext i8 %86 to i32
  %cmp71 = icmp ult i32 %inc79, %conv70
  br i1 %cmp71, label %for.body73.for.body73_crit_edge, label %for.body73.for.end80_crit_edge

for.body73.for.end80_crit_edge:                   ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end80

for.body73.for.body73_crit_edge:                  ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body73

for.end80:                                        ; preds = %for.body73.for.end80_crit_edge, %for.cond66.preheader.for.end80_crit_edge
  tail call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_start_polling(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_stop_polling(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @__UNIQUE_ID_author223, !1, !"__UNIQUE_ID_author223", i1 false, i1 false}
!1 = !{!"../drivers/input/joystick/gf2k.c", i32 23, i32 1}
!2 = !{ptr @__UNIQUE_ID_description224, !3, !"__UNIQUE_ID_description224", i1 false, i1 false}
!3 = !{!"../drivers/input/joystick/gf2k.c", i32 24, i32 1}
!4 = !{ptr @__UNIQUE_ID_file225, !5, !"__UNIQUE_ID_file225", i1 false, i1 false}
!5 = !{!"../drivers/input/joystick/gf2k.c", i32 25, i32 1}
!6 = !{ptr @__UNIQUE_ID_license226, !5, !"__UNIQUE_ID_license226", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_gf2k__227_359_gf2k_drv_init6, !8, !"__initcall__kmod_gf2k__227_359_gf2k_drv_init6", i1 false, i1 false}
!8 = !{!"../drivers/input/joystick/gf2k.c", i32 359, i32 1}
!9 = !{ptr @__exitcall_gf2k_drv_exit, !8, !"__exitcall_gf2k_drv_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/input/joystick/gf2k.c", i32 354, i32 17}
!13 = !{ptr @gf2k_drv, !14, !"gf2k_drv", i1 false, i1 false}
!14 = !{!"../drivers/input/joystick/gf2k.c", i32 350, i32 31}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/input/joystick/gf2k.c", i32 273, i32 3}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @gf2k_connect._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @gf2k_connect._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = distinct !{null, !16, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/joystick/gf2k.c", i32 282, i32 43}
!24 = !{ptr @gf2k_seq_reset, !25, !"gf2k_seq_reset", i1 false, i1 false}
!25 = !{!"../drivers/input/joystick/gf2k.c", i32 61, i32 14}
!26 = !{ptr @gf2k_seq_digital, !27, !"gf2k_seq_digital", i1 false, i1 false}
!27 = !{!"../drivers/input/joystick/gf2k.c", i32 62, i32 14}
!28 = !{ptr @gf2k_axes, !29, !"gf2k_axes", i1 false, i1 false}
!29 = !{!"../drivers/input/joystick/gf2k.c", i32 51, i32 22}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/joystick/gf2k.c", i32 48, i32 30}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/joystick/gf2k.c", i32 48, i32 34}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/joystick/gf2k.c", i32 48, i32 50}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/joystick/gf2k.c", i32 48, i32 66}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/joystick/gf2k.c", i32 48, i32 81}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/joystick/gf2k.c", i32 49, i32 5}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/joystick/gf2k.c", i32 49, i32 22}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/joystick/gf2k.c", i32 49, i32 48}
!46 = !{ptr @gf2k_names, !47, !"gf2k_names", i1 false, i1 false}
!47 = !{!"../drivers/input/joystick/gf2k.c", i32 48, i32 14}
!48 = !{ptr @gf2k_length, !49, !"gf2k_length", i1 false, i1 false}
!49 = !{!"../drivers/input/joystick/gf2k.c", i32 45, i32 13}
!50 = !{ptr @gf2k_lens, !51, !"gf2k_lens", i1 false, i1 false}
!51 = !{!"../drivers/input/joystick/gf2k.c", i32 54, i32 22}
!52 = !{ptr @gf2k_abs, !53, !"gf2k_abs", i1 false, i1 false}
!53 = !{!"../drivers/input/joystick/gf2k.c", i32 56, i32 22}
!54 = !{ptr @gf2k_hats, !55, !"gf2k_hats", i1 false, i1 false}
!55 = !{!"../drivers/input/joystick/gf2k.c", i32 50, i32 22}
!56 = !{ptr @gf2k_joys, !57, !"gf2k_joys", i1 false, i1 false}
!57 = !{!"../drivers/input/joystick/gf2k.c", i32 52, i32 22}
!58 = !{ptr @gf2k_btn_joy, !59, !"gf2k_btn_joy", i1 false, i1 false}
!59 = !{!"../drivers/input/joystick/gf2k.c", i32 57, i32 14}
!60 = !{ptr @gf2k_pads, !61, !"gf2k_pads", i1 false, i1 false}
!61 = !{!"../drivers/input/joystick/gf2k.c", i32 53, i32 22}
!62 = !{ptr @gf2k_btn_pad, !63, !"gf2k_btn_pad", i1 false, i1 false}
!63 = !{!"../drivers/input/joystick/gf2k.c", i32 58, i32 14}
!64 = !{ptr @gf2k_hat_to_axis, !65, !"gf2k_hat_to_axis", i1 false, i1 false}
!65 = !{!"../drivers/input/joystick/gf2k.c", i32 46, i32 13}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = distinct !{!75, !76}
!76 = !{!"llvm.loop.peeled.count", i32 2}
!77 = !{i64 588323, i64 588384}
!78 = !{i64 2153577146}
!79 = !{i64 6017400}
!80 = !{i64 6017795}
!81 = !{i64 2153577721}
!82 = !{i64 591055}
!83 = !{!"branch_weights", i32 1, i32 2000}
!84 = !{i64 591340}
