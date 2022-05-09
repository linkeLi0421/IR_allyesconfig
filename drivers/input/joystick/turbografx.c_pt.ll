; ModuleID = '/llk/IR_all_yes/drivers/input/joystick/turbografx.c_pt.bc'
source_filename = "../drivers/input/joystick/turbografx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.parport_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, i8, %struct.list_head }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.tgfx_config = type { [8 x i32], i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.parport = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, %struct.device, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.timer_list, i32, ptr, [5 x %struct.parport_device_info], %struct.ieee1284_info, ptr, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.rwlock_t, i32, %struct.atomic_t, i32, ptr, %struct.list_head, [3 x ptr] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.parport_device_info = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.ieee1284_info = type { i32, i32, %struct.semaphore }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.tgfx = type { ptr, %struct.timer_list, [7 x ptr], [7 x [64 x i8]], [7 x [32 x i8]], i32, i32, i32, %struct.mutex }
%struct.pardev_cb = type { ptr, ptr, ptr, ptr, i32 }
%struct.pardevice = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.device, i8, ptr, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.parport_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_author223 = internal constant [50 x i8] c"turbografx.author=Vojtech Pavlik <vojtech@ucw.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description224 = internal constant [65 x i8] c"turbografx.description=TurboGraFX parallel port interface driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file225 = internal constant [50 x i8] c"turbografx.file=drivers/input/joystick/turbografx\00", section ".modinfo", align 1
@__UNIQUE_ID_license226 = internal constant [23 x i8] c"turbografx.license=GPL\00", section ".modinfo", align 1
@__param_str_map = internal constant [15 x i8] c"turbografx.map\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_map = internal constant %struct.kparam_array { i32 8, i32 4, ptr getelementptr (i8, ptr @tgfx_cfg, i64 32), ptr @param_ops_int, ptr @tgfx_cfg }, align 4
@__param_map = internal constant %struct.kernel_param { ptr @__param_str_map, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @__param_arr_map } }, section "__param", align 4
@__UNIQUE_ID_maptype227 = internal constant [37 x i8] c"turbografx.parmtype=map:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_map228 = internal constant [83 x i8] c"turbografx.parm=map:Describes first set of devices (<parport#>,<js1>,<js2>,..<js7>\00", section ".modinfo", align 1
@__param_str_map2 = internal constant [16 x i8] c"turbografx.map2\00", align 1
@__param_arr_map2 = internal constant %struct.kparam_array { i32 8, i32 4, ptr getelementptr (i8, ptr @tgfx_cfg, i64 68), ptr @param_ops_int, ptr getelementptr (i8, ptr @tgfx_cfg, i64 36) }, align 4
@__param_map2 = internal constant %struct.kernel_param { ptr @__param_str_map2, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @__param_arr_map2 } }, section "__param", align 4
@__UNIQUE_ID_map2type229 = internal constant [38 x i8] c"turbografx.parmtype=map2:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_map2230 = internal constant [53 x i8] c"turbografx.parm=map2:Describes second set of devices\00", section ".modinfo", align 1
@__param_str_map3 = internal constant [16 x i8] c"turbografx.map3\00", align 1
@__param_arr_map3 = internal constant %struct.kparam_array { i32 8, i32 4, ptr getelementptr (i8, ptr @tgfx_cfg, i64 104), ptr @param_ops_int, ptr getelementptr (i8, ptr @tgfx_cfg, i64 72) }, align 4
@__param_map3 = internal constant %struct.kernel_param { ptr @__param_str_map3, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @__param_arr_map3 } }, section "__param", align 4
@__UNIQUE_ID_map3type231 = internal constant [38 x i8] c"turbografx.parmtype=map3:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_map3232 = internal constant [52 x i8] c"turbografx.parm=map3:Describes third set of devices\00", section ".modinfo", align 1
@tgfx_parport_driver = internal global { %struct.parport_driver, [52 x i8] } { %struct.parport_driver { ptr @.str, ptr null, ptr @tgfx_detach, ptr @tgfx_attach, ptr null, %struct.device_driver zeroinitializer, i8 1, %struct.list_head zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_turbografx__234_311_tgfx_init6 = internal global ptr @tgfx_init, section ".initcall6.init", align 4
@__exitcall_tgfx_exit = internal global ptr @tgfx_exit, section ".exitcall.exit", align 4
@tgfx_cfg = internal global { [3 x %struct.tgfx_config], [52 x i8] } zeroinitializer, align 32
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"turbografx\00", [21 x i8] zeroinitializer }, align 32
@tgfx_base = internal global { [3 x ptr], [20 x i8] } zeroinitializer, align 32
@tgfx_attach.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tgfx_attach\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/input/joystick/turbografx.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Not using parport%d.\0A\00", [42 x i8] zeroinitializer }, align 32
@tgfx_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013parport busy already - lp.o loaded?\0A\00", [57 x i8] zeroinitializer }, align 32
@tgfx_attach._entry_ptr = internal global ptr @tgfx_attach._entry, section ".printk_index", align 4
@tgfx_attach._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013turbografx.c: Not enough memory\0A\00", [61 x i8] zeroinitializer }, align 32
@tgfx_attach._entry_ptr.7 = internal global ptr @tgfx_attach._entry.5, section ".printk_index", align 4
@tgfx_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&tgfx->sem\00", [21 x i8] zeroinitializer }, align 32
@tgfx_attach.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"(&tgfx->timer)\00", [17 x i8] zeroinitializer }, align 32
@tgfx_attach._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013turbografx.c: Invalid number of buttons %d\0A\00", [50 x i8] zeroinitializer }, align 32
@tgfx_attach._entry_ptr.13 = internal global ptr @tgfx_attach._entry.11, section ".printk_index", align 4
@tgfx_attach._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013turbografx.c: Not enough memory for input device\0A\00", [44 x i8] zeroinitializer }, align 32
@tgfx_attach._entry_ptr.16 = internal global ptr @tgfx_attach._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"TurboGraFX %d-button Multisystem joystick\00", [54 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s/input%d\00", [21 x i8] zeroinitializer }, align 32
@tgfx_buttons = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 288, i32 289, i32 290, i32 291, i32 292], [44 x i8] zeroinitializer }, align 32
@tgfx_attach._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.1, ptr @.str.2, i32 234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013turbografx.c: No valid devices specified\0A\00", [52 x i8] zeroinitializer }, align 32
@tgfx_attach._entry_ptr.21 = internal global ptr @tgfx_attach._entry.19, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@tgfx_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013turbografx.c: at least one joystick must be specified\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tgfx_init\00", [22 x i8] zeroinitializer }, align 32
@tgfx_init._entry_ptr = internal global ptr @tgfx_init._entry, section ".printk_index", align 4
@___asan_gen_.24 = private unnamed_addr constant [20 x i8] c"tgfx_parport_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 276, i32 30 }
@___asan_gen_.27 = private unnamed_addr constant [9 x i8] c"tgfx_cfg\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 36, i32 27 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 277, i32 10 }
@___asan_gen_.33 = private unnamed_addr constant [10 x i8] c"tgfx_base\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 70, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 162, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 174, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 180, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 184, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 187, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 194, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 200, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 206, i32 5 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 208, i32 5 }
@___asan_gen_.87 = private unnamed_addr constant [13 x i8] c"tgfx_buttons\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 58, i32 12 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 234, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private constant [39 x i8] c"../drivers/input/joystick/turbografx.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 293, i32 4 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_author223, ptr @__UNIQUE_ID_description224, ptr @__UNIQUE_ID_file225, ptr @__UNIQUE_ID_license226, ptr @__UNIQUE_ID_map2230, ptr @__UNIQUE_ID_map228, ptr @__UNIQUE_ID_map2type229, ptr @__UNIQUE_ID_map3232, ptr @__UNIQUE_ID_map3type231, ptr @__UNIQUE_ID_maptype227, ptr @__exitcall_tgfx_exit, ptr @__initcall__kmod_turbografx__234_311_tgfx_init6, ptr @__param_map, ptr @__param_map2, ptr @__param_map3, ptr @tgfx_attach._entry, ptr @tgfx_attach._entry.11, ptr @tgfx_attach._entry.14, ptr @tgfx_attach._entry.19, ptr @tgfx_attach._entry.5, ptr @tgfx_attach._entry_ptr, ptr @tgfx_attach._entry_ptr.13, ptr @tgfx_attach._entry_ptr.16, ptr @tgfx_attach._entry_ptr.21, ptr @tgfx_attach._entry_ptr.7, ptr @tgfx_exit, ptr @tgfx_init._entry, ptr @tgfx_init._entry_ptr, ptr @tgfx_parport_driver, ptr @tgfx_cfg, ptr @.str, ptr @tgfx_base, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @tgfx_attach.__key, ptr @.str.8, ptr @tgfx_attach.__key.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @tgfx_buttons, ptr @.str.20, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tgfx_parport_driver to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tgfx_cfg to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tgfx_base to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tgfx_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tgfx_attach._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tgfx_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tgfx_attach.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tgfx_attach._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tgfx_attach._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tgfx_buttons to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tgfx_attach._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tgfx_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tgfx_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @parport_unregister_driver(ptr noundef nonnull @tgfx_parport_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tgfx_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body.outer

for.body.outer:                                   ; preds = %for.inc.thread.for.body.outer_crit_edge, %entry
  %tobool.not = phi i1 [ false, %for.inc.thread.for.body.outer_crit_edge ], [ true, %entry ]
  %i.019.ph = phi i32 [ %inc23, %for.inc.thread.for.body.outer_crit_edge ], [ 0, %entry ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.outer
  %i.019 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %i.019.ph, %for.body.outer ]
  %nargs = getelementptr [3 x %struct.tgfx_config], ptr @tgfx_cfg, i32 0, i32 %i.019, i32 1
  %0 = ptrtoint ptr %nargs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nargs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %arrayidx = getelementptr [3 x %struct.tgfx_config], ptr @tgfx_cfg, i32 0, i32 %i.019
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp4 = icmp slt i32 %3, 0
  br i1 %cmp4, label %lor.lhs.false.for.inc_crit_edge, label %if.end

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp7 = icmp ult i32 %1, 2
  br i1 %cmp7, label %do.end, label %for.inc.thread

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #10
  br label %cleanup

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.thread:                                   ; preds = %if.end
  %inc23 = add nuw nsw i32 %i.019, 1
  %exitcond.not24 = icmp eq i32 %inc23, 3
  br i1 %exitcond.not24, label %for.inc.thread.if.end11_crit_edge, label %for.inc.thread.for.body.outer_crit_edge

for.inc.thread.for.body.outer_crit_edge:          ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.outer

for.inc.thread.if.end11_crit_edge:                ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

for.end:                                          ; preds = %for.inc
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %for.end.if.end11_crit_edge

for.end.if.end11_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %for.end.if.end11_crit_edge, %for.inc.thread.if.end11_crit_edge
  %call12 = tail call i32 @__parport_register_driver(ptr noundef nonnull @tgfx_parport_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %for.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call12, %if.end11 ], [ -19, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tgfx_detach(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %number = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 26
  %0 = load ptr, ptr @tgfx_base, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %land.lhs.true

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %entry
  %parportno = getelementptr inbounds %struct.tgfx, ptr %0, i32 0, i32 7
  %1 = ptrtoint ptr %parportno to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %parportno, align 4
  %3 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %number, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp2 = icmp eq i32 %2, %4
  br i1 %cmp2, label %land.lhs.true.if.end5_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %entry.for.inc_crit_edge
  %5 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @tgfx_base, i32 0, i32 1), align 4
  %tobool.not.1 = icmp eq ptr %5, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %parportno.1 = getelementptr inbounds %struct.tgfx, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %parportno.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %parportno.1, align 4
  %8 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %number, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp2.1 = icmp eq i32 %7, %9
  br i1 %cmp2.1, label %land.lhs.true.1.if.end5_crit_edge, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

land.lhs.true.1.if.end5_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %10 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @tgfx_base, i32 0, i32 2), align 4
  %tobool.not.2 = icmp eq ptr %10, null
  br i1 %tobool.not.2, label %for.inc.1.cleanup_crit_edge, label %land.lhs.true.2

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.2:                                  ; preds = %for.inc.1
  %parportno.2 = getelementptr inbounds %struct.tgfx, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %parportno.2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %parportno.2, align 4
  %13 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %number, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp2.2 = icmp eq i32 %12, %14
  br i1 %cmp2.2, label %land.lhs.true.2.if.end5_crit_edge, label %land.lhs.true.2.cleanup_crit_edge

land.lhs.true.2.cleanup_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.2.if.end5_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.end5:                                          ; preds = %land.lhs.true.2.if.end5_crit_edge, %land.lhs.true.1.if.end5_crit_edge, %land.lhs.true.if.end5_crit_edge
  %i.038.lcssa = phi i32 [ 0, %land.lhs.true.if.end5_crit_edge ], [ 1, %land.lhs.true.1.if.end5_crit_edge ], [ 2, %land.lhs.true.2.if.end5_crit_edge ]
  %arrayidx6 = getelementptr [3 x ptr], ptr @tgfx_base, i32 0, i32 %i.038.lcssa
  %15 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx6, align 4
  store ptr null, ptr %arrayidx6, align 4
  %arrayidx11 = getelementptr %struct.tgfx, ptr %16, i32 0, i32 2, i32 0
  %17 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx11, align 4
  %tobool12.not = icmp eq ptr %18, null
  br i1 %tobool12.not, label %if.end5.for.inc17_crit_edge, label %if.then13

if.end5.for.inc17_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17

if.then13:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @input_unregister_device(ptr noundef nonnull %18) #7
  br label %for.inc17

for.inc17:                                        ; preds = %if.then13, %if.end5.for.inc17_crit_edge
  %arrayidx11.1 = getelementptr %struct.tgfx, ptr %16, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx11.1, align 4
  %tobool12.not.1 = icmp eq ptr %20, null
  br i1 %tobool12.not.1, label %for.inc17.for.inc17.1_crit_edge, label %if.then13.1

for.inc17.for.inc17.1_crit_edge:                  ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17.1

if.then13.1:                                      ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @input_unregister_device(ptr noundef nonnull %20) #7
  br label %for.inc17.1

for.inc17.1:                                      ; preds = %if.then13.1, %for.inc17.for.inc17.1_crit_edge
  %arrayidx11.2 = getelementptr %struct.tgfx, ptr %16, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx11.2, align 4
  %tobool12.not.2 = icmp eq ptr %22, null
  br i1 %tobool12.not.2, label %for.inc17.1.for.inc17.2_crit_edge, label %if.then13.2

for.inc17.1.for.inc17.2_crit_edge:                ; preds = %for.inc17.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17.2

if.then13.2:                                      ; preds = %for.inc17.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @input_unregister_device(ptr noundef nonnull %22) #7
  br label %for.inc17.2

for.inc17.2:                                      ; preds = %if.then13.2, %for.inc17.1.for.inc17.2_crit_edge
  %arrayidx11.3 = getelementptr %struct.tgfx, ptr %16, i32 0, i32 2, i32 3
  %23 = ptrtoint ptr %arrayidx11.3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx11.3, align 4
  %tobool12.not.3 = icmp eq ptr %24, null
  br i1 %tobool12.not.3, label %for.inc17.2.for.inc17.3_crit_edge, label %if.then13.3

for.inc17.2.for.inc17.3_crit_edge:                ; preds = %for.inc17.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17.3

if.then13.3:                                      ; preds = %for.inc17.2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @input_unregister_device(ptr noundef nonnull %24) #7
  br label %for.inc17.3

for.inc17.3:                                      ; preds = %if.then13.3, %for.inc17.2.for.inc17.3_crit_edge
  %arrayidx11.4 = getelementptr %struct.tgfx, ptr %16, i32 0, i32 2, i32 4
  %25 = ptrtoint ptr %arrayidx11.4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx11.4, align 4
  %tobool12.not.4 = icmp eq ptr %26, null
  br i1 %tobool12.not.4, label %for.inc17.3.for.inc17.4_crit_edge, label %if.then13.4

for.inc17.3.for.inc17.4_crit_edge:                ; preds = %for.inc17.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17.4

if.then13.4:                                      ; preds = %for.inc17.3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @input_unregister_device(ptr noundef nonnull %26) #7
  br label %for.inc17.4

for.inc17.4:                                      ; preds = %if.then13.4, %for.inc17.3.for.inc17.4_crit_edge
  %arrayidx11.5 = getelementptr %struct.tgfx, ptr %16, i32 0, i32 2, i32 5
  %27 = ptrtoint ptr %arrayidx11.5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx11.5, align 4
  %tobool12.not.5 = icmp eq ptr %28, null
  br i1 %tobool12.not.5, label %for.inc17.4.for.inc17.5_crit_edge, label %if.then13.5

for.inc17.4.for.inc17.5_crit_edge:                ; preds = %for.inc17.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17.5

if.then13.5:                                      ; preds = %for.inc17.4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @input_unregister_device(ptr noundef nonnull %28) #7
  br label %for.inc17.5

for.inc17.5:                                      ; preds = %if.then13.5, %for.inc17.4.for.inc17.5_crit_edge
  %arrayidx11.6 = getelementptr %struct.tgfx, ptr %16, i32 0, i32 2, i32 6
  %29 = ptrtoint ptr %arrayidx11.6 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx11.6, align 4
  %tobool12.not.6 = icmp eq ptr %30, null
  br i1 %tobool12.not.6, label %for.inc17.5.for.inc17.6_crit_edge, label %if.then13.6

for.inc17.5.for.inc17.6_crit_edge:                ; preds = %for.inc17.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17.6

if.then13.6:                                      ; preds = %for.inc17.5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @input_unregister_device(ptr noundef nonnull %30) #7
  br label %for.inc17.6

for.inc17.6:                                      ; preds = %if.then13.6, %for.inc17.5.for.inc17.6_crit_edge
  %31 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %16, align 4
  tail call void @parport_unregister_device(ptr noundef %32) #7
  tail call void @kfree(ptr noundef %16) #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc17.6, %land.lhs.true.2.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tgfx_attach(ptr noundef %pp) #2 align 64 {
entry:
  %tgfx_parport_cb = alloca %struct.pardev_cb, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tgfx_parport_cb) #7
  %0 = getelementptr inbounds %struct.pardev_cb, ptr %tgfx_parport_cb, i32 0, i32 4
  %number = getelementptr inbounds %struct.parport, ptr %pp, i32 0, i32 26
  %1 = load i32, ptr getelementptr inbounds ([3 x %struct.tgfx_config], ptr @tgfx_cfg, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %entry.for.inc_crit_edge, label %lor.lhs.false

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr @tgfx_cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp4 = icmp slt i32 %2, 0
  br i1 %cmp4, label %lor.lhs.false.for.inc_crit_edge, label %if.end

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %3 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %number, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp8 = icmp eq i32 %2, %4
  br i1 %cmp8, label %if.end.if.end18_crit_edge, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %entry.for.inc_crit_edge
  %5 = load i32, ptr getelementptr inbounds ([3 x %struct.tgfx_config], ptr @tgfx_cfg, i32 0, i32 1, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1.1 = icmp eq i32 %5, 0
  br i1 %cmp1.1, label %for.inc.for.inc.1_crit_edge, label %lor.lhs.false.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

lor.lhs.false.1:                                  ; preds = %for.inc
  %6 = load i32, ptr getelementptr inbounds ([3 x %struct.tgfx_config], ptr @tgfx_cfg, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp4.1 = icmp slt i32 %6, 0
  br i1 %cmp4.1, label %lor.lhs.false.1.for.inc.1_crit_edge, label %if.end.1

lor.lhs.false.1.for.inc.1_crit_edge:              ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.end.1:                                         ; preds = %lor.lhs.false.1
  %7 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %number, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp8.1 = icmp eq i32 %6, %8
  br i1 %cmp8.1, label %if.end.1.if.end18_crit_edge, label %if.end.1.for.inc.1_crit_edge

if.end.1.for.inc.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.end.1.if.end18_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

for.inc.1:                                        ; preds = %if.end.1.for.inc.1_crit_edge, %lor.lhs.false.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %9 = load i32, ptr getelementptr inbounds ([3 x %struct.tgfx_config], ptr @tgfx_cfg, i32 0, i32 2, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1.2 = icmp eq i32 %9, 0
  br i1 %cmp1.2, label %for.inc.1.do.body_crit_edge, label %lor.lhs.false.2

for.inc.1.do.body_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

lor.lhs.false.2:                                  ; preds = %for.inc.1
  %10 = load i32, ptr getelementptr inbounds ([3 x %struct.tgfx_config], ptr @tgfx_cfg, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp4.2 = icmp slt i32 %10, 0
  br i1 %cmp4.2, label %lor.lhs.false.2.do.body_crit_edge, label %if.end.2

lor.lhs.false.2.do.body_crit_edge:                ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end.2:                                         ; preds = %lor.lhs.false.2
  %11 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %number, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp8.2 = icmp eq i32 %10, %12
  br i1 %cmp8.2, label %if.end.2.if.end18_crit_edge, label %if.end.2.do.body_crit_edge

if.end.2.do.body_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end.2.if.end18_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

do.body:                                          ; preds = %if.end.2.do.body_crit_edge, %lor.lhs.false.2.do.body_crit_edge, %for.inc.1.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tgfx_attach.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tgfx_attach, %if.then15)) #7
          to label %cleanup [label %if.then15], !srcloc !91

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %number, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @tgfx_attach.__UNIQUE_ID_ddebug233, ptr noundef nonnull @.str.3, i32 noundef %14) #7
  br label %cleanup

if.end18:                                         ; preds = %if.end.2.if.end18_crit_edge, %if.end.1.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %port_idx.0231.lcssa = phi i32 [ 0, %if.end.if.end18_crit_edge ], [ 1, %if.end.1.if.end18_crit_edge ], [ 2, %if.end.2.if.end18_crit_edge ]
  %add.ptr = getelementptr [3 x %struct.tgfx_config], ptr @tgfx_cfg, i32 0, i32 %port_idx.0231.lcssa, i32 0, i32 1
  %nargs22 = getelementptr [3 x %struct.tgfx_config], ptr @tgfx_cfg, i32 0, i32 %port_idx.0231.lcssa, i32 1
  %15 = ptrtoint ptr %nargs22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nargs22, align 4
  %sub = add i32 %16, -1
  %17 = call ptr @memset(ptr %tgfx_parport_cb, i32 0, i32 16)
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %0, align 4
  %call23 = call ptr @parport_register_dev_model(ptr noundef %pp, ptr noundef nonnull @.str, ptr noundef nonnull %tgfx_parport_cb, i32 noundef %port_idx.0231.lcssa) #7
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %do.end28, label %if.end31

do.end28:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  br label %cleanup

if.end31:                                         ; preds = %if.end18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 856) #11
  %tobool33.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool33.not, label %do.end37, label %do.body41

do.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #10
  br label %err_unreg_pardev

do.body41:                                        ; preds = %if.end31
  %sem = getelementptr inbounds %struct.tgfx, ptr %call7.i.i, i32 0, i32 8
  call void @__mutex_init(ptr noundef %sem, ptr noundef nonnull @.str.8, ptr noundef nonnull @tgfx_attach.__key) #7
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call23, ptr %call7.i.i, align 8
  %21 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %number, align 4
  %parportno = getelementptr inbounds %struct.tgfx, ptr %call7.i.i, i32 0, i32 7
  %23 = ptrtoint ptr %parportno to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %parportno, align 8
  %timer = getelementptr inbounds %struct.tgfx, ptr %call7.i.i, i32 0, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @tgfx_timer, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @tgfx_attach.__key.9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp50235 = icmp sgt i32 %sub, 0
  br i1 %cmp50235, label %for.body51.lr.ph, label %do.body41.for.end116_crit_edge

do.body41.for.end116_crit_edge:                   ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end116

for.body51.lr.ph:                                 ; preds = %do.body41
  %sticks = getelementptr inbounds %struct.tgfx, ptr %call7.i.i, i32 0, i32 5
  br label %for.body51

for.body51:                                       ; preds = %for.inc114.for.body51_crit_edge, %for.body51.lr.ph
  %i.0236 = phi i32 [ 0, %for.body51.lr.ph ], [ %inc115, %for.inc114.for.body51_crit_edge ]
  %arrayidx52 = getelementptr i32, ptr %add.ptr, i32 %i.0236
  %24 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp53 = icmp slt i32 %25, 1
  br i1 %cmp53, label %for.body51.for.inc114_crit_edge, label %if.end55

for.body51.for.inc114_crit_edge:                  ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc114

if.end55:                                         ; preds = %for.body51
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %25)
  %cmp57 = icmp ugt i32 %25, 5
  br i1 %cmp57, label %do.end61, label %if.end65

do.end61:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %25) #10
  br label %err_unreg_devs

if.end65:                                         ; preds = %if.end55
  %call66 = call ptr @input_allocate_device() #7
  %arrayidx67 = getelementptr %struct.tgfx, ptr %call7.i.i, i32 0, i32 2, i32 %i.0236
  %26 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call66, ptr %arrayidx67, align 4
  %tobool68.not = icmp eq ptr %call66, null
  br i1 %tobool68.not, label %do.end72, label %if.end75

do.end72:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  %call74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #10
  br label %err_unreg_devs

if.end75:                                         ; preds = %if.end65
  %shl = shl nuw i32 1, %i.0236
  %27 = ptrtoint ptr %sticks to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sticks, align 8
  %or = or i32 %28, %shl
  store i32 %or, ptr %sticks, align 8
  %arrayidx76 = getelementptr %struct.tgfx, ptr %call7.i.i, i32 0, i32 3, i32 %i.0236
  %29 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx52, align 4
  %call79 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx76, i32 noundef 64, ptr noundef nonnull @.str.17, i32 noundef %30)
  %arrayidx80 = getelementptr %struct.tgfx, ptr %call7.i.i, i32 0, i32 4, i32 %i.0236
  %31 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call7.i.i, align 8
  %port = getelementptr inbounds %struct.pardevice, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %port, align 4
  %name83 = getelementptr inbounds %struct.parport, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %name83 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %name83, align 4
  %call84 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx80, i32 noundef 32, ptr noundef nonnull @.str.18, ptr noundef %36, i32 noundef %i.0236)
  %37 = ptrtoint ptr %call66 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %arrayidx76, ptr %call66, align 8
  %phys92 = getelementptr inbounds %struct.input_dev, ptr %call66, i32 0, i32 1
  %38 = ptrtoint ptr %phys92 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %arrayidx80, ptr %phys92, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %call66, i32 0, i32 3
  %39 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 21, ptr %id, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %call66, i32 0, i32 3, i32 1
  %40 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 3, ptr %vendor, align 2
  %41 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx52, align 4
  %conv = trunc i32 %42 to i16
  %product = getelementptr inbounds %struct.input_dev, ptr %call66, i32 0, i32 3, i32 2
  %43 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv, ptr %product, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %call66, i32 0, i32 3, i32 3
  %44 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 256, ptr %version, align 2
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call66, i32 0, i32 40, i32 8
  %45 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call66, i32 0, i32 31
  %46 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @tgfx_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call66, i32 0, i32 32
  %47 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @tgfx_close, ptr %close, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call66, i32 0, i32 5
  %48 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 10, ptr %evbit, align 8
  call void @input_set_abs_params(ptr noundef nonnull %call66, i32 noundef 0, i32 noundef -1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #7
  call void @input_set_abs_params(ptr noundef nonnull %call66, i32 noundef 1, i32 noundef -1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #7
  %49 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp100233 = icmp sgt i32 %50, 0
  br i1 %cmp100233, label %for.body102.lr.ph, label %if.end75.for.end107_crit_edge

if.end75.for.end107_crit_edge:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end107

for.body102.lr.ph:                                ; preds = %if.end75
  %keybit = getelementptr inbounds %struct.input_dev, ptr %call66, i32 0, i32 6
  br label %for.body102

for.body102:                                      ; preds = %for.body102.for.body102_crit_edge, %for.body102.lr.ph
  %j.0234 = phi i32 [ 0, %for.body102.lr.ph ], [ %inc106, %for.body102.for.body102_crit_edge ]
  %arrayidx103 = getelementptr [5 x i32], ptr @tgfx_buttons, i32 0, i32 %j.0234
  %51 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx103, align 4
  call void @_set_bit(i32 noundef %52, ptr noundef %keybit) #7
  %inc106 = add nuw nsw i32 %j.0234, 1
  %53 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx52, align 4
  %cmp100 = icmp slt i32 %inc106, %54
  br i1 %cmp100, label %for.body102.for.body102_crit_edge, label %for.body102.for.end107_crit_edge

for.body102.for.end107_crit_edge:                 ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end107

for.body102.for.body102_crit_edge:                ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body102

for.end107:                                       ; preds = %for.body102.for.end107_crit_edge, %if.end75.for.end107_crit_edge
  %55 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx67, align 4
  %call110 = call i32 @input_register_device(ptr noundef %56) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %for.end107.for.inc114_crit_edge, label %err_free_dev

for.end107.for.inc114_crit_edge:                  ; preds = %for.end107
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc114

for.inc114:                                       ; preds = %for.end107.for.inc114_crit_edge, %for.body51.for.inc114_crit_edge
  %inc115 = add nuw nsw i32 %i.0236, 1
  %exitcond.not = icmp eq i32 %inc115, %sub
  br i1 %exitcond.not, label %for.inc114.for.end116_crit_edge, label %for.inc114.for.body51_crit_edge

for.inc114.for.body51_crit_edge:                  ; preds = %for.inc114
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body51

for.inc114.for.end116_crit_edge:                  ; preds = %for.inc114
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end116

for.end116:                                       ; preds = %for.inc114.for.end116_crit_edge, %do.body41.for.end116_crit_edge
  %sticks117 = getelementptr inbounds %struct.tgfx, ptr %call7.i.i, i32 0, i32 5
  %57 = ptrtoint ptr %sticks117 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sticks117, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool118.not = icmp eq i32 %58, 0
  br i1 %tobool118.not, label %do.end122, label %if.end125

do.end122:                                        ; preds = %for.end116
  call void @__sanitizer_cov_trace_pc() #9
  %call124 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #10
  br label %err_free_tgfx

if.end125:                                        ; preds = %for.end116
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx126 = getelementptr [3 x ptr], ptr @tgfx_base, i32 0, i32 %port_idx.0231.lcssa
  %59 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call7.i.i, ptr %arrayidx126, align 4
  br label %cleanup

err_free_dev:                                     ; preds = %for.end107
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx67, align 4
  call void @input_free_device(ptr noundef %61) #7
  br label %err_unreg_devs

err_unreg_devs:                                   ; preds = %err_free_dev, %do.end72, %do.end61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0236)
  %cmp129239.not = icmp eq i32 %i.0236, 0
  br i1 %cmp129239.not, label %err_unreg_devs.err_free_tgfx_crit_edge, label %err_unreg_devs.while.body_crit_edge

err_unreg_devs.while.body_crit_edge:              ; preds = %err_unreg_devs
  br label %while.body

err_unreg_devs.err_free_tgfx_crit_edge:           ; preds = %err_unreg_devs
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_tgfx

while.body:                                       ; preds = %if.end137.while.body_crit_edge, %err_unreg_devs.while.body_crit_edge
  %dec240.in = phi i32 [ %dec240, %if.end137.while.body_crit_edge ], [ %i.0236, %err_unreg_devs.while.body_crit_edge ]
  %dec240 = add nsw i32 %dec240.in, -1
  %arrayidx132 = getelementptr %struct.tgfx, ptr %call7.i.i, i32 0, i32 2, i32 %dec240
  %62 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx132, align 4
  %tobool133.not = icmp eq ptr %63, null
  br i1 %tobool133.not, label %while.body.if.end137_crit_edge, label %if.then134

while.body.if.end137_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end137

if.then134:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @input_unregister_device(ptr noundef nonnull %63) #7
  br label %if.end137

if.end137:                                        ; preds = %if.then134, %while.body.if.end137_crit_edge
  %cmp129 = icmp sgt i32 %dec240.in, 1
  br i1 %cmp129, label %if.end137.while.body_crit_edge, label %if.end137.err_free_tgfx_crit_edge

if.end137.err_free_tgfx_crit_edge:                ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_tgfx

if.end137.while.body_crit_edge:                   ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

err_free_tgfx:                                    ; preds = %if.end137.err_free_tgfx_crit_edge, %err_unreg_devs.err_free_tgfx_crit_edge, %do.end122
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %err_unreg_pardev

err_unreg_pardev:                                 ; preds = %err_free_tgfx, %do.end37
  call void @parport_unregister_device(ptr noundef nonnull %call23) #7
  br label %cleanup

cleanup:                                          ; preds = %err_unreg_pardev, %if.end125, %do.end28, %if.then15, %do.body
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tgfx_parport_cb) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @parport_register_dev_model(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tgfx_timer(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -4
  %sticks = getelementptr i8, ptr %t, i32 748
  %dev1 = getelementptr i8, ptr %t, i32 48
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.081 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %sticks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sticks, align 4
  %shl = shl nuw nsw i32 1, %i.081
  %and = and i32 %1, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr [7 x ptr], ptr %dev1, i32 0, i32 %i.081
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %port = getelementptr inbounds %struct.pardevice, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port, align 4
  %ops = getelementptr inbounds %struct.parport, ptr %7, i32 0, i32 24
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = trunc i32 %shl to i8
  %conv = xor i8 %12, -1
  tail call void %11(ptr noundef %7, i8 noundef zeroext %conv) #7
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 4
  %port6 = getelementptr inbounds %struct.pardevice, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %port6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %port6, align 4
  %ops7 = getelementptr inbounds %struct.parport, ptr %16, i32 0, i32 24
  %17 = ptrtoint ptr %ops7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops7, align 4
  %read_status = getelementptr inbounds %struct.parport_operations, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %read_status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read_status, align 4
  %call = tail call zeroext i8 %20(ptr noundef %16) #7
  %21 = xor i8 %call, 127
  %xor = zext i8 %21 to i32
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr, align 4
  %port12 = getelementptr inbounds %struct.pardevice, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %port12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %port12, align 4
  %ops13 = getelementptr inbounds %struct.parport, ptr %25, i32 0, i32 24
  %26 = ptrtoint ptr %ops13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops13, align 4
  %read_control = getelementptr inbounds %struct.parport_operations, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %read_control to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read_control, align 4
  %call16 = tail call zeroext i8 %29(ptr noundef %25) #7
  %30 = xor i8 %call16, 4
  %xor18 = zext i8 %30 to i32
  %and19.lobit = lshr i32 %xor, 7
  %31 = shl i32 %xor, 25
  %32 = ashr i32 %31, 31
  %sub = add nsw i32 %32, %and19.lobit
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 0, i32 noundef %sub) #7
  %and28 = lshr i32 %xor, 5
  %and28.lobit = and i32 %and28, 1
  %33 = shl i32 %xor, 27
  %34 = ashr i32 %33, 31
  %sub40 = add nsw i32 %34, %and28.lobit
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef 1, i32 noundef %sub40) #7
  %and41 = lshr i32 %xor, 3
  %and41.lobit = and i32 %and41, 1
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 288, i32 noundef %and41.lobit) #7
  %and42 = lshr i32 %xor18, 1
  %and42.lobit = and i32 %and42, 1
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 289, i32 noundef %and42.lobit) #7
  %and43 = lshr i32 %xor18, 2
  %and43.lobit = and i32 %and43, 1
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 290, i32 noundef %and43.lobit) #7
  %and44 = and i32 %xor18, 1
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 291, i32 noundef %and44) #7
  %and45 = lshr i32 %xor18, 3
  %and45.lobit = and i32 %and45, 1
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef 292, i32 noundef %and45.lobit) #7
  tail call void @input_event(ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.081, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %35, 1
  %call46 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tgfx_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %sem = getelementptr inbounds %struct.tgfx, ptr %1, i32 0, i32 8
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %sem, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %used = getelementptr inbounds %struct.tgfx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %used, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call4 = tail call i32 @parport_claim(ptr noundef %5) #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %port = getelementptr inbounds %struct.pardevice, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port, align 4
  %ops = getelementptr inbounds %struct.parport, ptr %9, i32 0, i32 24
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %write_control = getelementptr inbounds %struct.parport_operations, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %write_control to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_control, align 4
  tail call void %13(ptr noundef %9, i8 noundef zeroext 4) #7
  %timer = getelementptr inbounds %struct.tgfx, ptr %1, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %14, 1
  %call8 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then3, %if.end.if.end9_crit_edge
  tail call void @mutex_unlock(ptr noundef %sem) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tgfx_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %sem = getelementptr inbounds %struct.tgfx, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %sem, i32 noundef 0) #7
  %used = getelementptr inbounds %struct.tgfx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %used, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %timer = getelementptr inbounds %struct.tgfx, ptr %1, i32 0, i32 1
  %call1 = tail call i32 @del_timer_sync(ptr noundef %timer) #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %port = getelementptr inbounds %struct.pardevice, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port, align 4
  %ops = getelementptr inbounds %struct.parport, ptr %7, i32 0, i32 24
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %write_control = getelementptr inbounds %struct.parport_operations, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %write_control to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_control, align 4
  tail call void %11(ptr noundef %7, i8 noundef zeroext 0) #7
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  tail call void @parport_release(ptr noundef %13) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %sem) #7
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

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_claim(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__parport_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !26, !27, !28, !30, !31, !32, !33, !34, !36, !38, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !58, !59, !61, !62, !63, !65, !66, !67, !69, !71, !73, !74, !75, !77, !79, !80, !81}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @__UNIQUE_ID_author223, !1, !"__UNIQUE_ID_author223", i1 false, i1 false}
!1 = !{!"../drivers/input/joystick/turbografx.c", i32 24, i32 1}
!2 = !{ptr @__UNIQUE_ID_description224, !3, !"__UNIQUE_ID_description224", i1 false, i1 false}
!3 = !{!"../drivers/input/joystick/turbografx.c", i32 25, i32 1}
!4 = !{ptr @__UNIQUE_ID_file225, !5, !"__UNIQUE_ID_file225", i1 false, i1 false}
!5 = !{!"../drivers/input/joystick/turbografx.c", i32 26, i32 1}
!6 = !{ptr @__UNIQUE_ID_license226, !5, !"__UNIQUE_ID_license226", i1 false, i1 false}
!7 = !{ptr @__param_map, !8, !"__param_map", i1 false, i1 false}
!8 = !{!"../drivers/input/joystick/turbografx.c", i32 38, i32 1}
!9 = !{ptr @__UNIQUE_ID_maptype227, !8, !"__UNIQUE_ID_maptype227", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_map228, !11, !"__UNIQUE_ID_map228", i1 false, i1 false}
!11 = !{!"../drivers/input/joystick/turbografx.c", i32 39, i32 1}
!12 = !{ptr @__param_map2, !13, !"__param_map2", i1 false, i1 false}
!13 = !{!"../drivers/input/joystick/turbografx.c", i32 40, i32 1}
!14 = !{ptr @__UNIQUE_ID_map2type229, !13, !"__UNIQUE_ID_map2type229", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_map2230, !16, !"__UNIQUE_ID_map2230", i1 false, i1 false}
!16 = !{!"../drivers/input/joystick/turbografx.c", i32 41, i32 1}
!17 = !{ptr @__param_map3, !18, !"__param_map3", i1 false, i1 false}
!18 = !{!"../drivers/input/joystick/turbografx.c", i32 42, i32 1}
!19 = !{ptr @__UNIQUE_ID_map3type231, !18, !"__UNIQUE_ID_map3type231", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_map3232, !21, !"__UNIQUE_ID_map3232", i1 false, i1 false}
!21 = !{!"../drivers/input/joystick/turbografx.c", i32 43, i32 1}
!22 = !{ptr @__initcall__kmod_turbografx__234_311_tgfx_init6, !23, !"__initcall__kmod_turbografx__234_311_tgfx_init6", i1 false, i1 false}
!23 = !{!"../drivers/input/joystick/turbografx.c", i32 311, i32 1}
!24 = !{ptr @__exitcall_tgfx_exit, !25, !"__exitcall_tgfx_exit", i1 false, i1 false}
!25 = !{!"../drivers/input/joystick/turbografx.c", i32 312, i32 1}
!26 = !{ptr @__param_str_map, !8, !"__param_str_map", i1 false, i1 false}
!27 = !{ptr @__param_arr_map, !8, !"__param_arr_map", i1 false, i1 false}
!28 = !{ptr @tgfx_cfg, !29, !"tgfx_cfg", i1 false, i1 false}
!29 = !{!"../drivers/input/joystick/turbografx.c", i32 36, i32 27}
!30 = !{ptr @__param_str_map2, !13, !"__param_str_map2", i1 false, i1 false}
!31 = !{ptr @__param_arr_map2, !13, !"__param_arr_map2", i1 false, i1 false}
!32 = !{ptr @__param_str_map3, !18, !"__param_str_map3", i1 false, i1 false}
!33 = !{ptr @__param_arr_map3, !18, !"__param_arr_map3", i1 false, i1 false}
!34 = !{ptr @.str, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/joystick/turbografx.c", i32 277, i32 10}
!36 = !{ptr @tgfx_parport_driver, !37, !"tgfx_parport_driver", i1 false, i1 false}
!37 = !{!"../drivers/input/joystick/turbografx.c", i32 276, i32 30}
!38 = !{ptr @tgfx_base, !39, !"tgfx_base", i1 false, i1 false}
!39 = !{!"../drivers/input/joystick/turbografx.c", i32 70, i32 4}
!40 = !{ptr @.str.1, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/joystick/turbografx.c", i32 162, i32 3}
!42 = !{ptr @.str.2, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.3, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @tgfx_attach.__UNIQUE_ID_ddebug233, !41, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!45 = !{ptr @.str.4, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/input/joystick/turbografx.c", i32 174, i32 3}
!47 = !{ptr @tgfx_attach._entry, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @tgfx_attach._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.6, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/input/joystick/turbografx.c", i32 180, i32 3}
!51 = !{ptr @tgfx_attach._entry.5, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @tgfx_attach._entry_ptr.7, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @tgfx_attach.__key, !54, !"__key", i1 false, i1 false}
!54 = !{!"../drivers/input/joystick/turbografx.c", i32 184, i32 2}
!55 = !{ptr @.str.8, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @tgfx_attach.__key.9, !57, !"__key", i1 false, i1 false}
!57 = !{!"../drivers/input/joystick/turbografx.c", i32 187, i32 2}
!58 = !{ptr @.str.10, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.12, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/input/joystick/turbografx.c", i32 194, i32 4}
!61 = !{ptr @tgfx_attach._entry.11, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @tgfx_attach._entry_ptr.13, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.15, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/input/joystick/turbografx.c", i32 200, i32 4}
!65 = !{ptr @tgfx_attach._entry.14, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @tgfx_attach._entry_ptr.16, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.17, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/input/joystick/turbografx.c", i32 206, i32 5}
!69 = !{ptr @.str.18, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/input/joystick/turbografx.c", i32 208, i32 5}
!71 = !{ptr @.str.20, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/input/joystick/turbografx.c", i32 234, i32 3}
!73 = !{ptr @tgfx_attach._entry.19, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @tgfx_attach._entry_ptr.21, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @tgfx_buttons, !76, !"tgfx_buttons", i1 false, i1 false}
!76 = !{!"../drivers/input/joystick/turbografx.c", i32 58, i32 12}
!77 = !{ptr @.str.22, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/input/joystick/turbografx.c", i32 293, i32 4}
!79 = !{ptr @.str.23, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @tgfx_init._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @tgfx_init._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{i64 2148697087, i64 2148697092, i64 2148697105, i64 2148697149, i64 2148697183, i64 2148697204}
