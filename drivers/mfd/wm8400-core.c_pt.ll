; ModuleID = '/llk/IR_all_yes/drivers/mfd/wm8400-core.c_pt.bc'
source_filename = "../drivers/mfd/wm8400-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+wm8400_reset_codec_reg_cache\22, \22a\22\09"
module asm "\09.weak\09__crc_wm8400_reset_codec_reg_cache\09\09\09\09"
module asm "\09.long\09__crc_wm8400_reset_codec_reg_cache\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm8400_reset_codec_reg_cache:\09\09\09\09\09"
module asm "\09.asciz \09\22wm8400_reset_codec_reg_cache\22\09\09\09\09\09"
module asm "__kstrtabns_wm8400_reset_codec_reg_cache:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.wm8400 = type { ptr, ptr, [6 x %struct.platform_device] }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }

@wm8400_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 16, ptr null, ptr null, ptr @wm8400_volatile, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 84, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_wm8400_reset_codec_reg_cache = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm8400_reset_codec_reg_cache = external dso_local constant [0 x i8], align 1
@__ksymtab_wm8400_reset_codec_reg_cache = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm8400_reset_codec_reg_cache to i32), ptr @__kstrtab_wm8400_reset_codec_reg_cache, ptr @__kstrtabns_wm8400_reset_codec_reg_cache }, section "___ksymtab_gpl+wm8400_reset_codec_reg_cache", align 4
@__initcall__kmod_wm8400_core__288_166_wm8400_driver_init4 = internal global ptr @wm8400_driver_init, section ".initcall4.init", align 4
@wm8400_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @wm8400_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @wm8400_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@wm8400_driver_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013Failed to register I2C driver: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wm8400_driver_init\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/mfd/wm8400-core.c\00", [38 x i8] zeroinitializer }, align 32
@wm8400_driver_init._entry_ptr = internal global ptr @wm8400_driver_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"WM8400\00", [25 x i8] zeroinitializer }, align 32
@wm8400_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"wm8400\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@wm8400_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"wm8400_core:130:(&wm8400_regmap_config)->lock\00", [50 x i8] zeroinitializer }, align 32
@wm8400_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 62, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Chip ID register read failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm8400_init\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wm8400_init._entry_ptr = internal global ptr @wm8400_init._entry, section ".printk_index", align 4
@wm8400_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.6, ptr @.str.2, i32 67, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Device is not a WM8400, ID is %x\0A\00", [62 x i8] zeroinitializer }, align 32
@wm8400_init._entry_ptr.11 = internal global ptr @wm8400_init._entry.9, section ".printk_index", align 4
@wm8400_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.6, ptr @.str.2, i32 73, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ID register read failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@wm8400_init._entry_ptr.14 = internal global ptr @wm8400_init._entry.12, section ".printk_index", align 4
@wm8400_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.6, ptr @.str.2, i32 77, ptr @.str.17, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"WM8400 revision %x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@wm8400_init._entry_ptr.18 = internal global ptr @wm8400_init._entry.15, section ".printk_index", align 4
@wm8400_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.6, ptr @.str.2, i32 81, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to register codec\0A\00", [38 x i8] zeroinitializer }, align 32
@wm8400_init._entry_ptr.21 = internal global ptr @wm8400_init._entry.19, section ".printk_index", align 4
@wm8400_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.6, ptr @.str.2, i32 89, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Platform init failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@wm8400_init._entry_ptr.24 = internal global ptr @wm8400_init._entry.22, section ".printk_index", align 4
@wm8400_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.6, ptr @.str.2, i32 93, ptr @.str.27, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"No platform initialisation supplied\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@wm8400_init._entry_ptr.28 = internal global ptr @wm8400_init._entry.25, section ".printk_index", align 4
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wm8400-codec\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.30 = private unnamed_addr constant [21 x i8] c"wm8400_regmap_config\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 98, i32 35 }
@___asan_gen_.33 = private unnamed_addr constant [18 x i8] c"wm8400_i2c_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 145, i32 26 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 161, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 147, i32 11 }
@___asan_gen_.51 = private unnamed_addr constant [14 x i8] c"wm8400_i2c_id\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 140, i32 35 }
@___asan_gen_.54 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 130, i32 19 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 62, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 66, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 73, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 77, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 81, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 88, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 93, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.118 = private constant [29 x i8] c"../drivers/mfd/wm8400-core.c\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 36, i32 11 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__initcall__kmod_wm8400_core__288_166_wm8400_driver_init4, ptr @__ksymtab_wm8400_reset_codec_reg_cache, ptr @wm8400_driver_init._entry, ptr @wm8400_driver_init._entry_ptr, ptr @wm8400_init._entry, ptr @wm8400_init._entry.12, ptr @wm8400_init._entry.15, ptr @wm8400_init._entry.19, ptr @wm8400_init._entry.22, ptr @wm8400_init._entry.25, ptr @wm8400_init._entry.9, ptr @wm8400_init._entry_ptr, ptr @wm8400_init._entry_ptr.11, ptr @wm8400_init._entry_ptr.14, ptr @wm8400_init._entry_ptr.18, ptr @wm8400_init._entry_ptr.21, ptr @wm8400_init._entry_ptr.24, ptr @wm8400_init._entry_ptr.28, ptr @wm8400_regmap_config, ptr @wm8400_i2c_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @wm8400_i2c_id, ptr @wm8400_i2c_probe._key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.27, ptr @.str.29], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_driver_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wm8400_reset_codec_reg_cache(ptr nocapture noundef readonly %wm8400) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.wm8400, ptr %wm8400, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call = tail call i32 @regmap_reinit_cache(ptr noundef %1, ptr noundef nonnull @wm8400_regmap_config) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_reinit_cache(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8400_driver_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @wm8400_i2c_driver) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wm8400_volatile(ptr nocapture noundef readnone %dev, i32 noundef %reg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %reg, -79
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 4
  %switch.cast = trunc i32 %switch.tableidx to i4
  %switch.downshift = lshr i4 -3, %switch.cast
  %1 = and i4 %switch.downshift, 1
  %2 = sext i4 %1 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %switch.masked = icmp ne i4 %1, 0
  %retval.0 = select i1 %0, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8400_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  %cell.i.i = alloca %struct.mfd_cell, align 8
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 5960, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @wm8400_regmap_config, ptr noundef nonnull @wm8400_i2c_probe._key, ptr noundef nonnull @.str.4) #6
  %regmap = getelementptr inbounds %struct.wm8400, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %call.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 7
  %3 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #6
  %5 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %reg.i, align 4, !annotation !65
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call.i24 = call i32 @regmap_read(ptr noundef %call1, i32 noundef 0, ptr noundef nonnull %reg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %cmp.not.i = icmp eq i32 %call.i24, 0
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.5) #9
  br label %wm8400_init.exit

if.end.i:                                         ; preds = %if.end7
  %9 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24946, i32 %10)
  %cmp2.not.i = icmp eq i32 %10, 24946
  br i1 %cmp2.not.i, label %if.end8.i, label %do.end6.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.10, i32 noundef %10) #9
  br label %wm8400_init.exit

if.end8.i:                                        ; preds = %if.end.i
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call10.i = call i32 @regmap_read(ptr noundef %14, i32 noundef 1, ptr noundef nonnull %reg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.not.i = icmp eq i32 %call10.i, 0
  br i1 %cmp11.not.i, label %if.end17.i, label %do.end15.i

do.end15.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.13, i32 noundef %call10.i) #9
  br label %wm8400_init.exit

if.end17.i:                                       ; preds = %if.end8.i
  %17 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg.i, align 4
  %and.i = lshr i32 %18, 12
  %shr.i = and i32 %and.i, 7
  store i32 %shr.i, ptr %reg.i, align 4
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str.16, i32 noundef %shr.i) #9
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %cell.i.i) #6
  %21 = call ptr @memset(ptr %cell.i.i, i32 0, i32 88)
  %22 = ptrtoint ptr %cell.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.29, ptr %cell.i.i, align 8
  %platform_data.i.i = getelementptr inbounds %struct.mfd_cell, ptr %cell.i.i, i32 0, i32 7
  %23 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %platform_data.i.i, align 4
  %pdata_size.i.i = getelementptr inbounds %struct.mfd_cell, ptr %cell.i.i, i32 0, i32 8
  %24 = ptrtoint ptr %pdata_size.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 5960, ptr %pdata_size.i.i, align 8
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i, align 8
  %call.i.i = call i32 @devm_mfd_add_devices(ptr noundef %26, i32 noundef -1, ptr noundef nonnull %cell.i.i, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %cell.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp23.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp23.not.i, label %if.end29.i, label %do.end27.i

do.end27.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.20) #9
  br label %wm8400_init.exit

if.end29.i:                                       ; preds = %if.end17.i
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end29.i.do.end44.i_crit_edge, label %land.lhs.true.i

if.end29.i.do.end44.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end44.i

land.lhs.true.i:                                  ; preds = %if.end29.i
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %4, align 4
  %tobool30.not.i = icmp eq ptr %30, null
  br i1 %tobool30.not.i, label %land.lhs.true.i.do.end44.i_crit_edge, label %if.then31.i

land.lhs.true.i.do.end44.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end44.i

if.then31.i:                                      ; preds = %land.lhs.true.i
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 8
  %call34.i = call i32 %30(ptr noundef %32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %cmp35.not.i = icmp eq i32 %call34.i, 0
  br i1 %cmp35.not.i, label %if.then31.i.wm8400_init.exit_crit_edge, label %do.end39.i

if.then31.i.wm8400_init.exit_crit_edge:           ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wm8400_init.exit

do.end39.i:                                       ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.23, i32 noundef %call34.i) #9
  br label %wm8400_init.exit

do.end44.i:                                       ; preds = %land.lhs.true.i.do.end44.i_crit_edge, %if.end29.i.do.end44.i_crit_edge
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %36, ptr noundef nonnull @.str.26) #9
  br label %wm8400_init.exit

wm8400_init.exit:                                 ; preds = %do.end44.i, %do.end39.i, %if.then31.i.wm8400_init.exit_crit_edge, %do.end27.i, %do.end15.i, %do.end6.i, %do.end.i
  %retval.0.i = phi i32 [ -5, %do.end.i ], [ -19, %do.end6.i ], [ %call10.i, %do.end15.i ], [ %call.i.i, %do.end27.i ], [ %call34.i, %do.end39.i ], [ 0, %if.then31.i.wm8400_init.exit_crit_edge ], [ 0, %do.end44.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #6
  br label %cleanup

cleanup:                                          ; preds = %wm8400_init.exit, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then4 ], [ %retval.0.i, %wm8400_init.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__ksymtab_wm8400_reset_codec_reg_cache, !1, !"__ksymtab_wm8400_reset_codec_reg_cache", i1 false, i1 false}
!1 = !{!"../drivers/mfd/wm8400-core.c", i32 118, i32 1}
!2 = !{ptr @__initcall__kmod_wm8400_core__288_166_wm8400_driver_init4, !3, !"__initcall__kmod_wm8400_core__288_166_wm8400_driver_init4", i1 false, i1 false}
!3 = !{!"../drivers/mfd/wm8400-core.c", i32 166, i32 1}
!4 = !{ptr @wm8400_regmap_config, !5, !"wm8400_regmap_config", i1 false, i1 false}
!5 = !{!"../drivers/mfd/wm8400-core.c", i32 98, i32 35}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/mfd/wm8400-core.c", i32 161, i32 3}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @wm8400_driver_init._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @wm8400_driver_init._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mfd/wm8400-core.c", i32 147, i32 11}
!14 = !{ptr @wm8400_i2c_driver, !15, !"wm8400_i2c_driver", i1 false, i1 false}
!15 = !{!"../drivers/mfd/wm8400-core.c", i32 145, i32 26}
!16 = !{ptr @wm8400_i2c_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../drivers/mfd/wm8400-core.c", i32 130, i32 19}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mfd/wm8400-core.c", i32 62, i32 3}
!21 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @wm8400_init._entry, !20, !"_entry", i1 false, i1 false}
!25 = !{ptr @wm8400_init._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mfd/wm8400-core.c", i32 66, i32 3}
!28 = !{ptr @wm8400_init._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @wm8400_init._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mfd/wm8400-core.c", i32 73, i32 3}
!32 = !{ptr @wm8400_init._entry.12, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @wm8400_init._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mfd/wm8400-core.c", i32 77, i32 2}
!36 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @wm8400_init._entry.15, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @wm8400_init._entry_ptr.18, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mfd/wm8400-core.c", i32 81, i32 3}
!41 = !{ptr @wm8400_init._entry.19, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @wm8400_init._entry_ptr.21, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mfd/wm8400-core.c", i32 88, i32 4}
!45 = !{ptr @wm8400_init._entry.22, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @wm8400_init._entry_ptr.24, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mfd/wm8400-core.c", i32 93, i32 3}
!49 = !{ptr @.str.27, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @wm8400_init._entry.25, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @wm8400_init._entry_ptr.28, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mfd/wm8400-core.c", i32 36, i32 11}
!54 = !{ptr @wm8400_i2c_id, !55, !"wm8400_i2c_id", i1 false, i1 false}
!55 = !{!"../drivers/mfd/wm8400-core.c", i32 140, i32 35}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"auto-init"}
