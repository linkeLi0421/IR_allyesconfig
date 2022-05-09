; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-mt65xx.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-mt65xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.i2c_spec_values = type { i32, i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mtk_i2c_compatible = type { ptr, ptr, i8, i8 }
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
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
%struct.mtk_i2c = type { %struct.i2c_adapter, ptr, %struct.completion, %struct.i2c_timings, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i16, i32, i32, i32, i16, i16, i16, i8, i8, %struct.mtk_i2c_ac_timing, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_timings = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mtk_i2c_ac_timing = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.i2c_lock_operations = type { ptr, ptr, ptr }

@__initcall__kmod_i2c_mt65xx__309_1457_mtk_i2c_driver_init6 = internal global ptr @mtk_i2c_driver_init, section ".initcall6.init", align 4
@mtk_i2c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mtk_i2c_probe, ptr @mtk_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mtk_i2c_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_i2c_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mtk_i2c_driver_exit = internal global ptr @mtk_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file310 = internal constant [46 x i8] c"i2c_mt65xx.file=drivers/i2c/busses/i2c-mt65xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license311 = internal constant [26 x i8] c"i2c_mt65xx.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description312 = internal constant [47 x i8] c"i2c_mt65xx.description=MediaTek I2C Bus Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author313 = internal constant [57 x i8] c"i2c_mt65xx.author=Xudong Chen <xudong.chen@mediatek.com>\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2c-mt65xx\00", [21 x i8] zeroinitializer }, align 32
@mtk_i2c_of_match = internal constant { [8 x %struct.of_device_id], [384 x i8] } { [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2712-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt2712_compat }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6577-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt6577_compat }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6589-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt6589_compat }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7622-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt7622_compat }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8173_compat }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8183_compat }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8192-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8192_compat }, %struct.of_device_id zeroinitializer], [384 x i8] zeroinitializer }, align 32
@mtk_i2c_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_i2c_suspend_noirq, ptr @mtk_i2c_resume_noirq, ptr @mtk_i2c_suspend_noirq, ptr @mtk_i2c_resume_noirq, ptr @mtk_i2c_suspend_noirq, ptr @mtk_i2c_resume_noirq, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mtk_i2c_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @mtk_i2c_transfer, ptr null, ptr null, ptr null, ptr @mtk_i2c_functionality, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbus\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"main\00", [27 x i8] zeroinitializer }, align 32
@mtk_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1334, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cannot get main clock\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mtk_i2c_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/i2c/busses/i2c-mt65xx.c\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_i2c_probe._entry_ptr = internal global ptr @mtk_i2c_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dma\00", [28 x i8] zeroinitializer }, align 32
@mtk_i2c_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 1340, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cannot get dma clock\0A\00", [42 x i8] zeroinitializer }, align 32
@mtk_i2c_probe._entry_ptr.11 = internal global ptr @mtk_i2c_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"arb\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pmic\00", [27 x i8] zeroinitializer }, align 32
@mtk_i2c_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 1352, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cannot get pmic clock\0A\00", [41 x i8] zeroinitializer }, align 32
@mtk_i2c_probe._entry_ptr.16 = internal global ptr @mtk_i2c_probe._entry.14, section ".printk_index", align 4
@mtk_i2c_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 1362, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to set the speed.\0A\00", [38 x i8] zeroinitializer }, align 32
@mtk_i2c_probe._entry_ptr.19 = internal global ptr @mtk_i2c_probe._entry.17, section ".printk_index", align 4
@mtk_i2c_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.4, ptr @.str.5, i32 1370, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dma_set_mask return error.\0A\00", [36 x i8] zeroinitializer }, align 32
@mtk_i2c_probe._entry_ptr.22 = internal global ptr @mtk_i2c_probe._entry.20, section ".printk_index", align 4
@mtk_i2c_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.4, ptr @.str.5, i32 1377, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"clock enable failed!\0A\00", [42 x i8] zeroinitializer }, align 32
@mtk_i2c_probe._entry_ptr.25 = internal global ptr @mtk_i2c_probe._entry.23, section ".printk_index", align 4
@mtk_i2c_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.4, ptr @.str.5, i32 1388, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Request I2C IRQ %d fail\0A\00", [39 x i8] zeroinitializer }, align 32
@mtk_i2c_probe._entry_ptr.28 = internal global ptr @mtk_i2c_probe._entry.26, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@mtk_i2c_transfer.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.31, ptr @.str.5, ptr @.str.32, i8 1, i8 38, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2c_mt65xx\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mtk_i2c_transfer\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"data buffer is NULL.\0A\00", [42 x i8] zeroinitializer }, align 32
@mtk_i2c_do_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.5, i32 935, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DMA warm reset timeout\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mtk_i2c_do_transfer\00", [44 x i8] zeroinitializer }, align 32
@mtk_i2c_do_transfer._entry_ptr = internal global ptr @mtk_i2c_do_transfer._entry, section ".printk_index", align 4
@mtk_i2c_do_transfer.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.34, ptr @.str.5, ptr @.str.35, i8 1, i8 26, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"addr: %x, transfer timeout\0A\00", [36 x i8] zeroinitializer }, align 32
@mtk_i2c_do_transfer.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.34, ptr @.str.5, ptr @.str.36, i8 1, i8 28, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"addr: %x, transfer ACK error\0A\00", [34 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@i2c_dump_register.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.39, ptr @.str.5, ptr @.str.40, i8 0, i8 -43, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"i2c_dump_register\00", [46 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"SLAVE_ADDR: 0x%x, INTR_MASK: 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@i2c_dump_register.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.39, ptr @.str.5, ptr @.str.41, i8 0, i8 -42, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"INTR_STAT: 0x%x, CONTROL: 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@i2c_dump_register.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.39, ptr @.str.5, ptr @.str.42, i8 0, i8 -41, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"TRANSFER_LEN: 0x%x, TRANSAC_LEN: 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@i2c_dump_register.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.39, ptr @.str.5, ptr @.str.43, i8 0, i8 -41, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DELAY_LEN: 0x%x, HTIMING: 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@i2c_dump_register.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.39, ptr @.str.5, ptr @.str.44, i8 0, i8 -40, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"START: 0x%x, EXT_CONF: 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@i2c_dump_register.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.39, ptr @.str.5, ptr @.str.45, i8 0, i8 -39, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"HS: 0x%x, IO_CONFIG: 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@i2c_dump_register.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.39, ptr @.str.5, ptr @.str.46, i8 0, i8 -38, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"DCM_EN: 0x%x, TRANSFER_LEN_AUX: 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@i2c_dump_register.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.39, ptr @.str.5, ptr @.str.47, i8 0, i8 -38, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"CLOCK_DIV: 0x%x, FIFO_STAT: 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@i2c_dump_register.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.39, ptr @.str.5, ptr @.str.48, i8 0, i8 -37, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"DEBUGCTRL : 0x%x, DEBUGSTAT: 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@mt_i2c_regs_v2 = internal constant { [32 x i16], [32 x i8] } { [32 x i16] [i16 0, i16 4, i16 8, i16 12, i16 16, i16 20, i16 24, i16 28, i16 32, i16 36, i16 40, i16 244, i16 248, i16 56, i16 52, i16 0, i16 48, i16 80, i16 3976, i16 140, i16 0, i16 228, i16 232, i16 68, i16 72, i16 44, i16 0, i16 0, i16 144, i16 0, i16 0, i16 60], [32 x i8] zeroinitializer }, align 32
@i2c_dump_register.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.39, ptr @.str.5, ptr @.str.49, i8 0, i8 -36, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"LTIMING: 0x%x, MULTI_DMA: 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@i2c_dump_register.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.39, ptr @.str.5, ptr @.str.50, i8 0, i8 -35, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\0ADMA_INT_FLAG: 0x%x, DMA_INT_EN: 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@i2c_dump_register.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.39, ptr @.str.5, ptr @.str.51, i8 0, i8 -34, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DMA_EN: 0x%x, DMA_CON: 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@i2c_dump_register.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.39, ptr @.str.5, ptr @.str.52, i8 0, i8 -33, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"DMA_TX_MEM_ADDR: 0x%x, DMA_RX_MEM_ADDR: 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@i2c_dump_register.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.39, ptr @.str.5, ptr @.str.53, i8 0, i8 -33, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DMA_TX_LEN: 0x%x, DMA_RX_LEN: 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@i2c_dump_register.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.39, ptr @.str.5, ptr @.str.54, i8 0, i8 -32, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"DMA_TX_4G_MODE: 0x%x, DMA_RX_4G_MODE: 0x%x\00", [53 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clock-div\00", [22 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mediatek,have-pmic\00", [45 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mediatek,use-push-pull\00", [41 x i8] zeroinitializer }, align 32
@mtk_i2c_calculate_speed.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.59, ptr @.str.5, ptr @.str.60, i8 0, i8 -65, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mtk_i2c_calculate_speed\00", [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unsupported speed (%uhz)\0A\00", [38 x i8] zeroinitializer }, align 32
@standard_mode_spec = internal constant { %struct.i2c_spec_values, [16 x i8] } { %struct.i2c_spec_values { i32 5200, i32 5200, i32 2950, i32 750 }, [16 x i8] zeroinitializer }, align 32
@fast_mode_spec = internal constant { %struct.i2c_spec_values, [16 x i8] } { %struct.i2c_spec_values { i32 1450, i32 750, i32 750, i32 250 }, [16 x i8] zeroinitializer }, align 32
@fast_mode_plus_spec = internal constant { %struct.i2c_spec_values, [16 x i8] } { %struct.i2c_spec_values { i32 510, i32 270, i32 390, i32 60 }, [16 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mt2712_compat = internal constant { %struct.mtk_i2c_compatible, [20 x i8] } { %struct.mtk_i2c_compatible { ptr null, ptr @mt_i2c_regs_v1, i8 120, i8 33 }, [20 x i8] zeroinitializer }, align 32
@mt6577_compat = internal constant { %struct.mtk_i2c_compatible, [20 x i8] } { %struct.mtk_i2c_compatible { ptr @mt6577_i2c_quirks, ptr @mt_i2c_regs_v1, i8 64, i8 32 }, [20 x i8] zeroinitializer }, align 32
@mt6589_compat = internal constant { %struct.mtk_i2c_compatible, [20 x i8] } { %struct.mtk_i2c_compatible { ptr @mt6577_i2c_quirks, ptr @mt_i2c_regs_v1, i8 -128, i8 32 }, [20 x i8] zeroinitializer }, align 32
@mt7622_compat = internal constant { %struct.mtk_i2c_compatible, [20 x i8] } { %struct.mtk_i2c_compatible { ptr @mt7622_i2c_quirks, ptr @mt_i2c_regs_v1, i8 112, i8 32 }, [20 x i8] zeroinitializer }, align 32
@mt8173_compat = internal constant { %struct.mtk_i2c_compatible, [20 x i8] } { %struct.mtk_i2c_compatible { ptr null, ptr @mt_i2c_regs_v1, i8 112, i8 33 }, [20 x i8] zeroinitializer }, align 32
@mt8183_compat = internal constant { %struct.mtk_i2c_compatible, [20 x i8] } { %struct.mtk_i2c_compatible { ptr @mt8183_i2c_quirks, ptr @mt_i2c_regs_v2, i8 62, i8 33 }, [20 x i8] zeroinitializer }, align 32
@mt8192_compat = internal constant { %struct.mtk_i2c_compatible, [20 x i8] } { %struct.mtk_i2c_compatible { ptr @mt8183_i2c_quirks, ptr @mt_i2c_regs_v2, i8 63, i8 36 }, [20 x i8] zeroinitializer }, align 32
@mt_i2c_regs_v1 = internal constant { [32 x i16], [32 x i8] } { [32 x i16] [i16 0, i16 4, i16 8, i16 12, i16 16, i16 20, i16 24, i16 28, i16 32, i16 36, i16 40, i16 48, i16 52, i16 56, i16 64, i16 68, i16 72, i16 80, i16 84, i16 0, i16 96, i16 100, i16 104, i16 108, i16 112, i16 0, i16 116, i16 120, i16 124, i16 128, i16 132, i16 136], [32 x i8] zeroinitializer }, align 32
@mt6577_i2c_quirks = internal constant { %struct.i2c_adapter_quirks, [40 x i8] } { %struct.i2c_adapter_quirks { i64 15, i32 1, i16 255, i16 255, i16 255, i16 31 }, [40 x i8] zeroinitializer }, align 32
@mt7622_i2c_quirks = internal constant { %struct.i2c_adapter_quirks, [40 x i8] } { %struct.i2c_adapter_quirks { i64 0, i32 255, i16 0, i16 0, i16 0, i16 0 }, [40 x i8] zeroinitializer }, align 32
@mt8183_i2c_quirks = internal constant { %struct.i2c_adapter_quirks, [40 x i8] } { %struct.i2c_adapter_quirks { i64 96, i32 0, i16 0, i16 0, i16 0, i16 0 }, [40 x i8] zeroinitializer }, align 32
@mtk_i2c_resume_noirq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.61, ptr @.str.5, i32 1428, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mtk_i2c_resume_noirq\00", [43 x i8] zeroinitializer }, align 32
@mtk_i2c_resume_noirq._entry_ptr = internal global ptr @mtk_i2c_resume_noirq._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.63 = private unnamed_addr constant [15 x i8] c"mtk_i2c_driver\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1447, i32 31 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1451, i32 11 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"mtk_i2c_of_match\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 414, i32 34 }
@___asan_gen_.72 = private unnamed_addr constant [11 x i8] c"mtk_i2c_pm\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1442, i32 32 }
@___asan_gen_.75 = private unnamed_addr constant [18 x i8] c"mtk_i2c_algorithm\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1251, i32 35 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1317, i32 68 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1332, i32 43 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1334, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1338, i32 42 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1340, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1344, i32 42 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1350, i32 44 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1352, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1362, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1370, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1377, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1387, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 87, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1177, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 935, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1130, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1137, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 326, i32 6 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 852, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 855, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 858, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 861, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 864, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 867, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 870, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 873, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 876, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant [15 x i8] c"mt_i2c_regs_v2\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 181, i32 18 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 880, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 884, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 887, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 890, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 893, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 896, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1260, i32 33 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1264, i32 33 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1271, i32 45 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1273, i32 29 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 767, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant [19 x i8] c"standard_mode_spec\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 280, i32 37 }
@___asan_gen_.255 = private unnamed_addr constant [15 x i8] c"fast_mode_spec\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 287, i32 37 }
@___asan_gen_.258 = private unnamed_addr constant [20 x i8] c"fast_mode_plus_spec\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 294, i32 37 }
@___asan_gen_.261 = private unnamed_addr constant [14 x i8] c"mt2712_compat\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 318, i32 40 }
@___asan_gen_.264 = private unnamed_addr constant [14 x i8] c"mt6577_compat\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 331, i32 40 }
@___asan_gen_.267 = private unnamed_addr constant [14 x i8] c"mt6589_compat\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 345, i32 40 }
@___asan_gen_.270 = private unnamed_addr constant [14 x i8] c"mt7622_compat\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 359, i32 40 }
@___asan_gen_.273 = private unnamed_addr constant [14 x i8] c"mt8173_compat\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 373, i32 40 }
@___asan_gen_.276 = private unnamed_addr constant [14 x i8] c"mt8183_compat\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 386, i32 40 }
@___asan_gen_.279 = private unnamed_addr constant [14 x i8] c"mt8192_compat\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 400, i32 40 }
@___asan_gen_.282 = private unnamed_addr constant [15 x i8] c"mt_i2c_regs_v1\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 148, i32 18 }
@___asan_gen_.285 = private unnamed_addr constant [18 x i8] c"mt6577_i2c_quirks\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 301, i32 40 }
@___asan_gen_.288 = private unnamed_addr constant [18 x i8] c"mt7622_i2c_quirks\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 310, i32 40 }
@___asan_gen_.291 = private unnamed_addr constant [18 x i8] c"mt8183_i2c_quirks\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 314, i32 40 }
@___asan_gen_.294 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.297 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.298 = private constant [35 x i8] c"../drivers/i2c/busses/i2c-mt65xx.c\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 1428, i32 3 }
@llvm.compiler.used = appending global [95 x ptr] [ptr @__UNIQUE_ID_author313, ptr @__UNIQUE_ID_description312, ptr @__UNIQUE_ID_file310, ptr @__UNIQUE_ID_license311, ptr @__exitcall_mtk_i2c_driver_exit, ptr @__initcall__kmod_i2c_mt65xx__309_1457_mtk_i2c_driver_init6, ptr @mtk_i2c_do_transfer._entry, ptr @mtk_i2c_do_transfer._entry_ptr, ptr @mtk_i2c_driver_exit, ptr @mtk_i2c_probe._entry, ptr @mtk_i2c_probe._entry.14, ptr @mtk_i2c_probe._entry.17, ptr @mtk_i2c_probe._entry.20, ptr @mtk_i2c_probe._entry.23, ptr @mtk_i2c_probe._entry.26, ptr @mtk_i2c_probe._entry.9, ptr @mtk_i2c_probe._entry_ptr, ptr @mtk_i2c_probe._entry_ptr.11, ptr @mtk_i2c_probe._entry_ptr.16, ptr @mtk_i2c_probe._entry_ptr.19, ptr @mtk_i2c_probe._entry_ptr.22, ptr @mtk_i2c_probe._entry_ptr.25, ptr @mtk_i2c_probe._entry_ptr.28, ptr @mtk_i2c_resume_noirq._entry, ptr @mtk_i2c_resume_noirq._entry_ptr, ptr @mtk_i2c_driver, ptr @.str, ptr @mtk_i2c_of_match, ptr @mtk_i2c_pm, ptr @mtk_i2c_algorithm, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @init_completion.__key, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @mt_i2c_regs_v2, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @standard_mode_spec, ptr @fast_mode_spec, ptr @fast_mode_plus_spec, ptr @mt2712_compat, ptr @mt6577_compat, ptr @mt6589_compat, ptr @mt7622_compat, ptr @mt8173_compat, ptr @mt8183_compat, ptr @mt8192_compat, ptr @mt_i2c_regs_v1, ptr @mt6577_i2c_quirks, ptr @mt7622_i2c_quirks, ptr @mt8183_i2c_quirks, ptr @.str.61], section "llvm.metadata"
@0 = internal global [79 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_i2c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_i2c_of_match to i32), i32 1568, i32 1952, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_i2c_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_i2c_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_i2c_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_i2c_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_i2c_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_i2c_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_i2c_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_i2c_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_i2c_do_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt_i2c_regs_v2 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @standard_mode_spec to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fast_mode_spec to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fast_mode_plus_spec to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2712_compat to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6577_compat to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6589_compat to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7622_compat to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_compat to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_compat to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_compat to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt_i2c_regs_v1 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6577_i2c_quirks to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7622_i2c_quirks to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_i2c_quirks to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_i2c_resume_noirq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mtk_i2c_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtk_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @mtk_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_i2c_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1528, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %call3 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call1) #8
  %base = getelementptr inbounds %struct.mtk_i2c, ptr %call.i, i32 0, i32 4
  %0 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call3, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #8
  %call12 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call10) #8
  %pdmabase = getelementptr inbounds %struct.mtk_i2c, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %pdmabase to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call12, ptr %pdmabase, align 8
  %cmp.i270 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i270, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end9
  %call19 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp = icmp slt i32 %call19, 0
  br i1 %cmp, label %if.end18.cleanup_crit_edge, label %if.end21

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end21:                                         ; preds = %if.end18
  %msg_complete = getelementptr inbounds %struct.mtk_i2c, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %msg_complete to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %msg_complete, align 4
  %wait.i = getelementptr inbounds %struct.mtk_i2c, ptr %call.i, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @init_completion.__key) #8
  %call23 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #8
  %dev_comp = getelementptr inbounds %struct.mtk_i2c, ptr %call.i, i32 0, i32 22
  %5 = ptrtoint ptr %dev_comp to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call23, ptr %dev_comp, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %of_node26 = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 27
  %8 = ptrtoint ptr %of_node26 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %of_node26, align 8
  %dev28 = getelementptr inbounds %struct.mtk_i2c, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %dev28 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev, ptr %dev28, align 8
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %parent, align 8
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %call.i, align 8
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @mtk_i2c_algorithm, ptr %algo, align 8
  %13 = ptrtoint ptr %call23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call23, align 4
  %quirks36 = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 17
  %15 = ptrtoint ptr %quirks36 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %quirks36, align 8
  %timeout = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 7
  %16 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 200, ptr %timeout, align 4
  %retries = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 8
  %17 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %retries, align 8
  %call40 = tail call ptr @devm_regulator_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  %bus_regulator = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 19
  %18 = ptrtoint ptr %bus_regulator to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call40, ptr %bus_regulator, align 8
  %cmp.i271 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i271, label %if.then45, label %if.end21.if.end57_crit_edge

if.end21.if.end57_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then45:                                        ; preds = %if.end21
  %19 = ptrtoint ptr %call40 to i32
  %cmp49 = icmp eq ptr %call40, inttoptr (i32 -19 to ptr)
  br i1 %cmp49, label %if.then50, label %if.then45.cleanup_crit_edge

if.then45.cleanup_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then50:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %bus_regulator to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %bus_regulator, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.then50, %if.end21.if.end57_crit_edge
  %21 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %of_node, align 8
  %speed_hz.i = getelementptr inbounds %struct.mtk_i2c, ptr %call.i, i32 0, i32 14
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %22, ptr noundef nonnull @.str.55, ptr noundef %speed_hz.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i272 = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i272, label %if.then.i, label %if.end57.if.end.i_crit_edge

if.end57.if.end.i_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %speed_hz.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 100000, ptr %speed_hz.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end57.if.end.i_crit_edge
  %clk_src_div.i = getelementptr inbounds %struct.mtk_i2c, ptr %call.i, i32 0, i32 13
  %call.i.i25.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %22, ptr noundef nonnull @.str.56, ptr noundef %clk_src_div.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i25.i)
  %cmp3.i = icmp slt i32 %call.i.i25.i, 0
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %if.end5.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  %24 = ptrtoint ptr %clk_src_div.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %clk_src_div.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp7.i = icmp eq i32 %25, 0
  br i1 %cmp7.i, label %if.end5.i.cleanup_crit_edge, label %mtk_i2c_parse_dt.exit.thread

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mtk_i2c_parse_dt.exit.thread:                     ; preds = %if.end5.i
  %call.i.i = tail call ptr @of_find_property(ptr noundef %22, ptr noundef nonnull @.str.57, ptr noundef null) #8
  %tobool.i.i = icmp ne ptr %call.i.i, null
  %have_pmic.i = getelementptr inbounds %struct.mtk_i2c, ptr %call.i, i32 0, i32 10
  %frombool.i = zext i1 %tobool.i.i to i8
  %26 = ptrtoint ptr %have_pmic.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %frombool.i, ptr %have_pmic.i, align 4
  %call.i26.i = tail call ptr @of_find_property(ptr noundef %22, ptr noundef nonnull @.str.58, ptr noundef null) #8
  %tobool.i27.i = icmp ne ptr %call.i26.i, null
  %use_push_pull.i = getelementptr inbounds %struct.mtk_i2c, ptr %call.i, i32 0, i32 11
  %frombool12.i = zext i1 %tobool.i27.i to i8
  %27 = ptrtoint ptr %use_push_pull.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %frombool12.i, ptr %use_push_pull.i, align 1
  %28 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev28, align 8
  %timing_info.i = getelementptr inbounds %struct.mtk_i2c, ptr %call.i, i32 0, i32 3
  tail call void @i2c_parse_fw_timings(ptr noundef %29, ptr noundef %timing_info.i, i1 noundef zeroext true) #8
  %30 = ptrtoint ptr %have_pmic.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %have_pmic.i, align 4, !range !186
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool64.not = icmp eq i8 %31, 0
  br i1 %tobool64.not, label %mtk_i2c_parse_dt.exit.thread.if.end68_crit_edge, label %land.lhs.true

mtk_i2c_parse_dt.exit.thread.if.end68_crit_edge:  ; preds = %mtk_i2c_parse_dt.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

land.lhs.true:                                    ; preds = %mtk_i2c_parse_dt.exit.thread
  %32 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev_comp, align 8
  %pmic_i2c = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %pmic_i2c to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load = load i8, ptr %pmic_i2c, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool66.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool66.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end68_crit_edge

land.lhs.true.if.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end68:                                         ; preds = %land.lhs.true.if.end68_crit_edge, %mtk_i2c_parse_dt.exit.thread.if.end68_crit_edge
  %call70 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  %clk_main = getelementptr inbounds %struct.mtk_i2c, ptr %call.i, i32 0, i32 6
  %35 = ptrtoint ptr %clk_main to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call70, ptr %clk_main, align 4
  %cmp.i273 = icmp ugt ptr %call70, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i273, label %do.end, label %if.end77

do.end:                                           ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #11
  %36 = ptrtoint ptr %clk_main to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %clk_main, align 4
  %38 = ptrtoint ptr %37 to i32
  br label %cleanup

if.end77:                                         ; preds = %if.end68
  %call79 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.8) #8
  %clk_dma = getelementptr inbounds %struct.mtk_i2c, ptr %call.i, i32 0, i32 7
  %39 = ptrtoint ptr %clk_dma to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call79, ptr %clk_dma, align 8
  %cmp.i274 = icmp ugt ptr %call79, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i274, label %do.end85, label %if.end89

do.end85:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #11
  %40 = ptrtoint ptr %clk_dma to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %clk_dma, align 8
  %42 = ptrtoint ptr %41 to i32
  br label %cleanup

if.end89:                                         ; preds = %if.end77
  %call91 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.12) #8
  %clk_arb = getelementptr inbounds %struct.mtk_i2c, ptr %call.i, i32 0, i32 9
  %cmp.i275 = icmp ugt ptr %call91, inttoptr (i32 -4096 to ptr)
  %spec.store.select = select i1 %cmp.i275, ptr null, ptr %call91
  %43 = ptrtoint ptr %clk_arb to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %spec.store.select, ptr %clk_arb, align 8
  %44 = ptrtoint ptr %have_pmic.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %have_pmic.i, align 4, !range !186
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool99.not = icmp eq i8 %45, 0
  br i1 %tobool99.not, label %if.end89.if.end114_crit_edge, label %if.then100

if.end89.if.end114_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end114

if.then100:                                       ; preds = %if.end89
  %call102 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.13) #8
  %clk_pmic = getelementptr inbounds %struct.mtk_i2c, ptr %call.i, i32 0, i32 8
  %46 = ptrtoint ptr %clk_pmic to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call102, ptr %clk_pmic, align 4
  %cmp.i276 = icmp ugt ptr %call102, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i276, label %do.end108, label %if.then100.if.end114_crit_edge

if.then100.if.end114_crit_edge:                   ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end114

do.end108:                                        ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #11
  %47 = ptrtoint ptr %clk_pmic to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %clk_pmic, align 4
  %49 = ptrtoint ptr %48 to i32
  br label %cleanup

if.end114:                                        ; preds = %if.then100.if.end114_crit_edge, %if.end89.if.end114_crit_edge
  %clk.0.in = phi ptr [ %clk_main, %if.end89.if.end114_crit_edge ], [ %clk_pmic, %if.then100.if.end114_crit_edge ]
  %50 = ptrtoint ptr %clk.0.in to i32
  call void @__asan_load4_noabort(i32 %50)
  %clk.0 = load ptr, ptr %clk.0.in, align 4
  %name = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 12
  %call116 = tail call i32 @strlcpy(ptr noundef %name, ptr noundef nonnull @.str, i32 noundef 48) #8
  %call117 = tail call i32 @clk_get_rate(ptr noundef %clk.0) #8
  tail call fastcc void @mtk_i2c_set_speed(ptr noundef nonnull %call.i, i32 noundef %call117)
  %51 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev_comp, align 8
  %max_dma_support = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %max_dma_support to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %max_dma_support, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %54)
  %cmp127 = icmp ugt i8 %54, 32
  br i1 %cmp127, label %if.then129, label %if.end114.if.end147_crit_edge

if.end114.if.end147_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end147

if.then129:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %54)
  %cmp134 = icmp eq i8 %54, 64
  br i1 %cmp134, label %if.then129.cond.end_crit_edge, label %cond.false

if.then129.cond.end_crit_edge:                    ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #10
  %sh_prom = zext i8 %54 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub = xor i64 %notmask, -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then129.cond.end_crit_edge
  %cond = phi i64 [ %sub, %cond.false ], [ -1, %if.then129.cond.end_crit_edge ]
  %call139 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef %cond) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %cond.end.if.end147_crit_edge, label %do.end144

cond.end.if.end147_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end147

do.end144:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #11
  br label %cleanup

if.end147:                                        ; preds = %cond.end.if.end147_crit_edge, %if.end114.if.end147_crit_edge
  %call148 = tail call fastcc i32 @mtk_i2c_clock_enable(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %if.end155, label %do.end153

do.end153:                                        ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #11
  br label %cleanup

if.end155:                                        ; preds = %if.end147
  tail call fastcc void @mtk_i2c_init_hw(ptr noundef nonnull %call.i)
  tail call fastcc void @mtk_i2c_clock_disable(ptr noundef nonnull %call.i)
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %55 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %56, null
  br i1 %tobool.not.i, label %if.end.i277, label %if.end155.dev_name.exit_crit_edge

if.end155.dev_name.exit_crit_edge:                ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i277:                                      ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i277, %if.end155.dev_name.exit_crit_edge
  %retval.0.i278 = phi ptr [ %58, %if.end.i277 ], [ %56, %if.end155.dev_name.exit_crit_edge ]
  %call.i279 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call19, ptr noundef nonnull @mtk_i2c_irq, ptr noundef null, i32 noundef 16384, ptr noundef %retval.0.i278, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i279)
  %cmp160 = icmp slt i32 %call.i279, 0
  br i1 %cmp160, label %do.end165, label %if.end167

do.end165:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %call19) #11
  br label %cleanup

if.end167:                                        ; preds = %dev_name.exit
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 8
  %59 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call170 = tail call i32 @i2c_add_adapter(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170)
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %if.end173, label %if.end167.cleanup_crit_edge

if.end167.cleanup_crit_edge:                      ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end173:                                        ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i280 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %60 = ptrtoint ptr %driver_data.i.i280 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call.i, ptr %driver_data.i.i280, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end173, %if.end167.cleanup_crit_edge, %do.end165, %do.end153, %do.end144, %do.end108, %do.end85, %do.end, %land.lhs.true.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then45.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.then15, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then6 ], [ %3, %if.then15 ], [ %38, %do.end ], [ %42, %do.end85 ], [ %49, %do.end108 ], [ %call139, %do.end144 ], [ %call148, %do.end153 ], [ %call.i279, %do.end165 ], [ 0, %if.end173 ], [ -12, %entry.cleanup_crit_edge ], [ %call19, %if.end18.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ %call170, %if.end167.cleanup_crit_edge ], [ %19, %if.then45.cleanup_crit_edge ], [ -22, %if.end5.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_i2c_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @i2c_del_adapter(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_i2c_set_speed(ptr nocapture noundef %i2c, i32 noundef %parent_clk) unnamed_addr #2 align 64 {
entry:
  %step_cnt = alloca i32, align 4
  %sample_cnt = alloca i32, align 4
  %l_step_cnt = alloca i32, align 4
  %l_sample_cnt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %step_cnt) #8
  %0 = ptrtoint ptr %step_cnt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %step_cnt, align 4, !annotation !187
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sample_cnt) #8
  %1 = ptrtoint ptr %sample_cnt to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %sample_cnt, align 4, !annotation !187
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %l_step_cnt) #8
  %2 = ptrtoint ptr %l_step_cnt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %l_step_cnt, align 4, !annotation !187
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %l_sample_cnt) #8
  %3 = ptrtoint ptr %l_sample_cnt to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %l_sample_cnt, align 4, !annotation !187
  %speed_hz = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 14
  %4 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed_hz, align 4
  %clk_src_div = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 13
  %6 = ptrtoint ptr %clk_src_div to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clk_src_div, align 8
  %div = udiv i32 %parent_clk, %7
  %dev_comp = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 22
  %8 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_comp, align 8
  %timing_adjust = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %timing_adjust to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %timing_adjust, align 4
  %11 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %5)
  %cmp2 = icmp ugt i32 %5, 1000000
  %timing_reg = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 16
  %12 = select i1 %tobool.not, i32 2, i32 257
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %clk_div.05 = phi i32 [ 1, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %div1 = udiv i32 %div, %clk_div.05
  br i1 %cmp2, label %if.then3, label %if.else31

if.then3:                                         ; preds = %for.body
  %call = call fastcc i32 @mtk_i2c_calculate_speed(ptr noundef %i2c, i32 noundef %div1, i32 noundef 400000, ptr noundef nonnull %l_step_cnt, ptr noundef nonnull %l_sample_cnt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %if.then3.for.inc_crit_edge, label %if.end6

if.then3.for.inc_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end6:                                          ; preds = %if.then3
  %13 = ptrtoint ptr %l_sample_cnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %l_sample_cnt, align 4
  %shl = shl i32 %14, 8
  %15 = ptrtoint ptr %l_step_cnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %l_step_cnt, align 4
  %or = or i32 %shl, %16
  %conv = trunc i32 %or to i16
  %17 = ptrtoint ptr %timing_reg to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv, ptr %timing_reg, align 4
  %call7 = call fastcc i32 @mtk_i2c_calculate_speed(ptr noundef %i2c, i32 noundef %div1, i32 noundef %5, ptr noundef nonnull %step_cnt, ptr noundef nonnull %sample_cnt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end6.for.inc_crit_edge, label %if.end11

if.end6.for.inc_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end11:                                         ; preds = %if.end6
  %18 = ptrtoint ptr %sample_cnt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sample_cnt, align 4
  %shl12 = shl i32 %19, 12
  %20 = ptrtoint ptr %step_cnt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %step_cnt, align 4
  %shl14 = shl i32 %21, 8
  %or13 = or i32 %shl14, %shl12
  %22 = trunc i32 %or13 to i16
  %conv16 = or i16 %22, 3
  %high_speed_reg = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 17
  %23 = ptrtoint ptr %high_speed_reg to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv16, ptr %high_speed_reg, align 2
  %24 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_comp, align 8
  %ltiming_adjust = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %ltiming_adjust to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load18 = load i8, ptr %ltiming_adjust, align 4
  %27 = and i8 %bf.load18, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool21.not = icmp eq i8 %27, 0
  br i1 %tobool21.not, label %if.end11.for.end_crit_edge, label %if.then22

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then22:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %shl23 = shl i32 %14, 6
  %or24 = or i32 %shl23, %16
  %or26 = or i32 %or24, %shl12
  %shl27 = shl i32 %21, 9
  %or28 = or i32 %or26, %shl27
  br label %for.end.sink.split

if.else31:                                        ; preds = %for.body
  %call32 = call fastcc i32 @mtk_i2c_calculate_speed(ptr noundef %i2c, i32 noundef %div1, i32 noundef %5, ptr noundef nonnull %l_step_cnt, ptr noundef nonnull %l_sample_cnt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.else31.for.inc_crit_edge, label %if.end36

if.else31.for.inc_crit_edge:                      ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end36:                                         ; preds = %if.else31
  %28 = ptrtoint ptr %l_sample_cnt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %l_sample_cnt, align 4
  %shl37 = shl i32 %29, 8
  %30 = ptrtoint ptr %l_step_cnt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %l_step_cnt, align 4
  %or38 = or i32 %shl37, %31
  %conv39 = trunc i32 %or38 to i16
  %32 = ptrtoint ptr %timing_reg to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv39, ptr %timing_reg, align 4
  %high_speed_reg41 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 17
  %33 = ptrtoint ptr %high_speed_reg41 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %high_speed_reg41, align 2
  %34 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_comp, align 8
  %ltiming_adjust43 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %ltiming_adjust43 to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load44 = load i8, ptr %ltiming_adjust43, align 4
  %37 = and i8 %bf.load44, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool47.not = icmp eq i8 %37, 0
  br i1 %tobool47.not, label %if.end36.for.end_crit_edge, label %if.then48

if.end36.for.end_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then48:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %shl49 = shl i32 %29, 6
  %or50 = or i32 %shl49, %31
  br label %for.end.sink.split

for.inc:                                          ; preds = %if.else31.for.inc_crit_edge, %if.end6.for.inc_crit_edge, %if.then3.for.inc_crit_edge
  %inc = add nuw nsw i32 %clk_div.05, 1
  %exitcond = icmp eq i32 %inc, %12
  br i1 %exitcond, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end.sink.split:                               ; preds = %if.then48, %if.then22
  %or28.sink = phi i32 [ %or28, %if.then22 ], [ %or50, %if.then48 ]
  %conv29 = trunc i32 %or28.sink to i16
  %ltiming_reg = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 18
  %38 = ptrtoint ptr %ltiming_reg to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv29, ptr %ltiming_reg, align 8
  br label %for.end

for.end:                                          ; preds = %for.end.sink.split, %for.inc.for.end_crit_edge, %if.end36.for.end_crit_edge, %if.end11.for.end_crit_edge
  %clk_div.03 = phi i32 [ %clk_div.05, %if.end11.for.end_crit_edge ], [ %clk_div.05, %if.end36.for.end_crit_edge ], [ %clk_div.05, %for.end.sink.split ], [ %12, %for.inc.for.end_crit_edge ]
  %39 = trunc i32 %clk_div.03 to i16
  %conv55 = add i16 %39, -1
  %inter_clk_div = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 21, i32 4
  %40 = ptrtoint ptr %inter_clk_div to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv55, ptr %inter_clk_div, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %l_sample_cnt) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %l_step_cnt) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sample_cnt) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %step_cnt) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_i2c_clock_enable(ptr nocapture noundef readonly %i2c) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_dma = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 7
  %0 = ptrtoint ptr %clk_dma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_dma, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  %clk_main = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 6
  %2 = ptrtoint ptr %clk_main to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_main, align 4
  %call.i41 = tail call i32 @clk_prepare(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %tobool.not.i42 = icmp eq i32 %call.i41, 0
  br i1 %tobool.not.i42, label %if.end.i45, label %if.end.err_main_crit_edge

if.end.err_main_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_main

if.end.i45:                                       ; preds = %if.end
  %call1.i43 = tail call i32 @clk_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i43)
  %tobool2.not.i44 = icmp eq i32 %call1.i43, 0
  br i1 %tobool2.not.i44, label %if.end4, label %if.end.i45.err_main.sink.split_crit_edge

if.end.i45.err_main.sink.split_crit_edge:         ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_main.sink.split

if.end4:                                          ; preds = %if.end.i45
  %have_pmic = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 10
  %4 = ptrtoint ptr %have_pmic to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %have_pmic, align 4, !range !186
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %if.end4.if.end11_crit_edge, label %if.then6

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then6:                                         ; preds = %if.end4
  %clk_pmic = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 8
  %6 = ptrtoint ptr %clk_pmic to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_pmic, align 4
  %call.i49 = tail call i32 @clk_prepare(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %tobool.not.i50 = icmp eq i32 %call.i49, 0
  br i1 %tobool.not.i50, label %if.end.i53, label %if.then6.err_pmic_crit_edge

if.then6.err_pmic_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_pmic

if.end.i53:                                       ; preds = %if.then6
  %call1.i51 = tail call i32 @clk_enable(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i51)
  %tobool2.not.i52 = icmp eq i32 %call1.i51, 0
  br i1 %tobool2.not.i52, label %if.end.i53.if.end11_crit_edge, label %if.end.i53.err_pmic.sink.split_crit_edge

if.end.i53.err_pmic.sink.split_crit_edge:         ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_pmic.sink.split

if.end.i53.if.end11_crit_edge:                    ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.end11:                                         ; preds = %if.end.i53.if.end11_crit_edge, %if.end4.if.end11_crit_edge
  %clk_arb = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 9
  %8 = ptrtoint ptr %clk_arb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_arb, align 8
  %tobool12.not = icmp eq ptr %9, null
  br i1 %tobool12.not, label %if.end11.cleanup_crit_edge, label %if.then13

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13:                                        ; preds = %if.end11
  %call.i57 = tail call i32 @clk_prepare(ptr noundef nonnull %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %tobool.not.i58 = icmp eq i32 %call.i57, 0
  br i1 %tobool.not.i58, label %if.end.i61, label %if.then13.err_arb_crit_edge

if.then13.err_arb_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_arb

if.end.i61:                                       ; preds = %if.then13
  %call1.i59 = tail call i32 @clk_enable(ptr noundef nonnull %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i59)
  %tobool2.not.i60 = icmp eq i32 %call1.i59, 0
  br i1 %tobool2.not.i60, label %if.end.i61.cleanup_crit_edge, label %if.then3.i62

if.end.i61.cleanup_crit_edge:                     ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.i62:                                     ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef nonnull %9) #8
  br label %err_arb

err_arb:                                          ; preds = %if.then3.i62, %if.then13.err_arb_crit_edge
  %retval.0.i63.ph = phi i32 [ %call1.i59, %if.then3.i62 ], [ %call.i57, %if.then13.err_arb_crit_edge ]
  %10 = ptrtoint ptr %have_pmic to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %have_pmic, align 4, !range !186
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool21.not = icmp eq i8 %11, 0
  br i1 %tobool21.not, label %err_arb.err_pmic_crit_edge, label %if.then22

err_arb.err_pmic_crit_edge:                       ; preds = %err_arb
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_pmic

if.then22:                                        ; preds = %err_arb
  call void @__sanitizer_cov_trace_pc() #10
  %clk_pmic23 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 8
  %12 = ptrtoint ptr %clk_pmic23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk_pmic23, align 4
  tail call void @clk_disable(ptr noundef %13) #8
  br label %err_pmic.sink.split

err_pmic.sink.split:                              ; preds = %if.then22, %if.end.i53.err_pmic.sink.split_crit_edge
  %.sink = phi ptr [ %13, %if.then22 ], [ %7, %if.end.i53.err_pmic.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %retval.0.i63.ph, %if.then22 ], [ %call1.i51, %if.end.i53.err_pmic.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #8
  br label %err_pmic

err_pmic:                                         ; preds = %err_pmic.sink.split, %err_arb.err_pmic_crit_edge, %if.then6.err_pmic_crit_edge
  %ret.0 = phi i32 [ %retval.0.i63.ph, %err_arb.err_pmic_crit_edge ], [ %call.i49, %if.then6.err_pmic_crit_edge ], [ %ret.0.ph, %err_pmic.sink.split ]
  %14 = ptrtoint ptr %clk_main to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk_main, align 4
  tail call void @clk_disable(ptr noundef %15) #8
  br label %err_main.sink.split

err_main.sink.split:                              ; preds = %err_pmic, %if.end.i45.err_main.sink.split_crit_edge
  %.sink74 = phi ptr [ %15, %err_pmic ], [ %3, %if.end.i45.err_main.sink.split_crit_edge ]
  %ret.1.ph = phi i32 [ %ret.0, %err_pmic ], [ %call1.i43, %if.end.i45.err_main.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink74) #8
  br label %err_main

err_main:                                         ; preds = %err_main.sink.split, %if.end.err_main_crit_edge
  %ret.1 = phi i32 [ %call.i41, %if.end.err_main_crit_edge ], [ %ret.1.ph, %err_main.sink.split ]
  %16 = ptrtoint ptr %clk_dma to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk_dma, align 8
  tail call void @clk_disable(ptr noundef %17) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err_main, %if.end.i.cleanup.sink.split_crit_edge
  %.sink75 = phi ptr [ %17, %err_main ], [ %1, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %ret.1, %err_main ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink75) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i61.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11.cleanup_crit_edge ], [ 0, %if.end.i61.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_i2c_init_hw(ptr noundef readonly %i2c) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %base.i = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 4
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %dev_comp.i = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 22
  %2 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_comp.i, align 8
  %regs.i = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %arrayidx.i = getelementptr i16, ptr %5, i32 9
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %7 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 0) #8, !srcloc !189
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %10 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_comp.i, align 8
  %regs.i138 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %regs.i138 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i138, align 4
  %arrayidx.i139 = getelementptr i16, ptr %13, i32 3
  %14 = ptrtoint ptr %arrayidx.i139 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx.i139, align 2
  %conv.i140 = zext i16 %15 to i32
  %add.ptr.i141 = getelementptr i8, ptr %9, i32 %conv.i140
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i141) #8, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 4
  %19 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_comp.i, align 8
  %regs.i144 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %regs.i144 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i144, align 4
  %arrayidx.i145 = getelementptr i16, ptr %22, i32 3
  %23 = ptrtoint ptr %arrayidx.i145 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx.i145, align 2
  %conv.i146 = zext i16 %24 to i32
  %add.ptr.i147 = getelementptr i8, ptr %18, i32 %conv.i146
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i147, i16 %16) #8, !srcloc !189
  %25 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_comp.i, align 8
  %apdma_sync = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %apdma_sync to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load = load i8, ptr %apdma_sync, align 4
  %bf.clear = and i8 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear)
  %tobool.not = icmp eq i8 %bf.clear, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %pdmabase19 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 5
  %28 = ptrtoint ptr %pdmabase19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdmabase19, align 8
  %add.ptr20 = getelementptr i8, ptr %29, i32 12
  br i1 %tobool.not, label %do.body16, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 16777216) #8, !srcloc !192
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  tail call void @arm_heavy_mb() #8
  %31 = ptrtoint ptr %pdmabase19 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdmabase19, align 8
  %add.ptr5 = getelementptr i8, ptr %32, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 0) #8, !srcloc !192
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  %34 = ptrtoint ptr %pdmabase19 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdmabase19, align 8
  %add.ptr10 = getelementptr i8, ptr %35, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 100663296) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %36 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i, align 4
  %38 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_comp.i, align 8
  %regs.i150 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %regs.i150 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i150, align 4
  %arrayidx.i151 = getelementptr i16, ptr %41, i32 17
  %42 = ptrtoint ptr %arrayidx.i151 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx.i151, align 2
  %conv.i152 = zext i16 %43 to i32
  %add.ptr.i153 = getelementptr i8, ptr %37, i32 %conv.i152
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i153, i16 8448) #8, !srcloc !189
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 2147480) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !195
  tail call void @arm_heavy_mb() #8
  %45 = ptrtoint ptr %pdmabase19 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pdmabase19, align 8
  %add.ptr15 = getelementptr i8, ptr %46, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 0) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %47 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i, align 4
  %49 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev_comp.i, align 8
  %regs.i156 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %regs.i156 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i156, align 4
  %arrayidx.i157 = getelementptr i16, ptr %52, i32 17
  %53 = ptrtoint ptr %arrayidx.i157 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx.i157, align 2
  %conv.i158 = zext i16 %54 to i32
  %add.ptr.i159 = getelementptr i8, ptr %48, i32 %conv.i158
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i159, i16 0) #8, !srcloc !189
  br label %if.end

do.body16:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 33554432) #8, !srcloc !192
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 10737400) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !196
  tail call void @arm_heavy_mb() #8
  %56 = ptrtoint ptr %pdmabase19 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pdmabase19, align 8
  %add.ptr25 = getelementptr i8, ptr %57, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 0) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %58 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i, align 4
  %60 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev_comp.i, align 8
  %regs.i162 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %regs.i162 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs.i162, align 4
  %arrayidx.i163 = getelementptr i16, ptr %63, i32 17
  %64 = ptrtoint ptr %arrayidx.i163 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx.i163, align 2
  %conv.i164 = zext i16 %65 to i32
  %add.ptr.i165 = getelementptr i8, ptr %59, i32 %conv.i164
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i165, i16 256) #8, !srcloc !189
  br label %if.end

if.end:                                           ; preds = %do.body16, %do.body
  %use_push_pull = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 11
  %66 = ptrtoint ptr %use_push_pull to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %use_push_pull, align 1, !range !186
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool26.not = icmp eq i8 %67, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %68 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base.i, align 4
  %70 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev_comp.i, align 8
  %regs.i174 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %regs.i174 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs.i174, align 4
  %arrayidx.i175 = getelementptr i16, ptr %73, i32 14
  %74 = ptrtoint ptr %arrayidx.i175 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %arrayidx.i175, align 2
  %conv.i176 = zext i16 %75 to i32
  %add.ptr.i177 = getelementptr i8, ptr %69, i32 %conv.i176
  br i1 %tobool26.not, label %if.else28, label %if.then27

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i177, i16 0) #8, !srcloc !189
  br label %if.end29

if.else28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i177, i16 768) #8, !srcloc !189
  br label %if.end29

if.end29:                                         ; preds = %if.else28, %if.then27
  %76 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev_comp.i, align 8
  %dcm = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %dcm to i32
  call void @__asan_load1_noabort(i32 %78)
  %bf.load31 = load i8, ptr %dcm, align 4
  %79 = and i8 %bf.load31, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool33.not = icmp eq i8 %79, 0
  br i1 %tobool33.not, label %if.end29.if.end35_crit_edge, label %if.then34

if.end29.if.end35_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %80 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %base.i, align 4
  %82 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev_comp.i, align 8
  %regs.i180 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %regs.i180 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regs.i180, align 4
  %arrayidx.i181 = getelementptr i16, ptr %85, i32 18
  %86 = ptrtoint ptr %arrayidx.i181 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %arrayidx.i181, align 2
  %conv.i182 = zext i16 %87 to i32
  %add.ptr.i183 = getelementptr i8, ptr %81, i32 %conv.i182
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i183, i16 0) #8, !srcloc !189
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end29.if.end35_crit_edge
  %timing_reg = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 16
  %88 = ptrtoint ptr %timing_reg to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %timing_reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %90 = tail call i16 @llvm.bswap.i16(i16 %89) #8
  %91 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %base.i, align 4
  %93 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev_comp.i, align 8
  %regs.i186 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %regs.i186 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs.i186, align 4
  %arrayidx.i187 = getelementptr i16, ptr %96, i32 8
  %97 = ptrtoint ptr %arrayidx.i187 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %arrayidx.i187, align 2
  %conv.i188 = zext i16 %98 to i32
  %add.ptr.i189 = getelementptr i8, ptr %92, i32 %conv.i188
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i189, i16 %90) #8, !srcloc !189
  %high_speed_reg = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 17
  %99 = ptrtoint ptr %high_speed_reg to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %high_speed_reg, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %101 = tail call i16 @llvm.bswap.i16(i16 %100) #8
  %102 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %base.i, align 4
  %104 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev_comp.i, align 8
  %regs.i192 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %regs.i192 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regs.i192, align 4
  %arrayidx.i193 = getelementptr i16, ptr %107, i32 16
  %108 = ptrtoint ptr %arrayidx.i193 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %arrayidx.i193, align 2
  %conv.i194 = zext i16 %109 to i32
  %add.ptr.i195 = getelementptr i8, ptr %103, i32 %conv.i194
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i195, i16 %101) #8, !srcloc !189
  %110 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev_comp.i, align 8
  %ltiming_adjust = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %111, i32 0, i32 2
  %112 = ptrtoint ptr %ltiming_adjust to i32
  call void @__asan_load1_noabort(i32 %112)
  %bf.load37 = load i8, ptr %ltiming_adjust, align 4
  %113 = and i8 %bf.load37, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool40.not = icmp eq i8 %113, 0
  br i1 %tobool40.not, label %if.end35.if.end42_crit_edge, label %if.then41

if.end35.if.end42_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then41:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %ltiming_reg = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 18
  %114 = ptrtoint ptr %ltiming_reg to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %ltiming_reg, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %116 = tail call i16 @llvm.bswap.i16(i16 %115) #8
  %117 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %base.i, align 4
  %119 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev_comp.i, align 8
  %regs.i198 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %regs.i198 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %regs.i198, align 4
  %arrayidx.i199 = getelementptr i16, ptr %122, i32 25
  %123 = ptrtoint ptr %arrayidx.i199 to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %arrayidx.i199, align 2
  %conv.i200 = zext i16 %124 to i32
  %add.ptr.i201 = getelementptr i8, ptr %118, i32 %conv.i200
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i201, i16 %116) #8, !srcloc !189
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end35.if.end42_crit_edge
  %speed_hz = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 14
  %125 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %speed_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100001, i32 %126)
  %cmp = icmp ult i32 %126, 100001
  %. = select i1 %cmp, i16 -32767, i16 6144
  %127 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev_comp.i, align 8
  %timing_adjust = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %128, i32 0, i32 2
  %129 = ptrtoint ptr %timing_adjust to i32
  call void @__asan_load1_noabort(i32 %129)
  %bf.load47 = load i8, ptr %timing_adjust, align 4
  %130 = and i8 %bf.load47, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool50.not = icmp eq i8 %130, 0
  br i1 %tobool50.not, label %if.end42.if.end70_crit_edge, label %if.then51

if.end42.if.end70_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then51:                                        ; preds = %if.end42
  %ext = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 21, i32 3
  %131 = ptrtoint ptr %ext to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %ext, align 2
  %inter_clk_div = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 21, i32 4
  %133 = ptrtoint ptr %inter_clk_div to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %inter_clk_div, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %135 = tail call i16 @llvm.bswap.i16(i16 %134) #8
  %136 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %base.i, align 4
  %138 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev_comp.i, align 8
  %regs.i204 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %139, i32 0, i32 1
  %140 = ptrtoint ptr %regs.i204 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %regs.i204, align 4
  %arrayidx.i205 = getelementptr i16, ptr %141, i32 24
  %142 = ptrtoint ptr %arrayidx.i205 to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %arrayidx.i205, align 2
  %conv.i206 = zext i16 %143 to i32
  %add.ptr.i207 = getelementptr i8, ptr %137, i32 %conv.i206
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i207, i16 %135) #8, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %144 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %base.i, align 4
  %146 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dev_comp.i, align 8
  %regs.i210 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %147, i32 0, i32 1
  %148 = ptrtoint ptr %regs.i210 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %regs.i210, align 4
  %arrayidx.i211 = getelementptr i16, ptr %149, i32 28
  %150 = ptrtoint ptr %arrayidx.i211 to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %arrayidx.i211, align 2
  %conv.i212 = zext i16 %151 to i32
  %add.ptr.i213 = getelementptr i8, ptr %145, i32 %conv.i212
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i213, i16 0) #8, !srcloc !189
  %sda_timing = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 21, i32 9
  %152 = ptrtoint ptr %sda_timing to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %sda_timing, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %154 = tail call i16 @llvm.bswap.i16(i16 %153) #8
  %155 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %base.i, align 4
  %157 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dev_comp.i, align 8
  %regs.i216 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %regs.i216 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %regs.i216, align 4
  %arrayidx.i217 = getelementptr i16, ptr %160, i32 31
  %161 = ptrtoint ptr %arrayidx.i217 to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %arrayidx.i217, align 2
  %conv.i218 = zext i16 %162 to i32
  %add.ptr.i219 = getelementptr i8, ptr %156, i32 %conv.i218
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i219, i16 %154) #8, !srcloc !189
  %163 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dev_comp.i, align 8
  %ltiming_adjust55 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %164, i32 0, i32 2
  %165 = ptrtoint ptr %ltiming_adjust55 to i32
  call void @__asan_load1_noabort(i32 %165)
  %bf.load56 = load i8, ptr %ltiming_adjust55, align 4
  %166 = and i8 %bf.load56, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %tobool59.not = icmp eq i8 %166, 0
  br i1 %tobool59.not, label %if.else64, label %if.then60

if.then60:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  %ac_timing = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 21
  %167 = ptrtoint ptr %ac_timing to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %ac_timing, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %169 = tail call i16 @llvm.bswap.i16(i16 %168) #8
  %170 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %base.i, align 4
  %172 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dev_comp.i, align 8
  %regs.i222 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %173, i32 0, i32 1
  %174 = ptrtoint ptr %regs.i222 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %regs.i222, align 4
  %arrayidx.i223 = getelementptr i16, ptr %175, i32 8
  %176 = ptrtoint ptr %arrayidx.i223 to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %arrayidx.i223, align 2
  %conv.i224 = zext i16 %177 to i32
  %add.ptr.i225 = getelementptr i8, ptr %171, i32 %conv.i224
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i225, i16 %169) #8, !srcloc !189
  %hs = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 21, i32 2
  %178 = ptrtoint ptr %hs to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %hs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %180 = tail call i16 @llvm.bswap.i16(i16 %179) #8
  %181 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %base.i, align 4
  %183 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %dev_comp.i, align 8
  %regs.i228 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %184, i32 0, i32 1
  %185 = ptrtoint ptr %regs.i228 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %regs.i228, align 4
  %arrayidx.i229 = getelementptr i16, ptr %186, i32 16
  %187 = ptrtoint ptr %arrayidx.i229 to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %arrayidx.i229, align 2
  %conv.i230 = zext i16 %188 to i32
  %add.ptr.i231 = getelementptr i8, ptr %182, i32 %conv.i230
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i231, i16 %180) #8, !srcloc !189
  %ltiming = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 21, i32 1
  %189 = ptrtoint ptr %ltiming to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %ltiming, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %191 = tail call i16 @llvm.bswap.i16(i16 %190) #8
  %192 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %base.i, align 4
  %194 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %dev_comp.i, align 8
  %regs.i234 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %195, i32 0, i32 1
  %196 = ptrtoint ptr %regs.i234 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %regs.i234, align 4
  %arrayidx.i235 = getelementptr i16, ptr %197, i32 25
  %198 = ptrtoint ptr %arrayidx.i235 to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %arrayidx.i235, align 2
  %conv.i236 = zext i16 %199 to i32
  %add.ptr.i237 = getelementptr i8, ptr %193, i32 %conv.i236
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i237, i16 %191) #8, !srcloc !189
  br label %if.end70

if.else64:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  %scl_hl_ratio = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 21, i32 5
  %200 = ptrtoint ptr %scl_hl_ratio to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %scl_hl_ratio, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %202 = tail call i16 @llvm.bswap.i16(i16 %201) #8
  %203 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %base.i, align 4
  %205 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %dev_comp.i, align 8
  %regs.i240 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %206, i32 0, i32 1
  %207 = ptrtoint ptr %regs.i240 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %regs.i240, align 4
  %arrayidx.i241 = getelementptr i16, ptr %208, i32 26
  %209 = ptrtoint ptr %arrayidx.i241 to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %arrayidx.i241, align 2
  %conv.i242 = zext i16 %210 to i32
  %add.ptr.i243 = getelementptr i8, ptr %204, i32 %conv.i242
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i243, i16 %202) #8, !srcloc !189
  %hs_scl_hl_ratio = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 21, i32 6
  %211 = ptrtoint ptr %hs_scl_hl_ratio to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %hs_scl_hl_ratio, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %213 = tail call i16 @llvm.bswap.i16(i16 %212) #8
  %214 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %base.i, align 4
  %216 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %dev_comp.i, align 8
  %regs.i246 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %217, i32 0, i32 1
  %218 = ptrtoint ptr %regs.i246 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %regs.i246, align 4
  %arrayidx.i247 = getelementptr i16, ptr %219, i32 27
  %220 = ptrtoint ptr %arrayidx.i247 to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %arrayidx.i247, align 2
  %conv.i248 = zext i16 %221 to i32
  %add.ptr.i249 = getelementptr i8, ptr %215, i32 %conv.i248
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i249, i16 %213) #8, !srcloc !189
  %sta_stop = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 21, i32 7
  %222 = ptrtoint ptr %sta_stop to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %sta_stop, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %224 = tail call i16 @llvm.bswap.i16(i16 %223) #8
  %225 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %base.i, align 4
  %227 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %dev_comp.i, align 8
  %regs.i252 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %228, i32 0, i32 1
  %229 = ptrtoint ptr %regs.i252 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %regs.i252, align 4
  %arrayidx.i253 = getelementptr i16, ptr %230, i32 29
  %231 = ptrtoint ptr %arrayidx.i253 to i32
  call void @__asan_load2_noabort(i32 %231)
  %232 = load i16, ptr %arrayidx.i253, align 2
  %conv.i254 = zext i16 %232 to i32
  %add.ptr.i255 = getelementptr i8, ptr %226, i32 %conv.i254
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i255, i16 %224) #8, !srcloc !189
  %hs_sta_stop = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 21, i32 8
  %233 = ptrtoint ptr %hs_sta_stop to i32
  call void @__asan_load2_noabort(i32 %233)
  %234 = load i16, ptr %hs_sta_stop, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %235 = tail call i16 @llvm.bswap.i16(i16 %234) #8
  %236 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %base.i, align 4
  %238 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %dev_comp.i, align 8
  %regs.i258 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %239, i32 0, i32 1
  %240 = ptrtoint ptr %regs.i258 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %regs.i258, align 4
  %arrayidx.i259 = getelementptr i16, ptr %241, i32 30
  %242 = ptrtoint ptr %arrayidx.i259 to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load i16, ptr %arrayidx.i259, align 2
  %conv.i260 = zext i16 %243 to i32
  %add.ptr.i261 = getelementptr i8, ptr %237, i32 %conv.i260
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i261, i16 %235) #8, !srcloc !189
  br label %if.end70

if.end70:                                         ; preds = %if.else64, %if.then60, %if.end42.if.end70_crit_edge
  %ext_conf_val.1 = phi i16 [ %132, %if.then60 ], [ %132, %if.else64 ], [ %., %if.end42.if.end70_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %244 = tail call i16 @llvm.bswap.i16(i16 %ext_conf_val.1) #8
  %245 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %base.i, align 4
  %247 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %dev_comp.i, align 8
  %regs.i264 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %248, i32 0, i32 1
  %249 = ptrtoint ptr %regs.i264 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %regs.i264, align 4
  %arrayidx.i265 = getelementptr i16, ptr %250, i32 10
  %251 = ptrtoint ptr %arrayidx.i265 to i32
  call void @__asan_load2_noabort(i32 %251)
  %252 = load i16, ptr %arrayidx.i265, align 2
  %conv.i266 = zext i16 %252 to i32
  %add.ptr.i267 = getelementptr i8, ptr %246, i32 %conv.i266
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i267, i16 %244) #8, !srcloc !189
  %have_pmic = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 10
  %253 = ptrtoint ptr %have_pmic to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %have_pmic, align 4, !range !186
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %254)
  %tobool71.not = icmp eq i8 %254, 0
  br i1 %tobool71.not, label %if.end70.if.end73_crit_edge, label %if.then72

if.end70.if.end73_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

if.then72:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %255 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %base.i, align 4
  %257 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %dev_comp.i, align 8
  %regs.i270 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %258, i32 0, i32 1
  %259 = ptrtoint ptr %regs.i270 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %regs.i270, align 4
  %arrayidx.i271 = getelementptr i16, ptr %260, i32 20
  %261 = ptrtoint ptr %arrayidx.i271 to i32
  call void @__asan_load2_noabort(i32 %261)
  %262 = load i16, ptr %arrayidx.i271, align 2
  %conv.i272 = zext i16 %262 to i32
  %add.ptr.i273 = getelementptr i8, ptr %256, i32 %conv.i272
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i273, i16 256) #8, !srcloc !189
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %if.end70.if.end73_crit_edge
  %263 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %dev_comp.i, align 8
  %dma_sync = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %264, i32 0, i32 2
  %265 = ptrtoint ptr %dma_sync to i32
  call void @__asan_load1_noabort(i32 %265)
  %bf.load75 = load i8, ptr %dma_sync, align 4
  %266 = and i8 %bf.load75, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %266)
  %tobool78.not = icmp eq i8 %266, 0
  %spec.select = select i1 %tobool78.not, i16 44, i16 812
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %267 = tail call i16 @llvm.bswap.i16(i16 %spec.select) #8
  %268 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %base.i, align 4
  %270 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %dev_comp.i, align 8
  %regs.i276 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %271, i32 0, i32 1
  %272 = ptrtoint ptr %regs.i276 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %regs.i276, align 4
  %arrayidx.i277 = getelementptr i16, ptr %273, i32 4
  %274 = ptrtoint ptr %arrayidx.i277 to i32
  call void @__asan_load2_noabort(i32 %274)
  %275 = load i16, ptr %arrayidx.i277, align 2
  %conv.i278 = zext i16 %275 to i32
  %add.ptr.i279 = getelementptr i8, ptr %269, i32 %conv.i278
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i279, i16 %267) #8, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %276 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %base.i, align 4
  %278 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %dev_comp.i, align 8
  %regs.i282 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %279, i32 0, i32 1
  %280 = ptrtoint ptr %regs.i282 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %regs.i282, align 4
  %arrayidx.i283 = getelementptr i16, ptr %281, i32 7
  %282 = ptrtoint ptr %arrayidx.i283 to i32
  call void @__asan_load2_noabort(i32 %282)
  %283 = load i16, ptr %arrayidx.i283, align 2
  %conv.i284 = zext i16 %283 to i32
  %add.ptr.i285 = getelementptr i8, ptr %277, i32 %conv.i284
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i285, i16 512) #8, !srcloc !189
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_i2c_clock_disable(ptr nocapture noundef readonly %i2c) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_arb = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 9
  %0 = ptrtoint ptr %clk_arb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_arb, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_disable(ptr noundef nonnull %1) #8
  tail call void @clk_unprepare(ptr noundef nonnull %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %have_pmic = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 10
  %2 = ptrtoint ptr %have_pmic to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %have_pmic, align 4, !range !186
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %clk_pmic = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 8
  %4 = ptrtoint ptr %clk_pmic to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_pmic, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %clk_main = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 6
  %6 = ptrtoint ptr %clk_main to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_main, align 4
  tail call void @clk_disable(ptr noundef %7) #8
  tail call void @clk_unprepare(ptr noundef %7) #8
  %clk_dma = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 7
  %8 = ptrtoint ptr %clk_dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_dma, align 8
  tail call void @clk_disable(ptr noundef %9) #8
  tail call void @clk_unprepare(ptr noundef %9) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_i2c_irq(i32 noundef %irqno, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %auto_restart = getelementptr inbounds %struct.mtk_i2c, ptr %dev_id, i32 0, i32 19
  %0 = ptrtoint ptr %auto_restart to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %auto_restart, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 16
  %base.i = getelementptr inbounds %struct.mtk_i2c, ptr %dev_id, i32 0, i32 4
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %dev_comp.i = getelementptr inbounds %struct.mtk_i2c, ptr %dev_id, i32 0, i32 22
  %4 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_comp.i, align 8
  %regs.i = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %arrayidx.i = getelementptr i16, ptr %7, i32 3
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %9 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #8, !srcloc !190
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %14 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_comp.i, align 8
  %regs.i36 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %regs.i36 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i36, align 4
  %arrayidx.i37 = getelementptr i16, ptr %17, i32 3
  %18 = ptrtoint ptr %arrayidx.i37 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.i37, align 2
  %conv.i38 = zext i16 %19 to i32
  %add.ptr.i39 = getelementptr i8, ptr %13, i32 %conv.i38
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i39, i16 %10) #8, !srcloc !189
  %irq_stat = getelementptr inbounds %struct.mtk_i2c, ptr %dev_id, i32 0, i32 12
  %20 = ptrtoint ptr %irq_stat to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %irq_stat, align 2
  %or33 = or i16 %21, %11
  store i16 %or33, ptr %irq_stat, align 2
  %ignore_restart_irq = getelementptr inbounds %struct.mtk_i2c, ptr %dev_id, i32 0, i32 20
  %22 = ptrtoint ptr %ignore_restart_irq to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ignore_restart_irq, align 1, !range !186
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool3.not = icmp eq i8 %23, 0
  %.pre = zext i16 %or33 to i32
  %and = and i32 %spec.select, %.pre
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool3.not, i1 true, i1 %tobool8.not
  br i1 %or.cond, label %if.else, label %if.then9

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %ignore_restart_irq to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %ignore_restart_irq, align 1
  %25 = ptrtoint ptr %irq_stat to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %irq_stat, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  %28 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_comp.i, align 8
  %regs.i42 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %regs.i42 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i42, align 4
  %arrayidx.i43 = getelementptr i16, ptr %31, i32 9
  %32 = ptrtoint ptr %arrayidx.i43 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx.i43, align 2
  %conv.i44 = zext i16 %33 to i32
  %add.ptr.i45 = getelementptr i8, ptr %27, i32 %conv.i44
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i45, i16 448) #8, !srcloc !189
  br label %if.end20

if.else:                                          ; preds = %entry
  %or15 = or i32 %spec.select, 1
  %and16 = and i32 %or15, %.pre
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.else.if.end20_crit_edge, label %if.then18

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %msg_complete = getelementptr inbounds %struct.mtk_i2c, ptr %dev_id, i32 0, i32 2
  tail call void @complete(ptr noundef %msg_complete) #8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.else.if.end20_crit_edge, %if.then9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_i2c_transfer(ptr nocapture noundef readonly %adap, ptr noundef %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @mtk_i2c_clock_enable(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_comp = getelementptr inbounds %struct.mtk_i2c, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_comp, align 8
  %auto_restart = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %auto_restart to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %auto_restart, align 4
  %bf.lshr = lshr i8 %bf.load, 5
  %bf.clear = and i8 %bf.lshr, 1
  %auto_restart2 = getelementptr inbounds %struct.mtk_i2c, ptr %1, i32 0, i32 19
  %5 = ptrtoint ptr %auto_restart2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %bf.clear, ptr %auto_restart2, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear)
  %tobool4.not = icmp ne i8 %bf.clear, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %num)
  %cmp = icmp eq i32 %num, 2
  %or.cond = and i1 %cmp, %tobool4.not
  br i1 %or.cond, label %if.then6, label %if.end.if.end26_crit_edge

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then6:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags, align 2
  %8 = and i16 %7, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool8.not = icmp eq i16 %8, 0
  br i1 %tobool8.not, label %land.lhs.true9, label %if.then6.if.end26_crit_edge

if.then6.if.end26_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

land.lhs.true9:                                   ; preds = %if.then6
  %flags11 = getelementptr %struct.i2c_msg, ptr %msgs, i32 1, i32 1
  %9 = ptrtoint ptr %flags11 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flags11, align 2
  %11 = and i16 %10, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool14.not = icmp eq i16 %11, 0
  br i1 %tobool14.not, label %land.lhs.true9.if.end26_crit_edge, label %land.lhs.true15

land.lhs.true9.if.end26_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

land.lhs.true15:                                  ; preds = %land.lhs.true9
  %arrayidx10 = getelementptr %struct.i2c_msg, ptr %msgs, i32 1
  %12 = ptrtoint ptr %msgs to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %msgs, align 4
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx10, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %15)
  %cmp21 = icmp eq i16 %13, %15
  br i1 %cmp21, label %if.then23, label %land.lhs.true15.if.end26_crit_edge

land.lhs.true15.if.end26_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then23:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %auto_restart2 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %auto_restart2, align 2
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %land.lhs.true15.if.end26_crit_edge, %land.lhs.true9.if.end26_crit_edge, %if.then6.if.end26_crit_edge, %if.end.if.end26_crit_edge
  %17 = ptrtoint ptr %auto_restart2 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %auto_restart2, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool29.not = icmp ne i8 %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num)
  %cmp31 = icmp sgt i32 %num, 1
  %or.cond107 = and i1 %cmp31, %tobool29.not
  br i1 %or.cond107, label %land.lhs.true33, label %if.end38

land.lhs.true33:                                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %speed_hz = getelementptr inbounds %struct.mtk_i2c, ptr %1, i32 0, i32 14
  %19 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %speed_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %20)
  %cmp34 = icmp ugt i32 %20, 1000000
  %ignore_restart_irq = getelementptr inbounds %struct.mtk_i2c, ptr %1, i32 0, i32 20
  %. = zext i1 %cmp34 to i8
  %21 = ptrtoint ptr %ignore_restart_irq to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %., ptr %ignore_restart_irq, align 1
  br label %while.body.lr.ph

if.end38:                                         ; preds = %if.end26
  %ignore_restart_irq37 = getelementptr inbounds %struct.mtk_i2c, ptr %1, i32 0, i32 20
  %22 = ptrtoint ptr %ignore_restart_irq37 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %ignore_restart_irq37, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %tobool39.not111 = icmp eq i32 %num, 0
  br i1 %tobool39.not111, label %if.end38.err_exit_crit_edge, label %if.end38.while.body.lr.ph_crit_edge

if.end38.while.body.lr.ph_crit_edge:              ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.lr.ph

if.end38.err_exit_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_exit

while.body.lr.ph:                                 ; preds = %if.end38.while.body.lr.ph_crit_edge, %land.lhs.true33
  %op = getelementptr inbounds %struct.mtk_i2c, ptr %1, i32 0, i32 15
  br label %while.body

while.cond:                                       ; preds = %if.end67
  %incdec.ptr = getelementptr %struct.i2c_msg, ptr %msgs.addr.0113, i32 1
  %tobool39.not = icmp eq i32 %left_num.1, 0
  br i1 %tobool39.not, label %while.cond.err_exit_crit_edge, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.cond.err_exit_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_exit

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.body.lr.ph
  %msgs.addr.0113 = phi ptr [ %msgs, %while.body.lr.ph ], [ %incdec.ptr, %while.cond.while.body_crit_edge ]
  %left_num.0112 = phi i32 [ %num, %while.body.lr.ph ], [ %left_num.1, %while.cond.while.body_crit_edge ]
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msgs.addr.0113, i32 0, i32 3
  %23 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buf, align 4
  %tobool40.not = icmp eq ptr %24, null
  br i1 %tobool40.not, label %do.body, label %if.end49

do.body:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_i2c_transfer.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtk_i2c_transfer, %err_exit)) #8
          to label %if.then47 [label %err_exit], !srcloc !197

if.then47:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtk_i2c, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_i2c_transfer.__UNIQUE_ID_ddebug308, ptr noundef %26, ptr noundef nonnull @.str.32) #8
  br label %err_exit

if.end49:                                         ; preds = %while.body
  %dec114 = add i32 %left_num.0112, -1
  %flags50 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.addr.0113, i32 0, i32 1
  %27 = ptrtoint ptr %flags50 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %flags50, align 2
  %29 = and i16 %28, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool53.not = icmp eq i16 %29, 0
  %spec.select = select i1 %tobool53.not, i32 1, i32 2
  %30 = ptrtoint ptr %op to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %spec.select, ptr %op, align 8
  %31 = ptrtoint ptr %auto_restart2 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %auto_restart2, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool59.not = icmp eq i8 %32, 0
  %or.cond108 = and i1 %cmp31, %tobool59.not
  br i1 %or.cond108, label %if.then63, label %if.end49.if.end67_crit_edge

if.end49.if.end67_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then63:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %op to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 3, ptr %op, align 8
  %dec65 = add i32 %left_num.0112, -2
  br label %if.end67

if.end67:                                         ; preds = %if.then63, %if.end49.if.end67_crit_edge
  %left_num.1 = phi i32 [ %dec114, %if.end49.if.end67_crit_edge ], [ %dec65, %if.then63 ]
  %call68 = tail call fastcc i32 @mtk_i2c_do_transfer(ptr noundef %1, ptr noundef %msgs.addr.0113, i32 noundef %num, i32 noundef %left_num.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %if.end67.err_exit_crit_edge, label %while.cond

if.end67.err_exit_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_exit

err_exit:                                         ; preds = %if.end67.err_exit_crit_edge, %if.then47, %do.body, %while.cond.err_exit_crit_edge, %if.end38.err_exit_crit_edge
  %ret.0 = phi i32 [ -22, %if.then47 ], [ -22, %do.body ], [ 0, %if.end38.err_exit_crit_edge ], [ %call68, %if.end67.err_exit_crit_edge ], [ %num, %while.cond.err_exit_crit_edge ]
  tail call fastcc void @mtk_i2c_clock_disable(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %err_exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_exit ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mtk_i2c_functionality(ptr nocapture noundef readonly %adap) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %quirks1.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 17
  %0 = ptrtoint ptr %quirks1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %quirks1.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.i2c_check_quirks.exit.thread_crit_edge, label %i2c_check_quirks.exit

entry.i2c_check_quirks.exit.thread_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_check_quirks.exit.thread

i2c_check_quirks.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %1, align 8
  %and.i = and i64 %3, 96
  call void @__sanitizer_cov_trace_const_cmp8(i64 96, i64 %and.i)
  %cmp.i = icmp eq i64 %and.i, 96
  %spec.select = select i1 %cmp.i, i32 251527177, i32 251592713
  br label %i2c_check_quirks.exit.thread

i2c_check_quirks.exit.thread:                     ; preds = %i2c_check_quirks.exit, %entry.i2c_check_quirks.exit.thread_crit_edge
  %4 = phi i32 [ 251592713, %entry.i2c_check_quirks.exit.thread_crit_edge ], [ %spec.select, %i2c_check_quirks.exit ]
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_i2c_do_transfer(ptr noundef %i2c, ptr noundef %msgs, i32 noundef %num, i32 noundef %left_num) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_stat = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 12
  %0 = ptrtoint ptr %irq_stat to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %irq_stat, align 2
  %auto_restart = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 19
  %1 = ptrtoint ptr %auto_restart to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %auto_restart, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %spec.select = select i1 %tobool.not, i16 15, i16 31
  %msg_complete = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 2
  %3 = ptrtoint ptr %msg_complete to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %msg_complete, align 4
  %dev_comp = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 22
  %4 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_comp, align 8
  %apdma_sync = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %apdma_sync to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %apdma_sync, align 4
  %bf.clear = and i8 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear)
  %tobool1.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool1.not, label %entry.if.end62_crit_edge, label %land.lhs.true

entry.if.end62_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

land.lhs.true:                                    ; preds = %entry
  %op = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 15
  %7 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %op, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp.not = icmp ne i32 %8, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num)
  %cmp4 = icmp sgt i32 %num, 1
  %or.cond = and i1 %cmp4, %cmp.not
  br i1 %or.cond, label %if.then6, label %land.lhs.true.if.end62_crit_edge

land.lhs.true.if.end62_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.then6:                                         ; preds = %land.lhs.true
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %base.i = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 4
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %11 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_comp, align 8
  %regs.i = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %arrayidx.i = getelementptr i16, ptr %14, i32 22
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %16 to i32
  %add.ptr.i = getelementptr i8, ptr %10, i32 %conv.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 0) #8, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !198
  tail call void @arm_heavy_mb() #8
  %pdmabase = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 5
  %17 = ptrtoint ptr %pdmabase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdmabase, align 8
  %add.ptr = getelementptr i8, ptr %18, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 83886080) #8, !srcloc !192
  %call = tail call i64 @ktime_get() #8
  %add.i = add i64 %call, 100000
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true30.for.cond_crit_edge, %if.then6
  %19 = ptrtoint ptr %pdmabase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdmabase, align 8
  %add.ptr22 = getelementptr i8, ptr %20, i32 12
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr22) #8, !srcloc !190
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !199
  %conv25 = zext i16 %22 to i32
  %and = and i32 %conv25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %for.cond.for.end_crit_edge, label %land.lhs.true30

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.lhs.true30:                                  ; preds = %for.cond
  %call31 = tail call i64 @ktime_get() #8
  %cmp3.i = icmp sgt i64 %call31, %add.i
  br i1 %cmp3.i, label %if.then35, label %land.lhs.true30.for.cond_crit_edge

land.lhs.true30.for.cond_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

if.then35:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %pdmabase to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdmabase, align 8
  %add.ptr39 = getelementptr i8, ptr %24, i32 12
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr39) #8, !srcloc !190
  %26 = tail call i16 @llvm.bswap.i16(i16 %25)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !200
  %conv43 = zext i16 %26 to i32
  br label %for.end

for.end:                                          ; preds = %if.then35, %for.cond.for.end_crit_edge
  %reg_dma_reset.0 = phi i32 [ %conv43, %if.then35 ], [ %conv25, %for.cond.for.end_crit_edge ]
  %and49 = and i32 %reg_dma_reset.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %do.body57, label %do.end55

do.end55:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 1
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.33) #11
  br label %cleanup

do.body57:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !201
  tail call void @arm_heavy_mb() #8
  %29 = ptrtoint ptr %pdmabase to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdmabase, align 8
  %add.ptr61 = getelementptr i8, ptr %30, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 0) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %31 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i, align 4
  %33 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_comp, align 8
  %regs.i626 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %regs.i626 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i626, align 4
  %arrayidx.i627 = getelementptr i16, ptr %36, i32 17
  %37 = ptrtoint ptr %arrayidx.i627 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx.i627, align 2
  %conv.i628 = zext i16 %38 to i32
  %add.ptr.i629 = getelementptr i8, ptr %32, i32 %conv.i628
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i629, i16 8192) #8, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %39 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i, align 4
  %41 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_comp, align 8
  %regs.i632 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %regs.i632 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i632, align 4
  %arrayidx.i633 = getelementptr i16, ptr %44, i32 17
  %45 = ptrtoint ptr %arrayidx.i633 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx.i633, align 2
  %conv.i634 = zext i16 %46 to i32
  %add.ptr.i635 = getelementptr i8, ptr %40, i32 %conv.i634
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i635, i16 0) #8, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %47 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i, align 4
  %49 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev_comp, align 8
  %regs.i638 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %regs.i638 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i638, align 4
  %arrayidx.i639 = getelementptr i16, ptr %52, i32 22
  %53 = ptrtoint ptr %arrayidx.i639 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx.i639, align 2
  %conv.i640 = zext i16 %54 to i32
  %add.ptr.i641 = getelementptr i8, ptr %48, i32 %conv.i640
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i641, i16 6144) #8, !srcloc !189
  br label %if.end62

if.end62:                                         ; preds = %do.body57, %land.lhs.true.if.end62_crit_edge, %entry.if.end62_crit_edge
  %base.i642 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 4
  %55 = ptrtoint ptr %base.i642 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i642, align 4
  %57 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev_comp, align 8
  %regs.i644 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %regs.i644 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs.i644, align 4
  %arrayidx.i645 = getelementptr i16, ptr %60, i32 4
  %61 = ptrtoint ptr %arrayidx.i645 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %arrayidx.i645, align 2
  %conv.i646 = zext i16 %62 to i32
  %add.ptr.i647 = getelementptr i8, ptr %56, i32 %conv.i646
  %63 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i647) #8, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %64 = and i16 %63, -4609
  %65 = tail call i16 @llvm.bswap.i16(i16 %64)
  %speed_hz = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 14
  %66 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %speed_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %67)
  %cmp67 = icmp ugt i32 %67, 1000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %left_num)
  %cmp69 = icmp sgt i32 %left_num, 0
  %or.cond617 = or i1 %cmp69, %cmp67
  %68 = or i16 %65, 2
  %control_reg.0 = select i1 %or.cond617, i16 %68, i16 %65
  %op75 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 15
  %69 = ptrtoint ptr %op75 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %op75, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %70)
  %cmp76 = icmp eq i32 %70, 3
  %71 = or i16 %control_reg.0, 18
  %control_reg.1 = select i1 %cmp76, i16 %71, i16 %control_reg.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %72 = tail call i16 @llvm.bswap.i16(i16 %control_reg.1) #8
  %73 = ptrtoint ptr %base.i642 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base.i642, align 4
  %75 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev_comp, align 8
  %regs.i650 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %regs.i650 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regs.i650, align 4
  %arrayidx.i651 = getelementptr i16, ptr %78, i32 4
  %79 = ptrtoint ptr %arrayidx.i651 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %arrayidx.i651, align 2
  %conv.i652 = zext i16 %80 to i32
  %add.ptr.i653 = getelementptr i8, ptr %74, i32 %conv.i652
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i653, i16 %72) #8, !srcloc !189
  %81 = ptrtoint ptr %msgs to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %msgs, align 4
  %conv.i654 = trunc i16 %82 to i8
  %shl.i = shl i8 %conv.i654, 1
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %83 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %flags.i, align 2
  %85 = trunc i16 %84 to i8
  %86 = and i8 %85, 1
  %or.i = or i8 %86, %shl.i
  %conv84 = zext i8 %or.i to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %87 = shl nuw i16 %conv84, 8
  %88 = ptrtoint ptr %base.i642 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base.i642, align 4
  %90 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev_comp, align 8
  %regs.i657 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %regs.i657 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs.i657, align 4
  %arrayidx.i658 = getelementptr i16, ptr %93, i32 1
  %94 = ptrtoint ptr %arrayidx.i658 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %arrayidx.i658, align 2
  %conv.i659 = zext i16 %95 to i32
  %add.ptr.i660 = getelementptr i8, ptr %89, i32 %conv.i659
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i660, i16 %87) #8, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %96 = shl nuw nsw i16 %spec.select, 8
  %97 = ptrtoint ptr %base.i642 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %base.i642, align 4
  %99 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev_comp, align 8
  %regs.i663 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %regs.i663 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regs.i663, align 4
  %arrayidx.i664 = getelementptr i16, ptr %102, i32 3
  %103 = ptrtoint ptr %arrayidx.i664 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %arrayidx.i664, align 2
  %conv.i665 = zext i16 %104 to i32
  %add.ptr.i666 = getelementptr i8, ptr %98, i32 %conv.i665
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i666, i16 %96) #8, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %105 = ptrtoint ptr %base.i642 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %base.i642, align 4
  %107 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev_comp, align 8
  %regs.i669 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %regs.i669 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %regs.i669, align 4
  %arrayidx.i670 = getelementptr i16, ptr %110, i32 13
  %111 = ptrtoint ptr %arrayidx.i670 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %arrayidx.i670, align 2
  %conv.i671 = zext i16 %112 to i32
  %add.ptr.i672 = getelementptr i8, ptr %106, i32 %conv.i671
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i672, i16 256) #8, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %113 = ptrtoint ptr %base.i642 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %base.i642, align 4
  %115 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev_comp, align 8
  %regs.i675 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %regs.i675 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %regs.i675, align 4
  %arrayidx.i676 = getelementptr i16, ptr %118, i32 2
  %119 = ptrtoint ptr %arrayidx.i676 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %arrayidx.i676, align 2
  %conv.i677 = zext i16 %120 to i32
  %add.ptr.i678 = getelementptr i8, ptr %114, i32 %conv.i677
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i678, i16 %96) #8, !srcloc !189
  %121 = ptrtoint ptr %op75 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %op75, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %122)
  %cmp98 = icmp eq i32 %122, 3
  br i1 %cmp98, label %if.then100, label %if.else116

if.then100:                                       ; preds = %if.end62
  %123 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev_comp, align 8
  %aux_len_reg = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %124, i32 0, i32 2
  %125 = ptrtoint ptr %aux_len_reg to i32
  call void @__asan_load1_noabort(i32 %125)
  %bf.load102 = load i8, ptr %aux_len_reg, align 4
  %126 = and i8 %bf.load102, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool104.not = icmp eq i8 %126, 0
  %len108 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %127 = ptrtoint ptr %len108 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %len108, align 4
  br i1 %tobool104.not, label %if.else, label %if.then105

if.then105:                                       ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %129 = tail call i16 @llvm.bswap.i16(i16 %128) #8
  %130 = ptrtoint ptr %base.i642 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %base.i642, align 4
  %132 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev_comp, align 8
  %regs.i681 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %regs.i681 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %regs.i681, align 4
  %arrayidx.i682 = getelementptr i16, ptr %135, i32 5
  %136 = ptrtoint ptr %arrayidx.i682 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %arrayidx.i682, align 2
  %conv.i683 = zext i16 %137 to i32
  %add.ptr.i684 = getelementptr i8, ptr %131, i32 %conv.i683
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i684, i16 %129) #8, !srcloc !189
  %len107 = getelementptr %struct.i2c_msg, ptr %msgs, i32 1, i32 2
  %138 = ptrtoint ptr %len107 to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %len107, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %140 = tail call i16 @llvm.bswap.i16(i16 %139) #8
  %141 = ptrtoint ptr %base.i642 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %base.i642, align 4
  %143 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dev_comp, align 8
  %regs.i687 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %regs.i687 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %regs.i687, align 4
  %arrayidx.i688 = getelementptr i16, ptr %146, i32 23
  %147 = ptrtoint ptr %arrayidx.i688 to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %arrayidx.i688, align 2
  %conv.i689 = zext i16 %148 to i32
  %add.ptr.i690 = getelementptr i8, ptr %142, i32 %conv.i689
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i690, i16 %140) #8, !srcloc !189
  br label %if.end115

if.else:                                          ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #10
  %len111 = getelementptr %struct.i2c_msg, ptr %msgs, i32 1, i32 2
  %149 = ptrtoint ptr %len111 to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %len111, align 4
  %shl = shl i16 %150, 8
  %or113 = or i16 %shl, %128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %151 = tail call i16 @llvm.bswap.i16(i16 %or113) #8
  %152 = ptrtoint ptr %base.i642 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %base.i642, align 4
  %154 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %dev_comp, align 8
  %regs.i693 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %155, i32 0, i32 1
  %156 = ptrtoint ptr %regs.i693 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %regs.i693, align 4
  %arrayidx.i694 = getelementptr i16, ptr %157, i32 5
  %158 = ptrtoint ptr %arrayidx.i694 to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %arrayidx.i694, align 2
  %conv.i695 = zext i16 %159 to i32
  %add.ptr.i696 = getelementptr i8, ptr %153, i32 %conv.i695
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i696, i16 %151) #8, !srcloc !189
  br label %if.end115

if.end115:                                        ; preds = %if.else, %if.then105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %160 = ptrtoint ptr %base.i642 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %base.i642, align 4
  %162 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %dev_comp, align 8
  %regs.i699 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %regs.i699 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %regs.i699, align 4
  %arrayidx.i700 = getelementptr i16, ptr %165, i32 6
  %166 = ptrtoint ptr %arrayidx.i700 to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %arrayidx.i700, align 2
  %conv.i701 = zext i16 %167 to i32
  %add.ptr.i702 = getelementptr i8, ptr %161, i32 %conv.i701
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i702, i16 512) #8, !srcloc !189
  br label %if.end119

if.else116:                                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  %len117 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %168 = ptrtoint ptr %len117 to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %len117, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %170 = tail call i16 @llvm.bswap.i16(i16 %169) #8
  %171 = ptrtoint ptr %base.i642 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %base.i642, align 4
  %173 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %dev_comp, align 8
  %regs.i705 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %174, i32 0, i32 1
  %175 = ptrtoint ptr %regs.i705 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %regs.i705, align 4
  %arrayidx.i706 = getelementptr i16, ptr %176, i32 5
  %177 = ptrtoint ptr %arrayidx.i706 to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %arrayidx.i706, align 2
  %conv.i707 = zext i16 %178 to i32
  %add.ptr.i708 = getelementptr i8, ptr %172, i32 %conv.i707
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i708, i16 %170) #8, !srcloc !189
  %conv118 = trunc i32 %num to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %179 = tail call i16 @llvm.bswap.i16(i16 %conv118) #8
  %180 = ptrtoint ptr %base.i642 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %base.i642, align 4
  %182 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %dev_comp, align 8
  %regs.i711 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %183, i32 0, i32 1
  %184 = ptrtoint ptr %regs.i711 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %regs.i711, align 4
  %arrayidx.i712 = getelementptr i16, ptr %185, i32 6
  %186 = ptrtoint ptr %arrayidx.i712 to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %arrayidx.i712, align 2
  %conv.i713 = zext i16 %187 to i32
  %add.ptr.i714 = getelementptr i8, ptr %181, i32 %conv.i713
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i714, i16 %179) #8, !srcloc !189
  br label %if.end119

if.end119:                                        ; preds = %if.else116, %if.end115
  %188 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %dev_comp, align 8
  %apdma_sync121 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %189, i32 0, i32 2
  %190 = ptrtoint ptr %apdma_sync121 to i32
  call void @__asan_load1_noabort(i32 %190)
  %bf.load122 = load i8, ptr %apdma_sync121, align 4
  %bf.clear123 = and i8 %bf.load122, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear123)
  %tobool124.not = icmp eq i8 %bf.clear123, 0
  %191 = ptrtoint ptr %op75 to i32
  call void @__asan_load4_noabort(i32 %191)
  %.pr = load i32, ptr %op75, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr)
  %cmp127 = icmp eq i32 %.pr, 3
  %spec.select618 = select i1 %cmp127, i32 532, i32 20
  %dma_sync.0 = select i1 %tobool124.not, i32 0, i32 %spec.select618
  %192 = zext i32 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %192, ptr @__sancov_gen_cov_switch_values)
  switch i32 %.pr, label %do.body246 [
    i32 2, label %do.body139
    i32 1, label %do.body194
  ]

do.body139:                                       ; preds = %if.end119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !202
  tail call void @arm_heavy_mb() #8
  %pdmabase142 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 5
  %193 = ptrtoint ptr %pdmabase142 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %pdmabase142, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %194, i32 0) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !203
  tail call void @arm_heavy_mb() #8
  %or148 = or i32 %dma_sync.0, 1
  %195 = tail call i32 @llvm.bswap.i32(i32 %or148)
  %196 = ptrtoint ptr %pdmabase142 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %pdmabase142, align 8
  %add.ptr150 = getelementptr i8, ptr %197, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr150, i32 %195) #8, !srcloc !192
  %call151 = tail call ptr @i2c_get_dma_safe_msg_buf(ptr noundef %msgs, i32 noundef 1) #8
  %tobool152.not = icmp eq ptr %call151, null
  br i1 %tobool152.not, label %do.body139.cleanup_crit_edge, label %if.end154

do.body139.cleanup_crit_edge:                     ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end154:                                        ; preds = %do.body139
  %dev155 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 1
  %198 = ptrtoint ptr %dev155 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %dev155, align 8
  %len156 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %200 = ptrtoint ptr %len156 to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %len156, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call151) #8
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end154
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !204

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %199) #8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %199, i32 0, i32 3
  %202 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %203, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %204 = ptrtoint ptr %199 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %199, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %205, %if.end.i.i ], [ %203, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.38, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #8
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %206 = ptrtoint ptr %dev155 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %dev155, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %207, i32 noundef -1) #8
  br label %if.then162

dma_map_single_attrs.exit:                        ; preds = %if.end154
  %conv157 = zext i16 %201 to i32
  tail call void @debug_dma_map_single(ptr noundef %199, ptr noundef nonnull %call151, i32 noundef %conv157) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %208 = load ptr, ptr @mem_map, align 4
  %209 = ptrtoint ptr %call151 to i32
  %sub.i = add i32 %209, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i715 = getelementptr %struct.page, ptr %208, i32 %shr.i
  %and.i = and i32 %209, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %199, ptr noundef %add.ptr.i715, i32 noundef %and.i, i32 noundef %conv157, i32 noundef 2, i32 noundef 0) #8
  %210 = ptrtoint ptr %dev155 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %dev155, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %211, i32 noundef %call41.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i717 = icmp eq i32 %call41.i, -1
  br i1 %cmp.i717, label %dma_map_single_attrs.exit.if.then162_crit_edge, label %if.end163

dma_map_single_attrs.exit.if.then162_crit_edge:   ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then162

if.then162:                                       ; preds = %dma_map_single_attrs.exit.if.then162_crit_edge, %dma_map_single_attrs.exit.thread
  tail call void @i2c_put_dma_safe_msg_buf(ptr noundef nonnull %call151, ptr noundef %msgs, i1 noundef zeroext false) #8
  br label %cleanup

if.end163:                                        ; preds = %dma_map_single_attrs.exit
  %212 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %dev_comp, align 8
  %max_dma_support = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %213, i32 0, i32 3
  %214 = ptrtoint ptr %max_dma_support to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %max_dma_support, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %215)
  %cmp166 = icmp ugt i8 %215, 32
  br i1 %cmp166, label %if.then168, label %if.end163.do.body177_crit_edge

if.end163.do.body177_crit_edge:                   ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body177

if.then168:                                       ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !205
  tail call void @arm_heavy_mb() #8
  %216 = ptrtoint ptr %pdmabase142 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %pdmabase142, align 8
  %add.ptr175 = getelementptr i8, ptr %217, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr175, i32 0) #8, !srcloc !192
  br label %do.body177

do.body177:                                       ; preds = %if.then168, %if.end163.do.body177_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !206
  tail call void @arm_heavy_mb() #8
  %218 = tail call i32 @llvm.bswap.i32(i32 %call41.i)
  %219 = ptrtoint ptr %pdmabase142 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %pdmabase142, align 8
  %add.ptr181 = getelementptr i8, ptr %220, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr181, i32 %218) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !207
  tail call void @arm_heavy_mb() #8
  %221 = ptrtoint ptr %len156 to i32
  call void @__asan_load2_noabort(i32 %221)
  %222 = load i16, ptr %len156, align 4
  %conv186 = zext i16 %222 to i32
  %223 = tail call i32 @llvm.bswap.i32(i32 %conv186)
  %224 = ptrtoint ptr %pdmabase142 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %pdmabase142, align 8
  %add.ptr188 = getelementptr i8, ptr %225, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr188, i32 %223) #8, !srcloc !192
  br label %do.body341

do.body194:                                       ; preds = %if.end119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !208
  tail call void @arm_heavy_mb() #8
  %pdmabase197 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 5
  %226 = ptrtoint ptr %pdmabase197 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %pdmabase197, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %227, i32 0) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !209
  tail call void @arm_heavy_mb() #8
  %228 = tail call i32 @llvm.bswap.i32(i32 %dma_sync.0)
  %229 = ptrtoint ptr %pdmabase197 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %pdmabase197, align 8
  %add.ptr205 = getelementptr i8, ptr %230, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr205, i32 %228) #8, !srcloc !192
  %call206 = tail call ptr @i2c_get_dma_safe_msg_buf(ptr noundef %msgs, i32 noundef 1) #8
  %tobool207.not = icmp eq ptr %call206, null
  br i1 %tobool207.not, label %do.body194.cleanup_crit_edge, label %if.end209

do.body194.cleanup_crit_edge:                     ; preds = %do.body194
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end209:                                        ; preds = %do.body194
  %dev210 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 1
  %231 = ptrtoint ptr %dev210 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %dev210, align 8
  %len211 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %233 = ptrtoint ptr %len211 to i32
  call void @__asan_load2_noabort(i32 %233)
  %234 = load i16, ptr %len211, align 4
  %call.i719 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call206) #8
  br i1 %call.i719, label %land.rhs.i721, label %dma_map_single_attrs.exit736

land.rhs.i721:                                    ; preds = %if.end209
  %.b1.i720 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i720, label %land.rhs.i721.dma_map_single_attrs.exit736.thread_crit_edge, label %if.then.i725, !prof !204

land.rhs.i721.dma_map_single_attrs.exit736.thread_crit_edge: ; preds = %land.rhs.i721
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit736.thread

if.then.i725:                                     ; preds = %land.rhs.i721
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i722 = tail call ptr @dev_driver_string(ptr noundef %232) #8
  %init_name.i.i723 = getelementptr inbounds %struct.device, ptr %232, i32 0, i32 3
  %235 = ptrtoint ptr %init_name.i.i723 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %init_name.i.i723, align 8
  %tobool.not.i.i724 = icmp eq ptr %236, null
  br i1 %tobool.not.i.i724, label %if.end.i.i726, label %if.then.i725.dev_name.exit.i728_crit_edge

if.then.i725.dev_name.exit.i728_crit_edge:        ; preds = %if.then.i725
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i728

if.end.i.i726:                                    ; preds = %if.then.i725
  call void @__sanitizer_cov_trace_pc() #10
  %237 = ptrtoint ptr %232 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %232, align 4
  br label %dev_name.exit.i728

dev_name.exit.i728:                               ; preds = %if.end.i.i726, %if.then.i725.dev_name.exit.i728_crit_edge
  %retval.0.i.i727 = phi ptr [ %238, %if.end.i.i726 ], [ %236, %if.then.i725.dev_name.exit.i728_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.38, ptr noundef %call16.i722, ptr noundef %retval.0.i.i727) #8
  br label %dma_map_single_attrs.exit736.thread

dma_map_single_attrs.exit736.thread:              ; preds = %dev_name.exit.i728, %land.rhs.i721.dma_map_single_attrs.exit736.thread_crit_edge
  %239 = ptrtoint ptr %dev210 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %dev210, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %240, i32 noundef -1) #8
  br label %if.then217

dma_map_single_attrs.exit736:                     ; preds = %if.end209
  %conv212 = zext i16 %234 to i32
  tail call void @debug_dma_map_single(ptr noundef %232, ptr noundef nonnull %call206, i32 noundef %conv212) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %241 = load ptr, ptr @mem_map, align 4
  %242 = ptrtoint ptr %call206 to i32
  %sub.i729 = add i32 %242, 1073741824
  %shr.i730 = lshr i32 %sub.i729, 12
  %add.ptr.i731 = getelementptr %struct.page, ptr %241, i32 %shr.i730
  %and.i732 = and i32 %242, 4095
  %call41.i733 = tail call i32 @dma_map_page_attrs(ptr noundef %232, ptr noundef %add.ptr.i731, i32 noundef %and.i732, i32 noundef %conv212, i32 noundef 1, i32 noundef 0) #8
  %243 = ptrtoint ptr %dev210 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %dev210, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %244, i32 noundef %call41.i733) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i733)
  %cmp.i737 = icmp eq i32 %call41.i733, -1
  br i1 %cmp.i737, label %dma_map_single_attrs.exit736.if.then217_crit_edge, label %if.end218

dma_map_single_attrs.exit736.if.then217_crit_edge: ; preds = %dma_map_single_attrs.exit736
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then217

if.then217:                                       ; preds = %dma_map_single_attrs.exit736.if.then217_crit_edge, %dma_map_single_attrs.exit736.thread
  tail call void @i2c_put_dma_safe_msg_buf(ptr noundef nonnull %call206, ptr noundef %msgs, i1 noundef zeroext false) #8
  br label %cleanup

if.end218:                                        ; preds = %dma_map_single_attrs.exit736
  %245 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %dev_comp, align 8
  %max_dma_support220 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %246, i32 0, i32 3
  %247 = ptrtoint ptr %max_dma_support220 to i32
  call void @__asan_load1_noabort(i32 %247)
  %248 = load i8, ptr %max_dma_support220, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %248)
  %cmp222 = icmp ugt i8 %248, 32
  br i1 %cmp222, label %if.then224, label %if.end218.do.body233_crit_edge

if.end218.do.body233_crit_edge:                   ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body233

if.then224:                                       ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !210
  tail call void @arm_heavy_mb() #8
  %249 = ptrtoint ptr %pdmabase197 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %pdmabase197, align 8
  %add.ptr231 = getelementptr i8, ptr %250, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr231, i32 0) #8, !srcloc !192
  br label %do.body233

do.body233:                                       ; preds = %if.then224, %if.end218.do.body233_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !211
  tail call void @arm_heavy_mb() #8
  %251 = tail call i32 @llvm.bswap.i32(i32 %call41.i733)
  %252 = ptrtoint ptr %pdmabase197 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %pdmabase197, align 8
  %add.ptr237 = getelementptr i8, ptr %253, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr237, i32 %251) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !212
  tail call void @arm_heavy_mb() #8
  %254 = ptrtoint ptr %len211 to i32
  call void @__asan_load2_noabort(i32 %254)
  %255 = load i16, ptr %len211, align 4
  %conv242 = zext i16 %255 to i32
  %256 = tail call i32 @llvm.bswap.i32(i32 %conv242)
  %257 = ptrtoint ptr %pdmabase197 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %pdmabase197, align 8
  %add.ptr244 = getelementptr i8, ptr %258, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr244, i32 %256) #8, !srcloc !192
  br label %do.body341

do.body246:                                       ; preds = %if.end119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !213
  tail call void @arm_heavy_mb() #8
  %pdmabase249 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 5
  %259 = ptrtoint ptr %pdmabase249 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %pdmabase249, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %260, i32 0) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !214
  tail call void @arm_heavy_mb() #8
  %261 = tail call i32 @llvm.bswap.i32(i32 %dma_sync.0)
  %262 = ptrtoint ptr %pdmabase249 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %pdmabase249, align 8
  %add.ptr257 = getelementptr i8, ptr %263, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr257, i32 %261) #8, !srcloc !192
  %call258 = tail call ptr @i2c_get_dma_safe_msg_buf(ptr noundef %msgs, i32 noundef 1) #8
  %tobool259.not = icmp eq ptr %call258, null
  br i1 %tobool259.not, label %do.body246.cleanup_crit_edge, label %if.end261

do.body246.cleanup_crit_edge:                     ; preds = %do.body246
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end261:                                        ; preds = %do.body246
  %dev262 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 1
  %264 = ptrtoint ptr %dev262 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %dev262, align 8
  %len263 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %266 = ptrtoint ptr %len263 to i32
  call void @__asan_load2_noabort(i32 %266)
  %267 = load i16, ptr %len263, align 4
  %call.i739 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call258) #8
  br i1 %call.i739, label %land.rhs.i741, label %dma_map_single_attrs.exit756

land.rhs.i741:                                    ; preds = %if.end261
  %.b1.i740 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i740, label %land.rhs.i741.dma_map_single_attrs.exit756.thread_crit_edge, label %if.then.i745, !prof !204

land.rhs.i741.dma_map_single_attrs.exit756.thread_crit_edge: ; preds = %land.rhs.i741
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit756.thread

if.then.i745:                                     ; preds = %land.rhs.i741
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i742 = tail call ptr @dev_driver_string(ptr noundef %265) #8
  %init_name.i.i743 = getelementptr inbounds %struct.device, ptr %265, i32 0, i32 3
  %268 = ptrtoint ptr %init_name.i.i743 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %init_name.i.i743, align 8
  %tobool.not.i.i744 = icmp eq ptr %269, null
  br i1 %tobool.not.i.i744, label %if.end.i.i746, label %if.then.i745.dev_name.exit.i748_crit_edge

if.then.i745.dev_name.exit.i748_crit_edge:        ; preds = %if.then.i745
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i748

if.end.i.i746:                                    ; preds = %if.then.i745
  call void @__sanitizer_cov_trace_pc() #10
  %270 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %265, align 4
  br label %dev_name.exit.i748

dev_name.exit.i748:                               ; preds = %if.end.i.i746, %if.then.i745.dev_name.exit.i748_crit_edge
  %retval.0.i.i747 = phi ptr [ %271, %if.end.i.i746 ], [ %269, %if.then.i745.dev_name.exit.i748_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.38, ptr noundef %call16.i742, ptr noundef %retval.0.i.i747) #8
  br label %dma_map_single_attrs.exit756.thread

dma_map_single_attrs.exit756.thread:              ; preds = %dev_name.exit.i748, %land.rhs.i741.dma_map_single_attrs.exit756.thread_crit_edge
  %272 = ptrtoint ptr %dev262 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %dev262, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %273, i32 noundef -1) #8
  br label %if.then269

dma_map_single_attrs.exit756:                     ; preds = %if.end261
  %conv264 = zext i16 %267 to i32
  tail call void @debug_dma_map_single(ptr noundef %265, ptr noundef nonnull %call258, i32 noundef %conv264) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %274 = load ptr, ptr @mem_map, align 4
  %275 = ptrtoint ptr %call258 to i32
  %sub.i749 = add i32 %275, 1073741824
  %shr.i750 = lshr i32 %sub.i749, 12
  %add.ptr.i751 = getelementptr %struct.page, ptr %274, i32 %shr.i750
  %and.i752 = and i32 %275, 4095
  %call41.i753 = tail call i32 @dma_map_page_attrs(ptr noundef %265, ptr noundef %add.ptr.i751, i32 noundef %and.i752, i32 noundef %conv264, i32 noundef 1, i32 noundef 0) #8
  %276 = ptrtoint ptr %dev262 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %dev262, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %277, i32 noundef %call41.i753) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i753)
  %cmp.i757 = icmp eq i32 %call41.i753, -1
  br i1 %cmp.i757, label %dma_map_single_attrs.exit756.if.then269_crit_edge, label %if.end270

dma_map_single_attrs.exit756.if.then269_crit_edge: ; preds = %dma_map_single_attrs.exit756
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then269

if.then269:                                       ; preds = %dma_map_single_attrs.exit756.if.then269_crit_edge, %dma_map_single_attrs.exit756.thread
  tail call void @i2c_put_dma_safe_msg_buf(ptr noundef nonnull %call258, ptr noundef %msgs, i1 noundef zeroext false) #8
  br label %cleanup

if.end270:                                        ; preds = %dma_map_single_attrs.exit756
  %add.ptr271 = getelementptr %struct.i2c_msg, ptr %msgs, i32 1
  %call272 = tail call ptr @i2c_get_dma_safe_msg_buf(ptr noundef %add.ptr271, i32 noundef 1) #8
  %tobool273.not = icmp eq ptr %call272, null
  %278 = ptrtoint ptr %dev262 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %dev262, align 8
  br i1 %tobool273.not, label %if.then274, label %if.end278

if.then274:                                       ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #10
  %280 = ptrtoint ptr %len263 to i32
  call void @__asan_load2_noabort(i32 %280)
  %281 = load i16, ptr %len263, align 4
  %conv277 = zext i16 %281 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %279, i32 noundef %call41.i753, i32 noundef %conv277, i32 noundef 1, i32 noundef 0) #8
  tail call void @i2c_put_dma_safe_msg_buf(ptr noundef nonnull %call258, ptr noundef %msgs, i1 noundef zeroext false) #8
  br label %cleanup

if.end278:                                        ; preds = %if.end270
  %len281 = getelementptr %struct.i2c_msg, ptr %msgs, i32 1, i32 2
  %282 = ptrtoint ptr %len281 to i32
  call void @__asan_load2_noabort(i32 %282)
  %283 = load i16, ptr %len281, align 4
  %call.i759 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call272) #8
  br i1 %call.i759, label %land.rhs.i761, label %dma_map_single_attrs.exit776

land.rhs.i761:                                    ; preds = %if.end278
  %.b1.i760 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i760, label %land.rhs.i761.dma_map_single_attrs.exit776.thread_crit_edge, label %if.then.i765, !prof !204

land.rhs.i761.dma_map_single_attrs.exit776.thread_crit_edge: ; preds = %land.rhs.i761
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit776.thread

if.then.i765:                                     ; preds = %land.rhs.i761
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i762 = tail call ptr @dev_driver_string(ptr noundef %279) #8
  %init_name.i.i763 = getelementptr inbounds %struct.device, ptr %279, i32 0, i32 3
  %284 = ptrtoint ptr %init_name.i.i763 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %init_name.i.i763, align 8
  %tobool.not.i.i764 = icmp eq ptr %285, null
  br i1 %tobool.not.i.i764, label %if.end.i.i766, label %if.then.i765.dev_name.exit.i768_crit_edge

if.then.i765.dev_name.exit.i768_crit_edge:        ; preds = %if.then.i765
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i768

if.end.i.i766:                                    ; preds = %if.then.i765
  call void @__sanitizer_cov_trace_pc() #10
  %286 = ptrtoint ptr %279 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %279, align 4
  br label %dev_name.exit.i768

dev_name.exit.i768:                               ; preds = %if.end.i.i766, %if.then.i765.dev_name.exit.i768_crit_edge
  %retval.0.i.i767 = phi ptr [ %287, %if.end.i.i766 ], [ %285, %if.then.i765.dev_name.exit.i768_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.38, ptr noundef %call16.i762, ptr noundef %retval.0.i.i767) #8
  br label %dma_map_single_attrs.exit776.thread

dma_map_single_attrs.exit776.thread:              ; preds = %dev_name.exit.i768, %land.rhs.i761.dma_map_single_attrs.exit776.thread_crit_edge
  %288 = ptrtoint ptr %dev262 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %dev262, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %289, i32 noundef -1) #8
  br label %if.then287

dma_map_single_attrs.exit776:                     ; preds = %if.end278
  %conv282 = zext i16 %283 to i32
  tail call void @debug_dma_map_single(ptr noundef %279, ptr noundef nonnull %call272, i32 noundef %conv282) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %290 = load ptr, ptr @mem_map, align 4
  %291 = ptrtoint ptr %call272 to i32
  %sub.i769 = add i32 %291, 1073741824
  %shr.i770 = lshr i32 %sub.i769, 12
  %add.ptr.i771 = getelementptr %struct.page, ptr %290, i32 %shr.i770
  %and.i772 = and i32 %291, 4095
  %call41.i773 = tail call i32 @dma_map_page_attrs(ptr noundef %279, ptr noundef %add.ptr.i771, i32 noundef %and.i772, i32 noundef %conv282, i32 noundef 2, i32 noundef 0) #8
  %292 = ptrtoint ptr %dev262 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %dev262, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %293, i32 noundef %call41.i773) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i773)
  %cmp.i777 = icmp eq i32 %call41.i773, -1
  br i1 %cmp.i777, label %dma_map_single_attrs.exit776.if.then287_crit_edge, label %if.end292

dma_map_single_attrs.exit776.if.then287_crit_edge: ; preds = %dma_map_single_attrs.exit776
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then287

if.then287:                                       ; preds = %dma_map_single_attrs.exit776.if.then287_crit_edge, %dma_map_single_attrs.exit776.thread
  %294 = ptrtoint ptr %dev262 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %dev262, align 8
  %296 = ptrtoint ptr %len263 to i32
  call void @__asan_load2_noabort(i32 %296)
  %297 = load i16, ptr %len263, align 4
  %conv290 = zext i16 %297 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %295, i32 noundef %call41.i753, i32 noundef %conv290, i32 noundef 1, i32 noundef 0) #8
  tail call void @i2c_put_dma_safe_msg_buf(ptr noundef nonnull %call258, ptr noundef %msgs, i1 noundef zeroext false) #8
  tail call void @i2c_put_dma_safe_msg_buf(ptr noundef nonnull %call272, ptr noundef %add.ptr271, i1 noundef zeroext false) #8
  br label %cleanup

if.end292:                                        ; preds = %dma_map_single_attrs.exit776
  %298 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %dev_comp, align 8
  %max_dma_support294 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %299, i32 0, i32 3
  %300 = ptrtoint ptr %max_dma_support294 to i32
  call void @__asan_load1_noabort(i32 %300)
  %301 = load i8, ptr %max_dma_support294, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %301)
  %cmp296 = icmp ugt i8 %301, 32
  br i1 %cmp296, label %if.then298, label %if.end292.do.body314_crit_edge

if.end292.do.body314_crit_edge:                   ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body314

if.then298:                                       ; preds = %if.end292
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !215
  tail call void @arm_heavy_mb() #8
  %302 = ptrtoint ptr %pdmabase249 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %pdmabase249, align 8
  %add.ptr305 = getelementptr i8, ptr %303, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr305, i32 0) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !216
  tail call void @arm_heavy_mb() #8
  %304 = ptrtoint ptr %pdmabase249 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %pdmabase249, align 8
  %add.ptr312 = getelementptr i8, ptr %305, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr312, i32 0) #8, !srcloc !192
  br label %do.body314

do.body314:                                       ; preds = %if.then298, %if.end292.do.body314_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !217
  tail call void @arm_heavy_mb() #8
  %306 = tail call i32 @llvm.bswap.i32(i32 %call41.i753)
  %307 = ptrtoint ptr %pdmabase249 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %pdmabase249, align 8
  %add.ptr318 = getelementptr i8, ptr %308, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr318, i32 %306) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !218
  tail call void @arm_heavy_mb() #8
  %309 = tail call i32 @llvm.bswap.i32(i32 %call41.i773)
  %310 = ptrtoint ptr %pdmabase249 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %pdmabase249, align 8
  %add.ptr323 = getelementptr i8, ptr %311, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr323, i32 %309) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !219
  tail call void @arm_heavy_mb() #8
  %312 = ptrtoint ptr %len263 to i32
  call void @__asan_load2_noabort(i32 %312)
  %313 = load i16, ptr %len263, align 4
  %conv328 = zext i16 %313 to i32
  %314 = tail call i32 @llvm.bswap.i32(i32 %conv328)
  %315 = ptrtoint ptr %pdmabase249 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %pdmabase249, align 8
  %add.ptr330 = getelementptr i8, ptr %316, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr330, i32 %314) #8, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !220
  tail call void @arm_heavy_mb() #8
  %317 = ptrtoint ptr %len281 to i32
  call void @__asan_load2_noabort(i32 %317)
  %318 = load i16, ptr %len281, align 4
  %conv336 = zext i16 %318 to i32
  %319 = tail call i32 @llvm.bswap.i32(i32 %conv336)
  %320 = ptrtoint ptr %pdmabase249 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %pdmabase249, align 8
  %add.ptr338 = getelementptr i8, ptr %321, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr338, i32 %319) #8, !srcloc !192
  br label %do.body341

do.body341:                                       ; preds = %do.body314, %do.body233, %do.body177
  %wpaddr.0 = phi i32 [ 0, %do.body177 ], [ %call41.i733, %do.body233 ], [ %call41.i753, %do.body314 ]
  %rpaddr.0 = phi i32 [ %call41.i, %do.body177 ], [ 0, %do.body233 ], [ %call41.i773, %do.body314 ]
  %dma_wr_buf.0 = phi ptr [ null, %do.body177 ], [ %call206, %do.body233 ], [ %call258, %do.body314 ]
  %dma_rd_buf.0 = phi ptr [ %call151, %do.body177 ], [ null, %do.body233 ], [ %call272, %do.body314 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !221
  tail call void @arm_heavy_mb() #8
  %pdmabase344 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 5
  %322 = ptrtoint ptr %pdmabase344 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %pdmabase344, align 8
  %add.ptr345 = getelementptr i8, ptr %323, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr345, i32 16777216) #8, !srcloc !192
  %324 = ptrtoint ptr %auto_restart to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %auto_restart, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %325)
  %tobool347.not = icmp eq i8 %325, 0
  %spec.select619 = select i1 %cmp69, i16 -16383, i16 16385
  %start_reg.0 = select i1 %tobool347.not, i16 1, i16 %spec.select619
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %326 = tail call i16 @llvm.bswap.i16(i16 %start_reg.0) #8
  %327 = ptrtoint ptr %base.i642 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %base.i642, align 4
  %329 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %dev_comp, align 8
  %regs.i781 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %330, i32 0, i32 1
  %331 = ptrtoint ptr %regs.i781 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %regs.i781, align 4
  %arrayidx.i782 = getelementptr i16, ptr %332, i32 9
  %333 = ptrtoint ptr %arrayidx.i782 to i32
  call void @__asan_load2_noabort(i32 %333)
  %334 = load i16, ptr %arrayidx.i782, align 2
  %conv.i783 = zext i16 %334 to i32
  %add.ptr.i784 = getelementptr i8, ptr %328, i32 %conv.i783
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i784, i16 %326) #8, !srcloc !189
  %timeout = getelementptr inbounds %struct.i2c_adapter, ptr %i2c, i32 0, i32 7
  %335 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %timeout, align 4
  %call359 = tail call i32 @wait_for_completion_timeout(ptr noundef %msg_complete, i32 noundef %336) #8
  %conv365 = xor i16 %spec.select, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @arm_heavy_mb() #8
  %337 = tail call i16 @llvm.bswap.i16(i16 %conv365) #8
  %338 = ptrtoint ptr %base.i642 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %base.i642, align 4
  %340 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %dev_comp, align 8
  %regs.i787 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %341, i32 0, i32 1
  %342 = ptrtoint ptr %regs.i787 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %regs.i787, align 4
  %arrayidx.i788 = getelementptr i16, ptr %343, i32 2
  %344 = ptrtoint ptr %arrayidx.i788 to i32
  call void @__asan_load2_noabort(i32 %344)
  %345 = load i16, ptr %arrayidx.i788, align 2
  %conv.i789 = zext i16 %345 to i32
  %add.ptr.i790 = getelementptr i8, ptr %339, i32 %conv.i789
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i790, i16 %337) #8, !srcloc !189
  %346 = ptrtoint ptr %op75 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %op75, align 8
  %348 = zext i32 %347 to i64
  call void @__sanitizer_cov_trace_switch(i64 %348, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %347, label %if.else381 [
    i32 1, label %if.then369
    i32 2, label %if.then377
  ]

if.then369:                                       ; preds = %do.body341
  call void @__sanitizer_cov_trace_pc() #10
  %dev370 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 1
  %349 = ptrtoint ptr %dev370 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %dev370, align 8
  %len371 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %351 = ptrtoint ptr %len371 to i32
  call void @__asan_load2_noabort(i32 %351)
  %352 = load i16, ptr %len371, align 4
  %conv372 = zext i16 %352 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %350, i32 noundef %wpaddr.0, i32 noundef %conv372, i32 noundef 1, i32 noundef 0) #8
  tail call void @i2c_put_dma_safe_msg_buf(ptr noundef %dma_wr_buf.0, ptr noundef %msgs, i1 noundef zeroext true) #8
  br label %if.end391

if.then377:                                       ; preds = %do.body341
  call void @__sanitizer_cov_trace_pc() #10
  %dev378 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 1
  %353 = ptrtoint ptr %dev378 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %dev378, align 8
  %len379 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %355 = ptrtoint ptr %len379 to i32
  call void @__asan_load2_noabort(i32 %355)
  %356 = load i16, ptr %len379, align 4
  %conv380 = zext i16 %356 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %354, i32 noundef %rpaddr.0, i32 noundef %conv380, i32 noundef 2, i32 noundef 0) #8
  tail call void @i2c_put_dma_safe_msg_buf(ptr noundef %dma_rd_buf.0, ptr noundef %msgs, i1 noundef zeroext true) #8
  br label %if.end391

if.else381:                                       ; preds = %do.body341
  call void @__sanitizer_cov_trace_pc() #10
  %dev382 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 1
  %357 = ptrtoint ptr %dev382 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %dev382, align 8
  %len383 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %359 = ptrtoint ptr %len383 to i32
  call void @__asan_load2_noabort(i32 %359)
  %360 = load i16, ptr %len383, align 4
  %conv384 = zext i16 %360 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %358, i32 noundef %wpaddr.0, i32 noundef %conv384, i32 noundef 1, i32 noundef 0) #8
  %361 = ptrtoint ptr %dev382 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %dev382, align 8
  %add.ptr386 = getelementptr %struct.i2c_msg, ptr %msgs, i32 1
  %len387 = getelementptr %struct.i2c_msg, ptr %msgs, i32 1, i32 2
  %363 = ptrtoint ptr %len387 to i32
  call void @__asan_load2_noabort(i32 %363)
  %364 = load i16, ptr %len387, align 4
  %conv388 = zext i16 %364 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %362, i32 noundef %rpaddr.0, i32 noundef %conv388, i32 noundef 2, i32 noundef 0) #8
  tail call void @i2c_put_dma_safe_msg_buf(ptr noundef %dma_wr_buf.0, ptr noundef %msgs, i1 noundef zeroext true) #8
  tail call void @i2c_put_dma_safe_msg_buf(ptr noundef %dma_rd_buf.0, ptr noundef %add.ptr386, i1 noundef zeroext true) #8
  br label %if.end391

if.end391:                                        ; preds = %if.else381, %if.then377, %if.then369
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call359)
  %cmp392 = icmp eq i32 %call359, 0
  br i1 %cmp392, label %do.body395, label %if.end409

do.body395:                                       ; preds = %if.end391
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_i2c_do_transfer.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtk_i2c_do_transfer, %do.end408)) #8
          to label %if.then403 [label %do.end408], !srcloc !197

if.then403:                                       ; preds = %do.body395
  call void @__sanitizer_cov_trace_pc() #10
  %dev404 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 1
  %365 = ptrtoint ptr %dev404 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %dev404, align 8
  %367 = ptrtoint ptr %msgs to i32
  call void @__asan_load2_noabort(i32 %367)
  %368 = load i16, ptr %msgs, align 4
  %conv405 = zext i16 %368 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_i2c_do_transfer.__UNIQUE_ID_ddebug306, ptr noundef %366, ptr noundef nonnull @.str.35, i32 noundef %conv405) #8
  br label %do.end408

do.end408:                                        ; preds = %if.then403, %do.body395
  tail call fastcc void @i2c_dump_register(ptr noundef %i2c)
  tail call fastcc void @mtk_i2c_init_hw(ptr noundef %i2c)
  br label %cleanup

if.end409:                                        ; preds = %if.end391
  %369 = ptrtoint ptr %irq_stat to i32
  call void @__asan_load2_noabort(i32 %369)
  %370 = load i16, ptr %irq_stat, align 2
  %371 = and i16 %370, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %371)
  %tobool413.not = icmp eq i16 %371, 0
  br i1 %tobool413.not, label %if.end409.cleanup_crit_edge, label %do.body415

if.end409.cleanup_crit_edge:                      ; preds = %if.end409
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body415:                                       ; preds = %if.end409
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_i2c_do_transfer.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtk_i2c_do_transfer, %do.end435)) #8
          to label %if.then429 [label %do.end435], !srcloc !197

if.then429:                                       ; preds = %do.body415
  call void @__sanitizer_cov_trace_pc() #10
  %dev430 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 1
  %372 = ptrtoint ptr %dev430 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %dev430, align 8
  %374 = ptrtoint ptr %msgs to i32
  call void @__asan_load2_noabort(i32 %374)
  %375 = load i16, ptr %msgs, align 4
  %conv432 = zext i16 %375 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_i2c_do_transfer.__UNIQUE_ID_ddebug307, ptr noundef %373, ptr noundef nonnull @.str.36, i32 noundef %conv432) #8
  br label %do.end435

do.end435:                                        ; preds = %if.then429, %do.body415
  tail call fastcc void @mtk_i2c_init_hw(ptr noundef %i2c)
  br label %cleanup

cleanup:                                          ; preds = %do.end435, %if.end409.cleanup_crit_edge, %do.end408, %if.then287, %if.then274, %if.then269, %do.body246.cleanup_crit_edge, %if.then217, %do.body194.cleanup_crit_edge, %if.then162, %do.body139.cleanup_crit_edge, %do.end55
  %retval.0 = phi i32 [ -110, %do.end55 ], [ -12, %if.then162 ], [ -110, %do.end408 ], [ -6, %do.end435 ], [ -12, %if.then217 ], [ -12, %if.then269 ], [ -12, %if.then287 ], [ -12, %if.then274 ], [ -12, %do.body139.cleanup_crit_edge ], [ -12, %do.body194.cleanup_crit_edge ], [ -12, %do.body246.cleanup_crit_edge ], [ 0, %if.end409.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_get_dma_safe_msg_buf(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_put_dma_safe_msg_buf(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i2c_dump_register(ptr noundef readonly %i2c) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_dump_register.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_dump_register, %do.body7)) #8
          to label %if.then [label %do.body7], !srcloc !197

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %base.i = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 4
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %dev_comp.i = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 22
  %4 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_comp.i, align 8
  %regs.i = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %arrayidx.i = getelementptr i16, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %9 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #8, !srcloc !190
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %conv = zext i16 %11 to i32
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %14 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_comp.i, align 8
  %regs.i453 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %regs.i453 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i453, align 4
  %arrayidx.i454 = getelementptr i16, ptr %17, i32 2
  %18 = ptrtoint ptr %arrayidx.i454 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.i454, align 2
  %conv.i455 = zext i16 %19 to i32
  %add.ptr.i456 = getelementptr i8, ptr %13, i32 %conv.i455
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i456) #8, !srcloc !190
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %conv6 = zext i16 %21 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_dump_register.__UNIQUE_ID_ddebug291, ptr noundef %1, ptr noundef nonnull @.str.40, i32 noundef %conv, i32 noundef %conv6) #8
  br label %do.body7

do.body7:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_dump_register.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_dump_register, %do.body29)) #8
          to label %if.then21 [label %do.body29], !srcloc !197

if.then21:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  %dev22 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 1
  %22 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev22, align 8
  %base.i457 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 4
  %24 = ptrtoint ptr %base.i457 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i457, align 4
  %dev_comp.i458 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 22
  %26 = ptrtoint ptr %dev_comp.i458 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_comp.i458, align 8
  %regs.i459 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %regs.i459 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i459, align 4
  %arrayidx.i460 = getelementptr i16, ptr %29, i32 3
  %30 = ptrtoint ptr %arrayidx.i460 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx.i460, align 2
  %conv.i461 = zext i16 %31 to i32
  %add.ptr.i462 = getelementptr i8, ptr %25, i32 %conv.i461
  %32 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i462) #8, !srcloc !190
  %33 = tail call i16 @llvm.bswap.i16(i16 %32) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %conv24 = zext i16 %33 to i32
  %34 = ptrtoint ptr %base.i457 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i457, align 4
  %36 = ptrtoint ptr %dev_comp.i458 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_comp.i458, align 8
  %regs.i465 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %regs.i465 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i465, align 4
  %arrayidx.i466 = getelementptr i16, ptr %39, i32 4
  %40 = ptrtoint ptr %arrayidx.i466 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx.i466, align 2
  %conv.i467 = zext i16 %41 to i32
  %add.ptr.i468 = getelementptr i8, ptr %35, i32 %conv.i467
  %42 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i468) #8, !srcloc !190
  %43 = tail call i16 @llvm.bswap.i16(i16 %42) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %conv26 = zext i16 %43 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_dump_register.__UNIQUE_ID_ddebug292, ptr noundef %23, ptr noundef nonnull @.str.41, i32 noundef %conv24, i32 noundef %conv26) #8
  br label %do.body29

do.body29:                                        ; preds = %if.then21, %do.body7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_dump_register.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_dump_register, %do.body51)) #8
          to label %if.then43 [label %do.body51], !srcloc !197

if.then43:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #10
  %dev44 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 1
  %44 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev44, align 8
  %base.i469 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 4
  %46 = ptrtoint ptr %base.i469 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i469, align 4
  %dev_comp.i470 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 22
  %48 = ptrtoint ptr %dev_comp.i470 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev_comp.i470, align 8
  %regs.i471 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %regs.i471 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i471, align 4
  %arrayidx.i472 = getelementptr i16, ptr %51, i32 5
  %52 = ptrtoint ptr %arrayidx.i472 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx.i472, align 2
  %conv.i473 = zext i16 %53 to i32
  %add.ptr.i474 = getelementptr i8, ptr %47, i32 %conv.i473
  %54 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i474) #8, !srcloc !190
  %55 = tail call i16 @llvm.bswap.i16(i16 %54) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %conv46 = zext i16 %55 to i32
  %56 = ptrtoint ptr %base.i469 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base.i469, align 4
  %58 = ptrtoint ptr %dev_comp.i470 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev_comp.i470, align 8
  %regs.i477 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %regs.i477 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs.i477, align 4
  %arrayidx.i478 = getelementptr i16, ptr %61, i32 6
  %62 = ptrtoint ptr %arrayidx.i478 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx.i478, align 2
  %conv.i479 = zext i16 %63 to i32
  %add.ptr.i480 = getelementptr i8, ptr %57, i32 %conv.i479
  %64 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i480) #8, !srcloc !190
  %65 = tail call i16 @llvm.bswap.i16(i16 %64) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %conv48 = zext i16 %65 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_dump_register.__UNIQUE_ID_ddebug293, ptr noundef %45, ptr noundef nonnull @.str.42, i32 noundef %conv46, i32 noundef %conv48) #8
  br label %do.body51

do.body51:                                        ; preds = %if.then43, %do.body29
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_dump_register.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_dump_register, %do.body73)) #8
          to label %if.then65 [label %do.body73], !srcloc !197

if.then65:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #10
  %dev66 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 1
  %66 = ptrtoint ptr %dev66 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev66, align 8
  %base.i481 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 4
  %68 = ptrtoint ptr %base.i481 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base.i481, align 4
  %dev_comp.i482 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 22
  %70 = ptrtoint ptr %dev_comp.i482 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev_comp.i482, align 8
  %regs.i483 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %regs.i483 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs.i483, align 4
  %arrayidx.i484 = getelementptr i16, ptr %73, i32 7
  %74 = ptrtoint ptr %arrayidx.i484 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %arrayidx.i484, align 2
  %conv.i485 = zext i16 %75 to i32
  %add.ptr.i486 = getelementptr i8, ptr %69, i32 %conv.i485
  %76 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i486) #8, !srcloc !190
  %77 = tail call i16 @llvm.bswap.i16(i16 %76) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %conv68 = zext i16 %77 to i32
  %78 = ptrtoint ptr %base.i481 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base.i481, align 4
  %80 = ptrtoint ptr %dev_comp.i482 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev_comp.i482, align 8
  %regs.i489 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %regs.i489 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regs.i489, align 4
  %arrayidx.i490 = getelementptr i16, ptr %83, i32 8
  %84 = ptrtoint ptr %arrayidx.i490 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %arrayidx.i490, align 2
  %conv.i491 = zext i16 %85 to i32
  %add.ptr.i492 = getelementptr i8, ptr %79, i32 %conv.i491
  %86 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i492) #8, !srcloc !190
  %87 = tail call i16 @llvm.bswap.i16(i16 %86) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %conv70 = zext i16 %87 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_dump_register.__UNIQUE_ID_ddebug294, ptr noundef %67, ptr noundef nonnull @.str.43, i32 noundef %conv68, i32 noundef %conv70) #8
  br label %do.body73

do.body73:                                        ; preds = %if.then65, %do.body51
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_dump_register.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_dump_register, %do.body95)) #8
          to label %if.then87 [label %do.body95], !srcloc !197

if.then87:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #10
  %dev88 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 1
  %88 = ptrtoint ptr %dev88 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev88, align 8
  %base.i493 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 4
  %90 = ptrtoint ptr %base.i493 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base.i493, align 4
  %dev_comp.i494 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 22
  %92 = ptrtoint ptr %dev_comp.i494 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev_comp.i494, align 8
  %regs.i495 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %regs.i495 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regs.i495, align 4
  %arrayidx.i496 = getelementptr i16, ptr %95, i32 9
  %96 = ptrtoint ptr %arrayidx.i496 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %arrayidx.i496, align 2
  %conv.i497 = zext i16 %97 to i32
  %add.ptr.i498 = getelementptr i8, ptr %91, i32 %conv.i497
  %98 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i498) #8, !srcloc !190
  %99 = tail call i16 @llvm.bswap.i16(i16 %98) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %conv90 = zext i16 %99 to i32
  %100 = ptrtoint ptr %base.i493 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %base.i493, align 4
  %102 = ptrtoint ptr %dev_comp.i494 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev_comp.i494, align 8
  %regs.i501 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %regs.i501 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regs.i501, align 4
  %arrayidx.i502 = getelementptr i16, ptr %105, i32 10
  %106 = ptrtoint ptr %arrayidx.i502 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %arrayidx.i502, align 2
  %conv.i503 = zext i16 %107 to i32
  %add.ptr.i504 = getelementptr i8, ptr %101, i32 %conv.i503
  %108 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i504) #8, !srcloc !190
  %109 = tail call i16 @llvm.bswap.i16(i16 %108) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %conv92 = zext i16 %109 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_dump_register.__UNIQUE_ID_ddebug295, ptr noundef %89, ptr noundef nonnull @.str.44, i32 noundef %conv90, i32 noundef %conv92) #8
  br label %do.body95

do.body95:                                        ; preds = %if.then87, %do.body73
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_dump_register.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_dump_register, %do.body117)) #8
          to label %if.then109 [label %do.body117], !srcloc !197

if.then109:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #10
  %dev110 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 1
  %110 = ptrtoint ptr %dev110 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev110, align 8
  %base.i505 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 4
  %112 = ptrtoint ptr %base.i505 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %base.i505, align 4
  %dev_comp.i506 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 22
  %114 = ptrtoint ptr %dev_comp.i506 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev_comp.i506, align 8
  %regs.i507 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %regs.i507 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %regs.i507, align 4
  %arrayidx.i508 = getelementptr i16, ptr %117, i32 16
  %118 = ptrtoint ptr %arrayidx.i508 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %arrayidx.i508, align 2
  %conv.i509 = zext i16 %119 to i32
  %add.ptr.i510 = getelementptr i8, ptr %113, i32 %conv.i509
  %120 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i510) #8, !srcloc !190
  %121 = tail call i16 @llvm.bswap.i16(i16 %120) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %conv112 = zext i16 %121 to i32
  %122 = ptrtoint ptr %base.i505 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %base.i505, align 4
  %124 = ptrtoint ptr %dev_comp.i506 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev_comp.i506, align 8
  %regs.i513 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %regs.i513 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %regs.i513, align 4
  %arrayidx.i514 = getelementptr i16, ptr %127, i32 14
  %128 = ptrtoint ptr %arrayidx.i514 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %arrayidx.i514, align 2
  %conv.i515 = zext i16 %129 to i32
  %add.ptr.i516 = getelementptr i8, ptr %123, i32 %conv.i515
  %130 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i516) #8, !srcloc !190
  %131 = tail call i16 @llvm.bswap.i16(i16 %130) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %conv114 = zext i16 %131 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_dump_register.__UNIQUE_ID_ddebug296, ptr noundef %111, ptr noundef nonnull @.str.45, i32 noundef %conv112, i32 noundef %conv114) #8
  br label %do.body117

do.body117:                                       ; preds = %if.then109, %do.body95
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_dump_register.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_dump_register, %do.body139)) #8
          to label %if.then131 [label %do.body139], !srcloc !197

if.then131:                                       ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #10
  %dev132 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 1
  %132 = ptrtoint ptr %dev132 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev132, align 8
  %base.i517 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 4
  %134 = ptrtoint ptr %base.i517 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %base.i517, align 4
  %dev_comp.i518 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 22
  %136 = ptrtoint ptr %dev_comp.i518 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dev_comp.i518, align 8
  %regs.i519 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %137, i32 0, i32 1
  %138 = ptrtoint ptr %regs.i519 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %regs.i519, align 4
  %arrayidx.i520 = getelementptr i16, ptr %139, i32 18
  %140 = ptrtoint ptr %arrayidx.i520 to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %arrayidx.i520, align 2
  %conv.i521 = zext i16 %141 to i32
  %add.ptr.i522 = getelementptr i8, ptr %135, i32 %conv.i521
  %142 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i522) #8, !srcloc !190
  %143 = tail call i16 @llvm.bswap.i16(i16 %142) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %conv134 = zext i16 %143 to i32
  %144 = ptrtoint ptr %base.i517 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %base.i517, align 4
  %146 = ptrtoint ptr %dev_comp.i518 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dev_comp.i518, align 8
  %regs.i525 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %147, i32 0, i32 1
  %148 = ptrtoint ptr %regs.i525 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %regs.i525, align 4
  %arrayidx.i526 = getelementptr i16, ptr %149, i32 23
  %150 = ptrtoint ptr %arrayidx.i526 to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %arrayidx.i526, align 2
  %conv.i527 = zext i16 %151 to i32
  %add.ptr.i528 = getelementptr i8, ptr %145, i32 %conv.i527
  %152 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i528) #8, !srcloc !190
  %153 = tail call i16 @llvm.bswap.i16(i16 %152) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %conv136 = zext i16 %153 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_dump_register.__UNIQUE_ID_ddebug297, ptr noundef %133, ptr noundef nonnull @.str.46, i32 noundef %conv134, i32 noundef %conv136) #8
  br label %do.body139

do.body139:                                       ; preds = %if.then131, %do.body117
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_dump_register.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_dump_register, %do.body161)) #8
          to label %if.then153 [label %do.body161], !srcloc !197

if.then153:                                       ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #10
  %dev154 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 1
  %154 = ptrtoint ptr %dev154 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %dev154, align 8
  %base.i529 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 4
  %156 = ptrtoint ptr %base.i529 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %base.i529, align 4
  %dev_comp.i530 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 22
  %158 = ptrtoint ptr %dev_comp.i530 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dev_comp.i530, align 8
  %regs.i531 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %159, i32 0, i32 1
  %160 = ptrtoint ptr %regs.i531 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %regs.i531, align 4
  %arrayidx.i532 = getelementptr i16, ptr %161, i32 24
  %162 = ptrtoint ptr %arrayidx.i532 to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %arrayidx.i532, align 2
  %conv.i533 = zext i16 %163 to i32
  %add.ptr.i534 = getelementptr i8, ptr %157, i32 %conv.i533
  %164 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i534) #8, !srcloc !190
  %165 = tail call i16 @llvm.bswap.i16(i16 %164) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %conv156 = zext i16 %165 to i32
  %166 = ptrtoint ptr %base.i529 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %base.i529, align 4
  %168 = ptrtoint ptr %dev_comp.i530 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %dev_comp.i530, align 8
  %regs.i537 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %169, i32 0, i32 1
  %170 = ptrtoint ptr %regs.i537 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %regs.i537, align 4
  %arrayidx.i538 = getelementptr i16, ptr %171, i32 11
  %172 = ptrtoint ptr %arrayidx.i538 to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %arrayidx.i538, align 2
  %conv.i539 = zext i16 %173 to i32
  %add.ptr.i540 = getelementptr i8, ptr %167, i32 %conv.i539
  %174 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i540) #8, !srcloc !190
  %175 = tail call i16 @llvm.bswap.i16(i16 %174) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %conv158 = zext i16 %175 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_dump_register.__UNIQUE_ID_ddebug298, ptr noundef %155, ptr noundef nonnull @.str.47, i32 noundef %conv156, i32 noundef %conv158) #8
  br label %do.body161

do.body161:                                       ; preds = %if.then153, %do.body139
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_dump_register.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_dump_register, %do.end182)) #8
          to label %if.then175 [label %do.end182], !srcloc !197

if.then175:                                       ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #10
  %dev176 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 1
  %176 = ptrtoint ptr %dev176 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %dev176, align 8
  %base.i541 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 4
  %178 = ptrtoint ptr %base.i541 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %base.i541, align 4
  %dev_comp.i542 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 22
  %180 = ptrtoint ptr %dev_comp.i542 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %dev_comp.i542, align 8
  %regs.i543 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %181, i32 0, i32 1
  %182 = ptrtoint ptr %regs.i543 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %regs.i543, align 4
  %arrayidx.i544 = getelementptr i16, ptr %183, i32 22
  %184 = ptrtoint ptr %arrayidx.i544 to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %arrayidx.i544, align 2
  %conv.i545 = zext i16 %185 to i32
  %add.ptr.i546 = getelementptr i8, ptr %179, i32 %conv.i545
  %186 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i546) #8, !srcloc !190
  %187 = tail call i16 @llvm.bswap.i16(i16 %186) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %conv178 = zext i16 %187 to i32
  %188 = ptrtoint ptr %base.i541 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %base.i541, align 4
  %190 = ptrtoint ptr %dev_comp.i542 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %dev_comp.i542, align 8
  %regs.i549 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %191, i32 0, i32 1
  %192 = ptrtoint ptr %regs.i549 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %regs.i549, align 4
  %arrayidx.i550 = getelementptr i16, ptr %193, i32 21
  %194 = ptrtoint ptr %arrayidx.i550 to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %arrayidx.i550, align 2
  %conv.i551 = zext i16 %195 to i32
  %add.ptr.i552 = getelementptr i8, ptr %189, i32 %conv.i551
  %196 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i552) #8, !srcloc !190
  %197 = tail call i16 @llvm.bswap.i16(i16 %196) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %conv180 = zext i16 %197 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_dump_register.__UNIQUE_ID_ddebug299, ptr noundef %177, ptr noundef nonnull @.str.48, i32 noundef %conv178, i32 noundef %conv180) #8
  br label %do.end182

do.end182:                                        ; preds = %if.then175, %do.body161
  %dev_comp = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 22
  %198 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %dev_comp, align 8
  %regs = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %199, i32 0, i32 1
  %200 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %regs, align 4
  %cmp = icmp eq ptr %201, @mt_i2c_regs_v2
  br i1 %cmp, label %do.body185, label %do.end182.do.body208_crit_edge

do.end182.do.body208_crit_edge:                   ; preds = %do.end182
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body208

do.body185:                                       ; preds = %do.end182
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_dump_register.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_dump_register, %do.body208)) #8
          to label %if.then199 [label %do.body208], !srcloc !197

if.then199:                                       ; preds = %do.body185
  call void @__sanitizer_cov_trace_pc() #10
  %dev200 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 1
  %202 = ptrtoint ptr %dev200 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %dev200, align 8
  %base.i553 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 4
  %204 = ptrtoint ptr %base.i553 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %base.i553, align 4
  %206 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %dev_comp, align 8
  %regs.i555 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %207, i32 0, i32 1
  %208 = ptrtoint ptr %regs.i555 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %regs.i555, align 4
  %arrayidx.i556 = getelementptr i16, ptr %209, i32 25
  %210 = ptrtoint ptr %arrayidx.i556 to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %arrayidx.i556, align 2
  %conv.i557 = zext i16 %211 to i32
  %add.ptr.i558 = getelementptr i8, ptr %205, i32 %conv.i557
  %212 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i558) #8, !srcloc !190
  %213 = tail call i16 @llvm.bswap.i16(i16 %212) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %conv202 = zext i16 %213 to i32
  %214 = ptrtoint ptr %base.i553 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %base.i553, align 4
  %216 = ptrtoint ptr %dev_comp to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %dev_comp, align 8
  %regs.i561 = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %217, i32 0, i32 1
  %218 = ptrtoint ptr %regs.i561 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %regs.i561, align 4
  %arrayidx.i562 = getelementptr i16, ptr %219, i32 19
  %220 = ptrtoint ptr %arrayidx.i562 to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %arrayidx.i562, align 2
  %conv.i563 = zext i16 %221 to i32
  %add.ptr.i564 = getelementptr i8, ptr %215, i32 %conv.i563
  %222 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i564) #8, !srcloc !190
  %223 = tail call i16 @llvm.bswap.i16(i16 %222) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  %conv204 = zext i16 %223 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_dump_register.__UNIQUE_ID_ddebug300, ptr noundef %203, ptr noundef nonnull @.str.49, i32 noundef %conv202, i32 noundef %conv204) #8
  br label %do.body208

do.body208:                                       ; preds = %if.then199, %do.body185, %do.end182.do.body208_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_dump_register.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_dump_register, %do.body236)) #8
          to label %if.then222 [label %do.body236], !srcloc !197

if.then222:                                       ; preds = %do.body208
  call void @__sanitizer_cov_trace_pc() #10
  %dev223 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 1
  %224 = ptrtoint ptr %dev223 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %dev223, align 8
  %pdmabase = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 5
  %226 = ptrtoint ptr %pdmabase to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %pdmabase, align 8
  %228 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %227) #8, !srcloc !222
  %229 = tail call i32 @llvm.bswap.i32(i32 %228)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  %230 = ptrtoint ptr %pdmabase to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %pdmabase, align 8
  %add.ptr230 = getelementptr i8, ptr %231, i32 4
  %232 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr230) #8, !srcloc !222
  %233 = tail call i32 @llvm.bswap.i32(i32 %232)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_dump_register.__UNIQUE_ID_ddebug301, ptr noundef %225, ptr noundef nonnull @.str.50, i32 noundef %229, i32 noundef %233) #8
  br label %do.body236

do.body236:                                       ; preds = %if.then222, %do.body208
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_dump_register.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_dump_register, %do.body268)) #8
          to label %if.then250 [label %do.body268], !srcloc !197

if.then250:                                       ; preds = %do.body236
  call void @__sanitizer_cov_trace_pc() #10
  %dev251 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 1
  %234 = ptrtoint ptr %dev251 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %dev251, align 8
  %pdmabase254 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 5
  %236 = ptrtoint ptr %pdmabase254 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %pdmabase254, align 8
  %add.ptr255 = getelementptr i8, ptr %237, i32 8
  %238 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr255) #8, !srcloc !222
  %239 = tail call i32 @llvm.bswap.i32(i32 %238)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !225
  %240 = ptrtoint ptr %pdmabase254 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %pdmabase254, align 8
  %add.ptr262 = getelementptr i8, ptr %241, i32 24
  %242 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr262) #8, !srcloc !222
  %243 = tail call i32 @llvm.bswap.i32(i32 %242)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !226
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_dump_register.__UNIQUE_ID_ddebug302, ptr noundef %235, ptr noundef nonnull @.str.51, i32 noundef %239, i32 noundef %243) #8
  br label %do.body268

do.body268:                                       ; preds = %if.then250, %do.body236
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_dump_register.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_dump_register, %do.body300)) #8
          to label %if.then282 [label %do.body300], !srcloc !197

if.then282:                                       ; preds = %do.body268
  call void @__sanitizer_cov_trace_pc() #10
  %dev283 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 1
  %244 = ptrtoint ptr %dev283 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %dev283, align 8
  %pdmabase286 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 5
  %246 = ptrtoint ptr %pdmabase286 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %pdmabase286, align 8
  %add.ptr287 = getelementptr i8, ptr %247, i32 28
  %248 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr287) #8, !srcloc !222
  %249 = tail call i32 @llvm.bswap.i32(i32 %248)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  %250 = ptrtoint ptr %pdmabase286 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %pdmabase286, align 8
  %add.ptr294 = getelementptr i8, ptr %251, i32 32
  %252 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr294) #8, !srcloc !222
  %253 = tail call i32 @llvm.bswap.i32(i32 %252)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_dump_register.__UNIQUE_ID_ddebug303, ptr noundef %245, ptr noundef nonnull @.str.52, i32 noundef %249, i32 noundef %253) #8
  br label %do.body300

do.body300:                                       ; preds = %if.then282, %do.body268
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_dump_register.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_dump_register, %do.body332)) #8
          to label %if.then314 [label %do.body332], !srcloc !197

if.then314:                                       ; preds = %do.body300
  call void @__sanitizer_cov_trace_pc() #10
  %dev315 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 1
  %254 = ptrtoint ptr %dev315 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %dev315, align 8
  %pdmabase318 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 5
  %256 = ptrtoint ptr %pdmabase318 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %pdmabase318, align 8
  %add.ptr319 = getelementptr i8, ptr %257, i32 36
  %258 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr319) #8, !srcloc !222
  %259 = tail call i32 @llvm.bswap.i32(i32 %258)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  %260 = ptrtoint ptr %pdmabase318 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %pdmabase318, align 8
  %add.ptr326 = getelementptr i8, ptr %261, i32 40
  %262 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr326) #8, !srcloc !222
  %263 = tail call i32 @llvm.bswap.i32(i32 %262)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !230
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_dump_register.__UNIQUE_ID_ddebug304, ptr noundef %255, ptr noundef nonnull @.str.53, i32 noundef %259, i32 noundef %263) #8
  br label %do.body332

do.body332:                                       ; preds = %if.then314, %do.body300
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_dump_register.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_dump_register, %do.end363)) #8
          to label %if.then346 [label %do.end363], !srcloc !197

if.then346:                                       ; preds = %do.body332
  call void @__sanitizer_cov_trace_pc() #10
  %dev347 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 1
  %264 = ptrtoint ptr %dev347 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %dev347, align 8
  %pdmabase350 = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 5
  %266 = ptrtoint ptr %pdmabase350 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %pdmabase350, align 8
  %add.ptr351 = getelementptr i8, ptr %267, i32 84
  %268 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr351) #8, !srcloc !222
  %269 = tail call i32 @llvm.bswap.i32(i32 %268)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !231
  %270 = ptrtoint ptr %pdmabase350 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %pdmabase350, align 8
  %add.ptr358 = getelementptr i8, ptr %271, i32 88
  %272 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr358) #8, !srcloc !222
  %273 = tail call i32 @llvm.bswap.i32(i32 %272)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !232
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_dump_register.__UNIQUE_ID_ddebug305, ptr noundef %265, ptr noundef nonnull @.str.54, i32 noundef %269, i32 noundef %273) #8
  br label %do.end363

do.end363:                                        ; preds = %if.then346, %do.body332
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_parse_fw_timings(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_i2c_calculate_speed(ptr nocapture noundef %i2c, i32 noundef %clk_src, i32 noundef %target_speed, ptr nocapture noundef writeonly %timing_step_cnt, ptr nocapture noundef writeonly %timing_sample_cnt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.umin.i32(i32 %target_speed, i32 3400000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %0)
  %cmp.i = icmp ugt i32 %0, 1000000
  %..i = select i1 %cmp.i, i32 8, i32 64
  %shr = lshr i32 %clk_src, 1
  %add = add nsw i32 %shr, -1
  %sub = add i32 %add, %0
  %div = udiv i32 %sub, %0
  %mul = shl nuw nsw i32 %..i, 3
  %dev_comp.i = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 22
  call void @__sanitizer_cov_trace_const_cmp4(i32 100001, i32 %0)
  %cmp.i.i = icmp ult i32 %0, 100001
  call void @__sanitizer_cov_trace_const_cmp4(i32 400001, i32 %0)
  %cmp1.i.i = icmp ult i32 %0, 400001
  %fast_mode_spec.fast_mode_plus_spec.i.i = select i1 %cmp1.i.i, ptr @fast_mode_spec, ptr @fast_mode_plus_spec
  %retval.0.i.i = select i1 %cmp.i.i, ptr @standard_mode_spec, ptr %fast_mode_spec.fast_mode_plus_spec.i.i
  %min_su_sta_ns.i = getelementptr inbounds %struct.i2c_spec_values, ptr %retval.0.i.i, i32 0, i32 1
  %scl_int_delay_ns.i = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 3, i32 3
  %max_hd_dat_ns.i = getelementptr inbounds %struct.i2c_spec_values, ptr %retval.0.i.i, i32 0, i32 2
  %min_su_dat_ns.i = getelementptr inbounds %struct.i2c_spec_values, ptr %retval.0.i.i, i32 0, i32 3
  %ac_timing130.i = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 21
  %ltiming135.i = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 21, i32 1
  %ext140.i = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 21, i32 3
  %scl_hl_ratio.i = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 21, i32 5
  %sta_stop.i = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 21, i32 7
  %sda_timing157.i = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 21, i32 9
  %hs.i = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 21, i32 2
  %hs_scl_hl_ratio.i = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 21, i32 6
  %hs_sta_stop.i = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 21, i32 8
  br label %for.body.outer

for.body.outer:                                   ; preds = %for.inc.thread.for.body.outer_crit_edge, %entry
  %ret.094.ph = phi i32 [ 0, %for.inc.thread.for.body.outer_crit_edge ], [ -22, %entry ]
  %best_mul.093.ph = phi i32 [ %mul5, %for.inc.thread.for.body.outer_crit_edge ], [ %mul, %entry ]
  %base_step_cnt.092.ph = phi i32 [ %div4, %for.inc.thread.for.body.outer_crit_edge ], [ %..i, %entry ]
  %base_sample_cnt.091.ph = phi i32 [ %sample_cnt.089, %for.inc.thread.for.body.outer_crit_edge ], [ 8, %entry ]
  %sample_cnt.089.ph = phi i32 [ %inc101, %for.inc.thread.for.body.outer_crit_edge ], [ 1, %entry ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.outer
  %ret.094 = phi i32 [ %ret.1, %for.inc.for.body_crit_edge ], [ %ret.094.ph, %for.body.outer ]
  %sample_cnt.089 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %sample_cnt.089.ph, %for.body.outer ]
  %add2 = add nsw i32 %sample_cnt.089, -1
  %sub3 = add i32 %add2, %div
  %div4 = udiv i32 %sub3, %sample_cnt.089
  %mul5 = mul nuw i32 %div4, %sample_cnt.089
  call void @__sanitizer_cov_trace_cmp4(i32 %div4, i32 %..i)
  %cmp6 = icmp ule i32 %div4, %..i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul5, i32 %best_mul.093.ph)
  %cmp9 = icmp ult i32 %mul5, %best_mul.093.ph
  %or.cond = select i1 %cmp6, i1 %cmp9, i1 false
  br i1 %or.cond, label %if.then10, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then10:                                        ; preds = %for.body
  %sub11 = add i32 %div4, -1
  %conv.i = zext i32 %sample_cnt.089 to i64
  %mul.i = mul nuw nsw i64 %conv.i, 1000000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i)
  %cmp164.i.i.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !204

if.then168.i.i.i:                                 ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i.i = trunc i64 %mul.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %clk_src
  br label %div_u64.exit.i

if.else174.i.i.i:                                 ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %1 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %clk_src, i64 %mul.i) #12, !srcloc !233
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %1, 1
  %extract.t239.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %div_u64.exit.i

div_u64.exit.i:                                   ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.off0.i = phi i32 [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t239.i, %if.else174.i.i.i ]
  %2 = ptrtoint ptr %dev_comp.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_comp.i, align 8
  %timing_adjust.i = getelementptr inbounds %struct.mtk_i2c_compatible, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %timing_adjust.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %timing_adjust.i, align 4
  %5 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %div_u64.exit.i.if.end15_crit_edge, label %if.end.i

div_u64.exit.i.if.end15_crit_edge:                ; preds = %div_u64.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end.i:                                         ; preds = %div_u64.exit.i
  %6 = and i8 %bf.load.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool6.not.i = icmp eq i8 %6, 0
  %spec.select.i = select i1 %tobool6.not.i, i32 63, i32 256
  br i1 %tobool6.not.i, label %if.else.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %div.i = udiv i32 1000000000, %clk_src
  br label %if.end18.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %div17233.i = lshr i32 %dividend.addr.0.i.i.off0.i, 1
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.else.i, %if.then16.i
  %clk_ns.0.i = phi i32 [ %div.i, %if.then16.i ], [ %div17233.i, %if.else.i ]
  %7 = ptrtoint ptr %min_su_sta_ns.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %min_su_sta_ns.i, align 4
  %9 = ptrtoint ptr %scl_int_delay_ns.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %scl_int_delay_ns.i, align 4
  %add19.i = add nsw i32 %clk_ns.0.i, -1
  %add20.i = add i32 %add19.i, %8
  %sub.i = add i32 %add20.i, %10
  %div21.i = udiv i32 %sub.i, %clk_ns.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div21.i, i32 %spec.select.i)
  %cmp.i74 = icmp ugt i32 %div21.i, %spec.select.i
  br i1 %cmp.i74, label %if.end18.i.for.inc_crit_edge, label %if.end24.i

if.end18.i.for.inc_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end24.i:                                       ; preds = %if.end18.i
  %11 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %retval.0.i.i, align 4
  %add25.i = add i32 %dividend.addr.0.i.i.off0.i, -1
  %sub26.i = add i32 %12, %add25.i
  %div27.i = udiv i32 %sub26.i, %dividend.addr.0.i.i.off0.i
  %mul29.i = shl i32 %sub11, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul29.i, i32 %div27.i)
  %cmp30.i = icmp ugt i32 %mul29.i, %div27.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div27.i, i32 %..i)
  %cmp32.i = icmp ult i32 %div27.i, %..i
  %or.cond.i = and i1 %cmp30.i, %cmp32.i
  br i1 %or.cond.i, label %if.then34.i, label %if.end24.i.for.inc_crit_edge

if.end24.i.for.inc_crit_edge:                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then34.i:                                      ; preds = %if.end24.i
  %13 = tail call i32 @llvm.umax.i32(i32 %div27.i, i32 %sub11) #8
  %14 = ptrtoint ptr %max_hd_dat_ns.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_hd_dat_ns.i, align 4
  %div44.i = udiv i32 %15, %dividend.addr.0.i.i.off0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div44.i, i32 %13)
  %cmp45.i = icmp ugt i32 %div44.i, %13
  %spec.store.select.i = select i1 %cmp45.i, i32 0, i32 %div44.i
  %16 = ptrtoint ptr %min_su_dat_ns.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %min_su_dat_ns.i, align 4
  %sub50.i = add i32 %17, %add25.i
  %div51.i = udiv i32 %sub50.i, %dividend.addr.0.i.i.off0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div51.i, i32 %13)
  %cmp52.i = icmp ult i32 %div51.i, %13
  %spec.store.select168.i = select i1 %cmp52.i, i32 0, i32 %div51.i
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select168.i, i32 %spec.store.select.i)
  %cmp56.i = icmp ugt i32 %spec.store.select168.i, %spec.store.select.i
  br i1 %cmp56.i, label %if.then34.i.for.inc_crit_edge, label %if.end59.i

if.then34.i.for.inc_crit_edge:                    ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end59.i:                                       ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div27.i, i32 %sub11)
  %cmp35.i.le = icmp ugt i32 %div27.i, %sub11
  %sub39.i.le = sub i32 %mul29.i, %div27.i
  %high_cnt.0.i.le = select i1 %cmp35.i.le, i32 %sub39.i.le, i32 %sub11
  br i1 %cmp.i, label %if.then62.i, label %if.else119.i

if.then62.i:                                      ; preds = %if.end59.i
  br i1 %tobool6.not.i, label %if.else95.i, label %if.then69.i

if.then69.i:                                      ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i = shl nsw i32 %add2, 12
  %shl70.i = shl i32 %high_cnt.0.i.le, 8
  %or.i = or i32 %shl70.i, %shl.i
  %18 = trunc i32 %or.i to i16
  %conv72.i = or i16 %18, 3
  %19 = ptrtoint ptr %hs.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv72.i, ptr %hs.i, align 4
  %20 = ptrtoint ptr %ltiming135.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %ltiming135.i, align 2
  %22 = and i16 %21, 511
  %shl77.i = shl i32 %13, 9
  %or78.i = or i32 %shl77.i, %shl.i
  %23 = trunc i32 %or78.i to i16
  %conv83.i = or i16 %22, %23
  store i16 %conv83.i, ptr %ltiming135.i, align 2
  %24 = ptrtoint ptr %ext140.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %ext140.i, align 2
  %26 = and i16 %25, -256
  %div21.tr236.i = trunc i32 %div21.i to i16
  %27 = shl i16 %div21.tr236.i, 1
  %28 = or i16 %27, %26
  %conv94.i = or i16 %28, 1
  store i16 %conv94.i, ptr %ext140.i, align 2
  br label %if.end105.i

if.else95.i:                                      ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl96.i = shl i32 %high_cnt.0.i.le, 6
  %or97.i = or i32 %shl96.i, %13
  %29 = trunc i32 %or97.i to i16
  %conv99.i = or i16 %29, 4096
  %30 = ptrtoint ptr %hs_scl_hl_ratio.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv99.i, ptr %hs_scl_hl_ratio.i, align 4
  %shl101.i = shl i32 %div21.i, 8
  %or102.i = or i32 %shl101.i, %div21.i
  %conv103.i = trunc i32 %or102.i to i16
  %31 = ptrtoint ptr %hs_sta_stop.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv103.i, ptr %hs_sta_stop.i, align 4
  br label %if.end105.i

if.end105.i:                                      ; preds = %if.else95.i, %if.then69.i
  %32 = ptrtoint ptr %sda_timing157.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %sda_timing157.i, align 2
  %34 = and i16 %33, -8129
  %add110.i = add i32 %spec.store.select168.i, %spec.store.select.i
  %add110.tr.i = trunc i32 %add110.i to i16
  %35 = shl i16 %add110.tr.i, 5
  %36 = and i16 %35, -4160
  %37 = or i16 %36, %34
  br label %if.end15.sink.split

if.else119.i:                                     ; preds = %if.end59.i
  br i1 %tobool6.not.i, label %if.else141.i, label %if.then126.i

if.then126.i:                                     ; preds = %if.else119.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl127.i = shl nsw i32 %add2, 8
  %or128.i = or i32 %high_cnt.0.i.le, %shl127.i
  %conv129.i = trunc i32 %or128.i to i16
  %38 = ptrtoint ptr %ac_timing130.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv129.i, ptr %ac_timing130.i, align 4
  %shl131.i = shl nsw i32 %add2, 6
  %or132.i = or i32 %13, %shl131.i
  %conv133.i = trunc i32 %or132.i to i16
  %39 = ptrtoint ptr %ltiming135.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv133.i, ptr %ltiming135.i, align 2
  %div21.tr.i = trunc i32 %div21.i to i16
  %40 = shl i16 %div21.tr.i, 8
  %conv138.i = or i16 %40, 1
  %41 = ptrtoint ptr %ext140.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv138.i, ptr %ext140.i, align 2
  br label %if.end151.i

if.else141.i:                                     ; preds = %if.else119.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl142.i = shl i32 %high_cnt.0.i.le, 6
  %or143.i = or i32 %shl142.i, %13
  %42 = trunc i32 %or143.i to i16
  %conv145.i = or i16 %42, 4096
  %43 = ptrtoint ptr %scl_hl_ratio.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv145.i, ptr %scl_hl_ratio.i, align 2
  %shl147.i = shl i32 %div21.i, 8
  %or148.i = or i32 %shl147.i, %div21.i
  %conv149.i = trunc i32 %or148.i to i16
  %44 = ptrtoint ptr %sta_stop.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv149.i, ptr %sta_stop.i, align 2
  br label %if.end151.i

if.end151.i:                                      ; preds = %if.else141.i, %if.then126.i
  %add152.i = add i32 %spec.store.select168.i, %spec.store.select.i
  %div153234.i = lshr i32 %add152.i, 1
  %45 = trunc i32 %div153234.i to i16
  br label %if.end15.sink.split

if.end15.sink.split:                              ; preds = %if.end151.i, %if.end105.i
  %.sink = phi i16 [ %45, %if.end151.i ], [ %37, %if.end105.i ]
  %conv155.i = or i16 %.sink, 4096
  %46 = ptrtoint ptr %sda_timing157.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv155.i, ptr %sda_timing157.i, align 2
  br label %if.end15

if.end15:                                         ; preds = %if.end15.sink.split, %div_u64.exit.i.if.end15_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %mul5, i32 %div)
  %cmp16 = icmp eq i32 %mul5, %div
  br i1 %cmp16, label %if.end15.if.end22_crit_edge, label %for.inc.thread

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

for.inc:                                          ; preds = %if.then34.i.for.inc_crit_edge, %if.end24.i.for.inc_crit_edge, %if.end18.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %ret.1 = phi i32 [ %ret.094, %for.body.for.inc_crit_edge ], [ -1, %if.end18.i.for.inc_crit_edge ], [ -2, %if.end24.i.for.inc_crit_edge ], [ -3, %if.then34.i.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %sample_cnt.089, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.thread:                                   ; preds = %if.end15
  %inc101 = add nuw nsw i32 %sample_cnt.089, 1
  %exitcond.not102 = icmp eq i32 %inc101, 9
  br i1 %exitcond.not102, label %for.inc.thread.if.end22_crit_edge, label %for.inc.thread.for.body.outer_crit_edge

for.inc.thread.for.body.outer_crit_edge:          ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.outer

for.inc.thread.if.end22_crit_edge:                ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool20.not = icmp eq i32 %ret.1, 0
  br i1 %tobool20.not, label %for.end.if.end22_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.if.end22_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.end22:                                         ; preds = %for.end.if.end22_crit_edge, %for.inc.thread.if.end22_crit_edge, %if.end15.if.end22_crit_edge
  %base_step_cnt.283 = phi i32 [ %base_step_cnt.092.ph, %for.end.if.end22_crit_edge ], [ %div4, %if.end15.if.end22_crit_edge ], [ %div4, %for.inc.thread.if.end22_crit_edge ]
  %base_sample_cnt.282 = phi i32 [ %base_sample_cnt.091.ph, %for.end.if.end22_crit_edge ], [ 8, %for.inc.thread.if.end22_crit_edge ], [ %sample_cnt.089, %if.end15.if.end22_crit_edge ]
  %mul23 = shl i32 %base_step_cnt.283, 1
  %mul24 = mul i32 %mul23, %base_sample_cnt.282
  %div25 = udiv i32 %clk_src, %mul24
  call void @__sanitizer_cov_trace_cmp4(i32 %div25, i32 %0)
  %cmp26 = icmp ugt i32 %div25, %0
  br i1 %cmp26, label %do.body, label %if.end35

do.body:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_i2c_calculate_speed.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtk_i2c_calculate_speed, %cleanup)) #8
          to label %if.then33 [label %cleanup], !srcloc !197

if.then33:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mtk_i2c, ptr %i2c, i32 0, i32 1
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_i2c_calculate_speed.__UNIQUE_ID_ddebug290, ptr noundef %48, ptr noundef nonnull @.str.60, i32 noundef %0) #8
  br label %cleanup

if.end35:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %sub36 = add i32 %base_step_cnt.283, -1
  %49 = ptrtoint ptr %timing_step_cnt to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %sub36, ptr %timing_step_cnt, align 4
  %sub37 = add i32 %base_sample_cnt.282, -1
  %50 = ptrtoint ptr %timing_sample_cnt to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %sub37, ptr %timing_sample_cnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then33, %do.body, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end35 ], [ -22, %for.end.cleanup_crit_edge ], [ -22, %if.then33 ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_i2c_suspend_noirq(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock_ops.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock_ops.i.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void %5(ptr noundef %1, i32 noundef 1) #8
  %locked_flags.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %locked_flags.i) #8
  %6 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock_ops.i.i, align 8
  %unlock_bus.i.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %unlock_bus.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %unlock_bus.i.i, align 4
  tail call void %9(ptr noundef %1, i32 noundef 1) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_i2c_resume_noirq(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @mtk_i2c_clock_enable(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mtk_i2c_init_hw(ptr noundef %1)
  tail call fastcc void @mtk_i2c_clock_disable(ptr noundef %1)
  %lock_ops.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock_ops.i.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void %5(ptr noundef %1, i32 noundef 1) #8
  %locked_flags.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %locked_flags.i) #8
  %6 = ptrtoint ptr %lock_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lock_ops.i.i, align 8
  %unlock_bus.i.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %unlock_bus.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %unlock_bus.i.i, align 4
  tail call void %9(ptr noundef %1, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !61, !63, !64, !65, !66, !68, !69, !70, !71, !73, !74, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !106, !108, !109, !111, !112, !114, !115, !117, !118, !120, !121, !123, !124, !126, !127, !129, !131, !133, !135, !137, !139, !140, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !176}
!llvm.module.flags = !{!177, !178, !179, !180, !181, !182, !183, !184}
!llvm.ident = !{!185}

!0 = !{ptr @__initcall__kmod_i2c_mt65xx__309_1457_mtk_i2c_driver_init6, !1, !"__initcall__kmod_i2c_mt65xx__309_1457_mtk_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 1457, i32 1}
!2 = !{ptr @__exitcall_mtk_i2c_driver_exit, !1, !"__exitcall_mtk_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file310, !4, !"__UNIQUE_ID_file310", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 1459, i32 1}
!5 = !{ptr @__UNIQUE_ID_license311, !4, !"__UNIQUE_ID_license311", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description312, !7, !"__UNIQUE_ID_description312", i1 false, i1 false}
!7 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 1460, i32 1}
!8 = !{ptr @__UNIQUE_ID_author313, !9, !"__UNIQUE_ID_author313", i1 false, i1 false}
!9 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 1461, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 1451, i32 11}
!12 = !{ptr @mtk_i2c_driver, !13, !"mtk_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 1447, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 1317, i32 68}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 1332, i32 43}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 1334, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @mtk_i2c_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @mtk_i2c_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 1338, i32 42}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 1340, i32 3}
!30 = !{ptr @mtk_i2c_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @mtk_i2c_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 1344, i32 42}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 1350, i32 44}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 1352, i32 4}
!38 = !{ptr @mtk_i2c_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @mtk_i2c_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 1362, i32 3}
!42 = !{ptr @mtk_i2c_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @mtk_i2c_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 1370, i32 4}
!46 = !{ptr @mtk_i2c_probe._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @mtk_i2c_probe._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 1377, i32 3}
!50 = !{ptr @mtk_i2c_probe._entry.23, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @mtk_i2c_probe._entry_ptr.25, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 1387, i32 3}
!54 = !{ptr @mtk_i2c_probe._entry.26, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @mtk_i2c_probe._entry_ptr.28, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @init_completion.__key, !57, !"__key", i1 false, i1 false}
!57 = !{!"../include/linux/completion.h", i32 87, i32 2}
!58 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @mtk_i2c_algorithm, !60, !"mtk_i2c_algorithm", i1 false, i1 false}
!60 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 1251, i32 35}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 1177, i32 4}
!63 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @mtk_i2c_transfer.__UNIQUE_ID_ddebug308, !62, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 935, i32 4}
!68 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @mtk_i2c_do_transfer._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @mtk_i2c_do_transfer._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 1130, i32 3}
!73 = !{ptr @mtk_i2c_do_transfer.__UNIQUE_ID_ddebug306, !72, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 1137, i32 3}
!76 = !{ptr @mtk_i2c_do_transfer.__UNIQUE_ID_ddebug307, !75, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!77 = distinct !{null, !78, !"__already_done", i1 false, i1 false}
!78 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!79 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 852, i32 2}
!83 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @i2c_dump_register.__UNIQUE_ID_ddebug291, !82, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 855, i32 2}
!87 = !{ptr @i2c_dump_register.__UNIQUE_ID_ddebug292, !86, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 858, i32 2}
!90 = !{ptr @i2c_dump_register.__UNIQUE_ID_ddebug293, !89, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!91 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 861, i32 2}
!93 = !{ptr @i2c_dump_register.__UNIQUE_ID_ddebug294, !92, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 864, i32 2}
!96 = !{ptr @i2c_dump_register.__UNIQUE_ID_ddebug295, !95, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!97 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 867, i32 2}
!99 = !{ptr @i2c_dump_register.__UNIQUE_ID_ddebug296, !98, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!100 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 870, i32 2}
!102 = !{ptr @i2c_dump_register.__UNIQUE_ID_ddebug297, !101, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!103 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 873, i32 2}
!105 = !{ptr @i2c_dump_register.__UNIQUE_ID_ddebug298, !104, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 876, i32 2}
!108 = !{ptr @i2c_dump_register.__UNIQUE_ID_ddebug299, !107, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!109 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 880, i32 3}
!111 = !{ptr @i2c_dump_register.__UNIQUE_ID_ddebug300, !110, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!112 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 884, i32 2}
!114 = !{ptr @i2c_dump_register.__UNIQUE_ID_ddebug301, !113, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!115 = !{ptr @.str.51, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 887, i32 2}
!117 = !{ptr @i2c_dump_register.__UNIQUE_ID_ddebug302, !116, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!118 = !{ptr @.str.52, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 890, i32 2}
!120 = !{ptr @i2c_dump_register.__UNIQUE_ID_ddebug303, !119, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!121 = !{ptr @.str.53, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 893, i32 2}
!123 = !{ptr @i2c_dump_register.__UNIQUE_ID_ddebug304, !122, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!124 = !{ptr @.str.54, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 896, i32 2}
!126 = !{ptr @i2c_dump_register.__UNIQUE_ID_ddebug305, !125, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!127 = !{ptr @mt_i2c_regs_v2, !128, !"mt_i2c_regs_v2", i1 false, i1 false}
!128 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 181, i32 18}
!129 = !{ptr @.str.55, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 1260, i32 33}
!131 = !{ptr @.str.56, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 1264, i32 33}
!133 = !{ptr @.str.57, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 1271, i32 45}
!135 = !{ptr @.str.58, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 1273, i32 29}
!137 = !{ptr @.str.59, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 767, i32 3}
!139 = !{ptr @.str.60, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @mtk_i2c_calculate_speed.__UNIQUE_ID_ddebug290, !138, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!141 = !{ptr @standard_mode_spec, !142, !"standard_mode_spec", i1 false, i1 false}
!142 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 280, i32 37}
!143 = !{ptr @fast_mode_spec, !144, !"fast_mode_spec", i1 false, i1 false}
!144 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 287, i32 37}
!145 = !{ptr @fast_mode_plus_spec, !146, !"fast_mode_plus_spec", i1 false, i1 false}
!146 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 294, i32 37}
!147 = !{ptr @mtk_i2c_of_match, !148, !"mtk_i2c_of_match", i1 false, i1 false}
!148 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 414, i32 34}
!149 = !{ptr @mt2712_compat, !150, !"mt2712_compat", i1 false, i1 false}
!150 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 318, i32 40}
!151 = !{ptr @mt_i2c_regs_v1, !152, !"mt_i2c_regs_v1", i1 false, i1 false}
!152 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 148, i32 18}
!153 = !{ptr @mt6577_compat, !154, !"mt6577_compat", i1 false, i1 false}
!154 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 331, i32 40}
!155 = !{ptr @mt6577_i2c_quirks, !156, !"mt6577_i2c_quirks", i1 false, i1 false}
!156 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 301, i32 40}
!157 = !{ptr @mt6589_compat, !158, !"mt6589_compat", i1 false, i1 false}
!158 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 345, i32 40}
!159 = !{ptr @mt7622_compat, !160, !"mt7622_compat", i1 false, i1 false}
!160 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 359, i32 40}
!161 = !{ptr @mt7622_i2c_quirks, !162, !"mt7622_i2c_quirks", i1 false, i1 false}
!162 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 310, i32 40}
!163 = !{ptr @mt8173_compat, !164, !"mt8173_compat", i1 false, i1 false}
!164 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 373, i32 40}
!165 = !{ptr @mt8183_compat, !166, !"mt8183_compat", i1 false, i1 false}
!166 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 386, i32 40}
!167 = !{ptr @mt8183_i2c_quirks, !168, !"mt8183_i2c_quirks", i1 false, i1 false}
!168 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 314, i32 40}
!169 = !{ptr @mt8192_compat, !170, !"mt8192_compat", i1 false, i1 false}
!170 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 400, i32 40}
!171 = !{ptr @mtk_i2c_pm, !172, !"mtk_i2c_pm", i1 false, i1 false}
!172 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 1442, i32 32}
!173 = !{ptr @.str.61, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/i2c/busses/i2c-mt65xx.c", i32 1428, i32 3}
!175 = !{ptr @mtk_i2c_resume_noirq._entry, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @mtk_i2c_resume_noirq._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{i32 1, !"wchar_size", i32 2}
!178 = !{i32 1, !"min_enum_size", i32 4}
!179 = !{i32 8, !"branch-target-enforcement", i32 0}
!180 = !{i32 8, !"sign-return-address", i32 0}
!181 = !{i32 8, !"sign-return-address-all", i32 0}
!182 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!183 = !{i32 7, !"uwtable", i32 1}
!184 = !{i32 7, !"frame-pointer", i32 2}
!185 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!186 = !{i8 0, i8 2}
!187 = !{!"auto-init"}
!188 = !{i64 2155717438}
!189 = !{i64 6292685}
!190 = !{i64 6292885}
!191 = !{i64 2155717205}
!192 = !{i64 6293305}
!193 = !{i64 2155718840}
!194 = !{i64 2155719824}
!195 = !{i64 2155720833}
!196 = !{i64 2155722234}
!197 = !{i64 2148759157, i64 2148759162, i64 2148759175, i64 2148759219, i64 2148759253, i64 2148759274}
!198 = !{i64 2155773308}
!199 = !{i64 2155775258}
!200 = !{i64 2155775780}
!201 = !{i64 2155777616}
!202 = !{i64 2155778245}
!203 = !{i64 2155778687}
!204 = !{!"branch_weights", i32 2000, i32 1}
!205 = !{i64 2155779273}
!206 = !{i64 2155779727}
!207 = !{i64 2155780175}
!208 = !{i64 2155780618}
!209 = !{i64 2155781060}
!210 = !{i64 2155781644}
!211 = !{i64 2155782098}
!212 = !{i64 2155782546}
!213 = !{i64 2155782989}
!214 = !{i64 2155783431}
!215 = !{i64 2155784265}
!216 = !{i64 2155784752}
!217 = !{i64 2155785206}
!218 = !{i64 2155785661}
!219 = !{i64 2155786109}
!220 = !{i64 2155786552}
!221 = !{i64 2155787007}
!222 = !{i64 6293723}
!223 = !{i64 2155757307}
!224 = !{i64 2155757841}
!225 = !{i64 2155760954}
!226 = !{i64 2155761476}
!227 = !{i64 2155764846}
!228 = !{i64 2155765400}
!229 = !{i64 2155768620}
!230 = !{i64 2155769154}
!231 = !{i64 2155772476}
!232 = !{i64 2155773026}
!233 = !{i64 2148667876, i64 2148668156, i64 2148668490, i64 2148668824}
