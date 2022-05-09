; ModuleID = '/llk/IR_all_yes/drivers/pwm/pwm-jz4740.c_pt.bc'
source_filename = "../drivers/pwm/pwm-jz4740.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pwm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.soc_info = type { i32 }
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
%struct.jz4740_pwm_chip = type { %struct.pwm_chip, ptr }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }

@__initcall__kmod_pwm_jz4740__223_275_jz4740_pwm_driver_init6 = internal global ptr @jz4740_pwm_driver_init, section ".initcall6.init", align 4
@jz4740_pwm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @jz4740_pwm_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @jz4740_pwm_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_jz4740_pwm_driver_exit = internal global ptr @jz4740_pwm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author224 = internal constant [55 x i8] c"pwm_jz4740.author=Lars-Peter Clausen <lars@metafoo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description225 = internal constant [49 x i8] c"pwm_jz4740.description=Ingenic JZ4740 PWM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias226 = internal constant [37 x i8] c"pwm_jz4740.alias=platform:jz4740-pwm\00", section ".modinfo", align 1
@__UNIQUE_ID_file227 = internal constant [39 x i8] c"pwm_jz4740.file=drivers/pwm/pwm-jz4740\00", section ".modinfo", align 1
@__UNIQUE_ID_license228 = internal constant [23 x i8] c"pwm_jz4740.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"jz4740-pwm\00", [21 x i8] zeroinitializer }, align 32
@jz4740_pwm_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4740-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4740_soc_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4725b-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4725b_soc_info }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@jz4740_pwm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 240, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"regmap not found: %ld\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"jz4740_pwm_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/pwm/pwm-jz4740.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@jz4740_pwm_probe._entry_ptr = internal global ptr @jz4740_pwm_probe._entry, section ".printk_index", align 4
@jz4740_pwm_ops = internal constant { %struct.pwm_ops, [56 x i8] } { %struct.pwm_ops { ptr @jz4740_pwm_request, ptr @jz4740_pwm_free, ptr null, ptr @jz4740_pwm_apply, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"timer%u\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ingenic,pwm-channels-mask\00", [38 x i8] zeroinitializer }, align 32
@jz4740_pwm_apply._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 152, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unable to round rate: %ld\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"jz4740_pwm_apply\00", [47 x i8] zeroinitializer }, align 32
@jz4740_pwm_apply._entry_ptr = internal global ptr @jz4740_pwm_apply._entry, section ".printk_index", align 4
@jz4740_pwm_apply._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.3, i32 173, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unable to set rate: %d\00", [41 x i8] zeroinitializer }, align 32
@jz4740_pwm_apply._entry_ptr.13 = internal global ptr @jz4740_pwm_apply._entry.11, section ".printk_index", align 4
@jz4740_soc_info = internal constant { %struct.soc_info, [28 x i8] } { %struct.soc_info { i32 8 }, [28 x i8] zeroinitializer }, align 32
@jz4725b_soc_info = internal constant { %struct.soc_info, [28 x i8] } { %struct.soc_info { i32 6 }, [28 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant [18 x i8] c"jz4740_pwm_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 268, i32 31 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 270, i32 11 }
@___asan_gen_.20 = private unnamed_addr constant [18 x i8] c"jz4740_pwm_dt_ids\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 260, i32 34 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 240, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [15 x i8] c"jz4740_pwm_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 217, i32 29 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 60, i32 31 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 65, i32 10 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 44, i32 6 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 152, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 173, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [16 x i8] c"jz4740_soc_info\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 251, i32 45 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"jz4725b_soc_info\00", align 1
@___asan_gen_.72 = private constant [28 x i8] c"../drivers/pwm/pwm-jz4740.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 255, i32 45 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_alias226, ptr @__UNIQUE_ID_author224, ptr @__UNIQUE_ID_description225, ptr @__UNIQUE_ID_file227, ptr @__UNIQUE_ID_license228, ptr @__exitcall_jz4740_pwm_driver_exit, ptr @__initcall__kmod_pwm_jz4740__223_275_jz4740_pwm_driver_init6, ptr @jz4740_pwm_apply._entry, ptr @jz4740_pwm_apply._entry.11, ptr @jz4740_pwm_apply._entry_ptr, ptr @jz4740_pwm_apply._entry_ptr.13, ptr @jz4740_pwm_driver_exit, ptr @jz4740_pwm_probe._entry, ptr @jz4740_pwm_probe._entry_ptr, ptr @jz4740_pwm_driver, ptr @.str, ptr @jz4740_pwm_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @jz4740_pwm_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @jz4740_soc_info, ptr @jz4725b_soc_info], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4740_pwm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4740_pwm_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4740_pwm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4740_pwm_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4740_pwm_apply._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4740_pwm_apply._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4740_soc_info to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4725b_soc_info to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @jz4740_pwm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @jz4740_pwm_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @jz4740_pwm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @jz4740_pwm_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jz4740_pwm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @device_get_match_data(ptr noundef %dev1) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 40, i32 noundef 3520) #6
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call6 = tail call ptr @device_node_to_regmap(ptr noundef %3) #6
  %map = getelementptr inbounds %struct.jz4740_pwm_chip, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call6, ptr %map, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end14

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call6 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %5) #9
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map, align 4
  %8 = ptrtoint ptr %7 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev1, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @jz4740_pwm_ops, ptr %ops, align 4
  %11 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call, align 4
  %npwm = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %npwm to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %npwm, align 4
  %call19 = tail call i32 @devm_pwmchip_add(ptr noundef %dev1, ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %do.end ], [ %call19, %if.end14 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pwmchip_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jz4740_pwm_request(ptr nocapture noundef readonly %chip, ptr noundef %pwm) #2 align 64 {
entry:
  %pwm_channels_mask.i = alloca i32, align 4
  %name = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name) #6
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %0 = call ptr @memset(ptr %name, i32 255, i32 16)
  %1 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hwpwm, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pwm_channels_mask.i) #6
  %npwm.i = getelementptr inbounds %struct.pwm_chip, ptr %chip, i32 0, i32 3
  %3 = ptrtoint ptr %npwm.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %npwm.i, align 4
  %sub1.i = sub i32 32, %4
  %shr.i = lshr i32 -1, %sub1.i
  %and.i = and i32 %shr.i, -4
  %5 = ptrtoint ptr %pwm_channels_mask.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and.i, ptr %pwm_channels_mask.i, align 4
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i, align 8
  %call.i.i = call i32 @device_property_read_u32_array(ptr noundef %9, ptr noundef nonnull @.str.8, ptr noundef nonnull %pwm_channels_mask.i, i32 noundef 1) #6
  %10 = ptrtoint ptr %pwm_channels_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pwm_channels_mask.i, align 4
  %shl.i = shl nuw i32 1, %2
  %and3.i = and i32 %11, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.i.not = icmp eq i32 %and3.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pwm_channels_mask.i) #6
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hwpwm, align 8
  %call3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 16, ptr noundef nonnull @.str.6, i32 noundef %13)
  %14 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chip, align 4
  %call5 = call ptr @clk_get(ptr noundef %15, ptr noundef nonnull %name) #6
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end11

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip, align 4
  %18 = ptrtoint ptr %call5 to i32
  %call10 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %17, i32 noundef %18, ptr noundef nonnull @.str.7) #6
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call.i = call i32 @clk_prepare(ptr noundef %call5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end11.clk_prepare_enable.exit_crit_edge

if.end11.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end11
  %call1.i = call i32 @clk_enable(ptr noundef %call5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end14_crit_edge, label %if.then3.i

if.end.i.if.end14_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unprepare(ptr noundef %call5) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end11.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end11.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %if.then13, label %clk_prepare_enable.exit.if.end14_crit_edge

clk_prepare_enable.exit.if.end14_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then13:                                        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_put(ptr noundef %call5) #6
  br label %cleanup

if.end14:                                         ; preds = %clk_prepare_enable.exit.if.end14_crit_edge, %if.end.i.if.end14_crit_edge
  %call15 = call i32 @pwm_set_chip_data(ptr noundef %pwm, ptr noundef %call5) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then13, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.then7 ], [ %retval.0.i, %if.then13 ], [ 0, %if.end14 ], [ -16, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jz4740_pwm_free(ptr nocapture noundef readnone %chip, ptr noundef %pwm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pwm_get_chip_data(ptr noundef %pwm) #6
  tail call void @clk_disable(ptr noundef %call) #6
  tail call void @clk_unprepare(ptr noundef %call) #6
  tail call void @clk_put(ptr noundef %call) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jz4740_pwm_apply(ptr nocapture noundef readonly %chip, ptr noundef %pwm, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip1 = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 4
  %0 = ptrtoint ptr %chip1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip1, align 8
  %call2 = tail call ptr @pwm_get_chip_data(ptr noundef %pwm) #6
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %state, align 8
  %conv = trunc i64 %3 to i32
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv, i64 65535000000000) #10, !srcloc !56
  %asmresult1.i = extractvalue { i64, i64 } %4, 1
  %extract.t1034 = trunc i64 %asmresult1.i to i32
  %call188 = tail call i32 @clk_round_rate(ptr noundef %call2, i32 noundef %extract.t1034) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call188)
  %cmp189 = icmp slt i32 %call188, 0
  br i1 %cmp189, label %do.end, label %if.end639

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.9, i32 noundef %call188) #9
  br label %cleanup

if.end639:                                        ; preds = %entry
  %conv1931031 = zext i32 %call188 to i64
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %state, align 8
  %mul195 = mul i64 %8, %conv1931031
  %9 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul195, i32 0) #10, !srcloc !57
  %asmresult.i979 = extractvalue { i64, i32 } %9, 0
  %asmresult4.i980 = extractvalue { i64, i32 } %9, 1
  %10 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul195, i64 %asmresult.i979, i32 %asmresult4.i980) #10, !srcloc !58
  %duty_cycle = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %11 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %duty_cycle, align 8
  %mul419 = mul i64 %12, %conv1931031
  %13 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul419, i32 0) #10, !srcloc !57
  %asmresult.i989 = extractvalue { i64, i32 } %13, 0
  %asmresult4.i990 = extractvalue { i64, i32 } %13, 1
  %14 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul419, i64 %asmresult.i989, i32 %asmresult4.i990) #10, !srcloc !58
  %map.i = getelementptr inbounds %struct.jz4740_pwm_chip, ptr %chip, i32 0, i32 1
  %15 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map.i, align 4
  %hwpwm.i = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %17 = ptrtoint ptr %hwpwm.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hwpwm.i, align 8
  %mul.i = shl i32 %18, 4
  %add.i = add i32 %mul.i, 68
  %call1.i = tail call i32 @regmap_write(ptr noundef %16, i32 noundef %add.i, i32 noundef 65535) #6
  %19 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %map.i, align 4
  %21 = ptrtoint ptr %hwpwm.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hwpwm.i, align 8
  %mul4.i = shl i32 %22, 4
  %add5.i = add i32 %mul4.i, 64
  %call6.i = tail call i32 @regmap_write(ptr noundef %20, i32 noundef %add5.i, i32 noundef 0) #6
  %23 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %map.i, align 4
  %25 = ptrtoint ptr %hwpwm.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hwpwm.i, align 8
  %mul9.i = shl i32 %26, 4
  %add10.i = add i32 %mul9.i, 76
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef %add10.i, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %27 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %map.i, align 4
  %29 = ptrtoint ptr %hwpwm.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hwpwm.i, align 8
  %shl.i = shl nuw i32 1, %30
  %call14.i = tail call i32 @regmap_write(ptr noundef %28, i32 noundef 24, i32 noundef %shl.i) #6
  %call647 = tail call i32 @clk_set_rate(ptr noundef %call2, i32 noundef %call188) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call647)
  %tobool648.not = icmp eq i32 %call647, 0
  br i1 %tobool648.not, label %if.end654, label %do.end652

do.end652:                                        ; preds = %if.end639
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.12, i32 noundef %call647) #9
  br label %cleanup

if.end654:                                        ; preds = %if.end639
  %asmresult10.i994 = extractvalue { i64, i32 } %14, 0
  %storemerge974 = lshr i64 %asmresult10.i994, 29
  %conv641 = trunc i64 %storemerge974 to i32
  %asmresult10.i984 = extractvalue { i64, i32 } %10, 0
  %storemerge = lshr i64 %asmresult10.i984, 29
  %conv417 = trunc i64 %storemerge to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv641, i32 %conv417)
  %cmp642.not = icmp ult i32 %conv641, %conv417
  %sub645 = add i32 %conv417, -1
  %spec.select = select i1 %cmp642.not, i32 %conv641, i32 %sub645
  %map = getelementptr inbounds %struct.jz4740_pwm_chip, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %map, align 4
  %35 = ptrtoint ptr %hwpwm.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hwpwm.i, align 8
  %mul655 = shl i32 %36, 4
  %add656 = add i32 %mul655, 72
  %call657 = tail call i32 @regmap_write(ptr noundef %34, i32 noundef %add656, i32 noundef 0) #6
  %37 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %map, align 4
  %39 = ptrtoint ptr %hwpwm.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %hwpwm.i, align 8
  %mul660 = shl i32 %40, 4
  %add661 = add i32 %mul660, 68
  %call662 = tail call i32 @regmap_write(ptr noundef %38, i32 noundef %add661, i32 noundef %spec.select) #6
  %41 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %map, align 4
  %43 = ptrtoint ptr %hwpwm.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %hwpwm.i, align 8
  %mul665 = shl i32 %44, 4
  %add666 = add i32 %mul665, 64
  %call667 = tail call i32 @regmap_write(ptr noundef %42, i32 noundef %add666, i32 noundef %conv417) #6
  %45 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %map, align 4
  %47 = ptrtoint ptr %hwpwm.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %hwpwm.i, align 8
  %mul670 = shl i32 %48, 4
  %add671 = add i32 %mul670, 76
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef %add671, i32 noundef 512, i32 noundef 512, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %polarity = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %49 = ptrtoint ptr %polarity to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %polarity, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp673 = icmp eq i32 %50, 0
  %enabled = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %51 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %enabled, align 4, !range !59
  %53 = zext i1 %cmp673 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %52, i8 %53)
  %tobool677.not = icmp eq i8 %52, %53
  %54 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %map, align 4
  %56 = ptrtoint ptr %hwpwm.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %hwpwm.i, align 8
  %mul687 = shl i32 %57, 4
  %add688 = add i32 %mul687, 76
  %. = select i1 %tobool677.not, i32 256, i32 0
  %call.i998 = tail call i32 @regmap_update_bits_base(ptr noundef %55, i32 noundef %add688, i32 noundef 256, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %58 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %enabled, align 4, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool692.not = icmp eq i8 %59, 0
  br i1 %tobool692.not, label %if.end654.cleanup_crit_edge, label %if.then693

if.end654.cleanup_crit_edge:                      ; preds = %if.end654
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then693:                                       ; preds = %if.end654
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %map.i, align 4
  %62 = ptrtoint ptr %hwpwm.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %hwpwm.i, align 8
  %mul.i1001 = shl i32 %63, 4
  %add.i1002 = add i32 %mul.i1001, 76
  %call.i.i1003 = tail call i32 @regmap_update_bits_base(ptr noundef %61, i32 noundef %add.i1002, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %64 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %map.i, align 4
  %66 = ptrtoint ptr %hwpwm.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %hwpwm.i, align 8
  %shl.i1004 = shl nuw i32 1, %67
  %call4.i = tail call i32 @regmap_write(ptr noundef %65, i32 noundef 20, i32 noundef %shl.i1004) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then693, %if.end654.cleanup_crit_edge, %do.end652, %do.end
  %retval.0 = phi i32 [ %call188, %do.end ], [ %call647, %do.end652 ], [ 0, %if.then693 ], [ 0, %if.end654.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwm_set_chip_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pwm_get_chip_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !32, !34, !35, !36, !37, !39, !40, !41, !43, !45}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @__initcall__kmod_pwm_jz4740__223_275_jz4740_pwm_driver_init6, !1, !"__initcall__kmod_pwm_jz4740__223_275_jz4740_pwm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pwm/pwm-jz4740.c", i32 275, i32 1}
!2 = !{ptr @__exitcall_jz4740_pwm_driver_exit, !1, !"__exitcall_jz4740_pwm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author224, !4, !"__UNIQUE_ID_author224", i1 false, i1 false}
!4 = !{!"../drivers/pwm/pwm-jz4740.c", i32 277, i32 1}
!5 = !{ptr @__UNIQUE_ID_description225, !6, !"__UNIQUE_ID_description225", i1 false, i1 false}
!6 = !{!"../drivers/pwm/pwm-jz4740.c", i32 278, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias226, !8, !"__UNIQUE_ID_alias226", i1 false, i1 false}
!8 = !{!"../drivers/pwm/pwm-jz4740.c", i32 279, i32 1}
!9 = !{ptr @__UNIQUE_ID_file227, !10, !"__UNIQUE_ID_file227", i1 false, i1 false}
!10 = !{!"../drivers/pwm/pwm-jz4740.c", i32 280, i32 1}
!11 = !{ptr @__UNIQUE_ID_license228, !10, !"__UNIQUE_ID_license228", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pwm/pwm-jz4740.c", i32 270, i32 11}
!14 = !{ptr @jz4740_pwm_driver, !15, !"jz4740_pwm_driver", i1 false, i1 false}
!15 = !{!"../drivers/pwm/pwm-jz4740.c", i32 268, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pwm/pwm-jz4740.c", i32 240, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @jz4740_pwm_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @jz4740_pwm_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @jz4740_pwm_ops, !25, !"jz4740_pwm_ops", i1 false, i1 false}
!25 = !{!"../drivers/pwm/pwm-jz4740.c", i32 217, i32 29}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pwm/pwm-jz4740.c", i32 60, i32 31}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pwm/pwm-jz4740.c", i32 65, i32 10}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pwm/pwm-jz4740.c", i32 44, i32 6}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pwm/pwm-jz4740.c", i32 152, i32 3}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @jz4740_pwm_apply._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @jz4740_pwm_apply._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/pwm/pwm-jz4740.c", i32 173, i32 3}
!39 = !{ptr @jz4740_pwm_apply._entry.11, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @jz4740_pwm_apply._entry_ptr.13, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @jz4740_pwm_dt_ids, !42, !"jz4740_pwm_dt_ids", i1 false, i1 false}
!42 = !{!"../drivers/pwm/pwm-jz4740.c", i32 260, i32 34}
!43 = !{ptr @jz4740_soc_info, !44, !"jz4740_soc_info", i1 false, i1 false}
!44 = !{!"../drivers/pwm/pwm-jz4740.c", i32 251, i32 45}
!45 = !{ptr @jz4725b_soc_info, !46, !"jz4725b_soc_info", i1 false, i1 false}
!46 = !{!"../drivers/pwm/pwm-jz4740.c", i32 255, i32 45}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{i64 2148636011, i64 2148636291, i64 2148636625, i64 2148636959}
!57 = !{i64 1150467, i64 1150494, i64 1150516, i64 1150544}
!58 = !{i64 1150875, i64 1150902, i64 1150935, i64 1150956, i64 1150983, i64 1151009}
!59 = !{i8 0, i8 2}
