; ModuleID = '/llk/IR_all_yes/sound/core/seq_device.c_pt.bc'
source_filename = "../sound/core/seq_device.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+snd_seq_autoload_init\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_seq_autoload_init\09\09\09\09"
module asm "\09.long\09__crc_snd_seq_autoload_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_seq_autoload_init:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_seq_autoload_init\22\09\09\09\09\09"
module asm "__kstrtabns_snd_seq_autoload_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_seq_autoload_exit\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_seq_autoload_exit\09\09\09\09"
module asm "\09.long\09__crc_snd_seq_autoload_exit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_seq_autoload_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_seq_autoload_exit\22\09\09\09\09\09"
module asm "__kstrtabns_snd_seq_autoload_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_seq_device_load_drivers\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_seq_device_load_drivers\09\09\09\09"
module asm "\09.long\09__crc_snd_seq_device_load_drivers\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_seq_device_load_drivers:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_seq_device_load_drivers\22\09\09\09\09\09"
module asm "__kstrtabns_snd_seq_device_load_drivers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_seq_device_new\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_seq_device_new\09\09\09\09"
module asm "\09.long\09__crc_snd_seq_device_new\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_seq_device_new:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_seq_device_new\22\09\09\09\09\09"
module asm "__kstrtabns_snd_seq_device_new:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__snd_seq_driver_register\22, \22a\22\09"
module asm "\09.weak\09__crc___snd_seq_driver_register\09\09\09\09"
module asm "\09.long\09__crc___snd_seq_driver_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___snd_seq_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22__snd_seq_driver_register\22\09\09\09\09\09"
module asm "__kstrtabns___snd_seq_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+snd_seq_driver_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_seq_driver_unregister\09\09\09\09"
module asm "\09.long\09__crc_snd_seq_driver_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_seq_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_seq_driver_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_snd_seq_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_device_ops = type { ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_seq_device = type { ptr, i32, ptr, [80 x i8], i32, ptr, ptr, ptr, %struct.device }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_device = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.snd_seq_driver = type { %struct.device_driver, ptr, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.64, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.64 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }

@__UNIQUE_ID_author225 = internal constant [51 x i8] c"snd_seq_device.author=Takashi Iwai <tiwai@suse.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description226 = internal constant [60 x i8] c"snd_seq_device.description=ALSA sequencer device management\00", section ".modinfo", align 1
@__UNIQUE_ID_file227 = internal constant [46 x i8] c"snd_seq_device.file=sound/core/snd-seq-device\00", section ".modinfo", align 1
@__UNIQUE_ID_license228 = internal constant [27 x i8] c"snd_seq_device.license=GPL\00", section ".modinfo", align 1
@snd_seq_in_init = internal global { %struct.atomic_t, [28 x i8] } { %struct.atomic_t { i32 1 }, [28 x i8] zeroinitializer }, align 32
@__kstrtab_snd_seq_autoload_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_seq_autoload_init = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_seq_autoload_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_seq_autoload_init to i32), ptr @__kstrtab_snd_seq_autoload_init, ptr @__kstrtabns_snd_seq_autoload_init }, section "___ksymtab+snd_seq_autoload_init", align 4
@__kstrtab_snd_seq_autoload_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_seq_autoload_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_seq_autoload_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_seq_autoload_exit to i32), ptr @__kstrtab_snd_seq_autoload_exit, ptr @__kstrtabns_snd_seq_autoload_exit }, section "___ksymtab+snd_seq_autoload_exit", align 4
@autoload_work = internal global { %struct.work_struct, [52 x i8] } { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @autoload_work, i64 4), ptr getelementptr (i8, ptr @autoload_work, i64 4) }, ptr @autoload_drivers, %struct.lockdep_map { ptr @autoload_work, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_snd_seq_device_load_drivers = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_seq_device_load_drivers = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_seq_device_load_drivers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_seq_device_load_drivers to i32), ptr @__kstrtab_snd_seq_device_load_drivers, ptr @__kstrtabns_snd_seq_device_load_drivers }, section "___ksymtab+snd_seq_device_load_drivers", align 4
@snd_seq_device_new.dops = internal constant { %struct.snd_device_ops, [20 x i8] } { %struct.snd_device_ops { ptr @snd_seq_device_dev_free, ptr @snd_seq_device_dev_register, ptr @snd_seq_device_dev_disconnect }, [20 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sound/core/seq_device.c\00", [40 x i8] zeroinitializer }, align 32
@snd_seq_bus_type = internal global { %struct.bus_type, [32 x i8] } { %struct.bus_type { ptr @.str.4, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_seq_bus_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-%d-%d\00", [23 x i8] zeroinitializer }, align 32
@__kstrtab_snd_seq_device_new = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_seq_device_new = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_seq_device_new = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_seq_device_new to i32), ptr @__kstrtab_snd_seq_device_new, ptr @__kstrtabns_snd_seq_device_new }, section "___ksymtab+snd_seq_device_new", align 4
@__kstrtab___snd_seq_driver_register = external dso_local constant [0 x i8], align 1
@__kstrtabns___snd_seq_driver_register = external dso_local constant [0 x i8], align 1
@__ksymtab___snd_seq_driver_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__snd_seq_driver_register to i32), ptr @__kstrtab___snd_seq_driver_register, ptr @__kstrtabns___snd_seq_driver_register }, section "___ksymtab_gpl+__snd_seq_driver_register", align 4
@__kstrtab_snd_seq_driver_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_seq_driver_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_seq_driver_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_seq_driver_unregister to i32), ptr @__kstrtab_snd_seq_driver_unregister, ptr @__kstrtabns_snd_seq_driver_unregister }, section "___ksymtab_gpl+snd_seq_driver_unregister", align 4
@info_entry = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_snd_seq_device__229_309_alsa_seq_device_init4 = internal global ptr @alsa_seq_device_init, section ".initcall4.init", align 4
@__exitcall_alsa_seq_device_exit = internal global ptr @alsa_seq_device_exit, section ".exitcall.exit", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"autoload_work\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"snd-%s\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"snd_seq\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"drivers\00", [24 x i8] zeroinitializer }, align 32
@snd_seq_root = external dso_local local_unnamed_addr global ptr, align 4
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd-%s,%s,%d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"loaded\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"empty\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant [16 x i8] c"snd_seq_in_init\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 87, i32 17 }
@___asan_gen_.12 = private unnamed_addr constant [14 x i8] c"autoload_work\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [5 x i8] c"dops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 203, i32 37 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 212, i32 6 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"snd_seq_bus_type\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 52, i32 24 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 229, i32 26 }
@___asan_gen_.27 = private unnamed_addr constant [11 x i8] c"info_entry\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 61, i32 31 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 107, i32 8 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 94, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 53, i32 10 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 271, i32 57 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private constant [27 x i8] c"../sound/core/seq_device.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 68, i32 2 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_author225, ptr @__UNIQUE_ID_description226, ptr @__UNIQUE_ID_file227, ptr @__UNIQUE_ID_license228, ptr @__exitcall_alsa_seq_device_exit, ptr @__initcall__kmod_snd_seq_device__229_309_alsa_seq_device_init4, ptr @__ksymtab___snd_seq_driver_register, ptr @__ksymtab_snd_seq_autoload_exit, ptr @__ksymtab_snd_seq_autoload_init, ptr @__ksymtab_snd_seq_device_load_drivers, ptr @__ksymtab_snd_seq_device_new, ptr @__ksymtab_snd_seq_driver_unregister, ptr @alsa_seq_device_exit, ptr @snd_seq_in_init, ptr @autoload_work, ptr @snd_seq_device_new.dops, ptr @.str, ptr @snd_seq_bus_type, ptr @.str.1, ptr @info_entry, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_seq_in_init to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @autoload_work to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_seq_device_new.dops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_seq_bus_type to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @info_entry to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_autoload_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @snd_seq_in_init, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr nonnull @snd_seq_in_init, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @snd_seq_in_init, ptr nonnull @snd_seq_in_init, i32 1, ptr nonnull elementtype(i32) @snd_seq_in_init) #7, !srcloc !57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_autoload_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @snd_seq_in_init, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr nonnull @snd_seq_in_init, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @snd_seq_in_init, ptr nonnull @snd_seq_in_init, i32 1, ptr nonnull elementtype(i32) @snd_seq_in_init) #7, !srcloc !58
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_device_load_drivers() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef nonnull @autoload_work) #7
  %call = tail call zeroext i1 @flush_work(ptr noundef nonnull @autoload_work) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_device_new(ptr noundef %card, i32 noundef %device, ptr noundef %id, i32 noundef %argsize, ptr noundef writeonly %result) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %result, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool1.not = icmp eq ptr %id, null
  br i1 %tobool1.not, label %do.end, label %if.end8.i.i, !prof !59

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 212, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end
  %add = add i32 %argsize, 1040
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #10
  %tobool27.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool27.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end29

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end29:                                         ; preds = %if.end8.i.i
  %1 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %card, ptr %call9.i.i, align 128
  %device31 = getelementptr inbounds %struct.snd_seq_device, ptr %call9.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %device31 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %device, ptr %device31, align 4
  %id32 = getelementptr inbounds %struct.snd_seq_device, ptr %call9.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %id32 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %id, ptr %id32, align 8
  %argsize33 = getelementptr inbounds %struct.snd_seq_device, ptr %call9.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %argsize33 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %argsize, ptr %argsize33, align 4
  %dev34 = getelementptr inbounds %struct.snd_seq_device, ptr %call9.i.i, i32 0, i32 8
  tail call void @device_initialize(ptr noundef %dev34) #7
  %card_dev = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 28
  %parent = getelementptr inbounds %struct.snd_seq_device, ptr %call9.i.i, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %card_dev, ptr %parent, align 8
  %bus = getelementptr inbounds %struct.snd_seq_device, ptr %call9.i.i, i32 0, i32 8, i32 5
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @snd_seq_bus_type, ptr %bus, align 8
  %release = getelementptr inbounds %struct.snd_seq_device, ptr %call9.i.i, i32 0, i32 8, i32 35
  %7 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @snd_seq_dev_release, ptr %release, align 4
  %8 = ptrtoint ptr %id32 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %id32, align 8
  %10 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %card, align 8
  %call40 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev34, ptr noundef nonnull @.str.1, ptr noundef %9, i32 noundef %11, i32 noundef %device) #7
  %call41 = tail call i32 @snd_device_new(ptr noundef %card, i32 noundef 8, ptr noundef nonnull %call9.i.i, ptr noundef nonnull @snd_seq_device_new.dops) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp = icmp slt i32 %call41, 0
  br i1 %cmp, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @put_device(ptr noundef %dev34) #7
  br label %cleanup

if.end44:                                         ; preds = %if.end29
  br i1 %tobool.not, label %if.end44.cleanup_crit_edge, label %if.then46

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then46:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call9.i.i, ptr %result, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %if.end44.cleanup_crit_edge, %if.then42, %if.end8.i.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call41, %if.then42 ], [ -12, %if.end8.i.i.cleanup_crit_edge ], [ 0, %if.then46 ], [ 0, %if.end44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_seq_device_dev_free(ptr nocapture noundef readonly %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device_data = getelementptr inbounds %struct.snd_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_data, align 4
  %call.i = tail call zeroext i1 @cancel_work_sync(ptr noundef nonnull @autoload_work) #7
  %private_free = getelementptr inbounds %struct.snd_seq_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %private_free to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_free, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %3(ptr noundef %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dev2 = getelementptr inbounds %struct.snd_seq_device, ptr %1, i32 0, i32 8
  tail call void @put_device(ptr noundef %dev2) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_seq_device_dev_register(ptr nocapture noundef readonly %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device_data = getelementptr inbounds %struct.snd_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_data, align 4
  %dev1 = getelementptr inbounds %struct.snd_seq_device, ptr %1, i32 0, i32 8
  %call = tail call i32 @device_add(ptr noundef %dev1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver = getelementptr inbounds %struct.snd_seq_device, ptr %1, i32 0, i32 8, i32 6
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef nonnull @autoload_work) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_seq_device_dev_disconnect(ptr nocapture noundef readonly %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device_data = getelementptr inbounds %struct.snd_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_data, align 4
  %dev1 = getelementptr inbounds %struct.snd_seq_device, ptr %1, i32 0, i32 8
  tail call void @device_del(ptr noundef %dev1) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_seq_dev_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -112
  tail call void @kfree(ptr noundef %add.ptr) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_device_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__snd_seq_driver_register(ptr noundef %drv, ptr noundef %mod) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %id = getelementptr inbounds %struct.snd_seq_driver, ptr %drv, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %id, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.rhs.do.end_crit_edge, label %if.end24, !prof !59

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 250, i32 noundef 9, ptr noundef null) #7
  br label %return

if.end24:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %bus = getelementptr inbounds %struct.device_driver, ptr %drv, i32 0, i32 1
  %4 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @snd_seq_bus_type, ptr %bus, align 4
  %owner = getelementptr inbounds %struct.device_driver, ptr %drv, i32 0, i32 2
  %5 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %mod, ptr %owner, align 4
  %call = tail call i32 @driver_register(ptr noundef %drv) #7
  br label %return

return:                                           ; preds = %if.end24, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_seq_driver_unregister(ptr noundef %drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @driver_unregister(ptr noundef %drv) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @alsa_seq_device_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef nonnull @autoload_work) #7
  %0 = load ptr, ptr @info_entry, align 4
  tail call void @snd_info_free_entry(ptr noundef %0) #7
  tail call void @bus_unregister(ptr noundef nonnull @snd_seq_bus_type) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_info_free_entry(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @alsa_seq_device_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bus_register(ptr noundef nonnull @snd_seq_bus_type) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @seq_dev_proc_init() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @bus_unregister(ptr noundef nonnull @snd_seq_bus_type) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @autoload_drivers(ptr nocapture noundef readnone %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @snd_seq_in_init, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr nonnull @snd_seq_in_init, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @snd_seq_in_init, ptr nonnull @snd_seq_in_init, i32 1, ptr nonnull elementtype(i32) @snd_seq_in_init) #7, !srcloc !61
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !62
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @bus_for_each_dev(ptr noundef nonnull @snd_seq_bus_type, ptr noundef null, ptr noundef null, ptr noundef nonnull @request_seq_drv) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i.i2 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @snd_seq_in_init, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr nonnull @snd_seq_in_init, i32 1, i32 3, i32 1) #7
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @snd_seq_in_init, ptr nonnull @snd_seq_in_init, i32 1, ptr nonnull elementtype(i32) @snd_seq_in_init) #7, !srcloc !57
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_for_each_dev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @request_seq_drv(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %id = getelementptr i8, ptr %dev, i32 -104
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %id, align 8
  %call = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.3, ptr noundef %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_seq_bus_match(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %drv) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.snd_seq_driver, ptr %drv, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %id, align 4
  %id4 = getelementptr i8, ptr %dev, i32 -104
  %2 = ptrtoint ptr %id4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %id4, align 8
  %call = tail call i32 @strcmp(ptr noundef %1, ptr noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %argsize = getelementptr inbounds %struct.snd_seq_driver, ptr %drv, i32 0, i32 2
  %4 = ptrtoint ptr %argsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %argsize, align 4
  %argsize5 = getelementptr i8, ptr %dev, i32 -20
  %6 = ptrtoint ptr %argsize5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %argsize5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp6 = icmp eq i32 %5, %7
  %phi.cast = zext i1 %cmp6 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %8 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  ret i32 %8
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @seq_dev_proc_init() unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snd_seq_root to i32))
  %0 = load ptr, ptr @snd_seq_root, align 4
  %call = tail call ptr @snd_info_create_module_entry(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef %0) #7
  store ptr %call, ptr @info_entry, align 4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %content = getelementptr inbounds %struct.snd_info_entry, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %content to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %content, align 4
  %c = getelementptr inbounds %struct.snd_info_entry, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @snd_seq_device_info, ptr %c, align 4
  %call1 = tail call i32 @snd_info_register(ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = load ptr, ptr @info_entry, align 4
  tail call void @snd_info_free_entry(ptr noundef %3) #7
  br label %return

return:                                           ; preds = %if.then3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %if.then3 ], [ -12, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_info_create_module_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_seq_device_info(ptr nocapture noundef readnone %entry1, ptr noundef %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bus_for_each_dev(ptr noundef nonnull @snd_seq_bus_type, ptr noundef null, ptr noundef %buffer, ptr noundef nonnull @print_dev_info) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_info_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @print_dev_info(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %id = getelementptr i8, ptr %dev, i32 -104
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %id, align 8
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver, align 4
  %tobool.not = icmp eq ptr %5, null
  %cond = select i1 %tobool.not, ptr @.str.8, ptr @.str.7
  %not.tobool.not = xor i1 %tobool.not, true
  %cond4 = zext i1 %not.tobool.not to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef %3, ptr noundef nonnull %cond, i32 noundef %cond4) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !36, !38, !40, !42, !44, !46, !47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__UNIQUE_ID_author225, !1, !"__UNIQUE_ID_author225", i1 false, i1 false}
!1 = !{!"../sound/core/seq_device.c", i32 36, i32 1}
!2 = !{ptr @__UNIQUE_ID_description226, !3, !"__UNIQUE_ID_description226", i1 false, i1 false}
!3 = !{!"../sound/core/seq_device.c", i32 37, i32 1}
!4 = !{ptr @__UNIQUE_ID_file227, !5, !"__UNIQUE_ID_file227", i1 false, i1 false}
!5 = !{!"../sound/core/seq_device.c", i32 38, i32 1}
!6 = !{ptr @__UNIQUE_ID_license228, !5, !"__UNIQUE_ID_license228", i1 false, i1 false}
!7 = !{ptr @__ksymtab_snd_seq_autoload_init, !8, !"__ksymtab_snd_seq_autoload_init", i1 false, i1 false}
!8 = !{!"../sound/core/seq_device.c", i32 122, i32 1}
!9 = !{ptr @__ksymtab_snd_seq_autoload_exit, !10, !"__ksymtab_snd_seq_autoload_exit", i1 false, i1 false}
!10 = !{!"../sound/core/seq_device.c", i32 128, i32 1}
!11 = !{ptr @__ksymtab_snd_seq_device_load_drivers, !12, !"__ksymtab_snd_seq_device_load_drivers", i1 false, i1 false}
!12 = !{!"../sound/core/seq_device.c", i32 135, i32 1}
!13 = !{ptr @snd_seq_device_new.dops, !14, !"dops", i1 false, i1 false}
!14 = !{!"../sound/core/seq_device.c", i32 203, i32 37}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../sound/core/seq_device.c", i32 212, i32 6}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/core/seq_device.c", i32 229, i32 26}
!19 = !{ptr @__ksymtab_snd_seq_device_new, !20, !"__ksymtab_snd_seq_device_new", i1 false, i1 false}
!20 = !{!"../sound/core/seq_device.c", i32 243, i32 1}
!21 = !{ptr @__ksymtab___snd_seq_driver_register, !22, !"__ksymtab___snd_seq_driver_register", i1 false, i1 false}
!22 = !{!"../sound/core/seq_device.c", i32 256, i32 1}
!23 = !{ptr @__ksymtab_snd_seq_driver_unregister, !24, !"__ksymtab_snd_seq_driver_unregister", i1 false, i1 false}
!24 = !{!"../sound/core/seq_device.c", i32 262, i32 1}
!25 = !{ptr @__initcall__kmod_snd_seq_device__229_309_alsa_seq_device_init4, !26, !"__initcall__kmod_snd_seq_device__229_309_alsa_seq_device_init4", i1 false, i1 false}
!26 = !{!"../sound/core/seq_device.c", i32 309, i32 1}
!27 = !{ptr @__exitcall_alsa_seq_device_exit, !28, !"__exitcall_alsa_seq_device_exit", i1 false, i1 false}
!28 = !{!"../sound/core/seq_device.c", i32 310, i32 1}
!29 = !{ptr @info_entry, !30, !"info_entry", i1 false, i1 false}
!30 = !{!"../sound/core/seq_device.c", i32 61, i32 31}
!31 = !{ptr @snd_seq_in_init, !32, !"snd_seq_in_init", i1 false, i1 false}
!32 = !{!"../sound/core/seq_device.c", i32 87, i32 17}
!33 = !{ptr @.str.2, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/core/seq_device.c", i32 107, i32 8}
!35 = !{ptr @autoload_work, !34, !"autoload_work", i1 false, i1 false}
!36 = !{ptr @.str.3, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/core/seq_device.c", i32 94, i32 3}
!38 = !{ptr @.str.4, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/core/seq_device.c", i32 53, i32 10}
!40 = !{ptr @snd_seq_bus_type, !41, !"snd_seq_bus_type", i1 false, i1 false}
!41 = !{!"../sound/core/seq_device.c", i32 52, i32 24}
!42 = !{ptr @.str.5, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/core/seq_device.c", i32 271, i32 57}
!44 = !{ptr @.str.6, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/core/seq_device.c", i32 68, i32 2}
!46 = !{ptr @.str.7, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.8, !45, !"<string literal>", i1 false, i1 false}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i64 2148471845, i64 2148471871, i64 2148471900, i64 2148471934, i64 2148471965, i64 2148471988}
!58 = !{i64 2148469380, i64 2148469406, i64 2148469435, i64 2148469469, i64 2148469500, i64 2148469523}
!59 = !{!"branch_weights", i32 1, i32 2000}
!60 = !{i64 2148554791}
!61 = !{i64 2148470100, i64 2148470132, i64 2148470161, i64 2148470195, i64 2148470226, i64 2148470249}
!62 = !{i64 2148555020}
