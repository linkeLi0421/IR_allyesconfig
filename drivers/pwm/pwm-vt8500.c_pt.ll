; ModuleID = '/llk/IR_all_yes/drivers/pwm/pwm-vt8500.c_pt.bc'
source_filename = "../drivers/pwm/pwm-vt8500.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pwm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.vt8500_chip = type { %struct.pwm_chip, ptr, ptr }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }

@__initcall__kmod_pwm_vt8500__183_301_vt8500_pwm_driver_init6 = internal global ptr @vt8500_pwm_driver_init, section ".initcall6.init", align 4
@vt8500_pwm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @vt8500_pwm_probe, ptr @vt8500_pwm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @vt8500_pwm_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_vt8500_pwm_driver_exit = internal global ptr @vt8500_pwm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description184 = internal constant [41 x i8] c"pwm_vt8500.description=VT8500 PWM Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author185 = internal constant [53 x i8] c"pwm_vt8500.author=Tony Prisk <linux@prisktech.co.nz>\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [39 x i8] c"pwm_vt8500.file=drivers/pwm/pwm-vt8500\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [26 x i8] c"pwm_vt8500.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vt8500-pwm\00", [21 x i8] zeroinitializer }, align 32
@vt8500_pwm_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"via,vt8500-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@vt8500_pwm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 243, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid devicetree node\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vt8500_pwm_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/pwm/pwm-vt8500.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vt8500_pwm_probe._entry_ptr = internal global ptr @vt8500_pwm_probe._entry, section ".printk_index", align 4
@vt8500_pwm_ops = internal constant { %struct.pwm_ops, [56 x i8] } { %struct.pwm_ops { ptr null, ptr null, ptr null, ptr @vt8500_pwm_apply, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@vt8500_pwm_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 257, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"clock source not specified\0A\00", [36 x i8] zeroinitializer }, align 32
@vt8500_pwm_probe._entry_ptr.8 = internal global ptr @vt8500_pwm_probe._entry.6, section ".printk_index", align 4
@vt8500_pwm_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 267, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to prepare clock\0A\00", [39 x i8] zeroinitializer }, align 32
@vt8500_pwm_probe._entry_ptr.11 = internal global ptr @vt8500_pwm_probe._entry.9, section ".printk_index", align 4
@vt8500_pwm_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 273, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to add PWM chip\0A\00", [40 x i8] zeroinitializer }, align 32
@vt8500_pwm_probe._entry_ptr.14 = internal global ptr @vt8500_pwm_probe._entry.12, section ".printk_index", align 4
@loops_per_jiffy = external dso_local local_unnamed_addr global i32, align 4
@vt8500_pwm_busy_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 69, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Waiting for status bits 0x%x to clear timed out\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vt8500_pwm_busy_wait\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@vt8500_pwm_busy_wait._entry_ptr = internal global ptr @vt8500_pwm_busy_wait._entry, section ".printk_index", align 4
@vt8500_pwm_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 83, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to enable clock\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vt8500_pwm_config\00", [46 x i8] zeroinitializer }, align 32
@vt8500_pwm_config._entry_ptr = internal global ptr @vt8500_pwm_config._entry, section ".printk_index", align 4
@vt8500_pwm_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.20, ptr @.str.3, i32 134, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vt8500_pwm_enable\00", [46 x i8] zeroinitializer }, align 32
@vt8500_pwm_enable._entry_ptr = internal global ptr @vt8500_pwm_enable._entry, section ".printk_index", align 4
@___asan_gen_.21 = private unnamed_addr constant [18 x i8] c"vt8500_pwm_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 293, i32 31 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 297, i32 11 }
@___asan_gen_.27 = private unnamed_addr constant [18 x i8] c"vt8500_pwm_dt_ids\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 230, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 243, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [15 x i8] c"vt8500_pwm_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 225, i32 29 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 257, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 267, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 273, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 68, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 83, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.94 = private constant [28 x i8] c"../drivers/pwm/pwm-vt8500.c\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 134, i32 3 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_author185, ptr @__UNIQUE_ID_description184, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_vt8500_pwm_driver_exit, ptr @__initcall__kmod_pwm_vt8500__183_301_vt8500_pwm_driver_init6, ptr @vt8500_pwm_busy_wait._entry, ptr @vt8500_pwm_busy_wait._entry_ptr, ptr @vt8500_pwm_config._entry, ptr @vt8500_pwm_config._entry_ptr, ptr @vt8500_pwm_driver_exit, ptr @vt8500_pwm_enable._entry, ptr @vt8500_pwm_enable._entry_ptr, ptr @vt8500_pwm_probe._entry, ptr @vt8500_pwm_probe._entry.12, ptr @vt8500_pwm_probe._entry.6, ptr @vt8500_pwm_probe._entry.9, ptr @vt8500_pwm_probe._entry_ptr, ptr @vt8500_pwm_probe._entry_ptr.11, ptr @vt8500_pwm_probe._entry_ptr.14, ptr @vt8500_pwm_probe._entry_ptr.8, ptr @vt8500_pwm_driver, ptr @.str, ptr @vt8500_pwm_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @vt8500_pwm_ops, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500_pwm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500_pwm_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500_pwm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500_pwm_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500_pwm_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500_pwm_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500_pwm_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500_pwm_busy_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500_pwm_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8500_pwm_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vt8500_pwm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @vt8500_pwm_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vt8500_pwm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @vt8500_pwm_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt8500_pwm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #5
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @vt8500_pwm_ops, ptr %ops, align 4
  %npwm = getelementptr inbounds %struct.pwm_chip, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %npwm to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %npwm, align 4
  %call11 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #5
  %clk = getelementptr inbounds %struct.vt8500_chip, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call11, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end17, label %if.end21

do.end17:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  %8 = ptrtoint ptr %7 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end4
  %call22 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %base = getelementptr inbounds %struct.vt8500_chip, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call22, ptr %base, align 4
  %cmp.i76 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i76, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %call22 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end21
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk, align 4
  %call30 = tail call i32 @clk_prepare(ptr noundef %12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %do.end35, label %if.end37

do.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #8
  br label %cleanup

if.end37:                                         ; preds = %if.end28
  %call39 = tail call i32 @pwmchip_add(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %do.end44, label %if.end47

do.end44:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #8
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk, align 4
  tail call void @clk_unprepare(ptr noundef %14) #5
  br label %cleanup

if.end47:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %do.end44, %do.end35, %if.then25, %do.end17, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %8, %do.end17 ], [ %10, %if.then25 ], [ %call30, %do.end35 ], [ %call39, %do.end44 ], [ %call39, %if.end47 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt8500_pwm_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @pwmchip_remove(ptr noundef %1) #5
  %clk = getelementptr inbounds %struct.vt8500_chip, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_unprepare(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwmchip_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt8500_pwm_apply(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %pwm, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled2 = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 7, i32 3
  %0 = ptrtoint ptr %enabled2 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled2, align 4, !range !62
  %polarity = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %2 = ptrtoint ptr %polarity to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %polarity, align 8
  %polarity4 = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %polarity4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %polarity4, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp eq i32 %3, %5
  br i1 %cmp.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then6

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @vt8500_pwm_disable(ptr noundef %chip, ptr noundef %pwm)
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then.if.end_crit_edge
  %6 = ptrtoint ptr %polarity to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %polarity, align 8
  %base.i = getelementptr inbounds %struct.vt8500_chip, ptr %chip, i32 0, i32 1
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %hwpwm.i = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %10 = ptrtoint ptr %hwpwm.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hwpwm.i, align 8
  %shl.i = shl i32 %11, 4
  %add.ptr1.i = getelementptr i8, ptr %9, i32 %shl.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp eq i32 %7, 1
  %13 = and i32 %12, -33554433
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  %masksel.i = select i1 %cmp.i, i32 2, i32 0
  %val.0.i = or i32 %14, %masksel.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  %15 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #5
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %18 = ptrtoint ptr %hwpwm.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hwpwm.i, align 8
  %shl6.i = shl i32 %19, 4
  %add.ptr8.i = getelementptr i8, ptr %17, i32 %shl6.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %15) #5, !srcloc !66
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %20 = load i32, ptr @loops_per_jiffy, align 4
  %21 = urem i32 %20, 1000
  %mul1.i.i = sub i32 %20, %21
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %add.ptr24.i.i = getelementptr i8, ptr %23, i32 64
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i.i) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %25 = and i32 %24, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not26.i.i = icmp eq i32 %25, 0
  br i1 %tobool.not26.i.i, label %while.end.i.i, label %if.end.land.rhs.i.i_crit_edge

if.end.land.rhs.i.i_crit_edge:                    ; preds = %if.end
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %do.end.i.i.land.rhs.i.i_crit_edge, %if.end.land.rhs.i.i_crit_edge
  %loops.027.i.i = phi i32 [ %dec.i.i, %do.end.i.i.land.rhs.i.i_crit_edge ], [ %mul1.i.i, %if.end.land.rhs.i.i_crit_edge ]
  %dec.i.i = add i32 %loops.027.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool4.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool4.not.i.i, label %land.rhs.i.i.do.end17.i.i_crit_edge, label %do.end.i.i

land.rhs.i.i.do.end17.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end17.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !69
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 64
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %29 = and i32 %28, 16777216
  %tobool.not.i.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.if.end11_crit_edge, label %do.end.i.i.land.rhs.i.i_crit_edge

do.end.i.i.land.rhs.i.i_crit_edge:                ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i.i

do.end.i.i.if.end11_crit_edge:                    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

while.end.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul1.i.i)
  %tobool11.not.i.i = icmp eq i32 %mul1.i.i, 0
  br i1 %tobool11.not.i.i, label %while.end.i.i.do.end17.i.i_crit_edge, label %while.end.i.i.if.end11_crit_edge, !prof !70

while.end.i.i.if.end11_crit_edge:                 ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

while.end.i.i.do.end17.i.i_crit_edge:             ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end17.i.i

do.end17.i.i:                                     ; preds = %while.end.i.i.do.end17.i.i_crit_edge, %land.rhs.i.i.do.end17.i.i_crit_edge
  %30 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %31, ptr noundef nonnull @.str.15, i32 noundef 1) #8
  br label %if.end11

if.end11:                                         ; preds = %do.end17.i.i, %while.end.i.i.if.end11_crit_edge, %do.end.i.i.if.end11_crit_edge, %entry.if.end11_crit_edge
  %enabled.1.off0.in = phi i8 [ %1, %entry.if.end11_crit_edge ], [ 0, %while.end.i.i.if.end11_crit_edge ], [ 0, %do.end17.i.i ], [ 0, %do.end.i.i.if.end11_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enabled.1.off0.in)
  %enabled.1.off0.not = icmp eq i8 %enabled.1.off0.in, 0
  %enabled12 = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %32 = ptrtoint ptr %enabled12 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %enabled12, align 4, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool13.not = icmp eq i8 %33, 0
  br i1 %tobool13.not, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.end11
  br i1 %enabled.1.off0.not, label %if.then14.cleanup_crit_edge, label %if.then16

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then16:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @vt8500_pwm_disable(ptr noundef %chip, ptr noundef %pwm)
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  %chip19 = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 4
  %34 = ptrtoint ptr %chip19 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chip19, align 8
  %duty_cycle = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %36 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %duty_cycle, align 8
  %38 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %state, align 8
  %clk.i = getelementptr inbounds %struct.vt8500_chip, ptr %35, i32 0, i32 2
  %40 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %clk.i, align 4
  %call.i = tail call i32 @clk_enable(ptr noundef %41) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i50 = icmp slt i32 %call.i, 0
  br i1 %cmp.i50, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %35, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.18) #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end18
  %44 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %clk.i, align 4
  %call2.i = tail call i32 @clk_get_rate(ptr noundef %45) #5
  %conv.i = zext i32 %call2.i to i64
  %mul.i = mul i64 %39, %conv.i
  %46 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul.i, i32 0) #9, !srcloc !71
  %asmresult.i.i = extractvalue { i64, i32 } %46, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %46, 1
  %47 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul.i, i64 %asmresult.i.i, i32 %asmresult4.i.i) #9, !srcloc !72
  %asmresult10.i.i = extractvalue { i64, i32 } %47, 0
  %div168374.i = lshr i64 %asmresult10.i.i, 29
  %conv190.i = trunc i64 %div168374.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv190.i)
  %cmp191.i = icmp eq i32 %conv190.i, 0
  %spec.store.select.i = select i1 %cmp191.i, i32 1, i32 %conv190.i
  %sub195.i = add i32 %spec.store.select.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194303, i32 %sub195.i)
  %cmp204.i = icmp ugt i32 %sub195.i, 4194303
  br i1 %cmp204.i, label %if.then206.i, label %if.end208.i

if.then206.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %49) #5
  br label %cleanup

if.end208.i:                                      ; preds = %if.end.i
  %div196375.i = lshr i32 %sub195.i, 12
  %add197.i = add nuw nsw i32 %div196375.i, 1
  %div198.i = udiv i32 %spec.store.select.i, %add197.i
  %sub199.i = add nsw i32 %div198.i, -1
  %50 = tail call i32 @llvm.umin.i32(i32 %sub199.i, i32 4095) #5
  %conv209.i = zext i32 %50 to i64
  %mul210.i = mul i64 %37, %conv209.i
  %call211.i = tail call i64 @div64_u64(i64 noundef %mul210.i, i64 noundef %39) #5
  %conv212.i = trunc i64 %call211.i to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  tail call void @arm_heavy_mb() #5
  %51 = tail call i32 @llvm.bswap.i32(i32 %div196375.i) #5
  %base.i51 = getelementptr inbounds %struct.vt8500_chip, ptr %35, i32 0, i32 1
  %52 = ptrtoint ptr %base.i51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i51, align 4
  %hwpwm.i52 = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %54 = ptrtoint ptr %hwpwm.i52 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %hwpwm.i52, align 8
  %shl216.i = shl i32 %55, 4
  %add217.i = or i32 %shl216.i, 4
  %add.ptr218.i = getelementptr i8, ptr %53, i32 %add217.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr218.i, i32 %51) #5, !srcloc !66
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %56 = load i32, ptr @loops_per_jiffy, align 4
  %57 = urem i32 %56, 1000
  %mul1.i.i53 = sub i32 %56, %57
  %58 = ptrtoint ptr %base.i51 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i51, align 4
  %add.ptr24.i.i54 = getelementptr i8, ptr %59, i32 64
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i.i54) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %61 = and i32 %60, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not26.i.i55 = icmp eq i32 %61, 0
  br i1 %tobool.not26.i.i55, label %while.end.i.i64, label %if.end208.i.land.rhs.i.i59_crit_edge

if.end208.i.land.rhs.i.i59_crit_edge:             ; preds = %if.end208.i
  br label %land.rhs.i.i59

land.rhs.i.i59:                                   ; preds = %do.end.i.i62.land.rhs.i.i59_crit_edge, %if.end208.i.land.rhs.i.i59_crit_edge
  %loops.027.i.i56 = phi i32 [ %dec.i.i57, %do.end.i.i62.land.rhs.i.i59_crit_edge ], [ %mul1.i.i53, %if.end208.i.land.rhs.i.i59_crit_edge ]
  %dec.i.i57 = add i32 %loops.027.i.i56, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i57)
  %tobool4.not.i.i58 = icmp eq i32 %dec.i.i57, 0
  br i1 %tobool4.not.i.i58, label %land.rhs.i.i59.do.end17.i.i65_crit_edge, label %do.end.i.i62

land.rhs.i.i59.do.end17.i.i65_crit_edge:          ; preds = %land.rhs.i.i59
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end17.i.i65

do.end.i.i62:                                     ; preds = %land.rhs.i.i59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !69
  %62 = ptrtoint ptr %base.i51 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base.i51, align 4
  %add.ptr.i.i60 = getelementptr i8, ptr %63, i32 64
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i60) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %65 = and i32 %64, 33554432
  %tobool.not.i.i61 = icmp eq i32 %65, 0
  br i1 %tobool.not.i.i61, label %do.end.i.i62.vt8500_pwm_busy_wait.exit.i_crit_edge, label %do.end.i.i62.land.rhs.i.i59_crit_edge

do.end.i.i62.land.rhs.i.i59_crit_edge:            ; preds = %do.end.i.i62
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i.i59

do.end.i.i62.vt8500_pwm_busy_wait.exit.i_crit_edge: ; preds = %do.end.i.i62
  call void @__sanitizer_cov_trace_pc() #7
  br label %vt8500_pwm_busy_wait.exit.i

while.end.i.i64:                                  ; preds = %if.end208.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul1.i.i53)
  %tobool11.not.i.i63 = icmp eq i32 %mul1.i.i53, 0
  br i1 %tobool11.not.i.i63, label %while.end.i.i64.do.end17.i.i65_crit_edge, label %while.end.i.i64.vt8500_pwm_busy_wait.exit.i_crit_edge, !prof !70

while.end.i.i64.vt8500_pwm_busy_wait.exit.i_crit_edge: ; preds = %while.end.i.i64
  call void @__sanitizer_cov_trace_pc() #7
  br label %vt8500_pwm_busy_wait.exit.i

while.end.i.i64.do.end17.i.i65_crit_edge:         ; preds = %while.end.i.i64
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end17.i.i65

do.end17.i.i65:                                   ; preds = %while.end.i.i64.do.end17.i.i65_crit_edge, %land.rhs.i.i59.do.end17.i.i65_crit_edge
  %66 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %35, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %67, ptr noundef nonnull @.str.15, i32 noundef 2) #8
  br label %vt8500_pwm_busy_wait.exit.i

vt8500_pwm_busy_wait.exit.i:                      ; preds = %do.end17.i.i65, %while.end.i.i64.vt8500_pwm_busy_wait.exit.i_crit_edge, %do.end.i.i62.vt8500_pwm_busy_wait.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  tail call void @arm_heavy_mb() #5
  %68 = tail call i32 @llvm.bswap.i32(i32 %50) #5
  %69 = ptrtoint ptr %base.i51 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base.i51, align 4
  %71 = ptrtoint ptr %hwpwm.i52 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %hwpwm.i52, align 8
  %shl225.i = shl i32 %72, 4
  %add226.i = or i32 %shl225.i, 8
  %add.ptr227.i = getelementptr i8, ptr %70, i32 %add226.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr227.i, i32 %68) #5, !srcloc !66
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %73 = load i32, ptr @loops_per_jiffy, align 4
  %74 = urem i32 %73, 1000
  %mul1.i376.i = sub i32 %73, %74
  %75 = ptrtoint ptr %base.i51 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base.i51, align 4
  %add.ptr24.i378.i = getelementptr i8, ptr %76, i32 64
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i378.i) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %78 = and i32 %77, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.not26.i380.i = icmp eq i32 %78, 0
  br i1 %tobool.not26.i380.i, label %while.end.i390.i, label %vt8500_pwm_busy_wait.exit.i.land.rhs.i384.i_crit_edge

vt8500_pwm_busy_wait.exit.i.land.rhs.i384.i_crit_edge: ; preds = %vt8500_pwm_busy_wait.exit.i
  br label %land.rhs.i384.i

land.rhs.i384.i:                                  ; preds = %do.end.i388.i.land.rhs.i384.i_crit_edge, %vt8500_pwm_busy_wait.exit.i.land.rhs.i384.i_crit_edge
  %loops.027.i381.i = phi i32 [ %dec.i382.i, %do.end.i388.i.land.rhs.i384.i_crit_edge ], [ %mul1.i376.i, %vt8500_pwm_busy_wait.exit.i.land.rhs.i384.i_crit_edge ]
  %dec.i382.i = add i32 %loops.027.i381.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i382.i)
  %tobool4.not.i383.i = icmp eq i32 %dec.i382.i, 0
  br i1 %tobool4.not.i383.i, label %land.rhs.i384.i.do.end17.i391.i_crit_edge, label %do.end.i388.i

land.rhs.i384.i.do.end17.i391.i_crit_edge:        ; preds = %land.rhs.i384.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end17.i391.i

do.end.i388.i:                                    ; preds = %land.rhs.i384.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !69
  %79 = ptrtoint ptr %base.i51 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base.i51, align 4
  %add.ptr.i385.i = getelementptr i8, ptr %80, i32 64
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i385.i) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %82 = and i32 %81, 67108864
  %tobool.not.i387.i = icmp eq i32 %82, 0
  br i1 %tobool.not.i387.i, label %do.end.i388.i.vt8500_pwm_busy_wait.exit392.i_crit_edge, label %do.end.i388.i.land.rhs.i384.i_crit_edge

do.end.i388.i.land.rhs.i384.i_crit_edge:          ; preds = %do.end.i388.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i384.i

do.end.i388.i.vt8500_pwm_busy_wait.exit392.i_crit_edge: ; preds = %do.end.i388.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vt8500_pwm_busy_wait.exit392.i

while.end.i390.i:                                 ; preds = %vt8500_pwm_busy_wait.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul1.i376.i)
  %tobool11.not.i389.i = icmp eq i32 %mul1.i376.i, 0
  br i1 %tobool11.not.i389.i, label %while.end.i390.i.do.end17.i391.i_crit_edge, label %while.end.i390.i.vt8500_pwm_busy_wait.exit392.i_crit_edge, !prof !70

while.end.i390.i.vt8500_pwm_busy_wait.exit392.i_crit_edge: ; preds = %while.end.i390.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vt8500_pwm_busy_wait.exit392.i

while.end.i390.i.do.end17.i391.i_crit_edge:       ; preds = %while.end.i390.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end17.i391.i

do.end17.i391.i:                                  ; preds = %while.end.i390.i.do.end17.i391.i_crit_edge, %land.rhs.i384.i.do.end17.i391.i_crit_edge
  %83 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %35, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %84, ptr noundef nonnull @.str.15, i32 noundef 4) #8
  br label %vt8500_pwm_busy_wait.exit392.i

vt8500_pwm_busy_wait.exit392.i:                   ; preds = %do.end17.i391.i, %while.end.i390.i.vt8500_pwm_busy_wait.exit392.i_crit_edge, %do.end.i388.i.vt8500_pwm_busy_wait.exit392.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  tail call void @arm_heavy_mb() #5
  %85 = tail call i32 @llvm.bswap.i32(i32 %conv212.i) #5
  %86 = ptrtoint ptr %base.i51 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base.i51, align 4
  %88 = ptrtoint ptr %hwpwm.i52 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %hwpwm.i52, align 8
  %shl234.i = shl i32 %89, 4
  %add235.i = or i32 %shl234.i, 12
  %add.ptr236.i = getelementptr i8, ptr %87, i32 %add235.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr236.i, i32 %85) #5, !srcloc !66
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %90 = load i32, ptr @loops_per_jiffy, align 4
  %91 = urem i32 %90, 1000
  %mul1.i393.i = sub i32 %90, %91
  %92 = ptrtoint ptr %base.i51 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %base.i51, align 4
  %add.ptr24.i395.i = getelementptr i8, ptr %93, i32 64
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i395.i) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %95 = and i32 %94, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool.not26.i397.i = icmp eq i32 %95, 0
  br i1 %tobool.not26.i397.i, label %while.end.i407.i, label %vt8500_pwm_busy_wait.exit392.i.land.rhs.i401.i_crit_edge

vt8500_pwm_busy_wait.exit392.i.land.rhs.i401.i_crit_edge: ; preds = %vt8500_pwm_busy_wait.exit392.i
  br label %land.rhs.i401.i

land.rhs.i401.i:                                  ; preds = %do.end.i405.i.land.rhs.i401.i_crit_edge, %vt8500_pwm_busy_wait.exit392.i.land.rhs.i401.i_crit_edge
  %loops.027.i398.i = phi i32 [ %dec.i399.i, %do.end.i405.i.land.rhs.i401.i_crit_edge ], [ %mul1.i393.i, %vt8500_pwm_busy_wait.exit392.i.land.rhs.i401.i_crit_edge ]
  %dec.i399.i = add i32 %loops.027.i398.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i399.i)
  %tobool4.not.i400.i = icmp eq i32 %dec.i399.i, 0
  br i1 %tobool4.not.i400.i, label %land.rhs.i401.i.do.end17.i408.i_crit_edge, label %do.end.i405.i

land.rhs.i401.i.do.end17.i408.i_crit_edge:        ; preds = %land.rhs.i401.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end17.i408.i

do.end.i405.i:                                    ; preds = %land.rhs.i401.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !69
  %96 = ptrtoint ptr %base.i51 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %base.i51, align 4
  %add.ptr.i402.i = getelementptr i8, ptr %97, i32 64
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i402.i) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %99 = and i32 %98, 134217728
  %tobool.not.i404.i = icmp eq i32 %99, 0
  br i1 %tobool.not.i404.i, label %do.end.i405.i.vt8500_pwm_busy_wait.exit409.i_crit_edge, label %do.end.i405.i.land.rhs.i401.i_crit_edge

do.end.i405.i.land.rhs.i401.i_crit_edge:          ; preds = %do.end.i405.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i401.i

do.end.i405.i.vt8500_pwm_busy_wait.exit409.i_crit_edge: ; preds = %do.end.i405.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vt8500_pwm_busy_wait.exit409.i

while.end.i407.i:                                 ; preds = %vt8500_pwm_busy_wait.exit392.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul1.i393.i)
  %tobool11.not.i406.i = icmp eq i32 %mul1.i393.i, 0
  br i1 %tobool11.not.i406.i, label %while.end.i407.i.do.end17.i408.i_crit_edge, label %while.end.i407.i.vt8500_pwm_busy_wait.exit409.i_crit_edge, !prof !70

while.end.i407.i.vt8500_pwm_busy_wait.exit409.i_crit_edge: ; preds = %while.end.i407.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vt8500_pwm_busy_wait.exit409.i

while.end.i407.i.do.end17.i408.i_crit_edge:       ; preds = %while.end.i407.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end17.i408.i

do.end17.i408.i:                                  ; preds = %while.end.i407.i.do.end17.i408.i_crit_edge, %land.rhs.i401.i.do.end17.i408.i_crit_edge
  %100 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %35, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %101, ptr noundef nonnull @.str.15, i32 noundef 8) #8
  br label %vt8500_pwm_busy_wait.exit409.i

vt8500_pwm_busy_wait.exit409.i:                   ; preds = %do.end17.i408.i, %while.end.i407.i.vt8500_pwm_busy_wait.exit409.i_crit_edge, %do.end.i405.i.vt8500_pwm_busy_wait.exit409.i_crit_edge
  %102 = ptrtoint ptr %base.i51 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %base.i51, align 4
  %104 = ptrtoint ptr %hwpwm.i52 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %hwpwm.i52, align 8
  %shl240.i = shl i32 %105, 4
  %add.ptr242.i = getelementptr i8, ptr %103, i32 %shl240.i
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr242.i) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !76
  %107 = or i32 %106, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  tail call void @arm_heavy_mb() #5
  %108 = ptrtoint ptr %base.i51 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %base.i51, align 4
  %110 = ptrtoint ptr %hwpwm.i52 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %hwpwm.i52, align 8
  %shl252.i = shl i32 %111, 4
  %add.ptr254.i = getelementptr i8, ptr %109, i32 %shl252.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr254.i, i32 %107) #5, !srcloc !66
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %112 = load i32, ptr @loops_per_jiffy, align 4
  %113 = urem i32 %112, 1000
  %mul1.i410.i = sub i32 %112, %113
  %114 = ptrtoint ptr %base.i51 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %base.i51, align 4
  %add.ptr24.i412.i = getelementptr i8, ptr %115, i32 64
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i412.i) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %117 = and i32 %116, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool.not26.i414.i = icmp eq i32 %117, 0
  br i1 %tobool.not26.i414.i, label %while.end.i424.i, label %vt8500_pwm_busy_wait.exit409.i.land.rhs.i418.i_crit_edge

vt8500_pwm_busy_wait.exit409.i.land.rhs.i418.i_crit_edge: ; preds = %vt8500_pwm_busy_wait.exit409.i
  br label %land.rhs.i418.i

land.rhs.i418.i:                                  ; preds = %do.end.i422.i.land.rhs.i418.i_crit_edge, %vt8500_pwm_busy_wait.exit409.i.land.rhs.i418.i_crit_edge
  %loops.027.i415.i = phi i32 [ %dec.i416.i, %do.end.i422.i.land.rhs.i418.i_crit_edge ], [ %mul1.i410.i, %vt8500_pwm_busy_wait.exit409.i.land.rhs.i418.i_crit_edge ]
  %dec.i416.i = add i32 %loops.027.i415.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i416.i)
  %tobool4.not.i417.i = icmp eq i32 %dec.i416.i, 0
  br i1 %tobool4.not.i417.i, label %land.rhs.i418.i.do.end17.i425.i_crit_edge, label %do.end.i422.i

land.rhs.i418.i.do.end17.i425.i_crit_edge:        ; preds = %land.rhs.i418.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end17.i425.i

do.end.i422.i:                                    ; preds = %land.rhs.i418.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !69
  %118 = ptrtoint ptr %base.i51 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %base.i51, align 4
  %add.ptr.i419.i = getelementptr i8, ptr %119, i32 64
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i419.i) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %121 = and i32 %120, 16777216
  %tobool.not.i421.i = icmp eq i32 %121, 0
  br i1 %tobool.not.i421.i, label %do.end.i422.i.vt8500_pwm_config.exit_crit_edge, label %do.end.i422.i.land.rhs.i418.i_crit_edge

do.end.i422.i.land.rhs.i418.i_crit_edge:          ; preds = %do.end.i422.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i418.i

do.end.i422.i.vt8500_pwm_config.exit_crit_edge:   ; preds = %do.end.i422.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vt8500_pwm_config.exit

while.end.i424.i:                                 ; preds = %vt8500_pwm_busy_wait.exit409.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul1.i410.i)
  %tobool11.not.i423.i = icmp eq i32 %mul1.i410.i, 0
  br i1 %tobool11.not.i423.i, label %while.end.i424.i.do.end17.i425.i_crit_edge, label %while.end.i424.i.vt8500_pwm_config.exit_crit_edge, !prof !70

while.end.i424.i.vt8500_pwm_config.exit_crit_edge: ; preds = %while.end.i424.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vt8500_pwm_config.exit

while.end.i424.i.do.end17.i425.i_crit_edge:       ; preds = %while.end.i424.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end17.i425.i

do.end17.i425.i:                                  ; preds = %while.end.i424.i.do.end17.i425.i_crit_edge, %land.rhs.i418.i.do.end17.i425.i_crit_edge
  %122 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %35, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %123, ptr noundef nonnull @.str.15, i32 noundef 1) #8
  br label %vt8500_pwm_config.exit

vt8500_pwm_config.exit:                           ; preds = %do.end17.i425.i, %while.end.i424.i.vt8500_pwm_config.exit_crit_edge, %do.end.i422.i.vt8500_pwm_config.exit_crit_edge
  %124 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %125) #5
  br i1 %enabled.1.off0.not, label %if.then25, label %vt8500_pwm_config.exit.cleanup_crit_edge

vt8500_pwm_config.exit.cleanup_crit_edge:         ; preds = %vt8500_pwm_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then25:                                        ; preds = %vt8500_pwm_config.exit
  %clk.i66 = getelementptr inbounds %struct.vt8500_chip, ptr %chip, i32 0, i32 2
  %126 = ptrtoint ptr %clk.i66 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %clk.i66, align 4
  %call.i67 = tail call i32 @clk_enable(ptr noundef %127) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %cmp.i68 = icmp slt i32 %call.i67, 0
  br i1 %cmp.i68, label %do.end.i69, label %if.end.i77

do.end.i69:                                       ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  %128 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %129, ptr noundef nonnull @.str.18) #8
  br label %cleanup

if.end.i77:                                       ; preds = %if.then25
  %base.i70 = getelementptr inbounds %struct.vt8500_chip, ptr %chip, i32 0, i32 1
  %130 = ptrtoint ptr %base.i70 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %base.i70, align 4
  %132 = ptrtoint ptr %hwpwm.i52 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %hwpwm.i52, align 8
  %shl.i72 = shl i32 %133, 4
  %add.ptr1.i73 = getelementptr i8, ptr %131, i32 %shl.i72
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i73) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  %135 = or i32 %134, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %136 = ptrtoint ptr %base.i70 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %base.i70, align 4
  %138 = ptrtoint ptr %hwpwm.i52 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %hwpwm.i52, align 8
  %shl10.i = shl i32 %139, 4
  %add.ptr12.i = getelementptr i8, ptr %137, i32 %shl10.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %135) #5, !srcloc !66
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %140 = load i32, ptr @loops_per_jiffy, align 4
  %141 = urem i32 %140, 1000
  %mul1.i.i74 = sub i32 %140, %141
  %142 = ptrtoint ptr %base.i70 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %base.i70, align 4
  %add.ptr24.i.i75 = getelementptr i8, ptr %143, i32 64
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i.i75) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %145 = and i32 %144, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool.not26.i.i76 = icmp eq i32 %145, 0
  br i1 %tobool.not26.i.i76, label %while.end.i.i86, label %if.end.i77.land.rhs.i.i81_crit_edge

if.end.i77.land.rhs.i.i81_crit_edge:              ; preds = %if.end.i77
  br label %land.rhs.i.i81

land.rhs.i.i81:                                   ; preds = %do.end.i.i84.land.rhs.i.i81_crit_edge, %if.end.i77.land.rhs.i.i81_crit_edge
  %loops.027.i.i78 = phi i32 [ %dec.i.i79, %do.end.i.i84.land.rhs.i.i81_crit_edge ], [ %mul1.i.i74, %if.end.i77.land.rhs.i.i81_crit_edge ]
  %dec.i.i79 = add i32 %loops.027.i.i78, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i79)
  %tobool4.not.i.i80 = icmp eq i32 %dec.i.i79, 0
  br i1 %tobool4.not.i.i80, label %land.rhs.i.i81.do.end17.i.i87_crit_edge, label %do.end.i.i84

land.rhs.i.i81.do.end17.i.i87_crit_edge:          ; preds = %land.rhs.i.i81
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end17.i.i87

do.end.i.i84:                                     ; preds = %land.rhs.i.i81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !69
  %146 = ptrtoint ptr %base.i70 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %base.i70, align 4
  %add.ptr.i.i82 = getelementptr i8, ptr %147, i32 64
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i82) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %149 = and i32 %148, 16777216
  %tobool.not.i.i83 = icmp eq i32 %149, 0
  br i1 %tobool.not.i.i83, label %do.end.i.i84.cleanup_crit_edge, label %do.end.i.i84.land.rhs.i.i81_crit_edge

do.end.i.i84.land.rhs.i.i81_crit_edge:            ; preds = %do.end.i.i84
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i.i81

do.end.i.i84.cleanup_crit_edge:                   ; preds = %do.end.i.i84
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.end.i.i86:                                  ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul1.i.i74)
  %tobool11.not.i.i85 = icmp eq i32 %mul1.i.i74, 0
  br i1 %tobool11.not.i.i85, label %while.end.i.i86.do.end17.i.i87_crit_edge, label %while.end.i.i86.cleanup_crit_edge, !prof !70

while.end.i.i86.cleanup_crit_edge:                ; preds = %while.end.i.i86
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.end.i.i86.do.end17.i.i87_crit_edge:         ; preds = %while.end.i.i86
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end17.i.i87

do.end17.i.i87:                                   ; preds = %while.end.i.i86.do.end17.i.i87_crit_edge, %land.rhs.i.i81.do.end17.i.i87_crit_edge
  %150 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %151, ptr noundef nonnull @.str.15, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end17.i.i87, %while.end.i.i86.cleanup_crit_edge, %do.end.i.i84.cleanup_crit_edge, %do.end.i69, %vt8500_pwm_config.exit.cleanup_crit_edge, %if.then206.i, %do.end.i, %if.then16, %if.then14.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then16 ], [ 0, %if.then14.cleanup_crit_edge ], [ 0, %vt8500_pwm_config.exit.cleanup_crit_edge ], [ %call.i67, %do.end.i69 ], [ 0, %while.end.i.i86.cleanup_crit_edge ], [ 0, %do.end17.i.i87 ], [ -22, %if.then206.i ], [ %call.i, %do.end.i ], [ 0, %do.end.i.i84.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vt8500_pwm_disable(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %pwm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.vt8500_chip, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %hwpwm = getelementptr inbounds %struct.pwm_device, ptr %pwm, i32 0, i32 2
  %2 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwpwm, align 8
  %shl = shl i32 %3, 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 %shl
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  %5 = and i32 %4, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %8 = ptrtoint ptr %hwpwm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hwpwm, align 8
  %shl6 = shl i32 %9, 4
  %add.ptr8 = getelementptr i8, ptr %7, i32 %shl6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %5) #5, !srcloc !66
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %10 = load i32, ptr @loops_per_jiffy, align 4
  %11 = urem i32 %10, 1000
  %mul1.i = sub i32 %10, %11
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr24.i = getelementptr i8, ptr %13, i32 64
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %15 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not26.i = icmp eq i32 %15, 0
  br i1 %tobool.not26.i, label %while.end.i, label %entry.land.rhs.i_crit_edge

entry.land.rhs.i_crit_edge:                       ; preds = %entry
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %do.end.i.land.rhs.i_crit_edge, %entry.land.rhs.i_crit_edge
  %loops.027.i = phi i32 [ %dec.i, %do.end.i.land.rhs.i_crit_edge ], [ %mul1.i, %entry.land.rhs.i_crit_edge ]
  %dec.i = add i32 %loops.027.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool4.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool4.not.i, label %land.rhs.i.do.end17.i_crit_edge, label %do.end.i

land.rhs.i.do.end17.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end17.i

do.end.i:                                         ; preds = %land.rhs.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !69
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 64
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %19 = and i32 %18, 16777216
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %do.end.i.vt8500_pwm_busy_wait.exit_crit_edge, label %do.end.i.land.rhs.i_crit_edge

do.end.i.land.rhs.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

do.end.i.vt8500_pwm_busy_wait.exit_crit_edge:     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vt8500_pwm_busy_wait.exit

while.end.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul1.i)
  %tobool11.not.i = icmp eq i32 %mul1.i, 0
  br i1 %tobool11.not.i, label %while.end.i.do.end17.i_crit_edge, label %while.end.i.vt8500_pwm_busy_wait.exit_crit_edge, !prof !70

while.end.i.vt8500_pwm_busy_wait.exit_crit_edge:  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vt8500_pwm_busy_wait.exit

while.end.i.do.end17.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end17.i

do.end17.i:                                       ; preds = %while.end.i.do.end17.i_crit_edge, %land.rhs.i.do.end17.i_crit_edge
  %20 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.15, i32 noundef 1) #8
  br label %vt8500_pwm_busy_wait.exit

vt8500_pwm_busy_wait.exit:                        ; preds = %do.end17.i, %while.end.i.vt8500_pwm_busy_wait.exit_crit_edge, %do.end.i.vt8500_pwm_busy_wait.exit_crit_edge
  %clk = getelementptr inbounds %struct.vt8500_chip, ptr %chip, i32 0, i32 2
  %22 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %23) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwmchip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__initcall__kmod_pwm_vt8500__183_301_vt8500_pwm_driver_init6, !1, !"__initcall__kmod_pwm_vt8500__183_301_vt8500_pwm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pwm/pwm-vt8500.c", i32 301, i32 1}
!2 = !{ptr @__exitcall_vt8500_pwm_driver_exit, !1, !"__exitcall_vt8500_pwm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description184, !4, !"__UNIQUE_ID_description184", i1 false, i1 false}
!4 = !{!"../drivers/pwm/pwm-vt8500.c", i32 303, i32 1}
!5 = !{ptr @__UNIQUE_ID_author185, !6, !"__UNIQUE_ID_author185", i1 false, i1 false}
!6 = !{!"../drivers/pwm/pwm-vt8500.c", i32 304, i32 1}
!7 = !{ptr @__UNIQUE_ID_file186, !8, !"__UNIQUE_ID_file186", i1 false, i1 false}
!8 = !{!"../drivers/pwm/pwm-vt8500.c", i32 305, i32 1}
!9 = !{ptr @__UNIQUE_ID_license187, !8, !"__UNIQUE_ID_license187", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pwm/pwm-vt8500.c", i32 297, i32 11}
!12 = !{ptr @vt8500_pwm_driver, !13, !"vt8500_pwm_driver", i1 false, i1 false}
!13 = !{!"../drivers/pwm/pwm-vt8500.c", i32 293, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pwm/pwm-vt8500.c", i32 243, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @vt8500_pwm_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @vt8500_pwm_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pwm/pwm-vt8500.c", i32 257, i32 3}
!24 = !{ptr @vt8500_pwm_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @vt8500_pwm_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pwm/pwm-vt8500.c", i32 267, i32 3}
!28 = !{ptr @vt8500_pwm_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @vt8500_pwm_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pwm/pwm-vt8500.c", i32 273, i32 3}
!32 = !{ptr @vt8500_pwm_probe._entry.12, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @vt8500_pwm_probe._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @vt8500_pwm_ops, !35, !"vt8500_pwm_ops", i1 false, i1 false}
!35 = !{!"../drivers/pwm/pwm-vt8500.c", i32 225, i32 29}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pwm/pwm-vt8500.c", i32 68, i32 3}
!38 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @vt8500_pwm_busy_wait._entry, !37, !"_entry", i1 false, i1 false}
!41 = !{ptr @vt8500_pwm_busy_wait._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pwm/pwm-vt8500.c", i32 83, i32 3}
!44 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @vt8500_pwm_config._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @vt8500_pwm_config._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/pwm/pwm-vt8500.c", i32 134, i32 3}
!49 = !{ptr @vt8500_pwm_enable._entry, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @vt8500_pwm_enable._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @vt8500_pwm_dt_ids, !52, !"vt8500_pwm_dt_ids", i1 false, i1 false}
!52 = !{!"../drivers/pwm/pwm-vt8500.c", i32 230, i32 34}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{i8 0, i8 2}
!63 = !{i64 5182297}
!64 = !{i64 2152994053}
!65 = !{i64 2152994492}
!66 = !{i64 5181879}
!67 = !{i64 2152968595}
!68 = !{i64 2152968870}
!69 = !{i64 2152968712}
!70 = !{!"branch_weights", i32 1, i32 2000}
!71 = !{i64 706322, i64 706349, i64 706371, i64 706399}
!72 = !{i64 706730, i64 706757, i64 706790, i64 706811, i64 706838, i64 706864}
!73 = !{i64 2152978877}
!74 = !{i64 2152979451}
!75 = !{i64 2152980007}
!76 = !{i64 2152980920}
!77 = !{i64 2152981277}
!78 = !{i64 2152985004}
!79 = !{i64 2152985361}
!80 = !{i64 2152991559}
!81 = !{i64 2152991916}
