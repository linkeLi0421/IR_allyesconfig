; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-qcom-cci.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-qcom-cci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cci_data = type { i32, %struct.i2c_adapter_quirks, [2 x i16], i32, [3 x %struct.hw_params] }
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
%struct.hw_params = type { i16, i16, i16, i16, i16, i16, i16, i8, i16, i16 }
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
%struct.cci = type { ptr, ptr, i32, ptr, ptr, i32, [2 x %struct.cci_master] }
%struct.cci_master = type { %struct.i2c_adapter, i16, i8, i32, %struct.completion, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_i2c_qcom_cci__290_793_qcom_cci_driver_init6 = internal global ptr @qcom_cci_driver_init, section ".initcall6.init", align 4
@qcom_cci_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cci_probe, ptr @cci_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cci_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qcom_cci_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_qcom_cci_driver_exit = internal global ptr @qcom_cci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description291 = internal constant [66 x i8] c"i2c_qcom_cci.description=Qualcomm Camera Control Interface driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [57 x i8] c"i2c_qcom_cci.author=Todor Tomov <todor.tomov@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [59 x i8] c"i2c_qcom_cci.author=Loic Poulain <loic.poulain@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [50 x i8] c"i2c_qcom_cci.file=drivers/i2c/busses/i2c-qcom-cci\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [28 x i8] c"i2c_qcom_cci.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i2c-qcom-cci\00", [19 x i8] zeroinitializer }, align 32
@cci_dt_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8916-cci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cci_v1_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,msm8996-cci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cci_v2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdm845-cci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cci_v2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8250-cci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cci_v2_data }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@qcom_cci_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @cci_suspend, ptr @cci_resume, ptr @cci_suspend, ptr @cci_resume, ptr @cci_suspend, ptr @cci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cci_suspend_runtime, ptr @cci_resume_runtime, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@cci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 548, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%pOF invalid 'reg' property\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cci_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/i2c/busses/i2c-qcom-cci.c\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cci_probe._entry_ptr = internal global ptr @cci_probe._entry, section ".printk_index", align 4
@cci_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 554, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%pOF invalid 'reg' value: %u (max is %u)\00", [55 x i8] zeroinitializer }, align 32
@cci_probe._entry_ptr.9 = internal global ptr @cci_probe._entry.7, section ".printk_index", align 4
@cci_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @cci_xfer, ptr null, ptr null, ptr null, ptr @cci_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Qualcomm-CCI\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@cci_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 592, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get clocks %d\0A\00", [39 x i8] zeroinitializer }, align 32
@cci_probe._entry_ptr.14 = internal global ptr @cci_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cci\00", [28 x i8] zeroinitializer }, align 32
@cci_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 610, ptr @.str.18, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Found %lu cci clk rate while %lu was expected\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cci_probe._entry_ptr.19 = internal global ptr @cci_probe._entry.16, section ".printk_index", align 4
@cci_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 626, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"request_irq failed, ret: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@cci_probe._entry_ptr.22 = internal global ptr @cci_probe._entry.20, section ".printk_index", align 4
@cci_probe.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.3, ptr @.str.4, ptr @.str.24, i8 0, i8 -99, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i2c_qcom_cci\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CCI HW version = 0x%08x\00", [40 x i8] zeroinitializer }, align 32
@cci_i2c_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 365, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"words read = %d, words expected = %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cci_i2c_read\00", [19 x i8] zeroinitializer }, align 32
@cci_i2c_read._entry_ptr = internal global ptr @cci_i2c_read._entry, section ".printk_index", align 4
@cci_run_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 309, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"master %d queue %d timeout\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cci_run_queue\00", [18 x i8] zeroinitializer }, align 32
@cci_run_queue._entry_ptr = internal global ptr @cci_run_queue._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@cci_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.4, i32 243, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CCI reset timeout\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cci_reset\00", [22 x i8] zeroinitializer }, align 32
@cci_reset._entry_ptr = internal global ptr @cci_reset._entry, section ".printk_index", align 4
@cci_halt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 214, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unsupported master idx (%u)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cci_halt\00", [23 x i8] zeroinitializer }, align 32
@cci_halt._entry_ptr = internal global ptr @cci_halt._entry, section ".printk_index", align 4
@cci_halt._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.4, i32 225, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CCI halt timeout\0A\00", [46 x i8] zeroinitializer }, align 32
@cci_halt._entry_ptr.36 = internal global ptr @cci_halt._entry.34, section ".printk_index", align 4
@cci_v1_data = internal constant { %struct.cci_data, [56 x i8] } { %struct.cci_data { i32 1, %struct.i2c_adapter_quirks { i64 0, i32 0, i16 10, i16 12, i16 0, i16 0 }, [2 x i16] [i16 64, i16 16], i32 19200000, [3 x %struct.hw_params] [%struct.hw_params { i16 78, i16 114, i16 28, i16 28, i16 10, i16 77, i16 118, i8 0, i16 6, i16 1 }, %struct.hw_params { i16 20, i16 28, i16 21, i16 21, i16 13, i16 18, i16 32, i8 0, i16 6, i16 3 }, %struct.hw_params zeroinitializer] }, [56 x i8] zeroinitializer }, align 32
@cci_v2_data = internal constant { %struct.cci_data, [56 x i8] } { %struct.cci_data { i32 2, %struct.i2c_adapter_quirks { i64 0, i32 0, i16 11, i16 12, i16 0, i16 0 }, [2 x i16] [i16 64, i16 16], i32 37500000, [3 x %struct.hw_params] [%struct.hw_params { i16 201, i16 174, i16 204, i16 231, i16 22, i16 162, i16 227, i8 0, i16 6, i16 3 }, %struct.hw_params { i16 38, i16 56, i16 40, i16 40, i16 22, i16 35, i16 62, i8 0, i16 6, i16 3 }, %struct.hw_params { i16 16, i16 22, i16 17, i16 18, i16 16, i16 15, i16 24, i8 0, i16 3, i16 3 }] }, [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 400000, i64 1000000]
@___asan_gen_.37 = private unnamed_addr constant [16 x i8] c"qcom_cci_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 783, i32 31 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 787, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant [13 x i8] c"cci_dt_match\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 774, i32 34 }
@___asan_gen_.46 = private unnamed_addr constant [12 x i8] c"qcom_cci_pm\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 518, i32 32 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 546, i32 37 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 548, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 553, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant [9 x i8] c"cci_algo\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 465, i32 35 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 567, i32 41 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 570, i32 37 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 592, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 599, i32 34 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 609, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 626, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 631, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 364, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 308, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 87, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 243, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 214, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 225, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant [12 x i8] c"cci_v1_data\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 694, i32 30 }
@___asan_gen_.166 = private unnamed_addr constant [12 x i8] c"cci_v2_data\00", align 1
@___asan_gen_.167 = private constant [37 x i8] c"../drivers/i2c/busses/i2c-qcom-cci.c\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 728, i32 30 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_qcom_cci_driver_exit, ptr @__initcall__kmod_i2c_qcom_cci__290_793_qcom_cci_driver_init6, ptr @cci_halt._entry, ptr @cci_halt._entry.34, ptr @cci_halt._entry_ptr, ptr @cci_halt._entry_ptr.36, ptr @cci_i2c_read._entry, ptr @cci_i2c_read._entry_ptr, ptr @cci_probe._entry, ptr @cci_probe._entry.12, ptr @cci_probe._entry.16, ptr @cci_probe._entry.20, ptr @cci_probe._entry.7, ptr @cci_probe._entry_ptr, ptr @cci_probe._entry_ptr.14, ptr @cci_probe._entry_ptr.19, ptr @cci_probe._entry_ptr.22, ptr @cci_probe._entry_ptr.9, ptr @cci_reset._entry, ptr @cci_reset._entry_ptr, ptr @cci_run_queue._entry, ptr @cci_run_queue._entry_ptr, ptr @qcom_cci_driver_exit, ptr @qcom_cci_driver, ptr @.str, ptr @cci_dt_match, ptr @qcom_cci_pm, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @cci_algo, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @init_completion.__key, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @cci_v1_data, ptr @cci_v2_data], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_cci_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cci_dt_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_cci_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cci_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cci_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cci_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cci_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cci_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cci_i2c_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cci_run_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cci_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cci_halt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cci_halt._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cci_v1_data to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cci_v2_data to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_cci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @qcom_cci_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qcom_cci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @qcom_cci_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cci_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !99
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 2888, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup214_crit_edge, label %if.end

entry.cleanup214_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup214

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %call.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call3 = tail call ptr @device_get_match_data(ptr noundef %dev1) #8
  %data = getelementptr inbounds %struct.cci, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %data, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %if.end.cleanup214_crit_edge, label %if.end7

if.end.cleanup214_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup214

if.end7:                                          ; preds = %if.end
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call8 = tail call ptr @of_get_next_available_child(ptr noundef %5, ptr noundef null) #8
  %cmp.not347 = icmp eq ptr %call8, null
  br i1 %cmp.not347, label %if.end7.for.end_crit_edge, label %if.end7.for.body_crit_edge

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  br label %for.body

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end7.for.body_crit_edge
  %child.0348 = phi ptr [ %call75, %cleanup.for.body_crit_edge ], [ %call8, %if.end7.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #8
  %6 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %idx, align 4, !annotation !99
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0348, ptr noundef nonnull @.str.1, ptr noundef nonnull %idx, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool10.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool10.not, label %if.end12, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef nonnull %child.0348) #11
  br label %cleanup

if.end12:                                         ; preds = %for.body
  %7 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idx, align 4
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %12)
  %cmp14.not = icmp ult i32 %8, %12
  br i1 %cmp14.not, label %if.end21, label %do.end18

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add i32 %12, -1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, ptr noundef nonnull %child.0348, i32 noundef %8, i32 noundef %sub) #11
  br label %cleanup

if.end21:                                         ; preds = %if.end12
  %quirks = getelementptr inbounds %struct.cci_data, ptr %10, i32 0, i32 1
  %quirks23 = getelementptr %struct.cci, ptr %call.i, i32 0, i32 6, i32 %8, i32 0, i32 17
  %13 = ptrtoint ptr %quirks23 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %quirks, ptr %quirks23, align 8
  %algo = getelementptr %struct.cci, ptr %call.i, i32 0, i32 6, i32 %8, i32 0, i32 2
  %14 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @cci_algo, ptr %algo, align 8
  %parent = getelementptr %struct.cci, ptr %call.i, i32 0, i32 6, i32 %8, i32 0, i32 9, i32 1
  %15 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev1, ptr %parent, align 8
  %call31 = call ptr @of_node_get(ptr noundef nonnull %child.0348) #8
  %16 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %idx, align 4
  %of_node36 = getelementptr %struct.cci, ptr %call.i, i32 0, i32 6, i32 %17, i32 0, i32 9, i32 27
  %18 = ptrtoint ptr %of_node36 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call31, ptr %of_node36, align 8
  %conv = trunc i32 %17 to i16
  %master39 = getelementptr %struct.cci, ptr %call.i, i32 0, i32 6, i32 %17, i32 1
  %19 = ptrtoint ptr %master39 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv, ptr %master39, align 8
  %cci42 = getelementptr %struct.cci, ptr %call.i, i32 0, i32 6, i32 %17, i32 5
  %20 = ptrtoint ptr %cci42 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %cci42, align 8
  %arrayidx44 = getelementptr %struct.cci, ptr %call.i, i32 0, i32 6, i32 %17
  %driver_data.i.i330 = getelementptr inbounds %struct.i2c_adapter, ptr %arrayidx44, i32 0, i32 9, i32 8
  %21 = ptrtoint ptr %driver_data.i.i330 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx44, ptr %driver_data.i.i330, align 4
  %name = getelementptr %struct.cci, ptr %call.i, i32 0, i32 6, i32 %17, i32 0, i32 12
  %22 = call ptr @memcpy(ptr %name, ptr @.str.10, i32 13)
  %mode = getelementptr %struct.cci, ptr %call.i, i32 0, i32 6, i32 %17, i32 2
  %23 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %mode, align 2
  %call.i.i331 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0348, ptr noundef nonnull @.str.11, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i331)
  %tobool55.not = icmp sgt i32 %call.i.i331, -1
  br i1 %tobool55.not, label %if.then56, label %if.end21.if.end71_crit_edge

if.end21.if.end71_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then56:                                        ; preds = %if.end21
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %25, label %if.then56.if.end71_crit_edge [
    i32 400000, label %if.then56.if.end71.sink.split_crit_edge
    i32 1000000, label %if.then65
  ]

if.then56.if.end71.sink.split_crit_edge:          ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71.sink.split

if.then56.if.end71_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then65:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71.sink.split

if.end71.sink.split:                              ; preds = %if.then65, %if.then56.if.end71.sink.split_crit_edge
  %.sink = phi i8 [ 2, %if.then65 ], [ 1, %if.then56.if.end71.sink.split_crit_edge ]
  %27 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %27)
  %.sink362 = load i32, ptr %idx, align 4
  %mode62 = getelementptr %struct.cci, ptr %call.i, i32 0, i32 6, i32 %.sink362, i32 2
  %28 = ptrtoint ptr %mode62 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %.sink, ptr %mode62, align 2
  br label %if.end71

if.end71:                                         ; preds = %if.end71.sink.split, %if.then56.if.end71_crit_edge, %if.end21.if.end71_crit_edge
  %29 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %idx, align 4
  %irq_complete = getelementptr %struct.cci, ptr %call.i, i32 0, i32 6, i32 %30, i32 4
  %31 = ptrtoint ptr %irq_complete to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %irq_complete, align 4
  %wait.i = getelementptr %struct.cci, ptr %call.i, i32 0, i32 6, i32 %30, i32 4, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @init_completion.__key) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %do.end18, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #8
  %32 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %of_node, align 8
  %call75 = call ptr @of_get_next_available_child(ptr noundef %33, ptr noundef nonnull %child.0348) #8
  %cmp.not = icmp eq ptr %call75, null
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end7.for.end_crit_edge
  %call76 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %call77 = call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call76) #8
  %base = getelementptr inbounds %struct.cci, ptr %call.i, i32 0, i32 1
  %34 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call77, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call77, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then80, label %if.end83

if.then80:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %call77 to i32
  br label %cleanup214

if.end83:                                         ; preds = %for.end
  %clocks = getelementptr inbounds %struct.cci, ptr %call.i, i32 0, i32 4
  %call84 = call i32 @devm_clk_bulk_get_all(ptr noundef %dev1, ptr noundef %clocks) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call84)
  %cmp85 = icmp slt i32 %call84, 1
  br i1 %cmp85, label %do.end90, label %for.body96.lr.ph

do.end90:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %call84) #11
  br label %cleanup214

for.body96.lr.ph:                                 ; preds = %if.end83
  %nclocks = getelementptr inbounds %struct.cci, ptr %call.i, i32 0, i32 5
  %36 = ptrtoint ptr %nclocks to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call84, ptr %nclocks, align 4
  %37 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %clocks, align 8
  br label %for.body96

for.body96:                                       ; preds = %for.inc106.for.body96_crit_edge, %for.body96.lr.ph
  %i.0351 = phi i32 [ 0, %for.body96.lr.ph ], [ %inc, %for.inc106.for.body96_crit_edge ]
  %arrayidx98 = getelementptr %struct.clk_bulk_data, ptr %38, i32 %i.0351
  %39 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx98, align 4
  %call99 = call i32 @strcmp(ptr noundef %40, ptr noundef nonnull dereferenceable(4) @.str.15) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.then101, label %for.inc106

if.then101:                                       ; preds = %for.body96
  call void @__sanitizer_cov_trace_pc() #10
  %clk = getelementptr %struct.clk_bulk_data, ptr %38, i32 %i.0351, i32 1
  %41 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %clk, align 4
  %call104 = call i32 @clk_get_rate(ptr noundef %42) #8
  br label %for.end107

for.inc106:                                       ; preds = %for.body96
  %inc = add nuw nsw i32 %i.0351, 1
  %exitcond.not = icmp eq i32 %inc, %call84
  br i1 %exitcond.not, label %for.inc106.for.end107_crit_edge, label %for.inc106.for.body96_crit_edge

for.inc106.for.body96_crit_edge:                  ; preds = %for.inc106
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body96

for.inc106.for.end107_crit_edge:                  ; preds = %for.inc106
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end107

for.end107:                                       ; preds = %for.inc106.for.end107_crit_edge, %if.then101
  %cci_clk_rate.0 = phi i32 [ %call104, %if.then101 ], [ 0, %for.inc106.for.end107_crit_edge ]
  %43 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data, align 4
  %cci_clk_rate109 = getelementptr inbounds %struct.cci_data, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %cci_clk_rate109 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cci_clk_rate109, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cci_clk_rate.0, i32 %46)
  %cmp110.not = icmp eq i32 %cci_clk_rate.0, %46
  br i1 %cmp110.not, label %for.end107.if.end118_crit_edge, label %do.end115

for.end107.if.end118_crit_edge:                   ; preds = %for.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

do.end115:                                        ; preds = %for.end107
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %cci_clk_rate.0, i32 noundef %46) #11
  br label %if.end118

if.end118:                                        ; preds = %do.end115, %for.end107.if.end118_crit_edge
  %47 = ptrtoint ptr %nclocks to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nclocks, align 4
  %49 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %clocks, align 8
  %call.i.i332 = call i32 @clk_bulk_prepare(i32 noundef %48, ptr noundef %50) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i332)
  %tobool.not.i.i = icmp eq i32 %call.i.i332, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end118.cci_enable_clocks.exit_crit_edge

if.end118.cci_enable_clocks.exit_crit_edge:       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  br label %cci_enable_clocks.exit

if.end.i.i:                                       ; preds = %if.end118
  %call1.i.i = call i32 @clk_bulk_enable(i32 noundef %48, ptr noundef %50) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end123_crit_edge, label %if.then3.i.i

if.end.i.i.if.end123_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end123

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @clk_bulk_unprepare(i32 noundef %48, ptr noundef %50) #8
  br label %cci_enable_clocks.exit

cci_enable_clocks.exit:                           ; preds = %if.then3.i.i, %if.end118.cci_enable_clocks.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i332, %if.end118.cci_enable_clocks.exit_crit_edge ], [ %call1.i.i, %if.then3.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp120 = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp120, label %cci_enable_clocks.exit.cleanup214_crit_edge, label %cci_enable_clocks.exit.if.end123_crit_edge

cci_enable_clocks.exit.if.end123_crit_edge:       ; preds = %cci_enable_clocks.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end123

cci_enable_clocks.exit.cleanup214_crit_edge:      ; preds = %cci_enable_clocks.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup214

if.end123:                                        ; preds = %cci_enable_clocks.exit.if.end123_crit_edge, %if.end.i.i.if.end123_crit_edge
  %call124 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %cmp125 = icmp slt i32 %call124, 0
  br i1 %cmp125, label %if.end123.disable_clocks_crit_edge, label %if.end128

if.end123.disable_clocks_crit_edge:               ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_clocks

if.end128:                                        ; preds = %if.end123
  %irq = getelementptr inbounds %struct.cci, ptr %call.i, i32 0, i32 2
  %51 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call124, ptr %irq, align 8
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %52 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %53, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end128.dev_name.exit_crit_edge

if.end128.dev_name.exit_crit_edge:                ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end128.dev_name.exit_crit_edge
  %retval.0.i333 = phi ptr [ %55, %if.end.i ], [ %53, %if.end128.dev_name.exit_crit_edge ]
  %call.i334 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call124, ptr noundef nonnull @cci_isr, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i333, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i334)
  %cmp132 = icmp slt i32 %call.i334, 0
  br i1 %cmp132, label %do.end137, label %if.end138

do.end137:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %call.i334) #11
  br label %disable_clocks

if.end138:                                        ; preds = %dev_name.exit
  %56 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base, align 4
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #8, !srcloc !100
  %59 = call i32 @llvm.bswap.i32(i32 %58)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !101
  %60 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %val, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cci_probe.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cci_probe, %do.end152)) #8
          to label %if.then149 [label %do.end152], !srcloc !102

if.then149:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %val, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cci_probe.__UNIQUE_ID_ddebug289, ptr noundef %dev1, ptr noundef nonnull @.str.24, i32 noundef %62) #8
  br label %do.end152

do.end152:                                        ; preds = %if.then149, %if.end138
  %irq_complete.i = getelementptr inbounds %struct.cci, ptr %call.i, i32 0, i32 6, i32 0, i32 4
  %63 = ptrtoint ptr %irq_complete.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %irq_complete.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !103
  call void @arm_heavy_mb() #8
  %64 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %65, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -135040241) #8, !srcloc !104
  %call4.i = call i32 @wait_for_completion_timeout(ptr noundef %irq_complete.i, i32 noundef 10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i335 = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i335, label %cci_reset.exit.thread, label %if.end157

cci_reset.exit.thread:                            ; preds = %do.end152
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.30) #11
  br label %error

if.end157:                                        ; preds = %do.end152
  call fastcc void @cci_init(ptr noundef nonnull %call.i)
  %68 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %data, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %69, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp166352.not = icmp eq i32 %71, 0
  br i1 %cmp166352.not, label %if.end157.for.end190_crit_edge, label %if.end157.for.body168_crit_edge

if.end157.for.body168_crit_edge:                  ; preds = %if.end157
  br label %for.body168

if.end157.for.end190_crit_edge:                   ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end190

for.body168:                                      ; preds = %for.inc188.for.body168_crit_edge, %if.end157.for.body168_crit_edge
  %i.1353 = phi i32 [ %inc189, %for.inc188.for.body168_crit_edge ], [ 0, %if.end157.for.body168_crit_edge ]
  %cci171 = getelementptr %struct.cci, ptr %call.i, i32 0, i32 6, i32 %i.1353, i32 5
  %72 = ptrtoint ptr %cci171 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cci171, align 8
  %tobool172.not = icmp eq ptr %73, null
  br i1 %tobool172.not, label %for.body168.for.inc188_crit_edge, label %if.end174

for.body168.for.inc188_crit_edge:                 ; preds = %for.body168
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc188

if.end174:                                        ; preds = %for.body168
  %arrayidx170 = getelementptr %struct.cci, ptr %call.i, i32 0, i32 6, i32 %i.1353
  %call178 = call i32 @i2c_add_adapter(ptr noundef %arrayidx170) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178)
  %cmp179 = icmp slt i32 %call178, 0
  br i1 %cmp179, label %if.then181, label %if.end174.for.inc188_crit_edge

if.end174.for.inc188_crit_edge:                   ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc188

if.then181:                                       ; preds = %if.end174
  %of_node186 = getelementptr inbounds %struct.i2c_adapter, ptr %arrayidx170, i32 0, i32 9, i32 27
  %74 = ptrtoint ptr %of_node186 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %of_node186, align 8
  call void @of_node_put(ptr noundef %75) #8
  %i.2355 = add i32 %i.1353, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.2355)
  %cmp193356 = icmp sgt i32 %i.2355, -1
  br i1 %cmp193356, label %if.then181.for.body195_crit_edge, label %if.then181.error_crit_edge

if.then181.error_crit_edge:                       ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.then181.for.body195_crit_edge:                 ; preds = %if.then181
  br label %for.body195

for.inc188:                                       ; preds = %if.end174.for.inc188_crit_edge, %for.body168.for.inc188_crit_edge
  %inc189 = add nuw i32 %i.1353, 1
  %76 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 8
  %cmp166 = icmp ult i32 %inc189, %79
  br i1 %cmp166, label %for.inc188.for.body168_crit_edge, label %for.inc188.for.end190_crit_edge

for.inc188.for.end190_crit_edge:                  ; preds = %for.inc188
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end190

for.inc188.for.body168_crit_edge:                 ; preds = %for.inc188
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body168

for.end190:                                       ; preds = %for.inc188.for.end190_crit_edge, %if.end157.for.end190_crit_edge
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 1000) #8
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #8
  %call.i337 = call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #8
  call void @pm_runtime_enable(ptr noundef %dev1) #8
  br label %cleanup214

for.body195:                                      ; preds = %for.inc210.for.body195_crit_edge, %if.then181.for.body195_crit_edge
  %i.2357 = phi i32 [ %i.2, %for.inc210.for.body195_crit_edge ], [ %i.2355, %if.then181.for.body195_crit_edge ]
  %cci198 = getelementptr %struct.cci, ptr %call.i, i32 0, i32 6, i32 %i.2357, i32 5
  %80 = ptrtoint ptr %cci198 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cci198, align 8
  %tobool199.not = icmp eq ptr %81, null
  br i1 %tobool199.not, label %for.body195.for.inc210_crit_edge, label %if.then200

for.body195.for.inc210_crit_edge:                 ; preds = %for.body195
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc210

if.then200:                                       ; preds = %for.body195
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx197 = getelementptr %struct.cci, ptr %call.i, i32 0, i32 6, i32 %i.2357
  call void @i2c_del_adapter(ptr noundef %arrayidx197) #8
  %of_node208 = getelementptr inbounds %struct.i2c_adapter, ptr %arrayidx197, i32 0, i32 9, i32 27
  %82 = ptrtoint ptr %of_node208 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %of_node208, align 8
  call void @of_node_put(ptr noundef %83) #8
  br label %for.inc210

for.inc210:                                       ; preds = %if.then200, %for.body195.for.inc210_crit_edge
  %i.2 = add i32 %i.2357, -1
  %cmp193 = icmp sgt i32 %i.2, -1
  br i1 %cmp193, label %for.inc210.for.body195_crit_edge, label %for.inc210.error_crit_edge

for.inc210.error_crit_edge:                       ; preds = %for.inc210
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

for.inc210.for.body195_crit_edge:                 ; preds = %for.inc210
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body195

error:                                            ; preds = %for.inc210.error_crit_edge, %if.then181.error_crit_edge, %cci_reset.exit.thread
  %ret.0 = phi i32 [ -110, %cci_reset.exit.thread ], [ %call178, %if.then181.error_crit_edge ], [ %call178, %for.inc210.error_crit_edge ]
  %84 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %irq, align 8
  call void @disable_irq(i32 noundef %85) #8
  br label %disable_clocks

disable_clocks:                                   ; preds = %error, %do.end137, %if.end123.disable_clocks_crit_edge
  %ret.1 = phi i32 [ %call124, %if.end123.disable_clocks_crit_edge ], [ %call.i334, %do.end137 ], [ %ret.0, %error ]
  %86 = ptrtoint ptr %nclocks to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %nclocks, align 4
  %88 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %clocks, align 8
  call void @clk_bulk_disable(i32 noundef %87, ptr noundef %89) #8
  call void @clk_bulk_unprepare(i32 noundef %87, ptr noundef %89) #8
  br label %cleanup214

cleanup214:                                       ; preds = %disable_clocks, %for.end190, %cci_enable_clocks.exit.cleanup214_crit_edge, %do.end90, %if.then80, %if.end.cleanup214_crit_edge, %entry.cleanup214_crit_edge
  %retval.0 = phi i32 [ %35, %if.then80 ], [ %call84, %do.end90 ], [ %ret.1, %disable_clocks ], [ 0, %for.end190 ], [ -12, %entry.cleanup214_crit_edge ], [ -2, %if.end.cleanup214_crit_edge ], [ %retval.0.i.i, %cci_enable_clocks.exit.cleanup214_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cci_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %data = getelementptr inbounds %struct.cci, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp23.not = icmp eq i32 %5, 0
  br i1 %cmp23.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %base.i = getelementptr inbounds %struct.cci, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %cci_halt.exit.for.body_crit_edge, %for.body.lr.ph
  %i.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cci_halt.exit.for.body_crit_edge ]
  %cci1 = getelementptr %struct.cci, ptr %1, i32 0, i32 6, i32 %i.024, i32 5
  %6 = ptrtoint ptr %cci1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cci1, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.cci, ptr %1, i32 0, i32 6, i32 %i.024
  tail call void @i2c_del_adapter(ptr noundef %arrayidx) #8
  %of_node = getelementptr inbounds %struct.i2c_adapter, ptr %arrayidx, i32 0, i32 9, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  tail call void @of_node_put(ptr noundef %9) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %conv.i = and i32 %i.024, 255
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv.i)
  %cmp.not.i = icmp ugt i32 %13, %conv.i
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.32, i32 noundef %conv.i) #11
  br label %cci_halt.exit

if.end.i:                                         ; preds = %if.end
  %shl.i = shl nuw i32 1, %conv.i
  %irq_complete.i = getelementptr %struct.cci, ptr %1, i32 0, i32 6, i32 %conv.i, i32 4
  %16 = ptrtoint ptr %irq_complete.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %irq_complete.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !105
  tail call void @arm_heavy_mb() #8
  %17 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #8
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %17) #8, !srcloc !104
  %call9.i = tail call i32 @wait_for_completion_timeout(ptr noundef %irq_complete.i, i32 noundef 10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool.not.i, label %do.end13.i, label %if.end.i.cci_halt.exit_crit_edge

if.end.i.cci_halt.exit_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cci_halt.exit

do.end13.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.35) #11
  br label %cci_halt.exit

cci_halt.exit:                                    ; preds = %do.end13.i, %if.end.i.cci_halt.exit_crit_edge, %do.end.i
  %inc = add nuw i32 %i.024, 1
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 8
  %cmp = icmp ult i32 %inc, %25
  br i1 %cmp, label %cci_halt.exit.for.body_crit_edge, label %cci_halt.exit.for.end_crit_edge

cci_halt.exit.for.end_crit_edge:                  ; preds = %cci_halt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cci_halt.exit.for.body_crit_edge:                 ; preds = %cci_halt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cci_halt.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %irq = getelementptr inbounds %struct.cci, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq, align 8
  tail call void @disable_irq(i32 noundef %27) #8
  %dev8 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev8, i1 noundef zeroext true) #8
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev8, i32 noundef 2) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get_all(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cci_isr(i32 noundef %irq, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.cci, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 3084
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !100
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 3080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %2) #8, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr8 = getelementptr i8, ptr %7, i32 3072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 16777216) #8, !srcloc !104
  %and = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end17_crit_edge, label %if.then

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then:                                          ; preds = %entry
  %irq_complete = getelementptr inbounds %struct.cci, ptr %dev, i32 0, i32 6, i32 0, i32 4
  tail call void @complete(ptr noundef %irq_complete) #8
  %master11 = getelementptr %struct.cci, ptr %dev, i32 0, i32 6, i32 1, i32 1
  %8 = ptrtoint ptr %master11 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %master11, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool12.not = icmp eq i16 %9, 0
  br i1 %tobool12.not, label %if.then.if.end17_crit_edge, label %if.then13

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %irq_complete16 = getelementptr %struct.cci, ptr %dev, i32 0, i32 6, i32 1, i32 4
  tail call void @complete(ptr noundef %irq_complete16) #8
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.then.if.end17_crit_edge, %entry.if.end17_crit_edge
  %ret.0 = phi i32 [ 0, %entry.if.end17_crit_edge ], [ 1, %if.then13 ], [ 1, %if.then.if.end17_crit_edge ]
  %10 = and i32 %3, 273
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %if.end17.if.end31_crit_edge, label %if.then25

if.end17.if.end31_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then25:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %status = getelementptr inbounds %struct.cci, ptr %dev, i32 0, i32 6, i32 0, i32 3
  %12 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %status, align 4
  %irq_complete30 = getelementptr inbounds %struct.cci, ptr %dev, i32 0, i32 6, i32 0, i32 4
  tail call void @complete(ptr noundef %irq_complete30) #8
  br label %if.end31

if.end31:                                         ; preds = %if.then25, %if.end17.if.end31_crit_edge
  %ret.1 = phi i32 [ 1, %if.then25 ], [ %ret.0, %if.end17.if.end31_crit_edge ]
  %13 = and i32 %3, 1118208
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %if.end31.if.end47_crit_edge, label %if.then40

if.end31.if.end47_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then40:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %status43 = getelementptr %struct.cci, ptr %dev, i32 0, i32 6, i32 1, i32 3
  %15 = ptrtoint ptr %status43 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %status43, align 4
  %irq_complete46 = getelementptr %struct.cci, ptr %dev, i32 0, i32 6, i32 1, i32 4
  tail call void @complete(ptr noundef %irq_complete46) #8
  br label %if.end47

if.end47:                                         ; preds = %if.then40, %if.end31.if.end47_crit_edge
  %ret.2 = phi i32 [ 1, %if.then40 ], [ %ret.1, %if.end31.if.end47_crit_edge ]
  %and48 = and i32 %3, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  %and54 = and i32 %3, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp ne i32 %and54, 0
  br i1 %tobool49.not, label %if.end53, label %if.end47.do.body72_crit_edge, !prof !109

if.end47.do.body72_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body72

if.end53:                                         ; preds = %if.end47
  %tobool49.not.not = xor i1 %tobool49.not, true
  %brmerge = select i1 %tobool55.not, i1 true, i1 %tobool49.not.not
  br i1 %brmerge, label %if.end53.do.body72_crit_edge, label %if.end53.if.end77_crit_edge, !prof !110

if.end53.if.end77_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.end53.do.body72_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body72

do.body72:                                        ; preds = %if.end53.do.body72_crit_edge, %if.end47.do.body72_crit_edge
  %reset.0187 = phi i32 [ 0, %if.end53.do.body72_crit_edge ], [ 1009, %if.end47.do.body72_crit_edge ]
  %ret.3186 = phi i32 [ %ret.2, %if.end53.do.body72_crit_edge ], [ 1, %if.end47.do.body72_crit_edge ]
  %.mux178 = select i1 %tobool55.not, i32 1, i32 %ret.3186, !prof !111
  %.mux = select i1 %tobool55.not, i32 258049, i32 %reset.0187, !prof !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !112
  tail call void @arm_heavy_mb() #8
  %16 = tail call i32 @llvm.bswap.i32(i32 %.mux)
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  %add.ptr76 = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 %16) #8, !srcloc !104
  br label %if.end77

if.end77:                                         ; preds = %do.body72, %if.end53.if.end77_crit_edge
  %ret.4176 = phi i32 [ %.mux178, %do.body72 ], [ %ret.2, %if.end53.if.end77_crit_edge ]
  %and78 = and i32 %3, 402656998
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.end77.if.end105_crit_edge, label %if.then86, !prof !109

if.end77.if.end105_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105

if.then86:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  %19 = and i32 %3, 402653184
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %20 = icmp eq i32 %19, 0
  %spec.select = select i1 %20, i32 -5, i32 -6
  %21 = getelementptr inbounds %struct.cci, ptr %dev, i32 0, i32 6, i32 0, i32 3
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %spec.select, ptr %21, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  %add.ptr104 = getelementptr i8, ptr %24, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104, i32 16777216) #8, !srcloc !104
  br label %if.end105

if.end105:                                        ; preds = %if.then86, %if.end77.if.end105_crit_edge
  %ret.5 = phi i32 [ 1, %if.then86 ], [ %ret.4176, %if.end77.if.end105_crit_edge ]
  %and106 = and i32 %3, 1626234880
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %if.end105.if.end134_crit_edge, label %if.then114, !prof !109

if.end105.if.end134_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end134

if.then114:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  %25 = and i32 %3, 1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %26 = icmp eq i32 %25, 0
  %spec.select189 = select i1 %26, i32 -5, i32 -6
  %27 = getelementptr %struct.cci, ptr %dev, i32 0, i32 6, i32 1, i32 3
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %spec.select189, ptr %27, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !114
  tail call void @arm_heavy_mb() #8
  %29 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base, align 4
  %add.ptr133 = getelementptr i8, ptr %30, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr133, i32 33554432) #8, !srcloc !104
  br label %if.end134

if.end134:                                        ; preds = %if.then114, %if.end105.if.end134_crit_edge
  %ret.6 = phi i32 [ 1, %if.then114 ], [ %ret.5, %if.end105.if.end134_crit_edge ]
  ret i32 %ret.6
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cci_init(ptr nocapture noundef readonly %cci) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !115
  tail call void @arm_heavy_mb() #8
  %base = getelementptr inbounds %struct.cci, ptr %cci, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 3076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -142606465) #8, !srcloc !104
  %data = getelementptr inbounds %struct.cci, ptr %cci, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1.not = icmp eq i32 %5, 0
  br i1 %cmp1.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %6 = phi ptr [ %47, %cleanup.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %i.02 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %cci4 = getelementptr %struct.cci, ptr %cci, i32 0, i32 6, i32 %i.02, i32 5
  %7 = ptrtoint ptr %cci4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cci4, align 8
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %mode1 = getelementptr %struct.cci, ptr %cci, i32 0, i32 6, i32 %i.02, i32 2
  %9 = ptrtoint ptr %mode1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mode1, align 2
  %conv = zext i8 %10 to i32
  %arrayidx6 = getelementptr %struct.cci_data, ptr %6, i32 0, i32 4, i32 %conv
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx6, align 2
  %conv7 = zext i16 %12 to i32
  %shl = shl nuw i32 %conv7, 16
  %tlow = getelementptr %struct.cci_data, ptr %6, i32 0, i32 4, i32 %conv, i32 1
  %13 = ptrtoint ptr %tlow to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %tlow, align 2
  %conv8 = zext i16 %14 to i32
  %or = or i32 %shl, %conv8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void @arm_heavy_mb() #8
  %15 = tail call i32 @llvm.bswap.i32(i32 %or)
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %mul = shl i32 %i.02, 8
  %add = add i32 %mul, 256
  %add.ptr13 = getelementptr i8, ptr %17, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %15) #8, !srcloc !104
  %tsu_sto = getelementptr %struct.cci_data, ptr %6, i32 0, i32 4, i32 %conv, i32 2
  %18 = ptrtoint ptr %tsu_sto to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %tsu_sto, align 2
  %conv14 = zext i16 %19 to i32
  %shl15 = shl nuw i32 %conv14, 16
  %tsu_sta = getelementptr %struct.cci_data, ptr %6, i32 0, i32 4, i32 %conv, i32 3
  %20 = ptrtoint ptr %tsu_sta to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %tsu_sta, align 2
  %conv16 = zext i16 %21 to i32
  %or17 = or i32 %shl15, %conv16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  tail call void @arm_heavy_mb() #8
  %22 = tail call i32 @llvm.bswap.i32(i32 %or17)
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  %add23 = add i32 %mul, 260
  %add.ptr24 = getelementptr i8, ptr %24, i32 %add23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %22) #8, !srcloc !104
  %thd_dat = getelementptr %struct.cci_data, ptr %6, i32 0, i32 4, i32 %conv, i32 4
  %25 = ptrtoint ptr %thd_dat to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %thd_dat, align 2
  %conv25 = zext i16 %26 to i32
  %shl26 = shl nuw i32 %conv25, 16
  %thd_sta = getelementptr %struct.cci_data, ptr %6, i32 0, i32 4, i32 %conv, i32 5
  %27 = ptrtoint ptr %thd_sta to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %thd_sta, align 2
  %conv27 = zext i16 %28 to i32
  %or28 = or i32 %shl26, %conv27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !118
  tail call void @arm_heavy_mb() #8
  %29 = tail call i32 @llvm.bswap.i32(i32 %or28)
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base, align 4
  %add34 = add i32 %mul, 264
  %add.ptr35 = getelementptr i8, ptr %31, i32 %add34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %29) #8, !srcloc !104
  %tbuf = getelementptr %struct.cci_data, ptr %6, i32 0, i32 4, i32 %conv, i32 6
  %32 = ptrtoint ptr %tbuf to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %tbuf, align 2
  %conv36 = zext i16 %33 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  tail call void @arm_heavy_mb() #8
  %34 = tail call i32 @llvm.bswap.i32(i32 %conv36)
  %35 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base, align 4
  %add42 = add i32 %mul, 268
  %add.ptr43 = getelementptr i8, ptr %36, i32 %add42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %34) #8, !srcloc !104
  %scl_stretch_en = getelementptr %struct.cci_data, ptr %6, i32 0, i32 4, i32 %conv, i32 7
  %37 = ptrtoint ptr %scl_stretch_en to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %scl_stretch_en, align 2
  %conv44 = zext i8 %38 to i32
  %shl45 = shl nuw nsw i32 %conv44, 8
  %trdhld = getelementptr %struct.cci_data, ptr %6, i32 0, i32 4, i32 %conv, i32 8
  %39 = ptrtoint ptr %trdhld to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %trdhld, align 2
  %conv46 = zext i16 %40 to i32
  %shl47 = shl nuw nsw i32 %conv46, 4
  %or48 = or i32 %shl47, %shl45
  %tsp = getelementptr %struct.cci_data, ptr %6, i32 0, i32 4, i32 %conv, i32 9
  %41 = ptrtoint ptr %tsp to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %tsp, align 2
  %conv49 = zext i16 %42 to i32
  %or50 = or i32 %or48, %conv49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %43 = tail call i32 @llvm.bswap.i32(i32 %or50)
  %44 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base, align 4
  %add56 = add i32 %mul, 272
  %add.ptr57 = getelementptr i8, ptr %45, i32 %add56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 %43) #8, !srcloc !104
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.02, 1
  %46 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 8
  %cmp = icmp ult i32 %inc, %49
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cci_xfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msgs, i32 noundef %num) #2 align 64 {
entry:
  %load.i = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cci1 = getelementptr inbounds %struct.cci_master, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %cci1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cci1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.err_crit_edge, label %for.cond.preheader

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp395 = icmp sgt i32 %num, 0
  br i1 %cmp395, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %master = getelementptr inbounds %struct.cci_master, ptr %1, i32 0, i32 1
  %base.i.i = getelementptr inbounds %struct.cci, ptr %3, i32 0, i32 1
  %data.i.i = getelementptr inbounds %struct.cci, ptr %3, i32 0, i32 3
  %6 = getelementptr inbounds i8, ptr %load.i, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.096 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.096
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.096, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %flags, align 2
  %9 = and i16 %8, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  %10 = ptrtoint ptr %master to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %master, align 8
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx, align 4
  %buf13 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.096, i32 3
  %14 = ptrtoint ptr %buf13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buf13, align 4
  %len15 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.096, i32 2
  %16 = ptrtoint ptr %len15 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %len15, align 4
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %for.body
  %conv.i = trunc i16 %11 to i8
  %18 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i, align 4
  %conv.mask.i = and i16 %11, 255
  %conv.i.i = zext i16 %conv.mask.i to i32
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 9
  %add3.i.i = add nuw nsw i32 %mul.i.i, 1028
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %add3.i.i
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !100
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  %22 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.cci_data, ptr %23, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx.i.i, align 2
  %conv5.i.i = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv5.i.i)
  %cmp.i.i = icmp eq i32 %21, %conv5.i.i
  br i1 %cmp.i.i, label %if.then4.err_crit_edge, label %if.end.i.i

if.then4.err_crit_edge:                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end.i.i:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end.i_crit_edge, label %cci_validate_queue.exit.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

cci_validate_queue.exit.i:                        ; preds = %if.end.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  tail call void @arm_heavy_mb() #8
  %26 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i.i, align 4
  %add15.i.i = add nuw nsw i32 %mul.i.i, 1040
  %add.ptr16.i.i = getelementptr i8, ptr %27, i32 %add15.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i.i, i32 134283264) #8, !srcloc !104
  %call17.i.i = tail call fastcc i32 @cci_run_queue(ptr noundef %3, i8 noundef zeroext %conv.i, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %cmp.i = icmp slt i32 %call17.i.i, 0
  br i1 %cmp.i, label %cci_validate_queue.exit.i.err_crit_edge, label %cci_validate_queue.exit.i.if.end.i_crit_edge

cci_validate_queue.exit.i.if.end.i_crit_edge:     ; preds = %cci_validate_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

cci_validate_queue.exit.i.err_crit_edge:          ; preds = %cci_validate_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end.i:                                         ; preds = %cci_validate_queue.exit.i.if.end.i_crit_edge, %if.end.i.i.if.end.i_crit_edge
  %28 = shl i16 %13, 4
  %29 = and i16 %28, 2032
  %30 = or i16 %29, 1
  %or.i = zext i16 %30 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  tail call void @arm_heavy_mb() #8
  %31 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %32 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i.i, align 4
  %conv3.i = zext i16 %11 to i32
  %mul.i = shl nuw nsw i32 %conv3.i, 9
  %add6.i = add nuw nsw i32 %mul.i, 1040
  %add.ptr.i = getelementptr i8, ptr %33, i32 %add6.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %31) #8, !srcloc !104
  %conv7.i = zext i16 %17 to i32
  %shl8.i = shl nuw nsw i32 %conv7.i, 4
  %or9.i = or i32 %shl8.i, 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  tail call void @arm_heavy_mb() #8
  %34 = tail call i32 @llvm.bswap.i32(i32 %or9.i) #8
  %35 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %36, i32 %add6.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %34) #8, !srcloc !104
  %call22.i = tail call fastcc i32 @cci_run_queue(ptr noundef %3, i8 noundef zeroext %conv.i, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %if.end.i.err_crit_edge, label %if.end26.i

if.end.i.err_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end26.i:                                       ; preds = %if.end.i
  %37 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i.i, align 4
  %mul29.i = shl nuw nsw i32 %conv3.i, 8
  %add30.i = add nuw nsw i32 %mul29.i, 284
  %add.ptr31.i = getelementptr i8, ptr %38, i32 %add30.i
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31.i) #8, !srcloc !100
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !125
  %div102.i = lshr i32 %conv7.i, 2
  %add35.i = add nuw nsw i32 %div102.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %add35.i)
  %cmp36.not.i = icmp eq i32 %40, %add35.i
  br i1 %cmp36.not.i, label %do.body43.preheader.i, label %do.end41.i

do.body43.preheader.i:                            ; preds = %if.end26.i
  %add49.i = add nuw nsw i32 %mul29.i, 280
  br label %do.body43.i

do.end41.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.25, i32 noundef %40, i32 noundef %add35.i) #11
  br label %err

do.body43.i:                                      ; preds = %do.cond65.i.do.body43.i_crit_edge, %do.body43.preheader.i
  %first.0.off0.i = phi i1 [ %first.1.off0.lcssa.i, %do.cond65.i.do.body43.i_crit_edge ], [ true, %do.body43.preheader.i ]
  %index.0.i = phi i32 [ %index.1.lcssa.i, %do.cond65.i.do.body43.i_crit_edge ], [ 0, %do.body43.preheader.i ]
  %words_read.0.i = phi i32 [ %dec.i, %do.cond65.i.do.body43.i_crit_edge ], [ %40, %do.body43.preheader.i ]
  %43 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i.i, align 4
  %add.ptr50.i = getelementptr i8, ptr %44, i32 %add49.i
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50.i) #8, !srcloc !100
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  call void @__sanitizer_cov_trace_cmp4(i32 %index.0.i, i32 %conv7.i)
  %cmp57111.i = icmp slt i32 %index.0.i, %conv7.i
  br i1 %cmp57111.i, label %for.body.preheader.i, label %do.body43.i.do.cond65.i_crit_edge

do.body43.i.do.cond65.i_crit_edge:                ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond65.i

for.body.preheader.i:                             ; preds = %do.body43.i
  br i1 %first.0.off0.i, label %for.body.preheader.i.for.inc.peel.i_crit_edge, label %if.end60.peel.i

for.body.preheader.i.for.inc.peel.i_crit_edge:    ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.peel.i

if.end60.peel.i:                                  ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv63.peel.i = trunc i32 %46 to i8
  %inc.peel.i = add nsw i32 %index.0.i, 1
  %arrayidx.peel.i = getelementptr i8, ptr %15, i32 %index.0.i
  %47 = ptrtoint ptr %arrayidx.peel.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv63.peel.i, ptr %arrayidx.peel.i, align 1
  br label %for.inc.peel.i

for.inc.peel.i:                                   ; preds = %if.end60.peel.i, %for.body.preheader.i.for.inc.peel.i_crit_edge
  %index.2.peel.i = phi i32 [ %inc.peel.i, %if.end60.peel.i ], [ %index.0.i, %for.body.preheader.i.for.inc.peel.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %index.2.peel.i, i32 %conv7.i)
  %cmp57.peel.i = icmp slt i32 %index.2.peel.i, %conv7.i
  br i1 %cmp57.peel.i, label %for.inc.i, label %for.inc.peel.i.do.cond65.i_crit_edge

for.inc.peel.i.do.cond65.i_crit_edge:             ; preds = %for.inc.peel.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond65.i

for.inc.i:                                        ; preds = %for.inc.peel.i
  %shr.i = lshr i32 %46, 8
  %conv63.i = trunc i32 %shr.i to i8
  %inc.i = add nsw i32 %index.2.peel.i, 1
  %arrayidx.i = getelementptr i8, ptr %15, i32 %index.2.peel.i
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv63.i, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv7.i)
  %cmp57.i = icmp slt i32 %inc.i, %conv7.i
  br i1 %cmp57.i, label %for.inc.i.1, label %for.inc.i.do.cond65.i_crit_edge, !llvm.loop !127

for.inc.i.do.cond65.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond65.i

for.inc.i.1:                                      ; preds = %for.inc.i
  %shr.i.1 = lshr i32 %46, 16
  %conv63.i.1 = trunc i32 %shr.i.1 to i8
  %inc.i.1 = add nsw i32 %index.2.peel.i, 2
  %arrayidx.i.1 = getelementptr i8, ptr %15, i32 %inc.i
  %49 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv63.i.1, ptr %arrayidx.i.1, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.1, i32 %conv7.i)
  %cmp57.i.1 = icmp slt i32 %inc.i.1, %conv7.i
  br i1 %cmp57.i.1, label %for.inc.i.2, label %for.inc.i.1.do.cond65.i_crit_edge, !llvm.loop !127

for.inc.i.1.do.cond65.i_crit_edge:                ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond65.i

for.inc.i.2:                                      ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i.2 = lshr i32 %46, 24
  %conv63.i.2 = trunc i32 %shr.i.2 to i8
  %inc.i.2 = add nsw i32 %index.2.peel.i, 3
  %arrayidx.i.2 = getelementptr i8, ptr %15, i32 %inc.i.1
  %50 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv63.i.2, ptr %arrayidx.i.2, align 1
  br label %do.cond65.i

do.cond65.i:                                      ; preds = %for.inc.i.2, %for.inc.i.1.do.cond65.i_crit_edge, %for.inc.i.do.cond65.i_crit_edge, %for.inc.peel.i.do.cond65.i_crit_edge, %do.body43.i.do.cond65.i_crit_edge
  %first.1.off0.lcssa.i = phi i1 [ %first.0.off0.i, %do.body43.i.do.cond65.i_crit_edge ], [ false, %for.inc.peel.i.do.cond65.i_crit_edge ], [ false, %for.inc.i.2 ], [ false, %for.inc.i.1.do.cond65.i_crit_edge ], [ false, %for.inc.i.do.cond65.i_crit_edge ]
  %index.1.lcssa.i = phi i32 [ %index.0.i, %do.body43.i.do.cond65.i_crit_edge ], [ %index.2.peel.i, %for.inc.peel.i.do.cond65.i_crit_edge ], [ %inc.i, %for.inc.i.do.cond65.i_crit_edge ], [ %inc.i.1, %for.inc.i.1.do.cond65.i_crit_edge ], [ %inc.i.2, %for.inc.i.2 ]
  %dec.i = add i32 %words_read.0.i, -1
  %tobool66.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool66.not.i, label %do.cond65.i.for.inc_crit_edge, label %do.cond65.i.do.body43.i_crit_edge

do.cond65.i.do.body43.i_crit_edge:                ; preds = %do.cond65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body43.i

do.cond65.i.for.inc_crit_edge:                    ; preds = %do.cond65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %load.i) #8
  %51 = call ptr @memset(ptr %6, i32 0, i32 11)
  %conv.i52 = trunc i16 %11 to i8
  %52 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i.i, align 4
  %conv.mask.i54 = and i16 %11, 255
  %conv.i.i55 = zext i16 %conv.mask.i54 to i32
  %mul.i.i56 = shl nuw nsw i32 %conv.i.i55, 9
  %add3.i.i57 = add nuw nsw i32 %mul.i.i56, 772
  %add.ptr.i.i58 = getelementptr i8, ptr %53, i32 %add3.i.i57
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i58) #8, !srcloc !100
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  %56 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data.i.i, align 4
  %arrayidx.i.i60 = getelementptr %struct.cci_data, ptr %57, i32 0, i32 2, i32 0
  %58 = ptrtoint ptr %arrayidx.i.i60 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx.i.i60, align 2
  %conv5.i.i61 = zext i16 %59 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %conv5.i.i61)
  %cmp.i.i62 = icmp eq i32 %55, %conv5.i.i61
  br i1 %cmp.i.i62, label %if.else.if.end17.thread87_crit_edge, label %if.end.i.i64

if.else.if.end17.thread87_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.thread87

if.end.i.i64:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i.i63 = icmp eq i32 %54, 0
  br i1 %tobool.not.i.i63, label %if.end.i.i64.if.end.i74_crit_edge, label %cci_validate_queue.exit.i69

if.end.i.i64.if.end.i74_crit_edge:                ; preds = %if.end.i.i64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i74

cci_validate_queue.exit.i69:                      ; preds = %if.end.i.i64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  tail call void @arm_heavy_mb() #8
  %60 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base.i.i, align 4
  %add15.i.i65 = add nuw nsw i32 %mul.i.i56, 784
  %add.ptr16.i.i66 = getelementptr i8, ptr %61, i32 %add15.i.i65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i.i66, i32 134283264) #8, !srcloc !104
  %call17.i.i67 = tail call fastcc i32 @cci_run_queue(ptr noundef %3, i8 noundef zeroext %conv.i52, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i67)
  %cmp.i68 = icmp slt i32 %call17.i.i67, 0
  br i1 %cmp.i68, label %cci_validate_queue.exit.i69.if.end17.thread87_crit_edge, label %cci_validate_queue.exit.i69.if.end.i74_crit_edge

cci_validate_queue.exit.i69.if.end.i74_crit_edge: ; preds = %cci_validate_queue.exit.i69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i74

cci_validate_queue.exit.i69.if.end17.thread87_crit_edge: ; preds = %cci_validate_queue.exit.i69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.thread87

if.end.i74:                                       ; preds = %cci_validate_queue.exit.i69.if.end.i74_crit_edge, %if.end.i.i64.if.end.i74_crit_edge
  %62 = shl i16 %13, 4
  %63 = and i16 %62, 2032
  %64 = or i16 %63, 1
  %or.i70 = zext i16 %64 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %65 = tail call i32 @llvm.bswap.i32(i32 %or.i70) #8
  %66 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base.i.i, align 4
  %conv3.i71 = zext i16 %11 to i32
  %mul.i72 = shl nuw nsw i32 %conv3.i71, 9
  %add.i = add nuw nsw i32 %mul.i72, 784
  %add.ptr.i73 = getelementptr i8, ptr %67, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73, i32 %65) #8, !srcloc !104
  %len.tr.i = trunc i16 %17 to i8
  %68 = shl i8 %len.tr.i, 4
  %conv10.i = or i8 %68, 9
  %69 = ptrtoint ptr %load.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv10.i, ptr %load.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp12105.not.i = icmp eq i16 %17, 0
  br i1 %cmp12105.not.i, label %if.end.i74.for.body21.preheader.i_crit_edge, label %for.body.preheader.i76

if.end.i74.for.body21.preheader.i_crit_edge:      ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body21.preheader.i

for.body.preheader.i76:                           ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #10
  %conv7.i75 = zext i16 %17 to i32
  %70 = call ptr @memcpy(ptr %6, ptr %15, i32 %conv7.i75)
  %71 = add nuw nsw i32 %conv7.i75, 1
  br label %for.body21.preheader.i

for.body21.preheader.i:                           ; preds = %for.body.preheader.i76, %if.end.i74.for.body21.preheader.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 1, %if.end.i74.for.body21.preheader.i_crit_edge ], [ %71, %for.body.preheader.i76 ]
  br label %for.body21.i

for.body21.i:                                     ; preds = %for.body21.i.for.body21.i_crit_edge, %for.body21.preheader.i
  %j.1109.i = phi i32 [ %add51.i, %for.body21.i.for.body21.i_crit_edge ], [ 0, %for.body21.preheader.i ]
  %arrayidx22.i = getelementptr [12 x i8], ptr %load.i, i32 0, i32 %j.1109.i
  %72 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx22.i, align 1
  %conv23.i = zext i8 %73 to i32
  %add24.i = or i32 %j.1109.i, 1
  %arrayidx25.i = getelementptr [12 x i8], ptr %load.i, i32 0, i32 %add24.i
  %74 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx25.i, align 1
  %conv26.i = zext i8 %75 to i32
  %shl27.i = shl nuw nsw i32 %conv26.i, 8
  %or28.i = or i32 %shl27.i, %conv23.i
  %add29.i = or i32 %j.1109.i, 2
  %arrayidx30.i = getelementptr [12 x i8], ptr %load.i, i32 0, i32 %add29.i
  %76 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx30.i, align 1
  %conv31.i = zext i8 %77 to i32
  %shl32.i = shl nuw nsw i32 %conv31.i, 16
  %or33.i = or i32 %or28.i, %shl32.i
  %add34.i = or i32 %j.1109.i, 3
  %arrayidx35.i = getelementptr [12 x i8], ptr %load.i, i32 0, i32 %add34.i
  %78 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx35.i, align 1
  %conv36.i = zext i8 %79 to i32
  %shl37.i = shl nuw i32 %conv36.i, 24
  %or38.i = or i32 %or33.i, %shl37.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  tail call void @arm_heavy_mb() #8
  %80 = tail call i32 @llvm.bswap.i32(i32 %or38.i) #8
  %81 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %base.i.i, align 4
  %add.ptr49.i = getelementptr i8, ptr %82, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49.i, i32 %80) #8, !srcloc !104
  %add51.i = add nuw nsw i32 %j.1109.i, 4
  %cmp19.i = icmp ult i32 %add51.i, %i.0.lcssa.i
  br i1 %cmp19.i, label %for.body21.i.for.body21.i_crit_edge, label %if.end17

for.body21.i.for.body21.i_crit_edge:              ; preds = %for.body21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body21.i

if.end17.thread87:                                ; preds = %cci_validate_queue.exit.i69.if.end17.thread87_crit_edge, %if.else.if.end17.thread87_crit_edge
  %retval.0.i77.ph = phi i32 [ -22, %if.else.if.end17.thread87_crit_edge ], [ %call17.i.i67, %cci_validate_queue.exit.i69.if.end17.thread87_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %load.i) #8
  br label %err

if.end17:                                         ; preds = %for.body21.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %83 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base.i.i, align 4
  %add.ptr63.i = getelementptr i8, ptr %84, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63.i, i32 134283264) #8, !srcloc !104
  %call65.i = tail call fastcc i32 @cci_run_queue(ptr noundef %3, i8 noundef zeroext %conv.i52, i8 noundef zeroext 0) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %load.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %cmp18 = icmp slt i32 %call65.i, 0
  br i1 %cmp18, label %if.end17.err_crit_edge, label %if.end17.for.inc_crit_edge

if.end17.for.inc_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end17.err_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

for.inc:                                          ; preds = %if.end17.for.inc_crit_edge, %do.cond65.i.for.inc_crit_edge
  %ret.185 = phi i32 [ %call65.i, %if.end17.for.inc_crit_edge ], [ 0, %do.cond65.i.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.096, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ %call.i, %for.cond.preheader.for.end_crit_edge ], [ %ret.185, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.lcssa)
  %tobool22.not = icmp eq i32 %ret.0.lcssa, 0
  %spec.select = select i1 %tobool22.not, i32 %num, i32 %ret.0.lcssa
  br label %err

err:                                              ; preds = %for.end, %if.end17.err_crit_edge, %if.end17.thread87, %do.end41.i, %if.end.i.err_crit_edge, %cci_validate_queue.exit.i.err_crit_edge, %if.then4.err_crit_edge, %entry.err_crit_edge
  %ret.3 = phi i32 [ %call.i, %entry.err_crit_edge ], [ -5, %do.end41.i ], [ %retval.0.i77.ph, %if.end17.thread87 ], [ %spec.select, %for.end ], [ %call65.i, %if.end17.err_crit_edge ], [ -22, %if.then4.err_crit_edge ], [ %call22.i, %if.end.i.err_crit_edge ], [ %call17.i.i, %cci_validate_queue.exit.i.err_crit_edge ]
  %85 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %3, align 8
  %call.i78 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %86, i32 0, i32 12, i32 22
  %87 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %87)
  store volatile i64 %call.i78, ptr %last_busy.i, align 8
  %88 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %3, align 8
  %call.i79 = tail call i32 @__pm_runtime_suspend(ptr noundef %89, i32 noundef 13) #8
  ret i32 %ret.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cci_func(ptr nocapture noundef readnone %adap) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592713
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cci_run_queue(ptr noundef %cci, i8 noundef zeroext %master, i8 noundef zeroext %queue) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.cci, ptr %cci, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %conv = zext i8 %master to i32
  %mul = shl nuw nsw i32 %conv, 9
  %conv1 = zext i8 %queue to i32
  %mul2 = shl nuw nsw i32 %conv1, 8
  %add = add nuw nsw i32 %mul2, %mul
  %add3 = add nuw nsw i32 %add, 772
  %add.ptr = getelementptr i8, ptr %1, i32 %add3
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add11 = add nuw nsw i32 %add, 768
  %add.ptr12 = getelementptr i8, ptr %4, i32 %add11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %2) #8, !srcloc !104
  %irq_complete = getelementptr %struct.cci, ptr %cci, i32 0, i32 6, i32 %conv, i32 4
  %5 = ptrtoint ptr %irq_complete to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %irq_complete, align 4
  %mul15 = shl nuw nsw i32 %conv, 1
  %add17 = add nuw nsw i32 %mul15, %conv1
  %shl = shl nuw i32 1, %add17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %6 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr22 = getelementptr i8, ptr %8, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %6) #8, !srcloc !104
  %call28 = tail call i32 @wait_for_completion_timeout(ptr noundef %irq_complete, i32 noundef 10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool.not = icmp eq i32 %call28, 0
  br i1 %tobool.not, label %do.end31, label %if.end

do.end31:                                         ; preds = %entry
  %9 = ptrtoint ptr %cci to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cci, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.27, i32 noundef %conv, i32 noundef %conv1) #11
  %irq_complete.i = getelementptr inbounds %struct.cci, ptr %cci, i32 0, i32 6, i32 0, i32 4
  %11 = ptrtoint ptr %irq_complete.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %irq_complete.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !103
  tail call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -135040241) #8, !srcloc !104
  %call4.i = tail call i32 @wait_for_completion_timeout(ptr noundef %irq_complete.i, i32 noundef 10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %do.end6.i, label %do.end31.cci_reset.exit_crit_edge

do.end31.cci_reset.exit_crit_edge:                ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cci_reset.exit

do.end6.i:                                        ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %cci to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cci, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.30) #11
  br label %cci_reset.exit

cci_reset.exit:                                   ; preds = %do.end6.i, %do.end31.cci_reset.exit_crit_edge
  tail call fastcc void @cci_init(ptr noundef %cci)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %status = getelementptr %struct.cci, ptr %cci, i32 0, i32 6, i32 %conv, i32 3
  %16 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cci_reset.exit
  %retval.0 = phi i32 [ %17, %if.end ], [ -110, %cci_reset.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cci_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %0 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

pm_runtime_suspended.exit:                        ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %2 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.return_crit_edge, label %pm_runtime_suspended.exit.if.then_crit_edge

pm_runtime_suspended.exit.if.then_crit_edge:      ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

pm_runtime_suspended.exit.return_crit_edge:       ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then:                                          ; preds = %pm_runtime_suspended.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %nclocks.i.i = getelementptr inbounds %struct.cci, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %nclocks.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nclocks.i.i, align 4
  %clocks.i.i = getelementptr inbounds %struct.cci, ptr %4, i32 0, i32 4
  %7 = ptrtoint ptr %clocks.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clocks.i.i, align 8
  tail call void @clk_bulk_disable(i32 noundef %6, ptr noundef %8) #8
  tail call void @clk_bulk_unprepare(i32 noundef %6, ptr noundef %8) #8
  br label %return

return:                                           ; preds = %if.then, %pm_runtime_suspended.exit.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cci_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %nclocks.i.i = getelementptr inbounds %struct.cci, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %nclocks.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nclocks.i.i, align 4
  %clocks.i.i = getelementptr inbounds %struct.cci, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %clocks.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clocks.i.i, align 8
  %call.i.i.i = tail call i32 @clk_bulk_prepare(i32 noundef %3, ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %entry.cci_resume_runtime.exit_crit_edge

entry.cci_resume_runtime.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cci_resume_runtime.exit

if.end.i.i.i:                                     ; preds = %entry
  %call1.i.i.i = tail call i32 @clk_bulk_enable(i32 noundef %3, ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.end.i, label %if.then3.i.i.i

if.then3.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_bulk_unprepare(i32 noundef %3, ptr noundef %5) #8
  br label %cci_resume_runtime.exit

if.end.i:                                         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @cci_init(ptr noundef %1) #8
  br label %cci_resume_runtime.exit

cci_resume_runtime.exit:                          ; preds = %if.end.i, %if.then3.i.i.i, %entry.cci_resume_runtime.exit_crit_edge
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 22
  %6 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %call.i4 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 9) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cci_suspend_runtime(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %nclocks.i = getelementptr inbounds %struct.cci, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %nclocks.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nclocks.i, align 4
  %clocks.i = getelementptr inbounds %struct.cci, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %clocks.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clocks.i, align 8
  tail call void @clk_bulk_disable(i32 noundef %3, ptr noundef %5) #8
  tail call void @clk_bulk_unprepare(i32 noundef %3, ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cci_resume_runtime(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %nclocks.i = getelementptr inbounds %struct.cci, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %nclocks.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nclocks.i, align 4
  %clocks.i = getelementptr inbounds %struct.cci, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %clocks.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clocks.i, align 8
  %call.i.i = tail call i32 @clk_bulk_prepare(i32 noundef %3, ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  %call1.i.i = tail call i32 @clk_bulk_enable(i32 noundef %3, ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_bulk_unprepare(i32 noundef %3, ptr noundef %5) #8
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @cci_init(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !34, !36, !37, !38, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !57, !58, !59, !60, !62, !63, !64, !65, !67, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !86, !88}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @__initcall__kmod_i2c_qcom_cci__290_793_qcom_cci_driver_init6, !1, !"__initcall__kmod_i2c_qcom_cci__290_793_qcom_cci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-qcom-cci.c", i32 793, i32 1}
!2 = !{ptr @__exitcall_qcom_cci_driver_exit, !1, !"__exitcall_qcom_cci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description291, !4, !"__UNIQUE_ID_description291", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-qcom-cci.c", i32 795, i32 1}
!5 = !{ptr @__UNIQUE_ID_author292, !6, !"__UNIQUE_ID_author292", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-qcom-cci.c", i32 796, i32 1}
!7 = !{ptr @__UNIQUE_ID_author293, !8, !"__UNIQUE_ID_author293", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-qcom-cci.c", i32 797, i32 1}
!9 = !{ptr @__UNIQUE_ID_file294, !10, !"__UNIQUE_ID_file294", i1 false, i1 false}
!10 = !{!"../drivers/i2c/busses/i2c-qcom-cci.c", i32 798, i32 1}
!11 = !{ptr @__UNIQUE_ID_license295, !10, !"__UNIQUE_ID_license295", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-qcom-cci.c", i32 787, i32 11}
!14 = !{ptr @qcom_cci_driver, !15, !"qcom_cci_driver", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-qcom-cci.c", i32 783, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/i2c/busses/i2c-qcom-cci.c", i32 546, i32 37}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/i2c/busses/i2c-qcom-cci.c", i32 548, i32 4}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @cci_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @cci_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/i2c/busses/i2c-qcom-cci.c", i32 553, i32 4}
!28 = !{ptr @cci_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @cci_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/i2c/busses/i2c-qcom-cci.c", i32 567, i32 41}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/i2c/busses/i2c-qcom-cci.c", i32 570, i32 37}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/i2c/busses/i2c-qcom-cci.c", i32 592, i32 3}
!36 = !{ptr @cci_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @cci_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/i2c/busses/i2c-qcom-cci.c", i32 599, i32 34}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/i2c/busses/i2c-qcom-cci.c", i32 609, i32 3}
!42 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @cci_probe._entry.16, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @cci_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/i2c/busses/i2c-qcom-cci.c", i32 626, i32 3}
!47 = !{ptr @cci_probe._entry.20, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @cci_probe._entry_ptr.22, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/i2c/busses/i2c-qcom-cci.c", i32 631, i32 2}
!51 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @cci_probe.__UNIQUE_ID_ddebug289, !50, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!53 = !{ptr @cci_algo, !54, !"cci_algo", i1 false, i1 false}
!54 = !{!"../drivers/i2c/busses/i2c-qcom-cci.c", i32 465, i32 35}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/i2c/busses/i2c-qcom-cci.c", i32 364, i32 3}
!57 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @cci_i2c_read._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @cci_i2c_read._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/i2c/busses/i2c-qcom-cci.c", i32 308, i32 3}
!62 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @cci_run_queue._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @cci_run_queue._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @init_completion.__key, !66, !"__key", i1 false, i1 false}
!66 = !{!"../include/linux/completion.h", i32 87, i32 2}
!67 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/i2c/busses/i2c-qcom-cci.c", i32 243, i32 3}
!70 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @cci_reset._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @cci_reset._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/i2c/busses/i2c-qcom-cci.c", i32 214, i32 3}
!75 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @cci_halt._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @cci_halt._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/i2c/busses/i2c-qcom-cci.c", i32 225, i32 3}
!80 = !{ptr @cci_halt._entry.34, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @cci_halt._entry_ptr.36, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @cci_dt_match, !83, !"cci_dt_match", i1 false, i1 false}
!83 = !{!"../drivers/i2c/busses/i2c-qcom-cci.c", i32 774, i32 34}
!84 = !{ptr @cci_v1_data, !85, !"cci_v1_data", i1 false, i1 false}
!85 = !{!"../drivers/i2c/busses/i2c-qcom-cci.c", i32 694, i32 30}
!86 = !{ptr @cci_v2_data, !87, !"cci_v2_data", i1 false, i1 false}
!87 = !{!"../drivers/i2c/busses/i2c-qcom-cci.c", i32 728, i32 30}
!88 = !{ptr @qcom_cci_pm, !89, !"qcom_cci_pm", i1 false, i1 false}
!89 = !{!"../drivers/i2c/busses/i2c-qcom-cci.c", i32 518, i32 32}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!99 = !{!"auto-init"}
!100 = !{i64 6872647}
!101 = !{i64 2155637092}
!102 = !{i64 2148739457, i64 2148739462, i64 2148739475, i64 2148739519, i64 2148739553, i64 2148739574}
!103 = !{i64 2155606710}
!104 = !{i64 6872229}
!105 = !{i64 2155604726}
!106 = !{i64 2155599033}
!107 = !{i64 2155599253}
!108 = !{i64 2155599648}
!109 = !{!"branch_weights", i32 2000, i32 1}
!110 = !{!"branch_weights", i32 4001, i32 4000000}
!111 = !{!"branch_weights", i32 2001, i32 2000}
!112 = !{i64 2155600974}
!113 = !{i64 2155601708}
!114 = !{i64 2155602508}
!115 = !{i64 2155609478}
!116 = !{i64 2155609909}
!117 = !{i64 2155610358}
!118 = !{i64 2155610807}
!119 = !{i64 2155611256}
!120 = !{i64 2155611705}
!121 = !{i64 2155616012}
!122 = !{i64 2155616405}
!123 = !{i64 2155616931}
!124 = !{i64 2155617458}
!125 = !{i64 2155618283}
!126 = !{i64 2155620659}
!127 = distinct !{!127, !128}
!128 = !{!"llvm.loop.peeled.count", i32 1}
!129 = !{i64 2155620967}
!130 = !{i64 2155621493}
!131 = !{i64 2155622101}
!132 = !{i64 2155612605}
!133 = !{i64 2155612911}
!134 = !{i64 2155613441}
