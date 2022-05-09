; ModuleID = '/llk/IR_all_yes/drivers/input/joystick/grip.c_pt.bc'
source_filename = "../drivers/input/joystick/grip.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gameport_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.grip = type { ptr, [2 x ptr], [2 x i8], i32, i32, [2 x [32 x i8]] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__UNIQUE_ID_author223 = internal constant [44 x i8] c"grip.author=Vojtech Pavlik <vojtech@ucw.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description224 = internal constant [54 x i8] c"grip.description=Gravis GrIP protocol joystick driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file225 = internal constant [38 x i8] c"grip.file=drivers/input/joystick/grip\00", section ".modinfo", align 1
@__UNIQUE_ID_license226 = internal constant [17 x i8] c"grip.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_grip__227_410_grip_drv_init6 = internal global ptr @grip_drv_init, section ".initcall6.init", align 4
@grip_drv = internal global { %struct.gameport_driver, [32 x i8] } { %struct.gameport_driver { ptr @.str.1, ptr @grip_connect, ptr null, ptr @grip_disconnect, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_grip_drv_exit = internal global ptr @grip_drv_exit, section ".exitcall.exit", align 4
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"grip\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Gravis GrIP protocol joystick driver\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s/input%d\00", [21 x i8] zeroinitializer }, align 32
@grip_name = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr null, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], [44 x i8] zeroinitializer }, align 32
@grip_abs = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr null, ptr @grip_abs_gpp, ptr @grip_abs_bd, ptr @grip_abs_xt, ptr @grip_abs_dc], [44 x i8] zeroinitializer }, align 32
@grip_cen = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00\00\02\02\04", [27 x i8] zeroinitializer }, align 32
@grip_anx = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\00\00\03\05\05", [27 x i8] zeroinitializer }, align 32
@grip_btn = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr null, ptr @grip_btn_gpp, ptr @grip_btn_bd, ptr @grip_btn_xt, ptr @grip_btn_dc], [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@grip_btn_gpp = internal global { [13 x i32], [44 x i8] } { [13 x i32] [i32 315, i32 314, i32 313, i32 308, i32 0, i32 312, i32 304, i32 305, i32 307, i32 0, i32 310, i32 311, i32 -1], [44 x i8] zeroinitializer }, align 32
@grip_btn_bd = internal global { [6 x i32], [40 x i8] } { [6 x i32] [i32 289, i32 290, i32 288, i32 291, i32 294, i32 -1], [40 x i8] zeroinitializer }, align 32
@grip_btn_xt = internal global { [12 x i32], [48 x i8] } { [12 x i32] [i32 288, i32 289, i32 304, i32 305, i32 306, i32 307, i32 308, i32 309, i32 314, i32 315, i32 316, i32 -1], [48 x i8] zeroinitializer }, align 32
@grip_btn_dc = internal global { [10 x i32], [56 x i8] } { [10 x i32] [i32 288, i32 289, i32 291, i32 292, i32 294, i32 295, i32 296, i32 297, i32 298, i32 -1], [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Gravis GamePad Pro\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Gravis Blackhawk Digital\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Gravis Xterminator Digital\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Gravis Xterminator DualControl\00", [33 x i8] zeroinitializer }, align 32
@grip_abs_gpp = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 1, i32 -1], [20 x i8] zeroinitializer }, align 32
@grip_abs_bd = internal global { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 1, i32 6, i32 16, i32 17, i32 -1], [40 x i8] zeroinitializer }, align 32
@grip_abs_xt = internal global { [10 x i32], [56 x i8] } { [10 x i32] [i32 0, i32 1, i32 10, i32 9, i32 6, i32 16, i32 17, i32 18, i32 19, i32 -1], [56 x i8] zeroinitializer }, align 32
@grip_abs_dc = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 1, i32 3, i32 4, i32 6, i32 16, i32 17, i32 -1], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.7 = private unnamed_addr constant [9 x i8] c"grip_drv\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 400, i32 31 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 410, i32 1 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 405, i32 17 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 339, i32 5 }
@___asan_gen_.19 = private unnamed_addr constant [10 x i8] c"grip_name\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 57, i32 14 }
@___asan_gen_.22 = private unnamed_addr constant [9 x i8] c"grip_abs\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 59, i32 13 }
@___asan_gen_.25 = private unnamed_addr constant [9 x i8] c"grip_cen\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 62, i32 13 }
@___asan_gen_.28 = private unnamed_addr constant [9 x i8] c"grip_anx\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 61, i32 13 }
@___asan_gen_.31 = private unnamed_addr constant [9 x i8] c"grip_btn\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 60, i32 13 }
@___asan_gen_.34 = private unnamed_addr constant [13 x i8] c"grip_btn_gpp\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 47, i32 12 }
@___asan_gen_.37 = private unnamed_addr constant [12 x i8] c"grip_btn_bd\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 48, i32 12 }
@___asan_gen_.40 = private unnamed_addr constant [12 x i8] c"grip_btn_xt\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 49, i32 12 }
@___asan_gen_.43 = private unnamed_addr constant [12 x i8] c"grip_btn_dc\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 50, i32 12 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 57, i32 36 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 57, i32 58 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 58, i32 5 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 58, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant [13 x i8] c"grip_abs_gpp\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 52, i32 12 }
@___asan_gen_.61 = private unnamed_addr constant [12 x i8] c"grip_abs_bd\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 53, i32 12 }
@___asan_gen_.64 = private unnamed_addr constant [12 x i8] c"grip_abs_xt\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 54, i32 12 }
@___asan_gen_.67 = private unnamed_addr constant [12 x i8] c"grip_abs_dc\00", align 1
@___asan_gen_.68 = private constant [33 x i8] c"../drivers/input/joystick/grip.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 55, i32 12 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_author223, ptr @__UNIQUE_ID_description224, ptr @__UNIQUE_ID_file225, ptr @__UNIQUE_ID_license226, ptr @__exitcall_grip_drv_exit, ptr @__initcall__kmod_grip__227_410_grip_drv_init6, ptr @grip_drv_exit, ptr @grip_drv, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @grip_name, ptr @grip_abs, ptr @grip_cen, ptr @grip_anx, ptr @grip_btn, ptr @grip_btn_gpp, ptr @grip_btn_bd, ptr @grip_btn_xt, ptr @grip_btn_dc, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @grip_abs_gpp, ptr @grip_abs_bd, ptr @grip_abs_xt, ptr @grip_abs_dc], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grip_drv to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grip_name to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grip_abs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grip_cen to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grip_anx to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grip_btn to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grip_btn_gpp to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grip_btn_bd to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grip_btn_xt to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grip_btn_dc to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grip_abs_gpp to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grip_abs_bd to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grip_abs_xt to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grip_abs_dc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @grip_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__gameport_register_driver(ptr noundef nonnull @grip_drv, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @grip_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gameport_unregister_driver(ptr noundef nonnull @grip_drv) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__gameport_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @grip_connect(ptr noundef %gameport, ptr noundef %drv) #2 align 64 {
entry:
  %data = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data) #6
  %0 = getelementptr inbounds [4 x i32], ptr %data, i32 0, i32 2
  %1 = getelementptr inbounds [4 x i32], ptr %data, i32 0, i32 3
  %2 = call ptr @memset(ptr %data, i32 255, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 88) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %gameport, ptr %call7.i.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @gameport_open(ptr noundef %gameport, ptr noundef %drv, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %for.body.preheader, label %if.end.fail1_crit_edge

if.end.fail1_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail1

for.body.preheader:                               ; preds = %if.end
  %call6 = call fastcc i32 @grip_gpp_read_packet(ptr noundef %gameport, i32 noundef 4, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.grip, ptr %call7.i.i, i32 0, i32 2, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %arrayidx, align 4
  br label %for.inc

if.end9:                                          ; preds = %for.body.preheader
  %call13 = call fastcc i32 @grip_xt_read_packet(ptr noundef %gameport, i32 noundef 4, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %if.end9.for.inc_crit_edge

if.end9.for.inc_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then15:                                        ; preds = %if.end9
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  %and = and i32 %8, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx20 = getelementptr %struct.grip, ptr %call7.i.i, i32 0, i32 2, i32 0
  %9 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %arrayidx20, align 4
  br label %for.inc

if.end21:                                         ; preds = %if.then15
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %0, align 4
  %and23 = and i32 %11, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  %arrayidx27 = getelementptr %struct.grip, ptr %call7.i.i, i32 0, i32 2, i32 0
  br i1 %tobool24.not, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 3, ptr %arrayidx27, align 4
  br label %for.inc

if.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 4, ptr %arrayidx27, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end28, %if.then25, %if.then18, %if.end9.for.inc_crit_edge, %if.then8
  %call6.1 = call fastcc i32 @grip_gpp_read_packet(ptr noundef %gameport, i32 noundef 6, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.1)
  %tobool7.not.1 = icmp eq i32 %call6.1, 0
  br i1 %tobool7.not.1, label %if.then8.1, label %if.end9.1

if.end9.1:                                        ; preds = %for.inc
  %call13.1 = call fastcc i32 @grip_xt_read_packet(ptr noundef %gameport, i32 noundef 6, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.1)
  %tobool14.not.1 = icmp eq i32 %call13.1, 0
  br i1 %tobool14.not.1, label %if.then15.1, label %if.end9.1.for.inc.1_crit_edge

if.end9.1.for.inc.1_crit_edge:                    ; preds = %if.end9.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then15.1:                                      ; preds = %if.end9.1
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 4
  %and.1 = and i32 %15, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool17.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool17.not.1, label %if.then18.1, label %if.end21.1

if.end21.1:                                       ; preds = %if.then15.1
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %0, align 4
  %and23.1 = and i32 %17, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.1)
  %tobool24.not.1 = icmp eq i32 %and23.1, 0
  %arrayidx27.1 = getelementptr %struct.grip, ptr %call7.i.i, i32 0, i32 2, i32 1
  br i1 %tobool24.not.1, label %if.then25.1, label %if.end28.1

if.end28.1:                                       ; preds = %if.end21.1
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %arrayidx27.1 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 4, ptr %arrayidx27.1, align 1
  br label %for.inc.1

if.then25.1:                                      ; preds = %if.end21.1
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %arrayidx27.1 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 3, ptr %arrayidx27.1, align 1
  br label %for.inc.1

if.then18.1:                                      ; preds = %if.then15.1
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx20.1 = getelementptr %struct.grip, ptr %call7.i.i, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %arrayidx20.1 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %arrayidx20.1, align 1
  br label %for.inc.1

if.then8.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.1 = getelementptr %struct.grip, ptr %call7.i.i, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %arrayidx.1, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then8.1, %if.then18.1, %if.then25.1, %if.end28.1, %if.end9.1.for.inc.1_crit_edge
  %mode32 = getelementptr inbounds %struct.grip, ptr %call7.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %mode32 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %mode32, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool34.not = icmp eq i8 %23, 0
  br i1 %tobool34.not, label %land.lhs.true, label %for.inc.1.if.end39_crit_edge

for.inc.1.if.end39_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

land.lhs.true:                                    ; preds = %for.inc.1
  %arrayidx36 = getelementptr %struct.grip, ptr %call7.i.i, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx36, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool37.not = icmp eq i8 %25, 0
  br i1 %tobool37.not, label %land.lhs.true.fail2_crit_edge, label %land.lhs.true.if.end39_crit_edge

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

land.lhs.true.fail2_crit_edge:                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail2

if.end39:                                         ; preds = %land.lhs.true.if.end39_crit_edge, %for.inc.1.if.end39_crit_edge
  %poll_handler.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 16
  %26 = ptrtoint ptr %poll_handler.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @grip_poll, ptr %poll_handler.i, align 4
  %poll_interval.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 13
  %27 = ptrtoint ptr %poll_interval.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 20, ptr %poll_interval.i, align 8
  %phys55 = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 2
  %dev70 = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21
  br label %for.body42

for.body42:                                       ; preds = %for.inc127.for.body42_crit_edge, %if.end39
  %i.1256 = phi i32 [ 0, %if.end39 ], [ %inc128, %for.inc127.for.body42_crit_edge ]
  %arrayidx44 = getelementptr %struct.grip, ptr %call7.i.i, i32 0, i32 2, i32 %i.1256
  %28 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx44, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool45.not = icmp eq i8 %29, 0
  br i1 %tobool45.not, label %for.body42.for.inc127_crit_edge, label %if.end47

for.body42.for.inc127_crit_edge:                  ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc127

if.end47:                                         ; preds = %for.body42
  %call48 = tail call ptr @input_allocate_device() #6
  %arrayidx49 = getelementptr %struct.grip, ptr %call7.i.i, i32 0, i32 1, i32 %i.1256
  %30 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call48, ptr %arrayidx49, align 4
  %tobool50.not = icmp eq ptr %call48, null
  br i1 %tobool50.not, label %if.end47.fail3_crit_edge, label %if.end52

if.end47.fail3_crit_edge:                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail3

if.end52:                                         ; preds = %if.end47
  %arrayidx53 = getelementptr %struct.grip, ptr %call7.i.i, i32 0, i32 5, i32 %i.1256
  %call57 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx53, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef %phys55, i32 noundef %i.1256)
  %31 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx44, align 1
  %idxprom = zext i8 %32 to i32
  %arrayidx60 = getelementptr [5 x ptr], ptr @grip_name, i32 0, i32 %idxprom
  %33 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx60, align 4
  %35 = ptrtoint ptr %call48 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %call48, align 8
  %phys64 = getelementptr inbounds %struct.input_dev, ptr %call48, i32 0, i32 1
  %36 = ptrtoint ptr %phys64 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %arrayidx53, ptr %phys64, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %call48, i32 0, i32 3
  %37 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 20, ptr %id, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %call48, i32 0, i32 3, i32 1
  %38 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 9, ptr %vendor, align 2
  %39 = load i8, ptr %arrayidx44, align 1
  %conv = zext i8 %39 to i16
  %product = getelementptr inbounds %struct.input_dev, ptr %call48, i32 0, i32 3, i32 2
  %40 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv, ptr %product, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %call48, i32 0, i32 3, i32 3
  %41 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 256, ptr %version, align 2
  %parent = getelementptr inbounds %struct.input_dev, ptr %call48, i32 0, i32 40, i32 1
  %42 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %dev70, ptr %parent, align 8
  %driver_data.i.i233 = getelementptr inbounds %struct.input_dev, ptr %call48, i32 0, i32 40, i32 8
  %43 = ptrtoint ptr %driver_data.i.i233 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call7.i.i, ptr %driver_data.i.i233, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call48, i32 0, i32 31
  %44 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @grip_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call48, i32 0, i32 32
  %45 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @grip_close, ptr %close, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call48, i32 0, i32 5
  %46 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 10, ptr %evbit, align 8
  %47 = load i8, ptr %arrayidx44, align 1
  %idxprom76243 = zext i8 %47 to i32
  %arrayidx77244 = getelementptr [5 x ptr], ptr @grip_abs, i32 0, i32 %idxprom76243
  %48 = ptrtoint ptr %arrayidx77244 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx77244, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %51)
  %cmp79246 = icmp sgt i32 %51, -1
  br i1 %cmp79246, label %if.end52.for.body81_crit_edge, label %if.end52.for.cond104.preheader_crit_edge

if.end52.for.cond104.preheader_crit_edge:         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond104.preheader

if.end52.for.body81_crit_edge:                    ; preds = %if.end52
  br label %for.body81

for.cond104.preheader:                            ; preds = %for.inc101.for.cond104.preheader_crit_edge, %if.end52.for.cond104.preheader_crit_edge
  %52 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx44, align 1
  %idxprom107250 = zext i8 %53 to i32
  %arrayidx108251 = getelementptr [5 x ptr], ptr @grip_btn, i32 0, i32 %idxprom107250
  %54 = ptrtoint ptr %arrayidx108251 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx108251, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %57)
  %cmp110253 = icmp sgt i32 %57, -1
  br i1 %cmp110253, label %for.body112.lr.ph, label %for.cond104.preheader.for.end120_crit_edge

for.cond104.preheader.for.end120_crit_edge:       ; preds = %for.cond104.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end120

for.body112.lr.ph:                                ; preds = %for.cond104.preheader
  %keybit = getelementptr inbounds %struct.input_dev, ptr %call48, i32 0, i32 6
  br label %for.body112

for.body81:                                       ; preds = %for.inc101.for.body81_crit_edge, %if.end52.for.body81_crit_edge
  %58 = phi i32 [ %68, %for.inc101.for.body81_crit_edge ], [ %51, %if.end52.for.body81_crit_edge ]
  %idxprom76249 = phi i32 [ %idxprom76, %for.inc101.for.body81_crit_edge ], [ %idxprom76243, %if.end52.for.body81_crit_edge ]
  %j.0247 = phi i32 [ %inc102, %for.inc101.for.body81_crit_edge ], [ 0, %if.end52.for.body81_crit_edge ]
  %arrayidx85 = getelementptr [5 x i8], ptr @grip_cen, i32 0, i32 %idxprom76249
  %59 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx85, align 1
  %conv86 = zext i8 %60 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0247, i32 %conv86)
  %cmp87 = icmp slt i32 %j.0247, %conv86
  br i1 %cmp87, label %if.then89, label %if.else

if.then89:                                        ; preds = %for.body81
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @input_set_abs_params(ptr noundef nonnull %call48, i32 noundef %58, i32 noundef 14, i32 noundef 52, i32 noundef 1, i32 noundef 2) #6
  br label %for.inc101

if.else:                                          ; preds = %for.body81
  %arrayidx93 = getelementptr [5 x i8], ptr @grip_anx, i32 0, i32 %idxprom76249
  %61 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx93, align 1
  %conv94 = zext i8 %62 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0247, i32 %conv94)
  %cmp95 = icmp slt i32 %j.0247, %conv94
  br i1 %cmp95, label %if.then97, label %if.else98

if.then97:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @input_set_abs_params(ptr noundef nonnull %call48, i32 noundef %58, i32 noundef 3, i32 noundef 57, i32 noundef 1, i32 noundef 0) #6
  br label %for.inc101

if.else98:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @input_set_abs_params(ptr noundef nonnull %call48, i32 noundef %58, i32 noundef -1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  br label %for.inc101

for.inc101:                                       ; preds = %if.else98, %if.then97, %if.then89
  %inc102 = add i32 %j.0247, 1
  %63 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx44, align 1
  %idxprom76 = zext i8 %64 to i32
  %arrayidx77 = getelementptr [5 x ptr], ptr @grip_abs, i32 0, i32 %idxprom76
  %65 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx77, align 4
  %arrayidx78 = getelementptr i32, ptr %66, i32 %inc102
  %67 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx78, align 4
  %cmp79 = icmp sgt i32 %68, -1
  br i1 %cmp79, label %for.inc101.for.body81_crit_edge, label %for.inc101.for.cond104.preheader_crit_edge

for.inc101.for.cond104.preheader_crit_edge:       ; preds = %for.inc101
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond104.preheader

for.inc101.for.body81_crit_edge:                  ; preds = %for.inc101
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body81

for.body112:                                      ; preds = %for.inc118.for.body112_crit_edge, %for.body112.lr.ph
  %69 = phi i32 [ %57, %for.body112.lr.ph ], [ %75, %for.inc118.for.body112_crit_edge ]
  %j.1254 = phi i32 [ 0, %for.body112.lr.ph ], [ %inc119, %for.inc118.for.body112_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp113.not = icmp eq i32 %69, 0
  br i1 %cmp113.not, label %for.body112.for.inc118_crit_edge, label %if.then115

for.body112.for.inc118_crit_edge:                 ; preds = %for.body112
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc118

if.then115:                                       ; preds = %for.body112
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef %69, ptr noundef %keybit) #6
  br label %for.inc118

for.inc118:                                       ; preds = %if.then115, %for.body112.for.inc118_crit_edge
  %inc119 = add i32 %j.1254, 1
  %70 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx44, align 1
  %idxprom107 = zext i8 %71 to i32
  %arrayidx108 = getelementptr [5 x ptr], ptr @grip_btn, i32 0, i32 %idxprom107
  %72 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx108, align 4
  %arrayidx109 = getelementptr i32, ptr %73, i32 %inc119
  %74 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx109, align 4
  %cmp110 = icmp sgt i32 %75, -1
  br i1 %cmp110, label %for.inc118.for.body112_crit_edge, label %for.inc118.for.end120_crit_edge

for.inc118.for.end120_crit_edge:                  ; preds = %for.inc118
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end120

for.inc118.for.body112_crit_edge:                 ; preds = %for.inc118
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body112

for.end120:                                       ; preds = %for.inc118.for.end120_crit_edge, %for.cond104.preheader.for.end120_crit_edge
  %76 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx49, align 4
  %call123 = tail call i32 @input_register_device(ptr noundef %77) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %for.end120.for.inc127_crit_edge, label %fail4

for.end120.for.inc127_crit_edge:                  ; preds = %for.end120
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc127

for.inc127:                                       ; preds = %for.end120.for.inc127_crit_edge, %for.body42.for.inc127_crit_edge
  %inc128 = add nuw nsw i32 %i.1256, 1
  %exitcond.not = icmp eq i32 %inc128, 2
  br i1 %exitcond.not, label %for.inc127.cleanup_crit_edge, label %for.inc127.for.body42_crit_edge

for.inc127.for.body42_crit_edge:                  ; preds = %for.inc127
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body42

for.inc127.cleanup_crit_edge:                     ; preds = %for.inc127
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

fail4:                                            ; preds = %for.end120
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx49, align 4
  tail call void @input_free_device(ptr noundef %79) #6
  br label %fail3

fail3:                                            ; preds = %fail4, %if.end47.fail3_crit_edge
  %err.0 = phi i32 [ %call123, %fail4 ], [ -12, %if.end47.fail3_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1256)
  %cmp132259.not = icmp eq i32 %i.1256, 0
  br i1 %cmp132259.not, label %fail3.fail2_crit_edge, label %while.body

fail3.fail2_crit_edge:                            ; preds = %fail3
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail2

while.body:                                       ; preds = %fail3
  %dev240 = getelementptr inbounds %struct.grip, ptr %call7.i.i, i32 0, i32 1
  %80 = ptrtoint ptr %dev240 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev240, align 4
  %tobool136.not = icmp eq ptr %81, null
  br i1 %tobool136.not, label %while.body.fail2_crit_edge, label %if.then137

while.body.fail2_crit_edge:                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail2

if.then137:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @input_unregister_device(ptr noundef nonnull %81) #6
  br label %fail2

fail2:                                            ; preds = %if.then137, %while.body.fail2_crit_edge, %fail3.fail2_crit_edge, %land.lhs.true.fail2_crit_edge
  %err.1 = phi i32 [ -19, %land.lhs.true.fail2_crit_edge ], [ %err.0, %if.then137 ], [ %err.0, %while.body.fail2_crit_edge ], [ %err.0, %fail3.fail2_crit_edge ]
  tail call void @gameport_close(ptr noundef %gameport) #6
  br label %fail1

fail1:                                            ; preds = %fail2, %if.end.fail1_crit_edge
  %err.2 = phi i32 [ %call2, %if.end.fail1_crit_edge ], [ %err.1, %fail2 ]
  %82 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %fail1, %for.inc127.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %fail1 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %for.inc127.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @grip_disconnect(ptr noundef %gameport) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx = getelementptr %struct.grip, ptr %1, i32 0, i32 1, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @input_unregister_device(ptr noundef nonnull %3) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.grip, ptr %1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %5, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @input_unregister_device(ptr noundef nonnull %5) #6
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  tail call void @gameport_close(ptr noundef %gameport) #6
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gameport_open(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @grip_gpp_read_packet(ptr noundef %gameport, i32 noundef %shift, ptr nocapture noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %speed.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 4
  %0 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed.i, align 8
  %mul.i = mul i32 %1, 200
  %div.i = sdiv i32 %mul.i, 1000
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %data, align 4
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !60
  %and.i = and i32 %3, 128
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
  %read.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 7
  %4 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call zeroext i8 %5(ptr noundef %gameport) #6
  br label %gameport_read.exit

if.else.i:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #8
  %io.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 3
  %6 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %io.i, align 4
  %and.i112 = and i32 %7, 1048575
  %add.i = or i32 %and.i112, -18874368
  %8 = inttoptr i32 %add.i to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #6, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  br label %gameport_read.exit

gameport_read.exit:                               ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i8 [ %call.i, %if.then.i ], [ %9, %if.else.i ]
  %conv13 = zext i8 %retval.0.i to i32
  %shr = lshr i32 %conv13, %shift
  %conv14 = trunc i32 %shr to i8
  %io.i117 = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 3
  br label %do.body15

do.body15:                                        ; preds = %do.cond30.do.body15_crit_edge, %gameport_read.exit
  %i.0 = phi i32 [ 0, %gameport_read.exit ], [ %i.1, %do.cond30.do.body15_crit_edge ]
  %t.0 = phi i32 [ %div.i, %gameport_read.exit ], [ %t.1, %do.cond30.do.body15_crit_edge ]
  %v.0 = phi i8 [ %conv14, %gameport_read.exit ], [ %conv19, %do.cond30.do.body15_crit_edge ]
  %dec = add i32 %t.0, -1
  %10 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read.i, align 4
  %tobool.not.i114 = icmp eq ptr %11, null
  br i1 %tobool.not.i114, label %if.else.i120, label %if.then.i116

if.then.i116:                                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #8
  %call.i115 = tail call zeroext i8 %11(ptr noundef %gameport) #6
  br label %gameport_read.exit122

if.else.i120:                                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %io.i117 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %io.i117, align 4
  %and.i118 = and i32 %13, 1048575
  %add.i119 = or i32 %and.i118, -18874368
  %14 = inttoptr i32 %add.i119 to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #6, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  br label %gameport_read.exit122

gameport_read.exit122:                            ; preds = %if.else.i120, %if.then.i116
  %retval.0.i121 = phi i8 [ %call.i115, %if.then.i116 ], [ %15, %if.else.i120 ]
  %conv17 = zext i8 %retval.0.i121 to i32
  %shr18 = lshr i32 %conv17, %shift
  %16 = trunc i32 %shr18 to i8
  %conv19 = and i8 %16, 3
  %conv20 = zext i8 %conv19 to i32
  %neg = xor i32 %conv20, -1
  %17 = and i8 %v.0, 1
  %and22 = zext i8 %17 to i32
  %and23 = and i32 %and22, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %gameport_read.exit122.do.cond30_crit_edge, label %if.then25

gameport_read.exit122.do.cond30_crit_edge:        ; preds = %gameport_read.exit122
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond30

if.then25:                                        ; preds = %gameport_read.exit122
  call void @__sanitizer_cov_trace_pc() #8
  %18 = lshr i32 %conv20, 1
  %inc = add i32 %i.0, 1
  %shl = shl nuw i32 %18, %i.0
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data, align 4
  %or = or i32 %20, %shl
  store i32 %or, ptr %data, align 4
  br label %do.cond30

do.cond30:                                        ; preds = %if.then25, %gameport_read.exit122.do.cond30_crit_edge
  %i.1 = phi i32 [ %inc, %if.then25 ], [ %i.0, %gameport_read.exit122.do.cond30_crit_edge ]
  %t.1 = phi i32 [ %div.i, %if.then25 ], [ %dec, %gameport_read.exit122.do.cond30_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %i.1)
  %cmp31 = icmp slt i32 %i.1, 24
  %cmp31.not = xor i1 %cmp31, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.1)
  %cmp33.not = icmp eq i32 %t.1, 0
  %or.cond = select i1 %cmp31.not, i1 true, i1 %cmp33.not
  br i1 %or.cond, label %do.body36, label %do.cond30.do.body15_crit_edge

do.cond30.do.body15_crit_edge:                    ; preds = %do.cond30
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body15

do.body36:                                        ; preds = %do.cond30
  br i1 %tobool.not, label %if.then45, label %do.body36.do.body47_crit_edge

do.body36.do.body47_crit_edge:                    ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body47

if.then45:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_on() #6
  br label %do.body47

do.body47:                                        ; preds = %if.then45, %do.body36.do.body47_crit_edge
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !63
  %and.i.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool55.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool55.not, label %if.then59, label %do.body47.do.end62_crit_edge, !prof !64

do.body47.do.end62_crit_edge:                     ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end62

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #6
  br label %do.end62

do.end62:                                         ; preds = %if.then59, %do.body47.do.end62_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %3) #6, !srcloc !65
  br i1 %cmp31, label %do.end62.cleanup_crit_edge, label %for.cond.preheader

do.end62.cleanup_crit_edge:                       ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %do.end62
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %data.promoted = load i32, ptr %data, align 4
  br label %land.rhs73

land.rhs73:                                       ; preds = %for.body.land.rhs73_crit_edge, %for.cond.preheader
  %or83125 = phi i32 [ %data.promoted, %for.cond.preheader ], [ %or83, %for.body.land.rhs73_crit_edge ]
  %i.2124 = phi i32 [ 0, %for.cond.preheader ], [ %inc85, %for.body.land.rhs73_crit_edge ]
  %and75 = and i32 %or83125, 16663056
  call void @__sanitizer_cov_trace_const_cmp4(i32 8126464, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 8126464
  br i1 %tobool76.not, label %land.rhs73.for.end_crit_edge, label %for.body

land.rhs73.for.end_crit_edge:                     ; preds = %land.rhs73
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %land.rhs73
  %shr79 = lshr i32 %or83125, 1
  %and81 = shl i32 %or83125, 23
  %shl82 = and i32 %and81, 8388608
  %or83 = or i32 %shl82, %shr79
  %23 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or83, ptr %data, align 4
  %inc85 = add nuw nsw i32 %i.2124, 1
  %exitcond.not = icmp eq i32 %inc85, 24
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.land.rhs73_crit_edge

for.body.land.rhs73_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs73

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %land.rhs73.for.end_crit_edge
  %i.2.lcssa = phi i32 [ 24, %for.body.for.end_crit_edge ], [ %i.2124, %land.rhs73.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %i.2.lcssa)
  %cmp86 = icmp eq i32 %i.2.lcssa, 24
  %conv87.neg = sext i1 %cmp86 to i32
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end62.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv87.neg, %for.end ], [ -1, %do.end62.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @grip_xt_read_packet(ptr noundef %gameport, i32 noundef %shift, ptr nocapture noundef writeonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %speed.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 4
  %0 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed.i, align 8
  %mul.i = shl i32 %1, 6
  %div.i = sdiv i32 %mul.i, 1000
  %2 = call ptr @memset(ptr %data, i32 0, i32 16)
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !60
  %and.i = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end14_crit_edge

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_off() #6
  br label %do.end14

do.end14:                                         ; preds = %if.then, %entry.do.end14_crit_edge
  %read.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 7
  %4 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call zeroext i8 %5(ptr noundef %gameport) #6
  br label %gameport_read.exit

if.else.i:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #8
  %io.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 3
  %6 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %io.i, align 4
  %and.i171 = and i32 %7, 1048575
  %add.i = or i32 %and.i171, -18874368
  %8 = inttoptr i32 %add.i to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #6, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  br label %gameport_read.exit

gameport_read.exit:                               ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i8 [ %call.i, %if.then.i ], [ %9, %if.else.i ]
  %conv16 = zext i8 %retval.0.i to i32
  %shr = lshr i32 %conv16, %shift
  %10 = trunc i32 %shr to i8
  %conv17 = and i8 %10, 3
  %io.i176 = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 3
  br label %do.body18

do.body18:                                        ; preds = %do.cond81.do.body18_crit_edge, %gameport_read.exit
  %w.0 = phi i8 [ %conv17, %gameport_read.exit ], [ %w.1, %do.cond81.do.body18_crit_edge ]
  %t.0 = phi i32 [ %div.i, %gameport_read.exit ], [ %t.2, %do.cond81.do.body18_crit_edge ]
  %status.0 = phi i8 [ 0, %gameport_read.exit ], [ %status.4, %do.cond81.do.body18_crit_edge ]
  %v.0 = phi i8 [ %conv17, %gameport_read.exit ], [ %v.1, %do.cond81.do.body18_crit_edge ]
  %buf.0 = phi i32 [ 0, %gameport_read.exit ], [ %buf.2, %do.cond81.do.body18_crit_edge ]
  %j.0 = phi i32 [ 0, %gameport_read.exit ], [ %j.3, %do.cond81.do.body18_crit_edge ]
  %i.0 = phi i32 [ 0, %gameport_read.exit ], [ %i.2, %do.cond81.do.body18_crit_edge ]
  %dec = add i32 %t.0, -1
  %11 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read.i, align 4
  %tobool.not.i173 = icmp eq ptr %12, null
  br i1 %tobool.not.i173, label %if.else.i179, label %if.then.i175

if.then.i175:                                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #8
  %call.i174 = tail call zeroext i8 %12(ptr noundef %gameport) #6
  br label %gameport_read.exit181

if.else.i179:                                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %io.i176 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %io.i176, align 4
  %and.i177 = and i32 %14, 1048575
  %add.i178 = or i32 %and.i177, -18874368
  %15 = inttoptr i32 %add.i178 to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #6, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  br label %gameport_read.exit181

gameport_read.exit181:                            ; preds = %if.else.i179, %if.then.i175
  %retval.0.i180 = phi i8 [ %call.i174, %if.then.i175 ], [ %16, %if.else.i179 ]
  %conv20 = zext i8 %retval.0.i180 to i32
  %shr21 = lshr i32 %conv20, %shift
  %17 = trunc i32 %shr21 to i8
  %conv23 = and i8 %17, 3
  %xor164 = xor i8 %conv23, %v.0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %xor164)
  %tobool26.not = icmp eq i8 %xor164, 0
  br i1 %tobool26.not, label %gameport_read.exit181.do.cond81_crit_edge, label %if.then27

gameport_read.exit181.do.cond81_crit_edge:        ; preds = %gameport_read.exit181
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond81

if.then27:                                        ; preds = %gameport_read.exit181
  %18 = and i8 %xor164, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool32.not = icmp eq i8 %18, 0
  br i1 %tobool32.not, label %if.else, label %if.then33

if.then33:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  %shl = shl i32 %buf.0, 1
  %19 = lshr i8 %conv23, 1
  %20 = zext i8 %19 to i32
  %or = or i32 %shl, %20
  %inc = add nuw nsw i32 %i.0, 1
  br label %do.cond81

if.else:                                          ; preds = %if.then27
  %xor41165 = xor i8 %v.0, %w.0
  %and42166 = and i8 %xor164, %xor41165
  %21 = lshr i8 %and42166, 1
  %or46167 = or i8 %v.0, %w.0
  %or48168 = or i8 %or46167, %17
  %22 = and i8 %or48168, 1
  %23 = xor i8 %22, 1
  %and50183 = and i8 %23, %21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and50183)
  %tobool51.not = icmp eq i8 %and50183, 0
  br i1 %tobool51.not, label %if.else.do.cond81_crit_edge, label %if.then52

if.else.do.cond81_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond81

if.then52:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %i.0)
  %cmp53 = icmp eq i32 %i.0, 20
  br i1 %cmp53, label %if.then55, label %if.then52.do.cond81_crit_edge

if.then52.do.cond81_crit_edge:                    ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond81

if.then55:                                        ; preds = %if.then52
  %shr56 = lshr i32 %buf.0, 7
  %xor57 = xor i32 %shr56, %buf.0
  %shr58 = lshr i32 %buf.0, 14
  %xor59 = xor i32 %xor57, %shr58
  %shr60 = lshr i32 %xor59, 2
  %and61 = and i32 %shr60, 28
  %shr62 = lshr i32 634101360, %and61
  %xor63 = xor i32 %shr62, %xor59
  %and64 = and i32 %xor63, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.then66, label %if.then55.if.end75_crit_edge

if.then55.if.end75_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75

if.then66:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #8
  %shr67 = lshr i32 %buf.0, 4
  %shr68 = lshr i32 %buf.0, 18
  %arrayidx69 = getelementptr i32, ptr %data, i32 %shr68
  %24 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %shr67, ptr %arrayidx69, align 4
  %shl71 = shl nuw i32 1, %shr68
  %25 = trunc i32 %shl71 to i8
  %conv74 = or i8 %status.0, %25
  br label %if.end75

if.end75:                                         ; preds = %if.then66, %if.then55.if.end75_crit_edge
  %status.1 = phi i8 [ %status.0, %if.then55.if.end75_crit_edge ], [ %conv74, %if.then66 ]
  %inc76 = add nuw nsw i32 %j.0, 1
  br label %do.cond81

do.cond81:                                        ; preds = %if.end75, %if.then52.do.cond81_crit_edge, %if.else.do.cond81_crit_edge, %if.then33, %gameport_read.exit181.do.cond81_crit_edge
  %w.1 = phi i8 [ %w.0, %gameport_read.exit181.do.cond81_crit_edge ], [ %v.0, %if.then52.do.cond81_crit_edge ], [ %v.0, %if.end75 ], [ %v.0, %if.else.do.cond81_crit_edge ], [ %v.0, %if.then33 ]
  %t.2 = phi i32 [ %dec, %gameport_read.exit181.do.cond81_crit_edge ], [ %div.i, %if.then52.do.cond81_crit_edge ], [ %div.i, %if.end75 ], [ %dec, %if.else.do.cond81_crit_edge ], [ %div.i, %if.then33 ]
  %status.4 = phi i8 [ %status.0, %gameport_read.exit181.do.cond81_crit_edge ], [ %status.0, %if.then52.do.cond81_crit_edge ], [ %status.1, %if.end75 ], [ %status.0, %if.else.do.cond81_crit_edge ], [ %status.0, %if.then33 ]
  %v.1 = phi i8 [ %v.0, %gameport_read.exit181.do.cond81_crit_edge ], [ %conv23, %if.then52.do.cond81_crit_edge ], [ %conv23, %if.end75 ], [ %conv23, %if.else.do.cond81_crit_edge ], [ %conv23, %if.then33 ]
  %buf.2 = phi i32 [ %buf.0, %gameport_read.exit181.do.cond81_crit_edge ], [ 0, %if.then52.do.cond81_crit_edge ], [ 0, %if.end75 ], [ %buf.0, %if.else.do.cond81_crit_edge ], [ %or, %if.then33 ]
  %j.3 = phi i32 [ %j.0, %gameport_read.exit181.do.cond81_crit_edge ], [ %j.0, %if.then52.do.cond81_crit_edge ], [ %inc76, %if.end75 ], [ %j.0, %if.else.do.cond81_crit_edge ], [ %j.0, %if.then33 ]
  %i.2 = phi i32 [ %i.0, %gameport_read.exit181.do.cond81_crit_edge ], [ 0, %if.then52.do.cond81_crit_edge ], [ 0, %if.end75 ], [ %i.0, %if.else.do.cond81_crit_edge ], [ %inc, %if.then33 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %status.4)
  %cmp83 = icmp ne i8 %status.4, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %i.2)
  %cmp85 = icmp ugt i32 %i.2, 29
  %not.cmp83 = xor i1 %cmp83, true
  %or.cond = select i1 %not.cmp83, i1 true, i1 %cmp85
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %j.3)
  %cmp88 = icmp ugt i32 %j.3, 9
  %or.cond169 = select i1 %or.cond, i1 true, i1 %cmp88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.2)
  %cmp90.not = icmp eq i32 %t.2, 0
  %or.cond170 = select i1 %or.cond169, i1 true, i1 %cmp90.not
  br i1 %or.cond170, label %do.body93, label %do.cond81.do.body18_crit_edge

do.cond81.do.body18_crit_edge:                    ; preds = %do.cond81
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body18

do.body93:                                        ; preds = %do.cond81
  br i1 %tobool.not, label %if.then102, label %do.body93.do.body104_crit_edge

do.body93.do.body104_crit_edge:                   ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body104

if.then102:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_on() #6
  br label %do.body104

do.body104:                                       ; preds = %if.then102, %do.body93.do.body104_crit_edge
  %26 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !63
  %and.i.i = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool112.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool112.not, label %if.then116, label %do.body104.do.end119_crit_edge, !prof !64

do.body104.do.end119_crit_edge:                   ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end119

if.then116:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #6
  br label %do.end119

do.end119:                                        ; preds = %if.then116, %do.body104.do.end119_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %3) #6, !srcloc !65
  %conv126.neg = sext i1 %cmp83 to i32
  ret i32 %conv126.neg
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @grip_poll(ptr nocapture noundef readonly %gameport) #2 align 64 {
entry:
  %data = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data) #6
  %2 = getelementptr inbounds [4 x i32], ptr %data, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i32], ptr %data, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i32], ptr %data, i32 0, i32 3
  %reads = getelementptr inbounds %struct.grip, ptr %1, i32 0, i32 3
  %bads153 = getelementptr inbounds %struct.grip, ptr %1, i32 0, i32 4
  %5 = call ptr @memset(ptr %data, i32 255, i32 16)
  br label %for.body

for.body:                                         ; preds = %for.inc196.for.body_crit_edge, %entry
  %i.0275 = phi i32 [ 0, %entry ], [ %inc197, %for.inc196.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.grip, ptr %1, i32 0, i32 1, i32 %i.0275
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.for.inc196_crit_edge, label %if.end

for.body.for.inc196_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc196

if.end:                                           ; preds = %for.body
  %8 = ptrtoint ptr %reads to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reads, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %reads, align 4
  %arrayidx2 = getelementptr %struct.grip, ptr %1, i32 0, i32 2, i32 %i.0275
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx2, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i8 %11, label %if.end.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb33
    i8 3, label %sw.bb79
    i8 4, label %sw.bb145
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %shl = shl nuw i32 %i.0275, 1
  %add = add nuw nsw i32 %shl, 4
  %call4 = call fastcc i32 @grip_gpp_read_packet(ptr noundef %14, i32 noundef %add, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %bads153 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bads153, align 4
  %inc7 = add i32 %16, 1
  store i32 %inc7, ptr %bads153, align 4
  br label %sw.epilog

if.end8:                                          ; preds = %sw.bb
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data, align 4
  %shr = lshr i32 %18, 15
  %and = and i32 %shr, 1
  %19 = shl i32 %18, 15
  %20 = ashr i32 %19, 31
  %sub = add nsw i32 %20, %and
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 3, i32 noundef 0, i32 noundef %sub) #6
  %shr14 = lshr i32 %18, 13
  %and15 = and i32 %shr14, 1
  %21 = shl i32 %18, 19
  %22 = ashr i32 %21, 31
  %sub19 = add nsw i32 %22, %and15
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 3, i32 noundef 1, i32 noundef %sub19) #6
  br label %for.body23

for.body23:                                       ; preds = %for.inc.for.body23_crit_edge, %if.end8
  %j.0273 = phi i32 [ 0, %if.end8 ], [ %inc32, %for.inc.for.body23_crit_edge ]
  %arrayidx24 = getelementptr [13 x i32], ptr @grip_btn_gpp, i32 0, i32 %j.0273
  %23 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool25.not = icmp eq i32 %24, 0
  br i1 %tobool25.not, label %for.body23.for.inc_crit_edge, label %if.then26

for.body23.for.inc_crit_edge:                     ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then26:                                        ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #8
  %25 = lshr i32 %18, %j.0273
  %26 = and i32 %25, 1
  tail call void @input_event(ptr noundef %7, i32 noundef 1, i32 noundef %24, i32 noundef %26) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then26, %for.body23.for.inc_crit_edge
  %inc32 = add nuw nsw i32 %j.0273, 1
  %exitcond.not = icmp eq i32 %inc32, 12
  br i1 %exitcond.not, label %for.inc.sw.epilog_crit_edge, label %for.inc.for.body23_crit_edge

for.inc.for.body23_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body23

for.inc.sw.epilog_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %shl35 = shl nuw i32 %i.0275, 1
  %add36 = add nuw nsw i32 %shl35, 4
  %call38 = call fastcc i32 @grip_xt_read_packet(ptr noundef %28, i32 noundef %add36, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end43, label %if.then40

if.then40:                                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %bads153 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bads153, align 4
  %inc42 = add i32 %30, 1
  store i32 %inc42, ptr %bads153, align 4
  br label %sw.epilog

if.end43:                                         ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %data, align 4
  %shr45 = lshr i32 %32, 2
  %and46 = and i32 %shr45, 63
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 3, i32 noundef 0, i32 noundef %and46) #6
  %shr48 = lshr i32 %32, 8
  %and49 = and i32 %shr48, 63
  %sub50 = xor i32 %and49, 63
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 3, i32 noundef 1, i32 noundef %sub50) #6
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %3, align 4
  %shr52 = lshr i32 %34, 8
  %and53 = and i32 %shr52, 63
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 3, i32 noundef 6, i32 noundef %and53) #6
  %shr55 = lshr i32 %34, 1
  %and56 = and i32 %shr55, 1
  %and58 = and i32 %34, 1
  %sub59 = sub nsw i32 %and56, %and58
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 3, i32 noundef 16, i32 noundef %sub59) #6
  %shr61 = lshr i32 %34, 2
  %and62 = and i32 %shr61, 1
  %35 = shl i32 %34, 28
  %36 = ashr i32 %35, 31
  %sub66 = add nsw i32 %36, %and62
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 3, i32 noundef 17, i32 noundef %sub66) #6
  %37 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %4, align 4
  %39 = load i32, ptr @grip_btn_bd, align 4
  %40 = lshr i32 %38, 4
  %.lobit301 = and i32 %40, 1
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 1, i32 noundef %39, i32 noundef %.lobit301) #6
  %41 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @grip_btn_bd, i32 0, i32 1), align 4
  %42 = lshr i32 %38, 5
  %.lobit302 = and i32 %42, 1
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 1, i32 noundef %41, i32 noundef %.lobit302) #6
  %43 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @grip_btn_bd, i32 0, i32 2), align 4
  %44 = lshr i32 %38, 6
  %.lobit303 = and i32 %44, 1
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 1, i32 noundef %43, i32 noundef %.lobit303) #6
  %45 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @grip_btn_bd, i32 0, i32 3), align 4
  %46 = lshr i32 %38, 7
  %.lobit304 = and i32 %46, 1
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 1, i32 noundef %45, i32 noundef %.lobit304) #6
  %47 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @grip_btn_bd, i32 0, i32 4), align 4
  %48 = lshr i32 %38, 8
  %.lobit305 = and i32 %48, 1
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 1, i32 noundef %47, i32 noundef %.lobit305) #6
  br label %sw.epilog

sw.bb79:                                          ; preds = %if.end
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  %shl81 = shl nuw i32 %i.0275, 1
  %add82 = add nuw nsw i32 %shl81, 4
  %call84 = call fastcc i32 @grip_xt_read_packet(ptr noundef %50, i32 noundef %add82, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end89, label %if.then86

if.then86:                                        ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %bads153 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %bads153, align 4
  %inc88 = add i32 %52, 1
  store i32 %inc88, ptr %bads153, align 4
  br label %sw.epilog

if.end89:                                         ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %data, align 4
  %shr91 = lshr i32 %54, 2
  %and92 = and i32 %shr91, 63
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 3, i32 noundef 0, i32 noundef %and92) #6
  %shr94 = lshr i32 %54, 8
  %and95 = and i32 %shr94, 63
  %sub96 = xor i32 %and95, 63
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 3, i32 noundef 1, i32 noundef %sub96) #6
  %55 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %2, align 4
  %shr98 = lshr i32 %56, 2
  %and99 = and i32 %shr98, 63
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 3, i32 noundef 10, i32 noundef %and99) #6
  %shr101 = lshr i32 %56, 8
  %and102 = and i32 %shr101, 63
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 3, i32 noundef 9, i32 noundef %and102) #6
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %3, align 4
  %shr104 = lshr i32 %58, 8
  %and105 = and i32 %shr104, 63
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 3, i32 noundef 6, i32 noundef %and105) #6
  %shr107 = lshr i32 %58, 1
  %and108 = and i32 %shr107, 1
  %and110 = and i32 %58, 1
  %sub111 = sub nsw i32 %and108, %and110
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 3, i32 noundef 16, i32 noundef %sub111) #6
  %shr113 = lshr i32 %58, 2
  %and114 = and i32 %shr113, 1
  %59 = shl i32 %58, 28
  %60 = ashr i32 %59, 31
  %sub118 = add nsw i32 %60, %and114
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 3, i32 noundef 17, i32 noundef %sub118) #6
  %shr120 = lshr i32 %58, 5
  %and121 = and i32 %shr120, 1
  %61 = shl i32 %58, 27
  %62 = ashr i32 %61, 31
  %sub125 = add nsw i32 %62, %and121
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 3, i32 noundef 18, i32 noundef %sub125) #6
  %shr127 = lshr i32 %58, 6
  %and128 = and i32 %shr127, 1
  %63 = shl i32 %58, 24
  %64 = ashr i32 %63, 31
  %sub132 = add nsw i32 %64, %and128
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 3, i32 noundef 19, i32 noundef %sub132) #6
  %65 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %4, align 4
  %67 = load i32, ptr @grip_btn_xt, align 4
  %68 = lshr i32 %66, 3
  %.lobit290 = and i32 %68, 1
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 1, i32 noundef %67, i32 noundef %.lobit290) #6
  %69 = load i32, ptr getelementptr inbounds ([12 x i32], ptr @grip_btn_xt, i32 0, i32 1), align 4
  %70 = lshr i32 %66, 4
  %.lobit291 = and i32 %70, 1
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 1, i32 noundef %69, i32 noundef %.lobit291) #6
  %71 = load i32, ptr getelementptr inbounds ([12 x i32], ptr @grip_btn_xt, i32 0, i32 2), align 4
  %72 = lshr i32 %66, 5
  %.lobit292 = and i32 %72, 1
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 1, i32 noundef %71, i32 noundef %.lobit292) #6
  %73 = load i32, ptr getelementptr inbounds ([12 x i32], ptr @grip_btn_xt, i32 0, i32 3), align 4
  %74 = lshr i32 %66, 6
  %.lobit293 = and i32 %74, 1
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 1, i32 noundef %73, i32 noundef %.lobit293) #6
  %75 = load i32, ptr getelementptr inbounds ([12 x i32], ptr @grip_btn_xt, i32 0, i32 4), align 4
  %76 = lshr i32 %66, 7
  %.lobit294 = and i32 %76, 1
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 1, i32 noundef %75, i32 noundef %.lobit294) #6
  %77 = load i32, ptr getelementptr inbounds ([12 x i32], ptr @grip_btn_xt, i32 0, i32 5), align 4
  %78 = lshr i32 %66, 8
  %.lobit295 = and i32 %78, 1
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 1, i32 noundef %77, i32 noundef %.lobit295) #6
  %79 = load i32, ptr getelementptr inbounds ([12 x i32], ptr @grip_btn_xt, i32 0, i32 6), align 4
  %80 = lshr i32 %66, 9
  %.lobit296 = and i32 %80, 1
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 1, i32 noundef %79, i32 noundef %.lobit296) #6
  %81 = load i32, ptr getelementptr inbounds ([12 x i32], ptr @grip_btn_xt, i32 0, i32 7), align 4
  %82 = lshr i32 %66, 10
  %.lobit297 = and i32 %82, 1
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 1, i32 noundef %81, i32 noundef %.lobit297) #6
  %83 = load i32, ptr getelementptr inbounds ([12 x i32], ptr @grip_btn_xt, i32 0, i32 8), align 4
  %84 = lshr i32 %66, 11
  %.lobit298 = and i32 %84, 1
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 1, i32 noundef %83, i32 noundef %.lobit298) #6
  %85 = load i32, ptr getelementptr inbounds ([12 x i32], ptr @grip_btn_xt, i32 0, i32 9), align 4
  %86 = lshr i32 %66, 12
  %.lobit299 = and i32 %86, 1
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 1, i32 noundef %85, i32 noundef %.lobit299) #6
  %87 = load i32, ptr getelementptr inbounds ([12 x i32], ptr @grip_btn_xt, i32 0, i32 10), align 4
  %88 = lshr i32 %66, 13
  %.lobit300 = and i32 %88, 1
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 1, i32 noundef %87, i32 noundef %.lobit300) #6
  br label %sw.epilog

sw.bb145:                                         ; preds = %if.end
  %89 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %1, align 4
  %shl147 = shl nuw i32 %i.0275, 1
  %add148 = add nuw nsw i32 %shl147, 4
  %call150 = call fastcc i32 @grip_xt_read_packet(ptr noundef %90, i32 noundef %add148, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %if.end155, label %if.then152

if.then152:                                       ; preds = %sw.bb145
  call void @__sanitizer_cov_trace_pc() #8
  %91 = ptrtoint ptr %bads153 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %bads153, align 4
  %inc154 = add i32 %92, 1
  store i32 %inc154, ptr %bads153, align 4
  br label %sw.epilog

if.end155:                                        ; preds = %sw.bb145
  call void @__sanitizer_cov_trace_pc() #8
  %93 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %data, align 4
  %shr157 = lshr i32 %94, 2
  %and158 = and i32 %shr157, 63
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 3, i32 noundef 0, i32 noundef %and158) #6
  %shr160 = lshr i32 %94, 8
  %and161 = and i32 %shr160, 63
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 3, i32 noundef 1, i32 noundef %and161) #6
  %95 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %2, align 4
  %shr163 = lshr i32 %96, 2
  %and164 = and i32 %shr163, 63
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 3, i32 noundef 3, i32 noundef %and164) #6
  %shr166 = lshr i32 %96, 8
  %and167 = and i32 %shr166, 63
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 3, i32 noundef 4, i32 noundef %and167) #6
  %97 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %3, align 4
  %shr169 = lshr i32 %98, 8
  %and170 = and i32 %shr169, 63
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 3, i32 noundef 6, i32 noundef %and170) #6
  %shr172 = lshr i32 %98, 1
  %and173 = and i32 %shr172, 1
  %and175 = and i32 %98, 1
  %sub176 = sub nsw i32 %and173, %and175
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 3, i32 noundef 16, i32 noundef %sub176) #6
  %shr178 = lshr i32 %98, 2
  %and179 = and i32 %shr178, 1
  %99 = shl i32 %98, 28
  %100 = ashr i32 %99, 31
  %sub183 = add nsw i32 %100, %and179
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 3, i32 noundef 17, i32 noundef %sub183) #6
  %101 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %4, align 4
  %103 = load i32, ptr @grip_btn_dc, align 4
  %104 = lshr i32 %102, 3
  %.lobit = and i32 %104, 1
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 1, i32 noundef %103, i32 noundef %.lobit) #6
  %105 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @grip_btn_dc, i32 0, i32 1), align 4
  %106 = lshr i32 %102, 4
  %.lobit282 = and i32 %106, 1
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 1, i32 noundef %105, i32 noundef %.lobit282) #6
  %107 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @grip_btn_dc, i32 0, i32 2), align 4
  %108 = lshr i32 %102, 5
  %.lobit283 = and i32 %108, 1
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 1, i32 noundef %107, i32 noundef %.lobit283) #6
  %109 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @grip_btn_dc, i32 0, i32 3), align 4
  %110 = lshr i32 %102, 6
  %.lobit284 = and i32 %110, 1
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 1, i32 noundef %109, i32 noundef %.lobit284) #6
  %111 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @grip_btn_dc, i32 0, i32 4), align 4
  %112 = lshr i32 %102, 7
  %.lobit285 = and i32 %112, 1
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 1, i32 noundef %111, i32 noundef %.lobit285) #6
  %113 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @grip_btn_dc, i32 0, i32 5), align 4
  %114 = lshr i32 %102, 8
  %.lobit286 = and i32 %114, 1
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 1, i32 noundef %113, i32 noundef %.lobit286) #6
  %115 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @grip_btn_dc, i32 0, i32 6), align 4
  %116 = lshr i32 %102, 9
  %.lobit287 = and i32 %116, 1
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 1, i32 noundef %115, i32 noundef %.lobit287) #6
  %117 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @grip_btn_dc, i32 0, i32 7), align 4
  %118 = lshr i32 %102, 10
  %.lobit288 = and i32 %118, 1
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 1, i32 noundef %117, i32 noundef %.lobit288) #6
  %119 = load i32, ptr getelementptr inbounds ([10 x i32], ptr @grip_btn_dc, i32 0, i32 8), align 4
  %120 = lshr i32 %102, 11
  %.lobit289 = and i32 %120, 1
  tail call void @input_event(ptr noundef nonnull %7, i32 noundef 1, i32 noundef %119, i32 noundef %.lobit289) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end155, %if.then152, %if.end89, %if.then86, %if.end43, %if.then40, %for.inc.sw.epilog_crit_edge, %if.then6, %if.end.sw.epilog_crit_edge
  tail call void @input_event(ptr noundef %7, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %for.inc196

for.inc196:                                       ; preds = %sw.epilog, %for.body.for.inc196_crit_edge
  %inc197 = add nuw nsw i32 %i.0275, 1
  %exitcond281.not = icmp eq i32 %inc197, 2
  br i1 %exitcond281.not, label %for.end198, label %for.inc196.for.body_crit_edge

for.inc196.for.body_crit_edge:                    ; preds = %for.inc196
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end198:                                       ; preds = %for.inc196
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @grip_open(ptr nocapture noundef readonly %dev) #2 align 64 {
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
define internal void @grip_close(ptr nocapture noundef readonly %dev) #2 align 64 {
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
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_start_polling(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_stop_polling(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @__UNIQUE_ID_author223, !1, !"__UNIQUE_ID_author223", i1 false, i1 false}
!1 = !{!"../drivers/input/joystick/grip.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_description224, !3, !"__UNIQUE_ID_description224", i1 false, i1 false}
!3 = !{!"../drivers/input/joystick/grip.c", i32 23, i32 1}
!4 = !{ptr @__UNIQUE_ID_file225, !5, !"__UNIQUE_ID_file225", i1 false, i1 false}
!5 = !{!"../drivers/input/joystick/grip.c", i32 24, i32 1}
!6 = !{ptr @__UNIQUE_ID_license226, !5, !"__UNIQUE_ID_license226", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_grip__227_410_grip_drv_init6, !8, !"__initcall__kmod_grip__227_410_grip_drv_init6", i1 false, i1 false}
!8 = !{!"../drivers/input/joystick/grip.c", i32 410, i32 1}
!9 = !{ptr @__exitcall_grip_drv_exit, !8, !"__exitcall_grip_drv_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/input/joystick/grip.c", i32 405, i32 17}
!13 = !{ptr @grip_drv, !14, !"grip_drv", i1 false, i1 false}
!14 = !{!"../drivers/input/joystick/grip.c", i32 400, i32 31}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/input/joystick/grip.c", i32 339, i32 5}
!17 = !{ptr @grip_btn_gpp, !18, !"grip_btn_gpp", i1 false, i1 false}
!18 = !{!"../drivers/input/joystick/grip.c", i32 47, i32 12}
!19 = !{ptr @grip_btn_bd, !20, !"grip_btn_bd", i1 false, i1 false}
!20 = !{!"../drivers/input/joystick/grip.c", i32 48, i32 12}
!21 = !{ptr @grip_btn_xt, !22, !"grip_btn_xt", i1 false, i1 false}
!22 = !{!"../drivers/input/joystick/grip.c", i32 49, i32 12}
!23 = !{ptr @grip_btn_dc, !24, !"grip_btn_dc", i1 false, i1 false}
!24 = !{!"../drivers/input/joystick/grip.c", i32 50, i32 12}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/input/joystick/grip.c", i32 57, i32 36}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/input/joystick/grip.c", i32 57, i32 58}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/input/joystick/grip.c", i32 58, i32 5}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/joystick/grip.c", i32 58, i32 35}
!33 = !{ptr @grip_name, !34, !"grip_name", i1 false, i1 false}
!34 = !{!"../drivers/input/joystick/grip.c", i32 57, i32 14}
!35 = !{ptr @grip_abs, !36, !"grip_abs", i1 false, i1 false}
!36 = !{!"../drivers/input/joystick/grip.c", i32 59, i32 13}
!37 = !{ptr @grip_abs_gpp, !38, !"grip_abs_gpp", i1 false, i1 false}
!38 = !{!"../drivers/input/joystick/grip.c", i32 52, i32 12}
!39 = !{ptr @grip_abs_bd, !40, !"grip_abs_bd", i1 false, i1 false}
!40 = !{!"../drivers/input/joystick/grip.c", i32 53, i32 12}
!41 = !{ptr @grip_abs_xt, !42, !"grip_abs_xt", i1 false, i1 false}
!42 = !{!"../drivers/input/joystick/grip.c", i32 54, i32 12}
!43 = !{ptr @grip_abs_dc, !44, !"grip_abs_dc", i1 false, i1 false}
!44 = !{!"../drivers/input/joystick/grip.c", i32 55, i32 12}
!45 = !{ptr @grip_cen, !46, !"grip_cen", i1 false, i1 false}
!46 = !{!"../drivers/input/joystick/grip.c", i32 62, i32 13}
!47 = !{ptr @grip_anx, !48, !"grip_anx", i1 false, i1 false}
!48 = !{!"../drivers/input/joystick/grip.c", i32 61, i32 13}
!49 = !{ptr @grip_btn, !50, !"grip_btn", i1 false, i1 false}
!50 = !{!"../drivers/input/joystick/grip.c", i32 60, i32 13}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{i64 610709, i64 610770}
!61 = !{i64 4941823}
!62 = !{i64 2152731750}
!63 = !{i64 613441}
!64 = !{!"branch_weights", i32 1, i32 2000}
!65 = !{i64 613726}
