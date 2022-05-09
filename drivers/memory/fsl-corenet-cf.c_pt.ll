; ModuleID = '/llk/IR_all_yes/drivers/memory/fsl-corenet-cf.c_pt.bc'
source_filename = "../drivers/memory/fsl-corenet-cf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ccf_info = type { i32, i32, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.ccf_private = type { ptr, ptr, ptr, ptr, i8 }
%struct.ccf_err_regs = type { i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_fsl_corenet_cf__187_271_ccf_driver_init6 = internal global ptr @ccf_driver_init, section ".initcall6.init", align 4
@ccf_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ccf_probe, ptr @ccf_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ccf_matches, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ccf_driver_exit = internal global ptr @ccf_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file188 = internal constant [50 x i8] c"fsl_corenet_cf.file=drivers/memory/fsl-corenet-cf\00", section ".modinfo", align 1
@__UNIQUE_ID_license189 = internal constant [27 x i8] c"fsl_corenet_cf.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author190 = internal constant [46 x i8] c"fsl_corenet_cf.author=Freescale Semiconductor\00", section ".modinfo", align 1
@__UNIQUE_ID_description191 = internal constant [78 x i8] c"fsl_corenet_cf.description=Freescale CoreNet Coherency Fabric error reporting\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fsl_corenet_cf\00", [17 x i8] zeroinitializer }, align 32
@ccf_matches = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,corenet1-cf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ccf1_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,corenet2-cf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ccf2_info }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/memory/fsl-corenet-cf.c\00", [32 x i8] zeroinitializer }, align 32
@ccf_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.1, i32 190, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: no mem resource\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ccf_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ccf_probe._entry_ptr = internal global ptr @ccf_probe._entry, section ".printk_index", align 4
@ccf_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str.1, i32 217, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: can't request irq\0A\00", [41 x i8] zeroinitializer }, align 32
@ccf_probe._entry_ptr.8 = internal global ptr @ccf_probe._entry.6, section ".printk_index", align 4
@ccf_irq.ratelimit = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ratelimit.lock\00", [17 x i8] zeroinitializer }, align 32
@__func__.ccf_irq = private unnamed_addr constant [8 x i8] c"ccf_irq\00", align 1
@ccf_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.ccf_irq, ptr @.str.1, i32 144, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"errdet 0x%08x cecar 0x%08x cecar2 0x%08x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@ccf_irq._entry_ptr = internal global ptr @ccf_irq._entry, section ".printk_index", align 4
@ccf_irq._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @__func__.ccf_irq, ptr @.str.1, i32 148, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"LAW Unavailable Target ID\0A\00", [37 x i8] zeroinitializer }, align 32
@ccf_irq._entry_ptr.14 = internal global ptr @ccf_irq._entry.12, section ".printk_index", align 4
@ccf_irq._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @__func__.ccf_irq, ptr @.str.1, i32 150, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Local Access Window Error\0A\00", [37 x i8] zeroinitializer }, align 32
@ccf_irq._entry_ptr.17 = internal global ptr @ccf_irq._entry.15, section ".printk_index", align 4
@ccf_irq._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @__func__.ccf_irq, ptr @.str.1, i32 154, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Coherency Violation\0A\00", [43 x i8] zeroinitializer }, align 32
@ccf_irq._entry_ptr.20 = internal global ptr @ccf_irq._entry.18, section ".printk_index", align 4
@ccf_irq._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @__func__.ccf_irq, ptr @.str.1, i32 157, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unavailable Target ID\0A\00", [41 x i8] zeroinitializer }, align 32
@ccf_irq._entry_ptr.23 = internal global ptr @ccf_irq._entry.21, section ".printk_index", align 4
@ccf_irq._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @__func__.ccf_irq, ptr @.str.1, i32 160, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Multicast Stash\0A\00", [47 x i8] zeroinitializer }, align 32
@ccf_irq._entry_ptr.26 = internal global ptr @ccf_irq._entry.24, section ".printk_index", align 4
@ccf_irq._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @__func__.ccf_irq, ptr @.str.1, i32 164, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"address 0x%09llx, src id 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@ccf_irq._entry_ptr.29 = internal global ptr @ccf_irq._entry.27, section ".printk_index", align 4
@ccf1_info = internal constant { %struct.ccf_info, [20 x i8] } { %struct.ccf_info { i32 0, i32 2560, i8 0 }, [20 x i8] zeroinitializer }, align 32
@ccf2_info = internal constant { %struct.ccf_info, [20 x i8] } { %struct.ccf_info { i32 1, i32 3648, i8 1 }, [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.32 = private unnamed_addr constant [11 x i8] c"ccf_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 262, i32 31 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 264, i32 11 }
@___asan_gen_.38 = private unnamed_addr constant [12 x i8] c"ccf_matches\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 49, i32 34 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 181, i32 6 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 190, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 217, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [10 x i8] c"ratelimit\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 103, i32 9 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 143, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 148, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 150, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 154, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 157, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 160, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 163, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [10 x i8] c"ccf1_info\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 29, i32 30 }
@___asan_gen_.119 = private unnamed_addr constant [10 x i8] c"ccf2_info\00", align 1
@___asan_gen_.120 = private constant [35 x i8] c"../drivers/memory/fsl-corenet-cf.c\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 35, i32 30 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_author190, ptr @__UNIQUE_ID_description191, ptr @__UNIQUE_ID_file188, ptr @__UNIQUE_ID_license189, ptr @__exitcall_ccf_driver_exit, ptr @__initcall__kmod_fsl_corenet_cf__187_271_ccf_driver_init6, ptr @ccf_driver_exit, ptr @ccf_irq._entry, ptr @ccf_irq._entry.12, ptr @ccf_irq._entry.15, ptr @ccf_irq._entry.18, ptr @ccf_irq._entry.21, ptr @ccf_irq._entry.24, ptr @ccf_irq._entry.27, ptr @ccf_irq._entry_ptr, ptr @ccf_irq._entry_ptr.14, ptr @ccf_irq._entry_ptr.17, ptr @ccf_irq._entry_ptr.20, ptr @ccf_irq._entry_ptr.23, ptr @ccf_irq._entry_ptr.26, ptr @ccf_irq._entry_ptr.29, ptr @ccf_probe._entry, ptr @ccf_probe._entry.6, ptr @ccf_probe._entry_ptr, ptr @ccf_probe._entry_ptr.8, ptr @ccf_driver, ptr @.str, ptr @ccf_matches, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @ccf_irq.ratelimit, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @ccf1_info, ptr @ccf2_info], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccf_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccf_matches to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccf_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccf_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccf_irq.ratelimit to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccf_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccf_irq._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccf_irq._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccf_irq._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccf_irq._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccf_irq._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccf_irq._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccf1_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccf2_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ccf_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ccf_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ccf_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @ccf_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccf_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_match_device(ptr noundef nonnull @ccf_matches, ptr noundef %dev) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !76

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 181, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end23:                                         ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #4
  %tobool26.not = icmp eq ptr %call.i, null
  br i1 %tobool26.not, label %if.end23.cleanup_crit_edge, label %if.end28

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  %call29 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #4
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %do.end34, label %if.end36

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #7
  br label %cleanup

if.end36:                                         ; preds = %if.end28
  %call38 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %call29) #4
  %regs = getelementptr inbounds %struct.ccf_private, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call38, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then41, label %if.end44

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %call38 to i32
  br label %cleanup

if.end44:                                         ; preds = %if.end36
  %dev46 = getelementptr inbounds %struct.ccf_private, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %dev46 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev46, align 4
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %call.i, align 4
  %err_reg_offs = getelementptr inbounds %struct.ccf_info, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %err_reg_offs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %err_reg_offs, align 4
  %add.ptr = getelementptr i8, ptr %call38, i32 %7
  %err_regs = getelementptr inbounds %struct.ccf_private, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %err_regs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr, ptr %err_regs, align 4
  %has_brr = getelementptr inbounds %struct.ccf_info, ptr %4, i32 0, i32 2
  %9 = ptrtoint ptr %has_brr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %has_brr, align 4, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool50.not = icmp eq i8 %10, 0
  br i1 %tobool50.not, label %if.end44.if.end58_crit_edge, label %if.then51

if.end44.if.end58_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end58

if.then51:                                        ; preds = %if.end44
  %add.ptr53 = getelementptr i8, ptr %call38, i32 3064
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53) #4, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !79
  %and = and i32 %11, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 154206208, i32 %and)
  %cmp = icmp eq i32 %and, 154206208
  br i1 %cmp, label %if.then56, label %if.then51.if.end58_crit_edge

if.then51.if.end58_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end58

if.then56:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #6
  %t1040 = getelementptr inbounds %struct.ccf_private, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %t1040 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %t1040, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.then51.if.end58_crit_edge, %if.end44.if.end58_crit_edge
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %13 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call60 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.end58.cleanup_crit_edge, label %if.end63

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end63:                                         ; preds = %if.end58
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 8
  %call.i134 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call60, ptr noundef nonnull @ccf_irq, ptr noundef null, i32 noundef 0, ptr noundef %15, ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i134)
  %tobool66.not = icmp eq i32 %call.i134, 0
  br i1 %tobool66.not, label %if.end72, label %do.end70

do.end70:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.3) #7
  br label %cleanup

if.end72:                                         ; preds = %if.end63
  %t104073 = getelementptr inbounds %struct.ccf_private, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %t104073 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %t104073, align 4, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool74.not = icmp eq i8 %17, 0
  %spec.select = select i1 %tobool74.not, i32 3, i32 15
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %21, label %if.end72.cleanup_crit_edge [
    i32 0, label %do.body78
    i32 1, label %do.body83
  ]

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body78:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !80
  tail call void @arm_heavy_mb() #4
  %23 = ptrtoint ptr %err_regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %err_regs, align 4
  %errdis = getelementptr inbounds %struct.ccf_err_regs, ptr %24, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %errdis, i32 %spec.select) #4, !srcloc !81
  br label %cleanup

do.body83:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !82
  tail call void @arm_heavy_mb() #4
  %25 = ptrtoint ptr %err_regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %err_regs, align 4
  %errdis87 = getelementptr inbounds %struct.ccf_err_regs, ptr %26, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %errdis87, i32 0) #4, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !83
  tail call void @arm_heavy_mb() #4
  %27 = ptrtoint ptr %err_regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %err_regs, align 4
  %errinten92 = getelementptr inbounds %struct.ccf_err_regs, ptr %28, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %errinten92, i32 %spec.select) #4, !srcloc !81
  br label %cleanup

cleanup:                                          ; preds = %do.body83, %do.body78, %if.end72.cleanup_crit_edge, %do.end70, %if.end58.cleanup_crit_edge, %if.then41, %do.end34, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %1, %if.then41 ], [ %call.i134, %do.end70 ], [ -6, %do.end34 ], [ -12, %if.end23.cleanup_crit_edge ], [ %call60, %if.end58.cleanup_crit_edge ], [ 0, %if.end72.cleanup_crit_edge ], [ 0, %do.body83 ], [ 0, %do.body78 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccf_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %5, label %entry.sw.epilog_crit_edge [
    i32 0, label %do.body
    i32 1, label %do.body2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !84
  tail call void @arm_heavy_mb() #4
  %err_regs = getelementptr inbounds %struct.ccf_private, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %err_regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %err_regs, align 4
  %errdis = getelementptr inbounds %struct.ccf_err_regs, ptr %8, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %errdis, i32 0) #4, !srcloc !81
  br label %sw.epilog

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !85
  tail call void @arm_heavy_mb() #4
  %err_regs5 = getelementptr inbounds %struct.ccf_private, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %err_regs5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %err_regs5, align 4
  %errinten = getelementptr inbounds %struct.ccf_err_regs, ptr %10, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %errinten, i32 0) #4, !srcloc !81
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body2, %do.body, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccf_irq(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %err_regs = getelementptr inbounds %struct.ccf_private, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %err_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %err_regs, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #4, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !86
  %3 = ptrtoint ptr %err_regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %err_regs, align 4
  %cecar4 = getelementptr inbounds %struct.ccf_err_regs, ptr %4, i32 0, i32 3
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cecar4) #4, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !87
  %6 = ptrtoint ptr %err_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %err_regs, align 4
  %cecar29 = getelementptr inbounds %struct.ccf_err_regs, ptr %7, i32 0, i32 6
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cecar29) #4, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !88
  %9 = ptrtoint ptr %err_regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %err_regs, align 4
  %cecaddrl = getelementptr inbounds %struct.ccf_err_regs, ptr %10, i32 0, i32 5
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cecaddrl) #4, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !89
  %conv = zext i32 %11 to i64
  %12 = ptrtoint ptr %err_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %err_regs, align 4
  %cecaddrh = getelementptr inbounds %struct.ccf_err_regs, ptr %13, i32 0, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cecaddrh) #4, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !90
  %and = and i32 %14, 255
  %conv20 = zext i32 %and to i64
  %shl = shl nuw nsw i64 %conv20, 32
  %or = or i64 %shl, %conv
  %call21 = tail call i32 @___ratelimit(ptr noundef nonnull @ccf_irq.ratelimit, ptr noundef nonnull @__func__.ccf_irq) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool.not = icmp eq i32 %call21, 0
  br i1 %tobool.not, label %entry.do.body84_crit_edge, label %if.end

entry.do.body84_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body84

if.end:                                           ; preds = %entry
  %15 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_id, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %18, label %if.end.do.end_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb31
  ]

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

sw.bb:                                            ; preds = %if.end
  %and22 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %sw.bb.do.end_crit_edge, label %if.then24

sw.bb.do.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then24:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %and25 = and i32 %5, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %shr = lshr i32 %5, 24
  %phi.sel = select i1 %tobool26.not, ptr @.str.16, ptr @.str.13
  br label %do.end

sw.bb31:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %tobool33.not = icmp sgt i32 %2, -1
  br i1 %tobool33.not, label %sw.bb31.do.end_crit_edge, label %if.then34

sw.bb31.do.end_crit_edge:                         ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then34:                                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #6
  %and35 = lshr i32 %5, 18
  %shr36 = and i32 %and35, 255
  br label %do.end

do.end:                                           ; preds = %if.then34, %sw.bb31.do.end_crit_edge, %if.then24, %sw.bb.do.end_crit_edge, %if.end.do.end_crit_edge
  %cap_valid.0.off0 = phi i1 [ false, %if.end.do.end_crit_edge ], [ true, %if.then34 ], [ false, %sw.bb31.do.end_crit_edge ], [ true, %if.then24 ], [ false, %sw.bb.do.end_crit_edge ]
  %uvt.1.off0 = phi ptr [ @.str.16, %if.end.do.end_crit_edge ], [ @.str.16, %if.then34 ], [ @.str.16, %sw.bb31.do.end_crit_edge ], [ %phi.sel, %if.then24 ], [ @.str.16, %sw.bb.do.end_crit_edge ]
  %src_id.0 = phi i32 [ -1, %if.end.do.end_crit_edge ], [ %shr36, %if.then34 ], [ -1, %sw.bb31.do.end_crit_edge ], [ %shr, %if.then24 ], [ -1, %sw.bb.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.ccf_private, ptr %dev_id, i32 0, i32 1
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %21, ptr noundef nonnull @.str.10, i32 noundef %2, i32 noundef %5, i32 noundef %8) #7
  %and38 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %do.end.if.end52_crit_edge, label %if.then40

do.end.if.end52_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end52

if.then40:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %23, ptr noundef nonnull %uvt.1.off0) #7
  br label %if.end52

if.end52:                                         ; preds = %if.then40, %do.end.if.end52_crit_edge
  %and53 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end52.if.end60_crit_edge, label %do.end58

if.end52.if.end60_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60

do.end58:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %25, ptr noundef nonnull @.str.19) #7
  br label %if.end60

if.end60:                                         ; preds = %do.end58, %if.end52.if.end60_crit_edge
  %and61 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end60.if.end68_crit_edge, label %do.end66

if.end60.if.end68_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end68

do.end66:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %27, ptr noundef nonnull @.str.22) #7
  br label %if.end68

if.end68:                                         ; preds = %do.end66, %if.end60.if.end68_crit_edge
  %and69 = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.end68.if.end76_crit_edge, label %do.end74

if.end68.if.end76_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end76

do.end74:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #6
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %29, ptr noundef nonnull @.str.25) #7
  br label %if.end76

if.end76:                                         ; preds = %do.end74, %if.end68.if.end76_crit_edge
  br i1 %cap_valid.0.off0, label %do.end81, label %if.end76.do.body84_crit_edge

if.end76.do.body84_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body84

do.end81:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %31, ptr noundef nonnull @.str.28, i64 noundef %or, i32 noundef %src_id.0) #7
  br label %do.body84

do.body84:                                        ; preds = %do.end81, %if.end76.do.body84_crit_edge, %entry.do.body84_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !91
  tail call void @arm_heavy_mb() #4
  %32 = ptrtoint ptr %err_regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %err_regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %2) #4, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool89.not = icmp ne i32 %2, 0
  %cond = zext i1 %tobool89.not to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !65}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @__initcall__kmod_fsl_corenet_cf__187_271_ccf_driver_init6, !1, !"__initcall__kmod_fsl_corenet_cf__187_271_ccf_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/memory/fsl-corenet-cf.c", i32 271, i32 1}
!2 = !{ptr @__exitcall_ccf_driver_exit, !1, !"__exitcall_ccf_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file188, !4, !"__UNIQUE_ID_file188", i1 false, i1 false}
!4 = !{!"../drivers/memory/fsl-corenet-cf.c", i32 273, i32 1}
!5 = !{ptr @__UNIQUE_ID_license189, !4, !"__UNIQUE_ID_license189", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author190, !7, !"__UNIQUE_ID_author190", i1 false, i1 false}
!7 = !{!"../drivers/memory/fsl-corenet-cf.c", i32 274, i32 1}
!8 = !{ptr @__UNIQUE_ID_description191, !9, !"__UNIQUE_ID_description191", i1 false, i1 false}
!9 = !{!"../drivers/memory/fsl-corenet-cf.c", i32 275, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/memory/fsl-corenet-cf.c", i32 264, i32 11}
!12 = !{ptr @ccf_driver, !13, !"ccf_driver", i1 false, i1 false}
!13 = !{!"../drivers/memory/fsl-corenet-cf.c", i32 262, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/memory/fsl-corenet-cf.c", i32 181, i32 6}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/memory/fsl-corenet-cf.c", i32 190, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ccf_probe._entry, !17, !"_entry", i1 false, i1 false}
!22 = !{ptr @ccf_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/memory/fsl-corenet-cf.c", i32 217, i32 3}
!25 = !{ptr @ccf_probe._entry.6, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @ccf_probe._entry_ptr.8, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/memory/fsl-corenet-cf.c", i32 103, i32 9}
!29 = !{ptr @ccf_irq.ratelimit, !28, !"ratelimit", i1 false, i1 false}
!30 = !{ptr @__func__.ccf_irq, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/memory/fsl-corenet-cf.c", i32 118, i32 7}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/memory/fsl-corenet-cf.c", i32 143, i32 2}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @ccf_irq._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @ccf_irq._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/memory/fsl-corenet-cf.c", i32 148, i32 4}
!39 = !{ptr @ccf_irq._entry.12, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @ccf_irq._entry_ptr.14, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/memory/fsl-corenet-cf.c", i32 150, i32 4}
!43 = !{ptr @ccf_irq._entry.15, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @ccf_irq._entry_ptr.17, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/memory/fsl-corenet-cf.c", i32 154, i32 3}
!47 = !{ptr @ccf_irq._entry.18, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @ccf_irq._entry_ptr.20, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/memory/fsl-corenet-cf.c", i32 157, i32 3}
!51 = !{ptr @ccf_irq._entry.21, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @ccf_irq._entry_ptr.23, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/memory/fsl-corenet-cf.c", i32 160, i32 3}
!55 = !{ptr @ccf_irq._entry.24, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @ccf_irq._entry_ptr.26, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/memory/fsl-corenet-cf.c", i32 163, i32 3}
!59 = !{ptr @ccf_irq._entry.27, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @ccf_irq._entry_ptr.29, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @ccf_matches, !62, !"ccf_matches", i1 false, i1 false}
!62 = !{!"../drivers/memory/fsl-corenet-cf.c", i32 49, i32 34}
!63 = !{ptr @ccf1_info, !64, !"ccf1_info", i1 false, i1 false}
!64 = !{!"../drivers/memory/fsl-corenet-cf.c", i32 29, i32 30}
!65 = !{ptr @ccf2_info, !66, !"ccf2_info", i1 false, i1 false}
!66 = !{!"../drivers/memory/fsl-corenet-cf.c", i32 35, i32 30}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{!"branch_weights", i32 1, i32 2000}
!77 = !{i8 0, i8 2}
!78 = !{i64 4203054}
!79 = !{i64 2153179369}
!80 = !{i64 2153181286}
!81 = !{i64 4202636}
!82 = !{i64 2153181595}
!83 = !{i64 2153181906}
!84 = !{i64 2153182215}
!85 = !{i64 2153182519}
!86 = !{i64 2153163589}
!87 = !{i64 2153163897}
!88 = !{i64 2153164207}
!89 = !{i64 2153164521}
!90 = !{i64 2153164835}
!91 = !{i64 2153176709}
