; ModuleID = '/llk/IR_all_yes/drivers/mfd/twl4030-audio.c_pt.bc'
source_filename = "../drivers/mfd/twl4030-audio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+twl4030_audio_enable_resource\22, \22a\22\09"
module asm "\09.weak\09__crc_twl4030_audio_enable_resource\09\09\09\09"
module asm "\09.long\09__crc_twl4030_audio_enable_resource\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_twl4030_audio_enable_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22twl4030_audio_enable_resource\22\09\09\09\09\09"
module asm "__kstrtabns_twl4030_audio_enable_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+twl4030_audio_disable_resource\22, \22a\22\09"
module asm "\09.weak\09__crc_twl4030_audio_disable_resource\09\09\09\09"
module asm "\09.long\09__crc_twl4030_audio_disable_resource\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_twl4030_audio_disable_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22twl4030_audio_disable_resource\22\09\09\09\09\09"
module asm "__kstrtabns_twl4030_audio_disable_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+twl4030_audio_get_mclk\22, \22a\22\09"
module asm "\09.weak\09__crc_twl4030_audio_get_mclk\09\09\09\09"
module asm "\09.long\09__crc_twl4030_audio_get_mclk\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_twl4030_audio_get_mclk:\09\09\09\09\09"
module asm "\09.asciz \09\22twl4030_audio_get_mclk\22\09\09\09\09\09"
module asm "__kstrtabns_twl4030_audio_get_mclk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
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
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.twl4030_audio = type { i32, %struct.mutex, [2 x %struct.twl4030_audio_resource], [2 x %struct.mfd_cell] }
%struct.twl4030_audio_resource = type { i32, i8, i8 }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.twl4030_audio_data = type { i32, ptr, ptr, i32, i32, i32 }

@twl4030_audio_dev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@twl4030_audio_enable_resource._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 85, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid resource ID (%u)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"twl4030_audio_enable_resource\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/mfd/twl4030-audio.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@twl4030_audio_enable_resource._entry_ptr = internal global ptr @twl4030_audio_enable_resource._entry, section ".printk_index", align 4
@__kstrtab_twl4030_audio_enable_resource = external dso_local constant [0 x i8], align 1
@__kstrtabns_twl4030_audio_enable_resource = external dso_local constant [0 x i8], align 1
@__ksymtab_twl4030_audio_enable_resource = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @twl4030_audio_enable_resource to i32), ptr @__kstrtab_twl4030_audio_enable_resource, ptr @__kstrtabns_twl4030_audio_enable_resource }, section "___ksymtab_gpl+twl4030_audio_enable_resource", align 4
@twl4030_audio_disable_resource._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.5, ptr @.str.2, i32 114, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"twl4030_audio_disable_resource\00", [33 x i8] zeroinitializer }, align 32
@twl4030_audio_disable_resource._entry_ptr = internal global ptr @twl4030_audio_disable_resource._entry, section ".printk_index", align 4
@twl4030_audio_disable_resource._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.2, i32 121, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Resource has been disabled already (%u)\0A\00", [55 x i8] zeroinitializer }, align 32
@twl4030_audio_disable_resource._entry_ptr.8 = internal global ptr @twl4030_audio_disable_resource._entry.6, section ".printk_index", align 4
@__kstrtab_twl4030_audio_disable_resource = external dso_local constant [0 x i8], align 1
@__kstrtabns_twl4030_audio_disable_resource = external dso_local constant [0 x i8], align 1
@__ksymtab_twl4030_audio_disable_resource = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @twl4030_audio_disable_resource to i32), ptr @__kstrtab_twl4030_audio_disable_resource, ptr @__kstrtabns_twl4030_audio_disable_resource }, section "___ksymtab_gpl+twl4030_audio_disable_resource", align 4
@__kstrtab_twl4030_audio_get_mclk = external dso_local constant [0 x i8], align 1
@__kstrtabns_twl4030_audio_get_mclk = external dso_local constant [0 x i8], align 1
@__ksymtab_twl4030_audio_get_mclk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @twl4030_audio_get_mclk to i32), ptr @__kstrtab_twl4030_audio_get_mclk, ptr @__kstrtabns_twl4030_audio_get_mclk }, section "___ksymtab_gpl+twl4030_audio_get_mclk", align 4
@__initcall__kmod_twl4030_audio__223_284_twl4030_audio_driver_init6 = internal global ptr @twl4030_audio_driver_init, section ".initcall6.init", align 4
@twl4030_audio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @twl4030_audio_probe, ptr @twl4030_audio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.9, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @twl4030_audio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_twl4030_audio_driver_exit = internal global ptr @twl4030_audio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author224 = internal constant [60 x i8] c"twl4030_audio.author=Peter Ujfalusi <peter.ujfalusi@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description225 = internal constant [57 x i8] c"twl4030_audio.description=TWL4030 audio block MFD driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file226 = internal constant [45 x i8] c"twl4030_audio.file=drivers/mfd/twl4030-audio\00", section ".modinfo", align 1
@__UNIQUE_ID_license227 = internal constant [26 x i8] c"twl4030_audio.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias228 = internal constant [43 x i8] c"twl4030_audio.alias=platform:twl4030-audio\00", section ".modinfo", align 1
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"twl4030-audio\00", [18 x i8] zeroinitializer }, align 32
@twl4030_audio_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-audio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@twl4030_audio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 188, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Platform data is missing\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"twl4030_audio_probe\00", [44 x i8] zeroinitializer }, align 32
@twl4030_audio_probe._entry_ptr = internal global ptr @twl4030_audio_probe._entry, section ".printk_index", align 4
@twl4030_audio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&audio->mutex\00", [18 x i8] zeroinitializer }, align 32
@twl4030_audio_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.2, i32 212, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid audio_mclk\0A\00", [44 x i8] zeroinitializer }, align 32
@twl4030_audio_probe._entry_ptr.15 = internal global ptr @twl4030_audio_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"twl4030-codec\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"twl4030-vibra\00", [18 x i8] zeroinitializer }, align 32
@twl4030_audio_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.11, ptr @.str.2, i32 251, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"No platform data found for childs\0A\00", [61 x i8] zeroinitializer }, align 32
@twl4030_audio_probe._entry_ptr.20 = internal global ptr @twl4030_audio_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"codec\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti,enable-vibra\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 19200000, i64 26000000, i64 38400000]
@___asan_gen_.23 = private unnamed_addr constant [18 x i8] c"twl4030_audio_dev\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 25, i32 32 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 84, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 113, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 120, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [21 x i8] c"twl4030_audio_driver\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 275, i32 31 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 277, i32 11 }
@___asan_gen_.62 = private unnamed_addr constant [23 x i8] c"twl4030_audio_of_match\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 269, i32 34 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 188, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 197, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 212, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 227, i32 16 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 236, i32 16 }
@___asan_gen_.92 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 251, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 155, i32 38 }
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.102 = private constant [31 x i8] c"../drivers/mfd/twl4030-audio.c\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 172, i32 34 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_alias228, ptr @__UNIQUE_ID_author224, ptr @__UNIQUE_ID_description225, ptr @__UNIQUE_ID_file226, ptr @__UNIQUE_ID_license227, ptr @__exitcall_twl4030_audio_driver_exit, ptr @__initcall__kmod_twl4030_audio__223_284_twl4030_audio_driver_init6, ptr @__ksymtab_twl4030_audio_disable_resource, ptr @__ksymtab_twl4030_audio_enable_resource, ptr @__ksymtab_twl4030_audio_get_mclk, ptr @twl4030_audio_disable_resource._entry, ptr @twl4030_audio_disable_resource._entry.6, ptr @twl4030_audio_disable_resource._entry_ptr, ptr @twl4030_audio_disable_resource._entry_ptr.8, ptr @twl4030_audio_driver_exit, ptr @twl4030_audio_enable_resource._entry, ptr @twl4030_audio_enable_resource._entry_ptr, ptr @twl4030_audio_probe._entry, ptr @twl4030_audio_probe._entry.13, ptr @twl4030_audio_probe._entry.18, ptr @twl4030_audio_probe._entry_ptr, ptr @twl4030_audio_probe._entry_ptr.15, ptr @twl4030_audio_probe._entry_ptr.20, ptr @twl4030_audio_dev, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @twl4030_audio_driver, ptr @.str.9, ptr @twl4030_audio_of_match, ptr @.str.10, ptr @.str.11, ptr @twl4030_audio_probe.__key, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_audio_dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_audio_enable_resource._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_audio_disable_resource._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_audio_disable_resource._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_audio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_audio_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_audio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_audio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_audio_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl4030_audio_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @twl4030_audio_enable_resource(i32 noundef %id) #0 align 64 {
entry:
  %val.i18 = alloca i8, align 1
  %val.addr.i.i = alloca i8, align 1
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @twl4030_audio_dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %id)
  %cmp = icmp ugt i32 %id, 1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %id) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %mutex = getelementptr inbounds %struct.twl4030_audio, ptr %2, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %arrayidx = getelementptr %struct.twl4030_audio, ptr %2, i32 0, i32 2, i32 %id
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %5 = load ptr, ptr @twl4030_audio_dev, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i, align 4
  br i1 %tobool.not, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #6
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %val.i, align 1, !annotation !75
  %reg.i = getelementptr %struct.twl4030_audio, ptr %7, i32 0, i32 2, i32 %id, i32 1
  %9 = ptrtoint ptr %reg.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %reg.i, align 4
  %call.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %val.i, i8 noundef zeroext %10, i32 noundef 1) #6
  %mask8.i = getelementptr %struct.twl4030_audio, ptr %7, i32 0, i32 2, i32 %id, i32 2
  %11 = ptrtoint ptr %mask8.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mask8.i, align 1
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %val.i, align 1
  %or23.i = or i8 %14, %12
  store i8 %or23.i, ptr %val.i, align 1
  %15 = ptrtoint ptr %reg.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %reg.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %17 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %or23.i, ptr %val.addr.i.i, align 1
  %call.i24.i = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext %16, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %18 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %val.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #6
  br label %if.end4

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i18) #6
  %20 = ptrtoint ptr %val.i18 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %val.i18, align 1, !annotation !75
  %reg.i20 = getelementptr %struct.twl4030_audio, ptr %7, i32 0, i32 2, i32 %id, i32 1
  %21 = ptrtoint ptr %reg.i20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %reg.i20, align 4
  %call.i.i21 = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %val.i18, i8 noundef zeroext %22, i32 noundef 1) #6
  %23 = ptrtoint ptr %val.i18 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %val.i18, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i18) #6
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then1
  %val.0.in = phi i8 [ %24, %if.else ], [ %19, %if.then1 ]
  %val.0 = zext i8 %val.0.in to i32
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 8
  %inc = add i32 %26, 1
  store i32 %inc, ptr %arrayidx, align 8
  call void @mutex_unlock(ptr noundef %mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %val.0, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @twl4030_audio_disable_resource(i32 noundef %id) #0 align 64 {
entry:
  %val.i33 = alloca i8, align 1
  %val.addr.i.i = alloca i8, align 1
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @twl4030_audio_dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %id)
  %cmp = icmp ugt i32 %id, 1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %id) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %mutex = getelementptr inbounds %struct.twl4030_audio, ptr %2, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %arrayidx = getelementptr %struct.twl4030_audio, ptr %2, i32 0, i32 2, i32 %id
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.end4, label %if.end7

do.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = load ptr, ptr @twl4030_audio_dev, align 4
  %dev5 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.7, i32 noundef %id) #9
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %dec = add i32 %4, -1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %dec, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool14.not = icmp eq i32 %dec, 0
  %7 = load ptr, ptr @twl4030_audio_dev, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  br i1 %tobool14.not, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #6
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %val.i, align 1, !annotation !75
  %reg.i = getelementptr %struct.twl4030_audio, ptr %9, i32 0, i32 2, i32 %id, i32 1
  %11 = ptrtoint ptr %reg.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %reg.i, align 4
  %call.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %val.i, i8 noundef zeroext %12, i32 noundef 1) #6
  %mask8.i = getelementptr %struct.twl4030_audio, ptr %9, i32 0, i32 2, i32 %id, i32 2
  %13 = ptrtoint ptr %mask8.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mask8.i, align 1
  %neg.i = xor i8 %14, -1
  %15 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %val.i, align 1
  %and.i = and i8 %16, %neg.i
  store i8 %and.i, ptr %val.i, align 1
  %17 = ptrtoint ptr %reg.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %reg.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %19 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %and.i, ptr %val.addr.i.i, align 1
  %call.i24.i = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext %18, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #6
  %20 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %val.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #6
  br label %if.end18

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i33) #6
  %22 = ptrtoint ptr %val.i33 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %val.i33, align 1, !annotation !75
  %reg.i35 = getelementptr %struct.twl4030_audio, ptr %9, i32 0, i32 2, i32 %id, i32 1
  %23 = ptrtoint ptr %reg.i35 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %reg.i35, align 4
  %call.i.i36 = call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull %val.i33, i8 noundef zeroext %24, i32 noundef 1) #6
  %25 = ptrtoint ptr %val.i33 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %val.i33, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i33) #6
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then15
  %val.0.in = phi i8 [ %26, %if.else ], [ %21, %if.then15 ]
  %val.0 = zext i8 %val.0.in to i32
  call void @mutex_unlock(ptr noundef %mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.end4, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %val.0, %if.end18 ], [ -1, %do.end4 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @twl4030_audio_get_mclk() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @twl4030_audio_dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  ret i32 %4
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_audio_driver_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @twl4030_audio_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @twl4030_audio_driver_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @twl4030_audio_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_read(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_write(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_audio_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %vibra.i = alloca i32, align 4
  %val.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  %tobool2.not = icmp eq ptr %3, null
  %or.cond = select i1 %tobool.not, i1 %tobool2.not, i1 false
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 288, i32 noundef 3520) #6
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %do.body9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body9:                                         ; preds = %if.end
  %mutex = getelementptr inbounds %struct.twl4030_audio, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.12, ptr noundef nonnull @twl4030_audio_probe.__key) #6
  %call12 = tail call i32 @twl_get_hfclk_rate() #6
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call12, ptr %call.i, align 8
  %5 = zext i32 %call12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call12, label %do.end18 [
    i32 19200000, label %do.body9.sw.epilog_crit_edge
    i32 26000000, label %sw.bb14
    i32 38400000, label %sw.bb15
  ]

do.body9.sw.epilog_crit_edge:                     ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb14:                                          ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb15:                                          ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end18:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb15, %sw.bb14, %do.body9.sw.epilog_crit_edge
  %val.0 = phi i8 [ 15, %sw.bb15 ], [ 6, %sw.bb14 ], [ 5, %do.body9.sw.epilog_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %6 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %val.0, ptr %val.addr.i, align 1
  %call.i106 = call i32 @twl_i2c_write(i8 noundef zeroext 9, ptr noundef nonnull %val.addr.i, i8 noundef zeroext 58, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  %reg = getelementptr inbounds %struct.twl4030_audio, ptr %call.i, i32 0, i32 2, i32 0, i32 1
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %reg, align 4
  %mask = getelementptr inbounds %struct.twl4030_audio, ptr %call.i, i32 0, i32 2, i32 0, i32 2
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %mask, align 1
  %reg25 = getelementptr %struct.twl4030_audio, ptr %call.i, i32 0, i32 2, i32 1, i32 1
  %9 = ptrtoint ptr %reg25 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 58, ptr %reg25, align 4
  %mask28 = getelementptr %struct.twl4030_audio, ptr %call.i, i32 0, i32 2, i32 1, i32 2
  %10 = ptrtoint ptr %mask28 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 16, ptr %mask28, align 1
  br i1 %tobool.not, label %if.end.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %sw.epilog
  %codec.i = getelementptr inbounds %struct.twl4030_audio_data, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %codec.i, align 4
  %tobool1.not.i = icmp eq ptr %12, null
  br i1 %tobool1.not.i, label %if.end.i.thread, label %land.lhs.true.i.if.end35.thread118_crit_edge

land.lhs.true.i.if.end35.thread118_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35.thread118

if.end.i:                                         ; preds = %sw.epilog
  %call.i107 = call ptr @of_get_child_by_name(ptr noundef %3, ptr noundef nonnull @.str.21) #6
  %tobool2.not.i = icmp eq ptr %call.i107, null
  br i1 %tobool2.not.i, label %if.end35, label %if.end35.thread

if.end.i.thread:                                  ; preds = %land.lhs.true.i
  %call.i107121 = call ptr @of_get_child_by_name(ptr noundef %3, ptr noundef nonnull @.str.21) #6
  %tobool2.not.i122 = icmp eq ptr %call.i107121, null
  br i1 %tobool2.not.i122, label %if.end35.thread124, label %if.then30.thread140

if.then30.thread140:                              ; preds = %if.end.i.thread
  call void @__sanitizer_cov_trace_pc() #8
  call void @of_node_put(ptr noundef nonnull %call.i107121) #6
  br label %if.end35.thread118

if.end35.thread124:                               ; preds = %if.end.i.thread
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vibra.i) #6
  br label %land.lhs.true.i110

if.end35.thread:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @of_node_put(ptr noundef nonnull %call.i107) #6
  %cells = getelementptr inbounds %struct.twl4030_audio, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %cells to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.16, ptr %cells, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vibra.i) #6
  %14 = ptrtoint ptr %vibra.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %vibra.i, align 4, !annotation !75
  br label %if.end.i111

if.end35.thread118:                               ; preds = %if.then30.thread140, %land.lhs.true.i.if.end35.thread118_crit_edge
  %cells114 = getelementptr inbounds %struct.twl4030_audio, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %cells114 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.16, ptr %cells114, align 8
  %16 = ptrtoint ptr %codec.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %codec.i, align 4
  %platform_data = getelementptr inbounds %struct.twl4030_audio, ptr %call.i, i32 0, i32 3, i32 0, i32 7
  %18 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %platform_data, align 4
  %pdata_size = getelementptr inbounds %struct.twl4030_audio, ptr %call.i, i32 0, i32 3, i32 0, i32 8
  %19 = ptrtoint ptr %pdata_size to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 20, ptr %pdata_size, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vibra.i) #6
  br label %land.lhs.true.i110

if.end35:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vibra.i) #6
  %20 = ptrtoint ptr %vibra.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %vibra.i, align 4, !annotation !75
  br label %if.end.i111

land.lhs.true.i110:                               ; preds = %if.end35.thread118, %if.end35.thread124
  %childs.0120 = phi i32 [ 1, %if.end35.thread118 ], [ 0, %if.end35.thread124 ]
  %21 = ptrtoint ptr %vibra.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %vibra.i, align 4
  %vibra1.i = getelementptr inbounds %struct.twl4030_audio_data, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %vibra1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vibra1.i, align 4
  %tobool2.not.i109 = icmp eq ptr %23, null
  br i1 %tobool2.not.i109, label %land.lhs.true.i110.if.end.i111_crit_edge, label %if.then37.thread

land.lhs.true.i110.if.end.i111_crit_edge:         ; preds = %land.lhs.true.i110
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i111

if.then37.thread:                                 ; preds = %land.lhs.true.i110
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vibra.i) #6
  %arrayidx39130 = getelementptr %struct.twl4030_audio, ptr %call.i, i32 0, i32 3, i32 %childs.0120
  %24 = ptrtoint ptr %arrayidx39130 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.17, ptr %arrayidx39130, align 8
  br label %if.then42

if.end.i111:                                      ; preds = %land.lhs.true.i110.if.end.i111_crit_edge, %if.end35, %if.end35.thread
  %childs.0117 = phi i32 [ 1, %if.end35.thread ], [ %childs.0120, %land.lhs.true.i110.if.end.i111_crit_edge ], [ 0, %if.end35 ]
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.22, ptr noundef nonnull %vibra.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool3.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool3.not.i, label %land.lhs.true4.i, label %if.end.i111.if.end47_crit_edge

if.end.i111.if.end47_crit_edge:                   ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

land.lhs.true4.i:                                 ; preds = %if.end.i111
  %25 = ptrtoint ptr %vibra.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vibra.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool5.not.i = icmp eq i32 %26, 0
  br i1 %tobool5.not.i, label %land.lhs.true4.i.if.end47_crit_edge, label %if.then37

land.lhs.true4.i.if.end47_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then37:                                        ; preds = %land.lhs.true4.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vibra.i) #6
  %arrayidx39 = getelementptr %struct.twl4030_audio, ptr %call.i, i32 0, i32 3, i32 %childs.0117
  %27 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.17, ptr %arrayidx39, align 8
  br i1 %tobool.not, label %if.then37.if.end47.thread_crit_edge, label %if.then37.if.then42_crit_edge

if.then37.if.then42_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then42

if.then37.if.end47.thread_crit_edge:              ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47.thread

if.then42:                                        ; preds = %if.then37.if.then42_crit_edge, %if.then37.thread
  %childs.0116.ph131 = phi i32 [ %childs.0120, %if.then37.thread ], [ %childs.0117, %if.then37.if.then42_crit_edge ]
  %vibra = getelementptr inbounds %struct.twl4030_audio_data, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %vibra to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vibra, align 4
  %platform_data43 = getelementptr %struct.twl4030_audio, ptr %call.i, i32 0, i32 3, i32 %childs.0116.ph131, i32 7
  %30 = ptrtoint ptr %platform_data43 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %platform_data43, align 4
  %pdata_size44 = getelementptr %struct.twl4030_audio, ptr %call.i, i32 0, i32 3, i32 %childs.0116.ph131, i32 8
  %31 = ptrtoint ptr %pdata_size44 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 4, ptr %pdata_size44, align 8
  br label %if.end47.thread

if.end47.thread:                                  ; preds = %if.then42, %if.then37.if.end47.thread_crit_edge
  %childs.0116.ph132 = phi i32 [ %childs.0116.ph131, %if.then42 ], [ %childs.0117, %if.then37.if.end47.thread_crit_edge ]
  %inc46 = add nuw nsw i32 %childs.0116.ph132, 1
  %driver_data.i.i134 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %32 = ptrtoint ptr %driver_data.i.i134 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i, ptr %driver_data.i.i134, align 4
  store ptr %pdev, ptr @twl4030_audio_dev, align 4
  br label %if.end57

if.end47:                                         ; preds = %land.lhs.true4.i.if.end47_crit_edge, %if.end.i111.if.end47_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vibra.i) #6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %33 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  store ptr %pdev, ptr @twl4030_audio_dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %childs.0117)
  %tobool48.not = icmp eq i32 %childs.0117, 0
  br i1 %tobool48.not, label %if.end57.thread, label %if.end47.if.end57_crit_edge

if.end47.if.end57_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.end57.thread:                                  ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #9
  br label %if.then59

if.end57:                                         ; preds = %if.end47.if.end57_crit_edge, %if.end47.thread
  %childs.1136 = phi i32 [ %inc46, %if.end47.thread ], [ 1, %if.end47.if.end57_crit_edge ]
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %34 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %id, align 4
  %cells51 = getelementptr inbounds %struct.twl4030_audio, ptr %call.i, i32 0, i32 3
  %call52 = call i32 @mfd_add_devices(ptr noundef %dev, i32 noundef %35, ptr noundef %cells51, i32 noundef %childs.1136, ptr noundef null, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool58.not = icmp eq i32 %call52, 0
  br i1 %tobool58.not, label %if.end57.cleanup_crit_edge, label %if.end57.if.then59_crit_edge

if.end57.if.then59_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then59

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then59:                                        ; preds = %if.end57.if.then59_crit_edge, %if.end57.thread
  %ret.0139 = phi i32 [ -19, %if.end57.thread ], [ %call52, %if.end57.if.then59_crit_edge ]
  store ptr null, ptr @twl4030_audio_dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then59, %if.end57.cleanup_crit_edge, %do.end18, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end18 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %ret.0139, %if.then59 ], [ 0, %if.end57.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl4030_audio_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @mfd_remove_devices(ptr noundef %dev) #6
  store ptr null, ptr @twl4030_audio_dev, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_get_hfclk_rate() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mfd_remove_devices(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !16, !17, !18, !20, !22, !24, !25, !27, !29, !31, !32, !34, !36, !38, !40, !42, !43, !44, !45, !47, !48, !50, !51, !52, !54, !56, !58, !59, !60, !62, !64}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mfd/twl4030-audio.c", i32 84, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @twl4030_audio_enable_resource._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @twl4030_audio_enable_resource._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_twl4030_audio_enable_resource, !9, !"__ksymtab_twl4030_audio_enable_resource", i1 false, i1 false}
!9 = !{!"../drivers/mfd/twl4030-audio.c", i32 101, i32 1}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mfd/twl4030-audio.c", i32 113, i32 3}
!12 = !{ptr @twl4030_audio_disable_resource._entry, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @twl4030_audio_disable_resource._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mfd/twl4030-audio.c", i32 120, i32 3}
!16 = !{ptr @twl4030_audio_disable_resource._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @twl4030_audio_disable_resource._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @__ksymtab_twl4030_audio_disable_resource, !19, !"__ksymtab_twl4030_audio_disable_resource", i1 false, i1 false}
!19 = !{!"../drivers/mfd/twl4030-audio.c", i32 137, i32 1}
!20 = !{ptr @__ksymtab_twl4030_audio_get_mclk, !21, !"__ksymtab_twl4030_audio_get_mclk", i1 false, i1 false}
!21 = !{!"../drivers/mfd/twl4030-audio.c", i32 145, i32 1}
!22 = !{ptr @__initcall__kmod_twl4030_audio__223_284_twl4030_audio_driver_init6, !23, !"__initcall__kmod_twl4030_audio__223_284_twl4030_audio_driver_init6", i1 false, i1 false}
!23 = !{!"../drivers/mfd/twl4030-audio.c", i32 284, i32 1}
!24 = !{ptr @__exitcall_twl4030_audio_driver_exit, !23, !"__exitcall_twl4030_audio_driver_exit", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_author224, !26, !"__UNIQUE_ID_author224", i1 false, i1 false}
!26 = !{!"../drivers/mfd/twl4030-audio.c", i32 286, i32 1}
!27 = !{ptr @__UNIQUE_ID_description225, !28, !"__UNIQUE_ID_description225", i1 false, i1 false}
!28 = !{!"../drivers/mfd/twl4030-audio.c", i32 287, i32 1}
!29 = !{ptr @__UNIQUE_ID_file226, !30, !"__UNIQUE_ID_file226", i1 false, i1 false}
!30 = !{!"../drivers/mfd/twl4030-audio.c", i32 288, i32 1}
!31 = !{ptr @__UNIQUE_ID_license227, !30, !"__UNIQUE_ID_license227", i1 false, i1 false}
!32 = !{ptr @__UNIQUE_ID_alias228, !33, !"__UNIQUE_ID_alias228", i1 false, i1 false}
!33 = !{!"../drivers/mfd/twl4030-audio.c", i32 289, i32 1}
!34 = !{ptr @twl4030_audio_dev, !35, !"twl4030_audio_dev", i1 false, i1 false}
!35 = !{!"../drivers/mfd/twl4030-audio.c", i32 25, i32 32}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mfd/twl4030-audio.c", i32 277, i32 11}
!38 = !{ptr @twl4030_audio_driver, !39, !"twl4030_audio_driver", i1 false, i1 false}
!39 = !{!"../drivers/mfd/twl4030-audio.c", i32 275, i32 31}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mfd/twl4030-audio.c", i32 188, i32 3}
!42 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @twl4030_audio_probe._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @twl4030_audio_probe._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @twl4030_audio_probe.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../drivers/mfd/twl4030-audio.c", i32 197, i32 2}
!47 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mfd/twl4030-audio.c", i32 212, i32 3}
!50 = !{ptr @twl4030_audio_probe._entry.13, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @twl4030_audio_probe._entry_ptr.15, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mfd/twl4030-audio.c", i32 227, i32 16}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mfd/twl4030-audio.c", i32 236, i32 16}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mfd/twl4030-audio.c", i32 251, i32 3}
!58 = !{ptr @twl4030_audio_probe._entry.18, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @twl4030_audio_probe._entry_ptr.20, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mfd/twl4030-audio.c", i32 155, i32 38}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mfd/twl4030-audio.c", i32 172, i32 34}
!64 = !{ptr @twl4030_audio_of_match, !65, !"twl4030_audio_of_match", i1 false, i1 false}
!65 = !{!"../drivers/mfd/twl4030-audio.c", i32 269, i32 34}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{!"auto-init"}
