; ModuleID = '/llk/IR_all_yes/drivers/pwm/pwm-sprd.c_pt.bc'
source_filename = "../drivers/pwm/pwm-sprd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pwm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.sprd_pwm_chip = type { ptr, ptr, %struct.pwm_chip, i32, [4 x %struct.sprd_pwm_chn] }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.sprd_pwm_chn = type { [2 x %struct.clk_bulk_data], i32 }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }

@__initcall__kmod_pwm_sprd__170_304_sprd_pwm_driver_init6 = internal global ptr @sprd_pwm_driver_init, section ".initcall6.init", align 4
@sprd_pwm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sprd_pwm_probe, ptr @sprd_pwm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sprd_pwm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sprd_pwm_driver_exit = internal global ptr @sprd_pwm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description171 = internal constant [43 x i8] c"pwm_sprd.description=Spreadtrum PWM Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file172 = internal constant [35 x i8] c"pwm_sprd.file=drivers/pwm/pwm-sprd\00", section ".modinfo", align 1
@__UNIQUE_ID_license173 = internal constant [24 x i8] c"pwm_sprd.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sprd-pwm\00", [23 x i8] zeroinitializer }, align 32
@sprd_pwm_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sprd,ums512-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sprd_pwm_ops = internal constant { %struct.pwm_ops, [56 x i8] } { %struct.pwm_ops { ptr null, ptr null, ptr null, ptr @sprd_pwm_apply, ptr @sprd_pwm_get_state, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@sprd_pwm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 275, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to add PWM chip\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sprd_pwm_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/pwm/pwm-sprd.c\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sprd_pwm_probe._entry_ptr = internal global ptr @sprd_pwm_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get channel clocks\0A\00", [34 x i8] zeroinitializer }, align 32
@sprd_pwm_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 240, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no available PWM channels\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sprd_pwm_clk_init\00", [46 x i8] zeroinitializer }, align 32
@sprd_pwm_clk_init._entry_ptr = internal global ptr @sprd_pwm_clk_init._entry, section ".printk_index", align 4
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enable0\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm0\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enable1\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm1\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enable2\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm2\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enable3\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm3\00", [27 x i8] zeroinitializer }, align 32
@sprd_pwm_apply._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 181, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to enable pwm%u clocks\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sprd_pwm_apply\00", [17 x i8] zeroinitializer }, align 32
@sprd_pwm_apply._entry_ptr = internal global ptr @sprd_pwm_apply._entry, section ".printk_index", align 4
@sprd_pwm_get_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.19, ptr @.str.3, i32 85, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sprd_pwm_get_state\00", [45 x i8] zeroinitializer }, align 32
@sprd_pwm_get_state._entry_ptr = internal global ptr @sprd_pwm_get_state._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@___asan_gen_.23 = private unnamed_addr constant [16 x i8] c"sprd_pwm_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 295, i32 31 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 297, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant [18 x i8] c"sprd_pwm_of_match\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 289, i32 34 }
@___asan_gen_.32 = private unnamed_addr constant [13 x i8] c"sprd_pwm_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 206, i32 29 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 275, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 232, i32 11 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 240, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 47, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 47, i32 13 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 48, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 48, i32 13 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 49, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 49, i32 13 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 50, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 50, i32 13 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 179, i32 5 }
@___asan_gen_.98 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.102 = private constant [26 x i8] c"../drivers/pwm/pwm-sprd.c\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 84, i32 3 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_file172, ptr @__UNIQUE_ID_license173, ptr @__exitcall_sprd_pwm_driver_exit, ptr @__initcall__kmod_pwm_sprd__170_304_sprd_pwm_driver_init6, ptr @sprd_pwm_apply._entry, ptr @sprd_pwm_apply._entry_ptr, ptr @sprd_pwm_clk_init._entry, ptr @sprd_pwm_clk_init._entry_ptr, ptr @sprd_pwm_driver_exit, ptr @sprd_pwm_get_state._entry, ptr @sprd_pwm_get_state._entry_ptr, ptr @sprd_pwm_probe._entry, ptr @sprd_pwm_probe._entry_ptr, ptr @sprd_pwm_driver, ptr @.str, ptr @sprd_pwm_of_match, ptr @sprd_pwm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_pwm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_pwm_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_pwm_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_pwm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_pwm_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_pwm_apply._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_pwm_get_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_pwm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sprd_pwm_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sprd_pwm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @sprd_pwm_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_pwm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 128, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %dev9 = getelementptr inbounds %struct.sprd_pwm_chip, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %dev9 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev9, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %arrayidx.i = getelementptr %struct.sprd_pwm_chip, ptr %call.i, i32 0, i32 4, i32 0
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.9, ptr %arrayidx.i, align 4
  %arrayidx6.1.i = getelementptr %struct.sprd_pwm_chip, ptr %call.i, i32 0, i32 4, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx6.1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.10, ptr %arrayidx6.1.i, align 4
  %call.i44 = tail call i32 @devm_clk_bulk_get(ptr noundef %dev, i32 noundef 2, ptr noundef %arrayidx.i) #5
  %6 = zext i32 %call.i44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i44, label %if.end7.sprd_pwm_clk_init.exit_crit_edge [
    i32 0, label %for.inc17.i
    i32 -2, label %sprd_pwm_clk_init.exit.thread47
  ]

if.end7.sprd_pwm_clk_init.exit_crit_edge:         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %sprd_pwm_clk_init.exit

for.inc17.i:                                      ; preds = %if.end7
  %clk.i = getelementptr %struct.sprd_pwm_chip, ptr %call.i, i32 0, i32 4, i32 0, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk.i, align 4
  %call15.i = tail call i32 @clk_get_rate(ptr noundef %8) #5
  %clk_rate.i = getelementptr %struct.sprd_pwm_chip, ptr %call.i, i32 0, i32 4, i32 0, i32 1
  %9 = ptrtoint ptr %clk_rate.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call15.i, ptr %clk_rate.i, align 4
  %arrayidx.1.i = getelementptr %struct.sprd_pwm_chip, ptr %call.i, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.11, ptr %arrayidx.1.i, align 4
  %arrayidx6.1.1.i = getelementptr %struct.sprd_pwm_chip, ptr %call.i, i32 0, i32 4, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx6.1.1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.12, ptr %arrayidx6.1.1.i, align 4
  %12 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev9, align 4
  %call.1.i = tail call i32 @devm_clk_bulk_get(ptr noundef %13, i32 noundef 2, ptr noundef %arrayidx.1.i) #5
  %14 = zext i32 %call.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %call.1.i, label %for.inc17.i.sprd_pwm_clk_init.exit_crit_edge [
    i32 0, label %for.inc17.1.i
    i32 -2, label %for.inc17.i.sprd_pwm_clk_init.exit.thread_crit_edge
  ]

for.inc17.i.sprd_pwm_clk_init.exit.thread_crit_edge: ; preds = %for.inc17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sprd_pwm_clk_init.exit.thread

for.inc17.i.sprd_pwm_clk_init.exit_crit_edge:     ; preds = %for.inc17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sprd_pwm_clk_init.exit

for.inc17.1.i:                                    ; preds = %for.inc17.i
  %clk.1.i = getelementptr %struct.sprd_pwm_chip, ptr %call.i, i32 0, i32 4, i32 1, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %clk.1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk.1.i, align 4
  %call15.1.i = tail call i32 @clk_get_rate(ptr noundef %16) #5
  %clk_rate.1.i = getelementptr %struct.sprd_pwm_chip, ptr %call.i, i32 0, i32 4, i32 1, i32 1
  %17 = ptrtoint ptr %clk_rate.1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call15.1.i, ptr %clk_rate.1.i, align 4
  %arrayidx.2.i = getelementptr %struct.sprd_pwm_chip, ptr %call.i, i32 0, i32 4, i32 2
  %18 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.13, ptr %arrayidx.2.i, align 4
  %arrayidx6.1.2.i = getelementptr %struct.sprd_pwm_chip, ptr %call.i, i32 0, i32 4, i32 2, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx6.1.2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.14, ptr %arrayidx6.1.2.i, align 4
  %20 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev9, align 4
  %call.2.i = tail call i32 @devm_clk_bulk_get(ptr noundef %21, i32 noundef 2, ptr noundef %arrayidx.2.i) #5
  %22 = zext i32 %call.2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %call.2.i, label %for.inc17.1.i.sprd_pwm_clk_init.exit_crit_edge [
    i32 0, label %for.inc17.2.i
    i32 -2, label %for.inc17.1.i.sprd_pwm_clk_init.exit.thread_crit_edge
  ]

for.inc17.1.i.sprd_pwm_clk_init.exit.thread_crit_edge: ; preds = %for.inc17.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sprd_pwm_clk_init.exit.thread

for.inc17.1.i.sprd_pwm_clk_init.exit_crit_edge:   ; preds = %for.inc17.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sprd_pwm_clk_init.exit

for.inc17.2.i:                                    ; preds = %for.inc17.1.i
  %clk.2.i = getelementptr %struct.sprd_pwm_chip, ptr %call.i, i32 0, i32 4, i32 2, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %clk.2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk.2.i, align 4
  %call15.2.i = tail call i32 @clk_get_rate(ptr noundef %24) #5
  %clk_rate.2.i = getelementptr %struct.sprd_pwm_chip, ptr %call.i, i32 0, i32 4, i32 2, i32 1
  %25 = ptrtoint ptr %clk_rate.2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call15.2.i, ptr %clk_rate.2.i, align 4
  %arrayidx.3.i = getelementptr %struct.sprd_pwm_chip, ptr %call.i, i32 0, i32 4, i32 3
  %26 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.15, ptr %arrayidx.3.i, align 4
  %arrayidx6.1.3.i = getelementptr %struct.sprd_pwm_chip, ptr %call.i, i32 0, i32 4, i32 3, i32 0, i32 1
  %27 = ptrtoint ptr %arrayidx6.1.3.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.16, ptr %arrayidx6.1.3.i, align 4
  %28 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev9, align 4
  %call.3.i = tail call i32 @devm_clk_bulk_get(ptr noundef %29, i32 noundef 2, ptr noundef %arrayidx.3.i) #5
  %30 = zext i32 %call.3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %call.3.i, label %for.inc17.2.i.sprd_pwm_clk_init.exit_crit_edge [
    i32 0, label %for.inc17.3.i
    i32 -2, label %for.inc17.2.i.sprd_pwm_clk_init.exit.thread_crit_edge
  ]

for.inc17.2.i.sprd_pwm_clk_init.exit.thread_crit_edge: ; preds = %for.inc17.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sprd_pwm_clk_init.exit.thread

for.inc17.2.i.sprd_pwm_clk_init.exit_crit_edge:   ; preds = %for.inc17.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sprd_pwm_clk_init.exit

for.inc17.3.i:                                    ; preds = %for.inc17.2.i
  call void @__sanitizer_cov_trace_pc() #7
  %clk.3.i = getelementptr %struct.sprd_pwm_chip, ptr %call.i, i32 0, i32 4, i32 3, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %clk.3.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clk.3.i, align 4
  %call15.3.i = tail call i32 @clk_get_rate(ptr noundef %32) #5
  %clk_rate.3.i = getelementptr %struct.sprd_pwm_chip, ptr %call.i, i32 0, i32 4, i32 3, i32 1
  %33 = ptrtoint ptr %clk_rate.3.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call15.3.i, ptr %clk_rate.3.i, align 4
  br label %sprd_pwm_clk_init.exit.thread

sprd_pwm_clk_init.exit.thread47:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.7) #8
  br label %cleanup

sprd_pwm_clk_init.exit.thread:                    ; preds = %for.inc17.3.i, %for.inc17.2.i.sprd_pwm_clk_init.exit.thread_crit_edge, %for.inc17.1.i.sprd_pwm_clk_init.exit.thread_crit_edge, %for.inc17.i.sprd_pwm_clk_init.exit.thread_crit_edge
  %i.053.i = phi i32 [ 4, %for.inc17.3.i ], [ 1, %for.inc17.i.sprd_pwm_clk_init.exit.thread_crit_edge ], [ 2, %for.inc17.1.i.sprd_pwm_clk_init.exit.thread_crit_edge ], [ 3, %for.inc17.2.i.sprd_pwm_clk_init.exit.thread_crit_edge ]
  %num_pwms.i = getelementptr inbounds %struct.sprd_pwm_chip, ptr %call.i, i32 0, i32 3
  %36 = ptrtoint ptr %num_pwms.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %i.053.i, ptr %num_pwms.i, align 4
  br label %if.end13

sprd_pwm_clk_init.exit:                           ; preds = %for.inc17.2.i.sprd_pwm_clk_init.exit_crit_edge, %for.inc17.1.i.sprd_pwm_clk_init.exit_crit_edge, %for.inc17.i.sprd_pwm_clk_init.exit_crit_edge, %if.end7.sprd_pwm_clk_init.exit_crit_edge
  %call.lcssa.i = phi i32 [ %call.i44, %if.end7.sprd_pwm_clk_init.exit_crit_edge ], [ %call.1.i, %for.inc17.i.sprd_pwm_clk_init.exit_crit_edge ], [ %call.2.i, %for.inc17.1.i.sprd_pwm_clk_init.exit_crit_edge ], [ %call.3.i, %for.inc17.2.i.sprd_pwm_clk_init.exit_crit_edge ]
  %37 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev9, align 4
  %call11.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %38, i32 noundef %call.lcssa.i, ptr noundef nonnull @.str.6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool11.not = icmp eq i32 %call11.i, 0
  br i1 %tobool11.not, label %sprd_pwm_clk_init.exit.if.end13_crit_edge, label %sprd_pwm_clk_init.exit.cleanup_crit_edge

sprd_pwm_clk_init.exit.cleanup_crit_edge:         ; preds = %sprd_pwm_clk_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sprd_pwm_clk_init.exit.if.end13_crit_edge:        ; preds = %sprd_pwm_clk_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.end13:                                         ; preds = %sprd_pwm_clk_init.exit.if.end13_crit_edge, %sprd_pwm_clk_init.exit.thread
  %chip = getelementptr inbounds %struct.sprd_pwm_chip, ptr %call.i, i32 0, i32 2
  %39 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %dev, ptr %chip, align 4
  %ops = getelementptr inbounds %struct.sprd_pwm_chip, ptr %call.i, i32 0, i32 2, i32 1
  %40 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @sprd_pwm_ops, ptr %ops, align 4
  %num_pwms = getelementptr inbounds %struct.sprd_pwm_chip, ptr %call.i, i32 0, i32 3
  %41 = ptrtoint ptr %num_pwms to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_pwms, align 4
  %npwm = getelementptr inbounds %struct.sprd_pwm_chip, ptr %call.i, i32 0, i32 2, i32 3
  %43 = ptrtoint ptr %npwm to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %npwm, align 4
  %call19 = tail call i32 @pwmchip_add(ptr noundef %chip) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end13.cleanup_crit_edge, label %do.end

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end13.cleanup_crit_edge, %sprd_pwm_clk_init.exit.cleanup_crit_edge, %sprd_pwm_clk_init.exit.thread47, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then4 ], [ -12, %entry.cleanup_crit_edge ], [ %call11.i, %sprd_pwm_clk_init.exit.cleanup_crit_edge ], [ %call19, %do.end ], [ 0, %if.end13.cleanup_crit_edge ], [ -19, %sprd_pwm_clk_init.exit.thread47 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_pwm_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chip = getelementptr inbounds %struct.sprd_pwm_chip, ptr %1, i32 0, i32 2
  tail call void @pwmchip_remove(ptr noundef %chip) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwmchip_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_pwm_apply(ptr noundef %chip, ptr nocapture noundef readonly %pwm, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %chip, i32 -8
  %chn1 = getelementptr i8, ptr %chip, i32 40
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %0 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwpwm, align 8
  %arrayidx = getelementptr [4 x %struct.sprd_pwm_chn], ptr %chn1, i32 0, i32 %1
  %polarity = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %2 = ptrtoint ptr %polarity to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %polarity, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %enabled = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled, align 4, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %enabled18 = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 7, i32 3
  %6 = ptrtoint ptr %enabled18 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enabled18, align 4, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool19.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  br i1 %tobool19.not, label %if.then6, label %if.then3.if.end11_crit_edge

if.then3.if.end11_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then6:                                         ; preds = %if.then3
  %call.i = tail call i32 @clk_bulk_prepare(i32 noundef 2, ptr noundef %arrayidx) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then6.do.end_crit_edge

if.then6.do.end_crit_edge:                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end.i:                                         ; preds = %if.then6
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef 2, ptr noundef %arrayidx) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end11_crit_edge, label %if.then3.i

if.end.i.if.end11_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_bulk_unprepare(i32 noundef 2, ptr noundef %arrayidx) #5
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.then6.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.then6.do.end_crit_edge ]
  %dev = getelementptr i8, ptr %chip, i32 -4
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hwpwm, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.17, i32 noundef %11) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end.i.if.end11_crit_edge, %if.then3.if.end11_crit_edge
  %duty_cycle = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %12 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %duty_cycle, align 8
  %conv = trunc i64 %13 to i32
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %state, align 8
  %conv12 = trunc i64 %15 to i32
  %16 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hwpwm, align 8
  %clk_rate.i = getelementptr %struct.sprd_pwm_chip, ptr %add.ptr, i32 0, i32 4, i32 %17, i32 1
  %18 = ptrtoint ptr %clk_rate.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %clk_rate.i, align 4
  %conv.i = zext i32 %19 to i64
  %conv2.i = sext i32 %conv12 to i64
  %mul3.i = mul nsw i64 %conv.i, %conv2.i
  %20 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul3.i, i32 0) #9, !srcloc !68
  %asmresult.i.i = extractvalue { i64, i32 } %20, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %20, 1
  %21 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul3.i, i64 %asmresult.i.i, i32 %asmresult4.i.i) #9, !srcloc !69
  %asmresult10.i.i = extractvalue { i64, i32 } %21, 0
  %tmp.0.i = lshr i64 %asmresult10.i.i, 29
  %add190.i = add nuw nsw i64 %tmp.0.i, 127
  %22 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 72340172838076673, i64 %add190.i, i64 72340172838076673) #9, !srcloc !70
  %23 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 72340172838076673, i64 %add190.i, i64 %22) #9, !srcloc !71
  %extract.t2.i = trunc i64 %23 to i32
  %mul.i = mul i32 %conv, 255
  %div.i = udiv i32 %mul.i, %conv12
  %conv414.i = add i32 %extract.t2.i, -1
  %24 = tail call i32 @llvm.umin.i32(i32 %conv414.i, i32 255) #5
  %shl.i.i = shl i32 %17, 5
  %25 = shl nuw i32 %24, 24
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 %shl.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %25) #5, !srcloc !72
  %28 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hwpwm, align 8
  %shl.i3.i = shl i32 %29, 5
  %add.i.i = or i32 %shl.i3.i, 4
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %31, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 -16777216) #5, !srcloc !72
  %32 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hwpwm, align 8
  %shl.i5.i = shl i32 %33, 5
  %add.i6.i = or i32 %shl.i5.i, 8
  %34 = tail call i32 @llvm.bswap.i32(i32 %div.i) #5
  %35 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %36, i32 %add.i6.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %34) #5, !srcloc !72
  %37 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %hwpwm, align 8
  %shl.i = shl i32 %38, 5
  %add.i = or i32 %shl.i, 24
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i = getelementptr i8, ptr %40, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #5, !srcloc !72
  br label %cleanup

if.else:                                          ; preds = %if.end
  br i1 %tobool19.not, label %if.else.cleanup_crit_edge, label %if.then20

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %shl.i46 = shl i32 %1, 5
  %add.i47 = or i32 %shl.i46, 24
  %41 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i48 = getelementptr i8, ptr %42, i32 %add.i47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 0) #5, !srcloc !72
  tail call void @clk_bulk_disable(i32 noundef 2, ptr noundef %arrayidx) #5
  tail call void @clk_bulk_unprepare(i32 noundef 2, ptr noundef %arrayidx) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.else.cleanup_crit_edge, %if.end11, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then20 ], [ 0, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_pwm_get_state(ptr noundef %chip, ptr nocapture noundef readonly %pwm, ptr nocapture noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %chip, i32 -8
  %chn1 = getelementptr i8, ptr %chip, i32 40
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %0 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwpwm, align 8
  %arrayidx = getelementptr [4 x %struct.sprd_pwm_chn], ptr %chn1, i32 0, i32 %1
  %call.i = tail call i32 @clk_bulk_prepare(i32 noundef 2, ptr noundef %arrayidx) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef 2, ptr noundef %arrayidx) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_bulk_unprepare(i32 noundef 2, ptr noundef %arrayidx) #5
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %dev = getelementptr i8, ptr %chip, i32 -4
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %4 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwpwm, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.17, i32 noundef %5) #8
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %6 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwpwm, align 8
  %shl.i = shl i32 %7, 5
  %add.i = or i32 %shl.i, 24
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %add.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !73
  %11 = lshr i32 %10, 24
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %13, ptr %14, align 4
  %16 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hwpwm, align 8
  %shl.i640 = shl i32 %17, 5
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i641 = getelementptr i8, ptr %19, i32 %shl.i640
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i641) #5, !srcloc !73
  %21 = lshr i32 %20, 24
  %22 = mul i32 %21, 1000000000
  %mul = add i32 %22, 1000000000
  %mul13 = mul i32 %mul, 255
  %conv = zext i32 %mul13 to i64
  %clk_rate = getelementptr inbounds %struct.sprd_pwm_chn, ptr %arrayidx, i32 0, i32 1
  %23 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %clk_rate, align 4
  %div636 = lshr i32 %24, 1
  %conv14 = zext i32 %div636 to i64
  %add15 = add nuw nsw i64 %conv, %conv14
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add15)
  %cmp191 = icmp ult i64 %add15, 4294967296
  br i1 %cmp191, label %if.then195, label %if.else201, !prof !74

if.then195:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv196 = trunc i64 %add15 to i32
  %div199 = udiv i32 %conv196, %24
  %conv200 = zext i32 %div199 to i64
  br label %if.end205

if.else201:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %25 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %24, i64 %add15) #9, !srcloc !75
  %asmresult1.i = extractvalue { i64, i64 } %25, 1
  br label %if.end205

if.end205:                                        ; preds = %if.else201, %if.then195
  %_tmp.0 = phi i64 [ %conv200, %if.then195 ], [ %asmresult1.i, %if.else201 ]
  %26 = ptrtoint ptr %state to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %_tmp.0, ptr %state, align 8
  %27 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hwpwm, align 8
  %shl.i643 = shl i32 %28, 5
  %add.i644 = or i32 %shl.i643, 8
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr, align 4
  %add.ptr.i645 = getelementptr i8, ptr %30, i32 %add.i644
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i645) #5, !srcloc !73
  %32 = and i32 %31, -65536
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %mul213 = mul i32 %33, %mul
  %conv214 = zext i32 %mul213 to i64
  %34 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %clk_rate, align 4
  %div218637 = lshr i32 %35, 1
  %conv219 = zext i32 %div218637 to i64
  %add220 = add nuw nsw i64 %conv214, %conv219
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add220)
  %cmp422 = icmp ult i64 %add220, 4294967296
  br i1 %cmp422, label %if.then430, label %if.else436, !prof !74

if.then430:                                       ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #7
  %conv431 = trunc i64 %add220 to i32
  %div434 = udiv i32 %conv431, %35
  %conv435 = zext i32 %div434 to i64
  br label %if.end440

if.else436:                                       ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #7
  %36 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %35, i64 %add220) #9, !srcloc !75
  %asmresult1.i670 = extractvalue { i64, i64 } %36, 1
  br label %if.end440

if.end440:                                        ; preds = %if.else436, %if.then430
  %_tmp217.0 = phi i64 [ %conv435, %if.then430 ], [ %asmresult1.i670, %if.else436 ]
  %duty_cycle = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %37 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %_tmp217.0, ptr %duty_cycle, align 8
  %38 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %14, align 4, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool444.not = icmp eq i8 %39, 0
  br i1 %tobool444.not, label %if.then445, label %if.end440.cleanup_crit_edge

if.end440.cleanup_crit_edge:                      ; preds = %if.end440
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then445:                                       ; preds = %if.end440
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_bulk_disable(i32 noundef 2, ptr noundef %arrayidx) #5
  tail call void @clk_bulk_unprepare(i32 noundef 2, ptr noundef %arrayidx) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then445, %if.end440.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwmchip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

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
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !24, !25, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !50, !51, !52, !54, !55, !56}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @__initcall__kmod_pwm_sprd__170_304_sprd_pwm_driver_init6, !1, !"__initcall__kmod_pwm_sprd__170_304_sprd_pwm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pwm/pwm-sprd.c", i32 304, i32 1}
!2 = !{ptr @__exitcall_sprd_pwm_driver_exit, !1, !"__exitcall_sprd_pwm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description171, !4, !"__UNIQUE_ID_description171", i1 false, i1 false}
!4 = !{!"../drivers/pwm/pwm-sprd.c", i32 306, i32 1}
!5 = !{ptr @__UNIQUE_ID_file172, !6, !"__UNIQUE_ID_file172", i1 false, i1 false}
!6 = !{!"../drivers/pwm/pwm-sprd.c", i32 307, i32 1}
!7 = !{ptr @__UNIQUE_ID_license173, !6, !"__UNIQUE_ID_license173", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pwm/pwm-sprd.c", i32 297, i32 11}
!10 = !{ptr @sprd_pwm_driver, !11, !"sprd_pwm_driver", i1 false, i1 false}
!11 = !{!"../drivers/pwm/pwm-sprd.c", i32 295, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pwm/pwm-sprd.c", i32 275, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @sprd_pwm_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @sprd_pwm_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pwm/pwm-sprd.c", i32 232, i32 11}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pwm/pwm-sprd.c", i32 240, i32 3}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @sprd_pwm_clk_init._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @sprd_pwm_clk_init._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/pwm/pwm-sprd.c", i32 47, i32 2}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/pwm/pwm-sprd.c", i32 47, i32 13}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/pwm/pwm-sprd.c", i32 48, i32 2}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/pwm/pwm-sprd.c", i32 48, i32 13}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pwm/pwm-sprd.c", i32 49, i32 2}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/pwm/pwm-sprd.c", i32 49, i32 13}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/pwm/pwm-sprd.c", i32 50, i32 2}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/pwm/pwm-sprd.c", i32 50, i32 13}
!43 = distinct !{null, !44, !"sprd_pwm_clks", i1 false, i1 false}
!44 = !{!"../drivers/pwm/pwm-sprd.c", i32 46, i32 27}
!45 = !{ptr @sprd_pwm_ops, !46, !"sprd_pwm_ops", i1 false, i1 false}
!46 = !{!"../drivers/pwm/pwm-sprd.c", i32 206, i32 29}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/pwm/pwm-sprd.c", i32 179, i32 5}
!49 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @sprd_pwm_apply._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @sprd_pwm_apply._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pwm/pwm-sprd.c", i32 84, i32 3}
!54 = !{ptr @sprd_pwm_get_state._entry, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @sprd_pwm_get_state._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @sprd_pwm_of_match, !57, !"sprd_pwm_of_match", i1 false, i1 false}
!57 = !{!"../drivers/pwm/pwm-sprd.c", i32 289, i32 34}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{i8 0, i8 2}
!68 = !{i64 1151011, i64 1151038, i64 1151060, i64 1151088}
!69 = !{i64 1151419, i64 1151446, i64 1151479, i64 1151500, i64 1151527, i64 1151553}
!70 = !{i64 1150894, i64 1150921}
!71 = !{i64 1151234, i64 1151261, i64 1151295, i64 1151316}
!72 = !{i64 2034926}
!73 = !{i64 2035344}
!74 = !{!"branch_weights", i32 2000, i32 1}
!75 = !{i64 2148636555, i64 2148636835, i64 2148637169, i64 2148637503}
