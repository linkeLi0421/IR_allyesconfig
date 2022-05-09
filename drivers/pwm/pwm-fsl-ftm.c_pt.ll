; ModuleID = '/llk/IR_all_yes/drivers/pwm/pwm-fsl-ftm.c_pt.bc'
source_filename = "../drivers/pwm/pwm-fsl-ftm.c"
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
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pwm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fsl_ftm_soc = type { i8 }
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
%struct.fsl_pwm_chip = type { %struct.pwm_chip, %struct.mutex, ptr, %struct.fsl_pwm_periodcfg, ptr, [4 x ptr], ptr }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.fsl_pwm_periodcfg = type { i32, i32, i32 }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }

@__initcall__kmod_pwm_fsl_ftm__183_549_fsl_pwm_driver_init6 = internal global ptr @fsl_pwm_driver_init, section ".initcall6.init", align 4
@fsl_pwm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fsl_pwm_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fsl_pwm_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_pwm_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_fsl_pwm_driver_exit = internal global ptr @fsl_pwm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description184 = internal constant [62 x i8] c"pwm_fsl_ftm.description=Freescale FlexTimer Module PWM Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author185 = internal constant [53 x i8] c"pwm_fsl_ftm.author=Xiubo Li <Li.Xiubo@freescale.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias186 = internal constant [39 x i8] c"pwm_fsl_ftm.alias=platform:fsl-ftm-pwm\00", section ".modinfo", align 1
@__UNIQUE_ID_file187 = internal constant [41 x i8] c"pwm_fsl_ftm.file=drivers/pwm/pwm-fsl-ftm\00", section ".modinfo", align 1
@__UNIQUE_ID_license188 = internal constant [24 x i8] c"pwm_fsl_ftm.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fsl-ftm-pwm\00", [20 x i8] zeroinitializer }, align 32
@fsl_pwm_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,vf610-ftm-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vf610_ftm_pwm }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx8qm-ftm-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx8qm_ftm_pwm }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@fsl_pwm_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @fsl_pwm_suspend, ptr @fsl_pwm_resume, ptr @fsl_pwm_suspend, ptr @fsl_pwm_resume, ptr @fsl_pwm_suspend, ptr @fsl_pwm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@fsl_pwm_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&fpc->lock\00", [21 x i8] zeroinitializer }, align 32
@fsl_pwm_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ftm_sys\00", [24 x i8] zeroinitializer }, align 32
@fsl_pwm_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr @fsl_pwm_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 152, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"pwm_fsl_ftm:419:(&fsl_pwm_regmap_config)->lock\00", [49 x i8] zeroinitializer }, align 32
@fsl_pwm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 421, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"regmap init failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsl_pwm_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/pwm/pwm-fsl-ftm.c\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fsl_pwm_probe._entry_ptr = internal global ptr @fsl_pwm_probe._entry, section ".printk_index", align 4
@fsl_pwm_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 427, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get \22ftm_sys\22 clock\0A\00", [33 x i8] zeroinitializer }, align 32
@fsl_pwm_probe._entry_ptr.11 = internal global ptr @fsl_pwm_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ftm_fix\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ftm_ext\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ftm_cnt_clk_en\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipg\00", [28 x i8] zeroinitializer }, align 32
@fsl_pwm_ops = internal constant { %struct.pwm_ops, [56 x i8] } { %struct.pwm_ops { ptr @fsl_pwm_request, ptr @fsl_pwm_free, ptr null, ptr @fsl_pwm_apply, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@fsl_pwm_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.5, ptr @.str.6, i32 458, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to add PWM chip: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@fsl_pwm_probe._entry_ptr.18 = internal global ptr @fsl_pwm_probe._entry.16, section ".printk_index", align 4
@fsl_pwm_apply_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.6, i32 239, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to calculate new period\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsl_pwm_apply_config\00", [43 x i8] zeroinitializer }, align 32
@fsl_pwm_apply_config._entry_ptr = internal global ptr @fsl_pwm_apply_config._entry, section ".printk_index", align 4
@fsl_pwm_apply_config._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.6, i32 255, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Cannot change period for PWM %u, disable other PWMs first\0A\00", [37 x i8] zeroinitializer }, align 32
@fsl_pwm_apply_config._entry_ptr.23 = internal global ptr @fsl_pwm_apply_config._entry.21, section ".printk_index", align 4
@vf610_ftm_pwm = internal constant { %struct.fsl_ftm_soc, [31 x i8] } zeroinitializer, align 32
@imx8qm_ftm_pwm = internal constant { %struct.fsl_ftm_soc, [31 x i8] } { %struct.fsl_ftm_soc { i8 1 }, [31 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 84, i64 116]
@___asan_gen_.24 = private unnamed_addr constant [15 x i8] c"fsl_pwm_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 541, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 543, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [15 x i8] c"fsl_pwm_dt_ids\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 534, i32 34 }
@___asan_gen_.33 = private unnamed_addr constant [15 x i8] c"fsl_pwm_pm_ops\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 522, i32 32 }
@___asan_gen_.36 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 409, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [22 x i8] c"fsl_pwm_regmap_config\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 389, i32 35 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 418, i32 16 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 421, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 427, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 431, i32 58 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 435, i32 58 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 440, i32 33 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 448, i32 42 }
@___asan_gen_.90 = private unnamed_addr constant [12 x i8] c"fsl_pwm_ops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 354, i32 29 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 458, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 239, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 253, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant [14 x i8] c"vf610_ftm_pwm\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 526, i32 33 }
@___asan_gen_.117 = private unnamed_addr constant [15 x i8] c"imx8qm_ftm_pwm\00", align 1
@___asan_gen_.118 = private constant [29 x i8] c"../drivers/pwm/pwm-fsl-ftm.c\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 530, i32 33 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_alias186, ptr @__UNIQUE_ID_author185, ptr @__UNIQUE_ID_description184, ptr @__UNIQUE_ID_file187, ptr @__UNIQUE_ID_license188, ptr @__exitcall_fsl_pwm_driver_exit, ptr @__initcall__kmod_pwm_fsl_ftm__183_549_fsl_pwm_driver_init6, ptr @fsl_pwm_apply_config._entry, ptr @fsl_pwm_apply_config._entry.21, ptr @fsl_pwm_apply_config._entry_ptr, ptr @fsl_pwm_apply_config._entry_ptr.23, ptr @fsl_pwm_driver_exit, ptr @fsl_pwm_probe._entry, ptr @fsl_pwm_probe._entry.16, ptr @fsl_pwm_probe._entry.9, ptr @fsl_pwm_probe._entry_ptr, ptr @fsl_pwm_probe._entry_ptr.11, ptr @fsl_pwm_probe._entry_ptr.18, ptr @fsl_pwm_driver, ptr @.str, ptr @fsl_pwm_dt_ids, ptr @fsl_pwm_pm_ops, ptr @fsl_pwm_probe.__key, ptr @.str.1, ptr @fsl_pwm_probe._key, ptr @.str.2, ptr @fsl_pwm_regmap_config, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @fsl_pwm_ops, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @vf610_ftm_pwm, ptr @imx8qm_ftm_pwm], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_pwm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_pwm_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_pwm_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_pwm_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_pwm_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_pwm_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_pwm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_pwm_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_pwm_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_pwm_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_pwm_apply_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_pwm_apply_config._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf610_ftm_pwm to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx8qm_ftm_pwm to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_pwm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @fsl_pwm_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fsl_pwm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @fsl_pwm_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_pwm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 168, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.fsl_pwm_chip, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @fsl_pwm_probe.__key) #6
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %soc = getelementptr inbounds %struct.fsl_pwm_chip, ptr %call.i, i32 0, i32 6
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %soc, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %call.i, align 4
  %call5 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end9:                                          ; preds = %do.body
  %call11 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef %call5, ptr noundef nonnull @fsl_pwm_regmap_config, ptr noundef nonnull @fsl_pwm_probe._key, ptr noundef nonnull @.str.3) #6
  %regmap = getelementptr inbounds %struct.fsl_pwm_chip, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call11, ptr %regmap, align 4
  %cmp.i143 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i143, label %do.end17, label %if.end21

do.end17:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #9
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %6 = ptrtoint ptr %5 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end9
  %call23 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #6
  %clk = getelementptr inbounds %struct.fsl_pwm_chip, ptr %call.i, i32 0, i32 5
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call23, ptr %clk, align 4
  %cmp.i144 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i144, label %do.end30, label %if.end35

do.end30:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %cleanup

if.end35:                                         ; preds = %if.end21
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i, align 4
  %call38 = tail call ptr @devm_clk_get(ptr noundef %12, ptr noundef nonnull @.str.12) #6
  %arrayidx40 = getelementptr %struct.fsl_pwm_chip, ptr %call.i, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call38, ptr %arrayidx40, align 4
  %cmp.i145 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i145, label %if.then44, label %if.end48

if.then44:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %call38 to i32
  br label %cleanup

if.end48:                                         ; preds = %if.end35
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i, align 4
  %call51 = tail call ptr @devm_clk_get(ptr noundef %16, ptr noundef nonnull @.str.13) #6
  %arrayidx53 = getelementptr %struct.fsl_pwm_chip, ptr %call.i, i32 0, i32 5, i32 2
  %17 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call51, ptr %arrayidx53, align 4
  %cmp.i146 = icmp ugt ptr %call51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i146, label %if.then57, label %if.end61

if.then57:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %call51 to i32
  br label %cleanup

if.end61:                                         ; preds = %if.end48
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 4
  %call64 = tail call ptr @devm_clk_get(ptr noundef %20, ptr noundef nonnull @.str.14) #6
  %arrayidx66 = getelementptr %struct.fsl_pwm_chip, ptr %call.i, i32 0, i32 5, i32 3
  %21 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call64, ptr %arrayidx66, align 4
  %cmp.i147 = icmp ugt ptr %call64, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i147, label %if.then70, label %if.end74

if.then70:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %call64 to i32
  br label %cleanup

if.end74:                                         ; preds = %if.end61
  %call76 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.15) #6
  %ipg_clk = getelementptr inbounds %struct.fsl_pwm_chip, ptr %call.i, i32 0, i32 4
  %23 = ptrtoint ptr %ipg_clk to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call76, ptr %ipg_clk, align 4
  %cmp.i148 = icmp ugt ptr %call76, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i148, label %if.then79, label %if.end74.if.end83_crit_edge

if.end74.if.end83_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83

if.then79:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk, align 4
  %26 = ptrtoint ptr %ipg_clk to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %ipg_clk, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then79, %if.end74.if.end83_crit_edge
  %ops = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 1
  %27 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @fsl_pwm_ops, ptr %ops, align 4
  %npwm = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 3
  %28 = ptrtoint ptr %npwm to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 8, ptr %npwm, align 4
  %call88 = tail call i32 @devm_pwmchip_add(ptr noundef %dev, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %cmp = icmp slt i32 %call88, 0
  br i1 %cmp, label %do.end92, label %if.end94

do.end92:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %call88) #9
  br label %cleanup

if.end94:                                         ; preds = %if.end83
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %29 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %30 = ptrtoint ptr %ipg_clk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ipg_clk, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %31) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end94.cleanup_crit_edge

if.end94.cleanup_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end94
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %31) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i, label %if.end.i.i.cleanup.sink.split.i_crit_edge

if.end.i.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 4
  %call1.i = tail call i32 @regmap_write(ptr noundef %33, i32 noundef 76, i32 noundef 0) #6
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 4
  %call3.i = tail call i32 @regmap_write(ptr noundef %35, i32 noundef 92, i32 noundef 0) #6
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap, align 4
  %call5.i = tail call i32 @regmap_write(ptr noundef %37, i32 noundef 96, i32 noundef 255) #6
  %38 = ptrtoint ptr %ipg_clk to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ipg_clk, align 4
  tail call void @clk_disable(ptr noundef %39) #6
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end.i, %if.end.i.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %39, %if.end.i ], [ %31, %if.end.i.i.cleanup.sink.split.i_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink.i) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i, %if.end94.cleanup_crit_edge, %do.end92, %if.then70, %if.then57, %if.then44, %do.end30, %do.end17, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then7 ], [ %6, %do.end17 ], [ %10, %do.end30 ], [ %14, %if.then44 ], [ %18, %if.then57 ], [ %22, %if.then70 ], [ %call88, %do.end92 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i.i, %if.end94.cleanup_crit_edge ], [ %call1.i.i, %cleanup.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pwmchip_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @fsl_pwm_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.epilog [
    i32 116, label %entry.return_crit_edge
    i32 84, label %entry.return_crit_edge1
    i32 4, label %entry.return_crit_edge2
  ]

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2
  %retval.0 = phi i1 [ false, %sw.epilog ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_pwm_request(ptr noundef %chip, ptr nocapture noundef readonly %pwm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ipg_clk = getelementptr inbounds %struct.fsl_pwm_chip, ptr %chip, i32 0, i32 4
  %0 = ptrtoint ptr %ipg_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ipg_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %1) #6
  br label %if.end

land.lhs.true:                                    ; preds = %if.end.i
  %soc = getelementptr inbounds %struct.fsl_pwm_chip, ptr %chip, i32 0, i32 6
  %2 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %lock = getelementptr inbounds %struct.fsl_pwm_chip, ptr %chip, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %regmap = getelementptr inbounds %struct.fsl_pwm_chip, ptr %chip, i32 0, i32 2
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %8 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hwpwm, align 8
  %add = add i32 %9, 16
  %shl = shl nuw i32 1, %add
  %call.i14 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 0, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %if.then3.i, %entry.if.end_crit_edge
  %retval.0.i17 = phi i32 [ 0, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.if.end_crit_edge ]
  ret i32 %retval.0.i17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsl_pwm_free(ptr noundef %chip, ptr nocapture noundef readonly %pwm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %soc = getelementptr inbounds %struct.fsl_pwm_chip, ptr %chip, i32 0, i32 6
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %lock = getelementptr inbounds %struct.fsl_pwm_chip, ptr %chip, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %regmap = getelementptr inbounds %struct.fsl_pwm_chip, ptr %chip, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %6 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwpwm, align 8
  %add = add i32 %7, 16
  %shl = shl nuw i32 1, %add
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 0, i32 noundef %shl, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ipg_clk = getelementptr inbounds %struct.fsl_pwm_chip, ptr %chip, i32 0, i32 4
  %8 = ptrtoint ptr %ipg_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ipg_clk, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_pwm_apply(ptr noundef %chip, ptr nocapture noundef readonly %pwm, ptr nocapture noundef readonly %newstate) #2 align 64 {
entry:
  %val.i115.i = alloca i32, align 4
  %val.i107.i = alloca i32, align 4
  %val.i97.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.fsl_pwm_chip, ptr %chip, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %enabled = getelementptr inbounds %struct.pwm_state, ptr %newstate, i32 0, i32 3
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 4, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %enabled1 = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %enabled1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled1, align 4, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.then.end_mutex_crit_edge, label %if.then3

if.then.end_mutex_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %end_mutex

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %regmap = getelementptr inbounds %struct.fsl_pwm_chip, ptr %chip, i32 0, i32 2
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %6 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwpwm, align 8
  %shl = shl nuw i32 1, %7
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 96, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %arrayidx = getelementptr %struct.fsl_pwm_chip, ptr %chip, i32 0, i32 5, i32 3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  %period = getelementptr inbounds %struct.fsl_pwm_chip, ptr %chip, i32 0, i32 3
  %10 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %period, align 4
  %arrayidx8 = getelementptr %struct.fsl_pwm_chip, ptr %chip, i32 0, i32 5, i32 %11
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx8, align 4
  tail call void @clk_disable(ptr noundef %13) #6
  tail call void @clk_unprepare(ptr noundef %13) #6
  br label %end_mutex

if.end9:                                          ; preds = %entry
  %14 = ptrtoint ptr %newstate to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %newstate, align 8
  %arrayidx.i.i.i = getelementptr %struct.fsl_pwm_chip, ptr %chip, i32 0, i32 5, i32 0
  %16 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i.i = tail call i32 @clk_get_rate(ptr noundef %17) #6
  %conv.i.i.i = zext i32 %call.i.i.i to i64
  %conv1.i.i.i = and i64 %15, 4294967295
  %mul.i.i.i = mul nuw i64 %conv1.i.i.i, %conv.i.i.i
  %18 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul.i.i.i, i32 0) #10, !srcloc !78
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %18, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %18, 1
  %19 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul.i.i.i, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #10, !srcloc !79
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 536870912, i64 %asmresult10.i.i.i.i)
  %cmp185.i.i.i = icmp ult i64 %asmresult10.i.i.i.i, 536870912
  br i1 %cmp185.i.i.i, label %if.end9.if.end.i.i_crit_edge, label %if.end188.i.i.i

if.end9.if.end.i.i_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.end188.i.i.i:                                  ; preds = %if.end9
  %c.0.i.i.i = lshr i64 %asmresult10.i.i.i.i, 29
  call void @__sanitizer_cov_trace_const_cmp8(i64 35184908959744, i64 %asmresult10.i.i.i.i)
  %cmp191.i.i.i = icmp ult i64 %asmresult10.i.i.i.i, 35184908959744
  %extract.t.i.i.i = trunc i64 %c.0.i.i.i to i32
  br i1 %cmp191.i.i.i, label %if.end188.i.i.i.if.end.i_crit_edge, label %for.inc.i.i.i

if.end188.i.i.i.if.end.i_crit_edge:               ; preds = %if.end188.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

for.inc.i.i.i:                                    ; preds = %if.end188.i.i.i
  %shr197.i.i.i = lshr i64 %asmresult10.i.i.i.i, 30
  call void @__sanitizer_cov_trace_const_cmp8(i64 70369817919488, i64 %asmresult10.i.i.i.i)
  %cmp191.1.i.i.i = icmp ult i64 %asmresult10.i.i.i.i, 70369817919488
  %extract.t290.i.i.i = trunc i64 %shr197.i.i.i to i32
  br i1 %cmp191.1.i.i.i, label %for.inc.i.i.i.if.end.i_crit_edge, label %for.inc.1.i.i.i

for.inc.i.i.i.if.end.i_crit_edge:                 ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

for.inc.1.i.i.i:                                  ; preds = %for.inc.i.i.i
  %shr197.1.i.i.i = lshr i64 %asmresult10.i.i.i.i, 31
  call void @__sanitizer_cov_trace_const_cmp8(i64 140739635838976, i64 %asmresult10.i.i.i.i)
  %cmp191.2.i.i.i = icmp ult i64 %asmresult10.i.i.i.i, 140739635838976
  %extract.t291.i.i.i = trunc i64 %shr197.1.i.i.i to i32
  br i1 %cmp191.2.i.i.i, label %for.inc.1.i.i.i.if.end.i_crit_edge, label %for.inc.2.i.i.i

for.inc.1.i.i.i.if.end.i_crit_edge:               ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

for.inc.2.i.i.i:                                  ; preds = %for.inc.1.i.i.i
  %shr197.2.i.i.i = lshr i64 %asmresult10.i.i.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 281479271677952, i64 %asmresult10.i.i.i.i)
  %cmp191.3.i.i.i = icmp ult i64 %asmresult10.i.i.i.i, 281479271677952
  %extract.t292.i.i.i = trunc i64 %shr197.2.i.i.i to i32
  br i1 %cmp191.3.i.i.i, label %for.inc.2.i.i.i.if.end.i_crit_edge, label %for.inc.3.i.i.i

for.inc.2.i.i.i.if.end.i_crit_edge:               ; preds = %for.inc.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

for.inc.3.i.i.i:                                  ; preds = %for.inc.2.i.i.i
  %shr197.3.i.i.i = lshr i64 %asmresult10.i.i.i.i, 33
  call void @__sanitizer_cov_trace_const_cmp8(i64 562958543355904, i64 %asmresult10.i.i.i.i)
  %cmp191.4.i.i.i = icmp ult i64 %asmresult10.i.i.i.i, 562958543355904
  %extract.t293.i.i.i = trunc i64 %shr197.3.i.i.i to i32
  br i1 %cmp191.4.i.i.i, label %for.inc.3.i.i.i.if.end.i_crit_edge, label %for.inc.4.i.i.i

for.inc.3.i.i.i.if.end.i_crit_edge:               ; preds = %for.inc.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

for.inc.4.i.i.i:                                  ; preds = %for.inc.3.i.i.i
  %shr197.4.i.i.i = lshr i64 %asmresult10.i.i.i.i, 34
  call void @__sanitizer_cov_trace_const_cmp8(i64 1125917086711808, i64 %asmresult10.i.i.i.i)
  %cmp191.5.i.i.i = icmp ult i64 %asmresult10.i.i.i.i, 1125917086711808
  %extract.t294.i.i.i = trunc i64 %shr197.4.i.i.i to i32
  br i1 %cmp191.5.i.i.i, label %for.inc.4.i.i.i.if.end.i_crit_edge, label %for.inc.5.i.i.i

for.inc.4.i.i.i.if.end.i_crit_edge:               ; preds = %for.inc.4.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

for.inc.5.i.i.i:                                  ; preds = %for.inc.4.i.i.i
  %shr197.5.i.i.i = lshr i64 %asmresult10.i.i.i.i, 35
  call void @__sanitizer_cov_trace_const_cmp8(i64 2251834173423616, i64 %asmresult10.i.i.i.i)
  %cmp191.6.i.i.i = icmp ult i64 %asmresult10.i.i.i.i, 2251834173423616
  %extract.t295.i.i.i = trunc i64 %shr197.5.i.i.i to i32
  br i1 %cmp191.6.i.i.i, label %for.inc.5.i.i.i.if.end.i_crit_edge, label %for.inc.6.i.i.i

for.inc.5.i.i.i.if.end.i_crit_edge:               ; preds = %for.inc.5.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

for.inc.6.i.i.i:                                  ; preds = %for.inc.5.i.i.i
  %shr197.6.i.i.i = lshr i64 %asmresult10.i.i.i.i, 36
  call void @__sanitizer_cov_trace_const_cmp8(i64 4503668346847232, i64 %asmresult10.i.i.i.i)
  %cmp191.7.i.i.i = icmp ult i64 %asmresult10.i.i.i.i, 4503668346847232
  %extract.t296.i.i.i = trunc i64 %shr197.6.i.i.i to i32
  br i1 %cmp191.7.i.i.i, label %for.inc.6.i.i.i.if.end.i_crit_edge, label %for.inc.6.i.i.i.if.end.i.i_crit_edge

for.inc.6.i.i.i.if.end.i.i_crit_edge:             ; preds = %for.inc.6.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

for.inc.6.i.i.i.if.end.i_crit_edge:               ; preds = %for.inc.6.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i.i:                                       ; preds = %for.inc.6.i.i.i.if.end.i.i_crit_edge, %if.end9.if.end.i.i_crit_edge
  %arrayidx.i.i = getelementptr %struct.fsl_pwm_chip, ptr %chip, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i, align 4
  %call1.i.i = tail call i32 @clk_get_rate(ptr noundef %21) #6
  %arrayidx3.i.i = getelementptr %struct.fsl_pwm_chip, ptr %chip, i32 0, i32 5, i32 2
  %22 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx3.i.i, align 4
  %call4.i.i = tail call i32 @clk_get_rate(ptr noundef %23) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i.i, i32 %call4.i.i)
  %cmp.i.i = icmp ugt i32 %call1.i.i, %call4.i.i
  %..i.i = select i1 %cmp.i.i, i32 1, i32 2
  %.26.i.i = select i1 %cmp.i.i, i32 2, i32 1
  %arrayidx.i27.i.i = getelementptr %struct.fsl_pwm_chip, ptr %chip, i32 0, i32 5, i32 %..i.i
  %24 = ptrtoint ptr %arrayidx.i27.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i27.i.i, align 4
  %call.i28.i.i = tail call i32 @clk_get_rate(ptr noundef %25) #6
  %conv.i29.i.i = zext i32 %call.i28.i.i to i64
  %mul.i31.i.i = mul nuw i64 %conv1.i.i.i, %conv.i29.i.i
  %26 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul.i31.i.i, i32 0) #10, !srcloc !78
  %asmresult.i.i32.i.i = extractvalue { i64, i32 } %26, 0
  %asmresult4.i.i33.i.i = extractvalue { i64, i32 } %26, 1
  %27 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul.i31.i.i, i64 %asmresult.i.i32.i.i, i32 %asmresult4.i.i33.i.i) #10, !srcloc !79
  %asmresult10.i.i34.i.i = extractvalue { i64, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 536870912, i64 %asmresult10.i.i34.i.i)
  %cmp185.i35.i.i = icmp ult i64 %asmresult10.i.i34.i.i, 536870912
  br i1 %cmp185.i35.i.i, label %if.end.i.i.if.end11.i.i_crit_edge, label %if.end188.i39.i.i

if.end.i.i.if.end11.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i.i

if.end188.i39.i.i:                                ; preds = %if.end.i.i
  %c.0.i36.i.i = lshr i64 %asmresult10.i.i34.i.i, 29
  call void @__sanitizer_cov_trace_const_cmp8(i64 35184908959744, i64 %asmresult10.i.i34.i.i)
  %cmp191.i37.i.i = icmp ult i64 %asmresult10.i.i34.i.i, 35184908959744
  %extract.t.i38.i.i = trunc i64 %c.0.i36.i.i to i32
  br i1 %cmp191.i37.i.i, label %if.end188.i39.i.i.if.end.i_crit_edge, label %for.inc.i49.i.i

if.end188.i39.i.i.if.end.i_crit_edge:             ; preds = %if.end188.i39.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

for.inc.i49.i.i:                                  ; preds = %if.end188.i39.i.i
  %shr197.i46.i.i = lshr i64 %asmresult10.i.i34.i.i, 30
  call void @__sanitizer_cov_trace_const_cmp8(i64 70369817919488, i64 %asmresult10.i.i34.i.i)
  %cmp191.1.i47.i.i = icmp ult i64 %asmresult10.i.i34.i.i, 70369817919488
  %extract.t290.i48.i.i = trunc i64 %shr197.i46.i.i to i32
  br i1 %cmp191.1.i47.i.i, label %for.inc.i49.i.i.if.end.i_crit_edge, label %for.inc.1.i53.i.i

for.inc.i49.i.i.if.end.i_crit_edge:               ; preds = %for.inc.i49.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

for.inc.1.i53.i.i:                                ; preds = %for.inc.i49.i.i
  %shr197.1.i50.i.i = lshr i64 %asmresult10.i.i34.i.i, 31
  call void @__sanitizer_cov_trace_const_cmp8(i64 140739635838976, i64 %asmresult10.i.i34.i.i)
  %cmp191.2.i51.i.i = icmp ult i64 %asmresult10.i.i34.i.i, 140739635838976
  %extract.t291.i52.i.i = trunc i64 %shr197.1.i50.i.i to i32
  br i1 %cmp191.2.i51.i.i, label %for.inc.1.i53.i.i.if.end.i_crit_edge, label %for.inc.2.i57.i.i

for.inc.1.i53.i.i.if.end.i_crit_edge:             ; preds = %for.inc.1.i53.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

for.inc.2.i57.i.i:                                ; preds = %for.inc.1.i53.i.i
  %shr197.2.i54.i.i = lshr i64 %asmresult10.i.i34.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 281479271677952, i64 %asmresult10.i.i34.i.i)
  %cmp191.3.i55.i.i = icmp ult i64 %asmresult10.i.i34.i.i, 281479271677952
  %extract.t292.i56.i.i = trunc i64 %shr197.2.i54.i.i to i32
  br i1 %cmp191.3.i55.i.i, label %for.inc.2.i57.i.i.if.end.i_crit_edge, label %for.inc.3.i61.i.i

for.inc.2.i57.i.i.if.end.i_crit_edge:             ; preds = %for.inc.2.i57.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

for.inc.3.i61.i.i:                                ; preds = %for.inc.2.i57.i.i
  %shr197.3.i58.i.i = lshr i64 %asmresult10.i.i34.i.i, 33
  call void @__sanitizer_cov_trace_const_cmp8(i64 562958543355904, i64 %asmresult10.i.i34.i.i)
  %cmp191.4.i59.i.i = icmp ult i64 %asmresult10.i.i34.i.i, 562958543355904
  %extract.t293.i60.i.i = trunc i64 %shr197.3.i58.i.i to i32
  br i1 %cmp191.4.i59.i.i, label %for.inc.3.i61.i.i.if.end.i_crit_edge, label %for.inc.4.i65.i.i

for.inc.3.i61.i.i.if.end.i_crit_edge:             ; preds = %for.inc.3.i61.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

for.inc.4.i65.i.i:                                ; preds = %for.inc.3.i61.i.i
  %shr197.4.i62.i.i = lshr i64 %asmresult10.i.i34.i.i, 34
  call void @__sanitizer_cov_trace_const_cmp8(i64 1125917086711808, i64 %asmresult10.i.i34.i.i)
  %cmp191.5.i63.i.i = icmp ult i64 %asmresult10.i.i34.i.i, 1125917086711808
  %extract.t294.i64.i.i = trunc i64 %shr197.4.i62.i.i to i32
  br i1 %cmp191.5.i63.i.i, label %for.inc.4.i65.i.i.if.end.i_crit_edge, label %for.inc.5.i69.i.i

for.inc.4.i65.i.i.if.end.i_crit_edge:             ; preds = %for.inc.4.i65.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

for.inc.5.i69.i.i:                                ; preds = %for.inc.4.i65.i.i
  %shr197.5.i66.i.i = lshr i64 %asmresult10.i.i34.i.i, 35
  call void @__sanitizer_cov_trace_const_cmp8(i64 2251834173423616, i64 %asmresult10.i.i34.i.i)
  %cmp191.6.i67.i.i = icmp ult i64 %asmresult10.i.i34.i.i, 2251834173423616
  %extract.t295.i68.i.i = trunc i64 %shr197.5.i66.i.i to i32
  br i1 %cmp191.6.i67.i.i, label %for.inc.5.i69.i.i.if.end.i_crit_edge, label %for.inc.6.i73.i.i

for.inc.5.i69.i.i.if.end.i_crit_edge:             ; preds = %for.inc.5.i69.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

for.inc.6.i73.i.i:                                ; preds = %for.inc.5.i69.i.i
  %shr197.6.i70.i.i = lshr i64 %asmresult10.i.i34.i.i, 36
  call void @__sanitizer_cov_trace_const_cmp8(i64 4503668346847232, i64 %asmresult10.i.i34.i.i)
  %cmp191.7.i71.i.i = icmp ult i64 %asmresult10.i.i34.i.i, 4503668346847232
  %extract.t296.i72.i.i = trunc i64 %shr197.6.i70.i.i to i32
  br i1 %cmp191.7.i71.i.i, label %for.inc.6.i73.i.i.if.end.i_crit_edge, label %for.inc.6.i73.i.i.if.end11.i.i_crit_edge

for.inc.6.i73.i.i.if.end11.i.i_crit_edge:         ; preds = %for.inc.6.i73.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i.i

for.inc.6.i73.i.i.if.end.i_crit_edge:             ; preds = %for.inc.6.i73.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end11.i.i:                                     ; preds = %for.inc.6.i73.i.i.if.end11.i.i_crit_edge, %if.end.i.i.if.end11.i.i_crit_edge
  %arrayidx.i76.i.i = getelementptr %struct.fsl_pwm_chip, ptr %chip, i32 0, i32 5, i32 %.26.i.i
  %28 = ptrtoint ptr %arrayidx.i76.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i76.i.i, align 4
  %call.i77.i.i = tail call i32 @clk_get_rate(ptr noundef %29) #6
  %conv.i78.i.i = zext i32 %call.i77.i.i to i64
  %mul.i80.i.i = mul nuw i64 %conv1.i.i.i, %conv.i78.i.i
  %30 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul.i80.i.i, i32 0) #10, !srcloc !78
  %asmresult.i.i81.i.i = extractvalue { i64, i32 } %30, 0
  %asmresult4.i.i82.i.i = extractvalue { i64, i32 } %30, 1
  %31 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul.i80.i.i, i64 %asmresult.i.i81.i.i, i32 %asmresult4.i.i82.i.i) #10, !srcloc !79
  %asmresult10.i.i83.i.i = extractvalue { i64, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 536870912, i64 %asmresult10.i.i83.i.i)
  %cmp185.i84.i.i = icmp ult i64 %asmresult10.i.i83.i.i, 536870912
  br i1 %cmp185.i84.i.i, label %if.end11.i.i.do.end.i_crit_edge, label %if.end188.i88.i.i

if.end11.i.i.do.end.i_crit_edge:                  ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.end188.i88.i.i:                                ; preds = %if.end11.i.i
  %c.0.i85.i.i = lshr i64 %asmresult10.i.i83.i.i, 29
  call void @__sanitizer_cov_trace_const_cmp8(i64 35184908959744, i64 %asmresult10.i.i83.i.i)
  %cmp191.i86.i.i = icmp ult i64 %asmresult10.i.i83.i.i, 35184908959744
  %extract.t.i87.i.i = trunc i64 %c.0.i85.i.i to i32
  br i1 %cmp191.i86.i.i, label %if.end188.i88.i.i.if.end.i_crit_edge, label %for.inc.i98.i.i

if.end188.i88.i.i.if.end.i_crit_edge:             ; preds = %if.end188.i88.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

for.inc.i98.i.i:                                  ; preds = %if.end188.i88.i.i
  %shr197.i95.i.i = lshr i64 %asmresult10.i.i83.i.i, 30
  call void @__sanitizer_cov_trace_const_cmp8(i64 70369817919488, i64 %asmresult10.i.i83.i.i)
  %cmp191.1.i96.i.i = icmp ult i64 %asmresult10.i.i83.i.i, 70369817919488
  %extract.t290.i97.i.i = trunc i64 %shr197.i95.i.i to i32
  br i1 %cmp191.1.i96.i.i, label %for.inc.i98.i.i.if.end.i_crit_edge, label %for.inc.1.i102.i.i

for.inc.i98.i.i.if.end.i_crit_edge:               ; preds = %for.inc.i98.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

for.inc.1.i102.i.i:                               ; preds = %for.inc.i98.i.i
  %shr197.1.i99.i.i = lshr i64 %asmresult10.i.i83.i.i, 31
  call void @__sanitizer_cov_trace_const_cmp8(i64 140739635838976, i64 %asmresult10.i.i83.i.i)
  %cmp191.2.i100.i.i = icmp ult i64 %asmresult10.i.i83.i.i, 140739635838976
  %extract.t291.i101.i.i = trunc i64 %shr197.1.i99.i.i to i32
  br i1 %cmp191.2.i100.i.i, label %for.inc.1.i102.i.i.if.end.i_crit_edge, label %for.inc.2.i106.i.i

for.inc.1.i102.i.i.if.end.i_crit_edge:            ; preds = %for.inc.1.i102.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

for.inc.2.i106.i.i:                               ; preds = %for.inc.1.i102.i.i
  %shr197.2.i103.i.i = lshr i64 %asmresult10.i.i83.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 281479271677952, i64 %asmresult10.i.i83.i.i)
  %cmp191.3.i104.i.i = icmp ult i64 %asmresult10.i.i83.i.i, 281479271677952
  %extract.t292.i105.i.i = trunc i64 %shr197.2.i103.i.i to i32
  br i1 %cmp191.3.i104.i.i, label %for.inc.2.i106.i.i.if.end.i_crit_edge, label %for.inc.3.i110.i.i

for.inc.2.i106.i.i.if.end.i_crit_edge:            ; preds = %for.inc.2.i106.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

for.inc.3.i110.i.i:                               ; preds = %for.inc.2.i106.i.i
  %shr197.3.i107.i.i = lshr i64 %asmresult10.i.i83.i.i, 33
  call void @__sanitizer_cov_trace_const_cmp8(i64 562958543355904, i64 %asmresult10.i.i83.i.i)
  %cmp191.4.i108.i.i = icmp ult i64 %asmresult10.i.i83.i.i, 562958543355904
  %extract.t293.i109.i.i = trunc i64 %shr197.3.i107.i.i to i32
  br i1 %cmp191.4.i108.i.i, label %for.inc.3.i110.i.i.if.end.i_crit_edge, label %for.inc.4.i114.i.i

for.inc.3.i110.i.i.if.end.i_crit_edge:            ; preds = %for.inc.3.i110.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

for.inc.4.i114.i.i:                               ; preds = %for.inc.3.i110.i.i
  %shr197.4.i111.i.i = lshr i64 %asmresult10.i.i83.i.i, 34
  call void @__sanitizer_cov_trace_const_cmp8(i64 1125917086711808, i64 %asmresult10.i.i83.i.i)
  %cmp191.5.i112.i.i = icmp ult i64 %asmresult10.i.i83.i.i, 1125917086711808
  %extract.t294.i113.i.i = trunc i64 %shr197.4.i111.i.i to i32
  br i1 %cmp191.5.i112.i.i, label %for.inc.4.i114.i.i.if.end.i_crit_edge, label %for.inc.5.i118.i.i

for.inc.4.i114.i.i.if.end.i_crit_edge:            ; preds = %for.inc.4.i114.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

for.inc.5.i118.i.i:                               ; preds = %for.inc.4.i114.i.i
  %shr197.5.i115.i.i = lshr i64 %asmresult10.i.i83.i.i, 35
  call void @__sanitizer_cov_trace_const_cmp8(i64 2251834173423616, i64 %asmresult10.i.i83.i.i)
  %cmp191.6.i116.i.i = icmp ult i64 %asmresult10.i.i83.i.i, 2251834173423616
  %extract.t295.i117.i.i = trunc i64 %shr197.5.i115.i.i to i32
  br i1 %cmp191.6.i116.i.i, label %for.inc.5.i118.i.i.if.end.i_crit_edge, label %for.inc.6.i122.i.i

for.inc.5.i118.i.i.if.end.i_crit_edge:            ; preds = %for.inc.5.i118.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

for.inc.6.i122.i.i:                               ; preds = %for.inc.5.i118.i.i
  %shr197.6.i119.i.i = lshr i64 %asmresult10.i.i83.i.i, 36
  call void @__sanitizer_cov_trace_const_cmp8(i64 4503668346847232, i64 %asmresult10.i.i83.i.i)
  %cmp191.7.i120.i.i = icmp ult i64 %asmresult10.i.i83.i.i, 4503668346847232
  %extract.t296.i121.i.i = trunc i64 %shr197.6.i119.i.i to i32
  br i1 %cmp191.7.i120.i.i, label %for.inc.6.i122.i.i.if.end.i_crit_edge, label %for.inc.6.i122.i.i.do.end.i_crit_edge

for.inc.6.i122.i.i.do.end.i_crit_edge:            ; preds = %for.inc.6.i122.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

for.inc.6.i122.i.i.if.end.i_crit_edge:            ; preds = %for.inc.6.i122.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %for.inc.6.i122.i.i.do.end.i_crit_edge, %if.end11.i.i.do.end.i_crit_edge
  %32 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.19) #9
  br label %end_mutex

if.end.i:                                         ; preds = %for.inc.6.i122.i.i.if.end.i_crit_edge, %for.inc.5.i118.i.i.if.end.i_crit_edge, %for.inc.4.i114.i.i.if.end.i_crit_edge, %for.inc.3.i110.i.i.if.end.i_crit_edge, %for.inc.2.i106.i.i.if.end.i_crit_edge, %for.inc.1.i102.i.i.if.end.i_crit_edge, %for.inc.i98.i.i.if.end.i_crit_edge, %if.end188.i88.i.i.if.end.i_crit_edge, %for.inc.6.i73.i.i.if.end.i_crit_edge, %for.inc.5.i69.i.i.if.end.i_crit_edge, %for.inc.4.i65.i.i.if.end.i_crit_edge, %for.inc.3.i61.i.i.if.end.i_crit_edge, %for.inc.2.i57.i.i.if.end.i_crit_edge, %for.inc.1.i53.i.i.if.end.i_crit_edge, %for.inc.i49.i.i.if.end.i_crit_edge, %if.end188.i39.i.i.if.end.i_crit_edge, %for.inc.6.i.i.i.if.end.i_crit_edge, %for.inc.5.i.i.i.if.end.i_crit_edge, %for.inc.4.i.i.i.if.end.i_crit_edge, %for.inc.3.i.i.i.if.end.i_crit_edge, %for.inc.2.i.i.i.if.end.i_crit_edge, %for.inc.1.i.i.i.if.end.i_crit_edge, %for.inc.i.i.i.if.end.i_crit_edge, %if.end188.i.i.i.if.end.i_crit_edge
  %.26.sink.i.i = phi i32 [ 0, %if.end188.i.i.i.if.end.i_crit_edge ], [ 0, %for.inc.i.i.i.if.end.i_crit_edge ], [ 0, %for.inc.1.i.i.i.if.end.i_crit_edge ], [ 0, %for.inc.2.i.i.i.if.end.i_crit_edge ], [ 0, %for.inc.3.i.i.i.if.end.i_crit_edge ], [ 0, %for.inc.4.i.i.i.if.end.i_crit_edge ], [ 0, %for.inc.5.i.i.i.if.end.i_crit_edge ], [ 0, %for.inc.6.i.i.i.if.end.i_crit_edge ], [ %..i.i, %if.end188.i39.i.i.if.end.i_crit_edge ], [ %..i.i, %for.inc.i49.i.i.if.end.i_crit_edge ], [ %..i.i, %for.inc.1.i53.i.i.if.end.i_crit_edge ], [ %..i.i, %for.inc.2.i57.i.i.if.end.i_crit_edge ], [ %..i.i, %for.inc.3.i61.i.i.if.end.i_crit_edge ], [ %..i.i, %for.inc.4.i65.i.i.if.end.i_crit_edge ], [ %..i.i, %for.inc.5.i69.i.i.if.end.i_crit_edge ], [ %..i.i, %for.inc.6.i73.i.i.if.end.i_crit_edge ], [ %.26.i.i, %for.inc.6.i122.i.i.if.end.i_crit_edge ], [ %.26.i.i, %for.inc.5.i118.i.i.if.end.i_crit_edge ], [ %.26.i.i, %for.inc.4.i114.i.i.if.end.i_crit_edge ], [ %.26.i.i, %for.inc.3.i110.i.i.if.end.i_crit_edge ], [ %.26.i.i, %for.inc.2.i106.i.i.if.end.i_crit_edge ], [ %.26.i.i, %for.inc.1.i102.i.i.if.end.i_crit_edge ], [ %.26.i.i, %for.inc.i98.i.i.if.end.i_crit_edge ], [ %.26.i.i, %if.end188.i88.i.i.if.end.i_crit_edge ]
  %ps.0287.lcssa.i89.sink.i.i = phi i32 [ 0, %if.end188.i.i.i.if.end.i_crit_edge ], [ 1, %for.inc.i.i.i.if.end.i_crit_edge ], [ 2, %for.inc.1.i.i.i.if.end.i_crit_edge ], [ 3, %for.inc.2.i.i.i.if.end.i_crit_edge ], [ 4, %for.inc.3.i.i.i.if.end.i_crit_edge ], [ 5, %for.inc.4.i.i.i.if.end.i_crit_edge ], [ 6, %for.inc.5.i.i.i.if.end.i_crit_edge ], [ 7, %for.inc.6.i.i.i.if.end.i_crit_edge ], [ 0, %if.end188.i39.i.i.if.end.i_crit_edge ], [ 1, %for.inc.i49.i.i.if.end.i_crit_edge ], [ 2, %for.inc.1.i53.i.i.if.end.i_crit_edge ], [ 3, %for.inc.2.i57.i.i.if.end.i_crit_edge ], [ 4, %for.inc.3.i61.i.i.if.end.i_crit_edge ], [ 5, %for.inc.4.i65.i.i.if.end.i_crit_edge ], [ 6, %for.inc.5.i69.i.i.if.end.i_crit_edge ], [ 7, %for.inc.6.i73.i.i.if.end.i_crit_edge ], [ 7, %for.inc.6.i122.i.i.if.end.i_crit_edge ], [ 6, %for.inc.5.i118.i.i.if.end.i_crit_edge ], [ 5, %for.inc.4.i114.i.i.if.end.i_crit_edge ], [ 4, %for.inc.3.i110.i.i.if.end.i_crit_edge ], [ 3, %for.inc.2.i106.i.i.if.end.i_crit_edge ], [ 2, %for.inc.1.i102.i.i.if.end.i_crit_edge ], [ 1, %for.inc.i98.i.i.if.end.i_crit_edge ], [ 0, %if.end188.i88.i.i.if.end.i_crit_edge ]
  %c.1286.lcssa.off0.i90.sink.i.i = phi i32 [ %extract.t.i.i.i, %if.end188.i.i.i.if.end.i_crit_edge ], [ %extract.t290.i.i.i, %for.inc.i.i.i.if.end.i_crit_edge ], [ %extract.t291.i.i.i, %for.inc.1.i.i.i.if.end.i_crit_edge ], [ %extract.t292.i.i.i, %for.inc.2.i.i.i.if.end.i_crit_edge ], [ %extract.t293.i.i.i, %for.inc.3.i.i.i.if.end.i_crit_edge ], [ %extract.t294.i.i.i, %for.inc.4.i.i.i.if.end.i_crit_edge ], [ %extract.t295.i.i.i, %for.inc.5.i.i.i.if.end.i_crit_edge ], [ %extract.t296.i.i.i, %for.inc.6.i.i.i.if.end.i_crit_edge ], [ %extract.t.i38.i.i, %if.end188.i39.i.i.if.end.i_crit_edge ], [ %extract.t290.i48.i.i, %for.inc.i49.i.i.if.end.i_crit_edge ], [ %extract.t291.i52.i.i, %for.inc.1.i53.i.i.if.end.i_crit_edge ], [ %extract.t292.i56.i.i, %for.inc.2.i57.i.i.if.end.i_crit_edge ], [ %extract.t293.i60.i.i, %for.inc.3.i61.i.i.if.end.i_crit_edge ], [ %extract.t294.i64.i.i, %for.inc.4.i65.i.i.if.end.i_crit_edge ], [ %extract.t295.i68.i.i, %for.inc.5.i69.i.i.if.end.i_crit_edge ], [ %extract.t296.i72.i.i, %for.inc.6.i73.i.i.if.end.i_crit_edge ], [ %extract.t296.i121.i.i, %for.inc.6.i122.i.i.if.end.i_crit_edge ], [ %extract.t295.i117.i.i, %for.inc.5.i118.i.i.if.end.i_crit_edge ], [ %extract.t294.i113.i.i, %for.inc.4.i114.i.i.if.end.i_crit_edge ], [ %extract.t293.i109.i.i, %for.inc.3.i110.i.i.if.end.i_crit_edge ], [ %extract.t292.i105.i.i, %for.inc.2.i106.i.i.if.end.i_crit_edge ], [ %extract.t291.i101.i.i, %for.inc.1.i102.i.i.if.end.i_crit_edge ], [ %extract.t290.i97.i.i, %for.inc.i98.i.i.if.end.i_crit_edge ], [ %extract.t.i87.i.i, %if.end188.i88.i.i.if.end.i_crit_edge ]
  %conv195.i92.i.i = add nsw i32 %c.1286.lcssa.off0.i90.sink.i.i, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #6
  %34 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %val.i.i, align 4, !annotation !80
  %regmap.i.i = getelementptr inbounds %struct.fsl_pwm_chip, ptr %chip, i32 0, i32 2
  %35 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %36, i32 noundef 96, ptr noundef nonnull %val.i.i) #6
  %37 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val.i.i, align 4
  %neg.i.i = and i32 %38, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %neg.i.i)
  %tobool.not.i.not.i = icmp eq i32 %neg.i.i, 255
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #6
  br i1 %tobool.not.i.not.i, label %if.end.i.if.end30.i_crit_edge, label %if.else.i

if.end.i.if.end30.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30.i

if.else.i:                                        ; preds = %if.end.i
  %period3.i = getelementptr inbounds %struct.fsl_pwm_chip, ptr %chip, i32 0, i32 3
  %39 = ptrtoint ptr %period3.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %period3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %.26.sink.i.i)
  %cmp.not.i.i = icmp eq i32 %40, %.26.sink.i.i
  br i1 %cmp.not.i.i, label %if.end.i95.i, label %if.else.i.if.then5.i_crit_edge

if.else.i.if.then5.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5.i

if.end.i95.i:                                     ; preds = %if.else.i
  %clk_ps.i.i = getelementptr inbounds %struct.fsl_pwm_chip, ptr %chip, i32 0, i32 3, i32 1
  %41 = ptrtoint ptr %clk_ps.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %clk_ps.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %ps.0287.lcssa.i89.sink.i.i)
  %cmp3.not.i.i = icmp eq i32 %42, %ps.0287.lcssa.i89.sink.i.i
  br i1 %cmp3.not.i.i, label %fsl_pwm_periodcfg_are_equal.exit.i, label %if.end.i95.i.if.then5.i_crit_edge

if.end.i95.i.if.then5.i_crit_edge:                ; preds = %if.end.i95.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5.i

fsl_pwm_periodcfg_are_equal.exit.i:               ; preds = %if.end.i95.i
  %mod_period.i.i = getelementptr inbounds %struct.fsl_pwm_chip, ptr %chip, i32 0, i32 3, i32 2
  %43 = ptrtoint ptr %mod_period.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mod_period.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %conv195.i92.i.i)
  %cmp7.not.i.i = icmp eq i32 %44, %conv195.i92.i.i
  br i1 %cmp7.not.i.i, label %if.end40.critedge.i, label %fsl_pwm_periodcfg_are_equal.exit.i.if.then5.i_crit_edge

fsl_pwm_periodcfg_are_equal.exit.i.if.then5.i_crit_edge: ; preds = %fsl_pwm_periodcfg_are_equal.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5.i

if.then5.i:                                       ; preds = %fsl_pwm_periodcfg_are_equal.exit.i.if.then5.i_crit_edge, %if.end.i95.i.if.then5.i_crit_edge, %if.else.i.if.then5.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i97.i) #6
  %45 = ptrtoint ptr %val.i97.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %val.i97.i, align 4, !annotation !80
  %46 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap.i.i, align 4
  %call.i99.i = call i32 @regmap_read(ptr noundef %47, i32 noundef 96, ptr noundef nonnull %val.i97.i) #6
  %48 = ptrtoint ptr %val.i97.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %val.i97.i, align 4
  %hwpwm.i.i = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %50 = ptrtoint ptr %hwpwm.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %hwpwm.i.i, align 8
  %shl.i.i = shl nuw i32 1, %51
  %or.i.i = or i32 %shl.i.i, %49
  %neg.i100.i = and i32 %or.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %neg.i100.i)
  %tobool.not.i101.not.i = icmp eq i32 %neg.i100.i, 255
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i97.i) #6
  br i1 %tobool.not.i101.not.i, label %if.end13.i, label %do.end10.i

do.end10.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chip, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.22, i32 noundef %51) #9
  br label %end_mutex

if.end13.i:                                       ; preds = %if.then5.i
  %54 = ptrtoint ptr %period3.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %period3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %.26.sink.i.i)
  %cmp.not.i = icmp eq i32 %55, %.26.sink.i.i
  br i1 %cmp.not.i, label %if.end13.i.if.end30.i_crit_edge, label %if.then17.i

if.end13.i.if.end30.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30.i

if.then17.i:                                      ; preds = %if.end13.i
  %arrayidx.i = getelementptr %struct.fsl_pwm_chip, ptr %chip, i32 0, i32 5, i32 %.26.sink.i.i
  %56 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i, align 4
  %call.i102.i = call i32 @clk_prepare(ptr noundef %57) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102.i)
  %tobool.not.i103.i = icmp eq i32 %call.i102.i, 0
  br i1 %tobool.not.i103.i, label %if.end.i105.i, label %if.then17.i.end_mutex_crit_edge

if.then17.i.end_mutex_crit_edge:                  ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %end_mutex

if.end.i105.i:                                    ; preds = %if.then17.i
  %call1.i104.i = call i32 @clk_enable(ptr noundef %57) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i104.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i104.i, 0
  br i1 %tobool2.not.i.i, label %if.end23.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i105.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unprepare(ptr noundef %57) #6
  br label %end_mutex

if.end23.i:                                       ; preds = %if.end.i105.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx25.i = getelementptr %struct.fsl_pwm_chip, ptr %chip, i32 0, i32 5, i32 %55
  %58 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx25.i, align 4
  call void @clk_disable(ptr noundef %59) #6
  call void @clk_unprepare(ptr noundef %59) #6
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.end23.i, %if.end13.i.if.end30.i_crit_edge, %if.end.i.if.end30.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i107.i) #6
  %60 = ptrtoint ptr %val.i107.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -1, ptr %val.i107.i, align 4, !annotation !80
  %61 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap.i.i, align 4
  %call.i109.i = call i32 @regmap_read(ptr noundef %62, i32 noundef 116, ptr noundef nonnull %val.i107.i) #6
  %63 = ptrtoint ptr %val.i107.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %val.i107.i, align 4
  %and.i.i = and i32 %64, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i110.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i110.i, label %if.end30.i.ftm_clear_write_protection.exit.i_crit_edge, label %if.then.i.i

if.end30.i.ftm_clear_write_protection.exit.i_crit_edge: ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ftm_clear_write_protection.exit.i

if.then.i.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i111.i = call i32 @regmap_update_bits_base(ptr noundef %66, i32 noundef 84, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %ftm_clear_write_protection.exit.i

ftm_clear_write_protection.exit.i:                ; preds = %if.then.i.i, %if.end30.i.ftm_clear_write_protection.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i107.i) #6
  %67 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regmap.i.i, align 4
  %add.i = shl nuw nsw i32 %.26.sink.i.i, 3
  %shl.i = add nuw nsw i32 %add.i, 8
  %call.i113.i = call i32 @regmap_update_bits_base(ptr noundef %68, i32 noundef 0, i32 noundef 24, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %69 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regmap.i.i, align 4
  %call.i114.i = call i32 @regmap_update_bits_base(ptr noundef %70, i32 noundef 0, i32 noundef 7, i32 noundef %ps.0287.lcssa.i89.sink.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %71 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regmap.i.i, align 4
  %call38.i = call i32 @regmap_write(ptr noundef %72, i32 noundef 8, i32 noundef %conv195.i92.i.i) #6
  %period39.i = getelementptr inbounds %struct.fsl_pwm_chip, ptr %chip, i32 0, i32 3
  %73 = ptrtoint ptr %period39.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %.26.sink.i.i, ptr %period39.i, align 4
  %periodcfg.sroa.8.0.period39.sroa_idx.i = getelementptr inbounds %struct.fsl_pwm_chip, ptr %chip, i32 0, i32 3, i32 1
  %74 = ptrtoint ptr %periodcfg.sroa.8.0.period39.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %ps.0287.lcssa.i89.sink.i.i, ptr %periodcfg.sroa.8.0.period39.sroa_idx.i, align 4
  %periodcfg.sroa.12.0.period39.sroa_idx.i = getelementptr inbounds %struct.fsl_pwm_chip, ptr %chip, i32 0, i32 3, i32 2
  %75 = ptrtoint ptr %periodcfg.sroa.12.0.period39.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %conv195.i92.i.i, ptr %periodcfg.sroa.12.0.period39.sroa_idx.i, align 4
  br label %if.end40.i

if.end40.critedge.i:                              ; preds = %fsl_pwm_periodcfg_are_equal.exit.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i115.i) #6
  %76 = ptrtoint ptr %val.i115.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -1, ptr %val.i115.i, align 4, !annotation !80
  %77 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regmap.i.i, align 4
  %call.i117.i = call i32 @regmap_read(ptr noundef %78, i32 noundef 116, ptr noundef nonnull %val.i115.i) #6
  %79 = ptrtoint ptr %val.i115.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %val.i115.i, align 4
  %and.i118.i = and i32 %80, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i118.i)
  %tobool.not.i119.i = icmp eq i32 %and.i118.i, 0
  br i1 %tobool.not.i119.i, label %if.end40.critedge.i.ftm_clear_write_protection.exit123.i_crit_edge, label %if.then.i121.i

if.end40.critedge.i.ftm_clear_write_protection.exit123.i_crit_edge: ; preds = %if.end40.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ftm_clear_write_protection.exit123.i

if.then.i121.i:                                   ; preds = %if.end40.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  %81 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i120.i = call i32 @regmap_update_bits_base(ptr noundef %82, i32 noundef 84, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %ftm_clear_write_protection.exit123.i

ftm_clear_write_protection.exit123.i:             ; preds = %if.then.i121.i, %if.end40.critedge.i.ftm_clear_write_protection.exit123.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i115.i) #6
  br label %if.end40.i

if.end40.i:                                       ; preds = %ftm_clear_write_protection.exit123.i, %ftm_clear_write_protection.exit.i
  %duty_cycle.i = getelementptr inbounds %struct.pwm_state, ptr %newstate, i32 0, i32 1
  %83 = ptrtoint ptr %duty_cycle.i to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %duty_cycle.i, align 8
  %mod_period.i124.i = getelementptr inbounds %struct.fsl_pwm_chip, ptr %chip, i32 0, i32 3, i32 2
  %85 = ptrtoint ptr %mod_period.i124.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %mod_period.i124.i, align 4
  %add.i.i = add i32 %86, 1
  %period.i.i.i = getelementptr inbounds %struct.fsl_pwm_chip, ptr %chip, i32 0, i32 3
  %87 = ptrtoint ptr %period.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %period.i.i.i, align 4
  %arrayidx.i.i125.i = getelementptr %struct.fsl_pwm_chip, ptr %chip, i32 0, i32 5, i32 %88
  %89 = ptrtoint ptr %arrayidx.i.i125.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx.i.i125.i, align 4
  %call.i.i126.i = call i32 @clk_get_rate(ptr noundef %90) #6
  %conv.i.i127.i = zext i32 %add.i.i to i64
  %mul.i.i128.i = mul nuw nsw i64 %conv.i.i127.i, 1000000000
  %clk_ps.i.i.i = getelementptr inbounds %struct.fsl_pwm_chip, ptr %chip, i32 0, i32 3, i32 1
  %91 = ptrtoint ptr %clk_ps.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %clk_ps.i.i.i, align 4
  %shr.i.i.i = lshr i32 %call.i.i126.i, %92
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i.i128.i)
  %cmp170.i.i.i = icmp ult i64 %mul.i.i128.i, 4294967296
  br i1 %cmp170.i.i.i, label %if.then174.i.i.i, label %if.else180.i.i.i, !prof !81

if.then174.i.i.i:                                 ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv175.i.i.i = trunc i64 %mul.i.i128.i to i32
  %div178.i.i.i = udiv i32 %conv175.i.i.i, %shr.i.i.i
  br label %fsl_pwm_ticks_to_ns.exit.i.i

if.else180.i.i.i:                                 ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  %93 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shr.i.i.i, i64 %mul.i.i128.i) #10, !srcloc !82
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %93, 1
  %extract.t293.i.i134.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %fsl_pwm_ticks_to_ns.exit.i.i

fsl_pwm_ticks_to_ns.exit.i.i:                     ; preds = %if.else180.i.i.i, %if.then174.i.i.i
  %exval.0.off0.i.i.i = phi i32 [ %div178.i.i.i, %if.then174.i.i.i ], [ %extract.t293.i.i134.i, %if.else180.i.i.i ]
  %conv.i.i = and i64 %84, 4294967295
  %mul.i.i = mul nuw i64 %conv.i.i, %conv.i.i127.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i.i)
  %cmp171.i.i = icmp ult i64 %mul.i.i, 4294967296
  br i1 %cmp171.i.i, label %if.then175.i.i, label %if.else181.i.i, !prof !81

if.then175.i.i:                                   ; preds = %fsl_pwm_ticks_to_ns.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv176.i.i = trunc i64 %mul.i.i to i32
  %div179.i.i = udiv i32 %conv176.i.i, %exval.0.off0.i.i.i
  br label %fsl_pwm_calculate_duty.exit.i

if.else181.i.i:                                   ; preds = %fsl_pwm_ticks_to_ns.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %94 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %exval.0.off0.i.i.i, i64 %mul.i.i) #10, !srcloc !82
  %asmresult1.i.i.i = extractvalue { i64, i64 } %94, 1
  %extract.t294.i.i = trunc i64 %asmresult1.i.i.i to i32
  br label %fsl_pwm_calculate_duty.exit.i

fsl_pwm_calculate_duty.exit.i:                    ; preds = %if.else181.i.i, %if.then175.i.i
  %duty.0.off0.i.i = phi i32 [ %div179.i.i, %if.then175.i.i ], [ %extract.t294.i.i, %if.else181.i.i ]
  %95 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regmap.i.i, align 4
  %hwpwm44.i = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %97 = ptrtoint ptr %hwpwm44.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %hwpwm44.i, align 8
  %mul.i = shl i32 %98, 3
  %add45.i = add i32 %mul.i, 12
  %call46.i = call i32 @regmap_write(ptr noundef %96, i32 noundef %add45.i, i32 noundef 40) #6
  %99 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regmap.i.i, align 4
  %101 = ptrtoint ptr %hwpwm44.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %hwpwm44.i, align 8
  %mul49.i = shl i32 %102, 3
  %add50.i = add i32 %mul49.i, 16
  %call51.i = call i32 @regmap_write(ptr noundef %100, i32 noundef %add50.i, i32 noundef %duty.0.off0.i.i) #6
  %polarity.i = getelementptr inbounds %struct.pwm_state, ptr %newstate, i32 0, i32 2
  %103 = ptrtoint ptr %polarity.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %polarity.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %104)
  %cmp52.i = icmp eq i32 %104, 1
  br i1 %cmp52.i, label %if.then54.i, label %fsl_pwm_calculate_duty.exit.i.if.end13_crit_edge

fsl_pwm_calculate_duty.exit.i.if.end13_crit_edge: ; preds = %fsl_pwm_calculate_duty.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then54.i:                                      ; preds = %fsl_pwm_calculate_duty.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %105 = ptrtoint ptr %hwpwm44.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %hwpwm44.i, align 8
  %shl56.i = shl nuw i32 1, %106
  br label %if.end13

if.end13:                                         ; preds = %if.then54.i, %fsl_pwm_calculate_duty.exit.i.if.end13_crit_edge
  %reg_polarity.0.i = phi i32 [ %shl56.i, %if.then54.i ], [ 0, %fsl_pwm_calculate_duty.exit.i.if.end13_crit_edge ]
  %107 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regmap.i.i, align 4
  %109 = ptrtoint ptr %hwpwm44.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %hwpwm44.i, align 8
  %shl60.i = shl nuw i32 1, %110
  %call.i139.i = call i32 @regmap_update_bits_base(ptr noundef %108, i32 noundef 112, i32 noundef %shl60.i, i32 noundef %reg_polarity.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %111 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i141.i = call i32 @regmap_update_bits_base(ptr noundef %112, i32 noundef 116, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %enabled14 = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 7, i32 3
  %113 = ptrtoint ptr %enabled14 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %enabled14, align 4, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool15.not = icmp eq i8 %114, 0
  br i1 %tobool15.not, label %if.then16, label %if.end13.end_mutex_crit_edge

if.end13.end_mutex_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %end_mutex

if.then16:                                        ; preds = %if.end13
  %115 = ptrtoint ptr %period.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %period.i.i.i, align 4
  %arrayidx20 = getelementptr %struct.fsl_pwm_chip, ptr %chip, i32 0, i32 5, i32 %116
  %117 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %arrayidx20, align 4
  %call.i62 = call i32 @clk_prepare(ptr noundef %118) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %tobool.not.i = icmp eq i32 %call.i62, 0
  br i1 %tobool.not.i, label %if.end.i63, label %if.then16.end_mutex_crit_edge

if.then16.end_mutex_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %end_mutex

if.end.i63:                                       ; preds = %if.then16
  %call1.i = call i32 @clk_enable(ptr noundef %118) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end24, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unprepare(ptr noundef %118) #6
  br label %end_mutex

if.end24:                                         ; preds = %if.end.i63
  %arrayidx26 = getelementptr %struct.fsl_pwm_chip, ptr %chip, i32 0, i32 5, i32 3
  %119 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx26, align 4
  %call.i64 = call i32 @clk_prepare(ptr noundef %120) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %tobool.not.i65 = icmp eq i32 %call.i64, 0
  br i1 %tobool.not.i65, label %if.end.i68, label %if.end24.if.then29_crit_edge

if.end24.if.then29_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then29

if.end.i68:                                       ; preds = %if.end24
  %call1.i66 = call i32 @clk_enable(ptr noundef %120) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i66)
  %tobool2.not.i67 = icmp eq i32 %call1.i66, 0
  br i1 %tobool2.not.i67, label %if.end34, label %if.then3.i69

if.then3.i69:                                     ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unprepare(ptr noundef %120) #6
  br label %if.then29

if.then29:                                        ; preds = %if.then3.i69, %if.end24.if.then29_crit_edge
  %retval.0.i70.ph = phi i32 [ %call1.i66, %if.then3.i69 ], [ %call.i64, %if.end24.if.then29_crit_edge ]
  %121 = ptrtoint ptr %period.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %period.i.i.i, align 4
  %arrayidx33 = getelementptr %struct.fsl_pwm_chip, ptr %chip, i32 0, i32 5, i32 %122
  %123 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx33, align 4
  call void @clk_disable(ptr noundef %124) #6
  call void @clk_unprepare(ptr noundef %124) #6
  br label %end_mutex

if.end34:                                         ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #8
  %125 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %regmap.i.i, align 4
  %127 = ptrtoint ptr %hwpwm44.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %hwpwm44.i, align 8
  %shl37 = shl nuw i32 1, %128
  %call.i72 = call i32 @regmap_update_bits_base(ptr noundef %126, i32 noundef 96, i32 noundef %shl37, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %end_mutex

end_mutex:                                        ; preds = %if.end34, %if.then29, %if.then3.i, %if.then16.end_mutex_crit_edge, %if.end13.end_mutex_crit_edge, %if.then3.i.i, %if.then17.i.end_mutex_crit_edge, %do.end10.i, %do.end.i, %if.then3, %if.then.end_mutex_crit_edge
  %ret.0 = phi i32 [ 0, %if.end13.end_mutex_crit_edge ], [ %retval.0.i70.ph, %if.then29 ], [ 0, %if.end34 ], [ 0, %if.then3 ], [ 0, %if.then.end_mutex_crit_edge ], [ %call.i102.i, %if.then17.i.end_mutex_crit_edge ], [ %call1.i104.i, %if.then3.i.i ], [ -22, %do.end.i ], [ -16, %do.end10.i ], [ %call1.i, %if.then3.i ], [ %call.i62, %if.then16.end_mutex_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_pwm_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regmap = getelementptr inbounds %struct.fsl_pwm_chip, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %3, i1 noundef zeroext true) #6
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %5) #6
  %npwm = getelementptr inbounds %struct.pwm_chip, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %npwm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %npwm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp22.not = icmp eq i32 %7, 0
  br i1 %cmp22.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pwms = getelementptr inbounds %struct.pwm_chip, ptr %1, i32 0, i32 7
  %ipg_clk = getelementptr inbounds %struct.fsl_pwm_chip, ptr %1, i32 0, i32 4
  %arrayidx7 = getelementptr %struct.fsl_pwm_chip, ptr %1, i32 0, i32 5, i32 3
  %period = getelementptr inbounds %struct.fsl_pwm_chip, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %8 = ptrtoint ptr %pwms to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pwms, align 4
  %flags = getelementptr %struct.pwm_device, ptr %9, i32 %i.023, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %12 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body
  %13 = ptrtoint ptr %ipg_clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ipg_clk, align 4
  tail call void @clk_disable(ptr noundef %14) #6
  tail call void @clk_unprepare(ptr noundef %14) #6
  %state.sroa.4.0.state1.i.sroa_idx.i = getelementptr %struct.pwm_device, ptr %9, i32 %i.023, i32 7, i32 3
  %15 = ptrtoint ptr %state.sroa.4.0.state1.i.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %state.sroa.4.0.copyload1.i = load i8, ptr %state.sroa.4.0.state1.i.sroa_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state.sroa.4.0.copyload1.i)
  %tobool.i.not = icmp eq i8 %state.sroa.4.0.copyload1.i, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx7, align 4
  tail call void @clk_disable(ptr noundef %17) #6
  tail call void @clk_unprepare(ptr noundef %17) #6
  %18 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %period, align 4
  %arrayidx9 = getelementptr %struct.fsl_pwm_chip, ptr %1, i32 0, i32 5, i32 %19
  %20 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx9, align 4
  tail call void @clk_disable(ptr noundef %21) #6
  tail call void @clk_unprepare(ptr noundef %21) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.023, 1
  %22 = ptrtoint ptr %npwm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %npwm, align 4
  %cmp = icmp ult i32 %inc, %23
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_pwm_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %npwm = getelementptr inbounds %struct.pwm_chip, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %npwm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %npwm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp42.not = icmp eq i32 %3, 0
  br i1 %cmp42.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pwms = getelementptr inbounds %struct.pwm_chip, ptr %1, i32 0, i32 7
  %ipg_clk = getelementptr inbounds %struct.fsl_pwm_chip, ptr %1, i32 0, i32 4
  %period = getelementptr inbounds %struct.fsl_pwm_chip, ptr %1, i32 0, i32 3
  %arrayidx10 = getelementptr %struct.fsl_pwm_chip, ptr %1, i32 0, i32 5, i32 3
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.043 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %4 = ptrtoint ptr %pwms to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pwms, align 4
  %flags = getelementptr %struct.pwm_device, ptr %5, i32 %i.043, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body
  %9 = ptrtoint ptr %ipg_clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ipg_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.clk_prepare_enable.exit_crit_edge

if.end.clk_prepare_enable.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %10) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end.clk_prepare_enable.exit_crit_edge
  %state.sroa.4.0.state1.i.sroa_idx.i = getelementptr %struct.pwm_device, ptr %5, i32 %i.043, i32 7, i32 3
  %11 = ptrtoint ptr %state.sroa.4.0.state1.i.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %state.sroa.4.0.copyload1.i = load i8, ptr %state.sroa.4.0.state1.i.sroa_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state.sroa.4.0.copyload1.i)
  %tobool.i.not = icmp eq i8 %state.sroa.4.0.copyload1.i, 0
  br i1 %tobool.i.not, label %clk_prepare_enable.exit.cleanup_crit_edge, label %if.end6

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %clk_prepare_enable.exit
  %12 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %period, align 4
  %arrayidx7 = getelementptr %struct.fsl_pwm_chip, ptr %1, i32 0, i32 5, i32 %13
  %14 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx7, align 4
  %call.i26 = tail call i32 @clk_prepare(ptr noundef %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %tobool.not.i27 = icmp eq i32 %call.i26, 0
  br i1 %tobool.not.i27, label %if.end.i30, label %if.end6.clk_prepare_enable.exit33_crit_edge

if.end6.clk_prepare_enable.exit33_crit_edge:      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit33

if.end.i30:                                       ; preds = %if.end6
  %call1.i28 = tail call i32 @clk_enable(ptr noundef %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i28)
  %tobool2.not.i29 = icmp eq i32 %call1.i28, 0
  br i1 %tobool2.not.i29, label %if.end.i30.clk_prepare_enable.exit33_crit_edge, label %if.then3.i31

if.end.i30.clk_prepare_enable.exit33_crit_edge:   ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit33

if.then3.i31:                                     ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %15) #6
  br label %clk_prepare_enable.exit33

clk_prepare_enable.exit33:                        ; preds = %if.then3.i31, %if.end.i30.clk_prepare_enable.exit33_crit_edge, %if.end6.clk_prepare_enable.exit33_crit_edge
  %16 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx10, align 4
  %call.i34 = tail call i32 @clk_prepare(ptr noundef %17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %tobool.not.i35 = icmp eq i32 %call.i34, 0
  br i1 %tobool.not.i35, label %if.end.i38, label %clk_prepare_enable.exit33.cleanup_crit_edge

clk_prepare_enable.exit33.cleanup_crit_edge:      ; preds = %clk_prepare_enable.exit33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i38:                                       ; preds = %clk_prepare_enable.exit33
  %call1.i36 = tail call i32 @clk_enable(ptr noundef %17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i36)
  %tobool2.not.i37 = icmp eq i32 %call1.i36, 0
  br i1 %tobool2.not.i37, label %if.end.i38.cleanup_crit_edge, label %if.then3.i39

if.end.i38.cleanup_crit_edge:                     ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3.i39:                                     ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %17) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then3.i39, %if.end.i38.cleanup_crit_edge, %clk_prepare_enable.exit33.cleanup_crit_edge, %clk_prepare_enable.exit.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.043, 1
  %18 = ptrtoint ptr %npwm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %npwm, align 4
  %cmp = icmp ult i32 %inc, %19
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %regmap = getelementptr inbounds %struct.fsl_pwm_chip, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %21, i1 noundef zeroext false) #6
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call13 = tail call i32 @regcache_sync(ptr noundef %23) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !22, !23, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !37, !39, !41, !43, !45, !46, !47, !49, !51, !53, !54, !55, !56, !58, !59, !60, !62, !64, !66}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @__initcall__kmod_pwm_fsl_ftm__183_549_fsl_pwm_driver_init6, !1, !"__initcall__kmod_pwm_fsl_ftm__183_549_fsl_pwm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pwm/pwm-fsl-ftm.c", i32 549, i32 1}
!2 = !{ptr @__exitcall_fsl_pwm_driver_exit, !1, !"__exitcall_fsl_pwm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description184, !4, !"__UNIQUE_ID_description184", i1 false, i1 false}
!4 = !{!"../drivers/pwm/pwm-fsl-ftm.c", i32 551, i32 1}
!5 = !{ptr @__UNIQUE_ID_author185, !6, !"__UNIQUE_ID_author185", i1 false, i1 false}
!6 = !{!"../drivers/pwm/pwm-fsl-ftm.c", i32 552, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias186, !8, !"__UNIQUE_ID_alias186", i1 false, i1 false}
!8 = !{!"../drivers/pwm/pwm-fsl-ftm.c", i32 553, i32 1}
!9 = !{ptr @__UNIQUE_ID_file187, !10, !"__UNIQUE_ID_file187", i1 false, i1 false}
!10 = !{!"../drivers/pwm/pwm-fsl-ftm.c", i32 554, i32 1}
!11 = !{ptr @__UNIQUE_ID_license188, !10, !"__UNIQUE_ID_license188", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pwm/pwm-fsl-ftm.c", i32 543, i32 11}
!14 = !{ptr @fsl_pwm_driver, !15, !"fsl_pwm_driver", i1 false, i1 false}
!15 = !{!"../drivers/pwm/pwm-fsl-ftm.c", i32 541, i32 31}
!16 = !{ptr @fsl_pwm_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/pwm/pwm-fsl-ftm.c", i32 409, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @fsl_pwm_probe._key, !20, !"_key", i1 false, i1 false}
!20 = !{!"../drivers/pwm/pwm-fsl-ftm.c", i32 418, i32 16}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/pwm/pwm-fsl-ftm.c", i32 421, i32 3}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @fsl_pwm_probe._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @fsl_pwm_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/pwm/pwm-fsl-ftm.c", i32 427, i32 3}
!33 = !{ptr @fsl_pwm_probe._entry.9, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @fsl_pwm_probe._entry_ptr.11, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pwm/pwm-fsl-ftm.c", i32 431, i32 58}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/pwm/pwm-fsl-ftm.c", i32 435, i32 58}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/pwm/pwm-fsl-ftm.c", i32 440, i32 33}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/pwm/pwm-fsl-ftm.c", i32 448, i32 42}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/pwm/pwm-fsl-ftm.c", i32 458, i32 3}
!45 = !{ptr @fsl_pwm_probe._entry.16, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @fsl_pwm_probe._entry_ptr.18, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @fsl_pwm_regmap_config, !48, !"fsl_pwm_regmap_config", i1 false, i1 false}
!48 = !{!"../drivers/pwm/pwm-fsl-ftm.c", i32 389, i32 35}
!49 = !{ptr @fsl_pwm_ops, !50, !"fsl_pwm_ops", i1 false, i1 false}
!50 = !{!"../drivers/pwm/pwm-fsl-ftm.c", i32 354, i32 29}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/pwm/pwm-fsl-ftm.c", i32 239, i32 3}
!53 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @fsl_pwm_apply_config._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @fsl_pwm_apply_config._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pwm/pwm-fsl-ftm.c", i32 253, i32 4}
!58 = !{ptr @fsl_pwm_apply_config._entry.21, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @fsl_pwm_apply_config._entry_ptr.23, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @fsl_pwm_dt_ids, !61, !"fsl_pwm_dt_ids", i1 false, i1 false}
!61 = !{!"../drivers/pwm/pwm-fsl-ftm.c", i32 534, i32 34}
!62 = !{ptr @vf610_ftm_pwm, !63, !"vf610_ftm_pwm", i1 false, i1 false}
!63 = !{!"../drivers/pwm/pwm-fsl-ftm.c", i32 526, i32 33}
!64 = !{ptr @imx8qm_ftm_pwm, !65, !"imx8qm_ftm_pwm", i1 false, i1 false}
!65 = !{!"../drivers/pwm/pwm-fsl-ftm.c", i32 530, i32 33}
!66 = !{ptr @fsl_pwm_pm_ops, !67, !"fsl_pwm_pm_ops", i1 false, i1 false}
!67 = !{!"../drivers/pwm/pwm-fsl-ftm.c", i32 522, i32 32}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{i8 0, i8 2}
!78 = !{i64 1156122, i64 1156149, i64 1156171, i64 1156199}
!79 = !{i64 1156530, i64 1156557, i64 1156590, i64 1156611, i64 1156638, i64 1156664}
!80 = !{!"auto-init"}
!81 = !{!"branch_weights", i32 2000, i32 1}
!82 = !{i64 2148641666, i64 2148641946, i64 2148642280, i64 2148642614}
