; ModuleID = '/llk/IR_all_yes/drivers/pwm/pwm-atmel.c_pt.bc'
source_filename = "../drivers/pwm/pwm-atmel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pwm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atmel_pwm_data = type { %struct.atmel_pwm_registers, %struct.atmel_pwm_config }
%struct.atmel_pwm_registers = type { i8, i8, i8, i8 }
%struct.atmel_pwm_config = type { i32 }
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
%struct.atmel_pwm_chip = type { %struct.pwm_chip, ptr, ptr, ptr, i32, %struct.spinlock }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }

@__initcall__kmod_pwm_atmel__183_531_atmel_pwm_driver_init6 = internal global ptr @atmel_pwm_driver_init, section ".initcall6.init", align 4
@atmel_pwm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @atmel_pwm_probe, ptr @atmel_pwm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @atmel_pwm_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_atmel_pwm_driver_exit = internal global ptr @atmel_pwm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias184 = internal constant [35 x i8] c"pwm_atmel.alias=platform:atmel-pwm\00", section ".modinfo", align 1
@__UNIQUE_ID_author185 = internal constant [48 x i8] c"pwm_atmel.author=Bo Shen <voice.shen@atmel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description186 = internal constant [39 x i8] c"pwm_atmel.description=Atmel PWM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file187 = internal constant [37 x i8] c"pwm_atmel.file=drivers/pwm/pwm-atmel\00", section ".modinfo", align 1
@__UNIQUE_ID_license188 = internal constant [25 x i8] c"pwm_atmel.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"atmel-pwm\00", [22 x i8] zeroinitializer }, align 32
@atmel_pwm_dt_ids = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9rl-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_sam9rl_pwm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d3-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_sama5_pwm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_sama5_pwm_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sam9x60-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mchp_sam9x60_pwm_data }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@atmel_pwm_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&atmel_pwm->lock\00", [47 x i8] zeroinitializer }, align 32
@atmel_pwm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 489, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to prepare PWM clock\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atmel_pwm_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/pwm/pwm-atmel.c\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@atmel_pwm_probe._entry_ptr = internal global ptr @atmel_pwm_probe._entry, section ".printk_index", align 4
@atmel_pwm_ops = internal constant { %struct.pwm_ops, [56 x i8] } { %struct.pwm_ops { ptr null, ptr null, ptr null, ptr @atmel_pwm_apply, ptr @atmel_pwm_get_state, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@atmel_pwm_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 499, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to add PWM chip %d\0A\00", [37 x i8] zeroinitializer }, align 32
@atmel_pwm_probe._entry_ptr.9 = internal global ptr @atmel_pwm_probe._entry.7, section ".printk_index", align 4
@atmel_pwm_apply._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 326, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to calculate cprd and prescaler\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atmel_pwm_apply\00", [16 x i8] zeroinitializer }, align 32
@atmel_pwm_apply._entry_ptr = internal global ptr @atmel_pwm_apply._entry, section ".printk_index", align 4
@atmel_pwm_apply._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.4, i32 337, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to enable clock\0A\00", [40 x i8] zeroinitializer }, align 32
@atmel_pwm_apply._entry_ptr.14 = internal global ptr @atmel_pwm_apply._entry.12, section ".printk_index", align 4
@atmel_pwm_calculate_cprd_and_pres._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 214, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pres exceeds the maximum value\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"atmel_pwm_calculate_cprd_and_pres\00", [62 x i8] zeroinitializer }, align 32
@atmel_pwm_calculate_cprd_and_pres._entry_ptr = internal global ptr @atmel_pwm_calculate_cprd_and_pres._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@atmel_sam9rl_pwm_data = internal constant { %struct.atmel_pwm_data, [24 x i8] } { %struct.atmel_pwm_data { %struct.atmel_pwm_registers { i8 8, i8 16, i8 4, i8 16 }, %struct.atmel_pwm_config { i32 16 } }, [24 x i8] zeroinitializer }, align 32
@atmel_sama5_pwm_data = internal constant { %struct.atmel_pwm_data, [24 x i8] } { %struct.atmel_pwm_data { %struct.atmel_pwm_registers { i8 12, i8 16, i8 4, i8 8 }, %struct.atmel_pwm_config { i32 16 } }, [24 x i8] zeroinitializer }, align 32
@mchp_sam9x60_pwm_data = internal constant { %struct.atmel_pwm_data, [24 x i8] } { %struct.atmel_pwm_data { %struct.atmel_pwm_registers { i8 8, i8 16, i8 4, i8 16 }, %struct.atmel_pwm_config { i32 32 } }, [24 x i8] zeroinitializer }, align 32
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"atmel_pwm_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 523, i32 31 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 525, i32 11 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"atmel_pwm_dt_ids\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 446, i32 34 }
@___asan_gen_.26 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 477, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 489, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [14 x i8] c"atmel_pwm_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 401, i32 29 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 499, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 325, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 337, i32 5 }
@___asan_gen_.74 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 214, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [22 x i8] c"atmel_sam9rl_pwm_data\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 407, i32 36 }
@___asan_gen_.86 = private unnamed_addr constant [21 x i8] c"atmel_sama5_pwm_data\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 420, i32 36 }
@___asan_gen_.89 = private unnamed_addr constant [22 x i8] c"mchp_sam9x60_pwm_data\00", align 1
@___asan_gen_.90 = private constant [27 x i8] c"../drivers/pwm/pwm-atmel.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 433, i32 36 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_alias184, ptr @__UNIQUE_ID_author185, ptr @__UNIQUE_ID_description186, ptr @__UNIQUE_ID_file187, ptr @__UNIQUE_ID_license188, ptr @__exitcall_atmel_pwm_driver_exit, ptr @__initcall__kmod_pwm_atmel__183_531_atmel_pwm_driver_init6, ptr @atmel_pwm_apply._entry, ptr @atmel_pwm_apply._entry.12, ptr @atmel_pwm_apply._entry_ptr, ptr @atmel_pwm_apply._entry_ptr.14, ptr @atmel_pwm_calculate_cprd_and_pres._entry, ptr @atmel_pwm_calculate_cprd_and_pres._entry_ptr, ptr @atmel_pwm_driver_exit, ptr @atmel_pwm_probe._entry, ptr @atmel_pwm_probe._entry.7, ptr @atmel_pwm_probe._entry_ptr, ptr @atmel_pwm_probe._entry_ptr.9, ptr @atmel_pwm_driver, ptr @.str, ptr @atmel_pwm_dt_ids, ptr @atmel_pwm_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @atmel_pwm_ops, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @atmel_sam9rl_pwm_data, ptr @atmel_sama5_pwm_data, ptr @mchp_sam9x60_pwm_data], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pwm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pwm_dt_ids to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pwm_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pwm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pwm_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pwm_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pwm_apply._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pwm_apply._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pwm_calculate_cprd_and_pres._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_sam9rl_pwm_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_sama5_pwm_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp_sam9x60_pwm_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_pwm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @atmel_pwm_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @atmel_pwm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @atmel_pwm_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_pwm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 96, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #5
  %data = getelementptr inbounds %struct.atmel_pwm_chip, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %data, align 4
  %update_pending = getelementptr inbounds %struct.atmel_pwm_chip, ptr %call.i, i32 0, i32 4
  %1 = ptrtoint ptr %update_pending to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %update_pending, align 4
  %lock = getelementptr inbounds %struct.atmel_pwm_chip, ptr %call.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @atmel_pwm_probe.__key, i16 noundef signext 3) #5
  %call4 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %base = getelementptr inbounds %struct.atmel_pwm_chip, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call4, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call12 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #5
  %clk = getelementptr inbounds %struct.atmel_pwm_chip, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call12, ptr %clk, align 4
  %cmp.i70 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i70, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  %call20 = tail call i32 @clk_prepare(ptr noundef %call12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end27, label %do.end25

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end27:                                         ; preds = %if.end18
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @atmel_pwm_ops, ptr %ops, align 4
  %npwm = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %npwm to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %npwm, align 4
  %call33 = tail call i32 @pwmchip_add(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp = icmp slt i32 %call33, 0
  br i1 %cmp, label %do.end37, label %if.end39

do.end37:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %call33) #8
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk, align 4
  tail call void @clk_unprepare(ptr noundef %10) #5
  br label %cleanup

if.end39:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %do.end37, %do.end25, %if.then15, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then7 ], [ %5, %if.then15 ], [ %call20, %do.end25 ], [ %call33, %do.end37 ], [ %call33, %if.end39 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_pwm_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @pwmchip_remove(ptr noundef %1) #5
  %clk = getelementptr inbounds %struct.atmel_pwm_chip, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_unprepare(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwmchip_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_pwm_apply(ptr noundef %chip, ptr nocapture noundef readonly %pwm, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state1.i = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 7
  %0 = ptrtoint ptr %state1.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %cstate.sroa.0.0.copyload158 = load i64, ptr %state1.i, align 8
  %cstate.sroa.5160.0.state1.i.sroa_idx = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 7, i32 2
  %1 = ptrtoint ptr %cstate.sroa.5160.0.state1.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %1)
  %cstate.sroa.5160.0.copyload161 = load i32, ptr %cstate.sroa.5160.0.state1.i.sroa_idx, align 8
  %cstate.sroa.6.0.state1.i.sroa_idx = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %cstate.sroa.6.0.state1.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %cstate.sroa.6.0.copyload162 = load i8, ptr %cstate.sroa.6.0.state1.i.sroa_idx, align 4
  %enabled = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %3 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enabled, align 4, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.else44, label %if.then

if.then:                                          ; preds = %entry
  %clk = getelementptr inbounds %struct.atmel_pwm_chip, ptr %chip, i32 0, i32 1
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_get_rate(ptr noundef %6) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cstate.sroa.6.0.copyload162)
  %tobool3.not = icmp eq i8 %cstate.sroa.6.0.copyload162, 0
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %polarity4 = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %7 = ptrtoint ptr %polarity4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %polarity4, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %cstate.sroa.5160.0.copyload161, i32 %8)
  %cmp = icmp eq i32 %cstate.sroa.5160.0.copyload161, %8
  br i1 %cmp, label %land.lhs.true5, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %state, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %cstate.sroa.0.0.copyload158, i64 %10)
  %cmp7 = icmp eq i64 %cstate.sroa.0.0.copyload158, %10
  br i1 %cmp7, label %if.then8, label %land.lhs.true5.if.end_crit_edge

land.lhs.true5.if.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then8:                                         ; preds = %land.lhs.true5
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %11 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hwpwm, align 8
  %mul.i = shl i32 %12, 5
  %add.i = add i32 %mul.i, 512
  %base.i.i = getelementptr inbounds %struct.atmel_pwm_chip, ptr %chip, i32 0, i32 2
  %13 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %add.i
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !65
  %16 = lshr i32 %15, 24
  %17 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hwpwm, align 8
  %data = getelementptr inbounds %struct.atmel_pwm_chip, ptr %chip, i32 0, i32 3
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 4
  %conv = zext i8 %22 to i32
  %mul.i94 = shl i32 %18, 5
  %add.i95 = add i32 %mul.i94, 512
  %add1.i = add i32 %add.i95, %conv
  %23 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i97 = getelementptr i8, ptr %24, i32 %add1.i
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i97) #5, !srcloc !65
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #5
  %and = and i32 %16, 15
  %duty_cycle.i = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %27 = ptrtoint ptr %duty_cycle.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %duty_cycle.i, align 8
  %conv.i = zext i32 %call1 to i64
  %mul.i98 = mul i64 %28, %conv.i
  %29 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul.i98, i32 0) #9, !srcloc !66
  %asmresult.i.i = extractvalue { i64, i32 } %29, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %29, 1
  %30 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul.i98, i64 %asmresult.i.i, i32 %asmresult4.i.i) #9, !srcloc !67
  %asmresult10.i.i = extractvalue { i64, i32 } %30, 0
  %div161267.i = lshr i64 %asmresult10.i.i, 29
  %sh_prom183.i = zext i32 %and to i64
  %shr184.i = lshr i64 %div161267.i, %sh_prom183.i
  %31 = trunc i64 %shr184.i to i32
  %conv187.i = sub i32 %26, %31
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data, align 4
  %duty_upd.i = getelementptr inbounds %struct.atmel_pwm_registers, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %duty_upd.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %duty_upd.i, align 1
  %period_upd.i = getelementptr inbounds %struct.atmel_pwm_registers, ptr %33, i32 0, i32 1
  %36 = ptrtoint ptr %period_upd.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %period_upd.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %37)
  %cmp.i = icmp eq i8 %35, %37
  br i1 %cmp.i, label %if.then.i, label %if.then8.atmel_pwm_update_cdty.exit_crit_edge

if.then8.atmel_pwm_update_cdty.exit_crit_edge:    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %atmel_pwm_update_cdty.exit

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hwpwm, align 8
  %mul.i.i = shl i32 %39, 5
  %add.i.i = add i32 %mul.i.i, 512
  %40 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %41, i32 %add.i.i
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !65
  %43 = and i32 %42, -262145
  %44 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %hwpwm, align 8
  %mul.i23.i = shl i32 %45, 5
  %add.i24.i = add i32 %mul.i23.i, 512
  %46 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i26.i = getelementptr i8, ptr %47, i32 %add.i24.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i26.i, i32 %43) #5, !srcloc !68
  br label %atmel_pwm_update_cdty.exit

atmel_pwm_update_cdty.exit:                       ; preds = %if.then.i, %if.then8.atmel_pwm_update_cdty.exit_crit_edge
  %48 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %hwpwm, align 8
  %50 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data, align 4
  %duty_upd10.i = getelementptr inbounds %struct.atmel_pwm_registers, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %duty_upd10.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %duty_upd10.i, align 1
  %conv11.i = zext i8 %53 to i32
  %mul.i27.i = shl i32 %49, 5
  %add.i28.i = add i32 %mul.i27.i, 512
  %add1.i.i = add i32 %add.i28.i, %conv11.i
  %54 = tail call i32 @llvm.bswap.i32(i32 %conv187.i) #5
  %55 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i30.i = getelementptr i8, ptr %56, i32 %add1.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i30.i, i32 %54) #5, !srcloc !68
  %57 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %hwpwm, align 8
  %lock.i.i = getelementptr inbounds %struct.atmel_pwm_chip, ptr %chip, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #5
  %59 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %60, i32 28
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #5, !srcloc !65
  %62 = xor i32 %61, -1
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #5
  %update_pending.i.i.i = getelementptr inbounds %struct.atmel_pwm_chip, ptr %chip, i32 0, i32 4
  %64 = ptrtoint ptr %update_pending.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %update_pending.i.i.i, align 4
  %and.i.i.i = and i32 %65, %63
  %shl.i.i = shl nuw i32 1, %58
  %or.i.i = or i32 %and.i.i.i, %shl.i.i
  store i32 %or.i.i, ptr %update_pending.i.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #5
  br label %cleanup50

if.end:                                           ; preds = %land.lhs.true5.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %66 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %state, align 8
  %conv.i99 = zext i32 %call1 to i64
  %mul.i100 = mul i64 %67, %conv.i99
  %68 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul.i100, i32 0) #9, !srcloc !66
  %asmresult.i.i101 = extractvalue { i64, i32 } %68, 0
  %asmresult4.i.i102 = extractvalue { i64, i32 } %68, 1
  %69 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul.i100, i64 %asmresult.i.i101, i32 %asmresult4.i.i102) #9, !srcloc !67
  %asmresult10.i.i103 = extractvalue { i64, i32 } %69, 0
  %div162286.i = lshr i64 %asmresult10.i.i103, 29
  %conv184.i = trunc i64 %div162286.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv184.i)
  %tobool.not.i.i = icmp eq i32 %conv184.i, 0
  %70 = tail call i32 @llvm.ctlz.i32(i32 %conv184.i, i1 true) #5, !range !69
  %sub.i.i = sub nuw nsw i32 32, %70
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  %data.i104 = getelementptr inbounds %struct.atmel_pwm_chip, ptr %chip, i32 0, i32 3
  %71 = ptrtoint ptr %data.i104 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %data.i104, align 4
  %cfg.i = getelementptr inbounds %struct.atmel_pwm_data, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %cfg.i, align 4
  %sub186.i = sub i32 %cond.i.i, %74
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %sub186.i)
  %cmp187.i = icmp sgt i32 %sub186.i, 10
  br i1 %cmp187.i, label %do.end, label %if.else190.i

if.else190.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub186.i)
  %cmp191.i = icmp sgt i32 %sub186.i, 0
  %sh_prom194.i = zext i32 %sub186.i to i64
  %shr195.i = lshr i64 %div162286.i, %sh_prom194.i
  %extract.t.i = trunc i64 %shr195.i to i32
  %cprd.0.ph = select i1 %cmp191.i, i32 %extract.t.i, i32 %conv184.i
  %75 = tail call i32 @llvm.smax.i32(i32 %sub186.i, i32 0)
  %duty_cycle.i105 = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %76 = ptrtoint ptr %duty_cycle.i105 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %duty_cycle.i105, align 8
  %mul.i107 = mul i64 %77, %conv.i99
  %78 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul.i107, i32 0) #9, !srcloc !66
  %asmresult.i.i108 = extractvalue { i64, i32 } %78, 0
  %asmresult4.i.i109 = extractvalue { i64, i32 } %78, 1
  %79 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul.i107, i64 %asmresult.i.i108, i32 %asmresult4.i.i109) #9, !srcloc !67
  %asmresult10.i.i110 = extractvalue { i64, i32 } %79, 0
  %div161267.i111 = lshr i64 %asmresult10.i.i110, 29
  %sh_prom183.i112 = zext i32 %75 to i64
  %shr184.i113 = lshr i64 %div161267.i111, %sh_prom183.i112
  %80 = trunc i64 %shr184.i113 to i32
  %conv187.i114 = sub i32 %cprd.0.ph, %80
  br i1 %tobool3.not, label %if.else, label %if.then19

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %81 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.15) #8
  %83 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.10) #8
  br label %cleanup50

if.then19:                                        ; preds = %if.else190.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %85 = load volatile i32, ptr @jiffies, align 128
  %hwpwm.i115 = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %86 = ptrtoint ptr %hwpwm.i115 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %hwpwm.i115, align 8
  tail call fastcc void @atmel_pwm_wait_nonpending(ptr noundef %chip, i32 noundef %87) #5
  %88 = ptrtoint ptr %hwpwm.i115 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %hwpwm.i115, align 8
  %shl.i = shl nuw i32 1, %89
  %90 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #5
  %base.i.i116 = getelementptr inbounds %struct.atmel_pwm_chip, ptr %chip, i32 0, i32 2
  %91 = ptrtoint ptr %base.i.i116 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %base.i.i116, align 4
  %add.ptr.i.i117 = getelementptr i8, ptr %92, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i117, i32 %90) #5, !srcloc !68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %93 = load volatile i32, ptr @jiffies, align 128
  %94 = ptrtoint ptr %base.i.i116 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base.i.i116, align 4
  %add.ptr.i1415.i = getelementptr i8, ptr %95, i32 12
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1415.i) #5, !srcloc !65
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #5
  %98 = ptrtoint ptr %hwpwm.i115 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %hwpwm.i115, align 8
  %shl616.i = shl nuw i32 1, %99
  %and17.i = and i32 %shl616.i, %97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool.not18.i = icmp eq i32 %and17.i, 0
  br i1 %tobool.not18.i, label %if.then19.cleanup_crit_edge, label %land.rhs.lr.ph.i

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.rhs.lr.ph.i:                                 ; preds = %if.then19
  %add3.neg.i = sub i32 -200, %93
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %100 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add3.neg.i, %100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i118 = icmp slt i32 %sub.i, 0
  br i1 %cmp.i118, label %while.body.i, label %land.rhs.i.cleanup_crit_edge

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.i:                                     ; preds = %land.rhs.i
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  %101 = ptrtoint ptr %base.i.i116 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %base.i.i116, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %102, i32 12
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14.i) #5, !srcloc !65
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #5
  %105 = ptrtoint ptr %hwpwm.i115 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %hwpwm.i115, align 8
  %shl6.i = shl nuw i32 1, %106
  %and.i = and i32 %shl6.i, %104
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.body.i.cleanup_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else:                                          ; preds = %if.else190.i
  %107 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %clk, align 4
  %call21 = tail call i32 @clk_enable(ptr noundef %108) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.else.cleanup_crit_edge, label %do.end26

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end26:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %109 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.13) #8
  br label %cleanup50

cleanup:                                          ; preds = %if.else.cleanup_crit_edge, %while.body.i.cleanup_crit_edge, %land.rhs.i.cleanup_crit_edge, %if.then19.cleanup_crit_edge
  %hwpwm30 = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %111 = ptrtoint ptr %hwpwm30 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %hwpwm30, align 8
  %mul.i119 = shl i32 %112, 5
  %add.i120 = add i32 %mul.i119, 512
  %base.i.i121 = getelementptr inbounds %struct.atmel_pwm_chip, ptr %chip, i32 0, i32 2
  %113 = ptrtoint ptr %base.i.i121 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %base.i.i121, align 4
  %add.ptr.i.i122 = getelementptr i8, ptr %114, i32 %add.i120
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i122) #5, !srcloc !65
  %and33 = and i32 %75, 15
  %polarity34 = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %116 = ptrtoint ptr %polarity34 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %polarity34, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp35 = icmp eq i32 %117, 0
  %118 = and i32 %115, -251789313
  %119 = tail call i32 @llvm.bswap.i32(i32 %118)
  %and38 = or i32 %119, %and33
  %masksel = select i1 %cmp35, i32 0, i32 512
  %val.0 = or i32 %and38, %masksel
  %120 = ptrtoint ptr %hwpwm30 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %hwpwm30, align 8
  %mul.i123 = shl i32 %121, 5
  %add.i124 = add i32 %mul.i123, 512
  %122 = tail call i32 @llvm.bswap.i32(i32 %val.0) #5
  %123 = ptrtoint ptr %base.i.i121 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %base.i.i121, align 4
  %add.ptr.i.i126 = getelementptr i8, ptr %124, i32 %add.i124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i126, i32 %122) #5, !srcloc !68
  %125 = ptrtoint ptr %hwpwm30 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %hwpwm30, align 8
  %127 = ptrtoint ptr %data.i104 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %data.i104, align 4
  %duty.i = getelementptr inbounds %struct.atmel_pwm_registers, ptr %128, i32 0, i32 2
  %129 = ptrtoint ptr %duty.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %duty.i, align 2
  %conv.i129 = zext i8 %130 to i32
  %mul.i.i130 = shl i32 %126, 5
  %add.i.i131 = add i32 %mul.i.i130, 512
  %add1.i.i132 = add i32 %add.i.i131, %conv.i129
  %131 = tail call i32 @llvm.bswap.i32(i32 %conv187.i114) #5
  %132 = ptrtoint ptr %base.i.i121 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %base.i.i121, align 4
  %add.ptr.i.i.i134 = getelementptr i8, ptr %133, i32 %add1.i.i132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i134, i32 %131) #5, !srcloc !68
  %134 = ptrtoint ptr %hwpwm30 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %hwpwm30, align 8
  %136 = ptrtoint ptr %data.i104 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %data.i104, align 4
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %137, align 4
  %conv4.i = zext i8 %139 to i32
  %mul.i9.i = shl i32 %135, 5
  %add.i10.i = add i32 %mul.i9.i, 512
  %add1.i11.i = add i32 %add.i10.i, %conv4.i
  %140 = tail call i32 @llvm.bswap.i32(i32 %cprd.0.ph) #5
  %141 = ptrtoint ptr %base.i.i121 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %base.i.i121, align 4
  %add.ptr.i.i13.i = getelementptr i8, ptr %142, i32 %add1.i11.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i13.i, i32 %140) #5, !srcloc !68
  %143 = ptrtoint ptr %hwpwm30 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %hwpwm30, align 8
  %shl = shl nuw i32 1, %144
  %145 = tail call i32 @llvm.bswap.i32(i32 %shl) #5
  %146 = ptrtoint ptr %base.i.i121 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %base.i.i121, align 4
  %add.ptr.i = getelementptr i8, ptr %147, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %145) #5, !srcloc !68
  br label %cleanup50

if.else44:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cstate.sroa.6.0.copyload162)
  %tobool46.not = icmp eq i8 %cstate.sroa.6.0.copyload162, 0
  br i1 %tobool46.not, label %if.else44.cleanup50_crit_edge, label %if.then47

if.else44.cleanup50_crit_edge:                    ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup50

if.then47:                                        ; preds = %if.else44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %148 = load volatile i32, ptr @jiffies, align 128
  %hwpwm.i135 = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %149 = ptrtoint ptr %hwpwm.i135 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %hwpwm.i135, align 8
  tail call fastcc void @atmel_pwm_wait_nonpending(ptr noundef %chip, i32 noundef %150) #5
  %151 = ptrtoint ptr %hwpwm.i135 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %hwpwm.i135, align 8
  %shl.i136 = shl nuw i32 1, %152
  %153 = tail call i32 @llvm.bswap.i32(i32 %shl.i136) #5
  %base.i.i137 = getelementptr inbounds %struct.atmel_pwm_chip, ptr %chip, i32 0, i32 2
  %154 = ptrtoint ptr %base.i.i137 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %base.i.i137, align 4
  %add.ptr.i.i138 = getelementptr i8, ptr %155, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i138, i32 %153) #5, !srcloc !68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %156 = load volatile i32, ptr @jiffies, align 128
  %157 = ptrtoint ptr %base.i.i137 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %base.i.i137, align 4
  %add.ptr.i1415.i139 = getelementptr i8, ptr %158, i32 12
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1415.i139) #5, !srcloc !65
  %160 = tail call i32 @llvm.bswap.i32(i32 %159) #5
  %161 = ptrtoint ptr %hwpwm.i135 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %hwpwm.i135, align 8
  %shl616.i140 = shl nuw i32 1, %162
  %and17.i141 = and i32 %shl616.i140, %160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i141)
  %tobool.not18.i142 = icmp eq i32 %and17.i141, 0
  br i1 %tobool.not18.i142, label %if.then47.atmel_pwm_disable.exit154_crit_edge, label %land.rhs.lr.ph.i144

if.then47.atmel_pwm_disable.exit154_crit_edge:    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #7
  br label %atmel_pwm_disable.exit154

land.rhs.lr.ph.i144:                              ; preds = %if.then47
  %add3.neg.i143 = sub i32 -200, %156
  br label %land.rhs.i147

land.rhs.i147:                                    ; preds = %while.body.i152.land.rhs.i147_crit_edge, %land.rhs.lr.ph.i144
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %163 = load volatile i32, ptr @jiffies, align 128
  %sub.i145 = add i32 %add3.neg.i143, %163
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i145)
  %cmp.i146 = icmp slt i32 %sub.i145, 0
  br i1 %cmp.i146, label %while.body.i152, label %land.rhs.i147.atmel_pwm_disable.exit154_crit_edge

land.rhs.i147.atmel_pwm_disable.exit154_crit_edge: ; preds = %land.rhs.i147
  call void @__sanitizer_cov_trace_pc() #7
  br label %atmel_pwm_disable.exit154

while.body.i152:                                  ; preds = %land.rhs.i147
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  %164 = ptrtoint ptr %base.i.i137 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %base.i.i137, align 4
  %add.ptr.i14.i148 = getelementptr i8, ptr %165, i32 12
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14.i148) #5, !srcloc !65
  %167 = tail call i32 @llvm.bswap.i32(i32 %166) #5
  %168 = ptrtoint ptr %hwpwm.i135 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %hwpwm.i135, align 8
  %shl6.i149 = shl nuw i32 1, %169
  %and.i150 = and i32 %shl6.i149, %167
  %tobool.not.i151 = icmp eq i32 %and.i150, 0
  br i1 %tobool.not.i151, label %while.body.i152.atmel_pwm_disable.exit154_crit_edge, label %while.body.i152.land.rhs.i147_crit_edge

while.body.i152.land.rhs.i147_crit_edge:          ; preds = %while.body.i152
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i147

while.body.i152.atmel_pwm_disable.exit154_crit_edge: ; preds = %while.body.i152
  call void @__sanitizer_cov_trace_pc() #7
  br label %atmel_pwm_disable.exit154

atmel_pwm_disable.exit154:                        ; preds = %while.body.i152.atmel_pwm_disable.exit154_crit_edge, %land.rhs.i147.atmel_pwm_disable.exit154_crit_edge, %if.then47.atmel_pwm_disable.exit154_crit_edge
  %clk.i = getelementptr inbounds %struct.atmel_pwm_chip, ptr %chip, i32 0, i32 1
  %170 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %171) #5
  br label %cleanup50

cleanup50:                                        ; preds = %atmel_pwm_disable.exit154, %if.else44.cleanup50_crit_edge, %cleanup, %do.end26, %do.end, %atmel_pwm_update_cdty.exit
  %retval.1 = phi i32 [ 0, %cleanup ], [ 0, %if.else44.cleanup50_crit_edge ], [ 0, %atmel_pwm_disable.exit154 ], [ %call21, %do.end26 ], [ -22, %do.end ], [ 0, %atmel_pwm_update_cdty.exit ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_pwm_get_state(ptr noundef %chip, ptr nocapture noundef readonly %pwm, ptr nocapture noundef writeonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.atmel_pwm_chip, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !65
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %4 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwpwm, align 8
  %mul.i = shl i32 %5, 5
  %add.i = add i32 %mul.i, 512
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %add.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !65
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  %10 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hwpwm, align 8
  %shl = shl nuw i32 1, %11
  %and = and i32 %shl, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %clk = getelementptr inbounds %struct.atmel_pwm_chip, ptr %chip, i32 0, i32 1
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk, align 4
  %call4 = tail call i32 @clk_get_rate(ptr noundef %13) #5
  %and5 = and i32 %9, 15
  %14 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hwpwm, align 8
  %data = getelementptr inbounds %struct.atmel_pwm_chip, ptr %chip, i32 0, i32 3
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 4
  %conv = zext i8 %19 to i32
  %mul.i64 = shl i32 %15, 5
  %add.i65 = add i32 %mul.i64, 512
  %add1.i = add i32 %add.i65, %conv
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i67 = getelementptr i8, ptr %21, i32 %add1.i
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i67) #5, !srcloc !65
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #5
  %conv8 = zext i32 %23 to i64
  %mul = mul nuw nsw i64 %conv8, 1000000000
  %sh_prom = zext i32 %and5 to i64
  %shl9 = shl i64 %mul, %sh_prom
  %conv10 = zext i32 %call4 to i64
  %add = add nsw i64 %conv10, -1
  %sub = add i64 %add, %shl9
  %call12 = tail call i64 @div64_u64(i64 noundef %sub, i64 noundef %conv10) #5
  %24 = ptrtoint ptr %state to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %call12, ptr %state, align 8
  %25 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hwpwm, align 8
  tail call fastcc void @atmel_pwm_wait_nonpending(ptr noundef %chip, i32 noundef %26)
  %27 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hwpwm, align 8
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 4
  %duty = getelementptr inbounds %struct.atmel_pwm_registers, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %duty to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %duty, align 2
  %conv19 = zext i8 %32 to i32
  %mul.i68 = shl i32 %28, 5
  %add.i69 = add i32 %mul.i68, 512
  %add1.i70 = add i32 %add.i69, %conv19
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i72 = getelementptr i8, ptr %34, i32 %add1.i70
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i72) #5, !srcloc !65
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #5
  %sub21 = sub i32 %23, %36
  %conv22 = zext i32 %sub21 to i64
  %mul23 = mul nuw nsw i64 %conv22, 1000000000
  %shl25 = shl i64 %mul23, %sh_prom
  %sub30 = add i64 %add, %shl25
  %call31 = tail call i64 @div64_u64(i64 noundef %sub30, i64 noundef %conv10) #5
  %duty_cycle = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %37 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %call31, ptr %duty_cycle, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.sink = phi i8 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %38 = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %.sink, ptr %38, align 4
  %and33 = lshr i32 %9, 9
  %and33.lobit = and i32 %and33, 1
  %40 = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and33.lobit, ptr %40, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atmel_pwm_wait_nonpending(ptr noundef %chip, i32 noundef %ch) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %lock.i = getelementptr inbounds %struct.atmel_pwm_chip, ptr %chip, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #5
  %update_pending.i = getelementptr inbounds %struct.atmel_pwm_chip, ptr %chip, i32 0, i32 4
  %1 = ptrtoint ptr %update_pending.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %update_pending.i, align 4
  %shl.i = shl nuw i32 1, %ch
  %and.i4 = and i32 %2, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4)
  %tobool.not.i5 = icmp eq i32 %and.i4, 0
  br i1 %tobool.not.i5, label %entry.atmel_pwm_test_pending.exit.thread_crit_edge, label %atmel_pwm_test_pending.exit.lr.ph

entry.atmel_pwm_test_pending.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %atmel_pwm_test_pending.exit.thread

atmel_pwm_test_pending.exit.lr.ph:                ; preds = %entry
  %base.i.i.i = getelementptr inbounds %struct.atmel_pwm_chip, ptr %chip, i32 0, i32 2
  %add.neg = sub i32 -200, %0
  br label %atmel_pwm_test_pending.exit

atmel_pwm_test_pending.exit.thread:               ; preds = %while.body.atmel_pwm_test_pending.exit.thread_crit_edge, %entry.atmel_pwm_test_pending.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #5
  br label %while.end

atmel_pwm_test_pending.exit:                      ; preds = %while.body.atmel_pwm_test_pending.exit_crit_edge, %atmel_pwm_test_pending.exit.lr.ph
  %3 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 28
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !65
  %6 = xor i32 %5, -1
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  %8 = ptrtoint ptr %update_pending.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %update_pending.i, align 4
  %and.i.i = and i32 %9, %7
  store i32 %and.i.i, ptr %update_pending.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #5
  %10 = and i32 %and.i.i, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %atmel_pwm_test_pending.exit.while.end_crit_edge, label %land.rhs

atmel_pwm_test_pending.exit.while.end_crit_edge:  ; preds = %atmel_pwm_test_pending.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

land.rhs:                                         ; preds = %atmel_pwm_test_pending.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %land.rhs
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #5
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #5
  %12 = ptrtoint ptr %update_pending.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %update_pending.i, align 4
  %and.i = and i32 %13, %shl.i
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.body.atmel_pwm_test_pending.exit.thread_crit_edge, label %while.body.atmel_pwm_test_pending.exit_crit_edge

while.body.atmel_pwm_test_pending.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %atmel_pwm_test_pending.exit

while.body.atmel_pwm_test_pending.exit.thread_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %atmel_pwm_test_pending.exit.thread

while.end:                                        ; preds = %land.rhs.while.end_crit_edge, %atmel_pwm_test_pending.exit.while.end_crit_edge, %atmel_pwm_test_pending.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwmchip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !51, !53}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__initcall__kmod_pwm_atmel__183_531_atmel_pwm_driver_init6, !1, !"__initcall__kmod_pwm_atmel__183_531_atmel_pwm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pwm/pwm-atmel.c", i32 531, i32 1}
!2 = !{ptr @__exitcall_atmel_pwm_driver_exit, !1, !"__exitcall_atmel_pwm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias184, !4, !"__UNIQUE_ID_alias184", i1 false, i1 false}
!4 = !{!"../drivers/pwm/pwm-atmel.c", i32 533, i32 1}
!5 = !{ptr @__UNIQUE_ID_author185, !6, !"__UNIQUE_ID_author185", i1 false, i1 false}
!6 = !{!"../drivers/pwm/pwm-atmel.c", i32 534, i32 1}
!7 = !{ptr @__UNIQUE_ID_description186, !8, !"__UNIQUE_ID_description186", i1 false, i1 false}
!8 = !{!"../drivers/pwm/pwm-atmel.c", i32 535, i32 1}
!9 = !{ptr @__UNIQUE_ID_file187, !10, !"__UNIQUE_ID_file187", i1 false, i1 false}
!10 = !{!"../drivers/pwm/pwm-atmel.c", i32 536, i32 1}
!11 = !{ptr @__UNIQUE_ID_license188, !10, !"__UNIQUE_ID_license188", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pwm/pwm-atmel.c", i32 525, i32 11}
!14 = !{ptr @atmel_pwm_driver, !15, !"atmel_pwm_driver", i1 false, i1 false}
!15 = !{!"../drivers/pwm/pwm-atmel.c", i32 523, i32 31}
!16 = !{ptr @atmel_pwm_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/pwm/pwm-atmel.c", i32 477, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/pwm/pwm-atmel.c", i32 489, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @atmel_pwm_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @atmel_pwm_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/pwm/pwm-atmel.c", i32 499, i32 3}
!29 = !{ptr @atmel_pwm_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @atmel_pwm_probe._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @atmel_pwm_ops, !32, !"atmel_pwm_ops", i1 false, i1 false}
!32 = !{!"../drivers/pwm/pwm-atmel.c", i32 401, i32 29}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/pwm/pwm-atmel.c", i32 325, i32 4}
!35 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @atmel_pwm_apply._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @atmel_pwm_apply._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pwm/pwm-atmel.c", i32 337, i32 5}
!40 = !{ptr @atmel_pwm_apply._entry.12, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @atmel_pwm_apply._entry_ptr.14, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pwm/pwm-atmel.c", i32 214, i32 3}
!44 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @atmel_pwm_calculate_cprd_and_pres._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @atmel_pwm_calculate_cprd_and_pres._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @atmel_pwm_dt_ids, !48, !"atmel_pwm_dt_ids", i1 false, i1 false}
!48 = !{!"../drivers/pwm/pwm-atmel.c", i32 446, i32 34}
!49 = !{ptr @atmel_sam9rl_pwm_data, !50, !"atmel_sam9rl_pwm_data", i1 false, i1 false}
!50 = !{!"../drivers/pwm/pwm-atmel.c", i32 407, i32 36}
!51 = !{ptr @atmel_sama5_pwm_data, !52, !"atmel_sama5_pwm_data", i1 false, i1 false}
!52 = !{!"../drivers/pwm/pwm-atmel.c", i32 420, i32 36}
!53 = !{ptr @mchp_sam9x60_pwm_data, !54, !"mchp_sam9x60_pwm_data", i1 false, i1 false}
!54 = !{!"../drivers/pwm/pwm-atmel.c", i32 433, i32 36}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{i8 0, i8 2}
!65 = !{i64 3081375}
!66 = !{i64 1156542, i64 1156569, i64 1156591, i64 1156619}
!67 = !{i64 1156950, i64 1156977, i64 1157010, i64 1157031, i64 1157058, i64 1157084}
!68 = !{i64 3080957}
!69 = !{i32 0, i32 33}
