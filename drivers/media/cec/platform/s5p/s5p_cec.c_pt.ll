; ModuleID = '/llk/IR_all_yes/drivers/media/cec/platform/s5p/s5p_cec.c_pt.bc'
source_filename = "../drivers/media/cec/platform/s5p/s5p_cec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cec_adap_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.s5p_cec_dev = type { ptr, ptr, ptr, %struct.mutex, ptr, ptr, i32, ptr, i32, i32, %struct.cec_msg }
%struct.cec_msg = type { i64, i64, i32, i32, i32, i32, [16 x i8], i8, i8, i8, i8, i8, i8, i8 }
%struct.cec_adapter = type { ptr, [32 x i8], %struct.cec_devnode, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, ptr, i8, ptr, %struct.completion, ptr, %struct.wait_queue_head, ptr, ptr, i32, i8, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, i8, %struct.cec_log_addrs, %struct.cec_connector_info, i32, ptr, ptr, ptr, i32, [32 x i8] }
%struct.cec_devnode = type { %struct.device, %struct.cdev, i32, %struct.mutex, i8, i8, %struct.mutex, %struct.list_head }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.cec_log_addrs = type { [4 x i8], i16, i8, i8, i32, i32, [15 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x [12 x i8]] }
%struct.cec_connector_info = type { i32, %union.anon.73 }
%union.anon.73 = type { [16 x i32] }

@__param_str_debug = internal constant [14 x i8] c"s5p_cec.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype233 = internal constant [27 x i8] c"s5p_cec.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug234 = internal constant [37 x i8] c"s5p_cec.parm=debug:debug level (0-2)\00", section ".modinfo", align 1
@__initcall__kmod_s5p_cec__246_304_s5p_cec_pdrv_init6 = internal global ptr @s5p_cec_pdrv_init, section ".initcall6.init", align 4
@s5p_cec_pdrv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @s5p_cec_probe, ptr @s5p_cec_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @s5p_cec_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5p_cec_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_s5p_cec_pdrv_exit = internal global ptr @s5p_cec_pdrv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author247 = internal constant [46 x i8] c"s5p_cec.author=Kamil Debski <kamil@wypas.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file248 = internal constant [52 x i8] c"s5p_cec.file=drivers/media/cec/platform/s5p/s5p-cec\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [20 x i8] c"s5p_cec.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description250 = internal constant [43 x i8] c"s5p_cec.description=Samsung S5P CEC driver\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"s5p-cec\00", [24 x i8] zeroinitializer }, align 32
@s5p_cec_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s5p-cec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@s5p_cec_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5p_cec_runtime_suspend, ptr @s5p_cec_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"needs-hpd\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hdmicec\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"samsung,syscon-phandle\00", [41 x i8] zeroinitializer }, align 32
@s5p_cec_adap_ops = internal constant { %struct.cec_adap_ops, [56 x i8] } { %struct.cec_adap_ops { ptr @s5p_cec_adap_enable, ptr null, ptr null, ptr @s5p_cec_adap_log_addr, ptr @s5p_cec_adap_transmit, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@s5p_cec_probe.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, i8 0, i8 59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"s5p_cec\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"s5p_cec_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/cec/platform/s5p/s5p_cec.c\00", [55 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"successfully probed\0A\00", [43 x i8] zeroinitializer }, align 32
@s5p_cec_irq_handler.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.8, ptr @.str.6, ptr @.str.9, i8 0, i8 22, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"s5p_cec_irq_handler\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"irq received\0A\00", [18 x i8] zeroinitializer }, align 32
@s5p_cec_irq_handler.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.8, ptr @.str.6, ptr @.str.10, i8 0, i8 23, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CEC_STATUS_TX_NACK set\0A\00", [40 x i8] zeroinitializer }, align 32
@s5p_cec_irq_handler.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.8, ptr @.str.6, ptr @.str.11, i8 0, i8 24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CEC_STATUS_TX_ERROR set\0A\00", [39 x i8] zeroinitializer }, align 32
@s5p_cec_irq_handler.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.8, ptr @.str.6, ptr @.str.12, i8 0, i8 25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CEC_STATUS_TX_DONE\0A\00", [44 x i8] zeroinitializer }, align 32
@s5p_cec_irq_handler.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.8, ptr @.str.6, ptr @.str.13, i8 0, i8 27, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CEC_STATUS_RX_ERROR set\0A\00", [39 x i8] zeroinitializer }, align 32
@s5p_cec_irq_handler.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.8, ptr @.str.6, ptr @.str.14, i8 0, i8 28, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CEC_STATUS_RX_DONE set\0A\00", [40 x i8] zeroinitializer }, align 32
@s5p_cec_irq_handler.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.8, ptr @.str.6, ptr @.str.15, i8 0, i8 28, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Buffer overrun (worker did not process previous message)\0A\00", [38 x i8] zeroinitializer }, align 32
@s5p_cec_irq_handler_thread.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.16, ptr @.str.6, ptr @.str.17, i8 0, i8 33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"s5p_cec_irq_handler_thread\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"irq processing thread\0A\00", [41 x i8] zeroinitializer }, align 32
@s5p_cec_irq_handler_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.6, i32 153, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"state set to busy, this should not occur here\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@s5p_cec_irq_handler_thread._entry_ptr = internal global ptr @s5p_cec_irq_handler_thread._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 32, i32 12 }
@___asan_gen_.24 = private unnamed_addr constant [13 x i8] c"s5p_cec_pdrv\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 294, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 298, i32 12 }
@___asan_gen_.30 = private unnamed_addr constant [14 x i8] c"s5p_cec_match\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 286, i32 34 }
@___asan_gen_.33 = private unnamed_addr constant [15 x i8] c"s5p_cec_pm_ops\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 279, i32 32 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 182, i32 60 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 205, i32 31 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 210, i32 8 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"s5p_cec_adap_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 171, i32 34 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 239, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 91, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 95, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 98, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 101, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 109, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 113, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 115, i32 5 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 134, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.100 = private constant [44 x i8] c"../drivers/media/cec/platform/s5p/s5p_cec.c\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 153, i32 3 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_debug234, ptr @__UNIQUE_ID_debugtype233, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_file248, ptr @__UNIQUE_ID_license249, ptr @__exitcall_s5p_cec_pdrv_exit, ptr @__initcall__kmod_s5p_cec__246_304_s5p_cec_pdrv_init6, ptr @__param_debug, ptr @s5p_cec_irq_handler_thread._entry, ptr @s5p_cec_irq_handler_thread._entry_ptr, ptr @s5p_cec_pdrv_exit, ptr @debug, ptr @s5p_cec_pdrv, ptr @.str, ptr @s5p_cec_match, ptr @s5p_cec_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @s5p_cec_adap_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_cec_pdrv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_cec_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_cec_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_cec_adap_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_cec_irq_handler_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_cec_pdrv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @s5p_cec_pdrv, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @s5p_cec_pdrv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @s5p_cec_pdrv) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_cec_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef null) #6
  %tobool.i.not = icmp eq ptr %call.i, null
  %call3 = tail call ptr @cec_notifier_parse_hdmi_phandle(ptr noundef %dev1) #6
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i120 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 184, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i120, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %dev10 = getelementptr inbounds %struct.s5p_cec_dev, ptr %call.i120, i32 0, i32 2
  %3 = ptrtoint ptr %dev10 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %dev10, align 8
  %call11 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %irq = getelementptr inbounds %struct.s5p_cec_dev, ptr %call.i120, i32 0, i32 6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call11, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %if.end15

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %call17 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call11, ptr noundef nonnull @s5p_cec_irq_handler, ptr noundef nonnull @s5p_cec_irq_handler_thread, i32 noundef 0, ptr noundef %6, ptr noundef nonnull %call.i120) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %call21 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.2) #6
  %clk = getelementptr inbounds %struct.s5p_cec_dev, ptr %call.i120, i32 0, i32 1
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call21, ptr %clk, align 4
  %cmp.i121 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i121, label %if.then24, label %if.end27

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call21 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end20
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %call29 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %10, ptr noundef nonnull @.str.3) #6
  %pmu = getelementptr inbounds %struct.s5p_cec_dev, ptr %call.i120, i32 0, i32 4
  %11 = ptrtoint ptr %pmu to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call29, ptr %pmu, align 8
  %cmp.i122 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i122, label %if.end27.cleanup_crit_edge, label %if.end33

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end33:                                         ; preds = %if.end27
  %call34 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %reg = getelementptr inbounds %struct.s5p_cec_dev, ptr %call.i120, i32 0, i32 7
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call34, ptr %reg, align 4
  %cmp.i123 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i123, label %if.then37, label %if.end40

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %call34 to i32
  br label %cleanup

if.end40:                                         ; preds = %if.end33
  %or42 = select i1 %tobool.i.not, i32 286, i32 350
  %call43 = tail call ptr @cec_allocate_adapter(ptr noundef nonnull @s5p_cec_adap_ops, ptr noundef nonnull %call.i120, ptr noundef nonnull @.str, i32 noundef %or42, i8 noundef zeroext 1) #6
  %14 = ptrtoint ptr %call.i120 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call43, ptr %call.i120, align 8
  %cmp.i.i.not = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  %15 = ptrtoint ptr %call43 to i32
  br i1 %cmp.i.i.not, label %if.end40.cleanup_crit_edge, label %if.end48

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end48:                                         ; preds = %if.end40
  %call50 = tail call ptr @cec_notifier_cec_adap_register(ptr noundef %call3, ptr noundef null, ptr noundef %call43) #6
  %notifier = getelementptr inbounds %struct.s5p_cec_dev, ptr %call.i120, i32 0, i32 5
  %16 = ptrtoint ptr %notifier to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call50, ptr %notifier, align 4
  %tobool52.not = icmp eq ptr %call50, null
  br i1 %tobool52.not, label %if.end48.err_delete_adapter_crit_edge, label %if.end54

if.end48.err_delete_adapter_crit_edge:            ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_delete_adapter

if.end54:                                         ; preds = %if.end48
  %17 = ptrtoint ptr %call.i120 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i120, align 8
  %call57 = tail call i32 @cec_register_adapter(ptr noundef %18, ptr noundef %dev1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %err_notifier

if.end60:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i120, ptr %driver_data.i.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev1) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s5p_cec_probe.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s5p_cec_probe, %if.then66)) #6
          to label %cleanup [label %if.then66], !srcloc !81

if.then66:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s5p_cec_probe.__UNIQUE_ID_ddebug245, ptr noundef %dev1, ptr noundef nonnull @.str.7) #6
  br label %cleanup

err_notifier:                                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %notifier to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %notifier, align 4
  %22 = ptrtoint ptr %call.i120 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i120, align 8
  tail call void @cec_notifier_cec_adap_unregister(ptr noundef %21, ptr noundef %23) #6
  br label %err_delete_adapter

err_delete_adapter:                               ; preds = %err_notifier, %if.end48.err_delete_adapter_crit_edge
  %ret.0 = phi i32 [ %call57, %err_notifier ], [ -12, %if.end48.err_delete_adapter_crit_edge ]
  %24 = ptrtoint ptr %call.i120 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call.i120, align 8
  tail call void @cec_delete_adapter(ptr noundef %25) #6
  br label %cleanup

cleanup:                                          ; preds = %err_delete_adapter, %if.then66, %if.end60, %if.end40.cleanup_crit_edge, %if.then37, %if.end27.cleanup_crit_edge, %if.then24, %if.end15.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %8, %if.then24 ], [ %13, %if.then37 ], [ %ret.0, %err_delete_adapter ], [ -12, %if.end.cleanup_crit_edge ], [ %call11, %if.end9.cleanup_crit_edge ], [ %call17, %if.end15.cleanup_crit_edge ], [ -517, %if.end27.cleanup_crit_edge ], [ %15, %if.end40.cleanup_crit_edge ], [ 0, %if.then66 ], [ 0, %if.end60 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_cec_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %notifier = getelementptr inbounds %struct.s5p_cec_dev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %notifier to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %notifier, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  tail call void @cec_notifier_cec_adap_unregister(ptr noundef %3, ptr noundef %5) #6
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  tail call void @cec_unregister_adapter(ptr noundef %7) #6
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cec_notifier_parse_hdmi_phandle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_cec_irq_handler(i32 noundef %irq, ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @s5p_cec_get_status(ptr noundef %priv) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s5p_cec_irq_handler.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s5p_cec_irq_handler, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !81

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.s5p_cec_dev, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s5p_cec_irq_handler.__UNIQUE_ID_ddebug237, ptr noundef %1, ptr noundef nonnull @.str.9) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and = and i32 %call, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.end.if.end68_crit_edge, label %if.then5

do.end.if.end68_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

if.then5:                                         ; preds = %do.end
  %and6 = and i32 %call, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else, label %do.body9

do.body9:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s5p_cec_irq_handler.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s5p_cec_irq_handler, %if.then21)) #6
          to label %if.end67 [label %if.then21], !srcloc !81

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  %dev22 = getelementptr inbounds %struct.s5p_cec_dev, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev22, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s5p_cec_irq_handler.__UNIQUE_ID_ddebug238, ptr noundef %3, ptr noundef nonnull @.str.10) #6
  br label %if.end67

if.else:                                          ; preds = %if.then5
  %and26 = and i32 %call, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %do.body48, label %do.body29

do.body29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s5p_cec_irq_handler.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s5p_cec_irq_handler, %if.then41)) #6
          to label %if.end67 [label %if.then41], !srcloc !81

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #8
  %dev42 = getelementptr inbounds %struct.s5p_cec_dev, ptr %priv, i32 0, i32 2
  %4 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev42, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s5p_cec_irq_handler.__UNIQUE_ID_ddebug239, ptr noundef %5, ptr noundef nonnull @.str.11) #6
  br label %if.end67

do.body48:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s5p_cec_irq_handler.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s5p_cec_irq_handler, %if.then60)) #6
          to label %if.end67 [label %if.then60], !srcloc !81

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #8
  %dev61 = getelementptr inbounds %struct.s5p_cec_dev, ptr %priv, i32 0, i32 2
  %6 = ptrtoint ptr %dev61 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev61, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s5p_cec_irq_handler.__UNIQUE_ID_ddebug240, ptr noundef %7, ptr noundef nonnull @.str.12) #6
  br label %if.end67

if.end67:                                         ; preds = %if.then60, %do.body48, %if.then41, %do.body29, %if.then21, %do.body9
  %.sink = phi i32 [ 3, %do.body9 ], [ 3, %if.then21 ], [ 4, %do.body29 ], [ 4, %if.then41 ], [ 2, %do.body48 ], [ 2, %if.then60 ]
  %tx46 = getelementptr inbounds %struct.s5p_cec_dev, ptr %priv, i32 0, i32 9
  %8 = ptrtoint ptr %tx46 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink, ptr %tx46, align 4
  tail call void @s5p_clr_pending_tx(ptr noundef %priv) #6
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %do.end.if.end68_crit_edge
  %and69 = and i32 %call, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.end68.if.end137_crit_edge, label %if.then71

if.end68.if.end137_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end137

if.then71:                                        ; preds = %if.end68
  %and72 = and i32 %call, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %do.body93, label %do.body75

do.body75:                                        ; preds = %if.then71
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s5p_cec_irq_handler.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s5p_cec_irq_handler, %if.then87)) #6
          to label %do.end91 [label %if.then87], !srcloc !81

if.then87:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #8
  %dev88 = getelementptr inbounds %struct.s5p_cec_dev, ptr %priv, i32 0, i32 2
  %9 = ptrtoint ptr %dev88 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev88, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s5p_cec_irq_handler.__UNIQUE_ID_ddebug241, ptr noundef %10, ptr noundef nonnull @.str.13) #6
  br label %do.end91

do.end91:                                         ; preds = %if.then87, %do.body75
  tail call void @s5p_cec_rx_reset(ptr noundef %priv) #6
  br label %if.end136

do.body93:                                        ; preds = %if.then71
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s5p_cec_irq_handler.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s5p_cec_irq_handler, %if.then105)) #6
          to label %do.end109 [label %if.then105], !srcloc !81

if.then105:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #8
  %dev106 = getelementptr inbounds %struct.s5p_cec_dev, ptr %priv, i32 0, i32 2
  %11 = ptrtoint ptr %dev106 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev106, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s5p_cec_irq_handler.__UNIQUE_ID_ddebug242, ptr noundef %12, ptr noundef nonnull @.str.14) #6
  br label %do.end109

do.end109:                                        ; preds = %if.then105, %do.body93
  %rx = getelementptr inbounds %struct.s5p_cec_dev, ptr %priv, i32 0, i32 8
  %13 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not = icmp eq i32 %14, 0
  br i1 %cmp.not, label %do.end109.if.end128_crit_edge, label %do.body111

do.end109.if.end128_crit_edge:                    ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end128

do.body111:                                       ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s5p_cec_irq_handler.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s5p_cec_irq_handler, %if.then123)) #6
          to label %if.end128 [label %if.then123], !srcloc !81

if.then123:                                       ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #8
  %dev124 = getelementptr inbounds %struct.s5p_cec_dev, ptr %priv, i32 0, i32 2
  %15 = ptrtoint ptr %dev124 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev124, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s5p_cec_irq_handler.__UNIQUE_ID_ddebug243, ptr noundef %16, ptr noundef nonnull @.str.15) #6
  br label %if.end128

if.end128:                                        ; preds = %if.then123, %do.body111, %do.end109.if.end128_crit_edge
  %17 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %rx, align 8
  %shr = lshr i32 %call, 24
  %len = getelementptr inbounds %struct.s5p_cec_dev, ptr %priv, i32 0, i32 10, i32 2
  %18 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shr, ptr %len, align 8
  %rx_status = getelementptr inbounds %struct.s5p_cec_dev, ptr %priv, i32 0, i32 10, i32 8
  %19 = ptrtoint ptr %rx_status to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %rx_status, align 1
  %msg134 = getelementptr inbounds %struct.s5p_cec_dev, ptr %priv, i32 0, i32 10, i32 6
  tail call void @s5p_cec_get_rx_buf(ptr noundef %priv, i32 noundef %shr, ptr noundef %msg134) #6
  %20 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %rx, align 8
  br label %if.end136

if.end136:                                        ; preds = %if.end128, %do.end91
  tail call void @s5p_cec_enable_rx(ptr noundef %priv) #6
  tail call void @s5p_clr_pending_rx(ptr noundef %priv) #6
  br label %if.end137

if.end137:                                        ; preds = %if.end136, %if.end68.if.end137_crit_edge
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_cec_irq_handler_thread(i32 noundef %irq, ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s5p_cec_irq_handler_thread.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s5p_cec_irq_handler_thread, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !81

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.s5p_cec_dev, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @s5p_cec_irq_handler_thread.__UNIQUE_ID_ddebug244, ptr noundef %1, ptr noundef nonnull @.str.17) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tx = getelementptr inbounds %struct.s5p_cec_dev, ptr %priv, i32 0, i32 9
  %2 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb4
    i32 4, label %sw.bb7
    i32 1, label %do.end13
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 8
  %call.i = tail call i64 @ktime_get() #6
  tail call void @cec_transmit_done_ts(ptr noundef %6, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i64 noundef %call.i) #6
  %7 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %tx, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 8
  %call.i32 = tail call i64 @ktime_get() #6
  tail call void @cec_transmit_done_ts(ptr noundef %9, i8 noundef zeroext 36, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 0, i64 noundef %call.i32) #6
  %10 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %tx, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 8
  %call.i33 = tail call i64 @ktime_get() #6
  tail call void @cec_transmit_done_ts(ptr noundef %12, i8 noundef zeroext 48, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 1, i64 noundef %call.i33) #6
  %13 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %tx, align 4
  br label %sw.epilog

do.end13:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev14 = getelementptr inbounds %struct.s5p_cec_dev, ptr %priv, i32 0, i32 2
  %14 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev14, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.18) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end13, %sw.bb7, %sw.bb4, %sw.bb, %do.end.sw.epilog_crit_edge
  %rx = getelementptr inbounds %struct.s5p_cec_dev, ptr %priv, i32 0, i32 8
  %16 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cond = icmp eq i32 %17, 2
  br i1 %cond, label %sw.bb15, label %sw.epilog.sw.epilog19_crit_edge

sw.epilog.sw.epilog19_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog19

sw.bb15:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv, align 8
  %msg = getelementptr inbounds %struct.s5p_cec_dev, ptr %priv, i32 0, i32 10
  %call.i34 = tail call i64 @ktime_get() #6
  tail call void @cec_received_msg_ts(ptr noundef %19, ptr noundef %msg, i64 noundef %call.i34) #6
  %20 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %rx, align 8
  br label %sw.epilog19

sw.epilog19:                                      ; preds = %sw.bb15, %sw.epilog.sw.epilog19_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cec_allocate_adapter(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cec_notifier_cec_adap_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cec_register_adapter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_notifier_cec_adap_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_delete_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_cec_get_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_clr_pending_tx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_cec_rx_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_cec_enable_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_cec_get_rx_buf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_clr_pending_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_transmit_done_ts(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_received_msg_ts(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_cec_adap_enable(ptr nocapture noundef readonly %adap, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %dev = getelementptr inbounds %struct.s5p_cec_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %if.then
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #6
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #6, !srcloc !83
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !84
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @s5p_cec_reset(ptr noundef %1) #6
  tail call void @s5p_cec_set_divider(ptr noundef %1) #6
  tail call void @s5p_cec_threshold(ptr noundef %1) #6
  tail call void @s5p_cec_unmask_tx_interrupts(ptr noundef %1) #6
  tail call void @s5p_cec_unmask_rx_interrupts(ptr noundef %1) #6
  tail call void @s5p_cec_enable_rx(ptr noundef %1) #6
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @s5p_cec_mask_tx_interrupts(ptr noundef %1) #6
  tail call void @s5p_cec_mask_rx_interrupts(ptr noundef %1) #6
  %dev3 = getelementptr inbounds %struct.s5p_cec_dev, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev3, align 8
  %call.i17 = tail call i32 @__pm_runtime_idle(ptr noundef %6, i32 noundef 5) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else ], [ 0, %if.end ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_cec_adap_log_addr(ptr nocapture noundef readonly %adap, i8 noundef zeroext %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %conv = zext i8 %addr to i32
  tail call void @s5p_cec_set_addr(ptr noundef %1, i32 noundef %conv) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_cec_adap_transmit(ptr nocapture noundef readonly %adap, i8 noundef zeroext %attempts, i32 noundef %signal_free_time, ptr noundef %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %len = getelementptr inbounds %struct.cec_msg, ptr %msg, i32 0, i32 2
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 8
  %sub = add i8 %attempts, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %attempts)
  %cmp.inv = icmp ugt i8 %attempts, 1
  %cond = select i1 %cmp.inv, i8 %sub, i8 1
  %msg1 = getelementptr inbounds %struct.cec_msg, ptr %msg, i32 0, i32 6
  tail call void @s5p_cec_copy_packet(ptr noundef %1, ptr noundef %msg1, i32 noundef %3, i8 noundef zeroext %cond) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_cec_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_cec_set_divider(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_cec_threshold(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_cec_unmask_tx_interrupts(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_cec_unmask_rx_interrupts(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_cec_mask_tx_interrupts(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_cec_mask_rx_interrupts(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_cec_set_addr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_cec_copy_packet(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_unregister_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_cec_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.s5p_cec_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_cec_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.s5p_cec_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit.thread_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit.thread

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  %4 = tail call i32 @llvm.smin.i32(i32 %retval.0.i, i32 0)
  br label %clk_prepare_enable.exit.thread

clk_prepare_enable.exit.thread:                   ; preds = %clk_prepare_enable.exit, %if.end.i.clk_prepare_enable.exit.thread_crit_edge
  %5 = phi i32 [ 0, %if.end.i.clk_prepare_enable.exit.thread_crit_edge ], [ %4, %clk_prepare_enable.exit ]
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !36, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !60, !62, !63, !64, !65, !66, !68, !70}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/cec/platform/s5p/s5p_cec.c", i32 33, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype233, !1, !"__UNIQUE_ID_debugtype233", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug234, !4, !"__UNIQUE_ID_debug234", i1 false, i1 false}
!4 = !{!"../drivers/media/cec/platform/s5p/s5p_cec.c", i32 34, i32 1}
!5 = !{ptr @__initcall__kmod_s5p_cec__246_304_s5p_cec_pdrv_init6, !6, !"__initcall__kmod_s5p_cec__246_304_s5p_cec_pdrv_init6", i1 false, i1 false}
!6 = !{!"../drivers/media/cec/platform/s5p/s5p_cec.c", i32 304, i32 1}
!7 = !{ptr @__exitcall_s5p_cec_pdrv_exit, !6, !"__exitcall_s5p_cec_pdrv_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author247, !9, !"__UNIQUE_ID_author247", i1 false, i1 false}
!9 = !{!"../drivers/media/cec/platform/s5p/s5p_cec.c", i32 306, i32 1}
!10 = !{ptr @__UNIQUE_ID_file248, !11, !"__UNIQUE_ID_file248", i1 false, i1 false}
!11 = !{!"../drivers/media/cec/platform/s5p/s5p_cec.c", i32 307, i32 1}
!12 = !{ptr @__UNIQUE_ID_license249, !11, !"__UNIQUE_ID_license249", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_description250, !14, !"__UNIQUE_ID_description250", i1 false, i1 false}
!14 = !{!"../drivers/media/cec/platform/s5p/s5p_cec.c", i32 308, i32 1}
!15 = !{ptr @debug, !16, !"debug", i1 false, i1 false}
!16 = !{!"../drivers/media/cec/platform/s5p/s5p_cec.c", i32 32, i32 12}
!17 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/cec/platform/s5p/s5p_cec.c", i32 298, i32 12}
!20 = !{ptr @s5p_cec_pdrv, !21, !"s5p_cec_pdrv", i1 false, i1 false}
!21 = !{!"../drivers/media/cec/platform/s5p/s5p_cec.c", i32 294, i32 31}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/cec/platform/s5p/s5p_cec.c", i32 182, i32 60}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/cec/platform/s5p/s5p_cec.c", i32 205, i32 31}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/cec/platform/s5p/s5p_cec.c", i32 210, i32 8}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/cec/platform/s5p/s5p_cec.c", i32 239, i32 2}
!30 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @s5p_cec_probe.__UNIQUE_ID_ddebug245, !29, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/cec/platform/s5p/s5p_cec.c", i32 91, i32 2}
!36 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @s5p_cec_irq_handler.__UNIQUE_ID_ddebug237, !35, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/cec/platform/s5p/s5p_cec.c", i32 95, i32 4}
!40 = !{ptr @s5p_cec_irq_handler.__UNIQUE_ID_ddebug238, !39, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/cec/platform/s5p/s5p_cec.c", i32 98, i32 4}
!43 = !{ptr @s5p_cec_irq_handler.__UNIQUE_ID_ddebug239, !42, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/cec/platform/s5p/s5p_cec.c", i32 101, i32 4}
!46 = !{ptr @s5p_cec_irq_handler.__UNIQUE_ID_ddebug240, !45, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!47 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/cec/platform/s5p/s5p_cec.c", i32 109, i32 4}
!49 = !{ptr @s5p_cec_irq_handler.__UNIQUE_ID_ddebug241, !48, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/cec/platform/s5p/s5p_cec.c", i32 113, i32 4}
!52 = !{ptr @s5p_cec_irq_handler.__UNIQUE_ID_ddebug242, !51, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/cec/platform/s5p/s5p_cec.c", i32 115, i32 5}
!55 = !{ptr @s5p_cec_irq_handler.__UNIQUE_ID_ddebug243, !54, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!56 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/cec/platform/s5p/s5p_cec.c", i32 134, i32 2}
!58 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @s5p_cec_irq_handler_thread.__UNIQUE_ID_ddebug244, !57, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!60 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/cec/platform/s5p/s5p_cec.c", i32 153, i32 3}
!62 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @s5p_cec_irq_handler_thread._entry, !61, !"_entry", i1 false, i1 false}
!65 = !{ptr @s5p_cec_irq_handler_thread._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @s5p_cec_adap_ops, !67, !"s5p_cec_adap_ops", i1 false, i1 false}
!67 = !{!"../drivers/media/cec/platform/s5p/s5p_cec.c", i32 171, i32 34}
!68 = !{ptr @s5p_cec_match, !69, !"s5p_cec_match", i1 false, i1 false}
!69 = !{!"../drivers/media/cec/platform/s5p/s5p_cec.c", i32 286, i32 34}
!70 = !{ptr @s5p_cec_pm_ops, !71, !"s5p_cec_pm_ops", i1 false, i1 false}
!71 = !{!"../drivers/media/cec/platform/s5p/s5p_cec.c", i32 279, i32 32}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{i64 2148727126, i64 2148727131, i64 2148727144, i64 2148727188, i64 2148727222, i64 2148727243}
!82 = !{i64 2148244730}
!83 = !{i64 729553, i64 729578, i64 729600, i64 729616, i64 729628, i64 729648, i64 729672, i64 729688, i64 729700}
!84 = !{i64 2148244918}
