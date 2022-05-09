; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/stmpe-adc.c_pt.bc'
source_filename = "../drivers/iio/adc/stmpe-adc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.stmpe_adc = type { ptr, ptr, ptr, %struct.mutex, [9 x %struct.iio_chan_spec], %struct.completion, i8, i32 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.43, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.43 = type { i8, i8, i8, i8, i8, i32 }
%struct.stmpe = type { ptr, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, i32, [2 x i8], [2 x i8], ptr, i8, i8, i8, i8 }

@__initcall__kmod_stmpe_adc__187_355_stmpe_adc_driver_init6 = internal global ptr @stmpe_adc_driver_init, section ".initcall6.init", align 4
@stmpe_adc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stmpe_adc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stmpe_adc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_stmpe_adc_driver_exit = internal global ptr @stmpe_adc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author188 = internal constant [57 x i8] c"stmpe_adc.author=Stefan Agner <stefan.agner@toradex.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description189 = internal constant [42 x i8] c"stmpe_adc.description=STMPEXXX ADC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file190 = internal constant [41 x i8] c"stmpe_adc.file=drivers/iio/adc/stmpe-adc\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [25 x i8] c"stmpe_adc.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias192 = internal constant [35 x i8] c"stmpe_adc.alias=platform:stmpe-adc\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"stmpe-adc\00", [22 x i8] zeroinitializer }, align 32
@stmpe_adc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr @stmpe_adc_resume, ptr null, ptr @stmpe_adc_resume, ptr null, ptr @stmpe_adc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"STMPE_ADC\00", [22 x i8] zeroinitializer }, align 32
@stmpe_adc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 271, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed allocating iio device\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stmpe_adc_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/iio/adc/stmpe-adc.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stmpe_adc_probe._entry_ptr = internal global ptr @stmpe_adc_probe._entry, section ".printk_index", align 4
@stmpe_adc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&info->lock\00", [20 x i8] zeroinitializer }, align 32
@stmpe_adc_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 284, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed requesting irq, irq = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@stmpe_adc_probe._entry_ptr.10 = internal global ptr @stmpe_adc_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"STMPE_TEMP_SENS\00", [16 x i8] zeroinitializer }, align 32
@stmpe_adc_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 295, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"failed requesting irq for temp sensor, irq = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@stmpe_adc_probe._entry_ptr.15 = internal global ptr @stmpe_adc_probe._entry.12, section ".printk_index", align 4
@stmpe_adc_iio_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @stmpe_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@stmpe_adc_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 309, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no device tree node found\0A\00", [37 x i8] zeroinitializer }, align 32
@stmpe_adc_probe._entry_ptr.18 = internal global ptr @stmpe_adc_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"st,norequest-mask\00", [46 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@stmpe_adc_init_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 236, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Could not enable clock for ADC\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stmpe_adc_init_hw\00", [46 x i8] zeroinitializer }, align 32
@stmpe_adc_init_hw._entry_ptr = internal global ptr @stmpe_adc_init_hw._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 9]
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"stmpe_adc_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 348, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 351, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"stmpe_adc_pm_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 346, i32 8 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 265, i32 42 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 271, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 276, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 283, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 288, i32 43 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 294, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant [19 x i8] c"stmpe_adc_iio_info\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 208, i32 30 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 309, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 311, i32 27 }
@___asan_gen_.90 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 87, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private constant [31 x i8] c"../drivers/iio/adc/stmpe-adc.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 236, i32 3 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_alias192, ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__exitcall_stmpe_adc_driver_exit, ptr @__initcall__kmod_stmpe_adc__187_355_stmpe_adc_driver_init6, ptr @stmpe_adc_driver_exit, ptr @stmpe_adc_init_hw._entry, ptr @stmpe_adc_init_hw._entry_ptr, ptr @stmpe_adc_probe._entry, ptr @stmpe_adc_probe._entry.12, ptr @stmpe_adc_probe._entry.16, ptr @stmpe_adc_probe._entry.8, ptr @stmpe_adc_probe._entry_ptr, ptr @stmpe_adc_probe._entry_ptr.10, ptr @stmpe_adc_probe._entry_ptr.15, ptr @stmpe_adc_probe._entry_ptr.18, ptr @stmpe_adc_driver, ptr @.str, ptr @stmpe_adc_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @stmpe_adc_probe.__key, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @stmpe_adc_iio_info, ptr @.str.17, ptr @.str.19, ptr @init_completion.__key, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmpe_adc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmpe_adc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmpe_adc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmpe_adc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmpe_adc_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmpe_adc_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmpe_adc_iio_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmpe_adc_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmpe_adc_init_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stmpe_adc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stmpe_adc_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stmpe_adc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @stmpe_adc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmpe_adc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %norequest_mask = alloca i32, align 4
  %bits = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %norequest_mask) #5
  %0 = ptrtoint ptr %norequest_mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %norequest_mask, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits) #5
  %call = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call1 = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 960) #5
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.stmpe_adc, ptr %2, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @stmpe_adc_probe.__key) #5
  %completion = getelementptr inbounds %struct.stmpe_adc, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.stmpe_adc, ptr %2, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @init_completion.__key) #5
  %call10 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call, ptr noundef null, ptr noundef nonnull @stmpe_adc_isr, i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef %2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %do.end15, label %if.end17

do.end15:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call) #8
  br label %cleanup

if.end17:                                         ; preds = %if.end4
  %call18 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call18)
  %cmp19 = icmp sgt i32 %call18, -1
  br i1 %cmp19, label %if.then20, label %if.end17.if.end30_crit_edge

if.end17.if.end30_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then20:                                        ; preds = %if.end17
  %call22 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call18, ptr noundef null, ptr noundef nonnull @stmpe_adc_isr, i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef %2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %do.end27, label %if.then20.if.end30_crit_edge

if.then20.if.end30_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

do.end27:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call18) #8
  br label %if.end30

if.end30:                                         ; preds = %do.end27, %if.then20.if.end30_crit_edge, %if.end17.if.end30_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1, ptr %driver_data.i.i, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end30.dev_name.exit_crit_edge

if.end30.dev_name.exit_crit_edge:                 ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end30.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %8, %if.end.i ], [ %6, %if.end30.dev_name.exit_crit_edge ]
  %name = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 15
  %9 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %retval.0.i, ptr %name, align 8
  %info33 = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 17
  %10 = ptrtoint ptr %info33 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @stmpe_adc_iio_info, ptr %info33, align 8
  %11 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %call1, align 8
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i, align 4
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %2, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  %tobool37.not = icmp eq ptr %18, null
  br i1 %tobool37.not, label %do.end41, label %dev_name.exit.if.end43_crit_edge

dev_name.exit.if.end43_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

do.end41:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #8
  br label %if.end43

if.end43:                                         ; preds = %do.end41, %dev_name.exit.if.end43_crit_edge
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %18, ptr noundef nonnull @.str.19, ptr noundef nonnull %norequest_mask, i32 noundef 1, i32 noundef 0) #5
  %19 = ptrtoint ptr %norequest_mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %norequest_mask, align 4
  %21 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %bits, align 4
  %call45 = call i32 @_find_next_zero_bit_be(ptr noundef nonnull %bits, i32 noundef 8, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call45)
  %cmp46127 = icmp slt i32 %call45, 8
  br i1 %cmp46127, label %if.end43.for.body_crit_edge, label %if.end43.for.end_crit_edge

if.end43.for.end_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end43.for.body_crit_edge:                      ; preds = %if.end43
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end43.for.body_crit_edge
  %i.0129 = phi i32 [ %call47, %for.body.for.body_crit_edge ], [ %call45, %if.end43.for.body_crit_edge ]
  %num_chan.0128 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end43.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.stmpe_adc, ptr %2, i32 0, i32 4, i32 %num_chan.0128
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %arrayidx, align 4
  %info_mask_separate.i = getelementptr %struct.stmpe_adc, ptr %2, i32 0, i32 4, i32 %num_chan.0128, i32 6
  %23 = ptrtoint ptr %info_mask_separate.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %info_mask_separate.i, align 4
  %info_mask_shared_by_type.i = getelementptr %struct.stmpe_adc, ptr %2, i32 0, i32 4, i32 %num_chan.0128, i32 8
  %24 = ptrtoint ptr %info_mask_shared_by_type.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4, ptr %info_mask_shared_by_type.i, align 4
  %indexed.i = getelementptr %struct.stmpe_adc, ptr %2, i32 0, i32 4, i32 %num_chan.0128, i32 19
  %25 = ptrtoint ptr %indexed.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load.i = load i8, ptr %indexed.i, align 4
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %indexed.i, align 4
  %channel.i = getelementptr %struct.stmpe_adc, ptr %2, i32 0, i32 4, i32 %num_chan.0128, i32 1
  %26 = ptrtoint ptr %channel.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %i.0129, ptr %channel.i, align 4
  %inc = add i32 %num_chan.0128, 1
  %add = add nsw i32 %i.0129, 1
  %call47 = call i32 @_find_next_zero_bit_be(ptr noundef nonnull %bits, i32 noundef 8, i32 noundef %add) #5
  %cmp46 = icmp slt i32 %call47, 8
  br i1 %cmp46, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end43.for.end_crit_edge
  %num_chan.0.lcssa = phi i32 [ 0, %if.end43.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %i.0.lcssa = phi i32 [ %call45, %if.end43.for.end_crit_edge ], [ %call47, %for.body.for.end_crit_edge ]
  %stmpe_adc_iio_channels48 = getelementptr inbounds %struct.stmpe_adc, ptr %2, i32 0, i32 4
  %arrayidx49 = getelementptr %struct.stmpe_adc, ptr %2, i32 0, i32 4, i32 %num_chan.0.lcssa
  %27 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 9, ptr %arrayidx49, align 4
  %info_mask_separate.i122 = getelementptr %struct.stmpe_adc, ptr %2, i32 0, i32 4, i32 %num_chan.0.lcssa, i32 6
  %28 = ptrtoint ptr %info_mask_separate.i122 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %info_mask_separate.i122, align 4
  %indexed.i123 = getelementptr %struct.stmpe_adc, ptr %2, i32 0, i32 4, i32 %num_chan.0.lcssa, i32 19
  %29 = ptrtoint ptr %indexed.i123 to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load.i124 = load i8, ptr %indexed.i123, align 4
  %bf.set.i125 = or i8 %bf.load.i124, 64
  store i8 %bf.set.i125, ptr %indexed.i123, align 4
  %channel.i126 = getelementptr %struct.stmpe_adc, ptr %2, i32 0, i32 4, i32 %num_chan.0.lcssa, i32 1
  %30 = ptrtoint ptr %channel.i126 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %i.0.lcssa, ptr %channel.i126, align 4
  %inc50 = add i32 %num_chan.0.lcssa, 1
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 13
  %31 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %stmpe_adc_iio_channels48, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 14
  %32 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %inc50, ptr %num_channels, align 4
  %call52 = call fastcc i32 @stmpe_adc_init_hw(ptr noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end55:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %2, align 4
  %35 = ptrtoint ptr %norequest_mask to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %norequest_mask, align 4
  %37 = trunc i32 %36 to i8
  %conv = xor i8 %37, -1
  %call57 = call i32 @stmpe_reg_write(ptr noundef %34, i8 noundef zeroext 14, i8 noundef zeroext %conv) #5
  %38 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %2, align 4
  %40 = ptrtoint ptr %norequest_mask to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %norequest_mask, align 4
  %42 = trunc i32 %41 to i8
  %conv61 = xor i8 %42, -1
  %call62 = call i32 @stmpe_reg_write(ptr noundef %39, i8 noundef zeroext 15, i8 noundef zeroext %conv61) #5
  %call64 = call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call1, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %for.end.cleanup_crit_edge, %do.end15, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %do.end15 ], [ %call64, %if.end55 ], [ -12, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ %call52, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %norequest_mask) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmpe_adc_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data, align 2, !annotation !67
  %channel = getelementptr inbounds %struct.stmpe_adc, ptr %dev_id, i32 0, i32 6
  %1 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %2)
  %cmp = icmp ult i8 %2, 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_id, align 4
  %call = tail call i32 @stmpe_reg_read(ptr noundef %4, i8 noundef zeroext 15) #5
  %5 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %channel, align 4
  %conv3 = zext i8 %6 to i32
  %shl = shl nuw i32 1, %conv3
  %and = and i32 %call, 255
  %and4 = and i32 %and, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %if.then.cleanup25_crit_edge, label %if.end

if.then.cleanup25_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup25

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_id, align 4
  %mul = shl i8 %6, 1
  %add = add i8 %mul, 48
  %call10 = call i32 @stmpe_block_read(ptr noundef %8, i8 noundef zeroext %add, i8 noundef zeroext 2, ptr noundef nonnull %data) #5
  %9 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_id, align 4
  %conv12 = trunc i32 %call to i8
  %call13 = call i32 @stmpe_reg_write(ptr noundef %10, i8 noundef zeroext 15, i8 noundef zeroext %conv12) #5
  br label %if.end23

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %2)
  %cmp16 = icmp eq i8 %2, 8
  br i1 %cmp16, label %if.then18, label %if.else.cleanup25_crit_edge

if.else.cleanup25_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup25

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_id, align 4
  %call20 = call i32 @stmpe_block_read(ptr noundef %12, i8 noundef zeroext 97, i8 noundef zeroext 2, ptr noundef nonnull %data) #5
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.end
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %data, align 2
  %conv24 = zext i16 %14 to i32
  %value = getelementptr inbounds %struct.stmpe_adc, ptr %dev_id, i32 0, i32 7
  %15 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv24, ptr %value, align 4
  %completion = getelementptr inbounds %struct.stmpe_adc, ptr %dev_id, i32 0, i32 5
  call void @complete(ptr noundef %completion) #5
  br label %cleanup25

cleanup25:                                        ; preds = %if.end23, %if.else.cleanup25_crit_edge, %if.then.cleanup25_crit_edge
  %retval.1 = phi i32 [ 1, %if.end23 ], [ 0, %if.else.cleanup25_crit_edge ], [ 0, %if.then.cleanup25_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #5
  ret i32 %retval.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stmpe_adc_init_hw(ptr nocapture noundef readonly %adc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adc, align 4
  %call = tail call i32 @stmpe_enable(ptr noundef %1, i32 noundef 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.stmpe, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.21) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @stmpe811_adc_common_init(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i32 @stmpe_disable(ptr noundef %1, i32 noundef 8) #5
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = tail call i32 @stmpe_reg_write(ptr noundef %1, i8 noundef zeroext 99, i8 noundef zeroext 0) #5
  %call8 = tail call i32 @stmpe_reg_write(ptr noundef %1, i8 noundef zeroext 100, i8 noundef zeroext 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call2, %if.then4 ], [ 0, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmpe_reg_write(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmpe_reg_read(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmpe_block_read(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmpe_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge26
    i32 2, label %sw.bb5
  ]

entry.sw.bb_crit_edge26:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge26
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %4, label %sw.bb.cleanup_crit_edge [
    i32 0, label %sw.bb1
    i32 9, label %sw.bb3
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  %lock.i = getelementptr inbounds %struct.stmpe_adc, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #5
  %completion.i = getelementptr inbounds %struct.stmpe_adc, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %completion.i, align 4
  %channel.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %7 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %channel.i, align 4
  %conv.i = trunc i32 %8 to i8
  %channel1.i = getelementptr inbounds %struct.stmpe_adc, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %channel1.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv.i, ptr %channel1.i, align 4
  %conv3.i = and i32 %8, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %conv3.i)
  %cmp.i = icmp ugt i32 %conv3.i, 7
  br i1 %cmp.i, label %sw.bb1.sw.epilog_crit_edge, label %if.end.i

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb1
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %shl.i = shl nuw nsw i32 1, %conv3.i
  %conv8.i = trunc i32 %shl.i to i8
  %call.i = tail call i32 @stmpe_reg_write(ptr noundef %11, i8 noundef zeroext 34, i8 noundef zeroext %conv8.i) #5
  %call11.i = tail call i32 @wait_for_completion_timeout(ptr noundef %completion.i, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 1
  br i1 %cmp12.i, label %if.then14.i, label %if.end23.i

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %14 = ptrtoint ptr %channel1.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %channel1.i, align 4
  %conv17.i = zext i8 %15 to i32
  %shl18.i = shl nuw i32 1, %conv17.i
  %conv20.i = trunc i32 %shl18.i to i8
  %call21.i = tail call i32 @stmpe_reg_write(ptr noundef %13, i8 noundef zeroext 15, i8 noundef zeroext %conv20.i) #5
  br label %sw.epilog

if.end23.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %value.i = getelementptr inbounds %struct.stmpe_adc, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %value.i, align 4
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %val, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %sw.bb
  %lock.i16 = getelementptr inbounds %struct.stmpe_adc, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i16, i32 noundef 0) #5
  %completion.i17 = getelementptr inbounds %struct.stmpe_adc, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %completion.i17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %completion.i17, align 4
  %channel.i18 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %20 = ptrtoint ptr %channel.i18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channel.i18, align 4
  %conv.i19 = trunc i32 %21 to i8
  %channel1.i20 = getelementptr inbounds %struct.stmpe_adc, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %channel1.i20 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv.i19, ptr %channel1.i20, align 4
  %conv3.i21 = and i32 %21, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %conv3.i21)
  %cmp.not.i = icmp eq i32 %conv3.i21, 8
  br i1 %cmp.not.i, label %if.end.i23, label %sw.bb3.sw.epilog_crit_edge

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.i23:                                       ; preds = %sw.bb3
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %call.i22 = tail call i32 @stmpe_reg_write(ptr noundef %24, i8 noundef zeroext 96, i8 noundef zeroext 11) #5
  %call8.i = tail call i32 @wait_for_completion_timeout(ptr noundef %completion.i17, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 1
  br i1 %cmp9.i, label %if.end.i23.sw.epilog_crit_edge, label %if.end13.i

if.end.i23.sw.epilog_crit_edge:                   ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end13.i:                                       ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #7
  %value.i24 = getelementptr inbounds %struct.stmpe_adc, ptr %1, i32 0, i32 7
  %25 = ptrtoint ptr %value.i24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %value.i24, align 4
  %mul.i = mul i32 %26, 449960
  %div24.i = lshr i32 %mul.i, 10
  %sub.i = add nsw i32 %div24.i, -273150
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub.i, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end13.i, %if.end.i23.sw.epilog_crit_edge, %sw.bb3.sw.epilog_crit_edge, %if.end23.i, %if.then14.i, %sw.bb1.sw.epilog_crit_edge
  %lock.i16.sink = phi ptr [ %lock.i, %sw.bb1.sw.epilog_crit_edge ], [ %lock.i, %if.then14.i ], [ %lock.i, %if.end23.i ], [ %lock.i16, %sw.bb3.sw.epilog_crit_edge ], [ %lock.i16, %if.end.i23.sw.epilog_crit_edge ], [ %lock.i16, %if.end13.i ]
  %cmp = phi i32 [ -22, %sw.bb1.sw.epilog_crit_edge ], [ -110, %if.then14.i ], [ 1, %if.end23.i ], [ -22, %sw.bb3.sw.epilog_crit_edge ], [ -110, %if.end.i23.sw.epilog_crit_edge ], [ 1, %if.end13.i ]
  tail call void @mutex_unlock(ptr noundef %lock.i16.sink) #5
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 3300, ptr %val, align 4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %mod_12b = getelementptr inbounds %struct.stmpe, ptr %30, i32 0, i32 17
  %31 = ptrtoint ptr %mod_12b to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %mod_12b, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not = icmp eq i8 %32, 0
  %cond = select i1 %tobool.not, i32 10, i32 12
  %33 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %cond, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb5, %sw.epilog, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 11, %sw.bb5 ], [ -22, %sw.bb.cleanup_crit_edge ], [ %cmp, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmpe_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmpe811_adc_common_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmpe_disable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmpe_adc_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %call2 = tail call fastcc i32 @stmpe_adc_init_hw(ptr noundef %3)
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !31, !32, !33, !35, !37, !38, !39, !40, !42, !43, !44, !46, !48, !49, !51, !53, !54, !55, !56}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @__initcall__kmod_stmpe_adc__187_355_stmpe_adc_driver_init6, !1, !"__initcall__kmod_stmpe_adc__187_355_stmpe_adc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/stmpe-adc.c", i32 355, i32 1}
!2 = !{ptr @__exitcall_stmpe_adc_driver_exit, !1, !"__exitcall_stmpe_adc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author188, !4, !"__UNIQUE_ID_author188", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/stmpe-adc.c", i32 363, i32 1}
!5 = !{ptr @__UNIQUE_ID_description189, !6, !"__UNIQUE_ID_description189", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/stmpe-adc.c", i32 364, i32 1}
!7 = !{ptr @__UNIQUE_ID_file190, !8, !"__UNIQUE_ID_file190", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/stmpe-adc.c", i32 365, i32 1}
!9 = !{ptr @__UNIQUE_ID_license191, !8, !"__UNIQUE_ID_license191", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias192, !11, !"__UNIQUE_ID_alias192", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/stmpe-adc.c", i32 366, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/stmpe-adc.c", i32 351, i32 11}
!14 = !{ptr @stmpe_adc_driver, !15, !"stmpe_adc_driver", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/stmpe-adc.c", i32 348, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/stmpe-adc.c", i32 265, i32 42}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/adc/stmpe-adc.c", i32 271, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @stmpe_adc_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @stmpe_adc_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @stmpe_adc_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/iio/adc/stmpe-adc.c", i32 276, i32 2}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iio/adc/stmpe-adc.c", i32 283, i32 3}
!31 = !{ptr @stmpe_adc_probe._entry.8, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @stmpe_adc_probe._entry_ptr.10, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/adc/stmpe-adc.c", i32 288, i32 43}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/adc/stmpe-adc.c", i32 294, i32 4}
!37 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @stmpe_adc_probe._entry.12, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @stmpe_adc_probe._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/iio/adc/stmpe-adc.c", i32 309, i32 3}
!42 = !{ptr @stmpe_adc_probe._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @stmpe_adc_probe._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/adc/stmpe-adc.c", i32 311, i32 27}
!46 = !{ptr @init_completion.__key, !47, !"__key", i1 false, i1 false}
!47 = !{!"../include/linux/completion.h", i32 87, i32 2}
!48 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @stmpe_adc_iio_info, !50, !"stmpe_adc_iio_info", i1 false, i1 false}
!50 = !{!"../drivers/iio/adc/stmpe-adc.c", i32 208, i32 30}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iio/adc/stmpe-adc.c", i32 236, i32 3}
!53 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @stmpe_adc_init_hw._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @stmpe_adc_init_hw._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @stmpe_adc_pm_ops, !57, !"stmpe_adc_pm_ops", i1 false, i1 false}
!57 = !{!"../drivers/iio/adc/stmpe-adc.c", i32 346, i32 8}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{!"auto-init"}
