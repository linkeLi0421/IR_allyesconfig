; ModuleID = '/llk/IR_all_yes/drivers/input/keyboard/mtk-pmic-keys.c_pt.bc'
source_filename = "../drivers/input/keyboard/mtk-pmic-keys.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mtk_pmic_regs = type { [2 x %struct.mtk_pmic_keys_regs], i32 }
%struct.mtk_pmic_keys_regs = type { i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.mtk_pmic_keys = type { ptr, ptr, ptr, [2 x %struct.mtk_pmic_keys_info] }
%struct.mtk_pmic_keys_info = type { ptr, ptr, i32, i32, i8 }
%struct.mt6397_chip = type { ptr, ptr, %struct.notifier_block, i32, ptr, %struct.mutex, [2 x i16], [2 x i16], [2 x i16], [2 x i16], [2 x i16], i16, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_mtk_pmic_keys__228_330_pmic_keys_pdrv_init6 = internal global ptr @pmic_keys_pdrv_init, section ".initcall6.init", align 4
@pmic_keys_pdrv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mtk_pmic_keys_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_mtk_pmic_keys_match_tbl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_pmic_keys_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pmic_keys_pdrv_exit = internal global ptr @pmic_keys_pdrv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file229 = internal constant [56 x i8] c"mtk_pmic_keys.file=drivers/input/keyboard/mtk-pmic-keys\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [29 x i8] c"mtk_pmic_keys.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author231 = internal constant [58 x i8] c"mtk_pmic_keys.author=Chen Zhong <chen.zhong@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description232 = internal constant [52 x i8] c"mtk_pmic_keys.description=MTK pmic-keys driver v0.1\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mtk-pmic-keys\00", [18 x i8] zeroinitializer }, align 32
@of_mtk_pmic_keys_match_tbl = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6397-keys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt6397_regs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6323-keys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt6323_regs }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@mtk_pmic_keys_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @mtk_pmic_keys_suspend, ptr @mtk_pmic_keys_resume, ptr @mtk_pmic_keys_suspend, ptr @mtk_pmic_keys_resume, ptr @mtk_pmic_keys_suspend, ptr @mtk_pmic_keys_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mtk_pmic_keys_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 260, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"input allocate device fail.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mtk_pmic_keys_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/input/keyboard/mtk-pmic-keys.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_pmic_keys_probe._entry_ptr = internal global ptr @mtk_pmic_keys_probe._entry, section ".printk_index", align 4
@mtk_pmic_keys_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 272, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"too many keys defined (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@mtk_pmic_keys_probe._entry_ptr.8 = internal global ptr @mtk_pmic_keys_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"linux,keycodes\00", [17 x i8] zeroinitializer }, align 32
@mtk_pmic_keys_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 290, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"failed to read key:%d linux,keycode property: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@mtk_pmic_keys_probe._entry_ptr.12 = internal global ptr @mtk_pmic_keys_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wakeup-source\00", [18 x i8] zeroinitializer }, align 32
@mtk_pmic_keys_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 310, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"register input device failed (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@mtk_pmic_keys_probe._entry_ptr.16 = internal global ptr @mtk_pmic_keys_probe._entry.14, section ".printk_index", align 4
@mtk_pmic_key_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 187, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to request IRQ: %d: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mtk_pmic_key_setup\00", [45 x i8] zeroinitializer }, align 32
@mtk_pmic_key_setup._entry_ptr = internal global ptr @mtk_pmic_key_setup._entry, section ".printk_index", align 4
@mtk_pmic_keys_irq_handler_thread.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.20, ptr @.str.3, ptr @.str.21, i8 0, i8 40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mtk_pmic_keys\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mtk_pmic_keys_irq_handler_thread\00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"(%s) key =%d using PMIC\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pressed\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"released\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"power-off-time-sec\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mediatek,long-press-mode\00", [39 x i8] zeroinitializer }, align 32
@mt6397_regs = internal constant { %struct.mtk_pmic_regs, [60 x i8] } { %struct.mtk_pmic_regs { [2 x %struct.mtk_pmic_keys_regs] [%struct.mtk_pmic_keys_regs { i32 324, i32 8, i32 312, i32 16 }, %struct.mtk_pmic_keys_regs { i32 330, i32 16, i32 312, i32 8 }], i32 294 }, [60 x i8] zeroinitializer }, align 32
@mt6323_regs = internal constant { %struct.mtk_pmic_regs, [60 x i8] } { %struct.mtk_pmic_regs { [2 x %struct.mtk_pmic_keys_regs] [%struct.mtk_pmic_keys_regs { i32 322, i32 2, i32 364, i32 16 }, %struct.mtk_pmic_keys_regs { i32 322, i32 4, i32 364, i32 8 }], i32 282 }, [60 x i8] zeroinitializer }, align 32
@switch.table.mtk_pmic_keys_probe = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 64, i32 64], [20 x i8] zeroinitializer }, align 32
@switch.table.mtk_pmic_keys_probe.26 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 0, i32 32], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.27 = private unnamed_addr constant [15 x i8] c"pmic_keys_pdrv\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 321, i32 31 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 324, i32 14 }
@___asan_gen_.33 = private unnamed_addr constant [27 x i8] c"of_mtk_pmic_keys_match_tbl\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 225, i32 34 }
@___asan_gen_.36 = private unnamed_addr constant [21 x i8] c"mtk_pmic_keys_pm_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 222, i32 8 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 260, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 272, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 286, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 288, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 295, i32 36 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 309, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 186, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 162, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 105, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 114, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [12 x i8] c"mt6397_regs\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 57, i32 35 }
@___asan_gen_.114 = private unnamed_addr constant [12 x i8] c"mt6323_regs\00", align 1
@___asan_gen_.115 = private constant [42 x i8] c"../drivers/input/keyboard/mtk-pmic-keys.c\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 67, i32 35 }
@___asan_gen_.117 = private unnamed_addr constant [33 x i8] c"switch.table.mtk_pmic_keys_probe\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [36 x i8] c"switch.table.mtk_pmic_keys_probe.26\00", align 1
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__exitcall_pmic_keys_pdrv_exit, ptr @__initcall__kmod_mtk_pmic_keys__228_330_pmic_keys_pdrv_init6, ptr @mtk_pmic_key_setup._entry, ptr @mtk_pmic_key_setup._entry_ptr, ptr @mtk_pmic_keys_probe._entry, ptr @mtk_pmic_keys_probe._entry.10, ptr @mtk_pmic_keys_probe._entry.14, ptr @mtk_pmic_keys_probe._entry.6, ptr @mtk_pmic_keys_probe._entry_ptr, ptr @mtk_pmic_keys_probe._entry_ptr.12, ptr @mtk_pmic_keys_probe._entry_ptr.16, ptr @mtk_pmic_keys_probe._entry_ptr.8, ptr @pmic_keys_pdrv_exit, ptr @pmic_keys_pdrv, ptr @.str, ptr @of_mtk_pmic_keys_match_tbl, ptr @mtk_pmic_keys_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @mt6397_regs, ptr @mt6323_regs, ptr @switch.table.mtk_pmic_keys_probe, ptr @switch.table.mtk_pmic_keys_probe.26], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_keys_pdrv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_mtk_pmic_keys_match_tbl to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pmic_keys_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pmic_keys_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pmic_keys_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pmic_keys_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pmic_keys_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_pmic_key_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6397_regs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6323_regs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_pmic_keys_probe to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mtk_pmic_keys_probe.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pmic_keys_pdrv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pmic_keys_pdrv, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pmic_keys_pdrv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @pmic_keys_pdrv) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pmic_keys_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %long_press_mode.i = alloca i32, align 4
  %long_press_debounce.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call3 = tail call ptr @of_match_device(ptr noundef nonnull @of_mtk_pmic_keys_match_tbl, ptr noundef %dev) #5
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 52, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev7 = getelementptr inbounds %struct.mtk_pmic_keys, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %dev7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %dev7, align 4
  %regmap = getelementptr inbounds %struct.mt6397_chip, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %regmap8 = getelementptr inbounds %struct.mtk_pmic_keys, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %regmap8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %regmap8, align 4
  %data = getelementptr inbounds %struct.of_device_id, ptr %call3, i32 0, i32 3
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %call10 = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #5
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call10, ptr %call.i, align 4
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %do.end, label %if.end15

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %15 = ptrtoint ptr %call10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str, ptr %call10, align 8
  %id = getelementptr inbounds %struct.input_dev, ptr %call10, i32 0, i32 3
  %16 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 25, ptr %id, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %call10, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %vendor, align 2
  %product = getelementptr inbounds %struct.input_dev, ptr %call10, i32 0, i32 3, i32 2
  %18 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %product, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %call10, i32 0, i32 3, i32 3
  %19 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %version, align 2
  %call.i138 = tail call ptr @of_get_next_available_child(ptr noundef %5, ptr noundef null) #5
  %cmp.not5.i = icmp eq ptr %call.i138, null
  br i1 %cmp.not5.i, label %if.end15.if.end25_crit_edge, label %if.end15.for.body.i_crit_edge

if.end15.for.body.i_crit_edge:                    ; preds = %if.end15
  br label %for.body.i

if.end15.if.end25_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end15.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end15.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i138, %if.end15.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = tail call ptr @of_get_next_available_child(ptr noundef %5, ptr noundef nonnull %child.06.i) #5
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %of_get_available_child_count.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

of_get_available_child_count.exit:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc.i)
  %cmp = icmp ugt i32 %inc.i, 2
  br i1 %cmp, label %do.end23, label %of_get_available_child_count.exit.if.end25_crit_edge

of_get_available_child_count.exit.if.end25_crit_edge: ; preds = %of_get_available_child_count.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

do.end23:                                         ; preds = %of_get_available_child_count.exit
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.7, i32 noundef %inc.i) #8
  br label %cleanup

if.end25:                                         ; preds = %of_get_available_child_count.exit.if.end25_crit_edge, %if.end15.if.end25_crit_edge
  %call26 = tail call ptr @of_get_next_child(ptr noundef %5, ptr noundef null) #5
  %cmp27.not166 = icmp eq ptr %call26, null
  br i1 %cmp27.not166, label %if.end25.for.end_crit_edge, label %if.end25.for.body_crit_edge

if.end25.for.body_crit_edge:                      ; preds = %if.end25
  br label %for.body

if.end25.for.end_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %if.end62.for.body_crit_edge, %if.end25.for.body_crit_edge
  %child.0168 = phi ptr [ %call63, %if.end62.for.body_crit_edge ], [ %call26, %if.end25.for.body_crit_edge ]
  %index.0167 = phi i32 [ %inc, %if.end62.for.body_crit_edge ], [ 0, %if.end25.for.body_crit_edge ]
  %arrayidx = getelementptr [2 x %struct.mtk_pmic_keys_regs], ptr %11, i32 0, i32 %index.0167
  %arrayidx29 = getelementptr %struct.mtk_pmic_keys, ptr %call.i, i32 0, i32 3, i32 %index.0167
  %regs = getelementptr %struct.mtk_pmic_keys, ptr %call.i, i32 0, i32 3, i32 %index.0167, i32 1
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %arrayidx, ptr %regs, align 4
  %call30 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef %index.0167) #5
  %irq = getelementptr %struct.mtk_pmic_keys, ptr %call.i, i32 0, i32 3, i32 %index.0167, i32 3
  %23 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call30, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp36 = icmp slt i32 %call30, 0
  br i1 %cmp36, label %if.then37, label %if.end41

if.then37:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @of_node_put(ptr noundef nonnull %child.0168) #5
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq, align 4
  br label %cleanup

if.end41:                                         ; preds = %for.body
  %keycode = getelementptr %struct.mtk_pmic_keys, ptr %call.i, i32 0, i32 3, i32 %index.0167, i32 2
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0168, ptr noundef nonnull @.str.9, ptr noundef %keycode, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool45.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool45.not, label %if.end51, label %do.end49

do.end49:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.11, i32 noundef %index.0167, i32 noundef %call.i.i) #8
  tail call void @of_node_put(ptr noundef nonnull %child.0168) #5
  br label %cleanup

if.end51:                                         ; preds = %if.end41
  %call.i139 = tail call ptr @of_find_property(ptr noundef nonnull %child.0168, ptr noundef nonnull @.str.13, ptr noundef null) #5
  %tobool.i.not = icmp eq ptr %call.i139, null
  br i1 %tobool.i.not, label %if.end51.if.end56_crit_edge, label %if.then53

if.end51.if.end56_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

if.then53:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  %wakeup = getelementptr %struct.mtk_pmic_keys, ptr %call.i, i32 0, i32 3, i32 %index.0167, i32 4
  %28 = ptrtoint ptr %wakeup to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load = load i8, ptr %wakeup, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %wakeup, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.end51.if.end56_crit_edge
  %29 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i, ptr %arrayidx29, align 4
  %30 = ptrtoint ptr %regmap8 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap8, align 4
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 4
  %intsel_reg.i = getelementptr inbounds %struct.mtk_pmic_keys_regs, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %intsel_reg.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %intsel_reg.i, align 4
  %intsel_mask.i = getelementptr inbounds %struct.mtk_pmic_keys_regs, ptr %33, i32 0, i32 3
  %36 = ptrtoint ptr %intsel_mask.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %intsel_mask.i, align 4
  %call.i.i140 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef %35, i32 noundef %37, i32 noundef %37, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i140)
  %cmp.i = icmp slt i32 %call.i.i140, 0
  br i1 %cmp.i, label %if.end56.if.then61_crit_edge, label %if.end.i

if.end56.if.then61_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then61

if.end.i:                                         ; preds = %if.end56
  %38 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev7, align 4
  %40 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %irq, align 4
  %call5.i = tail call i32 @devm_request_threaded_irq(ptr noundef %39, i32 noundef %41, ptr noundef null, ptr noundef nonnull @mtk_pmic_keys_irq_handler_thread, i32 noundef 8196, ptr noundef nonnull @.str, ptr noundef %arrayidx29) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end62, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev7, align 4
  %44 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.17, i32 noundef %45, i32 noundef %call5.i) #8
  br label %if.then61

if.then61:                                        ; preds = %do.end.i, %if.end56.if.then61_crit_edge
  %retval.0.i.ph = phi i32 [ %call5.i, %do.end.i ], [ %call.i.i140, %if.end56.if.then61_crit_edge ]
  tail call void @of_node_put(ptr noundef nonnull %child.0168) #5
  br label %cleanup

if.end62:                                         ; preds = %if.end.i
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call.i, align 4
  %48 = ptrtoint ptr %keycode to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %keycode, align 4
  tail call void @input_set_capability(ptr noundef %47, i32 noundef 1, i32 noundef %49) #5
  %inc = add i32 %index.0167, 1
  %call63 = tail call ptr @of_get_next_child(ptr noundef %5, ptr noundef nonnull %child.0168) #5
  %cmp27.not = icmp eq ptr %call63, null
  br i1 %cmp27.not, label %if.end62.for.end_crit_edge, label %if.end62.for.body_crit_edge

if.end62.for.body_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end62.for.end_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.end62.for.end_crit_edge, %if.end25.for.end_crit_edge
  %call64 = tail call i32 @input_register_device(ptr noundef nonnull %call10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end71, label %do.end69

do.end69:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %call64) #8
  br label %cleanup

if.end71:                                         ; preds = %for.end
  %pmic_rst_reg = getelementptr inbounds %struct.mtk_pmic_regs, ptr %11, i32 0, i32 1
  %50 = ptrtoint ptr %pmic_rst_reg to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pmic_rst_reg, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %long_press_mode.i) #5
  %52 = ptrtoint ptr %long_press_mode.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %long_press_mode.i, align 4, !annotation !71
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %long_press_debounce.i) #5
  %53 = ptrtoint ptr %long_press_debounce.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %long_press_debounce.i, align 4, !annotation !71
  %54 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev7, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %55, i32 0, i32 27
  %56 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %of_node.i, align 8
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %57, ptr noundef nonnull @.str.24, ptr noundef nonnull %long_press_debounce.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i142 = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i142, label %if.end71.if.end.i145_crit_edge, label %if.then.i

if.end71.if.end.i145_crit_edge:                   ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i145

if.then.i:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %long_press_debounce.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %long_press_debounce.i, align 4
  br label %if.end.i145

if.end.i145:                                      ; preds = %if.then.i, %if.end71.if.end.i145_crit_edge
  %59 = ptrtoint ptr %regmap8 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap8, align 4
  %61 = ptrtoint ptr %long_press_debounce.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %long_press_debounce.i, align 4
  %shl.i = shl i32 %62, 8
  %call.i.i144 = call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef %51, i32 noundef 768, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %63 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev7, align 4
  %of_node3.i = getelementptr inbounds %struct.device, ptr %64, i32 0, i32 27
  %65 = ptrtoint ptr %of_node3.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %of_node3.i, align 8
  %call.i.i37.i = call i32 @of_property_read_variable_u32_array(ptr noundef %66, ptr noundef nonnull @.str.25, ptr noundef nonnull %long_press_mode.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i37.i)
  %tobool5.not.i = icmp sgt i32 %call.i.i37.i, -1
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end7.thread.i

if.end7.thread.i:                                 ; preds = %if.end.i145
  call void @__sanitizer_cov_trace_pc() #7
  %67 = ptrtoint ptr %long_press_mode.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %long_press_mode.i, align 4
  br label %sw.epilog.sink.split.i

if.end7.i:                                        ; preds = %if.end.i145
  %68 = ptrtoint ptr %long_press_mode.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pr.i = load i32, ptr %long_press_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr.i)
  %69 = icmp ult i32 %.pr.i, 3
  br i1 %69, label %switch.lookup, label %if.end7.i.mtk_pmic_keys_lp_reset_setup.exit_crit_edge

if.end7.i.mtk_pmic_keys_lp_reset_setup.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mtk_pmic_keys_lp_reset_setup.exit

switch.lookup:                                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.mtk_pmic_keys_probe, i32 0, i32 %.pr.i
  %70 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %70)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep227 = getelementptr inbounds [3 x i32], ptr @switch.table.mtk_pmic_keys_probe.26, i32 0, i32 %.pr.i
  %71 = ptrtoint ptr %switch.gep227 to i32
  call void @__asan_load4_noabort(i32 %71)
  %switch.load228 = load i32, ptr %switch.gep227, align 4
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %switch.lookup, %if.end7.thread.i
  %.sink45.i = phi i32 [ 0, %if.end7.thread.i ], [ %switch.load, %switch.lookup ]
  %.sink44.i = phi i32 [ 0, %if.end7.thread.i ], [ %switch.load228, %switch.lookup ]
  %72 = ptrtoint ptr %regmap8 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap8, align 4
  %call.i42.i = call i32 @regmap_update_bits_base(ptr noundef %73, i32 noundef %51, i32 noundef 64, i32 noundef %.sink45.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %74 = ptrtoint ptr %regmap8 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regmap8, align 4
  %call.i43.i = call i32 @regmap_update_bits_base(ptr noundef %75, i32 noundef %51, i32 noundef 32, i32 noundef %.sink44.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %mtk_pmic_keys_lp_reset_setup.exit

mtk_pmic_keys_lp_reset_setup.exit:                ; preds = %sw.epilog.sink.split.i, %if.end7.i.mtk_pmic_keys_lp_reset_setup.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %long_press_debounce.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %long_press_mode.i) #5
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %76 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %mtk_pmic_keys_lp_reset_setup.exit, %do.end69, %if.then61, %do.end49, %if.then37, %do.end23, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end23 ], [ %25, %if.then37 ], [ %call.i.i, %do.end49 ], [ %retval.0.i.ph, %if.then61 ], [ %call64, %do.end69 ], [ 0, %mtk_pmic_keys_lp_reset_setup.exit ], [ -12, %do.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pmic_keys_irq_handler_thread(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %key_deb = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key_deb) #5
  %0 = ptrtoint ptr %key_deb to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %key_deb, align 4, !annotation !71
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %regmap = getelementptr inbounds %struct.mtk_pmic_keys, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %regs = getelementptr inbounds %struct.mtk_pmic_keys_info, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef %8, ptr noundef nonnull %key_deb) #5
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %deb_mask = getelementptr inbounds %struct.mtk_pmic_keys_regs, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %deb_mask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %deb_mask, align 4
  %13 = ptrtoint ptr %key_deb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %key_deb, align 4
  %and = and i32 %14, %12
  store i32 %and, ptr %key_deb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %keycode = getelementptr inbounds %struct.mtk_pmic_keys_info, ptr %data, i32 0, i32 2
  %19 = ptrtoint ptr %keycode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %keycode, align 4
  %lnot.ext.i = zext i1 %tobool.not to i32
  call void @input_event(ptr noundef %18, i32 noundef 1, i32 noundef %20, i32 noundef %lnot.ext.i) #5
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  call void @input_event(ptr noundef %24, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_pmic_keys_irq_handler_thread.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_pmic_keys_irq_handler_thread, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !72

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  %dev = getelementptr inbounds %struct.mtk_pmic_keys, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %cond = select i1 %tobool.not, ptr @.str.22, ptr @.str.23
  %29 = ptrtoint ptr %keycode to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %keycode, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_pmic_keys_irq_handler_thread.__UNIQUE_ID_ddebug227, ptr noundef %28, ptr noundef nonnull @.str.21, ptr noundef nonnull %cond, i32 noundef %30) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key_deb) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pmic_keys_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %wakeup = getelementptr %struct.mtk_pmic_keys, ptr %1, i32 0, i32 3, i32 0, i32 4
  %2 = ptrtoint ptr %wakeup to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %wakeup, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %irq = getelementptr %struct.mtk_pmic_keys, ptr %1, i32 0, i32 3, i32 0, i32 3
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %4, i32 noundef 1) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %wakeup.1 = getelementptr %struct.mtk_pmic_keys, ptr %1, i32 0, i32 3, i32 1, i32 4
  %5 = ptrtoint ptr %wakeup.1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.1 = load i8, ptr %wakeup.1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.1)
  %bf.cast.not.1 = icmp sgt i8 %bf.load.1, -1
  br i1 %bf.cast.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %irq.1 = getelementptr %struct.mtk_pmic_keys, ptr %1, i32 0, i32 3, i32 1, i32 3
  %6 = ptrtoint ptr %irq.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq.1, align 4
  %call.i.1 = tail call i32 @irq_set_irq_wake(i32 noundef %7, i32 noundef 1) #5
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pmic_keys_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %wakeup = getelementptr %struct.mtk_pmic_keys, ptr %1, i32 0, i32 3, i32 0, i32 4
  %2 = ptrtoint ptr %wakeup to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %wakeup, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %irq = getelementptr %struct.mtk_pmic_keys, ptr %1, i32 0, i32 3, i32 0, i32 3
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %4, i32 noundef 0) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %wakeup.1 = getelementptr %struct.mtk_pmic_keys, ptr %1, i32 0, i32 3, i32 1, i32 4
  %5 = ptrtoint ptr %wakeup.1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.1 = load i8, ptr %wakeup.1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.1)
  %bf.cast.not.1 = icmp sgt i8 %bf.load.1, -1
  br i1 %bf.cast.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %irq.1 = getelementptr %struct.mtk_pmic_keys, ptr %1, i32 0, i32 3, i32 1, i32 3
  %6 = ptrtoint ptr %irq.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq.1, align 4
  %call.i.1 = tail call i32 @irq_set_irq_wake(i32 noundef %7, i32 noundef 0) #5
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !48, !49, !50, !52, !54, !56, !58, !60}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @__initcall__kmod_mtk_pmic_keys__228_330_pmic_keys_pdrv_init6, !1, !"__initcall__kmod_mtk_pmic_keys__228_330_pmic_keys_pdrv_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/keyboard/mtk-pmic-keys.c", i32 330, i32 1}
!2 = !{ptr @__exitcall_pmic_keys_pdrv_exit, !1, !"__exitcall_pmic_keys_pdrv_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file229, !4, !"__UNIQUE_ID_file229", i1 false, i1 false}
!4 = !{!"../drivers/input/keyboard/mtk-pmic-keys.c", i32 332, i32 1}
!5 = !{ptr @__UNIQUE_ID_license230, !4, !"__UNIQUE_ID_license230", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author231, !7, !"__UNIQUE_ID_author231", i1 false, i1 false}
!7 = !{!"../drivers/input/keyboard/mtk-pmic-keys.c", i32 333, i32 1}
!8 = !{ptr @__UNIQUE_ID_description232, !9, !"__UNIQUE_ID_description232", i1 false, i1 false}
!9 = !{!"../drivers/input/keyboard/mtk-pmic-keys.c", i32 334, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/keyboard/mtk-pmic-keys.c", i32 324, i32 14}
!12 = !{ptr @pmic_keys_pdrv, !13, !"pmic_keys_pdrv", i1 false, i1 false}
!13 = !{!"../drivers/input/keyboard/mtk-pmic-keys.c", i32 321, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/keyboard/mtk-pmic-keys.c", i32 260, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mtk_pmic_keys_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @mtk_pmic_keys_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/keyboard/mtk-pmic-keys.c", i32 272, i32 3}
!24 = !{ptr @mtk_pmic_keys_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @mtk_pmic_keys_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/keyboard/mtk-pmic-keys.c", i32 286, i32 4}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/keyboard/mtk-pmic-keys.c", i32 288, i32 4}
!30 = !{ptr @mtk_pmic_keys_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @mtk_pmic_keys_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/keyboard/mtk-pmic-keys.c", i32 295, i32 36}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/keyboard/mtk-pmic-keys.c", i32 309, i32 3}
!36 = !{ptr @mtk_pmic_keys_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @mtk_pmic_keys_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/keyboard/mtk-pmic-keys.c", i32 186, i32 3}
!40 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @mtk_pmic_key_setup._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @mtk_pmic_key_setup._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/input/keyboard/mtk-pmic-keys.c", i32 162, i32 2}
!45 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @mtk_pmic_keys_irq_handler_thread.__UNIQUE_ID_ddebug227, !44, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!48 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/keyboard/mtk-pmic-keys.c", i32 105, i32 3}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/input/keyboard/mtk-pmic-keys.c", i32 114, i32 3}
!54 = !{ptr @of_mtk_pmic_keys_match_tbl, !55, !"of_mtk_pmic_keys_match_tbl", i1 false, i1 false}
!55 = !{!"../drivers/input/keyboard/mtk-pmic-keys.c", i32 225, i32 34}
!56 = !{ptr @mt6397_regs, !57, !"mt6397_regs", i1 false, i1 false}
!57 = !{!"../drivers/input/keyboard/mtk-pmic-keys.c", i32 57, i32 35}
!58 = !{ptr @mt6323_regs, !59, !"mt6323_regs", i1 false, i1 false}
!59 = !{!"../drivers/input/keyboard/mtk-pmic-keys.c", i32 67, i32 35}
!60 = !{ptr @mtk_pmic_keys_pm_ops, !61, !"mtk_pmic_keys_pm_ops", i1 false, i1 false}
!61 = !{!"../drivers/input/keyboard/mtk-pmic-keys.c", i32 222, i32 8}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{!"auto-init"}
!72 = !{i64 2149039368, i64 2149039373, i64 2149039386, i64 2149039430, i64 2149039464, i64 2149039485}
