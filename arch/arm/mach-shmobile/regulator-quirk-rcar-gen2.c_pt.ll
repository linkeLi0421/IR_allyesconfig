; ModuleID = '/llk/IR_all_yes/arch/arm/mach-shmobile/regulator-quirk-rcar-gen2.c_pt.bc'
source_filename = "../arch/arm/mach-shmobile/regulator-quirk-rcar-gen2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_quirk = type { %struct.list_head, ptr, ptr, %struct.of_phandle_args, %struct.i2c_msg, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__initcall__kmod_regulator_quirk_rcar_gen2__291_234_rcar_gen2_regulator_quirk3 = internal global ptr @rcar_gen2_regulator_quirk, section ".initcall3.init", align 4
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"renesas,koelsch\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"renesas,lager\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"renesas,porter\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"renesas,stout\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"renesas,gose\00", [19 x i8] zeroinitializer }, align 32
@rcar_gen2_quirk_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlg,da9063\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @da9063_msg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlg,da9063l\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @da9063_msg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlg,da9210\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @da9210_msg }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@quirk_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @quirk_list, ptr @quirk_list }, [24 x i8] zeroinitializer }, align 32
@irqc = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rcar_gen2_regulator_quirk.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, i8 0, i8 53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"regulator_quirk_rcar_gen2\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rcar_gen2_regulator_quirk\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"arch/arm/mach-shmobile/regulator-quirk-rcar-gen2.c\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: IRQ2 is not asserted, not installing quirk\0A\00", [48 x i8] zeroinitializer }, align 32
@rcar_gen2_regulator_quirk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.8, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016IRQ2 is asserted, installing regulator quirk\0A\00", [48 x i8] zeroinitializer }, align 32
@rcar_gen2_regulator_quirk._entry_ptr = internal global ptr @rcar_gen2_regulator_quirk._entry, section ".printk_index", align 4
@i2c_bus_type = external dso_local global %struct.bus_type, align 4
@regulator_quirk_nb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @regulator_quirk_notify, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@da9063_msg = internal global { %struct.i2c_msg, [20 x i8] } { %struct.i2c_msg { i16 0, i16 0, i16 5, ptr @da9063_irq_clr }, [20 x i8] zeroinitializer }, align 32
@da9210_msg = internal global { %struct.i2c_msg, [20 x i8] } { %struct.i2c_msg { i16 0, i16 0, i16 3, ptr @da9210_irq_clr }, [20 x i8] zeroinitializer }, align 32
@da9063_irq_clr = internal global { [5 x i8], [27 x i8] } { [5 x i8] c"\0A\FF\FF\FF\FF", [27 x i8] zeroinitializer }, align 32
@da9210_irq_clr = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"T\FF\FF", [29 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@regulator_quirk_notify.done = internal global { i1, [31 x i8] } zeroinitializer, align 32
@regulator_quirk_notify.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.11, ptr @.str.8, ptr @.str.12, i8 0, i8 21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"regulator_quirk_notify\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: %ld, IRQC_MONITOR = 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@i2c_adapter_type = external dso_local global %struct.device_type, align 4
@regulator_quirk_notify.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.11, ptr @.str.8, ptr @.str.13, i8 0, i8 23, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Detected %s\0A\00", [19 x i8] zeroinitializer }, align 32
@regulator_quirk_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.8, i32 110, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"clearing %s@0x%02x interrupts\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@regulator_quirk_notify._entry_ptr = internal global ptr @regulator_quirk_notify._entry, section ".printk_index", align 4
@regulator_quirk_notify._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.11, ptr @.str.8, i32 114, ptr @.str.19, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c error %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@regulator_quirk_notify._entry_ptr.20 = internal global ptr @regulator_quirk_notify._entry.17, section ".printk_index", align 4
@regulator_quirk_notify._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.11, ptr @.str.8, i32 124, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"IRQ2 is not asserted, removing quirk\0A\00", [58 x i8] zeroinitializer }, align 32
@regulator_quirk_notify._entry_ptr.23 = internal global ptr @regulator_quirk_notify._entry.21, section ".printk_index", align 4
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 149, i32 32 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 150, i32 32 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 151, i32 32 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 152, i32 32 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 153, i32 32 }
@___asan_gen_.39 = private unnamed_addr constant [22 x i8] c"rcar_gen2_quirk_match\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 66, i32 34 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 162, i32 34 }
@___asan_gen_.45 = private unnamed_addr constant [11 x i8] c"quirk_list\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 49, i32 8 }
@___asan_gen_.48 = private unnamed_addr constant [5 x i8] c"irqc\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 50, i32 22 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 212, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 218, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [19 x i8] c"regulator_quirk_nb\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 136, i32 30 }
@___asan_gen_.72 = private unnamed_addr constant [11 x i8] c"da9063_msg\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 56, i32 23 }
@___asan_gen_.75 = private unnamed_addr constant [11 x i8] c"da9210_msg\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 61, i32 23 }
@___asan_gen_.78 = private unnamed_addr constant [15 x i8] c"da9063_irq_clr\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 53, i32 11 }
@___asan_gen_.81 = private unnamed_addr constant [15 x i8] c"da9210_irq_clr\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 54, i32 11 }
@___asan_gen_.84 = private unnamed_addr constant [28 x i8] c"regulator_quirk_notify.done\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 87, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 95, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 109, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 114, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private constant [54 x i8] c"../arch/arm/mach-shmobile/regulator-quirk-rcar-gen2.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 124, i32 2 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__initcall__kmod_regulator_quirk_rcar_gen2__291_234_rcar_gen2_regulator_quirk3, ptr @rcar_gen2_regulator_quirk._entry, ptr @rcar_gen2_regulator_quirk._entry_ptr, ptr @regulator_quirk_notify._entry, ptr @regulator_quirk_notify._entry.17, ptr @regulator_quirk_notify._entry.21, ptr @regulator_quirk_notify._entry_ptr, ptr @regulator_quirk_notify._entry_ptr.20, ptr @regulator_quirk_notify._entry_ptr.23, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @rcar_gen2_quirk_match, ptr @.str.5, ptr @quirk_list, ptr @irqc, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @regulator_quirk_nb, ptr @da9063_msg, ptr @da9210_msg, ptr @da9063_irq_clr, ptr @da9210_irq_clr, ptr @regulator_quirk_notify.done, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.22], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen2_quirk_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @quirk_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irqc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen2_regulator_quirk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regulator_quirk_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_msg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9210_msg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_irq_clr to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9210_irq_clr to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regulator_quirk_notify.done to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regulator_quirk_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regulator_quirk_notify._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regulator_quirk_notify._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_gen2_regulator_quirk() #0 section ".init.text" align 64 {
entry:
  %id = alloca ptr, align 4
  %addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %id, align 4, !annotation !73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #8
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %addr, align 4, !annotation !73
  %call = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true3, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call4 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true6, label %land.lhs.true3.if.end_crit_edge

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %call7 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true9, label %land.lhs.true6.if.end_crit_edge

land.lhs.true6.if.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %call10 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true9.cleanup_crit_edge, label %land.lhs.true9.if.end_crit_edge

land.lhs.true9.if.end_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true9.cleanup_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true9.if.end_crit_edge, %land.lhs.true6.if.end_crit_edge, %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call12 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @rcar_gen2_quirk_match, ptr noundef nonnull %id) #8
  %tobool13.not153 = icmp eq ptr %call12, null
  br i1 %tobool13.not153, label %if.end.for.end58_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end58_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end58

for.body:                                         ; preds = %for.inc56.for.body_crit_edge, %if.end.for.body_crit_edge
  %np.0154 = phi ptr [ %call57, %for.inc56.for.body_crit_edge ], [ %call12, %if.end.for.body_crit_edge ]
  %call14 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %np.0154) #8
  br i1 %call14, label %if.end16, label %if.then15

if.then15:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @of_node_put(ptr noundef nonnull %np.0154) #8
  br label %for.end58

if.end16:                                         ; preds = %for.body
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np.0154, ptr noundef nonnull @.str.5, ptr noundef nonnull %addr, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool18.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool18.not, label %if.end20, label %if.end16.for.inc56_crit_edge

if.end16.for.inc56_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc56

if.end20:                                         ; preds = %if.end16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 104) #11
  %tobool22.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool22.not, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  call void @of_node_put(ptr noundef nonnull %np.0154) #8
  br label %err_mem

if.end24:                                         ; preds = %if.end20
  %irq_args = getelementptr inbounds %struct.regulator_quirk, ptr %call7.i.i, i32 0, i32 3
  %i2c_msg = getelementptr inbounds %struct.regulator_quirk, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %id, align 4
  %data = getelementptr inbounds %struct.of_device_id, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %7 = call ptr @memcpy(ptr %i2c_msg, ptr %6, i32 12)
  %id25 = getelementptr inbounds %struct.regulator_quirk, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %id25 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %4, ptr %id25, align 8
  %np26 = getelementptr inbounds %struct.regulator_quirk, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %np26 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %np.0154, ptr %np26, align 4
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr, align 4
  %conv = trunc i32 %11 to i16
  %12 = ptrtoint ptr %i2c_msg to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %i2c_msg, align 8
  %call29 = call i32 @of_irq_parse_one(ptr noundef nonnull %np.0154, i32 noundef 0, ptr noundef %irq_args) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %for.cond34.preheader, label %if.then31

for.cond34.preheader:                             ; preds = %if.end24
  %pos.0150 = load ptr, ptr @quirk_list, align 4
  %cmp.not151 = icmp eq ptr %pos.0150, @quirk_list
  br i1 %cmp.not151, label %for.cond34.preheader.for.end_crit_edge, label %for.body36.lr.ph

for.cond34.preheader.for.end_crit_edge:           ; preds = %for.cond34.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body36.lr.ph:                                 ; preds = %for.cond34.preheader
  %args_count = getelementptr inbounds %struct.regulator_quirk, ptr %call7.i.i, i32 0, i32 3, i32 1
  %args = getelementptr inbounds %struct.regulator_quirk, ptr %call7.i.i, i32 0, i32 3, i32 2
  %shared49 = getelementptr inbounds %struct.regulator_quirk, ptr %call7.i.i, i32 0, i32 5
  br label %for.body36

if.then31:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %for.inc56

for.body36:                                       ; preds = %for.inc.for.body36_crit_edge, %for.body36.lr.ph
  %pos.0152 = phi ptr [ %pos.0150, %for.body36.lr.ph ], [ %pos.0, %for.inc.for.body36_crit_edge ]
  %13 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %args_count, align 4
  %args_count38 = getelementptr inbounds %struct.regulator_quirk, ptr %pos.0152, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %args_count38 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %args_count38, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp39.not = icmp eq i32 %14, %16
  br i1 %cmp39.not, label %if.end42, label %for.body36.for.inc_crit_edge

for.body36.for.inc_crit_edge:                     ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end42:                                         ; preds = %for.body36
  %args43 = getelementptr inbounds %struct.regulator_quirk, ptr %pos.0152, i32 0, i32 3, i32 2
  %mul = shl i32 %14, 2
  %bcmp = call i32 @bcmp(ptr %args, ptr %args43, i32 %mul) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool47.not = icmp eq i32 %bcmp, 0
  br i1 %tobool47.not, label %if.then48, label %if.end42.for.inc_crit_edge

if.end42.for.inc_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then48:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %shared = getelementptr inbounds %struct.regulator_quirk, ptr %pos.0152, i32 0, i32 5
  %17 = ptrtoint ptr %shared to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %shared, align 4
  %18 = ptrtoint ptr %shared49 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %shared49, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then48, %if.end42.for.inc_crit_edge, %for.body36.for.inc_crit_edge
  %19 = ptrtoint ptr %pos.0152 to i32
  call void @__asan_load4_noabort(i32 %19)
  %pos.0 = load ptr, ptr %pos.0152, align 4
  %cmp.not = icmp eq ptr %pos.0, @quirk_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body36_crit_edge

for.inc.for.body36_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body36

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond34.preheader.for.end_crit_edge
  %20 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @quirk_list, i32 0, i32 1), align 4
  %call.i.i144 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %20, ptr noundef nonnull @quirk_list) #8
  br i1 %call.i.i144, label %if.end.i.i, label %for.end.for.inc56_crit_edge

for.end.for.inc56_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc56

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @quirk_list, i32 0, i32 1), align 4
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @quirk_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %20, ptr %prev3.i.i, align 4
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %call7.i.i, ptr %20, align 4
  br label %for.inc56

for.inc56:                                        ; preds = %if.end.i.i, %for.end.for.inc56_crit_edge, %if.then31, %if.end16.for.inc56_crit_edge
  %call57 = call ptr @of_find_matching_node_and_match(ptr noundef nonnull %np.0154, ptr noundef nonnull @rcar_gen2_quirk_match, ptr noundef nonnull %id) #8
  %tobool13.not = icmp eq ptr %call57, null
  br i1 %tobool13.not, label %for.inc56.for.end58_crit_edge, label %for.inc56.for.body_crit_edge

for.inc56.for.body_crit_edge:                     ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc56.for.end58_crit_edge:                    ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end58

for.end58:                                        ; preds = %for.inc56.for.end58_crit_edge, %if.then15, %if.end.for.end58_crit_edge
  %call59 = call ptr @ioremap(i32 noundef -434372608, i32 noundef 4096) #8
  store ptr %call59, ptr @irqc, align 4
  %tobool60.not = icmp eq ptr %call59, null
  br i1 %tobool60.not, label %for.end58.err_mem_crit_edge, label %if.end62

for.end58.err_mem_crit_edge:                      ; preds = %for.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_mem

if.end62:                                         ; preds = %for.end58
  %add.ptr63 = getelementptr i8, ptr %call59, i32 260
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr63) #8, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  %25 = and i32 %24, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool65.not = icmp eq i32 %25, 0
  br i1 %tobool65.not, label %do.end78, label %do.body

do.body:                                          ; preds = %if.end62
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_gen2_regulator_quirk.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_gen2_regulator_quirk, %if.then73)) #8
          to label %do.end [label %if.then73], !srcloc !76

if.then73:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rcar_gen2_regulator_quirk.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7) #8
  br label %do.end

do.end:                                           ; preds = %if.then73, %do.body
  %26 = load ptr, ptr @irqc, align 4
  call void @iounmap(ptr noundef %26) #8
  br label %err_mem

do.end78:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  %call80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #13
  %call81 = call i32 @bus_register_notifier(ptr noundef nonnull @i2c_bus_type, ptr noundef nonnull @regulator_quirk_nb) #8
  br label %cleanup

err_mem:                                          ; preds = %do.end, %for.end58.err_mem_crit_edge, %if.then23
  %ret.0 = phi i32 [ -12, %if.then23 ], [ 0, %do.end ], [ -12, %for.end58.err_mem_crit_edge ]
  %27 = load ptr, ptr @quirk_list, align 4
  %cmp92.not156 = icmp eq ptr %27, @quirk_list
  br i1 %cmp92.not156, label %err_mem.cleanup_crit_edge, label %err_mem.for.body96_crit_edge

err_mem.for.body96_crit_edge:                     ; preds = %err_mem
  br label %for.body96

err_mem.cleanup_crit_edge:                        ; preds = %err_mem
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body96:                                       ; preds = %list_del.exit.for.body96_crit_edge, %err_mem.for.body96_crit_edge
  %pos.1157 = phi ptr [ %tmp.0, %list_del.exit.for.body96_crit_edge ], [ %27, %err_mem.for.body96_crit_edge ]
  %28 = ptrtoint ptr %pos.1157 to i32
  call void @__asan_load4_noabort(i32 %28)
  %tmp.0 = load ptr, ptr %pos.1157, align 4
  %call.i.i145 = call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.1157) #8
  br i1 %call.i.i145, label %if.end.i.i146, label %for.body96.list_del.exit_crit_edge

for.body96.list_del.exit_crit_edge:               ; preds = %for.body96
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i146:                                    ; preds = %for.body96
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pos.1157, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i, align 4
  %31 = ptrtoint ptr %pos.1157 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pos.1157, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i146, %for.body96.list_del.exit_crit_edge
  %35 = ptrtoint ptr %pos.1157 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.1157, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pos.1157, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @kfree(ptr noundef %pos.1157) #8
  %cmp92.not = icmp eq ptr %tmp.0, @quirk_list
  br i1 %cmp92.not, label %list_del.exit.cleanup_crit_edge, label %list_del.exit.for.body96_crit_edge

list_del.exit.for.body96_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body96

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.cleanup_crit_edge, %err_mem.cleanup_crit_edge, %do.end78, %land.lhs.true9.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end78 ], [ -19, %land.lhs.true9.cleanup_crit_edge ], [ %ret.0, %err_mem.cleanup_crit_edge ], [ %ret.0, %list_del.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_parse_one(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register_notifier(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regulator_quirk_notify(ptr nocapture noundef readnone %nb, i32 noundef %action, ptr noundef %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %.b125 = load i1, ptr @regulator_quirk_notify.done, align 1
  br i1 %.b125, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @irqc, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 260
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !74
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @regulator_quirk_notify.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@regulator_quirk_notify, %if.then6)) #8
          to label %do.end [label %if.then6], !srcloc !76

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @regulator_quirk_notify.__UNIQUE_ID_ddebug288, ptr noundef %data, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, i32 noundef %action, i32 noundef %2) #8
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.end
  %and = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end10, label %do.end.do.end73_crit_edge

do.end.do.end73_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end73

if.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %action)
  %cmp.not = icmp eq i32 %action, 1
  br i1 %cmp.not, label %lor.lhs.false, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end10
  %type = getelementptr inbounds %struct.device, ptr %data, i32 0, i32 4
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %type, align 4
  %cmp11 = icmp eq ptr %4, @i2c_adapter_type
  br i1 %cmp11, label %lor.lhs.false.cleanup_crit_edge, label %if.end13

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @regulator_quirk_notify.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@regulator_quirk_notify, %if.then28)) #8
          to label %do.end31 [label %if.then28], !srcloc !76

if.then28:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr i8, ptr %data, i32 -28
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @regulator_quirk_notify.__UNIQUE_ID_ddebug289, ptr noundef %data, ptr noundef nonnull @.str.13, ptr noundef %name) #8
  br label %do.end31

do.end31:                                         ; preds = %if.then28, %if.end13
  %pos.0131 = load ptr, ptr @quirk_list, align 4
  %cmp35.not132 = icmp eq ptr %pos.0131, @quirk_list
  br i1 %cmp35.not132, label %do.end31.for.end_crit_edge, label %for.body.lr.ph

do.end31.for.end_crit_edge:                       ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end31
  %parent42 = getelementptr inbounds %struct.device, ptr %data, i32 0, i32 1
  %adapter = getelementptr i8, ptr %data, i32 -8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %pos.0133 = phi ptr [ %pos.0131, %for.body.lr.ph ], [ %pos.0, %for.inc.for.body_crit_edge ]
  %shared = getelementptr inbounds %struct.regulator_quirk, ptr %pos.0133, i32 0, i32 5
  %5 = ptrtoint ptr %shared to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %shared, align 4, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool38.not = icmp eq i8 %6, 0
  br i1 %tobool38.not, label %for.body.for.inc_crit_edge, label %if.end40

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end40:                                         ; preds = %for.body
  %np = getelementptr inbounds %struct.regulator_quirk, ptr %pos.0133, i32 0, i32 2
  %7 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %np, align 4
  %parent = getelementptr inbounds %struct.device_node, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent, align 4
  %11 = ptrtoint ptr %parent42 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent42, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 27
  %13 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node, align 8
  %cmp43.not = icmp eq ptr %10, %14
  br i1 %cmp43.not, label %do.end48, label %if.end40.for.inc_crit_edge

if.end40.for.inc_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end48:                                         ; preds = %if.end40
  %id = getelementptr inbounds %struct.regulator_quirk, ptr %pos.0133, i32 0, i32 1
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %id, align 4
  %compatible = getelementptr inbounds %struct.of_device_id, ptr %16, i32 0, i32 2
  %i2c_msg = getelementptr inbounds %struct.regulator_quirk, ptr %pos.0133, i32 0, i32 4
  %17 = ptrtoint ptr %i2c_msg to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %i2c_msg, align 4
  %conv = zext i16 %18 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %data, ptr noundef nonnull @.str.14, ptr noundef %compatible, i32 noundef %conv) #13
  %19 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adapter, align 8
  %call52 = tail call i32 @i2c_transfer(ptr noundef %20, ptr noundef %i2c_msg, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call52)
  %cmp53.not = icmp eq i32 %call52, 1
  br i1 %cmp53.not, label %do.end48.for.inc_crit_edge, label %do.end58

do.end48.for.inc_crit_edge:                       ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end58:                                         ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %data, ptr noundef nonnull @.str.18, i32 noundef %call52) #13
  br label %for.inc

for.inc:                                          ; preds = %do.end58, %do.end48.for.inc_crit_edge, %if.end40.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %21 = ptrtoint ptr %pos.0133 to i32
  call void @__asan_load4_noabort(i32 %21)
  %pos.0 = load ptr, ptr %pos.0133, align 4
  %cmp35.not = icmp eq ptr %pos.0, @quirk_list
  br i1 %cmp35.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end31.for.end_crit_edge
  %22 = load ptr, ptr @irqc, align 4
  %add.ptr65 = getelementptr i8, ptr %22, i32 260
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr65) #8, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  %24 = and i32 %23, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool68.not = icmp eq i32 %24, 0
  br i1 %tobool68.not, label %for.end.cleanup_crit_edge, label %for.end.do.end73_crit_edge

for.end.do.end73_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end73

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end73:                                         ; preds = %for.end.do.end73_crit_edge, %do.end.do.end73_crit_edge
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %data, ptr noundef nonnull @.str.22) #13
  %25 = load ptr, ptr @quirk_list, align 4
  %cmp84.not134 = icmp eq ptr %25, @quirk_list
  br i1 %cmp84.not134, label %do.end73.for.end96_crit_edge, label %do.end73.for.body88_crit_edge

do.end73.for.body88_crit_edge:                    ; preds = %do.end73
  br label %for.body88

do.end73.for.end96_crit_edge:                     ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end96

for.body88:                                       ; preds = %list_del.exit.for.body88_crit_edge, %do.end73.for.body88_crit_edge
  %pos.1135 = phi ptr [ %tmp.0, %list_del.exit.for.body88_crit_edge ], [ %25, %do.end73.for.body88_crit_edge ]
  %26 = ptrtoint ptr %pos.1135 to i32
  call void @__asan_load4_noabort(i32 %26)
  %tmp.0 = load ptr, ptr %pos.1135, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.1135) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body88.list_del.exit_crit_edge

for.body88.list_del.exit_crit_edge:               ; preds = %for.body88
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body88
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pos.1135, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i, align 4
  %29 = ptrtoint ptr %pos.1135 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pos.1135, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body88.list_del.exit_crit_edge
  %33 = ptrtoint ptr %pos.1135 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.1135, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pos.1135, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %pos.1135) #8
  %cmp84.not = icmp eq ptr %tmp.0, @quirk_list
  br i1 %cmp84.not, label %list_del.exit.for.end96_crit_edge, label %list_del.exit.for.body88_crit_edge

list_del.exit.for.body88_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body88

list_del.exit.for.end96_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end96

for.end96:                                        ; preds = %list_del.exit.for.end96_crit_edge, %do.end73.for.end96_crit_edge
  store i1 true, ptr @regulator_quirk_notify.done, align 1
  %35 = load ptr, ptr @irqc, align 4
  tail call void @iounmap(ptr noundef %35) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end96, %for.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nobuiltin }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !45, !46, !48, !49, !51, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__initcall__kmod_regulator_quirk_rcar_gen2__291_234_rcar_gen2_regulator_quirk3, !1, !"__initcall__kmod_regulator_quirk_rcar_gen2__291_234_rcar_gen2_regulator_quirk3", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-shmobile/regulator-quirk-rcar-gen2.c", i32 234, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-shmobile/regulator-quirk-rcar-gen2.c", i32 149, i32 32}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-shmobile/regulator-quirk-rcar-gen2.c", i32 150, i32 32}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-shmobile/regulator-quirk-rcar-gen2.c", i32 151, i32 32}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-shmobile/regulator-quirk-rcar-gen2.c", i32 152, i32 32}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-shmobile/regulator-quirk-rcar-gen2.c", i32 153, i32 32}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-shmobile/regulator-quirk-rcar-gen2.c", i32 162, i32 34}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-shmobile/regulator-quirk-rcar-gen2.c", i32 212, i32 3}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @rcar_gen2_regulator_quirk.__UNIQUE_ID_ddebug290, !15, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-shmobile/regulator-quirk-rcar-gen2.c", i32 218, i32 2}
!22 = !{ptr @rcar_gen2_regulator_quirk._entry, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @rcar_gen2_regulator_quirk._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @rcar_gen2_quirk_match, !25, !"rcar_gen2_quirk_match", i1 false, i1 false}
!25 = !{!"../arch/arm/mach-shmobile/regulator-quirk-rcar-gen2.c", i32 66, i32 34}
!26 = !{ptr @da9063_msg, !27, !"da9063_msg", i1 false, i1 false}
!27 = !{!"../arch/arm/mach-shmobile/regulator-quirk-rcar-gen2.c", i32 56, i32 23}
!28 = !{ptr @da9063_irq_clr, !29, !"da9063_irq_clr", i1 false, i1 false}
!29 = !{!"../arch/arm/mach-shmobile/regulator-quirk-rcar-gen2.c", i32 53, i32 11}
!30 = !{ptr @da9210_msg, !31, !"da9210_msg", i1 false, i1 false}
!31 = !{!"../arch/arm/mach-shmobile/regulator-quirk-rcar-gen2.c", i32 61, i32 23}
!32 = !{ptr @da9210_irq_clr, !33, !"da9210_irq_clr", i1 false, i1 false}
!33 = !{!"../arch/arm/mach-shmobile/regulator-quirk-rcar-gen2.c", i32 54, i32 11}
!34 = !{ptr @quirk_list, !35, !"quirk_list", i1 false, i1 false}
!35 = !{!"../arch/arm/mach-shmobile/regulator-quirk-rcar-gen2.c", i32 49, i32 8}
!36 = !{ptr @irqc, !37, !"irqc", i1 false, i1 false}
!37 = !{!"../arch/arm/mach-shmobile/regulator-quirk-rcar-gen2.c", i32 50, i32 22}
!38 = !{ptr @regulator_quirk_nb, !39, !"regulator_quirk_nb", i1 false, i1 false}
!39 = !{!"../arch/arm/mach-shmobile/regulator-quirk-rcar-gen2.c", i32 136, i32 30}
!40 = distinct !{null, !41, !"done", i1 false, i1 false}
!41 = !{!"../arch/arm/mach-shmobile/regulator-quirk-rcar-gen2.c", i32 79, i32 14}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../arch/arm/mach-shmobile/regulator-quirk-rcar-gen2.c", i32 87, i32 2}
!44 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @regulator_quirk_notify.__UNIQUE_ID_ddebug288, !43, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../arch/arm/mach-shmobile/regulator-quirk-rcar-gen2.c", i32 95, i32 2}
!48 = !{ptr @regulator_quirk_notify.__UNIQUE_ID_ddebug289, !47, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../arch/arm/mach-shmobile/regulator-quirk-rcar-gen2.c", i32 109, i32 3}
!51 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @regulator_quirk_notify._entry, !50, !"_entry", i1 false, i1 false}
!54 = !{ptr @regulator_quirk_notify._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../arch/arm/mach-shmobile/regulator-quirk-rcar-gen2.c", i32 114, i32 4}
!57 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @regulator_quirk_notify._entry.17, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @regulator_quirk_notify._entry_ptr.20, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../arch/arm/mach-shmobile/regulator-quirk-rcar-gen2.c", i32 124, i32 2}
!62 = !{ptr @regulator_quirk_notify._entry.21, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @regulator_quirk_notify._entry_ptr.23, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{!"auto-init"}
!74 = !{i64 6827655}
!75 = !{i64 2154360514}
!76 = !{i64 2148281531, i64 2148281536, i64 2148281549, i64 2148281593, i64 2148281627, i64 2148281648}
!77 = !{i8 0, i8 2}
