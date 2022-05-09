; ModuleID = '/llk/IR_all_yes/drivers/reset/reset-imx7.c_pt.bc'
source_filename = "../drivers/reset/reset-imx7.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.imx7_src_variant = type { ptr, i32, %struct.reset_control_ops }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.imx7_src_signal = type { i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
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
%struct.imx7_src = type { %struct.reset_controller_dev, ptr, ptr }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }

@__initcall__kmod_reset_imx7__170_402_imx7_reset_driver_init6 = internal global ptr @imx7_reset_driver_init, section ".initcall6.init", align 4
@imx7_reset_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @imx7_reset_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx7_reset_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_imx7_reset_driver_exit = internal global ptr @imx7_reset_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [60 x i8] c"reset_imx7.author=Andrey Smirnov <andrew.smirnov@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [46 x i8] c"reset_imx7.description=NXP i.MX7 reset driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [41 x i8] c"reset_imx7.file=drivers/reset/reset-imx7\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [26 x i8] c"reset_imx7.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"reset_imx7\00", [21 x i8] zeroinitializer }, align 32
@imx7_reset_dt_ids = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7d-src\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @variant_imx7 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mq-src\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @variant_imx8mq }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8mp-src\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @variant_imx8mp }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"src\00", [28 x i8] zeroinitializer }, align 32
@__const.imx7_reset_probe.config = private unnamed_addr constant { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] } { ptr @.str.1, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, [3 x i8] zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0, i32 0, i8 0, [3 x i8] zeroinitializer }, align 4
@imx7_reset_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 374, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to get imx7-src regmap\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"imx7_reset_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/reset/reset-imx7.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx7_reset_probe._entry_ptr = internal global ptr @imx7_reset_probe._entry, section ".printk_index", align 4
@variant_imx7 = internal constant { %struct.imx7_src_variant, [40 x i8] } { %struct.imx7_src_variant { ptr @imx7_src_signals, i32 26, %struct.reset_control_ops { ptr null, ptr @imx7_reset_assert, ptr @imx7_reset_deassert, ptr null } }, [40 x i8] zeroinitializer }, align 32
@variant_imx8mq = internal constant { %struct.imx7_src_variant, [40 x i8] } { %struct.imx7_src_variant { ptr @imx8mq_src_signals, i32 53, %struct.reset_control_ops { ptr null, ptr @imx8mq_reset_assert, ptr @imx8mq_reset_deassert, ptr null } }, [40 x i8] zeroinitializer }, align 32
@variant_imx8mp = internal constant { %struct.imx7_src_variant, [40 x i8] } { %struct.imx7_src_variant { ptr @imx8mp_src_signals, i32 38, %struct.reset_control_ops { ptr null, ptr @imx8mp_reset_assert, ptr @imx8mp_reset_deassert, ptr null } }, [40 x i8] zeroinitializer }, align 32
@imx7_src_signals = internal constant { [26 x %struct.imx7_src_signal], [48 x i8] } { [26 x %struct.imx7_src_signal] [%struct.imx7_src_signal { i32 4, i32 1 }, %struct.imx7_src_signal { i32 4, i32 2 }, %struct.imx7_src_signal { i32 4, i32 16 }, %struct.imx7_src_signal { i32 4, i32 32 }, %struct.imx7_src_signal { i32 4, i32 256 }, %struct.imx7_src_signal { i32 4, i32 512 }, %struct.imx7_src_signal { i32 4, i32 4096 }, %struct.imx7_src_signal { i32 4, i32 8192 }, %struct.imx7_src_signal { i32 4, i32 1048576 }, %struct.imx7_src_signal { i32 4, i32 2097152 }, %struct.imx7_src_signal { i32 12, i32 2 }, %struct.imx7_src_signal { i32 12, i32 4 }, %struct.imx7_src_signal { i32 20, i32 1 }, %struct.imx7_src_signal { i32 28, i32 2 }, %struct.imx7_src_signal { i32 32, i32 1 }, %struct.imx7_src_signal { i32 32, i32 2 }, %struct.imx7_src_signal { i32 36, i32 1 }, %struct.imx7_src_signal { i32 36, i32 2 }, %struct.imx7_src_signal { i32 40, i32 2 }, %struct.imx7_src_signal { i32 40, i32 4 }, %struct.imx7_src_signal { i32 44, i32 6 }, %struct.imx7_src_signal { i32 44, i32 8 }, %struct.imx7_src_signal { i32 44, i32 64 }, %struct.imx7_src_signal { i32 4096, i32 1 }, %struct.imx7_src_signal { i32 4096, i32 2 }, %struct.imx7_src_signal { i32 44, i32 2048 }], [48 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@imx8mq_src_signals = internal constant { [53 x %struct.imx7_src_signal], [120 x i8] } { [53 x %struct.imx7_src_signal] [%struct.imx7_src_signal { i32 4, i32 1 }, %struct.imx7_src_signal { i32 4, i32 2 }, %struct.imx7_src_signal { i32 4, i32 4 }, %struct.imx7_src_signal { i32 4, i32 8 }, %struct.imx7_src_signal { i32 4, i32 16 }, %struct.imx7_src_signal { i32 4, i32 32 }, %struct.imx7_src_signal { i32 4, i32 64 }, %struct.imx7_src_signal { i32 4, i32 128 }, %struct.imx7_src_signal { i32 4, i32 256 }, %struct.imx7_src_signal { i32 4, i32 512 }, %struct.imx7_src_signal { i32 4, i32 1024 }, %struct.imx7_src_signal { i32 4, i32 2048 }, %struct.imx7_src_signal { i32 4, i32 4096 }, %struct.imx7_src_signal { i32 4, i32 8192 }, %struct.imx7_src_signal { i32 4, i32 16384 }, %struct.imx7_src_signal { i32 4, i32 32768 }, %struct.imx7_src_signal { i32 4, i32 1048576 }, %struct.imx7_src_signal { i32 4, i32 2097152 }, %struct.imx7_src_signal { i32 12, i32 1 }, %struct.imx7_src_signal { i32 32, i32 1 }, %struct.imx7_src_signal { i32 36, i32 1 }, %struct.imx7_src_signal { i32 40, i32 2 }, %struct.imx7_src_signal { i32 40, i32 4 }, %struct.imx7_src_signal { i32 40, i32 8 }, %struct.imx7_src_signal { i32 40, i32 16 }, %struct.imx7_src_signal { i32 40, i32 32 }, %struct.imx7_src_signal { i32 44, i32 6 }, %struct.imx7_src_signal { i32 44, i32 8 }, %struct.imx7_src_signal { i32 44, i32 64 }, %struct.imx7_src_signal { i32 44, i32 2048 }, %struct.imx7_src_signal { i32 48, i32 1 }, %struct.imx7_src_signal { i32 52, i32 1 }, %struct.imx7_src_signal { i32 64, i32 1 }, %struct.imx7_src_signal { i32 68, i32 1 }, %struct.imx7_src_signal { i32 72, i32 6 }, %struct.imx7_src_signal { i32 72, i32 8 }, %struct.imx7_src_signal { i32 72, i32 64 }, %struct.imx7_src_signal { i32 72, i32 2048 }, %struct.imx7_src_signal { i32 76, i32 1 }, %struct.imx7_src_signal { i32 76, i32 2 }, %struct.imx7_src_signal { i32 76, i32 4 }, %struct.imx7_src_signal { i32 80, i32 1 }, %struct.imx7_src_signal { i32 80, i32 2 }, %struct.imx7_src_signal { i32 80, i32 4 }, %struct.imx7_src_signal { i32 4096, i32 1 }, %struct.imx7_src_signal { i32 4096, i32 2 }, %struct.imx7_src_signal { i32 4096, i32 4 }, %struct.imx7_src_signal { i32 4100, i32 4 }, %struct.imx7_src_signal { i32 4100, i32 2 }, %struct.imx7_src_signal { i32 4100, i32 1 }, %struct.imx7_src_signal { i32 12, i32 2 }, %struct.imx7_src_signal { i32 12, i32 4 }, %struct.imx7_src_signal { i32 12, i32 8 }], [120 x i8] zeroinitializer }, align 32
@imx8mp_src_signals = internal constant { [38 x %struct.imx7_src_signal], [80 x i8] } { [38 x %struct.imx7_src_signal] [%struct.imx7_src_signal { i32 4, i32 1 }, %struct.imx7_src_signal { i32 4, i32 2 }, %struct.imx7_src_signal { i32 4, i32 4 }, %struct.imx7_src_signal { i32 4, i32 8 }, %struct.imx7_src_signal { i32 4, i32 16 }, %struct.imx7_src_signal { i32 4, i32 32 }, %struct.imx7_src_signal { i32 4, i32 64 }, %struct.imx7_src_signal { i32 4, i32 128 }, %struct.imx7_src_signal { i32 4, i32 256 }, %struct.imx7_src_signal { i32 4, i32 512 }, %struct.imx7_src_signal { i32 4, i32 1024 }, %struct.imx7_src_signal { i32 4, i32 2048 }, %struct.imx7_src_signal { i32 4, i32 4096 }, %struct.imx7_src_signal { i32 4, i32 8192 }, %struct.imx7_src_signal { i32 4, i32 16384 }, %struct.imx7_src_signal { i32 4, i32 32768 }, %struct.imx7_src_signal { i32 4, i32 1048576 }, %struct.imx7_src_signal { i32 4, i32 2097152 }, %struct.imx7_src_signal { i32 12, i32 1 }, %struct.imx7_src_signal { i32 32, i32 1 }, %struct.imx7_src_signal { i32 36, i32 1 }, %struct.imx7_src_signal { i32 24, i32 1 }, %struct.imx7_src_signal { i32 28, i32 1 }, %struct.imx7_src_signal { i32 40, i32 1 }, %struct.imx7_src_signal { i32 44, i32 4 }, %struct.imx7_src_signal { i32 44, i32 8 }, %struct.imx7_src_signal { i32 44, i32 64 }, %struct.imx7_src_signal { i32 44, i32 2048 }, %struct.imx7_src_signal { i32 48, i32 1 }, %struct.imx7_src_signal { i32 52, i32 1 }, %struct.imx7_src_signal { i32 56, i32 1 }, %struct.imx7_src_signal { i32 60, i32 1 }, %struct.imx7_src_signal { i32 64, i32 1 }, %struct.imx7_src_signal { i32 68, i32 1 }, %struct.imx7_src_signal { i32 72, i32 1 }, %struct.imx7_src_signal { i32 76, i32 1 }, %struct.imx7_src_signal { i32 80, i32 1 }, %struct.imx7_src_signal { i32 84, i32 1 }], [80 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 20, i64 22]
@__sancov_gen_cov_switch_values.7 = internal global [10 x i64] [i64 8, i64 32, i64 21, i64 22, i64 23, i64 24, i64 25, i64 28, i64 36, i64 52]
@__sancov_gen_cov_switch_values.8 = internal global [12 x i64] [i64 10, i64 32, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 28, i64 34, i64 36, i64 52]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 24, i64 26]
@___asan_gen_.10 = private unnamed_addr constant [18 x i8] c"imx7_reset_driver\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 395, i32 31 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 398, i32 12 }
@___asan_gen_.16 = private unnamed_addr constant [18 x i8] c"imx7_reset_dt_ids\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 387, i32 34 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 364, i32 42 }
@___asan_gen_.22 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 374, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [13 x i8] c"variant_imx7\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 128, i32 38 }
@___asan_gen_.43 = private unnamed_addr constant [15 x i8] c"variant_imx8mq\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 264, i32 38 }
@___asan_gen_.46 = private unnamed_addr constant [15 x i8] c"variant_imx8mp\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 351, i32 38 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"imx7_src_signals\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 57, i32 37 }
@___asan_gen_.52 = private unnamed_addr constant [19 x i8] c"imx8mq_src_signals\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 161, i32 37 }
@___asan_gen_.55 = private unnamed_addr constant [19 x i8] c"imx8mp_src_signals\00", align 1
@___asan_gen_.56 = private constant [30 x i8] c"../drivers/reset/reset-imx7.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 273, i32 37 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_imx7_reset_driver_exit, ptr @__initcall__kmod_reset_imx7__170_402_imx7_reset_driver_init6, ptr @imx7_reset_driver_exit, ptr @imx7_reset_probe._entry, ptr @imx7_reset_probe._entry_ptr, ptr @imx7_reset_driver, ptr @.str, ptr @imx7_reset_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @variant_imx7, ptr @variant_imx8mq, ptr @variant_imx8mp, ptr @imx7_src_signals, ptr @imx8mq_src_signals, ptr @imx8mp_src_signals], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx7_reset_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx7_reset_dt_ids to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx7_reset_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @variant_imx7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @variant_imx8mq to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @variant_imx8mp to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx7_src_signals to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mq_src_signals to i32), i32 424, i32 544, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8mp_src_signals to i32), i32 304, i32 384, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx7_reset_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx7_reset_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx7_reset_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @imx7_reset_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx7_reset_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %config = alloca %struct.regmap_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %config) #5
  %0 = call ptr @memcpy(ptr %config, ptr @__const.imx7_reset_probe.config, i32 172)
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #5
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 52, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  %signals3 = getelementptr inbounds %struct.imx7_src, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %signals3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %signals3, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call4 = tail call ptr @syscon_node_to_regmap(ptr noundef %5) #5
  %regmap = getelementptr inbounds %struct.imx7_src, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call4, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #8
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call12 = call i32 @regmap_attach_dev(ptr noundef %dev1, ptr noundef %call4, ptr noundef nonnull %config) #5
  %owner = getelementptr inbounds %struct.reset_controller_dev, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %owner, align 4
  %signals_num = getelementptr inbounds %struct.imx7_src_variant, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %signals_num to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %signals_num, align 4
  %nr_resets = getelementptr inbounds %struct.reset_controller_dev, ptr %call.i, i32 0, i32 8
  %13 = ptrtoint ptr %nr_resets to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %nr_resets, align 4
  %ops = getelementptr inbounds %struct.imx7_src_variant, ptr %call, i32 0, i32 2
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %ops, ptr %call.i, align 4
  %15 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node, align 8
  %of_node18 = getelementptr inbounds %struct.reset_controller_dev, ptr %call.i, i32 0, i32 5
  %17 = ptrtoint ptr %of_node18 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %of_node18, align 4
  %call20 = call i32 @devm_reset_controller_register(ptr noundef %dev1, ptr noundef nonnull %call.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %do.end ], [ %call20, %if.end10 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %config) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_attach_dev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_reset_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx7_reset_assert(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %signals.i = getelementptr inbounds %struct.imx7_src, ptr %rcdev, i32 0, i32 2
  %0 = ptrtoint ptr %signals.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %signals.i, align 4
  %bit1.i = getelementptr %struct.imx7_src_signal, ptr %1, i32 %id, i32 1
  %2 = ptrtoint ptr %bit1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bit1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %id)
  %cond = icmp eq i32 %id, 22
  %spec.select = select i1 %cond, i32 0, i32 %3
  %arrayidx.i.i = getelementptr %struct.imx7_src_signal, ptr %1, i32 %id
  %regmap.i.i = getelementptr inbounds %struct.imx7_src, ptr %rcdev, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i.i, align 4
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %7, i32 noundef %3, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret i32 %call.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx7_reset_deassert(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %signals.i = getelementptr inbounds %struct.imx7_src, ptr %rcdev, i32 0, i32 2
  %0 = zext i32 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %id, label %entry.imx7_reset_set.exit_crit_edge [
    i32 20, label %sw.bb.i
    i32 22, label %sw.bb3.i
  ]

entry.imx7_reset_set.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %imx7_reset_set.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 2147480) #5
  br label %imx7_reset_set.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %signals.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %signals.i, align 4
  %bit1.i = getelementptr %struct.imx7_src_signal, ptr %3, i32 22, i32 1
  %4 = ptrtoint ptr %bit1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bit1.i, align 4
  br label %imx7_reset_set.exit

imx7_reset_set.exit:                              ; preds = %sw.bb3.i, %sw.bb.i, %entry.imx7_reset_set.exit_crit_edge
  %value.0.i = phi i32 [ 0, %entry.imx7_reset_set.exit_crit_edge ], [ %5, %sw.bb3.i ], [ 0, %sw.bb.i ]
  %6 = ptrtoint ptr %signals.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %signals.i, align 4
  %arrayidx.i.i = getelementptr %struct.imx7_src_signal, ptr %7, i32 %id
  %regmap.i.i = getelementptr inbounds %struct.imx7_src, ptr %rcdev, i32 0, i32 1
  %8 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i.i, align 4
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 4
  %bit.i.i = getelementptr %struct.imx7_src_signal, ptr %7, i32 %id, i32 1
  %12 = ptrtoint ptr %bit.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bit.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %value.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret i32 %call.i.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8mq_reset_assert(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %signals.i = getelementptr inbounds %struct.imx7_src, ptr %rcdev, i32 0, i32 2
  %0 = ptrtoint ptr %signals.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %signals.i, align 4
  %bit1.i = getelementptr %struct.imx7_src_signal, ptr %1, i32 %id, i32 1
  %2 = ptrtoint ptr %bit1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bit1.i, align 4
  %4 = zext i32 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %id, label %entry.imx8mq_reset_set.exit_crit_edge [
    i32 52, label %entry.sw.bb3.i_crit_edge
    i32 21, label %entry.sw.bb3.i_crit_edge1
    i32 28, label %entry.sw.bb3.i_crit_edge2
    i32 36, label %entry.sw.bb3.i_crit_edge3
    i32 25, label %entry.sw.bb3.i_crit_edge4
    i32 24, label %entry.sw.bb3.i_crit_edge5
    i32 23, label %entry.sw.bb3.i_crit_edge6
    i32 22, label %entry.sw.bb3.i_crit_edge7
  ]

entry.sw.bb3.i_crit_edge7:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i

entry.sw.bb3.i_crit_edge6:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i

entry.sw.bb3.i_crit_edge5:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i

entry.sw.bb3.i_crit_edge4:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i

entry.sw.bb3.i_crit_edge3:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i

entry.sw.bb3.i_crit_edge2:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i

entry.sw.bb3.i_crit_edge1:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i

entry.sw.bb3.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i

entry.imx8mq_reset_set.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %imx8mq_reset_set.exit

sw.bb3.i:                                         ; preds = %entry.sw.bb3.i_crit_edge, %entry.sw.bb3.i_crit_edge1, %entry.sw.bb3.i_crit_edge2, %entry.sw.bb3.i_crit_edge3, %entry.sw.bb3.i_crit_edge4, %entry.sw.bb3.i_crit_edge5, %entry.sw.bb3.i_crit_edge6, %entry.sw.bb3.i_crit_edge7
  br label %imx8mq_reset_set.exit

imx8mq_reset_set.exit:                            ; preds = %sw.bb3.i, %entry.imx8mq_reset_set.exit_crit_edge
  %value.0.i = phi i32 [ 0, %sw.bb3.i ], [ %3, %entry.imx8mq_reset_set.exit_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.imx7_src_signal, ptr %1, i32 %id
  %regmap.i.i = getelementptr inbounds %struct.imx7_src, ptr %rcdev, i32 0, i32 1
  %5 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i.i, align 4
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %8, i32 noundef %3, i32 noundef %value.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret i32 %call.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8mq_reset_deassert(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %signals.i = getelementptr inbounds %struct.imx7_src, ptr %rcdev, i32 0, i32 2
  %0 = zext i32 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %id, label %entry.imx8mq_reset_set.exit_crit_edge [
    i32 26, label %entry.sw.bb.i_crit_edge
    i32 34, label %entry.sw.bb.i_crit_edge1
    i32 28, label %entry.sw.bb3.i_crit_edge
    i32 36, label %entry.sw.bb3.i_crit_edge2
    i32 25, label %entry.sw.bb3.i_crit_edge3
    i32 24, label %entry.sw.bb3.i_crit_edge4
    i32 23, label %entry.sw.bb3.i_crit_edge5
    i32 22, label %entry.sw.bb3.i_crit_edge6
    i32 21, label %entry.sw.bb3.i_crit_edge7
    i32 52, label %entry.sw.bb3.i_crit_edge8
  ]

entry.sw.bb3.i_crit_edge8:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i

entry.sw.bb3.i_crit_edge7:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i

entry.sw.bb3.i_crit_edge6:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i

entry.sw.bb3.i_crit_edge5:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i

entry.sw.bb3.i_crit_edge4:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i

entry.sw.bb3.i_crit_edge3:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i

entry.sw.bb3.i_crit_edge2:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i

entry.sw.bb3.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i

entry.sw.bb.i_crit_edge1:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

entry.sw.bb.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

entry.imx8mq_reset_set.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %imx8mq_reset_set.exit

sw.bb.i:                                          ; preds = %entry.sw.bb.i_crit_edge, %entry.sw.bb.i_crit_edge1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 2147480) #5
  br label %imx8mq_reset_set.exit

sw.bb3.i:                                         ; preds = %entry.sw.bb3.i_crit_edge, %entry.sw.bb3.i_crit_edge2, %entry.sw.bb3.i_crit_edge3, %entry.sw.bb3.i_crit_edge4, %entry.sw.bb3.i_crit_edge5, %entry.sw.bb3.i_crit_edge6, %entry.sw.bb3.i_crit_edge7, %entry.sw.bb3.i_crit_edge8
  %2 = ptrtoint ptr %signals.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %signals.i, align 4
  %bit1.i = getelementptr %struct.imx7_src_signal, ptr %3, i32 %id, i32 1
  %4 = ptrtoint ptr %bit1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bit1.i, align 4
  br label %imx8mq_reset_set.exit

imx8mq_reset_set.exit:                            ; preds = %sw.bb3.i, %sw.bb.i, %entry.imx8mq_reset_set.exit_crit_edge
  %value.0.i = phi i32 [ 0, %entry.imx8mq_reset_set.exit_crit_edge ], [ %5, %sw.bb3.i ], [ 0, %sw.bb.i ]
  %6 = ptrtoint ptr %signals.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %signals.i, align 4
  %arrayidx.i.i = getelementptr %struct.imx7_src_signal, ptr %7, i32 %id
  %regmap.i.i = getelementptr inbounds %struct.imx7_src, ptr %rcdev, i32 0, i32 1
  %8 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i.i, align 4
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 4
  %bit.i.i = getelementptr %struct.imx7_src_signal, ptr %7, i32 %id, i32 1
  %12 = ptrtoint ptr %bit.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bit.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %value.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret i32 %call.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8mp_reset_assert(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %signals.i = getelementptr inbounds %struct.imx7_src, ptr %rcdev, i32 0, i32 2
  %0 = ptrtoint ptr %signals.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %signals.i, align 4
  %bit1.i = getelementptr %struct.imx7_src_signal, ptr %1, i32 %id, i32 1
  %2 = ptrtoint ptr %bit1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bit1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %id)
  %cond = icmp eq i32 %id, 26
  %spec.select = select i1 %cond, i32 0, i32 %3
  %arrayidx.i.i = getelementptr %struct.imx7_src_signal, ptr %1, i32 %id
  %regmap.i.i = getelementptr inbounds %struct.imx7_src, ptr %rcdev, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i.i, align 4
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %7, i32 noundef %3, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret i32 %call.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx8mp_reset_deassert(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %signals.i = getelementptr inbounds %struct.imx7_src, ptr %rcdev, i32 0, i32 2
  %0 = zext i32 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %id, label %entry.imx8mp_reset_set.exit_crit_edge [
    i32 24, label %sw.bb.i
    i32 26, label %sw.bb3.i
  ]

entry.imx8mp_reset_set.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %imx8mp_reset_set.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 2147480) #5
  br label %imx8mp_reset_set.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %signals.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %signals.i, align 4
  %bit1.i = getelementptr %struct.imx7_src_signal, ptr %3, i32 26, i32 1
  %4 = ptrtoint ptr %bit1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bit1.i, align 4
  br label %imx8mp_reset_set.exit

imx8mp_reset_set.exit:                            ; preds = %sw.bb3.i, %sw.bb.i, %entry.imx8mp_reset_set.exit_crit_edge
  %value.0.i = phi i32 [ 0, %entry.imx8mp_reset_set.exit_crit_edge ], [ %5, %sw.bb3.i ], [ 0, %sw.bb.i ]
  %6 = ptrtoint ptr %signals.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %signals.i, align 4
  %arrayidx.i.i = getelementptr %struct.imx7_src_signal, ptr %7, i32 %id
  %regmap.i.i = getelementptr inbounds %struct.imx7_src, ptr %rcdev, i32 0, i32 1
  %8 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i.i, align 4
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 4
  %bit.i.i = getelementptr %struct.imx7_src_signal, ptr %7, i32 %id, i32 1
  %12 = ptrtoint ptr %bit.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bit.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %value.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret i32 %call.i.i.i
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !32, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__initcall__kmod_reset_imx7__170_402_imx7_reset_driver_init6, !1, !"__initcall__kmod_reset_imx7__170_402_imx7_reset_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/reset/reset-imx7.c", i32 402, i32 1}
!2 = !{ptr @__exitcall_imx7_reset_driver_exit, !1, !"__exitcall_imx7_reset_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author171, !4, !"__UNIQUE_ID_author171", i1 false, i1 false}
!4 = !{!"../drivers/reset/reset-imx7.c", i32 404, i32 1}
!5 = !{ptr @__UNIQUE_ID_description172, !6, !"__UNIQUE_ID_description172", i1 false, i1 false}
!6 = !{!"../drivers/reset/reset-imx7.c", i32 405, i32 1}
!7 = !{ptr @__UNIQUE_ID_file173, !8, !"__UNIQUE_ID_file173", i1 false, i1 false}
!8 = !{!"../drivers/reset/reset-imx7.c", i32 406, i32 1}
!9 = !{ptr @__UNIQUE_ID_license174, !8, !"__UNIQUE_ID_license174", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/reset/reset-imx7.c", i32 398, i32 12}
!12 = !{ptr @imx7_reset_driver, !13, !"imx7_reset_driver", i1 false, i1 false}
!13 = !{!"../drivers/reset/reset-imx7.c", i32 395, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/reset/reset-imx7.c", i32 364, i32 42}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/reset/reset-imx7.c", i32 374, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @imx7_reset_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @imx7_reset_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @imx7_reset_dt_ids, !25, !"imx7_reset_dt_ids", i1 false, i1 false}
!25 = !{!"../drivers/reset/reset-imx7.c", i32 387, i32 34}
!26 = !{ptr @variant_imx7, !27, !"variant_imx7", i1 false, i1 false}
!27 = !{!"../drivers/reset/reset-imx7.c", i32 128, i32 38}
!28 = !{ptr @imx7_src_signals, !29, !"imx7_src_signals", i1 false, i1 false}
!29 = !{!"../drivers/reset/reset-imx7.c", i32 57, i32 37}
!30 = !{ptr @variant_imx8mq, !31, !"variant_imx8mq", i1 false, i1 false}
!31 = !{!"../drivers/reset/reset-imx7.c", i32 264, i32 38}
!32 = !{ptr @imx8mq_src_signals, !33, !"imx8mq_src_signals", i1 false, i1 false}
!33 = !{!"../drivers/reset/reset-imx7.c", i32 161, i32 37}
!34 = !{ptr @variant_imx8mp, !35, !"variant_imx8mp", i1 false, i1 false}
!35 = !{!"../drivers/reset/reset-imx7.c", i32 351, i32 38}
!36 = !{ptr @imx8mp_src_signals, !37, !"imx8mp_src_signals", i1 false, i1 false}
!37 = !{!"../drivers/reset/reset-imx7.c", i32 273, i32 37}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
