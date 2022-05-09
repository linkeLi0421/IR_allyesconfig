; ModuleID = '/llk/IR_all_yes/drivers/input/misc/twl6040-vibra.c_pt.bc'
source_filename = "../drivers/input/misc/twl6040-vibra.c"
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
%struct.vibra_info = type { ptr, ptr, %struct.work_struct, i32, i8, i32, i32, i32, i32, i32, i32, i32, [2 x %struct.regulator_bulk_data], ptr }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.twl6040 = type { ptr, ptr, ptr, [2 x %struct.regulator_bulk_data], ptr, ptr, %struct.mutex, %struct.mutex, [4 x %struct.mfd_cell], %struct.completion, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon.86 }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon.86 = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, ptr }
%struct.ff_envelope = type { i16, i16, i16, i16 }

@__initcall__kmod_twl6040_vibra__288_360_twl6040_vibra_driver_init6 = internal global ptr @twl6040_vibra_driver_init, section ".initcall6.init", align 4
@twl6040_vibra_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @twl6040_vibra_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @twl6040_vibra_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_twl6040_vibra_driver_exit = internal global ptr @twl6040_vibra_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias289 = internal constant [43 x i8] c"twl6040_vibra.alias=platform:twl6040-vibra\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [47 x i8] c"twl6040_vibra.description=TWL6040 Vibra driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [52 x i8] c"twl6040_vibra.file=drivers/input/misc/twl6040-vibra\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [26 x i8] c"twl6040_vibra.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [72 x i8] c"twl6040_vibra.author=Jorge Eduardo Candelaria <jorge.candelaria@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [61 x i8] c"twl6040_vibra.author=Misael Lopez Cruz <misael.lopez@ti.com>\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"twl6040-vibra\00", [18 x i8] zeroinitializer }, align 32
@twl6040_vibra_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @twl6040_vibra_suspend, ptr null, ptr @twl6040_vibra_suspend, ptr null, ptr @twl6040_vibra_suspend, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vibra\00", [26 x i8] zeroinitializer }, align 32
@twl6040_vibra_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 240, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"parent of node is missing?\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"twl6040_vibra_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/input/misc/twl6040-vibra.c\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@twl6040_vibra_probe._entry_ptr = internal global ptr @twl6040_vibra_probe._entry, section ".printk_index", align 4
@twl6040_vibra_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 247, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"couldn't allocate memory\0A\00", [38 x i8] zeroinitializer }, align 32
@twl6040_vibra_probe._entry_ptr.9 = internal global ptr @twl6040_vibra_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ti,vibldrv-res\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ti,vibrdrv-res\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ti,viblmotor-res\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ti,vibrmotor-res\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti,vddvibl-uV\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti,vddvibr-uV\00", [18 x i8] zeroinitializer }, align 32
@twl6040_vibra_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 270, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"invalid vibra driver/motor resistance\0A\00", [57 x i8] zeroinitializer }, align 32
@twl6040_vibra_probe._entry_ptr.18 = internal global ptr @twl6040_vibra_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"twl6040_irq_vib\00", [16 x i8] zeroinitializer }, align 32
@twl6040_vibra_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 283, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"VIB IRQ request failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@twl6040_vibra_probe._entry_ptr.22 = internal global ptr @twl6040_vibra_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vddvibl\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vddvibr\00", [24 x i8] zeroinitializer }, align 32
@twl6040_vibra_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 297, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"couldn't get regulators %d\0A\00", [36 x i8] zeroinitializer }, align 32
@twl6040_vibra_probe._entry_ptr.27 = internal global ptr @twl6040_vibra_probe._entry.25, section ".printk_index", align 4
@twl6040_vibra_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.3, ptr @.str.4, i32 306, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to set VDDVIBL volt %d\0A\00", [33 x i8] zeroinitializer }, align 32
@twl6040_vibra_probe._entry_ptr.30 = internal global ptr @twl6040_vibra_probe._entry.28, section ".printk_index", align 4
@twl6040_vibra_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.3, ptr @.str.4, i32 316, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to set VDDVIBR volt %d\0A\00", [33 x i8] zeroinitializer }, align 32
@twl6040_vibra_probe._entry_ptr.33 = internal global ptr @twl6040_vibra_probe._entry.31, section ".printk_index", align 4
@twl6040_vibra_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&info->play_work)\00", [60 x i8] zeroinitializer }, align 32
@twl6040_vibra_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.3, ptr @.str.4, i32 325, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"couldn't allocate input device\0A\00", [32 x i8] zeroinitializer }, align 32
@twl6040_vibra_probe._entry_ptr.37 = internal global ptr @twl6040_vibra_probe._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"twl6040:vibrator\00", [47 x i8] zeroinitializer }, align 32
@twl6040_vibra_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.3, ptr @.str.4, i32 338, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"couldn't register vibrator to FF\0A\00", [62 x i8] zeroinitializer }, align 32
@twl6040_vibra_probe._entry_ptr.41 = internal global ptr @twl6040_vibra_probe._entry.39, section ".printk_index", align 4
@twl6040_vibra_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.3, ptr @.str.4, i32 344, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"couldn't register input device\0A\00", [32 x i8] zeroinitializer }, align 32
@twl6040_vibra_probe._entry_ptr.44 = internal global ptr @twl6040_vibra_probe._entry.42, section ".printk_index", align 4
@twl6040_vib_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.4, i32 61, ptr @.str.47, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Left Vibrator overcurrent detected\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"twl6040_vib_irq_handler\00", [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@twl6040_vib_irq_handler._entry_ptr = internal global ptr @twl6040_vib_irq_handler._entry, section ".printk_index", align 4
@twl6040_vib_irq_handler._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.46, ptr @.str.4, i32 66, ptr @.str.47, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Right Vibrator overcurrent detected\0A\00", [59 x i8] zeroinitializer }, align 32
@twl6040_vib_irq_handler._entry_ptr.50 = internal global ptr @twl6040_vib_irq_handler._entry.48, section ".printk_index", align 4
@vibra_play_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.4, i32 175, ptr @.str.53, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Vibra is configured for audio\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vibra_play_work\00", [16 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@vibra_play_work._entry_ptr = internal global ptr @vibra_play_work._entry, section ".printk_index", align 4
@twl6040_vibra_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.4, i32 81, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enable regulators %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"twl6040_vibra_enable\00", [43 x i8] zeroinitializer }, align 32
@twl6040_vibra_enable._entry_ptr = internal global ptr @twl6040_vibra_enable._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.56 = private unnamed_addr constant [21 x i8] c"twl6040_vibra_driver\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 353, i32 31 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 356, i32 11 }
@___asan_gen_.62 = private unnamed_addr constant [21 x i8] c"twl6040_vibra_pm_ops\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 226, i32 8 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 238, i32 8 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 240, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 247, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 255, i32 42 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 257, i32 42 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 259, i32 42 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 261, i32 42 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 263, i32 42 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 264, i32 42 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 270, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 281, i32 8 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 283, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 287, i32 29 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 288, i32 29 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 297, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 305, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 315, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 321, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 325, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 331, i32 26 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 338, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 344, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 61, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 66, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 175, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.213 = private constant [38 x i8] c"../drivers/input/misc/twl6040-vibra.c\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 81, i32 3 }
@llvm.compiler.used = appending global [76 x ptr] [ptr @__UNIQUE_ID_alias289, ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_twl6040_vibra_driver_exit, ptr @__initcall__kmod_twl6040_vibra__288_360_twl6040_vibra_driver_init6, ptr @twl6040_vib_irq_handler._entry, ptr @twl6040_vib_irq_handler._entry.48, ptr @twl6040_vib_irq_handler._entry_ptr, ptr @twl6040_vib_irq_handler._entry_ptr.50, ptr @twl6040_vibra_driver_exit, ptr @twl6040_vibra_enable._entry, ptr @twl6040_vibra_enable._entry_ptr, ptr @twl6040_vibra_probe._entry, ptr @twl6040_vibra_probe._entry.16, ptr @twl6040_vibra_probe._entry.20, ptr @twl6040_vibra_probe._entry.25, ptr @twl6040_vibra_probe._entry.28, ptr @twl6040_vibra_probe._entry.31, ptr @twl6040_vibra_probe._entry.35, ptr @twl6040_vibra_probe._entry.39, ptr @twl6040_vibra_probe._entry.42, ptr @twl6040_vibra_probe._entry.7, ptr @twl6040_vibra_probe._entry_ptr, ptr @twl6040_vibra_probe._entry_ptr.18, ptr @twl6040_vibra_probe._entry_ptr.22, ptr @twl6040_vibra_probe._entry_ptr.27, ptr @twl6040_vibra_probe._entry_ptr.30, ptr @twl6040_vibra_probe._entry_ptr.33, ptr @twl6040_vibra_probe._entry_ptr.37, ptr @twl6040_vibra_probe._entry_ptr.41, ptr @twl6040_vibra_probe._entry_ptr.44, ptr @twl6040_vibra_probe._entry_ptr.9, ptr @vibra_play_work._entry, ptr @vibra_play_work._entry_ptr, ptr @twl6040_vibra_driver, ptr @.str, ptr @twl6040_vibra_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @twl6040_vibra_probe.__key, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6040_vibra_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6040_vibra_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6040_vibra_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6040_vibra_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6040_vibra_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6040_vibra_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6040_vibra_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6040_vibra_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6040_vibra_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6040_vibra_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6040_vibra_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6040_vibra_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6040_vibra_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6040_vib_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6040_vib_irq_handler._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vibra_play_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6040_vibra_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6040_vibra_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @twl6040_vibra_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @twl6040_vibra_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @twl6040_vibra_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6040_vibra_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %vddvibl_uV = alloca i32, align 4
  %vddvibr_uV = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vddvibl_uV) #6
  %2 = ptrtoint ptr %vddvibl_uV to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %vddvibl_uV, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vddvibr_uV) #6
  %3 = ptrtoint ptr %vddvibr_uV to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %vddvibr_uV, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_child_by_name(ptr noundef %5, ptr noundef nonnull @.str.1) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 116, i32 noundef 3520) #6
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @of_node_put(ptr noundef nonnull %call) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %call.i, align 4
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i, align 4
  %twl6040 = getelementptr inbounds %struct.vibra_info, ptr %call.i, i32 0, i32 13
  %11 = ptrtoint ptr %twl6040 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %twl6040, align 4
  %vibldrv_res = getelementptr inbounds %struct.vibra_info, ptr %call.i, i32 0, i32 8
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call, ptr noundef nonnull @.str.10, ptr noundef %vibldrv_res, i32 noundef 1, i32 noundef 0) #6
  %vibrdrv_res = getelementptr inbounds %struct.vibra_info, ptr %call.i, i32 0, i32 9
  %call.i.i214 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call, ptr noundef nonnull @.str.11, ptr noundef %vibrdrv_res, i32 noundef 1, i32 noundef 0) #6
  %viblmotor_res = getelementptr inbounds %struct.vibra_info, ptr %call.i, i32 0, i32 10
  %call.i.i215 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call, ptr noundef nonnull @.str.12, ptr noundef %viblmotor_res, i32 noundef 1, i32 noundef 0) #6
  %vibrmotor_res = getelementptr inbounds %struct.vibra_info, ptr %call.i, i32 0, i32 11
  %call.i.i216 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call, ptr noundef nonnull @.str.13, ptr noundef %vibrmotor_res, i32 noundef 1, i32 noundef 0) #6
  %call.i.i217 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call, ptr noundef nonnull @.str.14, ptr noundef nonnull %vddvibl_uV, i32 noundef 1, i32 noundef 0) #6
  %call.i.i218 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call, ptr noundef nonnull @.str.15, ptr noundef nonnull %vddvibr_uV, i32 noundef 1, i32 noundef 0) #6
  call void @of_node_put(ptr noundef nonnull %call) #6
  %12 = ptrtoint ptr %vibldrv_res to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vibldrv_res, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool23.not = icmp eq i32 %13, 0
  br i1 %tobool23.not, label %land.lhs.true, label %if.end10.lor.lhs.false_crit_edge

if.end10.lor.lhs.false_crit_edge:                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end10
  %14 = ptrtoint ptr %viblmotor_res to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %viblmotor_res, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool25.not = icmp eq i32 %15, 0
  br i1 %tobool25.not, label %land.lhs.true.do.end34_crit_edge, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

land.lhs.true.do.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end34

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %if.end10.lor.lhs.false_crit_edge
  %16 = ptrtoint ptr %vibrdrv_res to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vibrdrv_res, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool27.not = icmp eq i32 %17, 0
  br i1 %tobool27.not, label %land.lhs.true28, label %lor.lhs.false.if.end36_crit_edge

lor.lhs.false.if.end36_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

land.lhs.true28:                                  ; preds = %lor.lhs.false
  %18 = ptrtoint ptr %vibrmotor_res to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vibrmotor_res, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool30.not = icmp eq i32 %19, 0
  br i1 %tobool30.not, label %land.lhs.true28.do.end34_crit_edge, label %land.lhs.true28.if.end36_crit_edge

land.lhs.true28.if.end36_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

land.lhs.true28.do.end34_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end34

do.end34:                                         ; preds = %land.lhs.true28.do.end34_crit_edge, %land.lhs.true.do.end34_crit_edge
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.17) #9
  br label %cleanup

if.end36:                                         ; preds = %land.lhs.true28.if.end36_crit_edge, %lor.lhs.false.if.end36_crit_edge
  %call37 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %irq = getelementptr inbounds %struct.vibra_info, ptr %call.i, i32 0, i32 3
  %22 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call37, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp = icmp slt i32 %call37, 0
  br i1 %cmp, label %if.end36.cleanup_crit_edge, label %if.end40

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end40:                                         ; preds = %if.end36
  %call43 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call37, ptr noundef null, ptr noundef nonnull @twl6040_vib_irq_handler, i32 noundef 8192, ptr noundef nonnull @.str.19, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end50, label %do.end48

do.end48:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.21, i32 noundef %call43) #9
  br label %cleanup

if.end50:                                         ; preds = %if.end40
  %supplies = getelementptr inbounds %struct.vibra_info, ptr %call.i, i32 0, i32 12
  %25 = ptrtoint ptr %supplies to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.23, ptr %supplies, align 4
  %arrayidx52 = getelementptr %struct.vibra_info, ptr %call.i, i32 0, i32 12, i32 1
  %26 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.24, ptr %arrayidx52, align 4
  %call55 = call i32 @devm_regulator_bulk_get(ptr noundef %1, i32 noundef 2, ptr noundef %supplies) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end62, label %do.end60

do.end60:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.26, i32 noundef %call55) #9
  br label %cleanup

if.end62:                                         ; preds = %if.end50
  %29 = ptrtoint ptr %vddvibl_uV to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vddvibl_uV, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool63.not = icmp eq i32 %30, 0
  br i1 %tobool63.not, label %if.end62.if.end75_crit_edge, label %if.then64

if.end62.if.end75_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75

if.then64:                                        ; preds = %if.end62
  %consumer = getelementptr inbounds %struct.vibra_info, ptr %call.i, i32 0, i32 12, i32 0, i32 1
  %31 = ptrtoint ptr %consumer to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %consumer, align 4
  %call67 = call i32 @regulator_set_voltage(ptr noundef %32, i32 noundef %30, i32 noundef %30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.then64.if.end75_crit_edge, label %do.end72

if.then64.if.end75_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75

do.end72:                                         ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.29, i32 noundef %call67) #9
  br label %cleanup

if.end75:                                         ; preds = %if.then64.if.end75_crit_edge, %if.end62.if.end75_crit_edge
  %35 = ptrtoint ptr %vddvibr_uV to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vddvibr_uV, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool76.not = icmp eq i32 %36, 0
  br i1 %tobool76.not, label %if.end75.do.body90_crit_edge, label %if.then77

if.end75.do.body90_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body90

if.then77:                                        ; preds = %if.end75
  %consumer80 = getelementptr %struct.vibra_info, ptr %call.i, i32 0, i32 12, i32 1, i32 1
  %37 = ptrtoint ptr %consumer80 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %consumer80, align 4
  %call81 = call i32 @regulator_set_voltage(ptr noundef %38, i32 noundef %36, i32 noundef %36) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.then77.do.body90_crit_edge, label %do.end86

if.then77.do.body90_crit_edge:                    ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body90

do.end86:                                         ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.32, i32 noundef %call81) #9
  br label %cleanup

do.body90:                                        ; preds = %if.then77.do.body90_crit_edge, %if.end75.do.body90_crit_edge
  %play_work = getelementptr inbounds %struct.vibra_info, ptr %call.i, i32 0, i32 2
  call void @__init_work(ptr noundef %play_work, i32 noundef 0) #6
  %41 = ptrtoint ptr %play_work to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -64, ptr %play_work, align 4
  %lockdep_map = getelementptr inbounds %struct.vibra_info, ptr %call.i, i32 0, i32 2, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.34, ptr noundef nonnull @twl6040_vibra_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry94 = getelementptr inbounds %struct.vibra_info, ptr %call.i, i32 0, i32 2, i32 1
  %42 = ptrtoint ptr %entry94 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %entry94, ptr %entry94, align 4
  %prev.i = getelementptr inbounds %struct.vibra_info, ptr %call.i, i32 0, i32 2, i32 1, i32 1
  %43 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %entry94, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.vibra_info, ptr %call.i, i32 0, i32 2, i32 2
  %44 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @vibra_play_work, ptr %func, align 4
  %call99 = call ptr @devm_input_allocate_device(ptr noundef %dev) #6
  %input_dev = getelementptr inbounds %struct.vibra_info, ptr %call.i, i32 0, i32 1
  %45 = ptrtoint ptr %input_dev to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call99, ptr %input_dev, align 4
  %tobool101.not = icmp eq ptr %call99, null
  br i1 %tobool101.not, label %do.end105, label %if.end107

do.end105:                                        ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.36) #9
  br label %cleanup

if.end107:                                        ; preds = %do.body90
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call99, i32 0, i32 40, i32 8
  %48 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %49 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %input_dev, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.38, ptr %50, align 8
  %52 = load ptr, ptr %input_dev, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %52, i32 0, i32 3, i32 3
  %53 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 1, ptr %version, align 2
  %54 = load ptr, ptr %input_dev, align 4
  %close = getelementptr inbounds %struct.input_dev, ptr %54, i32 0, i32 32
  %55 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @twl6040_vibra_close, ptr %close, align 4
  %56 = load ptr, ptr %input_dev, align 4
  %add.ptr.i = getelementptr %struct.input_dev, ptr %56, i32 0, i32 12, i32 2
  %57 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %58, 65536
  store i32 %or.i, ptr %add.ptr.i, align 4
  %59 = load ptr, ptr %input_dev, align 4
  %call115 = call i32 @input_ff_create_memless(ptr noundef %59, ptr noundef null, ptr noundef nonnull @vibra_play) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.end122, label %do.end120

do.end120:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.40) #9
  br label %cleanup

if.end122:                                        ; preds = %if.end107
  %62 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %input_dev, align 4
  %call124 = call i32 @input_register_device(ptr noundef %63) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.end131, label %do.end129

do.end129:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.43) #9
  br label %cleanup

if.end131:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i219 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %66 = ptrtoint ptr %driver_data.i.i219 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call.i, ptr %driver_data.i.i219, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end131, %do.end129, %do.end120, %do.end105, %do.end86, %do.end72, %do.end60, %do.end48, %if.end36.cleanup_crit_edge, %do.end34, %if.then5, %do.end
  %retval.0 = phi i32 [ %call43, %do.end48 ], [ %call55, %do.end60 ], [ %call67, %do.end72 ], [ %call81, %do.end86 ], [ %call115, %do.end120 ], [ %call124, %do.end129 ], [ 0, %if.end131 ], [ -12, %do.end105 ], [ -22, %do.end34 ], [ -12, %if.then5 ], [ -22, %do.end ], [ -22, %if.end36.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vddvibr_uV) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vddvibl_uV) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6040_vib_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %twl60401 = getelementptr inbounds %struct.vibra_info, ptr %data, i32 0, i32 13
  %0 = ptrtoint ptr %twl60401 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %twl60401, align 4
  %call = tail call i32 @twl6040_reg_read(ptr noundef %1, i32 noundef 46) #6
  %and = and i32 %call, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.45) #9
  %call3 = tail call i32 @twl6040_clear_bits(ptr noundef %1, i32 noundef 24, i8 noundef zeroext 1) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %and5 = and i32 %call, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.end13_crit_edge, label %do.end10

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.49) #9
  %call12 = tail call i32 @twl6040_clear_bits(ptr noundef %1, i32 noundef 26, i8 noundef zeroext 1) #6
  br label %if.end13

if.end13:                                         ; preds = %do.end10, %if.end.if.end13_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vibra_play_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -8
  %twl6040 = getelementptr i8, ptr %work, i32 104
  %0 = ptrtoint ptr %twl6040 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %twl6040, align 4
  %call = tail call i32 @twl6040_get_vibralr_status(ptr noundef %1) #6
  %and = and i32 %call, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.51) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %weak_speed = getelementptr i8, ptr %work, i32 52
  %4 = ptrtoint ptr %weak_speed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %weak_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %lor.lhs.false, label %if.end.if.then3_crit_edge

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

lor.lhs.false:                                    ; preds = %if.end
  %strong_speed = getelementptr i8, ptr %work, i32 56
  %6 = ptrtoint ptr %strong_speed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %strong_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %if.else, label %lor.lhs.false.if.then3_crit_edge

lor.lhs.false.if.then3_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

if.then3:                                         ; preds = %lor.lhs.false.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %enabled = getelementptr i8, ptr %work, i32 48
  %8 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %enabled, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %if.then5, label %if.then3.if.end6_crit_edge

if.then3.if.end6_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then5:                                         ; preds = %if.then3
  %10 = ptrtoint ptr %twl6040 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %twl6040, align 4
  %supplies.i = getelementptr i8, ptr %work, i32 80
  %call.i = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %supplies.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.54, i32 noundef %call.i) #9
  br label %if.end6

if.end.i:                                         ; preds = %if.then5
  %14 = ptrtoint ptr %twl6040 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %twl6040, align 4
  %call3.i = tail call i32 @twl6040_power(ptr noundef %15, i32 noundef 1) #6
  %rev.i.i = getelementptr inbounds %struct.twl6040, ptr %11, i32 0, i32 12
  %16 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rev.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp.i = icmp slt i32 %17, 2
  br i1 %cmp.i, label %if.then5.i, label %if.end.i.if.end8.i_crit_edge

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i = tail call i32 @twl6040_reg_write(ptr noundef %11, i32 noundef 24, i8 noundef zeroext 5) #6
  %call7.i = tail call i32 @twl6040_reg_write(ptr noundef %11, i32 noundef 26, i8 noundef zeroext 5) #6
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 3500, i32 noundef 2) #6
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then5.i, %if.end.i.if.end8.i_crit_edge
  %call9.i = tail call i32 @twl6040_reg_write(ptr noundef %11, i32 noundef 24, i8 noundef zeroext 1) #6
  %call10.i = tail call i32 @twl6040_reg_write(ptr noundef %11, i32 noundef 26, i8 noundef zeroext 1) #6
  %18 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %enabled, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end8.i, %do.end.i, %if.then3.if.end6_crit_edge
  %19 = ptrtoint ptr %twl6040 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %twl6040, align 4
  %consumer.i = getelementptr i8, ptr %work, i32 84
  %21 = ptrtoint ptr %consumer.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %consumer.i, align 4
  %call.i22 = tail call i32 @regulator_get_voltage(ptr noundef %22) #6
  %div.i = sdiv i32 %call.i22, 1000
  %vibldrv_res.i = getelementptr i8, ptr %work, i32 64
  %23 = ptrtoint ptr %vibldrv_res.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vibldrv_res.i, align 4
  %viblmotor_res.i = getelementptr i8, ptr %work, i32 72
  %25 = ptrtoint ptr %viblmotor_res.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %viblmotor_res.i, align 4
  %27 = ptrtoint ptr %weak_speed to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %weak_speed, align 4
  %direction.i = getelementptr i8, ptr %work, i32 60
  %29 = ptrtoint ptr %direction.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %direction.i, align 4
  %mul.i.i = mul nsw i32 %div.i, 85
  %mul1.i.i = mul i32 %mul.i.i, %26
  %add.i.i = add i32 %26, %24
  %mul2.i.i = mul i32 %add.i.i, 100
  %div.i.i = sdiv i32 %mul1.i.i, %mul2.i.i
  %div3.i.i = sdiv i32 %div.i.i, 50
  %31 = tail call i32 @llvm.smin.i32(i32 %div3.i.i, i32 100) #6
  %mul4.i.i = mul i32 %31, %28
  %div5.i.i = sdiv i32 %mul4.i.i, 65535
  %mul7.i.i = mul i32 %div5.i.i, %30
  %conv8.i.i = trunc i32 %mul7.i.i to i8
  %consumer5.i = getelementptr i8, ptr %work, i32 96
  %32 = ptrtoint ptr %consumer5.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %consumer5.i, align 4
  %call6.i23 = tail call i32 @regulator_get_voltage(ptr noundef %33) #6
  %div7.i = sdiv i32 %call6.i23, 1000
  %vibrdrv_res.i = getelementptr i8, ptr %work, i32 68
  %34 = ptrtoint ptr %vibrdrv_res.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vibrdrv_res.i, align 4
  %vibrmotor_res.i = getelementptr i8, ptr %work, i32 76
  %36 = ptrtoint ptr %vibrmotor_res.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vibrmotor_res.i, align 4
  %strong_speed.i = getelementptr i8, ptr %work, i32 56
  %38 = ptrtoint ptr %strong_speed.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %strong_speed.i, align 4
  %40 = ptrtoint ptr %direction.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %direction.i, align 4
  %mul.i24.i = mul nsw i32 %div7.i, 85
  %mul1.i25.i = mul i32 %mul.i24.i, %37
  %add.i26.i = add i32 %37, %35
  %mul2.i27.i = mul i32 %add.i26.i, 100
  %div.i28.i = sdiv i32 %mul1.i25.i, %mul2.i27.i
  %div3.i29.i = sdiv i32 %div.i28.i, 50
  %42 = tail call i32 @llvm.smin.i32(i32 %div3.i29.i, i32 100) #6
  %mul4.i30.i = mul i32 %42, %39
  %div5.i31.i = sdiv i32 %mul4.i30.i, 65535
  %mul7.i32.i = mul i32 %div5.i31.i, %41
  %conv8.i33.i = trunc i32 %mul7.i32.i to i8
  %call10.i24 = tail call i32 @twl6040_reg_write(ptr noundef %20, i32 noundef 25, i8 noundef zeroext %conv8.i.i) #6
  %call11.i = tail call i32 @twl6040_reg_write(ptr noundef %20, i32 noundef 27, i8 noundef zeroext %conv8.i33.i) #6
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  %enabled7 = getelementptr i8, ptr %work, i32 48
  %43 = ptrtoint ptr %enabled7 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %enabled7, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool8.not = icmp eq i8 %44, 0
  br i1 %tobool8.not, label %if.else.cleanup_crit_edge, label %if.then9

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %twl6040 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %twl6040, align 4
  %call.i26 = tail call i32 @twl6040_reg_write(ptr noundef %46, i32 noundef 24, i8 noundef zeroext 0) #6
  %call2.i = tail call i32 @twl6040_reg_write(ptr noundef %46, i32 noundef 26, i8 noundef zeroext 0) #6
  %47 = ptrtoint ptr %twl6040 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %twl6040, align 4
  %call4.i = tail call i32 @twl6040_power(ptr noundef %48, i32 noundef 0) #6
  %supplies.i27 = getelementptr i8, ptr %work, i32 80
  %call5.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies.i27) #6
  %49 = ptrtoint ptr %enabled7 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %enabled7, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.else.cleanup_crit_edge, %if.end6, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @twl6040_vibra_close(ptr nocapture noundef readonly %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %play_work = getelementptr inbounds %struct.vibra_info, ptr %1, i32 0, i32 2
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %play_work) #6
  %enabled = getelementptr inbounds %struct.vibra_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %twl60401.i = getelementptr inbounds %struct.vibra_info, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %twl60401.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %twl60401.i, align 4
  %call.i = tail call i32 @twl6040_reg_write(ptr noundef %5, i32 noundef 24, i8 noundef zeroext 0) #6
  %call2.i = tail call i32 @twl6040_reg_write(ptr noundef %5, i32 noundef 26, i8 noundef zeroext 0) #6
  %6 = ptrtoint ptr %twl60401.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %twl60401.i, align 4
  %call4.i = tail call i32 @twl6040_power(ptr noundef %7, i32 noundef 0) #6
  %supplies.i = getelementptr inbounds %struct.vibra_info, ptr %1, i32 0, i32 12
  %call5.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies.i) #6
  %8 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %enabled, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_ff_create_memless(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vibra_play(ptr nocapture noundef readonly %input, ptr nocapture noundef readnone %data, ptr nocapture noundef readonly %effect) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %u = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %weak_magnitude = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %2 = ptrtoint ptr %weak_magnitude to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %weak_magnitude, align 2
  %conv = zext i16 %3 to i32
  %weak_speed = getelementptr inbounds %struct.vibra_info, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %weak_speed to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %weak_speed, align 4
  %5 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %u, align 4
  %conv2 = zext i16 %6 to i32
  %strong_speed = getelementptr inbounds %struct.vibra_info, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %strong_speed to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv2, ptr %strong_speed, align 4
  %direction = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 2
  %8 = ptrtoint ptr %direction to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %direction, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %9)
  %cmp = icmp sgt i16 %9, -1
  %cond = select i1 %cmp, i32 1, i32 -1
  %direction5 = getelementptr inbounds %struct.vibra_info, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %direction5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %cond, ptr %direction5, align 4
  %play_work = getelementptr inbounds %struct.vibra_info, ptr %1, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %11 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %play_work) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl6040_reg_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl6040_clear_bits(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl6040_get_vibralr_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl6040_power(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl6040_reg_write(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6040_vibra_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %play_work = getelementptr inbounds %struct.vibra_info, ptr %1, i32 0, i32 2
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %play_work) #6
  %enabled = getelementptr inbounds %struct.vibra_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %twl60401.i = getelementptr inbounds %struct.vibra_info, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %twl60401.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %twl60401.i, align 4
  %call.i = tail call i32 @twl6040_reg_write(ptr noundef %5, i32 noundef 24, i8 noundef zeroext 0) #6
  %call2.i = tail call i32 @twl6040_reg_write(ptr noundef %5, i32 noundef 26, i8 noundef zeroext 0) #6
  %6 = ptrtoint ptr %twl60401.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %twl60401.i, align 4
  %call4.i = tail call i32 @twl6040_power(ptr noundef %7, i32 noundef 0) #6
  %supplies.i = getelementptr inbounds %struct.vibra_info, ptr %1, i32 0, i32 12
  %call5.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies.i) #6
  %8 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %enabled, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !36, !38, !40, !42, !44, !46, !47, !48, !50, !52, !53, !54, !56, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !75, !76, !77, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !102, !103, !105, !106, !107, !108}
!llvm.module.flags = !{!110, !111, !112, !113, !114, !115, !116, !117}
!llvm.ident = !{!118}

!0 = !{ptr @__initcall__kmod_twl6040_vibra__288_360_twl6040_vibra_driver_init6, !1, !"__initcall__kmod_twl6040_vibra__288_360_twl6040_vibra_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/misc/twl6040-vibra.c", i32 360, i32 1}
!2 = !{ptr @__exitcall_twl6040_vibra_driver_exit, !1, !"__exitcall_twl6040_vibra_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias289, !4, !"__UNIQUE_ID_alias289", i1 false, i1 false}
!4 = !{!"../drivers/input/misc/twl6040-vibra.c", i32 362, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/input/misc/twl6040-vibra.c", i32 363, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/input/misc/twl6040-vibra.c", i32 364, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_author293, !11, !"__UNIQUE_ID_author293", i1 false, i1 false}
!11 = !{!"../drivers/input/misc/twl6040-vibra.c", i32 365, i32 1}
!12 = !{ptr @__UNIQUE_ID_author294, !13, !"__UNIQUE_ID_author294", i1 false, i1 false}
!13 = !{!"../drivers/input/misc/twl6040-vibra.c", i32 366, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/misc/twl6040-vibra.c", i32 356, i32 11}
!16 = !{ptr @twl6040_vibra_driver, !17, !"twl6040_vibra_driver", i1 false, i1 false}
!17 = !{!"../drivers/input/misc/twl6040-vibra.c", i32 353, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/input/misc/twl6040-vibra.c", i32 238, i32 8}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/input/misc/twl6040-vibra.c", i32 240, i32 3}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @twl6040_vibra_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @twl6040_vibra_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/misc/twl6040-vibra.c", i32 247, i32 3}
!30 = !{ptr @twl6040_vibra_probe._entry.7, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @twl6040_vibra_probe._entry_ptr.9, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/misc/twl6040-vibra.c", i32 255, i32 42}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/misc/twl6040-vibra.c", i32 257, i32 42}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/misc/twl6040-vibra.c", i32 259, i32 42}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/misc/twl6040-vibra.c", i32 261, i32 42}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/misc/twl6040-vibra.c", i32 263, i32 42}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/misc/twl6040-vibra.c", i32 264, i32 42}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/misc/twl6040-vibra.c", i32 270, i32 3}
!46 = !{ptr @twl6040_vibra_probe._entry.16, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @twl6040_vibra_probe._entry_ptr.18, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/misc/twl6040-vibra.c", i32 281, i32 8}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/misc/twl6040-vibra.c", i32 283, i32 3}
!52 = !{ptr @twl6040_vibra_probe._entry.20, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @twl6040_vibra_probe._entry_ptr.22, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/misc/twl6040-vibra.c", i32 287, i32 29}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/input/misc/twl6040-vibra.c", i32 288, i32 29}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/input/misc/twl6040-vibra.c", i32 297, i32 3}
!60 = !{ptr @twl6040_vibra_probe._entry.25, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @twl6040_vibra_probe._entry_ptr.27, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/input/misc/twl6040-vibra.c", i32 305, i32 4}
!64 = !{ptr @twl6040_vibra_probe._entry.28, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @twl6040_vibra_probe._entry_ptr.30, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/input/misc/twl6040-vibra.c", i32 315, i32 4}
!68 = !{ptr @twl6040_vibra_probe._entry.31, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @twl6040_vibra_probe._entry_ptr.33, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @twl6040_vibra_probe.__key, !71, !"__key", i1 false, i1 false}
!71 = !{!"../drivers/input/misc/twl6040-vibra.c", i32 321, i32 2}
!72 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/input/misc/twl6040-vibra.c", i32 325, i32 3}
!75 = !{ptr @twl6040_vibra_probe._entry.35, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @twl6040_vibra_probe._entry_ptr.37, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/input/misc/twl6040-vibra.c", i32 331, i32 26}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/input/misc/twl6040-vibra.c", i32 338, i32 3}
!81 = !{ptr @twl6040_vibra_probe._entry.39, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @twl6040_vibra_probe._entry_ptr.41, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/input/misc/twl6040-vibra.c", i32 344, i32 3}
!85 = !{ptr @twl6040_vibra_probe._entry.42, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @twl6040_vibra_probe._entry_ptr.44, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/input/misc/twl6040-vibra.c", i32 61, i32 3}
!89 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.47, !88, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @twl6040_vib_irq_handler._entry, !88, !"_entry", i1 false, i1 false}
!92 = !{ptr @twl6040_vib_irq_handler._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.49, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/input/misc/twl6040-vibra.c", i32 66, i32 3}
!95 = !{ptr @twl6040_vib_irq_handler._entry.48, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @twl6040_vib_irq_handler._entry_ptr.50, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.51, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/input/misc/twl6040-vibra.c", i32 175, i32 3}
!99 = !{ptr @.str.52, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.53, !98, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @vibra_play_work._entry, !98, !"_entry", i1 false, i1 false}
!102 = !{ptr @vibra_play_work._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.54, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/input/misc/twl6040-vibra.c", i32 81, i32 3}
!105 = !{ptr @.str.55, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @twl6040_vibra_enable._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @twl6040_vibra_enable._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @twl6040_vibra_pm_ops, !109, !"twl6040_vibra_pm_ops", i1 false, i1 false}
!109 = !{!"../drivers/input/misc/twl6040-vibra.c", i32 226, i32 8}
!110 = !{i32 1, !"wchar_size", i32 2}
!111 = !{i32 1, !"min_enum_size", i32 4}
!112 = !{i32 8, !"branch-target-enforcement", i32 0}
!113 = !{i32 8, !"sign-return-address", i32 0}
!114 = !{i32 8, !"sign-return-address-all", i32 0}
!115 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!116 = !{i32 7, !"uwtable", i32 1}
!117 = !{i32 7, !"frame-pointer", i32 2}
!118 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!119 = !{i8 0, i8 2}
