; ModuleID = '/llk/IR_all_yes/drivers/nvmem/sc27xx-efuse.c_pt.bc'
source_filename = "../drivers/nvmem/sc27xx-efuse.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sc27xx_efuse_variant_data = type { i32 }
%struct.nvmem_config = type { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, i32, i32, i32, ptr, i8, ptr }
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
%struct.sc27xx_efuse = type { ptr, ptr, ptr, %struct.mutex, i32, ptr }

@__initcall__kmod_nvmem_sc27xx_efuse__170_274_sc27xx_efuse_driver_init6 = internal global ptr @sc27xx_efuse_driver_init, section ".initcall6.init", align 4
@sc27xx_efuse_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sc27xx_efuse_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sc27xx_efuse_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sc27xx_efuse_driver_exit = internal global ptr @sc27xx_efuse_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [67 x i8] c"nvmem_sc27xx_efuse.author=Freeman Liu <freeman.liu@spreadtrum.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [62 x i8] c"nvmem_sc27xx_efuse.description=Spreadtrum SC27xx efuse driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [57 x i8] c"nvmem_sc27xx_efuse.file=drivers/nvmem/nvmem-sc27xx-efuse\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [34 x i8] c"nvmem_sc27xx_efuse.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sc27xx-efuse\00", [19 x i8] zeroinitializer }, align 32
@sc27xx_efuse_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sprd,sc2731-efuse\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc2731_edata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sprd,sc2730-efuse\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc2730_edata }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@sc27xx_efuse_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 217, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get efuse regmap\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sc27xx_efuse_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/nvmem/sc27xx-efuse.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sc27xx_efuse_probe._entry_ptr = internal global ptr @sc27xx_efuse_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@sc27xx_efuse_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 223, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get efuse base address\0A\00", [62 x i8] zeroinitializer }, align 32
@sc27xx_efuse_probe._entry_ptr.9 = internal global ptr @sc27xx_efuse_probe._entry.7, section ".printk_index", align 4
@sc27xx_efuse_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 229, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get hwspinlock id\0A\00", [35 x i8] zeroinitializer }, align 32
@sc27xx_efuse_probe._entry_ptr.12 = internal global ptr @sc27xx_efuse_probe._entry.10, section ".printk_index", align 4
@sc27xx_efuse_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 235, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to request hwspinlock\0A\00", [34 x i8] zeroinitializer }, align 32
@sc27xx_efuse_probe._entry_ptr.15 = internal global ptr @sc27xx_efuse_probe._entry.13, section ".printk_index", align 4
@sc27xx_efuse_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&efuse->mutex\00", [18 x i8] zeroinitializer }, align 32
@sc27xx_efuse_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 253, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register nvmem config\0A\00", [63 x i8] zeroinitializer }, align 32
@sc27xx_efuse_probe._entry_ptr.19 = internal global ptr @sc27xx_efuse_probe._entry.17, section ".printk_index", align 4
@sc27xx_efuse_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 93, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"timeout to get the hwspinlock\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sc27xx_efuse_lock\00", [46 x i8] zeroinitializer }, align 32
@sc27xx_efuse_lock._entry_ptr = internal global ptr @sc27xx_efuse_lock._entry, section ".printk_index", align 4
@sc27xx_efuse_poll_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 118, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"timeout to update the efuse status\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sc27xx_efuse_poll_status\00", [39 x i8] zeroinitializer }, align 32
@sc27xx_efuse_poll_status._entry_ptr = internal global ptr @sc27xx_efuse_poll_status._entry, section ".printk_index", align 4
@sc2731_edata = internal constant { %struct.sc27xx_efuse_variant_data, [28 x i8] } { %struct.sc27xx_efuse_variant_data { i32 3080 }, [28 x i8] zeroinitializer }, align 32
@sc2730_edata = internal constant { %struct.sc27xx_efuse_variant_data, [28 x i8] } { %struct.sc27xx_efuse_variant_data { i32 6152 }, [28 x i8] zeroinitializer }, align 32
@___asan_gen_.24 = private unnamed_addr constant [20 x i8] c"sc27xx_efuse_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 266, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 269, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [22 x i8] c"sc27xx_efuse_of_match\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 260, i32 34 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 217, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 221, i32 33 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 223, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 229, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 235, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 239, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 253, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 93, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 118, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [13 x i8] c"sc2731_edata\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 71, i32 47 }
@___asan_gen_.105 = private unnamed_addr constant [13 x i8] c"sc2730_edata\00", align 1
@___asan_gen_.106 = private constant [32 x i8] c"../drivers/nvmem/sc27xx-efuse.c\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 75, i32 47 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_sc27xx_efuse_driver_exit, ptr @__initcall__kmod_nvmem_sc27xx_efuse__170_274_sc27xx_efuse_driver_init6, ptr @sc27xx_efuse_driver_exit, ptr @sc27xx_efuse_lock._entry, ptr @sc27xx_efuse_lock._entry_ptr, ptr @sc27xx_efuse_poll_status._entry, ptr @sc27xx_efuse_poll_status._entry_ptr, ptr @sc27xx_efuse_probe._entry, ptr @sc27xx_efuse_probe._entry.10, ptr @sc27xx_efuse_probe._entry.13, ptr @sc27xx_efuse_probe._entry.17, ptr @sc27xx_efuse_probe._entry.7, ptr @sc27xx_efuse_probe._entry_ptr, ptr @sc27xx_efuse_probe._entry_ptr.12, ptr @sc27xx_efuse_probe._entry_ptr.15, ptr @sc27xx_efuse_probe._entry_ptr.19, ptr @sc27xx_efuse_probe._entry_ptr.9, ptr @sc27xx_efuse_driver, ptr @.str, ptr @sc27xx_efuse_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @sc27xx_efuse_probe.__key, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @sc2731_edata, ptr @sc2730_edata], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_efuse_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_efuse_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_efuse_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_efuse_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_efuse_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_efuse_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_efuse_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_efuse_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_efuse_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc27xx_efuse_poll_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc2731_edata to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc2730_edata to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sc27xx_efuse_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sc27xx_efuse_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sc27xx_efuse_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @sc27xx_efuse_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc27xx_efuse_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %econfig = alloca %struct.nvmem_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %econfig) #5
  %2 = getelementptr inbounds i8, ptr %econfig, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 80)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 112, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %call3 = tail call ptr @dev_get_regmap(ptr noundef %5, ptr noundef null) #5
  %regmap = getelementptr inbounds %struct.sc27xx_efuse, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call3, ptr %regmap, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %base = getelementptr inbounds %struct.sc27xx_efuse, ptr %call.i, i32 0, i32 4
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef %base, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool10.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool10.not, label %if.end16, label %do.end14

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #8
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  %call17 = tail call i32 @of_hwspin_lock_get_id(ptr noundef %1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp slt i32 %call17, 0
  br i1 %cmp, label %do.end21, label %if.end23

do.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #8
  br label %cleanup

if.end23:                                         ; preds = %if.end16
  %call25 = tail call ptr @devm_hwspin_lock_request_specific(ptr noundef %dev, i32 noundef %call17) #5
  %hwlock = getelementptr inbounds %struct.sc27xx_efuse, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %hwlock to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call25, ptr %hwlock, align 4
  %tobool27.not = icmp eq ptr %call25, null
  br i1 %tobool27.not, label %do.end31, label %do.body34

do.end31:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #8
  br label %cleanup

do.body34:                                        ; preds = %if.end23
  %mutex = getelementptr inbounds %struct.sc27xx_efuse, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.16, ptr noundef nonnull @sc27xx_efuse_probe.__key) #5
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %call.i, align 4
  %call40 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #5
  %var_data = getelementptr inbounds %struct.sc27xx_efuse, ptr %call.i, i32 0, i32 5
  %9 = ptrtoint ptr %var_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call40, ptr %var_data, align 4
  %stride = getelementptr inbounds %struct.nvmem_config, ptr %econfig, i32 0, i32 20
  %10 = ptrtoint ptr %stride to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %stride, align 4
  %word_size = getelementptr inbounds %struct.nvmem_config, ptr %econfig, i32 0, i32 19
  %11 = ptrtoint ptr %word_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %word_size, align 4
  %read_only = getelementptr inbounds %struct.nvmem_config, ptr %econfig, i32 0, i32 10
  %12 = ptrtoint ptr %read_only to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %read_only, align 4
  %name = getelementptr inbounds %struct.nvmem_config, ptr %econfig, i32 0, i32 1
  %13 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str, ptr %name, align 4
  %size = getelementptr inbounds %struct.nvmem_config, ptr %econfig, i32 0, i32 18
  %14 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 64, ptr %size, align 4
  %reg_read = getelementptr inbounds %struct.nvmem_config, ptr %econfig, i32 0, i32 15
  %15 = ptrtoint ptr %reg_read to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @sc27xx_efuse_read, ptr %reg_read, align 4
  %priv = getelementptr inbounds %struct.nvmem_config, ptr %econfig, i32 0, i32 21
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %priv, align 4
  %17 = ptrtoint ptr %econfig to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev, ptr %econfig, align 4
  %call44 = call ptr @devm_nvmem_register(ptr noundef %dev, ptr noundef nonnull %econfig) #5
  %cmp.i = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end49, label %do.body34.cleanup_crit_edge

do.body34.cleanup_crit_edge:                      ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end49:                                         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #8
  %18 = ptrtoint ptr %call44 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end49, %do.body34.cleanup_crit_edge, %do.end31, %do.end21, %do.end14, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %do.end14 ], [ %call17, %do.end21 ], [ %18, %do.end49 ], [ -6, %do.end31 ], [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %do.body34.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %econfig) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_hwspin_lock_get_id(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwspin_lock_request_specific(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc27xx_efuse_read(ptr noundef %context, i32 noundef %offset, ptr nocapture noundef writeonly %val, i32 noundef %bytes) #2 align 64 {
entry:
  %buf = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #5
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %buf, align 4, !annotation !68
  %div77 = lshr i32 %offset, 1
  %rem = shl i32 %offset, 3
  %mul = and i32 %rem, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %offset)
  %cmp = icmp ugt i32 %offset, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bytes)
  %cmp1 = icmp ugt i32 %bytes, 2
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex.i = getelementptr inbounds %struct.sc27xx_efuse, ptr %context, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #5
  %hwlock.i = getelementptr inbounds %struct.sc27xx_efuse, ptr %context, i32 0, i32 2
  %1 = ptrtoint ptr %hwlock.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hwlock.i, align 4
  %call.i.i = tail call i32 @__hwspin_lock_timeout(ptr noundef %2, i32 noundef 5000, i32 noundef 3, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end3, label %sc27xx_efuse_lock.exit

sc27xx_efuse_lock.exit:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.20) #8
  tail call void @mutex_unlock(ptr noundef %mutex.i) #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %regmap = getelementptr inbounds %struct.sc27xx_efuse, ptr %context, i32 0, i32 1
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %var_data = getelementptr inbounds %struct.sc27xx_efuse, ptr %context, i32 0, i32 5
  %7 = ptrtoint ptr %var_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %var_data, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %10, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.unlock_efuse_crit_edge

if.end3.unlock_efuse_crit_edge:                   ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %unlock_efuse

if.end7:                                          ; preds = %if.end3
  %call8 = tail call fastcc i32 @sc27xx_efuse_poll_status(ptr noundef %context, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.disable_efuse_crit_edge

if.end7.disable_efuse_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %disable_efuse

if.end11:                                         ; preds = %if.end7
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %base = getelementptr inbounds %struct.sc27xx_efuse, ptr %context, i32 0, i32 4
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base, align 4
  %add = add i32 %14, 12
  %and = and i32 %div77, 31
  %call13 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef %add, i32 noundef %and) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end11.disable_efuse_crit_edge

if.end11.disable_efuse_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %disable_efuse

if.end16:                                         ; preds = %if.end11
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %base, align 4
  %add19 = add i32 %18, 16
  %call.i78 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef %add19, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %tobool21.not = icmp eq i32 %call.i78, 0
  br i1 %tobool21.not, label %if.end23, label %if.end16.disable_efuse_crit_edge

if.end16.disable_efuse_crit_edge:                 ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %disable_efuse

if.end23:                                         ; preds = %if.end16
  %call24 = tail call fastcc i32 @sc27xx_efuse_poll_status(ptr noundef %context, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end23.disable_efuse_crit_edge

if.end23.disable_efuse_crit_edge:                 ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %disable_efuse

if.end27:                                         ; preds = %if.end23
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %base, align 4
  %add30 = add i32 %22, 4
  %call31 = call i32 @regmap_read(ptr noundef %20, i32 noundef %add30, ptr noundef nonnull %buf) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end27.disable_efuse_crit_edge

if.end27.disable_efuse_crit_edge:                 ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %disable_efuse

if.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %base, align 4
  %add37 = add i32 %26, 16
  %call.i79 = call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef %add37, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %disable_efuse

disable_efuse:                                    ; preds = %if.end34, %if.end27.disable_efuse_crit_edge, %if.end23.disable_efuse_crit_edge, %if.end16.disable_efuse_crit_edge, %if.end11.disable_efuse_crit_edge, %if.end7.disable_efuse_crit_edge
  %ret.0 = phi i32 [ %call8, %if.end7.disable_efuse_crit_edge ], [ %call13, %if.end11.disable_efuse_crit_edge ], [ %call.i78, %if.end16.disable_efuse_crit_edge ], [ %call24, %if.end23.disable_efuse_crit_edge ], [ %call31, %if.end27.disable_efuse_crit_edge ], [ %call.i79, %if.end34 ]
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %29 = ptrtoint ptr %var_data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %var_data, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %call.i80 = call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef %32, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %unlock_efuse

unlock_efuse:                                     ; preds = %disable_efuse, %if.end3.unlock_efuse_crit_edge
  %ret.1 = phi i32 [ %call.i, %if.end3.unlock_efuse_crit_edge ], [ %ret.0, %disable_efuse ]
  %33 = ptrtoint ptr %hwlock.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hwlock.i, align 4
  call void @__hwspin_unlock(ptr noundef %34, i32 noundef 3, ptr noundef null) #5
  call void @mutex_unlock(ptr noundef %mutex.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool43.not = icmp eq i32 %ret.1, 0
  br i1 %tobool43.not, label %if.then44, label %unlock_efuse.cleanup_crit_edge

unlock_efuse.cleanup_crit_edge:                   ; preds = %unlock_efuse
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then44:                                        ; preds = %unlock_efuse
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %buf, align 4
  %shr = lshr i32 %36, %mul
  store i32 %shr, ptr %buf, align 4
  %37 = call ptr @memcpy(ptr %val, ptr %buf, i32 %bytes)
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %unlock_efuse.cleanup_crit_edge, %sc27xx_efuse_lock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i.i, %sc27xx_efuse_lock.exit ], [ 0, %if.then44 ], [ %ret.1, %unlock_efuse.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_nvmem_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sc27xx_efuse_poll_status(ptr nocapture noundef readonly %efuse, i32 noundef %bits) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !68
  %call = tail call i64 @ktime_get() #5
  %add.i = add i64 %call, 3000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 116) #5
  %regmap = getelementptr inbounds %struct.sc27xx_efuse, ptr %efuse, i32 0, i32 1
  %base = getelementptr inbounds %struct.sc27xx_efuse, ptr %efuse, i32 0, i32 4
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base, align 4
  %add66 = add i32 %4, 20
  %call867 = call i32 @regmap_read(ptr noundef %2, i32 noundef %add66, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call867)
  %tobool.not68 = icmp eq i32 %call867, 0
  br i1 %tobool.not68, label %entry.lor.lhs.false_crit_edge, label %entry.do.end36_crit_edge

entry.do.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end36

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then23.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, %bits
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %land.lhs.true, label %lor.lhs.false.lor.rhs_crit_edge

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call13 = call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then23

if.then23:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #5
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base, align 4
  %add = add i32 %10, 20
  %call8 = call i32 @regmap_read(ptr noundef %8, i32 noundef %add, ptr noundef nonnull %val) #5
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.then23.lor.lhs.false_crit_edge, label %if.then23.do.end36_crit_edge

if.then23.do.end36_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end36

if.then23.lor.lhs.false_crit_edge:                ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base, align 4
  %add19 = add i32 %14, 20
  %call20 = call i32 @regmap_read(ptr noundef %12, i32 noundef %add19, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool26.not = icmp eq i32 %call20, 0
  br i1 %tobool26.not, label %for.end.lor.rhs_crit_edge, label %for.end.do.end36_crit_edge

for.end.do.end36_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end36

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %and27 = and i32 %16, %bits
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %lor.rhs.do.end36_crit_edge, label %lor.rhs.cleanup_crit_edge

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.rhs.do.end36_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end36

do.end36:                                         ; preds = %lor.rhs.do.end36_crit_edge, %for.end.do.end36_crit_edge, %if.then23.do.end36_crit_edge, %entry.do.end36_crit_edge
  %tobool26.not55.ph = phi i32 [ %call867, %entry.do.end36_crit_edge ], [ %call20, %for.end.do.end36_crit_edge ], [ -110, %lor.rhs.do.end36_crit_edge ], [ %call8, %if.then23.do.end36_crit_edge ]
  %17 = ptrtoint ptr %efuse to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %efuse, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.22) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end36, %lor.rhs.cleanup_crit_edge
  %tobool26.not5572 = phi i32 [ %tobool26.not55.ph, %do.end36 ], [ 0, %lor.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %tobool26.not5572
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hwspin_lock_timeout(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__hwspin_unlock(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !53, !55, !57}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @__initcall__kmod_nvmem_sc27xx_efuse__170_274_sc27xx_efuse_driver_init6, !1, !"__initcall__kmod_nvmem_sc27xx_efuse__170_274_sc27xx_efuse_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/nvmem/sc27xx-efuse.c", i32 274, i32 1}
!2 = !{ptr @__exitcall_sc27xx_efuse_driver_exit, !1, !"__exitcall_sc27xx_efuse_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author171, !4, !"__UNIQUE_ID_author171", i1 false, i1 false}
!4 = !{!"../drivers/nvmem/sc27xx-efuse.c", i32 276, i32 1}
!5 = !{ptr @__UNIQUE_ID_description172, !6, !"__UNIQUE_ID_description172", i1 false, i1 false}
!6 = !{!"../drivers/nvmem/sc27xx-efuse.c", i32 277, i32 1}
!7 = !{ptr @__UNIQUE_ID_file173, !8, !"__UNIQUE_ID_file173", i1 false, i1 false}
!8 = !{!"../drivers/nvmem/sc27xx-efuse.c", i32 278, i32 1}
!9 = !{ptr @__UNIQUE_ID_license174, !8, !"__UNIQUE_ID_license174", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/nvmem/sc27xx-efuse.c", i32 269, i32 11}
!12 = !{ptr @sc27xx_efuse_driver, !13, !"sc27xx_efuse_driver", i1 false, i1 false}
!13 = !{!"../drivers/nvmem/sc27xx-efuse.c", i32 266, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/nvmem/sc27xx-efuse.c", i32 217, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @sc27xx_efuse_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @sc27xx_efuse_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/nvmem/sc27xx-efuse.c", i32 221, i32 33}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/nvmem/sc27xx-efuse.c", i32 223, i32 3}
!26 = !{ptr @sc27xx_efuse_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @sc27xx_efuse_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/nvmem/sc27xx-efuse.c", i32 229, i32 3}
!30 = !{ptr @sc27xx_efuse_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @sc27xx_efuse_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/nvmem/sc27xx-efuse.c", i32 235, i32 3}
!34 = !{ptr @sc27xx_efuse_probe._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @sc27xx_efuse_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @sc27xx_efuse_probe.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/nvmem/sc27xx-efuse.c", i32 239, i32 2}
!38 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/nvmem/sc27xx-efuse.c", i32 253, i32 3}
!41 = !{ptr @sc27xx_efuse_probe._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @sc27xx_efuse_probe._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/nvmem/sc27xx-efuse.c", i32 93, i32 3}
!45 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @sc27xx_efuse_lock._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @sc27xx_efuse_lock._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/nvmem/sc27xx-efuse.c", i32 118, i32 3}
!50 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @sc27xx_efuse_poll_status._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @sc27xx_efuse_poll_status._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @sc27xx_efuse_of_match, !54, !"sc27xx_efuse_of_match", i1 false, i1 false}
!54 = !{!"../drivers/nvmem/sc27xx-efuse.c", i32 260, i32 34}
!55 = !{ptr @sc2731_edata, !56, !"sc2731_edata", i1 false, i1 false}
!56 = !{!"../drivers/nvmem/sc27xx-efuse.c", i32 71, i32 47}
!57 = !{ptr @sc2730_edata, !58, !"sc2730_edata", i1 false, i1 false}
!58 = !{!"../drivers/nvmem/sc27xx-efuse.c", i32 75, i32 47}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{!"auto-init"}
