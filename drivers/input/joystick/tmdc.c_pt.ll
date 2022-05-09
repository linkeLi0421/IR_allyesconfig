; ModuleID = '/llk/IR_all_yes/drivers/input/joystick/tmdc.c_pt.bc'
source_filename = "../drivers/input/joystick/tmdc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gameport_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.69 = type { i32, i32 }
%struct.tmdc_model = type { i8, ptr, i8, i8, [4 x i8], [4 x i8], ptr, ptr }
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
%struct.tmdc = type { ptr, [2 x ptr], i32, i32, i8 }
%struct.tmdc_port = type { ptr, [64 x i8], [32 x i8], i32, ptr, ptr, i8, [4 x i8], [4 x i8] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__UNIQUE_ID_author223 = internal constant [44 x i8] c"tmdc.author=Vojtech Pavlik <vojtech@ucw.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description224 = internal constant [60 x i8] c"tmdc.description=ThrustMaster DirectConnect joystick driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file225 = internal constant [38 x i8] c"tmdc.file=drivers/input/joystick/tmdc\00", section ".modinfo", align 1
@__UNIQUE_ID_license226 = internal constant [17 x i8] c"tmdc.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_tmdc__227_422_tmdc_drv_init6 = internal global ptr @tmdc_drv_init, section ".initcall6.init", align 4
@tmdc_drv = internal global { %struct.gameport_driver, [32 x i8] } { %struct.gameport_driver { ptr @.str.1, ptr @tmdc_connect, ptr null, ptr @tmdc_disconnect, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tmdc_drv_exit = internal global ptr @tmdc_drv_exit, section ".exitcall.exit", align 4
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tmdc\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ThrustMaster DirectConnect joystick driver\00", [53 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tmdc_hat_to_axis = internal constant { [5 x %struct.anon.69], [56 x i8] } { [5 x %struct.anon.69] [%struct.anon.69 zeroinitializer, %struct.anon.69 { i32 1, i32 0 }, %struct.anon.69 { i32 0, i32 -1 }, %struct.anon.69 { i32 -1, i32 0 }, %struct.anon.69 { i32 0, i32 1 }], [56 x i8] zeroinitializer }, align 32
@tmdc_byte_a = internal constant { <{ i8, i8, i8, i8, i8, i8, [10 x i8] }>, [16 x i8] } { <{ i8, i8, i8, i8, i8, i8, [10 x i8] }> <{ i8 0, i8 1, i8 3, i8 4, i8 6, i8 7, [10 x i8] zeroinitializer }>, [16 x i8] zeroinitializer }, align 32
@tmdc_models = internal constant { [6 x %struct.tmdc_model], [56 x i8] } { [6 x %struct.tmdc_model] [%struct.tmdc_model { i8 1, ptr @.str.5, i8 6, i8 2, [4 x i8] c"\04\02\00\00", [4 x i8] c"\04\06\00\00", ptr @tmdc_abs, ptr @tmdc_btn_joy }, %struct.tmdc_model { i8 3, ptr @.str.6, i8 2, i8 0, [4 x i8] c"\08\02\00\00", [4 x i8] zeroinitializer, ptr @tmdc_abs, ptr @tmdc_btn_pad }, %struct.tmdc_model { i8 4, ptr @.str.7, i8 5, i8 2, [4 x i8] c"\04\06\00\00", [4 x i8] c"\04\02\00\00", ptr @tmdc_abs_at, ptr @tmdc_btn_at }, %struct.tmdc_model { i8 8, ptr @.str.8, i8 4, i8 0, [4 x i8] c"\08\02\00\00", [4 x i8] zeroinitializer, ptr @tmdc_abs_fm, ptr @tmdc_btn_fm }, %struct.tmdc_model { i8 -93, ptr @.str.9, i8 2, i8 0, [4 x i8] c"\08\02\00\00", [4 x i8] zeroinitializer, ptr @tmdc_abs, ptr @tmdc_btn_pad }, %struct.tmdc_model { i8 0, ptr @.str.10, i8 0, i8 0, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, ptr @tmdc_abs, ptr @tmdc_btn_joy }], [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s/input%d\00", [21 x i8] zeroinitializer }, align 32
@tmdc_abs_hat = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\10\11\12\13", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ThrustMaster Millennium 3D Inceptor\00", [60 x i8] zeroinitializer }, align 32
@tmdc_abs = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\00\01\07\06\03\04\05", [25 x i8] zeroinitializer }, align 32
@tmdc_btn_joy = internal constant { [16 x i16], [32 x i8] } { [16 x i16] [i16 288, i16 289, i16 291, i16 292, i16 294, i16 295, i16 290, i16 293, i16 296, i16 297, i16 304, i16 305, i16 306, i16 307, i16 308, i16 309], [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ThrustMaster Rage 3D Gamepad\00", [35 x i8] zeroinitializer }, align 32
@tmdc_btn_pad = internal constant { [16 x i16], [32 x i8] } { [16 x i16] [i16 304, i16 305, i16 306, i16 307, i16 308, i16 309, i16 315, i16 314, i16 310, i16 311, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0], [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ThrustMaster Attack Throttle\00", [35 x i8] zeroinitializer }, align 32
@tmdc_abs_at = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\00\01\07\FF\06\00\00", [25 x i8] zeroinitializer }, align 32
@tmdc_btn_at = internal constant { [16 x i16], [32 x i8] } { [16 x i16] [i16 288, i16 290, i16 293, i16 289, i16 299, i16 298, i16 297, i16 296, i16 295, i16 294, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0], [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ThrustMaster FragMaster\00", [40 x i8] zeroinitializer }, align 32
@tmdc_abs_fm = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\03\04\00\01\00\00\00", [25 x i8] zeroinitializer }, align 32
@tmdc_btn_fm = internal constant { [16 x i16], [32 x i8] } { [16 x i16] [i16 288, i16 306, i16 305, i16 304, i16 289, i16 307, i16 308, i16 309, i16 291, i16 292, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0], [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Thrustmaster Fusion GamePad\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unknown %d-axis, %d-button TM device %d\00", [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 3, i64 4, i64 8, i64 163]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 9]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 9]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@___asan_gen_.14 = private unnamed_addr constant [9 x i8] c"tmdc_drv\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 412, i32 31 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 422, i32 1 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 417, i32 17 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"tmdc_hat_to_axis\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 74, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant [12 x i8] c"tmdc_byte_a\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 48, i32 28 }
@___asan_gen_.29 = private unnamed_addr constant [12 x i8] c"tmdc_models\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 85, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 300, i32 43 }
@___asan_gen_.35 = private unnamed_addr constant [13 x i8] c"tmdc_abs_hat\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 53, i32 26 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 86, i32 9 }
@___asan_gen_.41 = private unnamed_addr constant [9 x i8] c"tmdc_abs\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 51, i32 26 }
@___asan_gen_.44 = private unnamed_addr constant [13 x i8] c"tmdc_btn_joy\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 62, i32 20 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 87, i32 9 }
@___asan_gen_.50 = private unnamed_addr constant [13 x i8] c"tmdc_btn_pad\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 60, i32 20 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 88, i32 9 }
@___asan_gen_.56 = private unnamed_addr constant [12 x i8] c"tmdc_abs_at\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 55, i32 26 }
@___asan_gen_.59 = private unnamed_addr constant [12 x i8] c"tmdc_btn_at\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 67, i32 20 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 89, i32 9 }
@___asan_gen_.65 = private unnamed_addr constant [12 x i8] c"tmdc_abs_fm\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 57, i32 26 }
@___asan_gen_.68 = private unnamed_addr constant [12 x i8] c"tmdc_btn_fm\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 65, i32 20 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 90, i32 9 }
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.75 = private constant [33 x i8] c"../drivers/input/joystick/tmdc.c\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 91, i32 9 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_author223, ptr @__UNIQUE_ID_description224, ptr @__UNIQUE_ID_file225, ptr @__UNIQUE_ID_license226, ptr @__exitcall_tmdc_drv_exit, ptr @__initcall__kmod_tmdc__227_422_tmdc_drv_init6, ptr @tmdc_drv_exit, ptr @tmdc_drv, ptr @.str, ptr @.str.1, ptr @tmdc_hat_to_axis, ptr @tmdc_byte_a, ptr @tmdc_models, ptr @.str.4, ptr @tmdc_abs_hat, ptr @.str.5, ptr @tmdc_abs, ptr @tmdc_btn_joy, ptr @.str.6, ptr @tmdc_btn_pad, ptr @.str.7, ptr @tmdc_abs_at, ptr @tmdc_btn_at, ptr @.str.8, ptr @tmdc_abs_fm, ptr @tmdc_btn_fm, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmdc_drv to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmdc_hat_to_axis to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmdc_byte_a to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmdc_models to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmdc_abs_hat to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmdc_abs to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmdc_btn_joy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmdc_btn_pad to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmdc_abs_at to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmdc_btn_at to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmdc_abs_fm to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmdc_btn_fm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tmdc_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__gameport_register_driver(ptr noundef nonnull @tmdc_drv, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tmdc_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gameport_unregister_driver(ptr noundef nonnull @tmdc_drv) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__gameport_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmdc_connect(ptr noundef %gameport, ptr noundef %drv) #2 align 64 {
entry:
  %data = alloca [2 x [13 x i8]], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %data) #6
  %0 = call ptr @memset(ptr %data, i32 255, i32 26)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 24) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %gameport, ptr %call7.i.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @gameport_open(ptr noundef %gameport, ptr noundef %drv, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.fail1_crit_edge

if.end.fail1_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail1

if.end5:                                          ; preds = %if.end
  %call6 = call fastcc i32 @tmdc_read_packet(ptr noundef %gameport, ptr noundef nonnull %data)
  %conv = trunc i32 %call6 to i8
  %exists = getelementptr inbounds %struct.tmdc, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %exists to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %exists, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool7.not = icmp eq i8 %conv, 0
  br i1 %tobool7.not, label %if.end5.fail2_crit_edge, label %if.end9

if.end5.fail2_crit_edge:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail2

if.end9:                                          ; preds = %if.end5
  %poll_handler.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 16
  %5 = ptrtoint ptr %poll_handler.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @tmdc_poll, ptr %poll_handler.i, align 4
  %poll_interval.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 13
  %6 = ptrtoint ptr %poll_interval.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 20, ptr %poll_interval.i, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end9
  %i.065 = phi i32 [ 0, %if.end9 ], [ %inc, %for.inc.for.body_crit_edge ]
  %7 = ptrtoint ptr %exists to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %exists, align 4
  %conv12 = zext i8 %8 to i32
  %shl = shl nuw nsw i32 1, %i.065
  %and = and i32 %shl, %conv12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %for.body.for.inc_crit_edge, label %if.then14

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then14:                                        ; preds = %for.body
  %arrayidx = getelementptr [2 x [13 x i8]], ptr %data, i32 0, i32 %i.065
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 124) #9
  %arrayidx.i = getelementptr %struct.tmdc, ptr %call7.i.i, i32 0, i32 1, i32 %i.065
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i.i, ptr %arrayidx.i, align 4
  %call2.i = tail call ptr @input_allocate_device() #6
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  %tobool3.not.i = icmp eq ptr %call2.i, null
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool3.not.i
  br i1 %or.cond.i, label %if.then14.tmdc_setup_port.exit_crit_edge, label %if.end.i

if.then14.tmdc_setup_port.exit_crit_edge:         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %tmdc_setup_port.exit

if.end.i:                                         ; preds = %if.then14
  %arrayidx4.i = getelementptr i8, ptr %arrayidx, i32 10
  %11 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx4.i, align 1
  %conv.i = zext i8 %12 to i32
  %mode.i = getelementptr inbounds %struct.tmdc_port, ptr %call7.i.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv.i, ptr %mode.i, align 4
  %14 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i8 %12, label %for.inc.4.i [
    i8 1, label %if.end.i.if.else.i_crit_edge
    i8 3, label %if.else.fold.split.i
    i8 4, label %if.else.fold.split287.i
    i8 8, label %if.else.fold.split288.i
    i8 -93, label %if.else.fold.split289.i
  ]

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

for.inc.4.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %abs249.i = getelementptr inbounds %struct.tmdc_port, ptr %call7.i.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %abs249.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @tmdc_abs, ptr %abs249.i, align 8
  %btn251.i = getelementptr inbounds %struct.tmdc_port, ptr %call7.i.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %btn251.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @tmdc_btn_joy, ptr %btn251.i, align 4
  %arrayidx14.i = getelementptr i8, ptr %arrayidx, i32 12
  %17 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx14.i, align 1
  %19 = lshr i8 %18, 4
  %absc.i = getelementptr inbounds %struct.tmdc_port, ptr %call7.i.i.i, i32 0, i32 6
  %20 = ptrtoint ptr %absc.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %absc.i, align 8
  %21 = and i8 %18, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp23.not.i = icmp eq i8 %21, 0
  %conv25.i = select i1 %cmp23.not.i, i8 0, i8 8
  %arrayidx26.i = getelementptr %struct.tmdc_port, ptr %call7.i.i.i, i32 0, i32 7, i32 0
  %22 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv25.i, ptr %arrayidx26.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp23.1.i = icmp ugt i8 %21, 1
  %conv25.1.i = select i1 %cmp23.1.i, i8 8, i8 0
  %arrayidx26.1.i = getelementptr %struct.tmdc_port, ptr %call7.i.i.i, i32 0, i32 7, i32 1
  %23 = ptrtoint ptr %arrayidx26.1.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv25.1.i, ptr %arrayidx26.1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %21)
  %cmp23.2.i = icmp ugt i8 %21, 2
  %conv25.2.i = select i1 %cmp23.2.i, i8 8, i8 0
  %arrayidx26.2.i = getelementptr %struct.tmdc_port, ptr %call7.i.i.i, i32 0, i32 7, i32 2
  %24 = ptrtoint ptr %arrayidx26.2.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv25.2.i, ptr %arrayidx26.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %21)
  %cmp23.3.i = icmp ugt i8 %21, 3
  %conv25.3.i = select i1 %cmp23.3.i, i8 8, i8 0
  %arrayidx26.3.i = getelementptr %struct.tmdc_port, ptr %call7.i.i.i, i32 0, i32 7, i32 3
  %25 = ptrtoint ptr %arrayidx26.3.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv25.3.i, ptr %arrayidx26.3.i, align 4
  br label %if.end42.i

if.else.fold.split.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.else.fold.split287.i:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.else.fold.split288.i:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.else.fold.split289.i:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.else.i:                                        ; preds = %if.else.fold.split289.i, %if.else.fold.split288.i, %if.else.fold.split287.i, %if.else.fold.split.i, %if.end.i.if.else.i_crit_edge
  %model.0260.lcssa.i = phi ptr [ @tmdc_models, %if.end.i.if.else.i_crit_edge ], [ getelementptr inbounds ([6 x %struct.tmdc_model], ptr @tmdc_models, i32 0, i32 1), %if.else.fold.split.i ], [ getelementptr inbounds ([6 x %struct.tmdc_model], ptr @tmdc_models, i32 0, i32 2), %if.else.fold.split287.i ], [ getelementptr inbounds ([6 x %struct.tmdc_model], ptr @tmdc_models, i32 0, i32 3), %if.else.fold.split288.i ], [ getelementptr inbounds ([6 x %struct.tmdc_model], ptr @tmdc_models, i32 0, i32 4), %if.else.fold.split289.i ]
  %axes.i = getelementptr inbounds %struct.tmdc_model, ptr %model.0260.lcssa.i, i32 0, i32 6
  %26 = ptrtoint ptr %axes.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %axes.i, align 4
  %abs.i = getelementptr inbounds %struct.tmdc_port, ptr %call7.i.i.i, i32 0, i32 4
  %28 = ptrtoint ptr %abs.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %abs.i, align 8
  %buttons.i = getelementptr inbounds %struct.tmdc_model, ptr %model.0260.lcssa.i, i32 0, i32 7
  %29 = ptrtoint ptr %buttons.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %buttons.i, align 4
  %btn.i = getelementptr inbounds %struct.tmdc_port, ptr %call7.i.i.i, i32 0, i32 5
  %31 = ptrtoint ptr %btn.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %btn.i, align 4
  %abs29.i = getelementptr inbounds %struct.tmdc_model, ptr %model.0260.lcssa.i, i32 0, i32 2
  %32 = ptrtoint ptr %abs29.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %abs29.i, align 4
  %absc30.i = getelementptr inbounds %struct.tmdc_port, ptr %call7.i.i.i, i32 0, i32 6
  %34 = ptrtoint ptr %absc30.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %absc30.i, align 8
  %uglygep.i = getelementptr i8, ptr %call7.i.i.i, i32 113
  %uglygep279.i = getelementptr i8, ptr %model.0260.lcssa.i, i32 10
  %35 = ptrtoint ptr %uglygep279.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %uglygep279.i, align 1
  %37 = ptrtoint ptr %uglygep.i to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %36, ptr %uglygep.i, align 1
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.else.i, %for.inc.4.i
  %model.0259.i = phi ptr [ %model.0260.lcssa.i, %if.else.i ], [ getelementptr inbounds ([6 x %struct.tmdc_model], ptr @tmdc_models, i32 0, i32 5, i32 0), %for.inc.4.i ]
  %btn254.i = phi ptr [ %btn.i, %if.else.i ], [ %btn251.i, %for.inc.4.i ]
  %abs252.i = phi ptr [ %abs.i, %if.else.i ], [ %abs249.i, %for.inc.4.i ]
  %arrayidx47.i = getelementptr %struct.tmdc_model, ptr %model.0259.i, i32 0, i32 5, i32 0
  %38 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx47.i, align 1
  %arrayidx49.i = getelementptr %struct.tmdc_port, ptr %call7.i.i.i, i32 0, i32 8, i32 0
  %40 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %arrayidx49.i, align 1
  %arrayidx47.1.i = getelementptr %struct.tmdc_model, ptr %model.0259.i, i32 0, i32 5, i32 1
  %41 = ptrtoint ptr %arrayidx47.1.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx47.1.i, align 1
  %arrayidx49.1.i = getelementptr %struct.tmdc_port, ptr %call7.i.i.i, i32 0, i32 8, i32 1
  %43 = ptrtoint ptr %arrayidx49.1.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %arrayidx49.1.i, align 2
  %arrayidx47.2.i = getelementptr %struct.tmdc_model, ptr %model.0259.i, i32 0, i32 5, i32 2
  %44 = ptrtoint ptr %arrayidx47.2.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx47.2.i, align 1
  %arrayidx49.2.i = getelementptr %struct.tmdc_port, ptr %call7.i.i.i, i32 0, i32 8, i32 2
  %46 = ptrtoint ptr %arrayidx49.2.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %arrayidx49.2.i, align 1
  %arrayidx47.3.i = getelementptr %struct.tmdc_model, ptr %model.0259.i, i32 0, i32 5, i32 3
  %47 = ptrtoint ptr %arrayidx47.3.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx47.3.i, align 1
  %arrayidx49.3.i = getelementptr %struct.tmdc_port, ptr %call7.i.i.i, i32 0, i32 8, i32 3
  %49 = ptrtoint ptr %arrayidx49.3.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %arrayidx49.3.i, align 8
  %name.i = getelementptr inbounds %struct.tmdc_port, ptr %call7.i.i.i, i32 0, i32 1
  %name53.i = getelementptr inbounds %struct.tmdc_model, ptr %model.0259.i, i32 0, i32 1
  %50 = ptrtoint ptr %name53.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %name53.i, align 4
  %absc54.i = getelementptr inbounds %struct.tmdc_port, ptr %call7.i.i.i, i32 0, i32 6
  %52 = ptrtoint ptr %absc54.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %absc54.i, align 8
  %conv55.i = zext i8 %53 to i32
  %arrayidx56.i = getelementptr i8, ptr %arrayidx, i32 12
  %54 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx56.i, align 1
  %56 = shl i8 %55, 3
  %57 = and i8 %56, 120
  %shl.i = zext i8 %57 to i32
  %58 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mode.i, align 4
  %call60.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 64, ptr noundef %51, i32 noundef %conv55.i, i32 noundef %shl.i, i32 noundef %59) #6
  %phys.i = getelementptr inbounds %struct.tmdc_port, ptr %call7.i.i.i, i32 0, i32 2
  %60 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %call7.i.i, align 8
  %phys62.i = getelementptr inbounds %struct.gameport, ptr %61, i32 0, i32 2
  %call64.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys.i, i32 noundef 32, ptr noundef nonnull @.str.4, ptr noundef %phys62.i, i32 noundef 4) #6
  %62 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call2.i, ptr %call7.i.i.i, align 8
  %63 = ptrtoint ptr %call2.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %name.i, ptr %call2.i, align 8
  %phys70.i = getelementptr inbounds %struct.input_dev, ptr %call2.i, i32 0, i32 1
  %64 = ptrtoint ptr %phys70.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %phys.i, ptr %phys70.i, align 4
  %id71.i = getelementptr inbounds %struct.input_dev, ptr %call2.i, i32 0, i32 3
  %65 = ptrtoint ptr %id71.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 20, ptr %id71.i, align 4
  %vendor.i = getelementptr inbounds %struct.input_dev, ptr %call2.i, i32 0, i32 3, i32 1
  %66 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 8, ptr %vendor.i, align 2
  %67 = ptrtoint ptr %model.0259.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %model.0259.i, align 4
  %conv74.i = zext i8 %68 to i16
  %product.i = getelementptr inbounds %struct.input_dev, ptr %call2.i, i32 0, i32 3, i32 2
  %69 = ptrtoint ptr %product.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv74.i, ptr %product.i, align 4
  %version.i = getelementptr inbounds %struct.input_dev, ptr %call2.i, i32 0, i32 3, i32 3
  %70 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 256, ptr %version.i, align 2
  %71 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %call7.i.i, align 8
  %dev78.i = getelementptr inbounds %struct.gameport, ptr %72, i32 0, i32 21
  %parent.i = getelementptr inbounds %struct.input_dev, ptr %call2.i, i32 0, i32 40, i32 1
  %73 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %dev78.i, ptr %parent.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call2.i, i32 0, i32 40, i32 8
  %74 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call7.i.i, ptr %driver_data.i.i.i, align 4
  %open.i = getelementptr inbounds %struct.input_dev, ptr %call2.i, i32 0, i32 31
  %75 = ptrtoint ptr %open.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @tmdc_open, ptr %open.i, align 8
  %close.i = getelementptr inbounds %struct.input_dev, ptr %call2.i, i32 0, i32 32
  %76 = ptrtoint ptr %close.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @tmdc_close, ptr %close.i, align 4
  %evbit.i = getelementptr inbounds %struct.input_dev, ptr %call2.i, i32 0, i32 5
  %77 = ptrtoint ptr %evbit.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 10, ptr %evbit.i, align 8
  %78 = ptrtoint ptr %absc54.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %absc54.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %cmp84265.not.i = icmp eq i8 %79, 0
  br i1 %cmp84265.not.i, label %if.end42.i.for.cond104.preheader.i_crit_edge, label %for.body90.i

if.end42.i.for.cond104.preheader.i_crit_edge:     ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond104.preheader.i

for.cond104.preheader.i:                          ; preds = %if.then96.i.6, %for.body90.i.6.for.cond104.preheader.i_crit_edge, %for.inc101.i.5.for.cond104.preheader.i_crit_edge, %for.inc101.i.4.for.cond104.preheader.i_crit_edge, %for.inc101.i.3.for.cond104.preheader.i_crit_edge, %for.inc101.i.2.for.cond104.preheader.i_crit_edge, %for.inc101.i.1.for.cond104.preheader.i_crit_edge, %for.inc101.i.for.cond104.preheader.i_crit_edge, %if.end42.i.for.cond104.preheader.i_crit_edge
  %hats.i = getelementptr inbounds %struct.tmdc_model, ptr %model.0259.i, i32 0, i32 3
  %80 = ptrtoint ptr %hats.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %hats.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %cmp106268.not.i = icmp eq i8 %81, 0
  br i1 %cmp106268.not.i, label %for.cond104.preheader.i.for.cond118.preheader.i_crit_edge, label %for.body112.i

for.cond104.preheader.i.for.cond118.preheader.i_crit_edge: ; preds = %for.cond104.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond118.preheader.i

for.body90.i:                                     ; preds = %if.end42.i
  %82 = ptrtoint ptr %abs252.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %abs252.i, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %83, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %85)
  %cmp94.i = icmp sgt i8 %85, -1
  br i1 %cmp94.i, label %if.then96.i, label %for.body90.i.for.inc101.i_crit_edge

for.body90.i.for.inc101.i_crit_edge:              ; preds = %for.body90.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc101.i

if.then96.i:                                      ; preds = %for.body90.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv93256.i = zext i8 %85 to i32
  tail call void @input_set_abs_params(ptr noundef nonnull %call2.i, i32 noundef %conv93256.i, i32 noundef 8, i32 noundef 248, i32 noundef 2, i32 noundef 4) #6
  br label %for.inc101.i

for.inc101.i:                                     ; preds = %if.then96.i, %for.body90.i.for.inc101.i_crit_edge
  %86 = ptrtoint ptr %absc54.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %absc54.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %87)
  %cmp84.i = icmp ugt i8 %87, 1
  br i1 %cmp84.i, label %for.body90.i.1, label %for.inc101.i.for.cond104.preheader.i_crit_edge

for.inc101.i.for.cond104.preheader.i_crit_edge:   ; preds = %for.inc101.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond104.preheader.i

for.body90.i.1:                                   ; preds = %for.inc101.i
  %88 = ptrtoint ptr %abs252.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %abs252.i, align 4
  %arrayidx92.i.1 = getelementptr i8, ptr %89, i32 1
  %90 = ptrtoint ptr %arrayidx92.i.1 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx92.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %91)
  %cmp94.i.1 = icmp sgt i8 %91, -1
  br i1 %cmp94.i.1, label %if.then96.i.1, label %for.body90.i.1.for.inc101.i.1_crit_edge

for.body90.i.1.for.inc101.i.1_crit_edge:          ; preds = %for.body90.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc101.i.1

if.then96.i.1:                                    ; preds = %for.body90.i.1
  call void @__sanitizer_cov_trace_pc() #8
  %conv93256.i.1 = zext i8 %91 to i32
  tail call void @input_set_abs_params(ptr noundef nonnull %call2.i, i32 noundef %conv93256.i.1, i32 noundef 8, i32 noundef 248, i32 noundef 2, i32 noundef 4) #6
  br label %for.inc101.i.1

for.inc101.i.1:                                   ; preds = %if.then96.i.1, %for.body90.i.1.for.inc101.i.1_crit_edge
  %92 = ptrtoint ptr %absc54.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %absc54.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %93)
  %cmp84.i.1 = icmp ugt i8 %93, 2
  br i1 %cmp84.i.1, label %for.body90.i.2, label %for.inc101.i.1.for.cond104.preheader.i_crit_edge

for.inc101.i.1.for.cond104.preheader.i_crit_edge: ; preds = %for.inc101.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond104.preheader.i

for.body90.i.2:                                   ; preds = %for.inc101.i.1
  %94 = ptrtoint ptr %abs252.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %abs252.i, align 4
  %arrayidx92.i.2 = getelementptr i8, ptr %95, i32 2
  %96 = ptrtoint ptr %arrayidx92.i.2 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx92.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %97)
  %cmp94.i.2 = icmp sgt i8 %97, -1
  br i1 %cmp94.i.2, label %if.then96.i.2, label %for.body90.i.2.for.inc101.i.2_crit_edge

for.body90.i.2.for.inc101.i.2_crit_edge:          ; preds = %for.body90.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc101.i.2

if.then96.i.2:                                    ; preds = %for.body90.i.2
  call void @__sanitizer_cov_trace_pc() #8
  %conv93256.i.2 = zext i8 %97 to i32
  tail call void @input_set_abs_params(ptr noundef nonnull %call2.i, i32 noundef %conv93256.i.2, i32 noundef 8, i32 noundef 248, i32 noundef 2, i32 noundef 4) #6
  br label %for.inc101.i.2

for.inc101.i.2:                                   ; preds = %if.then96.i.2, %for.body90.i.2.for.inc101.i.2_crit_edge
  %98 = ptrtoint ptr %absc54.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %absc54.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %99)
  %cmp84.i.2 = icmp ugt i8 %99, 3
  br i1 %cmp84.i.2, label %for.body90.i.3, label %for.inc101.i.2.for.cond104.preheader.i_crit_edge

for.inc101.i.2.for.cond104.preheader.i_crit_edge: ; preds = %for.inc101.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond104.preheader.i

for.body90.i.3:                                   ; preds = %for.inc101.i.2
  %100 = ptrtoint ptr %abs252.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %abs252.i, align 4
  %arrayidx92.i.3 = getelementptr i8, ptr %101, i32 3
  %102 = ptrtoint ptr %arrayidx92.i.3 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx92.i.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %103)
  %cmp94.i.3 = icmp sgt i8 %103, -1
  br i1 %cmp94.i.3, label %if.then96.i.3, label %for.body90.i.3.for.inc101.i.3_crit_edge

for.body90.i.3.for.inc101.i.3_crit_edge:          ; preds = %for.body90.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc101.i.3

if.then96.i.3:                                    ; preds = %for.body90.i.3
  call void @__sanitizer_cov_trace_pc() #8
  %conv93256.i.3 = zext i8 %103 to i32
  tail call void @input_set_abs_params(ptr noundef nonnull %call2.i, i32 noundef %conv93256.i.3, i32 noundef 8, i32 noundef 248, i32 noundef 2, i32 noundef 4) #6
  br label %for.inc101.i.3

for.inc101.i.3:                                   ; preds = %if.then96.i.3, %for.body90.i.3.for.inc101.i.3_crit_edge
  %104 = ptrtoint ptr %absc54.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %absc54.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %105)
  %cmp84.i.3 = icmp ugt i8 %105, 4
  br i1 %cmp84.i.3, label %for.body90.i.4, label %for.inc101.i.3.for.cond104.preheader.i_crit_edge

for.inc101.i.3.for.cond104.preheader.i_crit_edge: ; preds = %for.inc101.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond104.preheader.i

for.body90.i.4:                                   ; preds = %for.inc101.i.3
  %106 = ptrtoint ptr %abs252.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %abs252.i, align 4
  %arrayidx92.i.4 = getelementptr i8, ptr %107, i32 4
  %108 = ptrtoint ptr %arrayidx92.i.4 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx92.i.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %109)
  %cmp94.i.4 = icmp sgt i8 %109, -1
  br i1 %cmp94.i.4, label %if.then96.i.4, label %for.body90.i.4.for.inc101.i.4_crit_edge

for.body90.i.4.for.inc101.i.4_crit_edge:          ; preds = %for.body90.i.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc101.i.4

if.then96.i.4:                                    ; preds = %for.body90.i.4
  call void @__sanitizer_cov_trace_pc() #8
  %conv93256.i.4 = zext i8 %109 to i32
  tail call void @input_set_abs_params(ptr noundef nonnull %call2.i, i32 noundef %conv93256.i.4, i32 noundef 8, i32 noundef 248, i32 noundef 2, i32 noundef 4) #6
  br label %for.inc101.i.4

for.inc101.i.4:                                   ; preds = %if.then96.i.4, %for.body90.i.4.for.inc101.i.4_crit_edge
  %110 = ptrtoint ptr %absc54.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %absc54.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %111)
  %cmp84.i.4 = icmp ugt i8 %111, 5
  br i1 %cmp84.i.4, label %for.body90.i.5, label %for.inc101.i.4.for.cond104.preheader.i_crit_edge

for.inc101.i.4.for.cond104.preheader.i_crit_edge: ; preds = %for.inc101.i.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond104.preheader.i

for.body90.i.5:                                   ; preds = %for.inc101.i.4
  %112 = ptrtoint ptr %abs252.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %abs252.i, align 4
  %arrayidx92.i.5 = getelementptr i8, ptr %113, i32 5
  %114 = ptrtoint ptr %arrayidx92.i.5 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx92.i.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %115)
  %cmp94.i.5 = icmp sgt i8 %115, -1
  br i1 %cmp94.i.5, label %if.then96.i.5, label %for.body90.i.5.for.inc101.i.5_crit_edge

for.body90.i.5.for.inc101.i.5_crit_edge:          ; preds = %for.body90.i.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc101.i.5

if.then96.i.5:                                    ; preds = %for.body90.i.5
  call void @__sanitizer_cov_trace_pc() #8
  %conv93256.i.5 = zext i8 %115 to i32
  tail call void @input_set_abs_params(ptr noundef nonnull %call2.i, i32 noundef %conv93256.i.5, i32 noundef 8, i32 noundef 248, i32 noundef 2, i32 noundef 4) #6
  br label %for.inc101.i.5

for.inc101.i.5:                                   ; preds = %if.then96.i.5, %for.body90.i.5.for.inc101.i.5_crit_edge
  %116 = ptrtoint ptr %absc54.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %absc54.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %117)
  %cmp84.i.5 = icmp ugt i8 %117, 6
  br i1 %cmp84.i.5, label %for.body90.i.6, label %for.inc101.i.5.for.cond104.preheader.i_crit_edge

for.inc101.i.5.for.cond104.preheader.i_crit_edge: ; preds = %for.inc101.i.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond104.preheader.i

for.body90.i.6:                                   ; preds = %for.inc101.i.5
  %118 = ptrtoint ptr %abs252.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %abs252.i, align 4
  %arrayidx92.i.6 = getelementptr i8, ptr %119, i32 6
  %120 = ptrtoint ptr %arrayidx92.i.6 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx92.i.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %121)
  %cmp94.i.6 = icmp sgt i8 %121, -1
  br i1 %cmp94.i.6, label %if.then96.i.6, label %for.body90.i.6.for.cond104.preheader.i_crit_edge

for.body90.i.6.for.cond104.preheader.i_crit_edge: ; preds = %for.body90.i.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond104.preheader.i

if.then96.i.6:                                    ; preds = %for.body90.i.6
  call void @__sanitizer_cov_trace_pc() #8
  %conv93256.i.6 = zext i8 %121 to i32
  tail call void @input_set_abs_params(ptr noundef nonnull %call2.i, i32 noundef %conv93256.i.6, i32 noundef 8, i32 noundef 248, i32 noundef 2, i32 noundef 4) #6
  br label %for.cond104.preheader.i

for.cond118.preheader.i:                          ; preds = %for.body112.i.3, %for.body112.i.2.for.cond118.preheader.i_crit_edge, %for.body112.i.1.for.cond118.preheader.i_crit_edge, %for.body112.i.for.cond118.preheader.i_crit_edge, %for.cond104.preheader.i.for.cond118.preheader.i_crit_edge
  %keybit.i = getelementptr inbounds %struct.input_dev, ptr %call2.i, i32 0, i32 6
  %arrayidx124.i = getelementptr %struct.tmdc_port, ptr %call7.i.i.i, i32 0, i32 7, i32 0
  %122 = ptrtoint ptr %arrayidx124.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx124.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %cmp126271.not.i = icmp eq i8 %123, 0
  br i1 %cmp126271.not.i, label %for.cond118.preheader.i.for.end139.i_crit_edge, label %for.cond118.preheader.i.for.body132.i_crit_edge

for.cond118.preheader.i.for.body132.i_crit_edge:  ; preds = %for.cond118.preheader.i
  br label %for.body132.i

for.cond118.preheader.i.for.end139.i_crit_edge:   ; preds = %for.cond118.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end139.i

for.body112.i:                                    ; preds = %for.cond104.preheader.i
  tail call void @input_set_abs_params(ptr noundef nonnull %call2.i, i32 noundef 16, i32 noundef -1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %124 = ptrtoint ptr %hats.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %hats.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %125)
  %cmp106.i = icmp ugt i8 %125, 1
  br i1 %cmp106.i, label %for.body112.i.1, label %for.body112.i.for.cond118.preheader.i_crit_edge

for.body112.i.for.cond118.preheader.i_crit_edge:  ; preds = %for.body112.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond118.preheader.i

for.body112.i.1:                                  ; preds = %for.body112.i
  tail call void @input_set_abs_params(ptr noundef nonnull %call2.i, i32 noundef 17, i32 noundef -1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %126 = ptrtoint ptr %hats.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %hats.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %127)
  %cmp106.i.1 = icmp ugt i8 %127, 2
  br i1 %cmp106.i.1, label %for.body112.i.2, label %for.body112.i.1.for.cond118.preheader.i_crit_edge

for.body112.i.1.for.cond118.preheader.i_crit_edge: ; preds = %for.body112.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond118.preheader.i

for.body112.i.2:                                  ; preds = %for.body112.i.1
  tail call void @input_set_abs_params(ptr noundef nonnull %call2.i, i32 noundef 18, i32 noundef -1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %128 = ptrtoint ptr %hats.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %hats.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %129)
  %cmp106.i.2 = icmp ugt i8 %129, 3
  br i1 %cmp106.i.2, label %for.body112.i.3, label %for.body112.i.2.for.cond118.preheader.i_crit_edge

for.body112.i.2.for.cond118.preheader.i_crit_edge: ; preds = %for.body112.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond118.preheader.i

for.body112.i.3:                                  ; preds = %for.body112.i.2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @input_set_abs_params(ptr noundef nonnull %call2.i, i32 noundef 19, i32 noundef -1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  br label %for.cond118.preheader.i

for.body132.i:                                    ; preds = %for.body132.i.for.body132.i_crit_edge, %for.cond118.preheader.i.for.body132.i_crit_edge
  %j.0273.i = phi i32 [ %inc138.i, %for.body132.i.for.body132.i_crit_edge ], [ 0, %for.cond118.preheader.i.for.body132.i_crit_edge ]
  %130 = ptrtoint ptr %btn254.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %btn254.i, align 4
  %arrayidx134.i = getelementptr i16, ptr %131, i32 %j.0273.i
  %132 = ptrtoint ptr %arrayidx134.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %arrayidx134.i, align 2
  %conv135.i = sext i16 %133 to i32
  tail call void @_set_bit(i32 noundef %conv135.i, ptr noundef %keybit.i) #6
  %inc138.i = add nuw nsw i32 %j.0273.i, 1
  %134 = ptrtoint ptr %arrayidx124.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx124.i, align 1
  %conv125.i = zext i8 %135 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc138.i, i32 %conv125.i)
  %cmp126.i = icmp ult i32 %inc138.i, %conv125.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %j.0273.i)
  %cmp129.i = icmp ult i32 %j.0273.i, 15
  %or.cond247.i = and i1 %cmp129.i, %cmp126.i
  br i1 %or.cond247.i, label %for.body132.i.for.body132.i_crit_edge, label %for.end139.i.loopexit

for.body132.i.for.body132.i_crit_edge:            ; preds = %for.body132.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body132.i

for.end139.i.loopexit:                            ; preds = %for.body132.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv125.i.le = zext i8 %135 to i32
  br label %for.end139.i

for.end139.i:                                     ; preds = %for.end139.i.loopexit, %for.cond118.preheader.i.for.end139.i_crit_edge
  %.lcssa.i = phi i32 [ 0, %for.cond118.preheader.i.for.end139.i_crit_edge ], [ %conv125.i.le, %for.end139.i.loopexit ]
  %arrayidx124.1.i = getelementptr %struct.tmdc_port, ptr %call7.i.i.i, i32 0, i32 7, i32 1
  %136 = ptrtoint ptr %arrayidx124.1.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx124.1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %cmp126271.not.1.i = icmp eq i8 %137, 0
  br i1 %cmp126271.not.1.i, label %for.end139.i.for.end139.1.i_crit_edge, label %for.end139.i.for.body132.1.i_crit_edge

for.end139.i.for.body132.1.i_crit_edge:           ; preds = %for.end139.i
  br label %for.body132.1.i

for.end139.i.for.end139.1.i_crit_edge:            ; preds = %for.end139.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end139.1.i

for.body132.1.i:                                  ; preds = %for.body132.1.i.for.body132.1.i_crit_edge, %for.end139.i.for.body132.1.i_crit_edge
  %j.0273.1.i = phi i32 [ %inc138.1.i, %for.body132.1.i.for.body132.1.i_crit_edge ], [ 0, %for.end139.i.for.body132.1.i_crit_edge ]
  %138 = ptrtoint ptr %btn254.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %btn254.i, align 4
  %add.1.i = add nuw nsw i32 %j.0273.1.i, %.lcssa.i
  %arrayidx134.1.i = getelementptr i16, ptr %139, i32 %add.1.i
  %140 = ptrtoint ptr %arrayidx134.1.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %arrayidx134.1.i, align 2
  %conv135.1.i = sext i16 %141 to i32
  tail call void @_set_bit(i32 noundef %conv135.1.i, ptr noundef %keybit.i) #6
  %inc138.1.i = add nuw nsw i32 %j.0273.1.i, 1
  %142 = ptrtoint ptr %arrayidx124.1.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx124.1.i, align 2
  %conv125.1.i = zext i8 %143 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc138.1.i, i32 %conv125.1.i)
  %cmp126.1.i = icmp ult i32 %inc138.1.i, %conv125.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %j.0273.1.i)
  %cmp129.1.i = icmp ult i32 %j.0273.1.i, 15
  %or.cond247.1.i = and i1 %cmp129.1.i, %cmp126.1.i
  br i1 %or.cond247.1.i, label %for.body132.1.i.for.body132.1.i_crit_edge, label %for.end139.1.i.loopexit

for.body132.1.i.for.body132.1.i_crit_edge:        ; preds = %for.body132.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body132.1.i

for.end139.1.i.loopexit:                          ; preds = %for.body132.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv125.1.i.le = zext i8 %143 to i32
  br label %for.end139.1.i

for.end139.1.i:                                   ; preds = %for.end139.1.i.loopexit, %for.end139.i.for.end139.1.i_crit_edge
  %.lcssa.1.i = phi i32 [ 0, %for.end139.i.for.end139.1.i_crit_edge ], [ %conv125.1.i.le, %for.end139.1.i.loopexit ]
  %add143.1.i = add nuw nsw i32 %.lcssa.1.i, %.lcssa.i
  %arrayidx124.2.i = getelementptr %struct.tmdc_port, ptr %call7.i.i.i, i32 0, i32 7, i32 2
  %144 = ptrtoint ptr %arrayidx124.2.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx124.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %cmp126271.not.2.i = icmp eq i8 %145, 0
  br i1 %cmp126271.not.2.i, label %for.end139.1.i.for.end139.2.i_crit_edge, label %for.end139.1.i.for.body132.2.i_crit_edge

for.end139.1.i.for.body132.2.i_crit_edge:         ; preds = %for.end139.1.i
  br label %for.body132.2.i

for.end139.1.i.for.end139.2.i_crit_edge:          ; preds = %for.end139.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end139.2.i

for.body132.2.i:                                  ; preds = %for.body132.2.i.for.body132.2.i_crit_edge, %for.end139.1.i.for.body132.2.i_crit_edge
  %j.0273.2.i = phi i32 [ %inc138.2.i, %for.body132.2.i.for.body132.2.i_crit_edge ], [ 0, %for.end139.1.i.for.body132.2.i_crit_edge ]
  %146 = ptrtoint ptr %btn254.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %btn254.i, align 4
  %add.2.i = add nuw nsw i32 %j.0273.2.i, %add143.1.i
  %arrayidx134.2.i = getelementptr i16, ptr %147, i32 %add.2.i
  %148 = ptrtoint ptr %arrayidx134.2.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %arrayidx134.2.i, align 2
  %conv135.2.i = sext i16 %149 to i32
  tail call void @_set_bit(i32 noundef %conv135.2.i, ptr noundef %keybit.i) #6
  %inc138.2.i = add nuw nsw i32 %j.0273.2.i, 1
  %150 = ptrtoint ptr %arrayidx124.2.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx124.2.i, align 1
  %conv125.2.i = zext i8 %151 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc138.2.i, i32 %conv125.2.i)
  %cmp126.2.i = icmp ult i32 %inc138.2.i, %conv125.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %j.0273.2.i)
  %cmp129.2.i = icmp ult i32 %j.0273.2.i, 15
  %or.cond247.2.i = and i1 %cmp129.2.i, %cmp126.2.i
  br i1 %or.cond247.2.i, label %for.body132.2.i.for.body132.2.i_crit_edge, label %for.end139.2.i.loopexit

for.body132.2.i.for.body132.2.i_crit_edge:        ; preds = %for.body132.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body132.2.i

for.end139.2.i.loopexit:                          ; preds = %for.body132.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv125.2.i.le = zext i8 %151 to i32
  br label %for.end139.2.i

for.end139.2.i:                                   ; preds = %for.end139.2.i.loopexit, %for.end139.1.i.for.end139.2.i_crit_edge
  %.lcssa.2.i = phi i32 [ 0, %for.end139.1.i.for.end139.2.i_crit_edge ], [ %conv125.2.i.le, %for.end139.2.i.loopexit ]
  %add143.2.i = add nuw nsw i32 %.lcssa.2.i, %add143.1.i
  %arrayidx124.3.i = getelementptr %struct.tmdc_port, ptr %call7.i.i.i, i32 0, i32 7, i32 3
  %152 = ptrtoint ptr %arrayidx124.3.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %arrayidx124.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %cmp126271.not.3.i = icmp eq i8 %153, 0
  br i1 %cmp126271.not.3.i, label %for.end139.2.i.for.end139.3.i_crit_edge, label %for.end139.2.i.for.body132.3.i_crit_edge

for.end139.2.i.for.body132.3.i_crit_edge:         ; preds = %for.end139.2.i
  br label %for.body132.3.i

for.end139.2.i.for.end139.3.i_crit_edge:          ; preds = %for.end139.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end139.3.i

for.body132.3.i:                                  ; preds = %for.body132.3.i.for.body132.3.i_crit_edge, %for.end139.2.i.for.body132.3.i_crit_edge
  %j.0273.3.i = phi i32 [ %inc138.3.i, %for.body132.3.i.for.body132.3.i_crit_edge ], [ 0, %for.end139.2.i.for.body132.3.i_crit_edge ]
  %154 = ptrtoint ptr %btn254.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %btn254.i, align 4
  %add.3.i = add nuw nsw i32 %add143.2.i, %j.0273.3.i
  %arrayidx134.3.i = getelementptr i16, ptr %155, i32 %add.3.i
  %156 = ptrtoint ptr %arrayidx134.3.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %arrayidx134.3.i, align 2
  %conv135.3.i = sext i16 %157 to i32
  tail call void @_set_bit(i32 noundef %conv135.3.i, ptr noundef %keybit.i) #6
  %inc138.3.i = add nuw nsw i32 %j.0273.3.i, 1
  %158 = ptrtoint ptr %arrayidx124.3.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx124.3.i, align 4
  %conv125.3.i = zext i8 %159 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc138.3.i, i32 %conv125.3.i)
  %cmp126.3.i = icmp ult i32 %inc138.3.i, %conv125.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %j.0273.3.i)
  %cmp129.3.i = icmp ult i32 %j.0273.3.i, 15
  %or.cond247.3.i = and i1 %cmp129.3.i, %cmp126.3.i
  br i1 %or.cond247.3.i, label %for.body132.3.i.for.body132.3.i_crit_edge, label %for.body132.3.i.for.end139.3.i_crit_edge

for.body132.3.i.for.end139.3.i_crit_edge:         ; preds = %for.body132.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end139.3.i

for.body132.3.i.for.body132.3.i_crit_edge:        ; preds = %for.body132.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body132.3.i

for.end139.3.i:                                   ; preds = %for.body132.3.i.for.end139.3.i_crit_edge, %for.end139.2.i.for.end139.3.i_crit_edge
  %160 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %call7.i.i.i, align 8
  %call148.i = tail call i32 @input_register_device(ptr noundef %161) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148.i)
  %tobool149.not.i = icmp eq i32 %call148.i, 0
  br i1 %tobool149.not.i, label %for.end139.3.i.for.inc_crit_edge, label %for.end139.3.i.tmdc_setup_port.exit_crit_edge

for.end139.3.i.tmdc_setup_port.exit_crit_edge:    ; preds = %for.end139.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tmdc_setup_port.exit

for.end139.3.i.for.inc_crit_edge:                 ; preds = %for.end139.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

tmdc_setup_port.exit:                             ; preds = %for.end139.3.i.tmdc_setup_port.exit_crit_edge, %if.then14.tmdc_setup_port.exit_crit_edge
  %err.0.i = phi i32 [ %call148.i, %for.end139.3.i.tmdc_setup_port.exit_crit_edge ], [ -12, %if.then14.tmdc_setup_port.exit_crit_edge ]
  tail call void @input_free_device(ptr noundef %call2.i) #6
  tail call void @kfree(ptr noundef %call7.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.065)
  %cmp2168.not = icmp eq i32 %i.065, 0
  br i1 %cmp2168.not, label %tmdc_setup_port.exit.fail2_crit_edge, label %while.body.lr.ph

tmdc_setup_port.exit.fail2_crit_edge:             ; preds = %tmdc_setup_port.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail2

while.body.lr.ph:                                 ; preds = %tmdc_setup_port.exit
  %port = getelementptr inbounds %struct.tmdc, ptr %call7.i.i, i32 0, i32 1
  %162 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %port, align 4
  %tobool24.not = icmp eq ptr %163, null
  br i1 %tobool24.not, label %while.body.lr.ph.fail2_crit_edge, label %if.then25

while.body.lr.ph.fail2_crit_edge:                 ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail2

for.inc:                                          ; preds = %for.end139.3.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.065, 1
  %exitcond.not = icmp eq i32 %inc, 2
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then25:                                        ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #8
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %163, align 4
  tail call void @input_unregister_device(ptr noundef %165) #6
  %166 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %port, align 4
  tail call void @kfree(ptr noundef %167) #6
  br label %fail2

fail2:                                            ; preds = %if.then25, %while.body.lr.ph.fail2_crit_edge, %tmdc_setup_port.exit.fail2_crit_edge, %if.end5.fail2_crit_edge
  %err.0 = phi i32 [ -19, %if.end5.fail2_crit_edge ], [ %err.0.i, %if.then25 ], [ %err.0.i, %while.body.lr.ph.fail2_crit_edge ], [ %err.0.i, %tmdc_setup_port.exit.fail2_crit_edge ]
  tail call void @gameport_close(ptr noundef %gameport) #6
  br label %fail1

fail1:                                            ; preds = %fail2, %if.end.fail1_crit_edge
  %err.1 = phi i32 [ %call2, %if.end.fail1_crit_edge ], [ %err.0, %fail2 ]
  %168 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %fail1, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %fail1 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %data) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tmdc_disconnect(ptr noundef %gameport) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx = getelementptr %struct.tmdc, ptr %1, i32 0, i32 1, i32 0
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @input_unregister_device(ptr noundef %5) #6
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %7) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.tmdc, ptr %1, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %9, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  tail call void @input_unregister_device(ptr noundef %11) #6
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.1, align 4
  tail call void @kfree(ptr noundef %13) #6
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  tail call void @gameport_close(ptr noundef %gameport) #6
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gameport_open(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tmdc_read_packet(ptr noundef %gameport, ptr nocapture noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %speed.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 4
  %0 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed.i, align 8
  %mul.i = mul i32 %1, 60
  %mul.i177 = mul i32 %1, 600
  %div.i178 = sdiv i32 %mul.i177, 1000
  %div.i = sdiv i32 %mul.i, 1000
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !62
  %and.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end15_crit_edge

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_off() #6
  br label %do.end15

do.end15:                                         ; preds = %if.then, %entry.do.end15_crit_edge
  %trigger.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 6
  %3 = ptrtoint ptr %trigger.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %trigger.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %4(ptr noundef %gameport) #6
  br label %gameport_trigger.exit

do.body.i:                                        ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %io.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 3
  %5 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %io.i, align 4
  %and.i179 = and i32 %6, 1048575
  %add.i = or i32 %and.i179, -18874368
  %7 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 -1) #6, !srcloc !64
  br label %gameport_trigger.exit

gameport_trigger.exit:                            ; preds = %do.body.i, %if.then.i
  %read.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 7
  %8 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read.i, align 4
  %tobool.not.i180 = icmp eq ptr %9, null
  br i1 %tobool.not.i180, label %if.else.i, label %if.then.i181

if.then.i181:                                     ; preds = %gameport_trigger.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call zeroext i8 %9(ptr noundef %gameport) #6
  br label %gameport_read.exit

if.else.i:                                        ; preds = %gameport_trigger.exit
  call void @__sanitizer_cov_trace_pc() #8
  %io.i182 = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 3
  %10 = ptrtoint ptr %io.i182 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %io.i182, align 4
  %and.i183 = and i32 %11, 1048575
  %add.i184 = or i32 %and.i183, -18874368
  %12 = inttoptr i32 %add.i184 to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #6, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  br label %gameport_read.exit

gameport_read.exit:                               ; preds = %if.else.i, %if.then.i181
  %retval.0.i = phi i8 [ %call.i, %if.then.i181 ], [ %13, %if.else.i ]
  %14 = lshr i8 %retval.0.i, 4
  %io.i189 = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 3
  br label %do.body19

do.body19:                                        ; preds = %for.inc85.1.do.body19_crit_edge, %gameport_read.exit
  %i.sroa.0.0 = phi i32 [ 0, %gameport_read.exit ], [ %i.sroa.0.1, %for.inc85.1.do.body19_crit_edge ]
  %i.sroa.7.0 = phi i32 [ 0, %gameport_read.exit ], [ %i.sroa.7.1, %for.inc85.1.do.body19_crit_edge ]
  %j.sroa.0.0 = phi i32 [ 0, %gameport_read.exit ], [ %j.sroa.0.2, %for.inc85.1.do.body19_crit_edge ]
  %j.sroa.8.0 = phi i32 [ 0, %gameport_read.exit ], [ %j.sroa.8.2, %for.inc85.1.do.body19_crit_edge ]
  %t.sroa.11.0 = phi i32 [ %div.i178, %gameport_read.exit ], [ %t.sroa.11.4, %for.inc85.1.do.body19_crit_edge ]
  %t.sroa.0.0 = phi i32 [ %div.i178, %gameport_read.exit ], [ %t.sroa.0.4, %for.inc85.1.do.body19_crit_edge ]
  %w.0 = phi i8 [ %14, %gameport_read.exit ], [ %21, %for.inc85.1.do.body19_crit_edge ]
  %15 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read.i, align 4
  %tobool.not.i186 = icmp eq ptr %16, null
  br i1 %tobool.not.i186, label %if.else.i192, label %if.then.i188

if.then.i188:                                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #8
  %call.i187 = tail call zeroext i8 %16(ptr noundef %gameport) #6
  br label %gameport_read.exit194

if.else.i192:                                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %io.i189 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %io.i189, align 4
  %and.i190 = and i32 %18, 1048575
  %add.i191 = or i32 %and.i190, -18874368
  %19 = inttoptr i32 %add.i191 to ptr
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %19) #6, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  br label %gameport_read.exit194

gameport_read.exit194:                            ; preds = %if.else.i192, %if.then.i188
  %retval.0.i193 = phi i8 [ %call.i187, %if.then.i188 ], [ %20, %if.else.i192 ]
  %21 = lshr i8 %retval.0.i193, 4
  %conv28 = zext i8 %21 to i32
  %neg = xor i32 %conv28, -1
  %conv29 = zext i8 %w.0 to i32
  %and = and i32 %neg, 2
  %and30 = and i32 %and, %conv29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %gameport_read.exit194.if.end83_crit_edge, label %if.then32

gameport_read.exit194.if.end83_crit_edge:         ; preds = %gameport_read.exit194
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83

if.then32:                                        ; preds = %gameport_read.exit194
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %t.sroa.0.0)
  %cmp34 = icmp slt i32 %t.sroa.0.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %i.sroa.0.0)
  %cmp37 = icmp sgt i32 %i.sroa.0.0, 12
  %or.cond209 = select i1 %cmp34, i1 true, i1 %cmp37
  br i1 %or.cond209, label %if.then32.for.inc85_crit_edge, label %if.end40

if.then32.for.inc85_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc85

if.end40:                                         ; preds = %if.then32
  %22 = zext i32 %j.sroa.0.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %j.sroa.0.0, label %if.end72 [
    i32 0, label %if.then45
    i32 9, label %if.then62
  ]

if.then45:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %and48 = and i32 %neg, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  %spec.select = select i1 %tobool49.not, i32 %div.i, i32 0
  %arrayidx55 = getelementptr [13 x i8], ptr %data, i32 0, i32 %i.sroa.0.0
  %23 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx55, align 1
  br label %for.inc85

if.then62:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %and64 = and i32 %conv28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  %spec.select210 = select i1 %tobool65.not, i32 %div.i, i32 0
  %inc71 = add nsw i32 %i.sroa.0.0, 1
  br label %for.inc85

if.end72:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %and75 = and i32 %neg, 1
  %inc77 = add i32 %j.sroa.0.0, 1
  %sub = add i32 %j.sroa.0.0, -1
  %shl = shl nuw i32 %and75, %sub
  %arrayidx80 = getelementptr [13 x i8], ptr %data, i32 0, i32 %i.sroa.0.0
  %24 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx80, align 1
  %26 = trunc i32 %shl to i8
  %conv82 = or i8 %25, %26
  store i8 %conv82, ptr %arrayidx80, align 1
  br label %if.end83

if.end83:                                         ; preds = %if.end72, %gameport_read.exit194.if.end83_crit_edge
  %j.sroa.0.1 = phi i32 [ %j.sroa.0.0, %gameport_read.exit194.if.end83_crit_edge ], [ %inc77, %if.end72 ]
  %t.sroa.0.3 = phi i32 [ %t.sroa.0.0, %gameport_read.exit194.if.end83_crit_edge ], [ %div.i, %if.end72 ]
  %dec = add i32 %t.sroa.0.3, -1
  br label %for.inc85

for.inc85:                                        ; preds = %if.end83, %if.then62, %if.then45, %if.then32.for.inc85_crit_edge
  %i.sroa.0.1 = phi i32 [ %i.sroa.0.0, %if.end83 ], [ %i.sroa.0.0, %if.then32.for.inc85_crit_edge ], [ %inc71, %if.then62 ], [ %i.sroa.0.0, %if.then45 ]
  %j.sroa.0.2 = phi i32 [ %j.sroa.0.1, %if.end83 ], [ %j.sroa.0.0, %if.then32.for.inc85_crit_edge ], [ 0, %if.then62 ], [ 1, %if.then45 ]
  %t.sroa.0.4 = phi i32 [ %dec, %if.end83 ], [ %t.sroa.0.0, %if.then32.for.inc85_crit_edge ], [ %spec.select210, %if.then62 ], [ %spec.select, %if.then45 ]
  %27 = lshr i8 %retval.0.i193, 6
  %28 = lshr i8 %w.0, 2
  %conv28.1 = zext i8 %27 to i32
  %neg.1 = xor i32 %conv28.1, -1
  %conv29.1 = zext i8 %28 to i32
  %and.1 = and i32 %neg.1, 2
  %and30.1 = and i32 %and.1, %conv29.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.1)
  %tobool31.not.1 = icmp eq i32 %and30.1, 0
  br i1 %tobool31.not.1, label %for.inc85.if.end83.1_crit_edge, label %if.then32.1

for.inc85.if.end83.1_crit_edge:                   ; preds = %for.inc85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83.1

if.then32.1:                                      ; preds = %for.inc85
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %t.sroa.11.0)
  %cmp34.1 = icmp slt i32 %t.sroa.11.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %i.sroa.7.0)
  %cmp37.1 = icmp sgt i32 %i.sroa.7.0, 12
  %or.cond211 = select i1 %cmp34.1, i1 true, i1 %cmp37.1
  br i1 %or.cond211, label %if.then32.1.for.inc85.1_crit_edge, label %if.end40.1

if.then32.1.for.inc85.1_crit_edge:                ; preds = %if.then32.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc85.1

if.end40.1:                                       ; preds = %if.then32.1
  %29 = zext i32 %j.sroa.8.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %j.sroa.8.0, label %if.end72.1 [
    i32 0, label %if.then45.1
    i32 9, label %if.then62.1
  ]

if.then62.1:                                      ; preds = %if.end40.1
  call void @__sanitizer_cov_trace_pc() #8
  %and64.1 = and i32 %conv28.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.1)
  %tobool65.not.1 = icmp eq i32 %and64.1, 0
  %spec.select212 = select i1 %tobool65.not.1, i32 %div.i, i32 0
  %inc71.1 = add nsw i32 %i.sroa.7.0, 1
  br label %for.inc85.1

if.then45.1:                                      ; preds = %if.end40.1
  call void @__sanitizer_cov_trace_pc() #8
  %and48.1 = and i32 %neg.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.1)
  %tobool49.not.1 = icmp eq i32 %and48.1, 0
  %spec.select213 = select i1 %tobool49.not.1, i32 %div.i, i32 0
  %arrayidx55.1 = getelementptr [13 x i8], ptr %data, i32 1, i32 %i.sroa.7.0
  %30 = ptrtoint ptr %arrayidx55.1 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %arrayidx55.1, align 1
  br label %for.inc85.1

if.end72.1:                                       ; preds = %if.end40.1
  call void @__sanitizer_cov_trace_pc() #8
  %and75.1 = and i32 %neg.1, 1
  %inc77.1 = add i32 %j.sroa.8.0, 1
  %sub.1 = add i32 %j.sroa.8.0, -1
  %shl.1 = shl nuw i32 %and75.1, %sub.1
  %arrayidx80.1 = getelementptr [13 x i8], ptr %data, i32 1, i32 %i.sroa.7.0
  %31 = ptrtoint ptr %arrayidx80.1 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx80.1, align 1
  %33 = trunc i32 %shl.1 to i8
  %conv82.1 = or i8 %32, %33
  store i8 %conv82.1, ptr %arrayidx80.1, align 1
  br label %if.end83.1

if.end83.1:                                       ; preds = %if.end72.1, %for.inc85.if.end83.1_crit_edge
  %j.sroa.8.1 = phi i32 [ %j.sroa.8.0, %for.inc85.if.end83.1_crit_edge ], [ %inc77.1, %if.end72.1 ]
  %t.sroa.11.3 = phi i32 [ %t.sroa.11.0, %for.inc85.if.end83.1_crit_edge ], [ %div.i, %if.end72.1 ]
  %dec.1 = add i32 %t.sroa.11.3, -1
  br label %for.inc85.1

for.inc85.1:                                      ; preds = %if.end83.1, %if.then45.1, %if.then62.1, %if.then32.1.for.inc85.1_crit_edge
  %i.sroa.7.1 = phi i32 [ %i.sroa.7.0, %if.end83.1 ], [ %i.sroa.7.0, %if.then32.1.for.inc85.1_crit_edge ], [ %inc71.1, %if.then62.1 ], [ %i.sroa.7.0, %if.then45.1 ]
  %j.sroa.8.2 = phi i32 [ %j.sroa.8.1, %if.end83.1 ], [ %j.sroa.8.0, %if.then32.1.for.inc85.1_crit_edge ], [ 0, %if.then62.1 ], [ 1, %if.then45.1 ]
  %t.sroa.11.4 = phi i32 [ %dec.1, %if.end83.1 ], [ %t.sroa.11.0, %if.then32.1.for.inc85.1_crit_edge ], [ %spec.select212, %if.then62.1 ], [ %spec.select213, %if.then45.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.sroa.0.4)
  %cmp96 = icmp sgt i32 %t.sroa.0.4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.sroa.11.4)
  %cmp99 = icmp sgt i32 %t.sroa.11.4, 0
  %or.cond = select i1 %cmp96, i1 true, i1 %cmp99
  br i1 %or.cond, label %for.inc85.1.do.body19_crit_edge, label %do.body102

for.inc85.1.do.body19_crit_edge:                  ; preds = %for.inc85.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body19

do.body102:                                       ; preds = %for.inc85.1
  br i1 %tobool.not, label %if.then111, label %do.body102.do.body113_crit_edge

do.body102.do.body113_crit_edge:                  ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body113

if.then111:                                       ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_on() #6
  br label %do.body113

do.body113:                                       ; preds = %if.then111, %do.body102.do.body113_crit_edge
  %34 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !67
  %and.i.i = and i32 %34, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool121.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool121.not, label %if.then125, label %do.body113.do.end128_crit_edge, !prof !68

do.body113.do.end128_crit_edge:                   ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end128

if.then125:                                       ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #6
  br label %do.end128

do.end128:                                        ; preds = %if.then125, %do.body113.do.end128_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #6, !srcloc !69
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %i.sroa.0.1)
  %cmp134 = icmp eq i32 %i.sroa.0.1, 13
  %conv135 = zext i1 %cmp134 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %i.sroa.7.1)
  %cmp137 = icmp eq i32 %i.sroa.7.1, 13
  %shl139 = select i1 %cmp137, i32 2, i32 0
  %or140 = or i32 %shl139, %conv135
  ret i32 %or140
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tmdc_poll(ptr nocapture noundef readonly %gameport) #2 align 64 {
entry:
  %data = alloca [2 x [13 x i8]], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %data) #6
  %driver_data.i.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21, i32 8
  %0 = call ptr @memset(ptr %data, i32 255, i32 26)
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %reads = getelementptr inbounds %struct.tmdc, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %reads to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reads, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %reads, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %call2 = call fastcc i32 @tmdc_read_packet(ptr noundef %6, ptr noundef nonnull %data)
  %exists = getelementptr inbounds %struct.tmdc, ptr %2, i32 0, i32 4
  %7 = ptrtoint ptr %exists to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %exists, align 4
  %9 = trunc i32 %call2 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %9)
  %cmp.not = icmp eq i8 %8, %9
  br i1 %cmp.not, label %entry.for.body_crit_edge, label %entry.if.end20_crit_edge

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.037 = phi i32 [ %inc19, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %bad.035 = phi i8 [ %bad.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.037
  %and = and i32 %shl, %call2
  %10 = ptrtoint ptr %exists to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %exists, align 4
  %conv10 = zext i8 %11 to i32
  %and11 = and i32 %and, %conv10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool.not = icmp eq i32 %and11, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then12

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then12:                                        ; preds = %for.body
  %arrayidx = getelementptr %struct.tmdc, ptr %2, i32 0, i32 1, i32 %i.037
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %arrayidx13 = getelementptr [2 x [13 x i8]], ptr %data, i32 0, i32 %i.037
  %arrayidx.i = getelementptr i8, ptr %arrayidx13, i32 10
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %15 to i32
  %mode.i = getelementptr inbounds %struct.tmdc_port, ptr %13, i32 0, i32 3
  %16 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %17, %conv.i
  br i1 %cmp.not.i, label %for.cond.preheader.i, label %if.then12.for.inc_crit_edge

if.then12.for.inc_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.cond.preheader.i:                             ; preds = %if.then12
  %absc.i = getelementptr inbounds %struct.tmdc_port, ptr %13, i32 0, i32 6
  %18 = ptrtoint ptr %absc.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %absc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp3130.not.i = icmp eq i8 %19, 0
  br i1 %cmp3130.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %abs.i = getelementptr inbounds %struct.tmdc_port, ptr %13, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end10.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0131.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end10.i.for.body.i_crit_edge ]
  %20 = ptrtoint ptr %abs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %abs.i, align 4
  %arrayidx5.i = getelementptr i8, ptr %21, i32 %i.0131.i
  %22 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp7.i = icmp slt i8 %23, 0
  br i1 %cmp7.i, label %for.body.i.for.inc_crit_edge, label %if.end10.i

for.body.i.for.inc_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end10.i:                                       ; preds = %for.body.i
  %conv6126.i = zext i8 %23 to i32
  %24 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %13, align 4
  %arrayidx14.i = getelementptr [16 x i8], ptr @tmdc_byte_a, i32 0, i32 %i.0131.i
  %26 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx14.i, align 1
  %idxprom.i = zext i8 %27 to i32
  %arrayidx15.i = getelementptr i8, ptr %arrayidx13, i32 %idxprom.i
  %28 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx15.i, align 1
  %conv16.i = zext i8 %29 to i32
  tail call void @input_event(ptr noundef %25, i32 noundef 3, i32 noundef %conv6126.i, i32 noundef %conv16.i) #6
  %inc.i = add nuw nsw i32 %i.0131.i, 1
  %30 = ptrtoint ptr %absc.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %absc.i, align 4
  %conv2.i = zext i8 %31 to i32
  %cmp3.i = icmp ult i32 %inc.i, %conv2.i
  br i1 %cmp3.i, label %if.end10.i.for.body.i_crit_edge, label %if.end10.i.for.end.i_crit_edge

if.end10.i.for.end.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.end10.i.for.body.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %if.end10.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %32 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mode.i, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %33, label %for.end.i.sw.epilog.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 4, label %sw.bb35.i
  ]

for.end.i.sw.epilog.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %13, align 4
  %arrayidx20.i = getelementptr i8, ptr %arrayidx13, i32 2
  %37 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx20.i, align 1
  %conv21.i = zext i8 %38 to i32
  %39 = lshr i32 %conv21.i, 3
  %and.i = and i32 %39, 1
  %40 = shl i32 %conv21.i, 30
  %41 = ashr i32 %40, 31
  %sub.i = add nsw i32 %41, %and.i
  tail call void @input_event(ptr noundef %36, i32 noundef 3, i32 noundef 16, i32 noundef %sub.i) #6
  %42 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %13, align 4
  %44 = lshr i32 %conv21.i, 2
  %and30.i = and i32 %44, 1
  %and33.i = and i32 %conv21.i, 1
  %sub34.i = sub nsw i32 %and30.i, %and33.i
  tail call void @input_event(ptr noundef %43, i32 noundef 3, i32 noundef 17, i32 noundef %sub34.i) #6
  br label %sw.epilog.i

sw.bb35.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %13, align 4
  %arrayidx38.i = getelementptr i8, ptr %arrayidx13, i32 4
  %47 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx38.i, align 1
  %conv39.i = zext i8 %48 to i16
  %sub40.i = add nsw i16 %conv39.i, -141
  %div127.i = sdiv i16 %sub40.i, 25
  %div.sext.i = sext i16 %div127.i to i32
  %arrayidx41.i = getelementptr [5 x %struct.anon.69], ptr @tmdc_hat_to_axis, i32 0, i32 %div.sext.i
  %49 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx41.i, align 4
  tail call void @input_event(ptr noundef %46, i32 noundef 3, i32 noundef 16, i32 noundef %50) #6
  %51 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %13, align 4
  %y.i = getelementptr [5 x %struct.anon.69], ptr @tmdc_hat_to_axis, i32 0, i32 %div.sext.i, i32 1
  %53 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %y.i, align 4
  tail call void @input_event(ptr noundef %52, i32 noundef 3, i32 noundef 17, i32 noundef %54) #6
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb35.i, %sw.bb.i, %for.end.i.sw.epilog.i_crit_edge
  %btn.i = getelementptr inbounds %struct.tmdc_port, ptr %13, i32 0, i32 5
  %arrayidx53.i = getelementptr %struct.tmdc_port, ptr %13, i32 0, i32 7, i32 0
  %55 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx53.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %cmp55133.not.i = icmp eq i8 %56, 0
  br i1 %cmp55133.not.i, label %sw.epilog.i.for.end72.i_crit_edge, label %for.body57.lr.ph.i

sw.epilog.i.for.end72.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end72.i

for.body57.lr.ph.i:                               ; preds = %sw.epilog.i
  %arrayidx63.i = getelementptr i8, ptr %arrayidx13, i32 2
  %arrayidx65.i = getelementptr %struct.tmdc_port, ptr %13, i32 0, i32 8, i32 0
  %57 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx63.i, align 1
  %conv64.i = zext i8 %58 to i32
  br label %for.body57.i

for.body57.i:                                     ; preds = %for.body57.i.for.body57.i_crit_edge, %for.body57.lr.ph.i
  %i.1134.i = phi i32 [ 0, %for.body57.lr.ph.i ], [ %inc71.i, %for.body57.i.for.body57.i_crit_edge ]
  %59 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %13, align 4
  %61 = ptrtoint ptr %btn.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %btn.i, align 4
  %arrayidx59.i = getelementptr i16, ptr %62, i32 %i.1134.i
  %63 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arrayidx59.i, align 2
  %conv60.i = sext i16 %64 to i32
  %65 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx65.i, align 1
  %conv66.i = zext i8 %66 to i32
  %add67.i = add nuw nsw i32 %i.1134.i, %conv66.i
  %67 = lshr i32 %conv64.i, %add67.i
  %68 = and i32 %67, 1
  tail call void @input_event(ptr noundef %60, i32 noundef 1, i32 noundef %conv60.i, i32 noundef %68) #6
  %inc71.i = add nuw nsw i32 %i.1134.i, 1
  %69 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx53.i, align 1
  %conv54.i = zext i8 %70 to i32
  %cmp55.i = icmp ult i32 %inc71.i, %conv54.i
  br i1 %cmp55.i, label %for.body57.i.for.body57.i_crit_edge, label %for.end72.i.loopexit

for.body57.i.for.body57.i_crit_edge:              ; preds = %for.body57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body57.i

for.end72.i.loopexit:                             ; preds = %for.body57.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv54.i.le = zext i8 %70 to i32
  br label %for.end72.i

for.end72.i:                                      ; preds = %for.end72.i.loopexit, %sw.epilog.i.for.end72.i_crit_edge
  %.lcssa.i = phi i32 [ 0, %sw.epilog.i.for.end72.i_crit_edge ], [ %conv54.i.le, %for.end72.i.loopexit ]
  %arrayidx53.1.i = getelementptr %struct.tmdc_port, ptr %13, i32 0, i32 7, i32 1
  %71 = ptrtoint ptr %arrayidx53.1.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx53.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %cmp55133.not.1.i = icmp eq i8 %72, 0
  br i1 %cmp55133.not.1.i, label %for.end72.i.for.end72.1.i_crit_edge, label %for.body57.lr.ph.1.i

for.end72.i.for.end72.1.i_crit_edge:              ; preds = %for.end72.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end72.1.i

for.body57.lr.ph.1.i:                             ; preds = %for.end72.i
  %arrayidx63.1.i = getelementptr i8, ptr %arrayidx13, i32 5
  %arrayidx65.1.i = getelementptr %struct.tmdc_port, ptr %13, i32 0, i32 8, i32 1
  %73 = ptrtoint ptr %arrayidx63.1.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx63.1.i, align 1
  %conv64.1.i = zext i8 %74 to i32
  br label %for.body57.1.i

for.body57.1.i:                                   ; preds = %for.body57.1.i.for.body57.1.i_crit_edge, %for.body57.lr.ph.1.i
  %i.1134.1.i = phi i32 [ 0, %for.body57.lr.ph.1.i ], [ %inc71.1.i, %for.body57.1.i.for.body57.1.i_crit_edge ]
  %75 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %13, align 4
  %77 = ptrtoint ptr %btn.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %btn.i, align 4
  %add.1.i = add nuw nsw i32 %i.1134.1.i, %.lcssa.i
  %arrayidx59.1.i = getelementptr i16, ptr %78, i32 %add.1.i
  %79 = ptrtoint ptr %arrayidx59.1.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %arrayidx59.1.i, align 2
  %conv60.1.i = sext i16 %80 to i32
  %81 = ptrtoint ptr %arrayidx65.1.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx65.1.i, align 1
  %conv66.1.i = zext i8 %82 to i32
  %add67.1.i = add nuw nsw i32 %i.1134.1.i, %conv66.1.i
  %83 = lshr i32 %conv64.1.i, %add67.1.i
  %84 = and i32 %83, 1
  tail call void @input_event(ptr noundef %76, i32 noundef 1, i32 noundef %conv60.1.i, i32 noundef %84) #6
  %inc71.1.i = add nuw nsw i32 %i.1134.1.i, 1
  %85 = ptrtoint ptr %arrayidx53.1.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx53.1.i, align 1
  %conv54.1.i = zext i8 %86 to i32
  %cmp55.1.i = icmp ult i32 %inc71.1.i, %conv54.1.i
  br i1 %cmp55.1.i, label %for.body57.1.i.for.body57.1.i_crit_edge, label %for.end72.1.i.loopexit

for.body57.1.i.for.body57.1.i_crit_edge:          ; preds = %for.body57.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body57.1.i

for.end72.1.i.loopexit:                           ; preds = %for.body57.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv54.1.i.le = zext i8 %86 to i32
  br label %for.end72.1.i

for.end72.1.i:                                    ; preds = %for.end72.1.i.loopexit, %for.end72.i.for.end72.1.i_crit_edge
  %.lcssa.1.i = phi i32 [ 0, %for.end72.i.for.end72.1.i_crit_edge ], [ %conv54.1.i.le, %for.end72.1.i.loopexit ]
  %add76.1.i = add nuw nsw i32 %.lcssa.1.i, %.lcssa.i
  %arrayidx53.2.i = getelementptr %struct.tmdc_port, ptr %13, i32 0, i32 7, i32 2
  %87 = ptrtoint ptr %arrayidx53.2.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx53.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %cmp55133.not.2.i = icmp eq i8 %88, 0
  br i1 %cmp55133.not.2.i, label %for.end72.1.i.for.end72.2.i_crit_edge, label %for.body57.lr.ph.2.i

for.end72.1.i.for.end72.2.i_crit_edge:            ; preds = %for.end72.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end72.2.i

for.body57.lr.ph.2.i:                             ; preds = %for.end72.1.i
  %arrayidx63.2.i = getelementptr i8, ptr %arrayidx13, i32 8
  %arrayidx65.2.i = getelementptr %struct.tmdc_port, ptr %13, i32 0, i32 8, i32 2
  %89 = ptrtoint ptr %arrayidx63.2.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx63.2.i, align 1
  %conv64.2.i = zext i8 %90 to i32
  br label %for.body57.2.i

for.body57.2.i:                                   ; preds = %for.body57.2.i.for.body57.2.i_crit_edge, %for.body57.lr.ph.2.i
  %i.1134.2.i = phi i32 [ 0, %for.body57.lr.ph.2.i ], [ %inc71.2.i, %for.body57.2.i.for.body57.2.i_crit_edge ]
  %91 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %13, align 4
  %93 = ptrtoint ptr %btn.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %btn.i, align 4
  %add.2.i = add nuw nsw i32 %i.1134.2.i, %add76.1.i
  %arrayidx59.2.i = getelementptr i16, ptr %94, i32 %add.2.i
  %95 = ptrtoint ptr %arrayidx59.2.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %arrayidx59.2.i, align 2
  %conv60.2.i = sext i16 %96 to i32
  %97 = ptrtoint ptr %arrayidx65.2.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx65.2.i, align 1
  %conv66.2.i = zext i8 %98 to i32
  %add67.2.i = add nuw nsw i32 %i.1134.2.i, %conv66.2.i
  %99 = lshr i32 %conv64.2.i, %add67.2.i
  %100 = and i32 %99, 1
  tail call void @input_event(ptr noundef %92, i32 noundef 1, i32 noundef %conv60.2.i, i32 noundef %100) #6
  %inc71.2.i = add nuw nsw i32 %i.1134.2.i, 1
  %101 = ptrtoint ptr %arrayidx53.2.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx53.2.i, align 1
  %conv54.2.i = zext i8 %102 to i32
  %cmp55.2.i = icmp ult i32 %inc71.2.i, %conv54.2.i
  br i1 %cmp55.2.i, label %for.body57.2.i.for.body57.2.i_crit_edge, label %for.end72.2.i.loopexit

for.body57.2.i.for.body57.2.i_crit_edge:          ; preds = %for.body57.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body57.2.i

for.end72.2.i.loopexit:                           ; preds = %for.body57.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv54.2.i.le = zext i8 %102 to i32
  br label %for.end72.2.i

for.end72.2.i:                                    ; preds = %for.end72.2.i.loopexit, %for.end72.1.i.for.end72.2.i_crit_edge
  %.lcssa.2.i = phi i32 [ 0, %for.end72.1.i.for.end72.2.i_crit_edge ], [ %conv54.2.i.le, %for.end72.2.i.loopexit ]
  %add76.2.i = add nuw nsw i32 %.lcssa.2.i, %add76.1.i
  %arrayidx53.3.i = getelementptr %struct.tmdc_port, ptr %13, i32 0, i32 7, i32 3
  %103 = ptrtoint ptr %arrayidx53.3.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx53.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %cmp55133.not.3.i = icmp eq i8 %104, 0
  br i1 %cmp55133.not.3.i, label %for.end72.2.i.for.end72.3.i_crit_edge, label %for.body57.lr.ph.3.i

for.end72.2.i.for.end72.3.i_crit_edge:            ; preds = %for.end72.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end72.3.i

for.body57.lr.ph.3.i:                             ; preds = %for.end72.2.i
  %arrayidx63.3.i = getelementptr i8, ptr %arrayidx13, i32 9
  %arrayidx65.3.i = getelementptr %struct.tmdc_port, ptr %13, i32 0, i32 8, i32 3
  %105 = ptrtoint ptr %arrayidx63.3.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx63.3.i, align 1
  %conv64.3.i = zext i8 %106 to i32
  br label %for.body57.3.i

for.body57.3.i:                                   ; preds = %for.body57.3.i.for.body57.3.i_crit_edge, %for.body57.lr.ph.3.i
  %i.1134.3.i = phi i32 [ 0, %for.body57.lr.ph.3.i ], [ %inc71.3.i, %for.body57.3.i.for.body57.3.i_crit_edge ]
  %107 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %13, align 4
  %109 = ptrtoint ptr %btn.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %btn.i, align 4
  %add.3.i = add nuw nsw i32 %add76.2.i, %i.1134.3.i
  %arrayidx59.3.i = getelementptr i16, ptr %110, i32 %add.3.i
  %111 = ptrtoint ptr %arrayidx59.3.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %arrayidx59.3.i, align 2
  %conv60.3.i = sext i16 %112 to i32
  %113 = ptrtoint ptr %arrayidx65.3.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx65.3.i, align 1
  %conv66.3.i = zext i8 %114 to i32
  %add67.3.i = add nuw nsw i32 %i.1134.3.i, %conv66.3.i
  %115 = lshr i32 %conv64.3.i, %add67.3.i
  %116 = and i32 %115, 1
  tail call void @input_event(ptr noundef %108, i32 noundef 1, i32 noundef %conv60.3.i, i32 noundef %116) #6
  %inc71.3.i = add nuw nsw i32 %i.1134.3.i, 1
  %117 = ptrtoint ptr %arrayidx53.3.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx53.3.i, align 1
  %conv54.3.i = zext i8 %118 to i32
  %cmp55.3.i = icmp ult i32 %inc71.3.i, %conv54.3.i
  br i1 %cmp55.3.i, label %for.body57.3.i.for.body57.3.i_crit_edge, label %for.body57.3.i.for.end72.3.i_crit_edge

for.body57.3.i.for.end72.3.i_crit_edge:           ; preds = %for.body57.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end72.3.i

for.body57.3.i.for.body57.3.i_crit_edge:          ; preds = %for.body57.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body57.3.i

for.end72.3.i:                                    ; preds = %for.body57.3.i.for.end72.3.i_crit_edge, %for.end72.2.i.for.end72.3.i_crit_edge
  %119 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %13, align 4
  tail call void @input_event(ptr noundef %120, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %for.inc

for.inc:                                          ; preds = %for.end72.3.i, %for.body.i.for.inc_crit_edge, %if.then12.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %bad.1 = phi i8 [ %bad.035, %for.body.for.inc_crit_edge ], [ 1, %if.then12.for.inc_crit_edge ], [ %bad.035, %for.end72.3.i ], [ %bad.035, %for.body.i.for.inc_crit_edge ]
  %inc19 = add nuw nsw i32 %i.037, 1
  %exitcond.not = icmp eq i32 %inc19, 2
  br i1 %exitcond.not, label %for.inc.if.end20_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.if.end20_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.end20:                                         ; preds = %for.inc.if.end20_crit_edge, %entry.if.end20_crit_edge
  %bad.2 = phi i8 [ 1, %entry.if.end20_crit_edge ], [ %bad.1, %for.inc.if.end20_crit_edge ]
  %conv21 = zext i8 %bad.2 to i32
  %bads = getelementptr inbounds %struct.tmdc, ptr %2, i32 0, i32 3
  %121 = ptrtoint ptr %bads to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %bads, align 4
  %add = add i32 %122, %conv21
  store i32 %add, ptr %bads, align 4
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %data) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmdc_open(ptr nocapture noundef readonly %dev) #2 align 64 {
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
define internal void @tmdc_close(ptr nocapture noundef readonly %dev) #2 align 64 {
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
declare dso_local void @gameport_start_polling(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_stop_polling(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

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
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__UNIQUE_ID_author223, !1, !"__UNIQUE_ID_author223", i1 false, i1 false}
!1 = !{!"../drivers/input/joystick/tmdc.c", i32 26, i32 1}
!2 = !{ptr @__UNIQUE_ID_description224, !3, !"__UNIQUE_ID_description224", i1 false, i1 false}
!3 = !{!"../drivers/input/joystick/tmdc.c", i32 27, i32 1}
!4 = !{ptr @__UNIQUE_ID_file225, !5, !"__UNIQUE_ID_file225", i1 false, i1 false}
!5 = !{!"../drivers/input/joystick/tmdc.c", i32 28, i32 1}
!6 = !{ptr @__UNIQUE_ID_license226, !5, !"__UNIQUE_ID_license226", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_tmdc__227_422_tmdc_drv_init6, !8, !"__initcall__kmod_tmdc__227_422_tmdc_drv_init6", i1 false, i1 false}
!8 = !{!"../drivers/input/joystick/tmdc.c", i32 422, i32 1}
!9 = !{ptr @__exitcall_tmdc_drv_exit, !8, !"__exitcall_tmdc_drv_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/input/joystick/tmdc.c", i32 417, i32 17}
!13 = !{ptr @tmdc_drv, !14, !"tmdc_drv", i1 false, i1 false}
!14 = !{!"../drivers/input/joystick/tmdc.c", i32 412, i32 31}
!15 = !{ptr @tmdc_byte_a, !16, !"tmdc_byte_a", i1 false, i1 false}
!16 = !{!"../drivers/input/joystick/tmdc.c", i32 48, i32 28}
!17 = distinct !{null, !18, !"tmdc_byte_d", i1 false, i1 false}
!18 = !{!"../drivers/input/joystick/tmdc.c", i32 49, i32 28}
!19 = !{ptr @tmdc_hat_to_axis, !20, !"tmdc_hat_to_axis", i1 false, i1 false}
!20 = !{!"../drivers/input/joystick/tmdc.c", i32 74, i32 3}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/input/joystick/tmdc.c", i32 300, i32 43}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/input/joystick/tmdc.c", i32 86, i32 9}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/input/joystick/tmdc.c", i32 87, i32 9}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/input/joystick/tmdc.c", i32 88, i32 9}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/input/joystick/tmdc.c", i32 89, i32 9}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/joystick/tmdc.c", i32 90, i32 9}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/input/joystick/tmdc.c", i32 91, i32 9}
!35 = !{ptr @tmdc_models, !36, !"tmdc_models", i1 false, i1 false}
!36 = !{!"../drivers/input/joystick/tmdc.c", i32 85, i32 3}
!37 = !{ptr @tmdc_abs, !38, !"tmdc_abs", i1 false, i1 false}
!38 = !{!"../drivers/input/joystick/tmdc.c", i32 51, i32 26}
!39 = !{ptr @tmdc_btn_joy, !40, !"tmdc_btn_joy", i1 false, i1 false}
!40 = !{!"../drivers/input/joystick/tmdc.c", i32 62, i32 20}
!41 = !{ptr @tmdc_btn_pad, !42, !"tmdc_btn_pad", i1 false, i1 false}
!42 = !{!"../drivers/input/joystick/tmdc.c", i32 60, i32 20}
!43 = !{ptr @tmdc_abs_at, !44, !"tmdc_abs_at", i1 false, i1 false}
!44 = !{!"../drivers/input/joystick/tmdc.c", i32 55, i32 26}
!45 = !{ptr @tmdc_btn_at, !46, !"tmdc_btn_at", i1 false, i1 false}
!46 = !{!"../drivers/input/joystick/tmdc.c", i32 67, i32 20}
!47 = !{ptr @tmdc_abs_fm, !48, !"tmdc_abs_fm", i1 false, i1 false}
!48 = !{!"../drivers/input/joystick/tmdc.c", i32 57, i32 26}
!49 = !{ptr @tmdc_btn_fm, !50, !"tmdc_btn_fm", i1 false, i1 false}
!50 = !{!"../drivers/input/joystick/tmdc.c", i32 65, i32 20}
!51 = !{ptr @tmdc_abs_hat, !52, !"tmdc_abs_hat", i1 false, i1 false}
!52 = !{!"../drivers/input/joystick/tmdc.c", i32 53, i32 26}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{i64 589732, i64 589793}
!63 = !{i64 2152738713}
!64 = !{i64 4948966}
!65 = !{i64 4949361}
!66 = !{i64 2152739288}
!67 = !{i64 592464}
!68 = !{!"branch_weights", i32 1, i32 2000}
!69 = !{i64 592749}
