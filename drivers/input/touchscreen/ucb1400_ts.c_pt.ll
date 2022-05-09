; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/ucb1400_ts.c_pt.bc'
source_filename = "../drivers/input/touchscreen/ucb1400_ts.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ucb1400_ts = type { ptr, i32, i32, ptr, %struct.wait_queue_head, i8 }
%struct.snd_ac97 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, %struct.mutex, %struct.mutex, i16, i16, i32, i16, i16, i16, ptr, i32, i32, [6 x i32], i32, [128 x i16], [4 x i32], %union.anon.75, i8, i8, i32, %struct.delayed_work, %struct.device, ptr, [2 x ptr] }
%union.anon.75 = type { i32, [28 x i8] }
%struct.snd_ac97_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__initcall__kmod_ucb1400_ts__241_443_ucb1400_ts_driver_init6 = internal global ptr @ucb1400_ts_driver_init, section ".initcall6.init", align 4
@ucb1400_ts_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ucb1400_ts_probe, ptr @ucb1400_ts_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ucb1400_ts_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ucb1400_ts_driver_exit = internal global ptr @ucb1400_ts_driver_exit, section ".exitcall.exit", align 4
@__param_str_adcsync = internal constant [19 x i8] c"ucb1400_ts.adcsync\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@adcsync = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_adcsync = internal constant %struct.kernel_param { ptr @__param_str_adcsync, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @adcsync } }, section "__param", align 4
@__UNIQUE_ID_adcsynctype242 = internal constant [33 x i8] c"ucb1400_ts.parmtype=adcsync:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_adcsync243 = internal constant [69 x i8] c"ucb1400_ts.parm=adcsync:Synchronize touch readings with ADCSYNC pin.\00", section ".modinfo", align 1
@__param_str_ts_delay = internal constant [20 x i8] c"ucb1400_ts.ts_delay\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@ts_delay = internal global { i32, [28 x i8] } { i32 55, [28 x i8] zeroinitializer }, align 32
@__param_ts_delay = internal constant %struct.kernel_param { ptr @__param_str_ts_delay, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @ts_delay } }, section "__param", align 4
@__UNIQUE_ID_ts_delaytype244 = internal constant [33 x i8] c"ucb1400_ts.parmtype=ts_delay:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ts_delay245 = internal constant [86 x i8] c"ucb1400_ts.parm=ts_delay:Delay between panel setup and position read. Default = 55us.\00", section ".modinfo", align 1
@__param_str_ts_delay_pressure = internal constant [29 x i8] c"ucb1400_ts.ts_delay_pressure\00", align 1
@ts_delay_pressure = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_ts_delay_pressure = internal constant %struct.kernel_param { ptr @__param_str_ts_delay_pressure, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @ts_delay_pressure } }, section "__param", align 4
@__UNIQUE_ID_ts_delay_pressuretype246 = internal constant [42 x i8] c"ucb1400_ts.parmtype=ts_delay_pressure:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ts_delay_pressure247 = internal constant [95 x i8] c"ucb1400_ts.parm=ts_delay_pressure:delay between panel setup and pressure read.  Default = 0us.\00", section ".modinfo", align 1
@__UNIQUE_ID_description248 = internal constant [58 x i8] c"ucb1400_ts.description=Philips UCB1400 touchscreen driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file249 = internal constant [53 x i8] c"ucb1400_ts.file=drivers/input/touchscreen/ucb1400_ts\00", section ".modinfo", align 1
@__UNIQUE_ID_license250 = internal constant [23 x i8] c"ucb1400_ts.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ucb1400_ts\00", [21 x i8] zeroinitializer }, align 32
@ucb1400_ts_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ucb1400_ts_suspend, ptr @ucb1400_ts_resume, ptr @ucb1400_ts_suspend, ptr @ucb1400_ts_resume, ptr @ucb1400_ts_suspend, ptr @ucb1400_ts_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ucb1400_ts_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 331, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IRQ probe failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ucb1400_ts_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/input/touchscreen/ucb1400_ts.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ucb1400_ts_probe._entry_ptr = internal global ptr @ucb1400_ts_probe._entry, section ".printk_index", align 4
@ucb1400_ts_probe.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.6, i8 0, i8 83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"found IRQ %d\0A\00", [18 x i8] zeroinitializer }, align 32
@ucb1400_ts_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&ucb->ts_wait\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"UCB1400 touchscreen interface\00", [34 x i8] zeroinitializer }, align 32
@ucb1400_ts_probe.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.9, i8 0, i8 90, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"x/y = %d/%d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UCB1400\00", [24 x i8] zeroinitializer }, align 32
@ucb1400_ts_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 376, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unable to grab irq%d: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@ucb1400_ts_probe._entry_ptr.13 = internal global ptr @ucb1400_ts_probe._entry.11, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ucb1400_ts_detect_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 294, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"timed out in IRQ probe\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ucb1400_ts_detect_irq\00", [42 x i8] zeroinitializer }, align 32
@ucb1400_ts_detect_irq._entry_ptr = internal global ptr @ucb1400_ts_detect_irq._entry, section ".printk_index", align 4
@ucb1400_clear_pending_irq.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.3, ptr @.str.17, i8 0, i8 43, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ucb1400_clear_pending_irq\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ucb1400: unexpected IE_STATUS = %#x\0A\00", [59 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.18 = private unnamed_addr constant [18 x i8] c"ucb1400_ts_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 435, i32 31 }
@___asan_gen_.21 = private unnamed_addr constant [8 x i8] c"adcsync\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 29, i32 13 }
@___asan_gen_.24 = private unnamed_addr constant [9 x i8] c"ts_delay\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 30, i32 12 }
@___asan_gen_.27 = private unnamed_addr constant [18 x i8] c"ts_delay_pressure\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 31, i32 12 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 439, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant [18 x i8] c"ucb1400_ts_pm_ops\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 432, i32 8 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 331, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 335, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 337, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 342, i32 24 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 363, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 373, i32 10 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 375, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 294, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.91 = private constant [42 x i8] c"../drivers/input/touchscreen/ucb1400_ts.c\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 174, i32 3 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_adcsync243, ptr @__UNIQUE_ID_adcsynctype242, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_file249, ptr @__UNIQUE_ID_license250, ptr @__UNIQUE_ID_ts_delay245, ptr @__UNIQUE_ID_ts_delay_pressure247, ptr @__UNIQUE_ID_ts_delay_pressuretype246, ptr @__UNIQUE_ID_ts_delaytype244, ptr @__exitcall_ucb1400_ts_driver_exit, ptr @__initcall__kmod_ucb1400_ts__241_443_ucb1400_ts_driver_init6, ptr @__param_adcsync, ptr @__param_ts_delay, ptr @__param_ts_delay_pressure, ptr @ucb1400_ts_detect_irq._entry, ptr @ucb1400_ts_detect_irq._entry_ptr, ptr @ucb1400_ts_driver_exit, ptr @ucb1400_ts_probe._entry, ptr @ucb1400_ts_probe._entry.11, ptr @ucb1400_ts_probe._entry_ptr, ptr @ucb1400_ts_probe._entry_ptr.13, ptr @ucb1400_ts_driver, ptr @adcsync, ptr @ts_delay, ptr @ts_delay_pressure, ptr @.str, ptr @ucb1400_ts_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ucb1400_ts_probe.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucb1400_ts_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adcsync to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts_delay to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts_delay_pressure to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucb1400_ts_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucb1400_ts_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucb1400_ts_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucb1400_ts_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ucb1400_ts_detect_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ucb1400_ts_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ucb1400_ts_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ucb1400_ts_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @ucb1400_ts_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucb1400_ts_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call1 = tail call ptr @input_allocate_device() #5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %1, align 4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq = getelementptr inbounds %struct.ucb1400_ts, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then3, label %if.end.do.body10_crit_edge

if.end.do.body10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body10

if.then3:                                         ; preds = %if.end
  %call.i = tail call i32 @probe_irq_on() #5
  %ac97.i = getelementptr inbounds %struct.ucb1400_ts, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %ac97.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ac97.i, align 4
  %bus.i.i = getelementptr inbounds %struct.snd_ac97, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %write.i.i = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write.i.i, align 4
  tail call void %12(ptr noundef %6, i16 noundef zeroext 94, i16 noundef zeroext 2048) #5
  %13 = ptrtoint ptr %ac97.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ac97.i, align 4
  %bus.i49.i = getelementptr inbounds %struct.snd_ac97, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %bus.i49.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus.i49.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %write.i50.i = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %write.i50.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write.i50.i, align 4
  tail call void %20(ptr noundef %14, i16 noundef zeroext 96, i16 noundef zeroext 2048) #5
  %21 = ptrtoint ptr %ac97.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ac97.i, align 4
  %bus.i51.i = getelementptr inbounds %struct.snd_ac97, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %bus.i51.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus.i51.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %write.i52.i = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %write.i52.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write.i52.i, align 4
  tail call void %28(ptr noundef %22, i16 noundef zeroext 98, i16 noundef zeroext -1) #5
  %29 = ptrtoint ptr %ac97.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ac97.i, align 4
  %bus.i53.i = getelementptr inbounds %struct.snd_ac97, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %bus.i53.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus.i53.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %write.i54.i = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %write.i54.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write.i54.i, align 4
  tail call void %36(ptr noundef %30, i16 noundef zeroext 98, i16 noundef zeroext 0) #5
  %37 = ptrtoint ptr %ac97.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ac97.i, align 4
  %bus.i55.i = getelementptr inbounds %struct.snd_ac97, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %bus.i55.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bus.i55.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %write.i56.i = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %write.i56.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write.i56.i, align 4
  tail call void %44(ptr noundef %38, i16 noundef zeroext 102, i16 noundef zeroext -32768) #5
  %45 = ptrtoint ptr %ac97.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ac97.i, align 4
  %bus.i57.i = getelementptr inbounds %struct.snd_ac97, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %bus.i57.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bus.i57.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %write.i58.i = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %write.i58.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write.i58.i, align 4
  tail call void %52(ptr noundef %46, i16 noundef zeroext 102, i16 noundef zeroext -32640) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %53 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %53, 50
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end.i.while.cond.i_crit_edge, %if.then3
  %54 = ptrtoint ptr %ac97.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ac97.i, align 4
  %bus.i59.i = getelementptr inbounds %struct.snd_ac97, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %bus.i59.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bus.i59.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %read.i.i = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %read.i.i, align 4
  %call.i.i = tail call zeroext i16 %61(ptr noundef %55, i16 noundef zeroext 104) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call.i.i)
  %tobool.not.i = icmp sgt i16 %call.i.i, -1
  br i1 %tobool.not.i, label %do.end.i, label %while.end.i

do.end.i:                                         ; preds = %while.cond.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !82
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %62 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %62
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %do.end17.i, label %do.end.i.while.cond.i_crit_edge

do.end.i.while.cond.i_crit_edge:                  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i

do.end17.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #8
  %call18.i = tail call i32 @probe_irq_off(i32 noundef %call.i) #5
  br label %do.end

while.end.i:                                      ; preds = %while.cond.i
  %63 = ptrtoint ptr %ac97.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ac97.i, align 4
  %bus.i60.i = getelementptr inbounds %struct.snd_ac97, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %bus.i60.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bus.i60.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %write.i61.i = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %write.i61.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %write.i61.i, align 4
  tail call void %70(ptr noundef %64, i16 noundef zeroext 102, i16 noundef zeroext 0) #5
  %71 = ptrtoint ptr %ac97.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ac97.i, align 4
  %bus.i62.i = getelementptr inbounds %struct.snd_ac97, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %bus.i62.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bus.i62.i, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %write.i63.i = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %write.i63.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %write.i63.i, align 4
  tail call void %78(ptr noundef %72, i16 noundef zeroext 94, i16 noundef zeroext 0) #5
  %79 = ptrtoint ptr %ac97.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ac97.i, align 4
  %bus.i64.i = getelementptr inbounds %struct.snd_ac97, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %bus.i64.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %bus.i64.i, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  %write.i65.i = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %write.i65.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %write.i65.i, align 4
  tail call void %86(ptr noundef %80, i16 noundef zeroext 96, i16 noundef zeroext 0) #5
  %87 = ptrtoint ptr %ac97.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ac97.i, align 4
  %bus.i66.i = getelementptr inbounds %struct.snd_ac97, ptr %88, i32 0, i32 3
  %89 = ptrtoint ptr %bus.i66.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %bus.i66.i, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 4
  %write.i67.i = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %write.i67.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %write.i67.i, align 4
  tail call void %94(ptr noundef %88, i16 noundef zeroext 98, i16 noundef zeroext -1) #5
  %95 = ptrtoint ptr %ac97.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ac97.i, align 4
  %bus.i68.i = getelementptr inbounds %struct.snd_ac97, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %bus.i68.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %bus.i68.i, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 4
  %write.i69.i = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %write.i69.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %write.i69.i, align 4
  tail call void %102(ptr noundef %96, i16 noundef zeroext 98, i16 noundef zeroext 0) #5
  %call24.i = tail call i32 @probe_irq_off(i32 noundef %call.i) #5
  %103 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %call24.i, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp26.i = icmp slt i32 %call24.i, 0
  br i1 %cmp26.i, label %while.end.i.do.end_crit_edge, label %while.end.i.do.body10_crit_edge

while.end.i.do.body10_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body10

while.end.i.do.end_crit_edge:                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %while.end.i.do.end_crit_edge, %do.end17.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %err_free_devs

do.body10:                                        ; preds = %while.end.i.do.body10_crit_edge, %if.end.do.body10_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ucb1400_ts_probe.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ucb1400_ts_probe, %if.then15)) #5
          to label %do.body21 [label %if.then15], !srcloc !83

if.then15:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #7
  %104 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ucb1400_ts_probe.__UNIQUE_ID_ddebug239, ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %105) #5
  br label %do.body21

do.body21:                                        ; preds = %if.then15, %do.body10
  %ts_wait = getelementptr inbounds %struct.ucb1400_ts, ptr %1, i32 0, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %ts_wait, ptr noundef nonnull @.str.7, ptr noundef nonnull @ucb1400_ts_probe.__key) #5
  %106 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %107, i32 0, i32 40, i32 8
  %108 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %1, ptr %driver_data.i.i, align 4
  %109 = load ptr, ptr %1, align 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %109, i32 0, i32 40, i32 1
  %110 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %dev, ptr %parent, align 8
  %111 = load ptr, ptr %1, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @.str.8, ptr %111, align 8
  %ac97 = getelementptr inbounds %struct.ucb1400_ts, ptr %1, i32 0, i32 3
  %113 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ac97, align 4
  %bus.i = getelementptr inbounds %struct.snd_ac97, ptr %114, i32 0, i32 3
  %115 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %bus.i, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %116, align 4
  %read.i = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %118, i32 0, i32 3
  %119 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %read.i, align 4
  %call.i140 = tail call zeroext i16 %120(ptr noundef %114, i16 noundef zeroext 124) #5
  %121 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %1, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %122, i32 0, i32 3, i32 1
  %123 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %call.i140, ptr %vendor, align 2
  %id31 = getelementptr inbounds %struct.ucb1400_ts, ptr %1, i32 0, i32 1
  %124 = ptrtoint ptr %id31 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %id31, align 4
  %conv = trunc i32 %125 to i16
  %126 = load ptr, ptr %1, align 4
  %product = getelementptr inbounds %struct.input_dev, ptr %126, i32 0, i32 3, i32 2
  %127 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %conv, ptr %product, align 4
  %128 = load ptr, ptr %1, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %128, i32 0, i32 31
  %129 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr @ucb1400_ts_open, ptr %open, align 8
  %130 = load ptr, ptr %1, align 4
  %close = getelementptr inbounds %struct.input_dev, ptr %130, i32 0, i32 32
  %131 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr @ucb1400_ts_close, ptr %close, align 4
  %132 = load ptr, ptr %1, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %132, i32 0, i32 5
  %133 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 10, ptr %evbit, align 8
  %134 = load ptr, ptr %1, align 4
  %arrayidx38 = getelementptr %struct.input_dev, ptr %134, i32 0, i32 6, i32 10
  %135 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 1024, ptr %arrayidx38, align 4
  %136 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %ac97, align 4
  %bus.i141 = getelementptr inbounds %struct.snd_ac97, ptr %137, i32 0, i32 3
  %138 = ptrtoint ptr %bus.i141 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %bus.i141, align 4
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %139, align 4
  %read.i142 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %141, i32 0, i32 3
  %142 = ptrtoint ptr %read.i142 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %read.i142, align 4
  %call.i143 = tail call zeroext i16 %143(ptr noundef %137, i16 noundef zeroext 108) #5
  %144 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %ac97, align 4
  %146 = or i16 %call.i143, 4096
  %bus.i144 = getelementptr inbounds %struct.snd_ac97, ptr %145, i32 0, i32 3
  %147 = ptrtoint ptr %bus.i144 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %bus.i144, align 4
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %148, align 4
  %write.i = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %150, i32 0, i32 2
  %151 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %write.i, align 4
  tail call void %152(ptr noundef %145, i16 noundef zeroext 108, i16 noundef zeroext %146) #5
  %153 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %ac97, align 4
  %bus.i.i145 = getelementptr inbounds %struct.snd_ac97, ptr %154, i32 0, i32 3
  %155 = ptrtoint ptr %bus.i.i145 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %bus.i.i145, align 4
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %156, align 4
  %write.i.i146 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %158, i32 0, i32 2
  %159 = ptrtoint ptr %write.i.i146 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %write.i.i146, align 4
  tail call void %160(ptr noundef %154, i16 noundef zeroext 102, i16 noundef zeroext -32768) #5
  %161 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %ac97, align 4
  %bus.i.i148 = getelementptr inbounds %struct.snd_ac97, ptr %162, i32 0, i32 3
  %163 = ptrtoint ptr %bus.i.i148 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %bus.i.i148, align 4
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %164, align 4
  %write.i.i149 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %166, i32 0, i32 2
  %167 = ptrtoint ptr %write.i.i149 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %write.i.i149, align 4
  tail call void %168(ptr noundef %162, i16 noundef zeroext 100, i16 noundef zeroext 2322) #5
  %169 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %ac97, align 4
  %171 = load i8, ptr @adcsync, align 1, !range !84
  %172 = zext i8 %171 to i32
  %call.i150 = tail call i32 @ucb1400_adc_read(ptr noundef %170, i16 noundef zeroext 0, i32 noundef %172) #5
  %173 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %ac97, align 4
  %bus.i.i152 = getelementptr inbounds %struct.snd_ac97, ptr %174, i32 0, i32 3
  %175 = ptrtoint ptr %bus.i.i152 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %bus.i.i152, align 4
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %176, align 4
  %write.i.i153 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %178, i32 0, i32 2
  %179 = ptrtoint ptr %write.i.i153 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %write.i.i153, align 4
  tail call void %180(ptr noundef %174, i16 noundef zeroext 100, i16 noundef zeroext 2376) #5
  %181 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %ac97, align 4
  %183 = load i8, ptr @adcsync, align 1, !range !84
  %184 = zext i8 %183 to i32
  %call.i154 = tail call i32 @ucb1400_adc_read(ptr noundef %182, i16 noundef zeroext 0, i32 noundef %184) #5
  %185 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %ac97, align 4
  %bus.i.i155 = getelementptr inbounds %struct.snd_ac97, ptr %186, i32 0, i32 3
  %187 = ptrtoint ptr %bus.i.i155 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %bus.i.i155, align 4
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %188, align 4
  %write.i.i156 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %190, i32 0, i32 2
  %191 = ptrtoint ptr %write.i.i156 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %write.i.i156, align 4
  tail call void %192(ptr noundef %186, i16 noundef zeroext 102, i16 noundef zeroext 0) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ucb1400_ts_probe.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ucb1400_ts_probe, %if.then60)) #5
          to label %do.end64 [label %if.then60], !srcloc !83

if.then60:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ucb1400_ts_probe.__UNIQUE_ID_ddebug240, ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call.i150, i32 noundef %call.i154) #5
  br label %do.end64

do.end64:                                         ; preds = %if.then60, %do.body21
  %193 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %1, align 4
  tail call void @input_set_abs_params(ptr noundef %194, i32 noundef 0, i32 noundef 0, i32 noundef %call.i150, i32 noundef 0, i32 noundef 0) #5
  %195 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %1, align 4
  tail call void @input_set_abs_params(ptr noundef %196, i32 noundef 1, i32 noundef 0, i32 noundef %call.i154, i32 noundef 0, i32 noundef 0) #5
  %197 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %1, align 4
  tail call void @input_set_abs_params(ptr noundef %198, i32 noundef 24, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %stopped.i = getelementptr inbounds %struct.ucb1400_ts, ptr %1, i32 0, i32 5
  %199 = ptrtoint ptr %stopped.i to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 1, ptr %stopped.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  tail call void @arm_heavy_mb() #5
  tail call void @__wake_up(ptr noundef %ts_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  %200 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %201) #5
  %202 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %ac97, align 4
  %bus.i.i.i = getelementptr inbounds %struct.snd_ac97, ptr %203, i32 0, i32 3
  %204 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %bus.i.i.i, align 4
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %205, align 4
  %write.i.i.i = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %207, i32 0, i32 2
  %208 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %write.i.i.i, align 4
  tail call void %209(ptr noundef %203, i16 noundef zeroext 96, i16 noundef zeroext 0) #5
  %210 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %ac97, align 4
  %bus.i.i158 = getelementptr inbounds %struct.snd_ac97, ptr %211, i32 0, i32 3
  %212 = ptrtoint ptr %bus.i.i158 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %bus.i.i158, align 4
  %214 = ptrtoint ptr %213 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %213, align 4
  %write.i.i159 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %215, i32 0, i32 2
  %216 = ptrtoint ptr %write.i.i159 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %write.i.i159, align 4
  tail call void %217(ptr noundef %211, i16 noundef zeroext 100, i16 noundef zeroext 0) #5
  %218 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %irq, align 4
  %call69 = tail call i32 @request_threaded_irq(i32 noundef %219, ptr noundef null, ptr noundef nonnull @ucb1400_irq, i32 noundef 8193, ptr noundef nonnull @.str.10, ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end77, label %do.end74

do.end74:                                         ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #7
  %220 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %221, i32 noundef %call69) #8
  br label %err_free_devs

if.end77:                                         ; preds = %do.end64
  %222 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %1, align 4
  %call79 = tail call i32 @input_register_device(ptr noundef %223) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end77.cleanup_crit_edge, label %err_free_irq

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_free_irq:                                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  %224 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %irq, align 4
  %call84 = tail call ptr @free_irq(i32 noundef %225, ptr noundef %1) #5
  br label %err_free_devs

err_free_devs:                                    ; preds = %err_free_irq, %do.end74, %do.end
  %error.0 = phi i32 [ -19, %do.end ], [ %call69, %do.end74 ], [ %call79, %err_free_irq ]
  %226 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %1, align 4
  tail call void @input_free_device(ptr noundef %227) #5
  br label %cleanup

cleanup:                                          ; preds = %err_free_devs, %if.end77.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end77.cleanup_crit_edge ], [ %error.0, %err_free_devs ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucb1400_ts_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %irq = getelementptr inbounds %struct.ucb1400_ts, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #5
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @input_unregister_device(ptr noundef %5) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucb1400_ts_open(ptr nocapture noundef readonly %idev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %idev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %stopped.i = getelementptr inbounds %struct.ucb1400_ts, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %stopped.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %stopped.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  tail call void @arm_heavy_mb() #5
  %ac97.i.i = getelementptr inbounds %struct.ucb1400_ts, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %ac97.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ac97.i.i, align 4
  %bus.i.i.i = getelementptr inbounds %struct.snd_ac97, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus.i.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %write.i.i.i = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write.i.i.i, align 4
  tail call void %10(ptr noundef %4, i16 noundef zeroext 100, i16 noundef zeroext 195) #5
  %11 = ptrtoint ptr %ac97.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ac97.i.i, align 4
  %bus.i.i5.i = getelementptr inbounds %struct.snd_ac97, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %bus.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus.i.i5.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %write.i.i6.i = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %write.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write.i.i6.i, align 4
  tail call void %18(ptr noundef %12, i16 noundef zeroext 98, i16 noundef zeroext 4096) #5
  %19 = ptrtoint ptr %ac97.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ac97.i.i, align 4
  %bus.i5.i.i = getelementptr inbounds %struct.snd_ac97, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %bus.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus.i5.i.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %write.i6.i.i = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %write.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write.i6.i.i, align 4
  tail call void %26(ptr noundef %20, i16 noundef zeroext 98, i16 noundef zeroext 0) #5
  %27 = ptrtoint ptr %ac97.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ac97.i.i, align 4
  %bus.i7.i.i = getelementptr inbounds %struct.snd_ac97, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %bus.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bus.i7.i.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %write.i8.i.i = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %write.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write.i8.i.i, align 4
  tail call void %34(ptr noundef %28, i16 noundef zeroext 96, i16 noundef zeroext 4096) #5
  %irq.i = getelementptr inbounds %struct.ucb1400_ts, ptr %1, i32 0, i32 2
  %35 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq.i, align 4
  tail call void @enable_irq(i32 noundef %36) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ucb1400_ts_close(ptr nocapture noundef readonly %idev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %idev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %stopped.i = getelementptr inbounds %struct.ucb1400_ts, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %stopped.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %stopped.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  tail call void @arm_heavy_mb() #5
  %ts_wait.i = getelementptr inbounds %struct.ucb1400_ts, ptr %1, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %ts_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  %irq.i = getelementptr inbounds %struct.ucb1400_ts, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %4) #5
  %ac97.i.i = getelementptr inbounds %struct.ucb1400_ts, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %ac97.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ac97.i.i, align 4
  %bus.i.i.i = getelementptr inbounds %struct.snd_ac97, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus.i.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %write.i.i.i = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write.i.i.i, align 4
  tail call void %12(ptr noundef %6, i16 noundef zeroext 96, i16 noundef zeroext 0) #5
  %13 = ptrtoint ptr %ac97.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ac97.i.i, align 4
  %bus.i.i = getelementptr inbounds %struct.snd_ac97, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %write.i.i = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write.i.i, align 4
  tail call void %20(ptr noundef %14, i16 noundef zeroext 100, i16 noundef zeroext 0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucb1400_irq(i32 noundef %irqnr, ptr noundef %devid) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.ucb1400_ts, ptr %devid, i32 0, i32 2
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %irqnr)
  %cmp.not = icmp eq i32 %1, %irqnr
  br i1 %cmp.not, label %if.end, label %entry.cleanup65_crit_edge, !prof !87

entry.cleanup65_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup65

if.end:                                           ; preds = %entry
  %ac97.i = getelementptr inbounds %struct.ucb1400_ts, ptr %devid, i32 0, i32 3
  %2 = ptrtoint ptr %ac97.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ac97.i, align 4
  %bus.i.i = getelementptr inbounds %struct.snd_ac97, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %read.i.i = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read.i.i, align 4
  %call.i.i = tail call zeroext i16 %9(ptr noundef %3, i16 noundef zeroext 98) #5
  %conv.i = zext i16 %call.i.i to i32
  %10 = ptrtoint ptr %ac97.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ac97.i, align 4
  %bus.i16.i = getelementptr inbounds %struct.snd_ac97, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %bus.i16.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i16.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %write.i.i = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write.i.i, align 4
  tail call void %17(ptr noundef %11, i16 noundef zeroext 98, i16 noundef zeroext %call.i.i) #5
  %18 = ptrtoint ptr %ac97.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ac97.i, align 4
  %bus.i17.i = getelementptr inbounds %struct.snd_ac97, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %bus.i17.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus.i17.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %write.i18.i = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %write.i18.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write.i18.i, align 4
  tail call void %25(ptr noundef %19, i16 noundef zeroext 98, i16 noundef zeroext 0) #5
  %and.i = and i32 %conv.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %ac97.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ac97.i, align 4
  %bus.i.i.i = getelementptr inbounds %struct.snd_ac97, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus.i.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %write.i.i.i = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write.i.i.i, align 4
  tail call void %33(ptr noundef %27, i16 noundef zeroext 96, i16 noundef zeroext 0) #5
  br label %ucb1400_clear_pending_irq.exit

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ucb1400_clear_pending_irq.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ucb1400_irq, %if.then8.i)) #5
          to label %ucb1400_clear_pending_irq.exit [label %if.then8.i], !srcloc !83

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %devid, align 4
  %dev.i = getelementptr inbounds %struct.input_dev, ptr %35, i32 0, i32 40
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ucb1400_clear_pending_irq.__UNIQUE_ID_ddebug238, ptr noundef %dev.i, ptr noundef nonnull @.str.17, i32 noundef %conv.i) #5
  br label %ucb1400_clear_pending_irq.exit

ucb1400_clear_pending_irq.exit:                   ; preds = %if.then8.i, %do.body.i, %if.then.i
  tail call void @msleep(i32 noundef 10) #5
  %stopped = getelementptr inbounds %struct.ucb1400_ts, ptr %devid, i32 0, i32 5
  %36 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %stopped, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool2.not142 = icmp eq i8 %37, 0
  br i1 %tobool2.not142, label %land.rhs.lr.ph, label %ucb1400_clear_pending_irq.exit.while.end_crit_edge

ucb1400_clear_pending_irq.exit.while.end_crit_edge: ; preds = %ucb1400_clear_pending_irq.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %ucb1400_clear_pending_irq.exit
  %ts_wait = getelementptr inbounds %struct.ucb1400_ts, ptr %devid, i32 0, i32 4
  br label %land.rhs

land.rhs:                                         ; preds = %if.end58.land.rhs_crit_edge, %land.rhs.lr.ph
  %38 = ptrtoint ptr %ac97.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ac97.i, align 4
  %bus.i.i95 = getelementptr inbounds %struct.snd_ac97, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %bus.i.i95 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bus.i.i95, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %read.i.i96 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %read.i.i96 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read.i.i96, align 4
  %call.i.i97 = call zeroext i16 %45(ptr noundef %39, i16 noundef zeroext 100) #5
  %46 = and i16 %call.i.i97, 12288
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool3.not = icmp eq i16 %46, 0
  br i1 %tobool3.not, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %47 = ptrtoint ptr %ac97.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ac97.i, align 4
  %bus.i.i99 = getelementptr inbounds %struct.snd_ac97, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %bus.i.i99 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bus.i.i99, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %write.i.i100 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %write.i.i100 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write.i.i100, align 4
  call void %54(ptr noundef %48, i16 noundef zeroext 102, i16 noundef zeroext -32768) #5
  %55 = ptrtoint ptr %ac97.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ac97.i, align 4
  %bus.i.i102 = getelementptr inbounds %struct.snd_ac97, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %bus.i.i102 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bus.i.i102, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %write.i.i103 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %write.i.i103 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write.i.i103, align 4
  call void %62(ptr noundef %56, i16 noundef zeroext 100, i16 noundef zeroext 2322) #5
  %63 = ptrtoint ptr %ac97.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ac97.i, align 4
  %bus.i10.i = getelementptr inbounds %struct.snd_ac97, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %bus.i10.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bus.i10.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %write.i11.i = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %write.i11.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %write.i11.i, align 4
  call void %70(ptr noundef %64, i16 noundef zeroext 100, i16 noundef zeroext 2322) #5
  %71 = ptrtoint ptr %ac97.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ac97.i, align 4
  %bus.i12.i = getelementptr inbounds %struct.snd_ac97, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %bus.i12.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bus.i12.i, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %write.i13.i = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %write.i13.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %write.i13.i, align 4
  call void %78(ptr noundef %72, i16 noundef zeroext 100, i16 noundef zeroext 2578) #5
  %79 = load i32, ptr @ts_delay, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %80(i32 noundef %79) #5
  %81 = ptrtoint ptr %ac97.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ac97.i, align 4
  %83 = load i8, ptr @adcsync, align 1, !range !84
  %84 = zext i8 %83 to i32
  %call.i = call i32 @ucb1400_adc_read(ptr noundef %82, i16 noundef zeroext 8, i32 noundef %84) #5
  %85 = ptrtoint ptr %ac97.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ac97.i, align 4
  %bus.i.i105 = getelementptr inbounds %struct.snd_ac97, ptr %86, i32 0, i32 3
  %87 = ptrtoint ptr %bus.i.i105 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %bus.i.i105, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 4
  %write.i.i106 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %write.i.i106 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %write.i.i106, align 4
  call void %92(ptr noundef %86, i16 noundef zeroext 100, i16 noundef zeroext 2376) #5
  %93 = ptrtoint ptr %ac97.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ac97.i, align 4
  %bus.i10.i107 = getelementptr inbounds %struct.snd_ac97, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %bus.i10.i107 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %bus.i10.i107, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %96, align 4
  %write.i11.i108 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %write.i11.i108 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %write.i11.i108, align 4
  call void %100(ptr noundef %94, i16 noundef zeroext 100, i16 noundef zeroext 2376) #5
  %101 = ptrtoint ptr %ac97.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ac97.i, align 4
  %bus.i12.i109 = getelementptr inbounds %struct.snd_ac97, ptr %102, i32 0, i32 3
  %103 = ptrtoint ptr %bus.i12.i109 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %bus.i12.i109, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 4
  %write.i13.i110 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %write.i13.i110 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %write.i13.i110, align 4
  call void %108(ptr noundef %102, i16 noundef zeroext 100, i16 noundef zeroext 2632) #5
  %109 = load i32, ptr @ts_delay, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %110 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %110(i32 noundef %109) #5
  %111 = ptrtoint ptr %ac97.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ac97.i, align 4
  %113 = load i8, ptr @adcsync, align 1, !range !84
  %114 = zext i8 %113 to i32
  %call.i117 = call i32 @ucb1400_adc_read(ptr noundef %112, i16 noundef zeroext 0, i32 noundef %114) #5
  %115 = ptrtoint ptr %ac97.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ac97.i, align 4
  %bus.i.i119 = getelementptr inbounds %struct.snd_ac97, ptr %116, i32 0, i32 3
  %117 = ptrtoint ptr %bus.i.i119 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %bus.i.i119, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %118, align 4
  %write.i.i120 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %120, i32 0, i32 2
  %121 = ptrtoint ptr %write.i.i120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %write.i.i120, align 4
  call void %122(ptr noundef %116, i16 noundef zeroext 100, i16 noundef zeroext 2499) #5
  %123 = load i32, ptr @ts_delay_pressure, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %124 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %124(i32 noundef %123) #5
  %125 = ptrtoint ptr %ac97.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %ac97.i, align 4
  %127 = load i8, ptr @adcsync, align 1, !range !84
  %128 = zext i8 %127 to i32
  %call.i125 = call i32 @ucb1400_adc_read(ptr noundef %126, i16 noundef zeroext 8, i32 noundef %128) #5
  %129 = ptrtoint ptr %ac97.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ac97.i, align 4
  %bus.i.i126 = getelementptr inbounds %struct.snd_ac97, ptr %130, i32 0, i32 3
  %131 = ptrtoint ptr %bus.i.i126 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %bus.i.i126, align 4
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %132, align 4
  %write.i.i127 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %134, i32 0, i32 2
  %135 = ptrtoint ptr %write.i.i127 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %write.i.i127, align 4
  call void %136(ptr noundef %130, i16 noundef zeroext 102, i16 noundef zeroext 0) #5
  %137 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %devid, align 4
  %conv.i128 = and i32 %call.i, 65535
  call void @input_event(ptr noundef %138, i32 noundef 3, i32 noundef 0, i32 noundef %conv.i128) #5
  %conv1.i = and i32 %call.i117, 65535
  call void @input_event(ptr noundef %138, i32 noundef 3, i32 noundef 1, i32 noundef %conv1.i) #5
  %conv2.i = and i32 %call.i125, 65535
  call void @input_event(ptr noundef %138, i32 noundef 3, i32 noundef 24, i32 noundef %conv2.i) #5
  call void @input_event(ptr noundef %138, i32 noundef 1, i32 noundef 330, i32 noundef 1) #5
  call void @input_event(ptr noundef %138, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 208) #5
  %139 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %stopped, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool17.not = icmp eq i8 %140, 0
  br i1 %tobool17.not, label %if.then29, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.then29:                                        ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #5
  %141 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #5
  %call32138 = call i32 @prepare_to_wait_event(ptr noundef %ts_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #5
  %142 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %stopped, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool35.not139.not = icmp eq i8 %143, 0
  br i1 %tobool35.not139.not, label %if.then29.cleanup_crit_edge, label %if.then29.if.end58_crit_edge

if.then29.if.end58_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then29.cleanup_crit_edge
  %__ret30.1141 = phi i32 [ %__ret30.1, %cleanup.cleanup_crit_edge ], [ 1, %if.then29.cleanup_crit_edge ]
  %call55 = call i32 @schedule_timeout(i32 noundef %__ret30.1141) #5
  %call32 = call i32 @prepare_to_wait_event(ptr noundef %ts_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #5
  %144 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %stopped, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool35.not = icmp eq i8 %145, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool40.not = icmp eq i32 %call55, 0
  %spec.store.select69 = select i1 %tobool40.not, i32 1, i32 %call55
  %__ret30.1 = select i1 %tobool35.not, i32 %call55, i32 %spec.store.select69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret30.1)
  %tobool47.not = icmp eq i32 %__ret30.1, 0
  %not.tobool35.not = xor i1 %tobool35.not, true
  %146 = select i1 %not.tobool35.not, i1 true, i1 %tobool47.not
  br i1 %146, label %cleanup.if.end58_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.if.end58_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

if.end58:                                         ; preds = %cleanup.if.end58_crit_edge, %if.then29.if.end58_crit_edge
  call void @finish_wait(ptr noundef %ts_wait, ptr noundef nonnull %__wq_entry) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #5
  %147 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %147)
  %.pr = load i8, ptr %stopped, align 4
  %tobool2.not = icmp eq i8 %.pr, 0
  br i1 %tobool2.not, label %if.end58.land.rhs_crit_edge, label %if.end58.while.end_crit_edge

if.end58.while.end_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end58.land.rhs_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

while.end:                                        ; preds = %if.end58.while.end_crit_edge, %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %ucb1400_clear_pending_irq.exit.while.end_crit_edge
  %148 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %devid, align 4
  call void @input_event(ptr noundef %149, i32 noundef 3, i32 noundef 24, i32 noundef 0) #5
  call void @input_event(ptr noundef %149, i32 noundef 1, i32 noundef 330, i32 noundef 0) #5
  call void @input_event(ptr noundef %149, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %150 = ptrtoint ptr %stopped to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %stopped, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool62.not = icmp eq i8 %151, 0
  br i1 %tobool62.not, label %if.then63, label %while.end.cleanup65_crit_edge

while.end.cleanup65_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup65

if.then63:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %152 = ptrtoint ptr %ac97.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %ac97.i, align 4
  %bus.i.i130 = getelementptr inbounds %struct.snd_ac97, ptr %153, i32 0, i32 3
  %154 = ptrtoint ptr %bus.i.i130 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %bus.i.i130, align 4
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %155, align 4
  %write.i.i131 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %157, i32 0, i32 2
  %158 = ptrtoint ptr %write.i.i131 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %write.i.i131, align 4
  call void %159(ptr noundef %153, i16 noundef zeroext 100, i16 noundef zeroext 195) #5
  %160 = ptrtoint ptr %ac97.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %ac97.i, align 4
  %bus.i.i133 = getelementptr inbounds %struct.snd_ac97, ptr %161, i32 0, i32 3
  %162 = ptrtoint ptr %bus.i.i133 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %bus.i.i133, align 4
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %163, align 4
  %write.i.i134 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %165, i32 0, i32 2
  %166 = ptrtoint ptr %write.i.i134 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %write.i.i134, align 4
  call void %167(ptr noundef %161, i16 noundef zeroext 98, i16 noundef zeroext 4096) #5
  %168 = ptrtoint ptr %ac97.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %ac97.i, align 4
  %bus.i5.i = getelementptr inbounds %struct.snd_ac97, ptr %169, i32 0, i32 3
  %170 = ptrtoint ptr %bus.i5.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %bus.i5.i, align 4
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %171, align 4
  %write.i6.i = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %173, i32 0, i32 2
  %174 = ptrtoint ptr %write.i6.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %write.i6.i, align 4
  call void %175(ptr noundef %169, i16 noundef zeroext 98, i16 noundef zeroext 0) #5
  %176 = ptrtoint ptr %ac97.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %ac97.i, align 4
  %bus.i7.i = getelementptr inbounds %struct.snd_ac97, ptr %177, i32 0, i32 3
  %178 = ptrtoint ptr %bus.i7.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %bus.i7.i, align 4
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %179, align 4
  %write.i8.i = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %181, i32 0, i32 2
  %182 = ptrtoint ptr %write.i8.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %write.i8.i, align 4
  call void %183(ptr noundef %177, i16 noundef zeroext 96, i16 noundef zeroext 4096) #5
  br label %cleanup65

cleanup65:                                        ; preds = %if.then63, %while.end.cleanup65_crit_edge, %entry.cleanup65_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup65_crit_edge ], [ 1, %if.then63 ], [ 1, %while.end.cleanup65_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @probe_irq_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @probe_irq_off(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ucb1400_adc_read(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucb1400_ts_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %call1 = tail call zeroext i1 @input_device_enabled(ptr noundef %3) #5
  br i1 %call1, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %stopped.i = getelementptr inbounds %struct.ucb1400_ts, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %stopped.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %stopped.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  tail call void @arm_heavy_mb() #5
  %ts_wait.i = getelementptr inbounds %struct.ucb1400_ts, ptr %1, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %ts_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  %irq.i = getelementptr inbounds %struct.ucb1400_ts, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %6) #5
  %ac97.i.i = getelementptr inbounds %struct.ucb1400_ts, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %ac97.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ac97.i.i, align 4
  %bus.i.i.i = getelementptr inbounds %struct.snd_ac97, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus.i.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %write.i.i.i = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write.i.i.i, align 4
  tail call void %14(ptr noundef %8, i16 noundef zeroext 96, i16 noundef zeroext 0) #5
  %15 = ptrtoint ptr %ac97.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ac97.i.i, align 4
  %bus.i.i = getelementptr inbounds %struct.snd_ac97, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %write.i.i = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write.i.i, align 4
  tail call void %22(ptr noundef %16, i16 noundef zeroext 100, i16 noundef zeroext 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ucb1400_ts_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %call1 = tail call zeroext i1 @input_device_enabled(ptr noundef %3) #5
  br i1 %call1, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %stopped.i = getelementptr inbounds %struct.ucb1400_ts, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %stopped.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %stopped.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  tail call void @arm_heavy_mb() #5
  %ac97.i.i = getelementptr inbounds %struct.ucb1400_ts, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %ac97.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ac97.i.i, align 4
  %bus.i.i.i = getelementptr inbounds %struct.snd_ac97, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus.i.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %write.i.i.i = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write.i.i.i, align 4
  tail call void %12(ptr noundef %6, i16 noundef zeroext 100, i16 noundef zeroext 195) #5
  %13 = ptrtoint ptr %ac97.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ac97.i.i, align 4
  %bus.i.i5.i = getelementptr inbounds %struct.snd_ac97, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %bus.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus.i.i5.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %write.i.i6.i = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %write.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write.i.i6.i, align 4
  tail call void %20(ptr noundef %14, i16 noundef zeroext 98, i16 noundef zeroext 4096) #5
  %21 = ptrtoint ptr %ac97.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ac97.i.i, align 4
  %bus.i5.i.i = getelementptr inbounds %struct.snd_ac97, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %bus.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus.i5.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %write.i6.i.i = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %write.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write.i6.i.i, align 4
  tail call void %28(ptr noundef %22, i16 noundef zeroext 98, i16 noundef zeroext 0) #5
  %29 = ptrtoint ptr %ac97.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ac97.i.i, align 4
  %bus.i7.i.i = getelementptr inbounds %struct.snd_ac97, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %bus.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus.i7.i.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %write.i8.i.i = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %write.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write.i8.i.i, align 4
  tail call void %36(ptr noundef %30, i16 noundef zeroext 96, i16 noundef zeroext 4096) #5
  %irq.i = getelementptr inbounds %struct.ucb1400_ts, ptr %1, i32 0, i32 2
  %37 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irq.i, align 4
  tail call void @enable_irq(i32 noundef %38) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_device_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !13, !15, !16, !18, !20, !22, !23, !25, !27, !29, !31, !33, !34, !35, !36, !37, !38, !39, !41, !42, !44, !45, !47, !49, !50, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @__initcall__kmod_ucb1400_ts__241_443_ucb1400_ts_driver_init6, !1, !"__initcall__kmod_ucb1400_ts__241_443_ucb1400_ts_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/ucb1400_ts.c", i32 443, i32 1}
!2 = !{ptr @__exitcall_ucb1400_ts_driver_exit, !1, !"__exitcall_ucb1400_ts_driver_exit", i1 false, i1 false}
!3 = !{ptr @__param_adcsync, !4, !"__param_adcsync", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/ucb1400_ts.c", i32 445, i32 1}
!5 = !{ptr @__UNIQUE_ID_adcsynctype242, !4, !"__UNIQUE_ID_adcsynctype242", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_adcsync243, !7, !"__UNIQUE_ID_adcsync243", i1 false, i1 false}
!7 = !{!"../drivers/input/touchscreen/ucb1400_ts.c", i32 446, i32 1}
!8 = !{ptr @__param_ts_delay, !9, !"__param_ts_delay", i1 false, i1 false}
!9 = !{!"../drivers/input/touchscreen/ucb1400_ts.c", i32 448, i32 1}
!10 = !{ptr @__UNIQUE_ID_ts_delaytype244, !9, !"__UNIQUE_ID_ts_delaytype244", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_ts_delay245, !12, !"__UNIQUE_ID_ts_delay245", i1 false, i1 false}
!12 = !{!"../drivers/input/touchscreen/ucb1400_ts.c", i32 449, i32 1}
!13 = !{ptr @__param_ts_delay_pressure, !14, !"__param_ts_delay_pressure", i1 false, i1 false}
!14 = !{!"../drivers/input/touchscreen/ucb1400_ts.c", i32 452, i32 1}
!15 = !{ptr @__UNIQUE_ID_ts_delay_pressuretype246, !14, !"__UNIQUE_ID_ts_delay_pressuretype246", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_ts_delay_pressure247, !17, !"__UNIQUE_ID_ts_delay_pressure247", i1 false, i1 false}
!17 = !{!"../drivers/input/touchscreen/ucb1400_ts.c", i32 453, i32 1}
!18 = !{ptr @__UNIQUE_ID_description248, !19, !"__UNIQUE_ID_description248", i1 false, i1 false}
!19 = !{!"../drivers/input/touchscreen/ucb1400_ts.c", i32 457, i32 1}
!20 = !{ptr @__UNIQUE_ID_file249, !21, !"__UNIQUE_ID_file249", i1 false, i1 false}
!21 = !{!"../drivers/input/touchscreen/ucb1400_ts.c", i32 458, i32 1}
!22 = !{ptr @__UNIQUE_ID_license250, !21, !"__UNIQUE_ID_license250", i1 false, i1 false}
!23 = !{ptr @adcsync, !24, !"adcsync", i1 false, i1 false}
!24 = !{!"../drivers/input/touchscreen/ucb1400_ts.c", i32 29, i32 13}
!25 = !{ptr @ts_delay_pressure, !26, !"ts_delay_pressure", i1 false, i1 false}
!26 = !{!"../drivers/input/touchscreen/ucb1400_ts.c", i32 31, i32 12}
!27 = !{ptr @.str, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/input/touchscreen/ucb1400_ts.c", i32 439, i32 11}
!29 = !{ptr @ucb1400_ts_driver, !30, !"ucb1400_ts_driver", i1 false, i1 false}
!30 = !{!"../drivers/input/touchscreen/ucb1400_ts.c", i32 435, i32 31}
!31 = !{ptr @.str.1, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/touchscreen/ucb1400_ts.c", i32 331, i32 4}
!33 = !{ptr @.str.2, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @ucb1400_ts_probe._entry, !32, !"_entry", i1 false, i1 false}
!38 = !{ptr @ucb1400_ts_probe._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/touchscreen/ucb1400_ts.c", i32 335, i32 2}
!41 = !{ptr @ucb1400_ts_probe.__UNIQUE_ID_ddebug239, !40, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!42 = !{ptr @ucb1400_ts_probe.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/input/touchscreen/ucb1400_ts.c", i32 337, i32 2}
!44 = !{ptr @.str.7, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.8, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/input/touchscreen/ucb1400_ts.c", i32 342, i32 24}
!47 = !{ptr @.str.9, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/input/touchscreen/ucb1400_ts.c", i32 363, i32 2}
!49 = !{ptr @ucb1400_ts_probe.__UNIQUE_ID_ddebug240, !48, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!50 = !{ptr @.str.10, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/touchscreen/ucb1400_ts.c", i32 373, i32 10}
!52 = !{ptr @.str.12, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/input/touchscreen/ucb1400_ts.c", i32 375, i32 3}
!54 = !{ptr @ucb1400_ts_probe._entry.11, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @ucb1400_ts_probe._entry_ptr.13, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.14, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/input/touchscreen/ucb1400_ts.c", i32 294, i32 4}
!58 = !{ptr @.str.15, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @ucb1400_ts_detect_irq._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @ucb1400_ts_detect_irq._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.16, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/input/touchscreen/ucb1400_ts.c", i32 174, i32 3}
!63 = !{ptr @.str.17, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @ucb1400_clear_pending_irq.__UNIQUE_ID_ddebug238, !62, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!65 = !{ptr @ucb1400_ts_pm_ops, !66, !"ucb1400_ts_pm_ops", i1 false, i1 false}
!66 = !{!"../drivers/input/touchscreen/ucb1400_ts.c", i32 432, i32 8}
!67 = !{ptr @__param_str_adcsync, !4, !"__param_str_adcsync", i1 false, i1 false}
!68 = !{ptr @__param_str_ts_delay, !9, !"__param_str_ts_delay", i1 false, i1 false}
!69 = !{ptr @ts_delay, !70, !"ts_delay", i1 false, i1 false}
!70 = !{!"../drivers/input/touchscreen/ucb1400_ts.c", i32 30, i32 12}
!71 = !{ptr @__param_str_ts_delay_pressure, !14, !"__param_str_ts_delay_pressure", i1 false, i1 false}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{i64 2154634976}
!82 = !{i64 2154634818}
!83 = !{i64 2148963842, i64 2148963847, i64 2148963860, i64 2148963904, i64 2148963938, i64 2148963959}
!84 = !{i8 0, i8 2}
!85 = !{i64 2154634326}
!86 = !{i64 2154634593}
!87 = !{!"branch_weights", i32 2000, i32 1}
