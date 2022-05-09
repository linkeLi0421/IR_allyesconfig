; ModuleID = '/llk/IR_all_yes/drivers/input/joystick/walkera0701.c_pt.bc'
source_filename = "../drivers/input/joystick/walkera0701.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.parport_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, i8, %struct.list_head }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.walkera_dev = type { [25 x i8], i64, i64, i32, i32, ptr, %struct.hrtimer, ptr, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.parport_device_info = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.ieee1284_info = type { i32, i32, %struct.semaphore }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.pardev_cb = type { ptr, ptr, ptr, ptr, i32 }
%struct.pardevice = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.device, i8, ptr, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.parport_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_author210 = internal constant [55 x i8] c"walkera0701.author=Peter Popovec <popovec@fei.tuke.sk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description211 = internal constant [55 x i8] c"walkera0701.description=Walkera WK-0701 TX as joystick\00", section ".modinfo", align 1
@__UNIQUE_ID_file212 = internal constant [52 x i8] c"walkera0701.file=drivers/input/joystick/walkera0701\00", section ".modinfo", align 1
@__UNIQUE_ID_license213 = internal constant [24 x i8] c"walkera0701.license=GPL\00", section ".modinfo", align 1
@__param_str_port = internal constant [17 x i8] c"walkera0701.port\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@walkera0701_pp_no = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_port = internal constant %struct.kernel_param { ptr @__param_str_port, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @walkera0701_pp_no } }, section "__param", align 4
@__UNIQUE_ID_porttype214 = internal constant [30 x i8] c"walkera0701.parmtype=port:int\00", section ".modinfo", align 1
@__UNIQUE_ID_port215 = internal constant [82 x i8] c"walkera0701.parm=port:Parallel port adapter for Walkera WK-0701 TX (default is 0)\00", section ".modinfo", align 1
@walkera0701_parport_driver = internal global { %struct.parport_driver, [52 x i8] } { %struct.parport_driver { ptr @.str, ptr null, ptr @walkera0701_detach, ptr @walkera0701_attach, ptr null, %struct.device_driver zeroinitializer, i8 1, %struct.list_head zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_walkera0701__218_309_walkera0701_init6 = internal global ptr @walkera0701_init, section ".initcall6.init", align 4
@__exitcall_walkera0701_exit = internal global ptr @walkera0701_exit, section ".exitcall.exit", align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"walkera0701\00", [20 x i8] zeroinitializer }, align 32
@w_dev = internal global { %struct.walkera_dev, [40 x i8] } zeroinitializer, align 32
@walkera0701_attach.__UNIQUE_ID_ddebug217 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"walkera0701_attach\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/input/joystick/walkera0701.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Not using parport%d.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"walkera0701: Not using parport%d.\0A\00", [61 x i8] zeroinitializer }, align 32
@walkera0701_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013walkera0701: parport %d does not have interrupt assigned\0A\00", [36 x i8] zeroinitializer }, align 32
@walkera0701_attach._entry_ptr = internal global ptr @walkera0701_attach._entry, section ".printk_index", align 4
@walkera0701_attach._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013walkera0701: failed to register parport device\0A\00", [46 x i8] zeroinitializer }, align 32
@walkera0701_attach._entry_ptr.8 = internal global ptr @walkera0701_attach._entry.6, section ".printk_index", align 4
@walkera0701_attach._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013walkera0701: failed to negotiate parport mode\0A\00", [47 x i8] zeroinitializer }, align 32
@walkera0701_attach._entry_ptr.11 = internal global ptr @walkera0701_attach._entry.9, section ".printk_index", align 4
@walkera0701_attach._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013walkera0701: failed to allocate input device\0A\00", [48 x i8] zeroinitializer }, align 32
@walkera0701_attach._entry_ptr.14 = internal global ptr @walkera0701_attach._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Walkera WK-0701 TX\00", [45 x i8] zeroinitializer }, align 32
@walkera0701_attach._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013walkera0701: failed to register input device\0A\00", [48 x i8] zeroinitializer }, align 32
@walkera0701_attach._entry_ptr.18 = internal global ptr @walkera0701_attach._entry.16, section ".printk_index", align 4
@walkera0701_parse_frame.__UNIQUE_ID_ddebug216 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 26, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"walkera0701_parse_frame\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%4d %4d %4d %4d  %4d %4d %4d %4d (magic %2x %d)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"walkera0701: %4d %4d %4d %4d  %4d %4d %4d %4d (magic %2x %d)\0A\00", [34 x i8] zeroinitializer }, align 32
@___asan_gen_.22 = private unnamed_addr constant [18 x i8] c"walkera0701_pp_no\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 36, i32 21 }
@___asan_gen_.25 = private unnamed_addr constant [27 x i8] c"walkera0701_parport_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 292, i32 30 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 293, i32 10 }
@___asan_gen_.31 = private unnamed_addr constant [6 x i8] c"w_dev\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 60, i32 27 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 205, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 210, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 226, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 231, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 240, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 245, i32 23 }
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 268, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.86 = private constant [40 x i8] c"../drivers/input/joystick/walkera0701.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 104, i32 2 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_author210, ptr @__UNIQUE_ID_description211, ptr @__UNIQUE_ID_file212, ptr @__UNIQUE_ID_license213, ptr @__UNIQUE_ID_port215, ptr @__UNIQUE_ID_porttype214, ptr @__exitcall_walkera0701_exit, ptr @__initcall__kmod_walkera0701__218_309_walkera0701_init6, ptr @__param_port, ptr @walkera0701_attach._entry, ptr @walkera0701_attach._entry.12, ptr @walkera0701_attach._entry.16, ptr @walkera0701_attach._entry.6, ptr @walkera0701_attach._entry.9, ptr @walkera0701_attach._entry_ptr, ptr @walkera0701_attach._entry_ptr.11, ptr @walkera0701_attach._entry_ptr.14, ptr @walkera0701_attach._entry_ptr.18, ptr @walkera0701_attach._entry_ptr.8, ptr @walkera0701_exit, ptr @walkera0701_pp_no, ptr @walkera0701_parport_driver, ptr @.str, ptr @w_dev, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @walkera0701_pp_no to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @walkera0701_parport_driver to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w_dev to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @walkera0701_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @walkera0701_attach._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @walkera0701_attach._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @walkera0701_attach._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @walkera0701_attach._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @walkera0701_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @parport_unregister_driver(ptr noundef nonnull @walkera0701_parport_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @walkera0701_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__parport_register_driver(ptr noundef nonnull @walkera0701_parport_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @walkera0701_detach(ptr nocapture noundef readonly %port) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.walkera_dev, ptr @w_dev, i32 0, i32 8), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds (%struct.walkera_dev, ptr @w_dev, i32 0, i32 7), align 8
  %number = getelementptr inbounds %struct.parport, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %number, align 4
  %number1 = getelementptr inbounds %struct.parport, ptr %port, i32 0, i32 26
  %4 = ptrtoint ptr %number1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp eq i32 %3, %5
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %6 = load ptr, ptr getelementptr inbounds (%struct.walkera_dev, ptr @w_dev, i32 0, i32 5), align 8
  tail call void @input_unregister_device(ptr noundef %6) #6
  %7 = load ptr, ptr getelementptr inbounds (%struct.walkera_dev, ptr @w_dev, i32 0, i32 8), align 4
  tail call void @parport_unregister_device(ptr noundef %7) #6
  store ptr null, ptr getelementptr inbounds (%struct.walkera_dev, ptr @w_dev, i32 0, i32 7), align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @walkera0701_attach(ptr noundef %pp) #2 align 64 {
entry:
  %walkera0701_parport_cb = alloca %struct.pardev_cb, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %walkera0701_parport_cb) #6
  %0 = getelementptr inbounds %struct.pardev_cb, ptr %walkera0701_parport_cb, i32 0, i32 2
  %1 = getelementptr inbounds %struct.pardev_cb, ptr %walkera0701_parport_cb, i32 0, i32 3
  %2 = getelementptr inbounds %struct.pardev_cb, ptr %walkera0701_parport_cb, i32 0, i32 4
  %number = getelementptr inbounds %struct.parport, ptr %pp, i32 0, i32 26
  %3 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %number, align 4
  %5 = load i32, ptr @walkera0701_pp_no, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %5)
  %cmp.not = icmp eq i32 %4, %5
  br i1 %cmp.not, label %if.end5, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @walkera0701_attach.__UNIQUE_ID_ddebug217, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@walkera0701_attach, %if.then3)) #6
          to label %cleanup [label %if.then3], !srcloc !67

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %number, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @walkera0701_attach.__UNIQUE_ID_ddebug217, ptr noundef nonnull @.str.4, i32 noundef %7) #6
  br label %cleanup

if.end5:                                          ; preds = %entry
  %irq = getelementptr inbounds %struct.parport, ptr %pp, i32 0, i32 5
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp6 = icmp eq i32 %9, -1
  br i1 %cmp6, label %do.end10, label %if.end14

do.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %4) #9
  br label %cleanup

if.end14:                                         ; preds = %if.end5
  store ptr %pp, ptr getelementptr inbounds (%struct.walkera_dev, ptr @w_dev, i32 0, i32 7), align 8
  %10 = ptrtoint ptr %walkera0701_parport_cb to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %walkera0701_parport_cb, align 8
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %2, align 8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @walkera0701_irq_handler, ptr %1, align 4
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @w_dev, ptr %0, align 8
  %call15 = call ptr @parport_register_dev_model(ptr noundef %pp, ptr noundef nonnull @.str, ptr noundef nonnull %walkera0701_parport_cb, i32 noundef 0) #6
  store ptr %call15, ptr getelementptr inbounds (%struct.walkera_dev, ptr @w_dev, i32 0, i32 8), align 4
  %tobool17.not = icmp eq ptr %call15, null
  br i1 %tobool17.not, label %do.end21, label %if.end24

do.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end24:                                         ; preds = %if.end14
  %port = getelementptr inbounds %struct.pardevice, ptr %call15, i32 0, i32 1
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %port, align 4
  %call26 = call i32 @parport_negotiate(ptr noundef %15, i32 noundef 256) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end34, label %do.end31

do.end31:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #9
  br label %err_unregister_device

if.end34:                                         ; preds = %if.end24
  call void @hrtimer_init(ptr noundef getelementptr inbounds (%struct.walkera_dev, ptr @w_dev, i32 0, i32 6), i32 noundef 1, i32 noundef 1) #6
  store ptr @timer_handler, ptr getelementptr inbounds (%struct.walkera_dev, ptr @w_dev, i32 0, i32 6, i32 2), align 8
  %call36 = call ptr @input_allocate_device() #6
  store ptr %call36, ptr getelementptr inbounds (%struct.walkera_dev, ptr @w_dev, i32 0, i32 5), align 8
  %tobool38.not = icmp eq ptr %call36, null
  br i1 %tobool38.not, label %do.end42, label %if.end45

do.end42:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #9
  br label %err_unregister_device

if.end45:                                         ; preds = %if.end34
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call36, i32 0, i32 40, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @w_dev, ptr %driver_data.i.i, align 4
  %17 = ptrtoint ptr %call36 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.15, ptr %call36, align 8
  %18 = load ptr, ptr getelementptr inbounds (%struct.walkera_dev, ptr @w_dev, i32 0, i32 7), align 8
  %name49 = getelementptr inbounds %struct.parport, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %name49 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name49, align 4
  %21 = load ptr, ptr getelementptr inbounds (%struct.walkera_dev, ptr @w_dev, i32 0, i32 5), align 8
  %phys = getelementptr inbounds %struct.input_dev, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %20, ptr %phys, align 4
  %23 = load ptr, ptr getelementptr inbounds (%struct.walkera_dev, ptr @w_dev, i32 0, i32 5), align 8
  %id = getelementptr inbounds %struct.input_dev, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 21, ptr %id, align 4
  %25 = load ptr, ptr getelementptr inbounds (%struct.walkera_dev, ptr @w_dev, i32 0, i32 5), align 8
  %vendor = getelementptr inbounds %struct.input_dev, ptr %25, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1, ptr %vendor, align 2
  %27 = load ptr, ptr getelementptr inbounds (%struct.walkera_dev, ptr @w_dev, i32 0, i32 5), align 8
  %product = getelementptr inbounds %struct.input_dev, ptr %27, i32 0, i32 3, i32 2
  %28 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1, ptr %product, align 4
  %29 = load ptr, ptr getelementptr inbounds (%struct.walkera_dev, ptr @w_dev, i32 0, i32 5), align 8
  %version = getelementptr inbounds %struct.input_dev, ptr %29, i32 0, i32 3, i32 3
  %30 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 256, ptr %version, align 2
  %31 = load ptr, ptr getelementptr inbounds (%struct.walkera_dev, ptr @w_dev, i32 0, i32 7), align 8
  %dev = getelementptr inbounds %struct.parport, ptr %31, i32 0, i32 9
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %34 = load ptr, ptr getelementptr inbounds (%struct.walkera_dev, ptr @w_dev, i32 0, i32 5), align 8
  %parent = getelementptr inbounds %struct.input_dev, ptr %34, i32 0, i32 40, i32 1
  %35 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %33, ptr %parent, align 8
  %open = getelementptr inbounds %struct.input_dev, ptr %34, i32 0, i32 31
  %36 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @walkera0701_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %34, i32 0, i32 32
  %37 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @walkera0701_close, ptr %close, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %34, i32 0, i32 5
  %38 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 10, ptr %evbit, align 8
  %39 = load ptr, ptr getelementptr inbounds (%struct.walkera_dev, ptr @w_dev, i32 0, i32 5), align 8
  %arrayidx65 = getelementptr %struct.input_dev, ptr %39, i32 0, i32 6, i32 10
  %40 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 65536, ptr %arrayidx65, align 4
  %41 = load ptr, ptr getelementptr inbounds (%struct.walkera_dev, ptr @w_dev, i32 0, i32 5), align 8
  call void @input_set_abs_params(ptr noundef %41, i32 noundef 0, i32 noundef -512, i32 noundef 512, i32 noundef 0, i32 noundef 0) #6
  %42 = load ptr, ptr getelementptr inbounds (%struct.walkera_dev, ptr @w_dev, i32 0, i32 5), align 8
  call void @input_set_abs_params(ptr noundef %42, i32 noundef 1, i32 noundef -512, i32 noundef 512, i32 noundef 0, i32 noundef 0) #6
  %43 = load ptr, ptr getelementptr inbounds (%struct.walkera_dev, ptr @w_dev, i32 0, i32 5), align 8
  call void @input_set_abs_params(ptr noundef %43, i32 noundef 2, i32 noundef -512, i32 noundef 512, i32 noundef 0, i32 noundef 0) #6
  %44 = load ptr, ptr getelementptr inbounds (%struct.walkera_dev, ptr @w_dev, i32 0, i32 5), align 8
  call void @input_set_abs_params(ptr noundef %44, i32 noundef 6, i32 noundef -512, i32 noundef 512, i32 noundef 0, i32 noundef 0) #6
  %45 = load ptr, ptr getelementptr inbounds (%struct.walkera_dev, ptr @w_dev, i32 0, i32 5), align 8
  call void @input_set_abs_params(ptr noundef %45, i32 noundef 7, i32 noundef -512, i32 noundef 512, i32 noundef 0, i32 noundef 0) #6
  %46 = load ptr, ptr getelementptr inbounds (%struct.walkera_dev, ptr @w_dev, i32 0, i32 5), align 8
  call void @input_set_abs_params(ptr noundef %46, i32 noundef 40, i32 noundef -512, i32 noundef 512, i32 noundef 0, i32 noundef 0) #6
  %47 = load ptr, ptr getelementptr inbounds (%struct.walkera_dev, ptr @w_dev, i32 0, i32 5), align 8
  %call73 = call i32 @input_register_device(ptr noundef %47) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end45.cleanup_crit_edge, label %do.end78

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end78:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  %call80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #9
  %48 = load ptr, ptr getelementptr inbounds (%struct.walkera_dev, ptr @w_dev, i32 0, i32 5), align 8
  call void @input_free_device(ptr noundef %48) #6
  br label %err_unregister_device

err_unregister_device:                            ; preds = %do.end78, %do.end42, %do.end31
  %49 = load ptr, ptr getelementptr inbounds (%struct.walkera_dev, ptr @w_dev, i32 0, i32 8), align 4
  call void @parport_unregister_device(ptr noundef %49) #6
  br label %cleanup

cleanup:                                          ; preds = %err_unregister_device, %if.end45.cleanup_crit_edge, %do.end21, %do.end10, %if.then3, %do.body
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %walkera0701_parport_cb) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @walkera0701_irq_handler(ptr noundef %handler_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #6
  %irq_time = getelementptr inbounds %struct.walkera_dev, ptr %handler_data, i32 0, i32 1
  %0 = ptrtoint ptr %irq_time to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %call, ptr %irq_time, align 8
  %irq_lasttime = getelementptr inbounds %struct.walkera_dev, ptr %handler_data, i32 0, i32 2
  %1 = ptrtoint ptr %irq_lasttime to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %irq_lasttime, align 8
  %sub = sub i64 %call, %2
  store i64 %call, ptr %irq_lasttime, align 8
  %timer = getelementptr inbounds %struct.walkera_dev, ptr %handler_data, i32 0, i32 6
  %call5 = tail call i32 @hrtimer_try_to_cancel(ptr noundef %timer) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp.not = icmp eq i32 %call5, 0
  %counter7 = getelementptr inbounds %struct.walkera_dev, ptr %handler_data, i32 0, i32 3
  br i1 %cmp.not, label %if.end, label %if.then, !prof !68

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %counter7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 25, ptr %counter7, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %counter7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %counter7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %5)
  %cmp8 = icmp slt i32 %5, 25
  br i1 %cmp8, label %if.then9, label %if.else45

if.then9:                                         ; preds = %if.end
  %ack = getelementptr inbounds %struct.walkera_dev, ptr %handler_data, i32 0, i32 4
  %6 = ptrtoint ptr %ack to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ack, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool10.not = icmp eq i32 %7, 0
  %. = select i1 %tobool10.not, i64 -288000, i64 -438000
  %.100 = select i1 %tobool10.not, i8 0, i8 8
  %sub14 = add i64 %sub, %.
  %8 = getelementptr [25 x i8], ptr %handler_data, i32 0, i32 %5
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %.100, ptr %8, align 1
  %10 = ptrtoint ptr %counter7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %counter7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %11)
  %cmp20 = icmp eq i32 %11, 24
  br i1 %cmp20, label %if.then21, label %if.else30

if.then21:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @walkera0701_parse_frame(ptr noundef %handler_data)
  %sub23 = add i64 %sub14, -1306000
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub23)
  %cmp24 = icmp slt i64 %sub23, 0
  %sub25 = sub i64 1306000, %sub14
  %cond = select i1 %cmp24, i64 %sub25, i64 %sub23
  call void @__sanitizer_cov_trace_const_cmp8(i64 20000, i64 %cond)
  %cmp26 = icmp slt i64 %cond, 20000
  %spec.store.select = select i1 %cmp26, i32 0, i32 25
  %12 = ptrtoint ptr %counter7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %spec.store.select, ptr %counter7, align 8
  br label %if.end62

if.else30:                                        ; preds = %if.then9
  %13 = add i64 %sub14, -298001
  call void @__sanitizer_cov_trace_const_cmp8(i64 599999, i64 %13)
  %14 = icmp ult i64 %13, 599999
  br i1 %14, label %if.then33, label %if.else41

if.then33:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #8
  %15 = trunc i64 %sub14 to i32
  %conv = add nsw i32 %15, -298000
  %div = udiv i32 %conv, 80000
  %16 = trunc i32 %div to i8
  %inc = add i32 %11, 1
  %17 = ptrtoint ptr %counter7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %inc, ptr %counter7, align 8
  %arrayidx38 = getelementptr [25 x i8], ptr %handler_data, i32 0, i32 %11
  %18 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx38, align 1
  %or = or i8 %19, %16
  store i8 %or, ptr %arrayidx38, align 1
  br label %if.end62

if.else41:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %counter7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 25, ptr %counter7, align 8
  br label %if.end62

if.else45:                                        ; preds = %if.end
  %sub48 = add i64 %sub, -1594000
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub48)
  %cmp50 = icmp slt i64 %sub48, 0
  %sub53 = sub i64 1594000, %sub
  %cond56 = select i1 %cmp50, i64 %sub53, i64 %sub48
  call void @__sanitizer_cov_trace_const_cmp8(i64 170000, i64 %cond56)
  %cmp57 = icmp slt i64 %cond56, 170000
  br i1 %cmp57, label %if.then59, label %if.else45.if.end62_crit_edge

if.else45.if.end62_crit_edge:                     ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.then59:                                        ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %counter7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %counter7, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.then59, %if.else45.if.end62_crit_edge, %if.else41, %if.then33, %if.then21
  tail call void @hrtimer_start_range_ns(ptr noundef %timer, i64 noundef 363000, i64 noundef 0, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @parport_register_dev_model(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_negotiate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timer_handler(ptr nocapture noundef %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pardevice = getelementptr i8, ptr %handle, i32 52
  %0 = ptrtoint ptr %pardevice to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pardevice, align 4
  %port.i = getelementptr inbounds %struct.pardevice, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port.i, align 4
  %ops.i = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %read_status.i = getelementptr inbounds %struct.parport_operations, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %read_status.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_status.i, align 4
  %call.i = tail call zeroext i8 %7(ptr noundef %3) #6
  %8 = and i8 %call.i, 64
  %and.i = zext i8 %8 to i32
  %ack = getelementptr i8, ptr %handle, i32 -12
  %9 = ptrtoint ptr %ack to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and.i, ptr %ack, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @walkera0701_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pardevice = getelementptr inbounds %struct.walkera_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %pardevice to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pardevice, align 4
  %call1 = tail call i32 @parport_claim(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %parport = getelementptr inbounds %struct.walkera_dev, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %parport to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parport, align 8
  %ops = getelementptr inbounds %struct.parport, ptr %5, i32 0, i32 24
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %enable_irq = getelementptr inbounds %struct.parport_operations, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %enable_irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %enable_irq, align 4
  tail call void %9(ptr noundef %5) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @walkera0701_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %parport = getelementptr inbounds %struct.walkera_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %parport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parport, align 8
  %ops = getelementptr inbounds %struct.parport, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %disable_irq = getelementptr inbounds %struct.parport_operations, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %disable_irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disable_irq, align 4
  tail call void %7(ptr noundef %3) #6
  %timer = getelementptr inbounds %struct.walkera_dev, ptr %1, i32 0, i32 6
  %call2 = tail call i32 @hrtimer_cancel(ptr noundef %timer) #6
  %pardevice = getelementptr inbounds %struct.walkera_dev, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %pardevice to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pardevice, align 4
  tail call void @parport_release(ptr noundef %9) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_try_to_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @walkera0701_parse_frame(ptr noundef readonly %w) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %w to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %w, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 7
  %arrayidx.1 = getelementptr [25 x i8], ptr %w, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %3 to i32
  %and.1 = and i32 %conv.1, 7
  %add.1 = add nuw nsw i32 %and.1, %and
  %arrayidx.2 = getelementptr [25 x i8], ptr %w, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.2, align 1
  %conv.2 = zext i8 %5 to i32
  %and.2 = and i32 %conv.2, 7
  %add.2 = add nuw nsw i32 %and.2, %add.1
  %arrayidx.3 = getelementptr [25 x i8], ptr %w, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.3, align 1
  %conv.3 = zext i8 %7 to i32
  %and.3 = and i32 %conv.3, 7
  %add.3 = add nuw nsw i32 %and.3, %add.2
  %arrayidx.4 = getelementptr [25 x i8], ptr %w, i32 0, i32 4
  %8 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.4, align 1
  %conv.4 = zext i8 %9 to i32
  %and.4 = and i32 %conv.4, 7
  %add.4 = add nuw nsw i32 %and.4, %add.3
  %arrayidx.5 = getelementptr [25 x i8], ptr %w, i32 0, i32 5
  %10 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.5, align 1
  %conv.5 = zext i8 %11 to i32
  %and.5 = and i32 %conv.5, 7
  %add.5 = add nuw nsw i32 %and.5, %add.4
  %arrayidx.6 = getelementptr [25 x i8], ptr %w, i32 0, i32 6
  %12 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.6, align 1
  %conv.6 = zext i8 %13 to i32
  %and.6 = and i32 %conv.6, 7
  %add.6 = add nuw nsw i32 %and.6, %add.5
  %arrayidx.7 = getelementptr [25 x i8], ptr %w, i32 0, i32 7
  %14 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.7, align 1
  %conv.7 = zext i8 %15 to i32
  %and.7 = and i32 %conv.7, 7
  %add.7 = add nuw nsw i32 %and.7, %add.6
  %arrayidx.8 = getelementptr [25 x i8], ptr %w, i32 0, i32 8
  %16 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.8, align 1
  %conv.8 = zext i8 %17 to i32
  %and.8 = and i32 %conv.8, 7
  %add.8 = add nuw nsw i32 %and.8, %add.7
  %arrayidx.9 = getelementptr [25 x i8], ptr %w, i32 0, i32 9
  %18 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.9, align 1
  %conv.9 = zext i8 %19 to i32
  %and.9 = and i32 %conv.9, 7
  %add.9 = add nuw nsw i32 %and.9, %add.8
  %arrayidx7 = getelementptr [25 x i8], ptr %w, i32 0, i32 10
  %20 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx7, align 2
  %conv8 = zext i8 %21 to i32
  %22 = xor i32 %add.9, %conv8
  %23 = and i32 %22, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp11.not = icmp eq i32 %23, 0
  br i1 %cmp11.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %and4.9 = lshr i32 %conv.9, 3
  %and4.8 = lshr i32 %conv.8, 3
  %and4.7 = lshr i32 %conv.7, 3
  %24 = and i32 %and4.7, 1
  %and4.6 = lshr i32 %conv.6, 3
  %25 = and i32 %and4.6, 1
  %and4.5 = lshr i32 %conv.5, 3
  %26 = and i32 %and4.5, 1
  %and4.4 = lshr i32 %conv.4, 3
  %27 = and i32 %and4.4, 1
  %and4.3 = lshr i32 %conv.3, 3
  %28 = and i32 %and4.3, 1
  %and4.2 = lshr i32 %conv.2, 3
  %29 = and i32 %and4.2, 1
  %and4.1 = lshr i32 %conv.1, 3
  %30 = and i32 %and4.1, 1
  %and4 = lshr i32 %conv, 3
  %31 = and i32 %and4, 1
  %add5.1 = add nuw nsw i32 %30, %31
  %add5.2 = add nuw nsw i32 %29, %add5.1
  %add5.3 = add nuw nsw i32 %28, %add5.2
  %add5.4 = add nuw nsw i32 %27, %add5.3
  %add5.5 = add nuw nsw i32 %26, %add5.4
  %add5.6 = add nuw nsw i32 %25, %add5.5
  %add5.7 = add nuw nsw i32 %24, %add5.6
  %add5.8 = add nuw nsw i32 %and4.8, %add5.7
  %add5.9 = add nuw nsw i32 %and4.9, %add5.8
  %and16 = lshr i32 %conv8, 3
  %shr18344 = lshr i32 %add.9, 3
  %add19 = add nuw nsw i32 %shr18344, %add5.9
  %32 = xor i32 %and16, %add19
  %33 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp21.not = icmp eq i32 %33, 0
  br i1 %cmp21.not, label %for.body28.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body28.preheader:                             ; preds = %if.end
  %arrayidx30 = getelementptr [25 x i8], ptr %w, i32 0, i32 11
  %34 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx30, align 1
  %conv31 = zext i8 %35 to i32
  %and32 = and i32 %conv31, 7
  %arrayidx30.1 = getelementptr [25 x i8], ptr %w, i32 0, i32 12
  %36 = ptrtoint ptr %arrayidx30.1 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx30.1, align 1
  %conv31.1 = zext i8 %37 to i32
  %and32.1 = and i32 %conv31.1, 7
  %add33.1 = add nuw nsw i32 %and32.1, %and32
  %arrayidx30.2 = getelementptr [25 x i8], ptr %w, i32 0, i32 13
  %38 = ptrtoint ptr %arrayidx30.2 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx30.2, align 1
  %conv31.2 = zext i8 %39 to i32
  %and32.2 = and i32 %conv31.2, 7
  %add33.2 = add nuw nsw i32 %and32.2, %add33.1
  %arrayidx30.3 = getelementptr [25 x i8], ptr %w, i32 0, i32 14
  %40 = ptrtoint ptr %arrayidx30.3 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx30.3, align 1
  %conv31.3 = zext i8 %41 to i32
  %and32.3 = and i32 %conv31.3, 7
  %add33.3 = add nuw nsw i32 %and32.3, %add33.2
  %arrayidx30.4 = getelementptr [25 x i8], ptr %w, i32 0, i32 15
  %42 = ptrtoint ptr %arrayidx30.4 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx30.4, align 1
  %conv31.4 = zext i8 %43 to i32
  %and32.4 = and i32 %conv31.4, 7
  %add33.4 = add nuw nsw i32 %and32.4, %add33.3
  %arrayidx30.5 = getelementptr [25 x i8], ptr %w, i32 0, i32 16
  %44 = ptrtoint ptr %arrayidx30.5 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx30.5, align 1
  %conv31.5 = zext i8 %45 to i32
  %and32.5 = and i32 %conv31.5, 7
  %add33.5 = add nuw nsw i32 %and32.5, %add33.4
  %arrayidx30.6 = getelementptr [25 x i8], ptr %w, i32 0, i32 17
  %46 = ptrtoint ptr %arrayidx30.6 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx30.6, align 1
  %conv31.6 = zext i8 %47 to i32
  %and32.6 = and i32 %conv31.6, 7
  %add33.6 = add nuw nsw i32 %and32.6, %add33.5
  %arrayidx30.7 = getelementptr [25 x i8], ptr %w, i32 0, i32 18
  %48 = ptrtoint ptr %arrayidx30.7 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx30.7, align 1
  %conv31.7 = zext i8 %49 to i32
  %and32.7 = and i32 %conv31.7, 7
  %add33.7 = add nuw nsw i32 %and32.7, %add33.6
  %arrayidx30.8 = getelementptr [25 x i8], ptr %w, i32 0, i32 19
  %50 = ptrtoint ptr %arrayidx30.8 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx30.8, align 1
  %conv31.8 = zext i8 %51 to i32
  %and32.8 = and i32 %conv31.8, 7
  %add33.8 = add nuw nsw i32 %and32.8, %add33.7
  %arrayidx30.9 = getelementptr [25 x i8], ptr %w, i32 0, i32 20
  %52 = ptrtoint ptr %arrayidx30.9 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx30.9, align 1
  %conv31.9 = zext i8 %53 to i32
  %and32.9 = and i32 %conv31.9, 7
  %add33.9 = add nuw nsw i32 %and32.9, %add33.8
  %arrayidx30.10 = getelementptr [25 x i8], ptr %w, i32 0, i32 21
  %54 = ptrtoint ptr %arrayidx30.10 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx30.10, align 1
  %conv31.10 = zext i8 %55 to i32
  %and32.10 = and i32 %conv31.10, 7
  %add33.10 = add nuw nsw i32 %and32.10, %add33.9
  %arrayidx30.11 = getelementptr [25 x i8], ptr %w, i32 0, i32 22
  %56 = ptrtoint ptr %arrayidx30.11 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx30.11, align 1
  %conv31.11 = zext i8 %57 to i32
  %and32.11 = and i32 %conv31.11, 7
  %add33.11 = add nuw nsw i32 %and32.11, %add33.10
  %arrayidx44 = getelementptr [25 x i8], ptr %w, i32 0, i32 23
  %58 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %59 to i32
  %60 = xor i32 %add33.11, %conv45
  %61 = and i32 %60, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp48.not = icmp eq i32 %61, 0
  br i1 %cmp48.not, label %if.end51, label %for.body28.preheader.cleanup_crit_edge

for.body28.preheader.cleanup_crit_edge:           ; preds = %for.body28.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end51:                                         ; preds = %for.body28.preheader
  %and37.11 = lshr i32 %conv31.11, 3
  %and37.10 = lshr i32 %conv31.10, 3
  %and37.9 = lshr i32 %conv31.9, 3
  %62 = and i32 %and37.9, 1
  %and37.8 = lshr i32 %conv31.8, 3
  %63 = and i32 %and37.8, 1
  %and37.7 = lshr i32 %conv31.7, 3
  %64 = and i32 %and37.7, 1
  %and37.6 = lshr i32 %conv31.6, 3
  %65 = and i32 %and37.6, 1
  %and37.5 = lshr i32 %conv31.5, 3
  %66 = and i32 %and37.5, 1
  %and37.4 = lshr i32 %conv31.4, 3
  %67 = and i32 %and37.4, 1
  %and37.3 = lshr i32 %conv31.3, 3
  %68 = and i32 %and37.3, 1
  %and37.2 = lshr i32 %conv31.2, 3
  %69 = and i32 %and37.2, 1
  %and37.1 = lshr i32 %conv31.1, 3
  %70 = and i32 %and37.1, 1
  %and37 = lshr i32 %conv31, 3
  %71 = and i32 %and37, 1
  %add39.1 = add nuw nsw i32 %70, %71
  %add39.2 = add nuw nsw i32 %69, %add39.1
  %add39.3 = add nuw nsw i32 %68, %add39.2
  %add39.4 = add nuw nsw i32 %67, %add39.3
  %add39.5 = add nuw nsw i32 %66, %add39.4
  %add39.6 = add nuw nsw i32 %65, %add39.5
  %add39.7 = add nuw nsw i32 %64, %add39.6
  %add39.8 = add nuw nsw i32 %63, %add39.7
  %add39.9 = add nuw nsw i32 %62, %add39.8
  %add39.10 = add nuw nsw i32 %and37.10, %add39.9
  %add39.11 = add nuw nsw i32 %and37.11, %add39.10
  %and55 = lshr i32 %conv45, 3
  %shr57345 = lshr i32 %add33.11, 3
  %add58 = add nuw nsw i32 %shr57345, %add39.11
  %72 = xor i32 %and55, %add58
  %73 = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp60.not = icmp eq i32 %73, 0
  br i1 %cmp60.not, label %if.end63, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end63:                                         ; preds = %if.end51
  %74 = ptrtoint ptr %w to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %w, align 8
  %conv66 = zext i8 %75 to i32
  %and67 = shl nuw nsw i32 %conv66, 8
  %mul = and i32 %and67, 1792
  %76 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx.1, align 1
  %conv70 = zext i8 %77 to i32
  %mul71 = shl nuw nsw i32 %conv70, 4
  %add72 = add nuw nsw i32 %mul, %mul71
  %78 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx.2, align 2
  %conv75 = zext i8 %79 to i32
  %add76 = add nuw nsw i32 %add72, %conv75
  %80 = lshr i32 %add76, 2
  %81 = lshr i32 %conv66, 2
  %and82 = and i32 %81, 2
  %sub = add nsw i32 %and82, -1
  %mul83 = mul nsw i32 %80, %sub
  %and87 = shl nuw nsw i32 %conv75, 8
  %shl = and i32 %and87, 256
  %82 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx.3, align 1
  %conv90 = zext i8 %83 to i32
  %shl91 = shl nuw nsw i32 %conv90, 4
  %or = or i32 %shl, %shl91
  %84 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx.4, align 4
  %conv94 = zext i8 %85 to i32
  %or95 = or i32 %or, %conv94
  %and99 = and i32 %conv75, 2
  %sub100 = add nsw i32 %and99, -1
  %mul101 = mul nsw i32 %or95, %sub100
  %86 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx.5, align 1
  %conv104 = zext i8 %87 to i32
  %and105 = shl nuw nsw i32 %conv104, 8
  %mul106 = and i32 %and105, 1792
  %88 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx.6, align 2
  %conv109 = zext i8 %89 to i32
  %mul110 = shl nuw nsw i32 %conv109, 4
  %add111 = add nuw nsw i32 %mul106, %mul110
  %90 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx.7, align 1
  %conv114 = zext i8 %91 to i32
  %add115 = add nuw nsw i32 %add111, %conv114
  %92 = lshr i32 %add115, 2
  %93 = lshr i32 %conv104, 2
  %and121 = and i32 %93, 2
  %sub122 = add nsw i32 %and121, -1
  %mul123 = mul nsw i32 %92, %sub122
  %and127 = shl nuw nsw i32 %conv114, 8
  %shl128 = and i32 %and127, 256
  %94 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx.8, align 8
  %conv131 = zext i8 %95 to i32
  %shl132 = shl nuw nsw i32 %conv131, 4
  %or133 = or i32 %shl128, %shl132
  %96 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx.9, align 1
  %conv136 = zext i8 %97 to i32
  %or137 = or i32 %or133, %conv136
  %and141 = and i32 %conv114, 2
  %sub142 = add nsw i32 %and141, -1
  %mul143 = mul nsw i32 %or137, %sub142
  %98 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx30, align 1
  %conv146 = zext i8 %99 to i32
  %and147 = shl nuw nsw i32 %conv146, 8
  %mul148 = and i32 %and147, 1792
  %100 = ptrtoint ptr %arrayidx30.1 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx30.1, align 4
  %conv151 = zext i8 %101 to i32
  %mul152 = shl nuw nsw i32 %conv151, 4
  %add153 = add nuw nsw i32 %mul148, %mul152
  %102 = ptrtoint ptr %arrayidx30.2 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx30.2, align 1
  %conv156 = zext i8 %103 to i32
  %add157 = add nuw nsw i32 %add153, %conv156
  %104 = lshr i32 %add157, 2
  %105 = lshr i32 %conv146, 2
  %and163 = and i32 %105, 2
  %sub164 = add nsw i32 %and163, -1
  %mul165 = mul nsw i32 %104, %sub164
  %and169 = shl nuw nsw i32 %conv156, 8
  %shl170 = and i32 %and169, 256
  %106 = ptrtoint ptr %arrayidx30.3 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx30.3, align 2
  %conv173 = zext i8 %107 to i32
  %shl174 = shl nuw nsw i32 %conv173, 4
  %or175 = or i32 %shl170, %shl174
  %108 = ptrtoint ptr %arrayidx30.4 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx30.4, align 1
  %conv178 = zext i8 %109 to i32
  %or179 = or i32 %or175, %conv178
  %and183 = and i32 %conv156, 2
  %sub184 = add nsw i32 %and183, -1
  %mul185 = mul nsw i32 %or179, %sub184
  %110 = ptrtoint ptr %arrayidx30.5 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx30.5, align 8
  %conv188 = zext i8 %111 to i32
  %and189 = shl nuw nsw i32 %conv188, 8
  %mul190 = and i32 %and189, 1792
  %112 = ptrtoint ptr %arrayidx30.6 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx30.6, align 1
  %conv193 = zext i8 %113 to i32
  %mul194 = shl nuw nsw i32 %conv193, 4
  %add195 = add nuw nsw i32 %mul190, %mul194
  %114 = ptrtoint ptr %arrayidx30.7 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx30.7, align 2
  %conv198 = zext i8 %115 to i32
  %add199 = add nuw nsw i32 %add195, %conv198
  %116 = lshr i32 %add199, 2
  %117 = lshr i32 %conv188, 2
  %and205 = and i32 %117, 2
  %sub206 = add nsw i32 %and205, -1
  %mul207 = mul nsw i32 %116, %sub206
  %118 = ptrtoint ptr %arrayidx30.8 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx30.8, align 1
  %120 = ptrtoint ptr %arrayidx30.9 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx30.9, align 4
  %122 = ptrtoint ptr %arrayidx30.10 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx30.10, align 1
  %124 = ptrtoint ptr %arrayidx30.11 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx30.11, align 2
  %arrayidx237 = getelementptr [25 x i8], ptr %w, i32 0, i32 24
  %126 = ptrtoint ptr %arrayidx237 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx237, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @walkera0701_parse_frame.__UNIQUE_ID_ddebug216, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@walkera0701_parse_frame, %if.then243)) #6
          to label %do.end [label %if.then243], !srcloc !67

if.then243:                                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  %128 = lshr i8 %127, 3
  %129 = and i8 %128, 1
  %130 = zext i8 %129 to i32
  %conv230 = zext i8 %123 to i32
  %shl231 = shl nuw nsw i32 %conv230, 4
  %conv234 = zext i8 %125 to i32
  %or235 = or i32 %shl231, %conv234
  %and211 = shl nuw nsw i32 %conv198, 8
  %shl212 = and i32 %and211, 256
  %conv215 = zext i8 %119 to i32
  %shl216 = shl nuw nsw i32 %conv215, 4
  %or217 = or i32 %shl212, %shl216
  %conv220 = zext i8 %121 to i32
  %or221 = or i32 %or217, %conv220
  %and225 = and i32 %conv198, 2
  %sub226 = add nsw i32 %and225, -1
  %mul227 = mul nsw i32 %or221, %sub226
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @walkera0701_parse_frame.__UNIQUE_ID_ddebug216, ptr noundef nonnull @.str.21, i32 noundef %mul83, i32 noundef %mul101, i32 noundef %mul123, i32 noundef %mul143, i32 noundef %mul165, i32 noundef %mul185, i32 noundef %mul207, i32 noundef %mul227, i32 noundef %or235, i32 noundef %130) #6
  br label %do.end

do.end:                                           ; preds = %if.then243, %if.end63
  %input_dev = getelementptr inbounds %struct.walkera_dev, ptr %w, i32 0, i32 5
  %131 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %132, i32 noundef 3, i32 noundef 0, i32 noundef %mul101) #6
  %133 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %134, i32 noundef 3, i32 noundef 1, i32 noundef %mul83) #6
  %135 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %136, i32 noundef 3, i32 noundef 2, i32 noundef %mul185) #6
  %137 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %138, i32 noundef 3, i32 noundef 6, i32 noundef %mul123) #6
  %139 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %140, i32 noundef 3, i32 noundef 7, i32 noundef %mul143) #6
  %141 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %input_dev, align 8
  tail call void @input_event(ptr noundef %142, i32 noundef 3, i32 noundef 40, i32 noundef %mul207) #6
  %143 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %input_dev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul165)
  %cmp251 = icmp sgt i32 %mul165, 0
  %lnot.ext.i = zext i1 %cmp251 to i32
  tail call void @input_event(ptr noundef %144, i32 noundef 1, i32 noundef 336, i32 noundef %lnot.ext.i) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end51.cleanup_crit_edge, %for.body28.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_claim(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__parport_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

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
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !51, !52, !53, !55, !56, !57}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @__UNIQUE_ID_author210, !1, !"__UNIQUE_ID_author210", i1 false, i1 false}
!1 = !{!"../drivers/input/joystick/walkera0701.c", i32 32, i32 1}
!2 = !{ptr @__UNIQUE_ID_description211, !3, !"__UNIQUE_ID_description211", i1 false, i1 false}
!3 = !{!"../drivers/input/joystick/walkera0701.c", i32 33, i32 1}
!4 = !{ptr @__UNIQUE_ID_file212, !5, !"__UNIQUE_ID_file212", i1 false, i1 false}
!5 = !{!"../drivers/input/joystick/walkera0701.c", i32 34, i32 1}
!6 = !{ptr @__UNIQUE_ID_license213, !5, !"__UNIQUE_ID_license213", i1 false, i1 false}
!7 = !{ptr @__param_port, !8, !"__param_port", i1 false, i1 false}
!8 = !{!"../drivers/input/joystick/walkera0701.c", i32 37, i32 1}
!9 = !{ptr @__UNIQUE_ID_porttype214, !8, !"__UNIQUE_ID_porttype214", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_port215, !11, !"__UNIQUE_ID_port215", i1 false, i1 false}
!11 = !{!"../drivers/input/joystick/walkera0701.c", i32 38, i32 1}
!12 = !{ptr @__initcall__kmod_walkera0701__218_309_walkera0701_init6, !13, !"__initcall__kmod_walkera0701__218_309_walkera0701_init6", i1 false, i1 false}
!13 = !{!"../drivers/input/joystick/walkera0701.c", i32 309, i32 1}
!14 = !{ptr @__exitcall_walkera0701_exit, !15, !"__exitcall_walkera0701_exit", i1 false, i1 false}
!15 = !{!"../drivers/input/joystick/walkera0701.c", i32 310, i32 1}
!16 = !{ptr @walkera0701_pp_no, !17, !"walkera0701_pp_no", i1 false, i1 false}
!17 = !{!"../drivers/input/joystick/walkera0701.c", i32 36, i32 21}
!18 = !{ptr @__param_str_port, !8, !"__param_str_port", i1 false, i1 false}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/input/joystick/walkera0701.c", i32 293, i32 10}
!21 = !{ptr @walkera0701_parport_driver, !22, !"walkera0701_parport_driver", i1 false, i1 false}
!22 = !{!"../drivers/input/joystick/walkera0701.c", i32 292, i32 30}
!23 = !{ptr @w_dev, !24, !"w_dev", i1 false, i1 false}
!24 = !{!"../drivers/input/joystick/walkera0701.c", i32 60, i32 27}
!25 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/input/joystick/walkera0701.c", i32 205, i32 3}
!27 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @walkera0701_attach.__UNIQUE_ID_ddebug217, !26, !"__UNIQUE_ID_ddebug217", i1 false, i1 false}
!30 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/joystick/walkera0701.c", i32 210, i32 3}
!33 = !{ptr @walkera0701_attach._entry, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @walkera0701_attach._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/input/joystick/walkera0701.c", i32 226, i32 3}
!37 = !{ptr @walkera0701_attach._entry.6, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @walkera0701_attach._entry_ptr.8, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/joystick/walkera0701.c", i32 231, i32 3}
!41 = !{ptr @walkera0701_attach._entry.9, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @walkera0701_attach._entry_ptr.11, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/input/joystick/walkera0701.c", i32 240, i32 3}
!45 = !{ptr @walkera0701_attach._entry.12, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @walkera0701_attach._entry_ptr.14, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/input/joystick/walkera0701.c", i32 245, i32 23}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/input/joystick/walkera0701.c", i32 268, i32 3}
!51 = !{ptr @walkera0701_attach._entry.16, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @walkera0701_attach._entry_ptr.18, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/input/joystick/walkera0701.c", i32 104, i32 2}
!55 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @walkera0701_parse_frame.__UNIQUE_ID_ddebug216, !54, !"__UNIQUE_ID_ddebug216", i1 false, i1 false}
!57 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{i64 2148698273, i64 2148698278, i64 2148698291, i64 2148698335, i64 2148698369, i64 2148698390}
!68 = !{!"branch_weights", i32 2000, i32 1}
