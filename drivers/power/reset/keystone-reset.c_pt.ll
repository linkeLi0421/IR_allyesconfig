; ModuleID = '/llk/IR_all_yes/drivers/power/reset/keystone-reset.c_pt.bc'
source_filename = "../drivers/power/reset/keystone-reset.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
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
%struct.hlist_node = type { ptr, ptr }
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

@__initcall__kmod_keystone_reset__170_168_rsctrl_driver_init6 = internal global ptr @rsctrl_driver_init, section ".initcall6.init", align 4
@rsctrl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rsctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rsctrl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rsctrl_driver_exit = internal global ptr @rsctrl_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [63 x i8] c"keystone_reset.author=Ivan Khoronzhuk <ivan.khoronzhuk@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [67 x i8] c"keystone_reset.description=Texas Instruments keystone reset driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [55 x i8] c"keystone_reset.file=drivers/power/reset/keystone-reset\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [30 x i8] c"keystone_reset.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias175 = internal constant [45 x i8] c"keystone_reset.alias=platform:keystone_reset\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"keystone_reset\00", [17 x i8] zeroinitializer }, align 32
@rsctrl_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,keystone-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti,syscon-pll\00", [18 x i8] zeroinitializer }, align 32
@pllctrl_regs = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti,syscon-dev\00", [18 x i8] zeroinitializer }, align 32
@rspll_offset = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rsctrl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 101, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"couldn't read the reset pll offset!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rsctrl_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/power/reset/keystone-reset.c\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rsctrl_probe._entry_ptr = internal global ptr @rsctrl_probe._entry, section ".printk_index", align 4
@rsctrl_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 107, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"couldn't read the rsmux offset!\0A\00", [63 x i8] zeroinitializer }, align 32
@rsctrl_probe._entry_ptr.10 = internal global ptr @rsctrl_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti,soft-reset\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ti,wdt-list\00", [20 x i8] zeroinitializer }, align 32
@rsctrl_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.4, ptr @.str.5, i32 133, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"ti,wdt-list property has to contain atleast one entry\0A\00", [41 x i8] zeroinitializer }, align 32
@rsctrl_probe._entry_ptr.15 = internal global ptr @rsctrl_probe._entry.13, section ".printk_index", align 4
@rsctrl_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.4, ptr @.str.5, i32 141, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"ti,wdt-list property can contain only numbers < 4\0A\00", [45 x i8] zeroinitializer }, align 32
@rsctrl_probe._entry_ptr.18 = internal global ptr @rsctrl_probe._entry.16, section ".printk_index", align 4
@rsctrl_restart_nb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @rsctrl_restart_handler, ptr null, i32 128 }, [20 x i8] zeroinitializer }, align 32
@rsctrl_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.4, ptr @.str.5, i32 156, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"cannot register restart handler (err=%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@rsctrl_probe._entry_ptr.21 = internal global ptr @rsctrl_probe._entry.19, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967221]
@___asan_gen_.22 = private unnamed_addr constant [14 x i8] c"rsctrl_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 161, i32 31 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 164, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [16 x i8] c"rsctrl_of_match\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 70, i32 34 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 91, i32 53 }
@___asan_gen_.34 = private unnamed_addr constant [13 x i8] c"pllctrl_regs\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 39, i32 23 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 95, i32 53 }
@___asan_gen_.40 = private unnamed_addr constant [13 x i8] c"rspll_offset\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 38, i32 12 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 101, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 107, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 112, i32 34 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 130, i32 40 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 132, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 140, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant [18 x i8] c"rsctrl_restart_nb\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 65, i32 30 }
@___asan_gen_.88 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private constant [40 x i8] c"../drivers/power/reset/keystone-reset.c\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 156, i32 3 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_alias175, ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_rsctrl_driver_exit, ptr @__initcall__kmod_keystone_reset__170_168_rsctrl_driver_init6, ptr @rsctrl_driver_exit, ptr @rsctrl_probe._entry, ptr @rsctrl_probe._entry.13, ptr @rsctrl_probe._entry.16, ptr @rsctrl_probe._entry.19, ptr @rsctrl_probe._entry.8, ptr @rsctrl_probe._entry_ptr, ptr @rsctrl_probe._entry_ptr.10, ptr @rsctrl_probe._entry_ptr.15, ptr @rsctrl_probe._entry_ptr.18, ptr @rsctrl_probe._entry_ptr.21, ptr @rsctrl_driver, ptr @.str, ptr @rsctrl_of_match, ptr @.str.1, ptr @pllctrl_regs, ptr @.str.2, ptr @rspll_offset, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @rsctrl_restart_nb, ptr @.str.20], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsctrl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsctrl_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pllctrl_regs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rspll_offset to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsctrl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsctrl_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsctrl_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsctrl_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsctrl_restart_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsctrl_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rsctrl_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rsctrl_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rsctrl_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @rsctrl_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsctrl_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  %rsmux_offset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rsmux_offset) #5
  %0 = ptrtoint ptr %rsmux_offset to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rsmux_offset, align 4, !annotation !65
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef nonnull %2, ptr noundef nonnull @.str.1) #5
  store ptr %call, ptr @pllctrl_regs, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef nonnull %2, ptr noundef nonnull @.str.2) #5
  %cmp.i107 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i107, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %call11 = tail call i32 @of_property_read_u32_index(ptr noundef nonnull %2, ptr noundef nonnull @.str.1, i32 noundef 1, ptr noundef nonnull @rspll_offset) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %do.end

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #8
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %call15 = call i32 @of_property_read_u32_index(ptr noundef nonnull %2, ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef nonnull %rsmux_offset) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end21, label %do.end20

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end21:                                         ; preds = %if.end14
  %call.i = call ptr @of_find_property(ptr noundef nonnull %2, ptr noundef nonnull @.str.11, ptr noundef null) #5
  %tobool.i.not = icmp eq ptr %call.i, null
  %cond = select i1 %tobool.i.not, i32 0, i32 12303
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond, ptr %val, align 4
  %6 = load ptr, ptr @pllctrl_regs, align 4
  %7 = load i32, ptr @rspll_offset, align 4
  %add.i = add i32 %7, 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %add.i, i32 noundef 65535, i32 noundef 23145, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool25.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool25.not, label %if.end27, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end27:                                         ; preds = %if.end21
  %8 = load ptr, ptr @pllctrl_regs, align 4
  %9 = load i32, ptr @rspll_offset, align 4
  %add = add i32 %9, 8
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %call28 = call i32 @regmap_write(ptr noundef %8, i32 noundef %add, i32 noundef %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end31:                                         ; preds = %if.end27
  %12 = load ptr, ptr @pllctrl_regs, align 4
  %13 = load i32, ptr @rspll_offset, align 4
  %add32 = add i32 %13, 12
  %call33 = call i32 @regmap_write(ptr noundef %12, i32 noundef %add32, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %for.body.preheader, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.preheader:                               ; preds = %if.end31
  %call38 = call i32 @of_property_read_u32_index(ptr noundef nonnull %2, ptr noundef nonnull @.str.12, i32 noundef 0, ptr noundef nonnull %val) #5
  %14 = zext i32 %call38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call38, label %for.body.preheader.for.end_crit_edge [
    i32 -75, label %do.end45
    i32 0, label %if.end49
  ]

for.body.preheader.for.end_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.else.1:                                        ; preds = %if.end56
  %call38.1 = call i32 @of_property_read_u32_index(ptr noundef nonnull %2, ptr noundef nonnull @.str.12, i32 noundef 1, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.1)
  %tobool46.not.1 = icmp eq i32 %call38.1, 0
  br i1 %tobool46.not.1, label %if.end49.1, label %if.else.1.for.end_crit_edge

if.else.1.for.end_crit_edge:                      ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end49.1:                                       ; preds = %if.else.1
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %cmp50.1 = icmp ugt i32 %16, 3
  br i1 %cmp50.1, label %if.end49.1.do.end55_crit_edge, label %if.end56.1

if.end49.1.do.end55_crit_edge:                    ; preds = %if.end49.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end55

if.end56.1:                                       ; preds = %if.end49.1
  %17 = ptrtoint ptr %rsmux_offset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rsmux_offset, align 4
  %mul.1 = shl nuw nsw i32 %16, 2
  %add57.1 = add i32 %18, %mul.1
  %call.i108.1 = call i32 @regmap_update_bits_base(ptr noundef %call6, i32 noundef %add57.1, i32 noundef 14, i32 noundef 11, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108.1)
  %tobool59.not.1 = icmp eq i32 %call.i108.1, 0
  br i1 %tobool59.not.1, label %if.else.2, label %if.end56.1.cleanup_crit_edge

if.end56.1.cleanup_crit_edge:                     ; preds = %if.end56.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else.2:                                        ; preds = %if.end56.1
  %call38.2 = call i32 @of_property_read_u32_index(ptr noundef nonnull %2, ptr noundef nonnull @.str.12, i32 noundef 2, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.2)
  %tobool46.not.2 = icmp eq i32 %call38.2, 0
  br i1 %tobool46.not.2, label %if.end49.2, label %if.else.2.for.end_crit_edge

if.else.2.for.end_crit_edge:                      ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end49.2:                                       ; preds = %if.else.2
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %20)
  %cmp50.2 = icmp ugt i32 %20, 3
  br i1 %cmp50.2, label %if.end49.2.do.end55_crit_edge, label %if.end56.2

if.end49.2.do.end55_crit_edge:                    ; preds = %if.end49.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end55

if.end56.2:                                       ; preds = %if.end49.2
  %21 = ptrtoint ptr %rsmux_offset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rsmux_offset, align 4
  %mul.2 = shl nuw nsw i32 %20, 2
  %add57.2 = add i32 %22, %mul.2
  %call.i108.2 = call i32 @regmap_update_bits_base(ptr noundef %call6, i32 noundef %add57.2, i32 noundef 14, i32 noundef 11, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108.2)
  %tobool59.not.2 = icmp eq i32 %call.i108.2, 0
  br i1 %tobool59.not.2, label %if.else.3, label %if.end56.2.cleanup_crit_edge

if.end56.2.cleanup_crit_edge:                     ; preds = %if.end56.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else.3:                                        ; preds = %if.end56.2
  %call38.3 = call i32 @of_property_read_u32_index(ptr noundef nonnull %2, ptr noundef nonnull @.str.12, i32 noundef 3, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.3)
  %tobool46.not.3 = icmp eq i32 %call38.3, 0
  br i1 %tobool46.not.3, label %if.end49.3, label %if.else.3.for.end_crit_edge

if.else.3.for.end_crit_edge:                      ; preds = %if.else.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end49.3:                                       ; preds = %if.else.3
  %23 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp50.3 = icmp ugt i32 %24, 3
  br i1 %cmp50.3, label %if.end49.3.do.end55_crit_edge, label %if.end56.3

if.end49.3.do.end55_crit_edge:                    ; preds = %if.end49.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end55

if.end56.3:                                       ; preds = %if.end49.3
  %25 = ptrtoint ptr %rsmux_offset to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rsmux_offset, align 4
  %mul.3 = shl nuw nsw i32 %24, 2
  %add57.3 = add i32 %26, %mul.3
  %call.i108.3 = call i32 @regmap_update_bits_base(ptr noundef %call6, i32 noundef %add57.3, i32 noundef 14, i32 noundef 11, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108.3)
  %tobool59.not.3 = icmp eq i32 %call.i108.3, 0
  br i1 %tobool59.not.3, label %if.end56.3.for.end_crit_edge, label %if.end56.3.cleanup_crit_edge

if.end56.3.cleanup_crit_edge:                     ; preds = %if.end56.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end56.3.for.end_crit_edge:                     ; preds = %if.end56.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

do.end45:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #8
  br label %cleanup

if.end49:                                         ; preds = %for.body.preheader
  %27 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %28)
  %cmp50 = icmp ugt i32 %28, 3
  br i1 %cmp50, label %if.end49.do.end55_crit_edge, label %if.end56

if.end49.do.end55_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end55

do.end55:                                         ; preds = %if.end49.do.end55_crit_edge, %if.end49.3.do.end55_crit_edge, %if.end49.2.do.end55_crit_edge, %if.end49.1.do.end55_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #8
  br label %cleanup

if.end56:                                         ; preds = %if.end49
  %29 = ptrtoint ptr %rsmux_offset to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rsmux_offset, align 4
  %mul = shl nuw nsw i32 %28, 2
  %add57 = add i32 %30, %mul
  %call.i108 = call i32 @regmap_update_bits_base(ptr noundef %call6, i32 noundef %add57, i32 noundef 14, i32 noundef 11, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108)
  %tobool59.not = icmp eq i32 %call.i108, 0
  br i1 %tobool59.not, label %if.else.1, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.end:                                          ; preds = %if.end56.3.for.end_crit_edge, %if.else.3.for.end_crit_edge, %if.else.2.for.end_crit_edge, %if.else.1.for.end_crit_edge, %for.body.preheader.for.end_crit_edge
  %call62 = call i32 @register_restart_handler(ptr noundef nonnull @rsctrl_restart_nb) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %for.end.cleanup_crit_edge, label %do.end67

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end67:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20, i32 noundef %call62) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end67, %for.end.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %do.end55, %do.end45, %if.end56.3.cleanup_crit_edge, %if.end56.2.cleanup_crit_edge, %if.end56.1.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %do.end20, %do.end, %if.then8, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then3 ], [ %4, %if.then8 ], [ -22, %do.end ], [ -22, %do.end20 ], [ -22, %do.end55 ], [ -22, %do.end45 ], [ -19, %entry.cleanup_crit_edge ], [ %call.i.i, %if.end21.cleanup_crit_edge ], [ %call28, %if.end27.cleanup_crit_edge ], [ %call33, %if.end31.cleanup_crit_edge ], [ %call62, %do.end67 ], [ 0, %for.end.cleanup_crit_edge ], [ %call.i108, %if.end56.cleanup_crit_edge ], [ %call.i108.1, %if.end56.1.cleanup_crit_edge ], [ %call.i108.2, %if.end56.2.cleanup_crit_edge ], [ %call.i108.3, %if.end56.3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rsmux_offset) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_restart_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsctrl_restart_handler(ptr nocapture noundef readnone %this, i32 noundef %mode, ptr nocapture noundef readnone %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @pllctrl_regs, align 4
  %1 = load i32, ptr @rspll_offset, align 4
  %add.i = add i32 %1, 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %0, i32 noundef %add.i, i32 noundef 65535, i32 noundef 23145, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %2 = load ptr, ptr @pllctrl_regs, align 4
  %3 = load i32, ptr @rspll_offset, align 4
  %add = add i32 %3, 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef %add, i32 noundef 65536, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !52, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__initcall__kmod_keystone_reset__170_168_rsctrl_driver_init6, !1, !"__initcall__kmod_keystone_reset__170_168_rsctrl_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/reset/keystone-reset.c", i32 168, i32 1}
!2 = !{ptr @__exitcall_rsctrl_driver_exit, !1, !"__exitcall_rsctrl_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author171, !4, !"__UNIQUE_ID_author171", i1 false, i1 false}
!4 = !{!"../drivers/power/reset/keystone-reset.c", i32 170, i32 1}
!5 = !{ptr @__UNIQUE_ID_description172, !6, !"__UNIQUE_ID_description172", i1 false, i1 false}
!6 = !{!"../drivers/power/reset/keystone-reset.c", i32 171, i32 1}
!7 = !{ptr @__UNIQUE_ID_file173, !8, !"__UNIQUE_ID_file173", i1 false, i1 false}
!8 = !{!"../drivers/power/reset/keystone-reset.c", i32 172, i32 1}
!9 = !{ptr @__UNIQUE_ID_license174, !8, !"__UNIQUE_ID_license174", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias175, !11, !"__UNIQUE_ID_alias175", i1 false, i1 false}
!11 = !{!"../drivers/power/reset/keystone-reset.c", i32 173, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/power/reset/keystone-reset.c", i32 164, i32 11}
!14 = !{ptr @rsctrl_driver, !15, !"rsctrl_driver", i1 false, i1 false}
!15 = !{!"../drivers/power/reset/keystone-reset.c", i32 161, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/power/reset/keystone-reset.c", i32 91, i32 53}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/power/reset/keystone-reset.c", i32 95, i32 53}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/power/reset/keystone-reset.c", i32 101, i32 3}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @rsctrl_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @rsctrl_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/power/reset/keystone-reset.c", i32 107, i32 3}
!30 = !{ptr @rsctrl_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @rsctrl_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/power/reset/keystone-reset.c", i32 112, i32 34}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/power/reset/keystone-reset.c", i32 130, i32 40}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/power/reset/keystone-reset.c", i32 132, i32 4}
!38 = !{ptr @rsctrl_probe._entry.13, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @rsctrl_probe._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/power/reset/keystone-reset.c", i32 140, i32 4}
!42 = !{ptr @rsctrl_probe._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @rsctrl_probe._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/power/reset/keystone-reset.c", i32 156, i32 3}
!46 = !{ptr @rsctrl_probe._entry.19, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @rsctrl_probe._entry_ptr.21, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @pllctrl_regs, !49, !"pllctrl_regs", i1 false, i1 false}
!49 = !{!"../drivers/power/reset/keystone-reset.c", i32 39, i32 23}
!50 = !{ptr @rspll_offset, !51, !"rspll_offset", i1 false, i1 false}
!51 = !{!"../drivers/power/reset/keystone-reset.c", i32 38, i32 12}
!52 = !{ptr @rsctrl_restart_nb, !53, !"rsctrl_restart_nb", i1 false, i1 false}
!53 = !{!"../drivers/power/reset/keystone-reset.c", i32 65, i32 30}
!54 = !{ptr @rsctrl_of_match, !55, !"rsctrl_of_match", i1 false, i1 false}
!55 = !{!"../drivers/power/reset/keystone-reset.c", i32 70, i32 34}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"auto-init"}
