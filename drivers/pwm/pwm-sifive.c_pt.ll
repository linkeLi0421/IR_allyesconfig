; ModuleID = '/llk/IR_all_yes/drivers/pwm/pwm-sifive.c_pt.bc'
source_filename = "../drivers/pwm/pwm-sifive.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pwm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.pwm_sifive_ddata = type { %struct.pwm_chip, %struct.mutex, %struct.notifier_block, ptr, ptr, i32, i32, i32 }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }
%struct.clk_notifier_data = type { ptr, i32, i32 }

@__initcall__kmod_pwm_sifive__196_327_pwm_sifive_driver_init6 = internal global ptr @pwm_sifive_driver_init, section ".initcall6.init", align 4
@pwm_sifive_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pwm_sifive_probe, ptr @pwm_sifive_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pwm_sifive_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pwm_sifive_driver_exit = internal global ptr @pwm_sifive_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description197 = internal constant [41 x i8] c"pwm_sifive.description=SiFive PWM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file198 = internal constant [39 x i8] c"pwm_sifive.file=drivers/pwm/pwm-sifive\00", section ".modinfo", align 1
@__UNIQUE_ID_license199 = internal constant [26 x i8] c"pwm_sifive.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pwm-sifive\00", [21 x i8] zeroinitializer }, align 32
@pwm_sifive_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sifive,pwm0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@pwm_sifive_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&ddata->lock\00", [19 x i8] zeroinitializer }, align 32
@pwm_sifive_ops = internal constant { %struct.pwm_ops, [56 x i8] } { %struct.pwm_ops { ptr @pwm_sifive_request, ptr @pwm_sifive_free, ptr null, ptr @pwm_sifive_apply, ptr @pwm_sifive_get_state, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to find controller clock\0A\00", [63 x i8] zeroinitializer }, align 32
@pwm_sifive_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 258, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to enable clock for pwm: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pwm_sifive_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/pwm/pwm-sifive.c\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pwm_sifive_probe._entry_ptr = internal global ptr @pwm_sifive_probe._entry, section ".printk_index", align 4
@pwm_sifive_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 266, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to register clock notifier: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@pwm_sifive_probe._entry_ptr.10 = internal global ptr @pwm_sifive_probe._entry.8, section ".printk_index", align 4
@pwm_sifive_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 272, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cannot register PWM: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@pwm_sifive_probe._entry_ptr.13 = internal global ptr @pwm_sifive_probe._entry.11, section ".printk_index", align 4
@pwm_sifive_probe.__UNIQUE_ID_ddebug195 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.4, ptr @.str.5, ptr @.str.15, i8 0, i8 69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pwm_sifive\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"SiFive PWM chip registered %d PWMs\0A\00", [60 x i8] zeroinitializer }, align 32
@pwm_sifive_apply._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.5, i32 165, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Enable clk failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pwm_sifive_apply\00", [47 x i8] zeroinitializer }, align 32
@pwm_sifive_apply._entry_ptr = internal global ptr @pwm_sifive_apply._entry, section ".printk_index", align 4
@pwm_sifive_update_clock.__UNIQUE_ID_ddebug192 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.18, ptr @.str.5, ptr @.str.19, i8 0, i8 26, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pwm_sifive_update_clock\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"New real_period = %u ns\0A\00", [39 x i8] zeroinitializer }, align 32
@pwm_sifive_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.20, ptr @.str.5, i32 138, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pwm_sifive_enable\00", [46 x i8] zeroinitializer }, align 32
@pwm_sifive_enable._entry_ptr = internal global ptr @pwm_sifive_enable._entry, section ".printk_index", align 4
@___asan_gen_.21 = private unnamed_addr constant [18 x i8] c"pwm_sifive_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 319, i32 31 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 323, i32 11 }
@___asan_gen_.27 = private unnamed_addr constant [20 x i8] c"pwm_sifive_of_match\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 313, i32 34 }
@___asan_gen_.30 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 241, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [15 x i8] c"pwm_sifive_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 209, i32 29 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 254, i32 10 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 258, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 266, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 272, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 277, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 165, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 105, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private constant [28 x i8] c"../drivers/pwm/pwm-sifive.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 138, i32 4 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_description197, ptr @__UNIQUE_ID_file198, ptr @__UNIQUE_ID_license199, ptr @__exitcall_pwm_sifive_driver_exit, ptr @__initcall__kmod_pwm_sifive__196_327_pwm_sifive_driver_init6, ptr @pwm_sifive_apply._entry, ptr @pwm_sifive_apply._entry_ptr, ptr @pwm_sifive_driver_exit, ptr @pwm_sifive_enable._entry, ptr @pwm_sifive_enable._entry_ptr, ptr @pwm_sifive_probe._entry, ptr @pwm_sifive_probe._entry.11, ptr @pwm_sifive_probe._entry.8, ptr @pwm_sifive_probe._entry_ptr, ptr @pwm_sifive_probe._entry_ptr.10, ptr @pwm_sifive_probe._entry_ptr.13, ptr @pwm_sifive_driver, ptr @.str, ptr @pwm_sifive_of_match, ptr @pwm_sifive_probe.__key, ptr @.str.1, ptr @pwm_sifive_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_sifive_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_sifive_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_sifive_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_sifive_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_sifive_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_sifive_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_sifive_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_sifive_apply._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_sifive_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_sifive_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pwm_sifive_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pwm_sifive_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @pwm_sifive_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_sifive_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 160, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.pwm_sifive_ddata, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @pwm_sifive_probe.__key) #5
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @pwm_sifive_ops, ptr %ops, align 4
  %npwm = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %npwm to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %npwm, align 4
  %call4 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %regs = getelementptr inbounds %struct.pwm_sifive_ddata, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end10:                                         ; preds = %do.body
  %call11 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #5
  %clk = getelementptr inbounds %struct.pwm_sifive_ddata, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call11, ptr %clk, align 4
  %cmp.i95 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i95, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %call11 to i32
  %call17 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %6, ptr noundef nonnull @.str.2) #5
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  %call.i96 = tail call i32 @clk_prepare(ptr noundef %call11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %tobool.not.i = icmp eq i32 %call.i96, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end18.do.end25_crit_edge

if.end18.do.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end25

if.end.i:                                         ; preds = %if.end18
  %call1.i = tail call i32 @clk_enable(ptr noundef %call11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end26, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %call11) #5
  br label %do.end25

do.end25:                                         ; preds = %if.then3.i, %if.end18.do.end25_crit_edge
  %retval.0.i97.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i96, %if.end18.do.end25_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3, i32 noundef %retval.0.i97.ph) #8
  br label %cleanup

if.end26:                                         ; preds = %if.end.i
  %notifier = getelementptr inbounds %struct.pwm_sifive_ddata, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %notifier to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @pwm_sifive_clock_notifier, ptr %notifier, align 4
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  %call29 = tail call i32 @clk_notifier_register(ptr noundef %9, ptr noundef %notifier) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end35, label %do.end34

do.end34:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %call29) #8
  br label %disable_clk

if.end35:                                         ; preds = %if.end26
  %call36 = tail call i32 @pwmchip_add(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp = icmp slt i32 %call36, 0
  br i1 %cmp, label %do.end40, label %if.end41

do.end40:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %call36) #8
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 4
  %call54 = tail call i32 @clk_notifier_unregister(ptr noundef %11, ptr noundef %notifier) #5
  br label %disable_clk

if.end41:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pwm_sifive_probe.__UNIQUE_ID_ddebug195, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pwm_sifive_probe, %if.then47)) #5
          to label %cleanup [label %if.then47], !srcloc !63

if.then47:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %npwm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %npwm, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pwm_sifive_probe.__UNIQUE_ID_ddebug195, ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %14) #5
  br label %cleanup

disable_clk:                                      ; preds = %do.end40, %do.end34
  %ret.0 = phi i32 [ %call29, %do.end34 ], [ %call36, %do.end40 ]
  %15 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %16) #5
  tail call void @clk_unprepare(ptr noundef %16) #5
  br label %cleanup

cleanup:                                          ; preds = %disable_clk, %if.then47, %if.end41, %do.end25, %if.then14, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then7 ], [ %call17, %if.then14 ], [ %retval.0.i97.ph, %do.end25 ], [ %ret.0, %disable_clk ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then47 ], [ 0, %if.end41 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_sifive_remove(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %npwm = getelementptr inbounds %struct.pwm_chip, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %npwm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %npwm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp17.not = icmp eq i32 %3, 0
  br i1 %cmp17.not, label %entry.if.end4_crit_edge, label %for.body.lr.ph

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

for.body.lr.ph:                                   ; preds = %entry
  %pwms = getelementptr inbounds %struct.pwm_chip, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %pwms to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pwms, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %ch.018, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.cond.if.end4_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.cond.if.end4_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %ch.018 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %enabled = getelementptr %struct.pwm_device, ptr %5, i32 %ch.018, i32 7, i32 3
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enabled, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %for.cond, label %if.then3.critedge

if.then3.critedge:                                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %clk = getelementptr inbounds %struct.pwm_sifive_ddata, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %9) #5
  br label %if.end4

if.end4:                                          ; preds = %if.then3.critedge, %for.cond.if.end4_crit_edge, %entry.if.end4_crit_edge
  %clk5 = getelementptr inbounds %struct.pwm_sifive_ddata, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %clk5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk5, align 4
  tail call void @clk_disable(ptr noundef %11) #5
  tail call void @clk_unprepare(ptr noundef %11) #5
  tail call void @pwmchip_remove(ptr noundef %1) #5
  %12 = ptrtoint ptr %clk5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk5, align 4
  %notifier = getelementptr inbounds %struct.pwm_sifive_ddata, ptr %1, i32 0, i32 2
  %call8 = tail call i32 @clk_notifier_unregister(ptr noundef %13, ptr noundef %notifier) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_sifive_clock_notifier(ptr nocapture noundef %nb, i32 noundef %event, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event)
  %cmp = icmp eq i32 %event, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i8, ptr %nb, i32 -128
  %new_rate = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %new_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %new_rate, align 4
  tail call fastcc void @pwm_sifive_update_clock(ptr noundef %add.ptr, i32 noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwmchip_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_sifive_request(ptr noundef %chip, ptr nocapture noundef readnone %pwm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.pwm_sifive_ddata, ptr %chip, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %user_count = getelementptr inbounds %struct.pwm_sifive_ddata, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %user_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %user_count, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %user_count, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pwm_sifive_free(ptr noundef %chip, ptr nocapture noundef readnone %pwm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.pwm_sifive_ddata, ptr %chip, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %user_count = getelementptr inbounds %struct.pwm_sifive_ddata, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %user_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %user_count, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %user_count, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_sifive_apply(ptr noundef %chip, ptr nocapture noundef readonly %pwm, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %polarity = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %0 = ptrtoint ptr %polarity to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %polarity, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk = getelementptr inbounds %struct.pwm_sifive_ddata, ptr %chip, i32 0, i32 3
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.16) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.pwm_sifive_ddata, ptr %chip, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %cur_state.sroa.4.0.state5.sroa_idx = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 7, i32 3
  %6 = ptrtoint ptr %cur_state.sroa.4.0.state5.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %6)
  %cur_state.sroa.4.0.copyload65 = load i8, ptr %cur_state.sroa.4.0.state5.sroa_idx, align 4
  %7 = and i8 %cur_state.sroa.4.0.copyload65, 1
  %duty_cycle8 = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %8 = ptrtoint ptr %duty_cycle8 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %duty_cycle8, align 8
  %enabled9 = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %10 = ptrtoint ptr %enabled9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %enabled9, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool10.not = icmp eq i8 %11, 0
  %12 = shl i64 %9, 16
  %.op = and i64 %12, 281474976645120
  %mul = select i1 %tobool10.not, i64 0, i64 %.op
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %state, align 8
  %div85 = lshr i64 %14, 1
  %add = add nuw i64 %mul, %div85
  %call14 = tail call i64 @div64_u64(i64 noundef %add, i64 noundef %14) #5
  %conv15 = trunc i64 %call14 to i32
  %15 = tail call i32 @llvm.umin.i32(i32 %conv15, i32 65535)
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %state, align 8
  %approx_period = getelementptr inbounds %struct.pwm_sifive_ddata, ptr %chip, i32 0, i32 6
  %18 = ptrtoint ptr %approx_period to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %approx_period, align 4
  %conv20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %conv20)
  %cmp21.not = icmp eq i64 %17, %conv20
  br i1 %cmp21.not, label %if.end4.do.body34_crit_edge, label %if.then23

if.end4.do.body34_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body34

if.then23:                                        ; preds = %if.end4
  %user_count = getelementptr inbounds %struct.pwm_sifive_ddata, ptr %chip, i32 0, i32 7
  %20 = ptrtoint ptr %user_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %user_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp24.not = icmp eq i32 %21, 1
  br i1 %cmp24.not, label %if.end27, label %if.then23.exit_crit_edge

if.then23.exit_crit_edge:                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end27:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  %conv29 = trunc i64 %17 to i32
  %22 = ptrtoint ptr %approx_period to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv29, ptr %approx_period, align 4
  %23 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk, align 4
  %call32 = tail call i32 @clk_get_rate(ptr noundef %24) #5
  tail call fastcc void @pwm_sifive_update_clock(ptr noundef %chip, i32 noundef %call32)
  br label %do.body34

do.body34:                                        ; preds = %if.end27, %if.end4.do.body34_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  %25 = tail call i32 @llvm.bswap.i32(i32 %15)
  %regs = getelementptr inbounds %struct.pwm_sifive_ddata, ptr %chip, i32 0, i32 4
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %27, i32 32
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %28 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hwpwm, align 8
  %mul37 = shl i32 %29, 2
  %add.ptr38 = getelementptr i8, ptr %add.ptr, i32 %mul37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %25) #5, !srcloc !66
  %30 = ptrtoint ptr %enabled9 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %enabled9, align 4, !range !64
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %7)
  %cmp44.not = icmp eq i8 %31, %7
  br i1 %cmp44.not, label %do.body34.exit_crit_edge, label %if.then46

do.body34.exit_crit_edge:                         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool40.not = icmp eq i8 %31, 0
  %32 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk, align 4
  br i1 %tobool40.not, label %if.then7.critedge.i, label %if.then.i

if.then.i:                                        ; preds = %if.then46
  %call1.i = tail call i32 @clk_enable(ptr noundef %33) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.then.i.exit_crit_edge, label %do.end.i

if.then.i.exit_crit_edge:                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.16) #8
  br label %exit

if.then7.critedge.i:                              ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_disable(ptr noundef %33) #5
  br label %exit

exit:                                             ; preds = %if.then7.critedge.i, %do.end.i, %if.then.i.exit_crit_edge, %do.body34.exit_crit_edge, %if.then23.exit_crit_edge
  %ret.0 = phi i32 [ 0, %do.body34.exit_crit_edge ], [ -16, %if.then23.exit_crit_edge ], [ 0, %if.then.i.exit_crit_edge ], [ 0, %do.end.i ], [ 0, %if.then7.critedge.i ]
  %36 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %37) #5
  tail call void @mutex_unlock(ptr noundef %lock) #5
  br label %cleanup

cleanup:                                          ; preds = %exit, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %do.end ], [ %ret.0, %exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pwm_sifive_get_state(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %pwm, ptr nocapture noundef writeonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.pwm_sifive_ddata, ptr %chip, i32 0, i32 4
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 32
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %2 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwpwm, align 8
  %mul = shl i32 %3, 2
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %mul
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #5, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp ne i32 %4, 0
  %enabled = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %frombool = zext i1 %cmp to i8
  %5 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %enabled, align 4
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  %9 = and i32 %8, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %enabled, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %11 = tail call i32 @llvm.bswap.i32(i32 %4)
  %real_period = getelementptr inbounds %struct.pwm_sifive_ddata, ptr %chip, i32 0, i32 5
  %12 = ptrtoint ptr %real_period to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %real_period, align 4
  %conv = zext i32 %13 to i64
  %14 = ptrtoint ptr %state to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv, ptr %state, align 8
  %conv12 = zext i32 %11 to i64
  %15 = load i32, ptr %real_period, align 4
  %conv14 = zext i32 %15 to i64
  %mul15 = mul nuw i64 %conv14, %conv12
  %shr = lshr i64 %mul15, 16
  %duty_cycle = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %16 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %shr, ptr %duty_cycle, align 8
  %polarity = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %17 = ptrtoint ptr %polarity to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %polarity, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pwm_sifive_update_clock(ptr nocapture noundef %ddata, i32 noundef %rate) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %approx_period = getelementptr inbounds %struct.pwm_sifive_ddata, ptr %ddata, i32 0, i32 6
  %0 = ptrtoint ptr %approx_period to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %approx_period, align 4
  %conv = zext i32 %1 to i64
  %conv1 = zext i32 %rate to i64
  %mul = mul nuw i64 %conv, %conv1
  %2 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul, i32 0) #9, !srcloc !70
  %asmresult.i.i.i = extractvalue { i64, i32 } %2, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %2, 1
  %3 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #9, !srcloc !71
  %asmresult10.i.i.i = extractvalue { i64, i32 } %3, 0
  %div158.i.i78 = lshr i64 %asmresult10.i.i.i, 29
  %conv2 = trunc i64 %div158.i.i78 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv2)
  %tobool.not.i.i = icmp eq i32 %conv2, 0
  %4 = tail call i32 @llvm.ctlz.i32(i32 %conv2, i1 true) #5, !range !72
  %sub.i.op.i = xor i32 %4, 31
  %5 = call i32 @llvm.smax.i32(i32 %sub.i.op.i, i32 16)
  %.op = add nsw i32 %5, -16
  %6 = call i32 @llvm.umin.i32(i32 %.op, i32 15)
  %7 = select i1 %tobool.not.i.i, i32 0, i32 %6
  %or = or i32 %7, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  tail call void @arm_heavy_mb() #5
  %8 = tail call i32 @llvm.bswap.i32(i32 %or)
  %regs = getelementptr inbounds %struct.pwm_sifive_ddata, ptr %ddata, i32 0, i32 4
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #5, !srcloc !66
  %add = or i32 %7, 16
  %sh_prom = zext i32 %add to i64
  %shl43 = shl nuw nsw i64 1000000000, %sh_prom
  %11 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %rate, i64 %shl43) #9, !srcloc !74
  %asmresult1.i.i.i = extractvalue { i64, i64 } %11, 1
  %extract.t83 = trunc i64 %asmresult1.i.i.i to i32
  %real_period = getelementptr inbounds %struct.pwm_sifive_ddata, ptr %ddata, i32 0, i32 5
  %12 = ptrtoint ptr %real_period to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %extract.t83, ptr %real_period, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pwm_sifive_update_clock.__UNIQUE_ID_ddebug192, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pwm_sifive_update_clock, %if.then52)) #5
          to label %do.end56 [label %if.then52], !srcloc !63

if.then52:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ddata, align 4
  %15 = ptrtoint ptr %real_period to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %real_period, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pwm_sifive_update_clock.__UNIQUE_ID_ddebug192, ptr noundef %14, ptr noundef nonnull @.str.19, i32 noundef %16) #5
  br label %do.end56

do.end56:                                         ; preds = %if.then52, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwmchip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__initcall__kmod_pwm_sifive__196_327_pwm_sifive_driver_init6, !1, !"__initcall__kmod_pwm_sifive__196_327_pwm_sifive_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pwm/pwm-sifive.c", i32 327, i32 1}
!2 = !{ptr @__exitcall_pwm_sifive_driver_exit, !1, !"__exitcall_pwm_sifive_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description197, !4, !"__UNIQUE_ID_description197", i1 false, i1 false}
!4 = !{!"../drivers/pwm/pwm-sifive.c", i32 329, i32 1}
!5 = !{ptr @__UNIQUE_ID_file198, !6, !"__UNIQUE_ID_file198", i1 false, i1 false}
!6 = !{!"../drivers/pwm/pwm-sifive.c", i32 330, i32 1}
!7 = !{ptr @__UNIQUE_ID_license199, !6, !"__UNIQUE_ID_license199", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pwm/pwm-sifive.c", i32 323, i32 11}
!10 = !{ptr @pwm_sifive_driver, !11, !"pwm_sifive_driver", i1 false, i1 false}
!11 = !{!"../drivers/pwm/pwm-sifive.c", i32 319, i32 31}
!12 = !{ptr @pwm_sifive_probe.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/pwm/pwm-sifive.c", i32 241, i32 2}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/pwm/pwm-sifive.c", i32 254, i32 10}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/pwm/pwm-sifive.c", i32 258, i32 3}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @pwm_sifive_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @pwm_sifive_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/pwm/pwm-sifive.c", i32 266, i32 3}
!27 = !{ptr @pwm_sifive_probe._entry.8, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @pwm_sifive_probe._entry_ptr.10, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/pwm/pwm-sifive.c", i32 272, i32 3}
!31 = !{ptr @pwm_sifive_probe._entry.11, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @pwm_sifive_probe._entry_ptr.13, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/pwm/pwm-sifive.c", i32 277, i32 2}
!35 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @pwm_sifive_probe.__UNIQUE_ID_ddebug195, !34, !"__UNIQUE_ID_ddebug195", i1 false, i1 false}
!37 = !{ptr @pwm_sifive_ops, !38, !"pwm_sifive_ops", i1 false, i1 false}
!38 = !{!"../drivers/pwm/pwm-sifive.c", i32 209, i32 29}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/pwm/pwm-sifive.c", i32 165, i32 3}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @pwm_sifive_apply._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @pwm_sifive_apply._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pwm/pwm-sifive.c", i32 105, i32 2}
!46 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @pwm_sifive_update_clock.__UNIQUE_ID_ddebug192, !45, !"__UNIQUE_ID_ddebug192", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pwm/pwm-sifive.c", i32 138, i32 4}
!50 = !{ptr @pwm_sifive_enable._entry, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @pwm_sifive_enable._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @pwm_sifive_of_match, !53, !"pwm_sifive_of_match", i1 false, i1 false}
!53 = !{!"../drivers/pwm/pwm-sifive.c", i32 313, i32 34}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{i64 2148728650, i64 2148728655, i64 2148728668, i64 2148728712, i64 2148728746, i64 2148728767}
!64 = !{i8 0, i8 2}
!65 = !{i64 2153024042}
!66 = !{i64 2035740}
!67 = !{i64 2036158}
!68 = !{i64 2153018542}
!69 = !{i64 2153019032}
!70 = !{i64 1151825, i64 1151852, i64 1151874, i64 1151902}
!71 = !{i64 1152233, i64 1152260, i64 1152293, i64 1152314, i64 1152341, i64 1152367}
!72 = !{i32 0, i32 33}
!73 = !{i64 2153015369}
!74 = !{i64 2148637369, i64 2148637649, i64 2148637983, i64 2148638317}
