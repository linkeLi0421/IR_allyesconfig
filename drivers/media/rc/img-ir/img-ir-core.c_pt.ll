; ModuleID = '/llk/IR_all_yes/drivers/media/rc/img-ir/img-ir-core.c_pt.bc'
source_filename = "../drivers/media/rc/img-ir/img-ir-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.img_ir_priv = type { ptr, i32, ptr, ptr, ptr, %struct.spinlock, %struct.img_ir_priv_raw, %struct.img_ir_priv_hw }
%struct.img_ir_priv_raw = type { ptr, %struct.timer_list, i32 }
%struct.img_ir_priv_hw = type { [4 x i32], ptr, %struct.notifier_block, %struct.timer_list, %struct.timer_list, ptr, i64, i32, %struct.img_ir_reg_timings, i32, [2 x %struct.img_ir_filter], i32, i8, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.img_ir_reg_timings = type { i32, %struct.img_ir_timing_regvals, %struct.img_ir_timing_regvals }
%struct.img_ir_timing_regvals = type { i32, i32, i32, i32, i32, i32 }
%struct.img_ir_filter = type { i64, i64, i8, i8 }

@__initcall__kmod_img_ir__232_188_img_ir_driver_init6 = internal global ptr @img_ir_driver_init, section ".initcall6.init", align 4
@img_ir_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @img_ir_probe, ptr @img_ir_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @img_ir_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @img_ir_pmops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_img_ir_driver_exit = internal global ptr @img_ir_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author233 = internal constant [44 x i8] c"img_ir.author=Imagination Technologies Ltd.\00", section ".modinfo", align 1
@__UNIQUE_ID_description234 = internal constant [29 x i8] c"img_ir.description=ImgTec IR\00", section ".modinfo", align 1
@__UNIQUE_ID_file235 = internal constant [43 x i8] c"img_ir.file=drivers/media/rc/img-ir/img-ir\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [19 x i8] c"img_ir.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"img-ir\00", [25 x i8] zeroinitializer }, align 32
@img_ir_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"img,ir-rev1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@img_ir_pmops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @img_ir_suspend, ptr @img_ir_resume, ptr @img_ir_suspend, ptr @img_ir_resume, ptr @img_ir_suspend, ptr @img_ir_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@img_ir_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@img_ir_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 103, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cannot get core clock resource\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"img_ir_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/rc/img-ir/img-ir-core.c\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@img_ir_probe._entry_ptr = internal global ptr @img_ir_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sys\00", [28 x i8] zeroinitializer }, align 32
@img_ir_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 108, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cannot get sys clock resource\0A\00", [33 x i8] zeroinitializer }, align 32
@img_ir_probe._entry_ptr.11 = internal global ptr @img_ir_probe._entry.9, section ".printk_index", align 4
@img_ir_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 117, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cannot enable sys clock\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@img_ir_probe._entry_ptr.15 = internal global ptr @img_ir_probe._entry.12, section ".printk_index", align 4
@img_ir_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.4, ptr @.str.5, i32 136, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cannot register IRQ %u\0A\00", [40 x i8] zeroinitializer }, align 32
@img_ir_probe._entry_ptr.18 = internal global ptr @img_ir_probe._entry.16, section ".printk_index", align 4
@img_ir_ident._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.5, i32 70, ptr @.str.21, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"IMG IR Decoder (%d.%d.%d.%d) probed successfully\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"img_ir_ident\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@img_ir_ident._entry_ptr = internal global ptr @img_ir_ident._entry, section ".printk_index", align 4
@img_ir_ident._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.20, ptr @.str.5, i32 73, ptr @.str.21, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Modes:%s%s\0A\00", [20 x i8] zeroinitializer }, align 32
@img_ir_ident._entry_ptr.24 = internal global ptr @img_ir_ident._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" hardware\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" raw\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.28 = private unnamed_addr constant [14 x i8] c"img_ir_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 178, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 180, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [13 x i8] c"img_ir_match\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 172, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant [13 x i8] c"img_ir_pmops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 170, i32 8 }
@___asan_gen_.40 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 93, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 101, i32 39 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 103, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 106, i32 43 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 108, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 117, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 135, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 65, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.116 = private constant [41 x i8] c"../drivers/media/rc/img-ir/img-ir-core.c\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 71, i32 2 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_img_ir_driver_exit, ptr @__initcall__kmod_img_ir__232_188_img_ir_driver_init6, ptr @img_ir_driver_exit, ptr @img_ir_ident._entry, ptr @img_ir_ident._entry.22, ptr @img_ir_ident._entry_ptr, ptr @img_ir_ident._entry_ptr.24, ptr @img_ir_probe._entry, ptr @img_ir_probe._entry.12, ptr @img_ir_probe._entry.16, ptr @img_ir_probe._entry.9, ptr @img_ir_probe._entry_ptr, ptr @img_ir_probe._entry_ptr.11, ptr @img_ir_probe._entry_ptr.15, ptr @img_ir_probe._entry_ptr.18, ptr @img_ir_driver, ptr @.str, ptr @img_ir_match, ptr @img_ir_pmops, ptr @img_ir_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_ir_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_ir_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_ir_pmops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_ir_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_ir_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_ir_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_ir_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_ir_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_ir_ident._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_ir_ident._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @img_ir_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @img_ir_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @img_ir_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @img_ir_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_ir_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 392, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %call.i, align 8
  %lock = getelementptr inbounds %struct.img_ir_priv, ptr %call.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @img_ir_probe.__key, i16 noundef signext 3) #5
  %call7 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %reg_base = getelementptr inbounds %struct.img_ir_priv, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7, ptr %reg_base, align 8
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end3
  %call15 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #5
  %clk = getelementptr inbounds %struct.img_ir_priv, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call15, ptr %clk, align 8
  %cmp.i117 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i117, label %do.end21, label %if.end13.if.end23_crit_edge

if.end13.if.end23_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

do.end21:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.3) #8
  br label %if.end23

if.end23:                                         ; preds = %do.end21, %if.end13.if.end23_crit_edge
  %call25 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.8) #5
  %sys_clk = getelementptr inbounds %struct.img_ir_priv, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %sys_clk to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call25, ptr %sys_clk, align 4
  %cmp.i118 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i118, label %do.end31, label %if.end23.if.end33_crit_edge

if.end23.if.end33_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

do.end31:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.10) #8
  %6 = ptrtoint ptr %sys_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load ptr, ptr %sys_clk, align 4
  br label %if.end33

if.end33:                                         ; preds = %do.end31, %if.end23.if.end33_crit_edge
  %7 = phi ptr [ %.pr, %do.end31 ], [ %call25, %if.end23.if.end33_crit_edge ]
  %cmp.i119 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i119, label %if.end33.if.end46_crit_edge, label %if.then36

if.end33.if.end46_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

if.then36:                                        ; preds = %if.end33
  %call.i120 = tail call i32 @clk_prepare(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %tobool.not.i = icmp eq i32 %call.i120, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then36.do.end43_crit_edge

if.then36.do.end43_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end43

if.end.i:                                         ; preds = %if.then36
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end46_crit_edge, label %if.then3.i

if.end.i.if.end46_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %7) #5
  br label %do.end43

do.end43:                                         ; preds = %if.then3.i, %if.then36.do.end43_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i120, %if.then36.do.end43_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #8
  br label %cleanup

if.end46:                                         ; preds = %if.end.i.if.end46_crit_edge, %if.end33.if.end46_crit_edge
  %call47 = tail call i32 @img_ir_probe_raw(ptr noundef nonnull %call.i) #5
  %call48 = tail call i32 @img_ir_probe_hw(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool49.not = icmp eq i32 %call47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool50.not = icmp eq i32 %call48, 0
  %or.cond = select i1 %tobool49.not, i1 true, i1 %tobool50.not
  br i1 %or.cond, label %if.end55, label %if.then51

if.then51:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call47)
  %cmp52 = icmp eq i32 %call47, -19
  %spec.select = select i1 %cmp52, i32 %call48, i32 %call47
  br label %err_probe

if.end55:                                         ; preds = %if.end46
  %irq56 = getelementptr inbounds %struct.img_ir_priv, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %irq56 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call, ptr %irq56, align 4
  %call.i121 = tail call i32 @request_threaded_irq(i32 noundef %call, ptr noundef nonnull @img_ir_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i121)
  %tobool59.not = icmp eq i32 %call.i121, 0
  br i1 %tobool59.not, label %if.end66, label %do.end63

do.end63:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %irq56 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq56, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %10) #8
  tail call void @img_ir_remove_hw(ptr noundef nonnull %call.i) #5
  tail call void @img_ir_remove_raw(ptr noundef nonnull %call.i) #5
  br label %err_probe

if.end66:                                         ; preds = %if.end55
  %11 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_base, align 8
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 244
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !68
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i, align 8
  %shr.i = lshr i32 %14, 24
  %and1.i = lshr i32 %14, 16
  %shr2.i = and i32 %and1.i, 255
  %and3.i = lshr i32 %14, 8
  %shr4.i = and i32 %and3.i, 255
  %and5.i = and i32 %14, 255
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.19, i32 noundef %shr.i, i32 noundef %shr2.i, i32 noundef %shr4.i, i32 noundef %and5.i) #8
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i, align 8
  %rdev.i.i = getelementptr inbounds %struct.img_ir_priv, ptr %call.i, i32 0, i32 7, i32 1
  %19 = ptrtoint ptr %rdev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rdev.i.i, align 8
  %tobool.i.not.i = icmp eq ptr %20, null
  %cond.i = select i1 %tobool.i.not.i, ptr @.str.26, ptr @.str.25
  %raw.i = getelementptr inbounds %struct.img_ir_priv, ptr %call.i, i32 0, i32 6
  %21 = ptrtoint ptr %raw.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %raw.i, align 4
  %tobool.i21.not.i = icmp eq ptr %22, null
  %cond13.i = select i1 %tobool.i21.not.i, ptr @.str.26, ptr @.str.27
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull @.str.23, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond13.i) #8
  %23 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_base, align 8
  %add.ptr.i.i123 = getelementptr i8, ptr %24, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i123, i32 0) #5, !srcloc !71
  tail call void @img_ir_setup_raw(ptr noundef nonnull %call.i) #5
  tail call void @img_ir_setup_hw(ptr noundef nonnull %call.i) #5
  %25 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %clk, align 8
  %cmp.i.i = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end66.cleanup_crit_edge, label %if.then.i

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %if.end66
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %26) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %26) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.then3.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %26) #5
  br label %cleanup

err_probe:                                        ; preds = %do.end63, %if.then51
  %error.0 = phi i32 [ -5, %do.end63 ], [ %spec.select, %if.then51 ]
  %27 = ptrtoint ptr %sys_clk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sys_clk, align 4
  %cmp.i125 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i125, label %err_probe.cleanup_crit_edge, label %if.then69

err_probe.cleanup_crit_edge:                      ; preds = %err_probe
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then69:                                        ; preds = %err_probe
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_disable(ptr noundef %28) #5
  tail call void @clk_unprepare(ptr noundef %28) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then69, %err_probe.cleanup_crit_edge, %if.then3.i.i, %if.end.i.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.end66.cleanup_crit_edge, %do.end43, %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then10 ], [ %retval.0.i.ph, %do.end43 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %error.0, %if.then69 ], [ %error.0, %err_probe.cleanup_crit_edge ], [ 0, %if.end66.cleanup_crit_edge ], [ 0, %if.then.i.cleanup_crit_edge ], [ 0, %if.end.i.i.cleanup_crit_edge ], [ 0, %if.then3.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_ir_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.img_ir_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #5
  tail call void @img_ir_remove_hw(ptr noundef %1) #5
  tail call void @img_ir_remove_raw(ptr noundef %1) #5
  %clk = getelementptr inbounds %struct.img_ir_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 8
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_disable(ptr noundef %5) #5
  tail call void @clk_unprepare(ptr noundef %5) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sys_clk = getelementptr inbounds %struct.img_ir_priv, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %sys_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sys_clk, align 4
  %cmp.i15 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i15, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_disable(ptr noundef %7) #5
  tail call void @clk_unprepare(ptr noundef %7) #5
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @img_ir_probe_raw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @img_ir_probe_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @img_ir_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.img_ir_priv, ptr %dev_id, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %lock) #5
  %reg_base.i = getelementptr inbounds %struct.img_ir_priv, ptr %dev_id, i32 0, i32 4
  %0 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 68
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  %3 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i25 = getelementptr i8, ptr %4, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %2) #5, !srcloc !71
  %5 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_base.i, align 8
  %add.ptr.i27 = getelementptr i8, ptr %6, i32 64
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27) #5, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  %8 = and i32 %7, %2
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %and2 = and i32 %9, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %raw = getelementptr inbounds %struct.img_ir_priv, ptr %dev_id, i32 0, i32 6
  %10 = ptrtoint ptr %raw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %raw, align 4
  %tobool.i.not = icmp eq ptr %11, null
  br i1 %tobool.i.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @img_ir_isr_raw(ptr noundef %dev_id, i32 noundef %9) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %and4 = and i32 %9, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %land.lhs.true6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

land.lhs.true6:                                   ; preds = %if.end
  %rdev.i = getelementptr inbounds %struct.img_ir_priv, ptr %dev_id, i32 0, i32 7, i32 1
  %12 = ptrtoint ptr %rdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rdev.i, align 8
  %tobool.i28.not = icmp eq ptr %13, null
  br i1 %tobool.i28.not, label %land.lhs.true6.if.end9_crit_edge, label %if.then8

land.lhs.true6.if.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @img_ir_isr_hw(ptr noundef %dev_id, i32 noundef %9) #5
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %land.lhs.true6.if.end9_crit_edge, %if.end.if.end9_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @img_ir_remove_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @img_ir_remove_raw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @img_ir_isr_raw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @img_ir_isr_hw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @img_ir_setup_raw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @img_ir_setup_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @img_ir_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @img_ir_resume(ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !48, !50, !51, !52, !53, !54, !55, !57}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @__initcall__kmod_img_ir__232_188_img_ir_driver_init6, !1, !"__initcall__kmod_img_ir__232_188_img_ir_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/img-ir/img-ir-core.c", i32 188, i32 1}
!2 = !{ptr @__exitcall_img_ir_driver_exit, !1, !"__exitcall_img_ir_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author233, !4, !"__UNIQUE_ID_author233", i1 false, i1 false}
!4 = !{!"../drivers/media/rc/img-ir/img-ir-core.c", i32 190, i32 1}
!5 = !{ptr @__UNIQUE_ID_description234, !6, !"__UNIQUE_ID_description234", i1 false, i1 false}
!6 = !{!"../drivers/media/rc/img-ir/img-ir-core.c", i32 191, i32 1}
!7 = !{ptr @__UNIQUE_ID_file235, !8, !"__UNIQUE_ID_file235", i1 false, i1 false}
!8 = !{!"../drivers/media/rc/img-ir/img-ir-core.c", i32 192, i32 1}
!9 = !{ptr @__UNIQUE_ID_license236, !8, !"__UNIQUE_ID_license236", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/rc/img-ir/img-ir-core.c", i32 180, i32 11}
!12 = !{ptr @img_ir_driver, !13, !"img_ir_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/rc/img-ir/img-ir-core.c", i32 178, i32 31}
!14 = !{ptr @img_ir_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/media/rc/img-ir/img-ir-core.c", i32 93, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/rc/img-ir/img-ir-core.c", i32 101, i32 39}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/rc/img-ir/img-ir-core.c", i32 103, i32 3}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @img_ir_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @img_ir_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/rc/img-ir/img-ir-core.c", i32 106, i32 43}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/rc/img-ir/img-ir-core.c", i32 108, i32 3}
!31 = !{ptr @img_ir_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @img_ir_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/rc/img-ir/img-ir-core.c", i32 117, i32 4}
!35 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @img_ir_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @img_ir_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/rc/img-ir/img-ir-core.c", i32 135, i32 3}
!40 = !{ptr @img_ir_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @img_ir_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/rc/img-ir/img-ir-core.c", i32 65, i32 2}
!44 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @img_ir_ident._entry, !43, !"_entry", i1 false, i1 false}
!47 = !{ptr @img_ir_ident._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/rc/img-ir/img-ir-core.c", i32 71, i32 2}
!50 = !{ptr @img_ir_ident._entry.22, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @img_ir_ident._entry_ptr.24, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @img_ir_match, !56, !"img_ir_match", i1 false, i1 false}
!56 = !{!"../drivers/media/rc/img-ir/img-ir-core.c", i32 172, i32 34}
!57 = !{ptr @img_ir_pmops, !58, !"img_ir_pmops", i1 false, i1 false}
!58 = !{!"../drivers/media/rc/img-ir/img-ir-core.c", i32 170, i32 8}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{i64 4232963}
!69 = !{i64 2151773312}
!70 = !{i64 2151774667}
!71 = !{i64 4232545}
