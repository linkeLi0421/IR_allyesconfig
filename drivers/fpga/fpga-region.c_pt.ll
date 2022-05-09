; ModuleID = '/llk/IR_all_yes/drivers/fpga/fpga-region.c_pt.bc'
source_filename = "../drivers/fpga/fpga-region.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+fpga_region_class_find\22, \22a\22\09"
module asm "\09.weak\09__crc_fpga_region_class_find\09\09\09\09"
module asm "\09.long\09__crc_fpga_region_class_find\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fpga_region_class_find:\09\09\09\09\09"
module asm "\09.asciz \09\22fpga_region_class_find\22\09\09\09\09\09"
module asm "__kstrtabns_fpga_region_class_find:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fpga_region_program_fpga\22, \22a\22\09"
module asm "\09.weak\09__crc_fpga_region_program_fpga\09\09\09\09"
module asm "\09.long\09__crc_fpga_region_program_fpga\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fpga_region_program_fpga:\09\09\09\09\09"
module asm "\09.asciz \09\22fpga_region_program_fpga\22\09\09\09\09\09"
module asm "__kstrtabns_fpga_region_program_fpga:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fpga_region_register_full\22, \22a\22\09"
module asm "\09.weak\09__crc_fpga_region_register_full\09\09\09\09"
module asm "\09.long\09__crc_fpga_region_register_full\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fpga_region_register_full:\09\09\09\09\09"
module asm "\09.asciz \09\22fpga_region_register_full\22\09\09\09\09\09"
module asm "__kstrtabns_fpga_region_register_full:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fpga_region_register\22, \22a\22\09"
module asm "\09.weak\09__crc_fpga_region_register\09\09\09\09"
module asm "\09.long\09__crc_fpga_region_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fpga_region_register:\09\09\09\09\09"
module asm "\09.asciz \09\22fpga_region_register\22\09\09\09\09\09"
module asm "__kstrtabns_fpga_region_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fpga_region_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_fpga_region_unregister\09\09\09\09"
module asm "\09.long\09__crc_fpga_region_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fpga_region_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22fpga_region_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_fpga_region_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.fpga_region = type { %struct.device, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fpga_region_info = type { ptr, ptr, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fpga_compat_id = type { i64, i64 }

@fpga_region_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_fpga_region_class_find = external dso_local constant [0 x i8], align 1
@__kstrtabns_fpga_region_class_find = external dso_local constant [0 x i8], align 1
@__ksymtab_fpga_region_class_find = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fpga_region_class_find to i32), ptr @__kstrtab_fpga_region_class_find, ptr @__kstrtabns_fpga_region_class_find }, section "___ksymtab_gpl+fpga_region_class_find", align 4
@fpga_region_program_fpga._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 104, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get FPGA region\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fpga_region_program_fpga\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/fpga/fpga-region.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fpga_region_program_fpga._entry_ptr = internal global ptr @fpga_region_program_fpga._entry, section ".printk_index", align 4
@fpga_region_program_fpga._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 110, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"FPGA manager is busy\0A\00", [42 x i8] zeroinitializer }, align 32
@fpga_region_program_fpga._entry_ptr.7 = internal global ptr @fpga_region_program_fpga._entry.5, section ".printk_index", align 4
@fpga_region_program_fpga._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 121, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to get fpga region bridges\0A\00", [61 x i8] zeroinitializer }, align 32
@fpga_region_program_fpga._entry_ptr.10 = internal global ptr @fpga_region_program_fpga._entry.8, section ".printk_index", align 4
@fpga_region_program_fpga._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 128, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to disable bridges\0A\00", [37 x i8] zeroinitializer }, align 32
@fpga_region_program_fpga._entry_ptr.13 = internal global ptr @fpga_region_program_fpga._entry.11, section ".printk_index", align 4
@fpga_region_program_fpga._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 134, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to load FPGA image\0A\00", [37 x i8] zeroinitializer }, align 32
@fpga_region_program_fpga._entry_ptr.16 = internal global ptr @fpga_region_program_fpga._entry.14, section ".printk_index", align 4
@fpga_region_program_fpga._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 140, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enable region bridges\0A\00", [63 x i8] zeroinitializer }, align 32
@fpga_region_program_fpga._entry_ptr.19 = internal global ptr @fpga_region_program_fpga._entry.17, section ".printk_index", align 4
@__kstrtab_fpga_region_program_fpga = external dso_local constant [0 x i8], align 1
@__kstrtabns_fpga_region_program_fpga = external dso_local constant [0 x i8], align 1
@__ksymtab_fpga_region_program_fpga = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fpga_region_program_fpga to i32), ptr @__kstrtab_fpga_region_program_fpga, ptr @__kstrtabns_fpga_region_program_fpga }, section "___ksymtab_gpl+fpga_region_program_fpga", align 4
@fpga_region_register_full._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 197, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Attempt to register without required info structure\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fpga_region_register_full\00", [38 x i8] zeroinitializer }, align 32
@fpga_region_register_full._entry_ptr = internal global ptr @fpga_region_register_full._entry, section ".printk_index", align 4
@fpga_region_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.30, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@fpga_region_register_full.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&region->mutex\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"region%d\00", [23 x i8] zeroinitializer }, align 32
@__kstrtab_fpga_region_register_full = external dso_local constant [0 x i8], align 1
@__kstrtabns_fpga_region_register_full = external dso_local constant [0 x i8], align 1
@__ksymtab_fpga_region_register_full = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fpga_region_register_full to i32), ptr @__kstrtab_fpga_region_register_full, ptr @__kstrtabns_fpga_region_register_full }, section "___ksymtab_gpl+fpga_region_register_full", align 4
@__kstrtab_fpga_region_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_fpga_region_register = external dso_local constant [0 x i8], align 1
@__ksymtab_fpga_region_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fpga_region_register to i32), ptr @__kstrtab_fpga_region_register, ptr @__kstrtabns_fpga_region_register }, section "___ksymtab_gpl+fpga_region_register", align 4
@__kstrtab_fpga_region_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_fpga_region_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_fpga_region_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fpga_region_unregister to i32), ptr @__kstrtab_fpga_region_unregister, ptr @__kstrtabns_fpga_region_unregister }, section "___ksymtab_gpl+fpga_region_unregister", align 4
@__initcall__kmod_fpga_region__186_312_fpga_region_init4 = internal global ptr @fpga_region_init, section ".initcall4.init", align 4
@__exitcall_fpga_region_exit = internal global ptr @fpga_region_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description187 = internal constant [36 x i8] c"fpga_region.description=FPGA Region\00", section ".modinfo", align 1
@__UNIQUE_ID_author188 = internal constant [48 x i8] c"fpga_region.author=Alan Tull <atull@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file189 = internal constant [42 x i8] c"fpga_region.file=drivers/fpga/fpga-region\00", section ".modinfo", align 1
@__UNIQUE_ID_license190 = internal constant [27 x i8] c"fpga_region.license=GPL v2\00", section ".modinfo", align 1
@fpga_region_get.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 12, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fpga_region\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fpga_region_get\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: FPGA Region already in use\0A\00", [32 x i8] zeroinitializer }, align 32
@fpga_region_get.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.2, ptr @.str.27, i8 0, i8 15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"get\0A\00", [27 x i8] zeroinitializer }, align 32
@fpga_region_put.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fpga_region_put\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"put\0A\00", [27 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fpga_region_ida.xa_lock\00", [40 x i8] zeroinitializer }, align 32
@fpga_region_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@fpga_region_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @fpga_region_group, ptr null], [24 x i8] zeroinitializer }, align 32
@fpga_region_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @fpga_region_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@fpga_region_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_compat_id, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_compat_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @compat_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"compat_id\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%016llx%016llx\0A\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.33 = private unnamed_addr constant [18 x i8] c"fpga_region_class\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 19, i32 22 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 104, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 110, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 121, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 128, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 134, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 140, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 196, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [16 x i8] c"fpga_region_ida\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 216, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 224, i32 35 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 50, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 61, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 75, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 18, i32 8 }
@___asan_gen_.126 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 296, i32 22 }
@___asan_gen_.129 = private unnamed_addr constant [19 x i8] c"fpga_region_groups\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [18 x i8] c"fpga_region_group\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 180, i32 1 }
@___asan_gen_.135 = private unnamed_addr constant [18 x i8] c"fpga_region_attrs\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 176, i32 26 }
@___asan_gen_.138 = private unnamed_addr constant [19 x i8] c"dev_attr_compat_id\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 174, i32 8 }
@___asan_gen_.144 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.145 = private constant [30 x i8] c"../drivers/fpga/fpga-region.c\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 169, i32 22 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_description187, ptr @__UNIQUE_ID_file189, ptr @__UNIQUE_ID_license190, ptr @__exitcall_fpga_region_exit, ptr @__initcall__kmod_fpga_region__186_312_fpga_region_init4, ptr @__ksymtab_fpga_region_class_find, ptr @__ksymtab_fpga_region_program_fpga, ptr @__ksymtab_fpga_region_register, ptr @__ksymtab_fpga_region_register_full, ptr @__ksymtab_fpga_region_unregister, ptr @fpga_region_exit, ptr @fpga_region_program_fpga._entry, ptr @fpga_region_program_fpga._entry.11, ptr @fpga_region_program_fpga._entry.14, ptr @fpga_region_program_fpga._entry.17, ptr @fpga_region_program_fpga._entry.5, ptr @fpga_region_program_fpga._entry.8, ptr @fpga_region_program_fpga._entry_ptr, ptr @fpga_region_program_fpga._entry_ptr.10, ptr @fpga_region_program_fpga._entry_ptr.13, ptr @fpga_region_program_fpga._entry_ptr.16, ptr @fpga_region_program_fpga._entry_ptr.19, ptr @fpga_region_program_fpga._entry_ptr.7, ptr @fpga_region_register_full._entry, ptr @fpga_region_register_full._entry_ptr, ptr @fpga_region_class, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @fpga_region_ida, ptr @fpga_region_register_full.__key, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @fpga_region_init.__key, ptr @fpga_region_groups, ptr @fpga_region_group, ptr @fpga_region_attrs, ptr @dev_attr_compat_id, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpga_region_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpga_region_program_fpga._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpga_region_program_fpga._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpga_region_program_fpga._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpga_region_program_fpga._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpga_region_program_fpga._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpga_region_program_fpga._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpga_region_register_full._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpga_region_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpga_region_register_full.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpga_region_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpga_region_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpga_region_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpga_region_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_compat_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fpga_region_class_find(ptr noundef %start, ptr noundef %data, ptr noundef %match) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @fpga_region_class, align 4
  %call = tail call ptr @class_find_device(ptr noundef %0, ptr noundef %start, ptr noundef %data, ptr noundef %match) #8
  ret ptr %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @class_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fpga_region_program_fpga(ptr noundef %region) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info2 = getelementptr inbounds %struct.fpga_region, ptr %region, i32 0, i32 4
  %0 = ptrtoint ptr %info2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info2, align 8
  %call = tail call fastcc ptr @fpga_region_get(ptr noundef %region)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %region, ptr noundef nonnull @.str) #11
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %mgr = getelementptr inbounds %struct.fpga_region, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mgr, align 4
  %call5 = tail call i32 @fpga_mgr_lock(ptr noundef %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end10, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %region, ptr noundef nonnull @.str.6) #11
  br label %err_put_region

if.end10:                                         ; preds = %if.end
  %get_bridges = getelementptr inbounds %struct.fpga_region, ptr %call, i32 0, i32 7
  %5 = ptrtoint ptr %get_bridges to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_bridges, align 4
  %tobool11.not = icmp eq ptr %6, null
  br i1 %tobool11.not, label %if.end10.if.end21_crit_edge, label %if.then12

if.end10.if.end21_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then12:                                        ; preds = %if.end10
  %call14 = tail call i32 %6(ptr noundef %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then12.if.end21_crit_edge, label %do.end19

if.then12.if.end21_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

do.end19:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %region, ptr noundef nonnull @.str.9) #11
  br label %err_unlock_mgr

if.end21:                                         ; preds = %if.then12.if.end21_crit_edge, %if.end10.if.end21_crit_edge
  %bridge_list = getelementptr inbounds %struct.fpga_region, ptr %call, i32 0, i32 2
  %call22 = tail call i32 @fpga_bridges_disable(ptr noundef %bridge_list) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end28, label %if.end21.err_put_br_crit_edge

if.end21.err_put_br_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_put_br

if.end28:                                         ; preds = %if.end21
  %7 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mgr, align 4
  %call30 = tail call i32 @fpga_mgr_load(ptr noundef %8, ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end36, label %if.end28.err_put_br_crit_edge

if.end28.err_put_br_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_put_br

if.end36:                                         ; preds = %if.end28
  %call38 = tail call i32 @fpga_bridges_enable(ptr noundef %bridge_list) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end44, label %if.end36.err_put_br_crit_edge

if.end36.err_put_br_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_put_br

if.end44:                                         ; preds = %if.end36
  %9 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mgr, align 4
  tail call void @fpga_mgr_unlock(ptr noundef %10) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fpga_region_put.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fpga_region_program_fpga, %if.then.i)) #8
          to label %fpga_region_put.exit [label %if.then.i], !srcloc !97

if.then.i:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fpga_region_put.__UNIQUE_ID_ddebug185, ptr noundef %call, ptr noundef nonnull @.str.29) #8
  br label %fpga_region_put.exit

fpga_region_put.exit:                             ; preds = %if.then.i, %if.end44
  %parent.i = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent.i, align 8
  %driver.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver.i, align 4
  %owner.i = getelementptr inbounds %struct.device_driver, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %owner.i, align 4
  tail call void @module_put(ptr noundef %16) #8
  tail call void @put_device(ptr noundef %call) #8
  %mutex.i = getelementptr inbounds %struct.fpga_region, ptr %call, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %mutex.i) #8
  br label %cleanup

err_put_br:                                       ; preds = %if.end36.err_put_br_crit_edge, %if.end28.err_put_br_crit_edge, %if.end21.err_put_br_crit_edge
  %.str.18.sink = phi ptr [ @.str.12, %if.end21.err_put_br_crit_edge ], [ @.str.15, %if.end28.err_put_br_crit_edge ], [ @.str.18, %if.end36.err_put_br_crit_edge ]
  %ret.0 = phi i32 [ %call22, %if.end21.err_put_br_crit_edge ], [ %call30, %if.end28.err_put_br_crit_edge ], [ %call38, %if.end36.err_put_br_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %region, ptr noundef nonnull %.str.18.sink) #11
  %17 = ptrtoint ptr %get_bridges to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %get_bridges, align 4
  %tobool47.not = icmp eq ptr %18, null
  br i1 %tobool47.not, label %err_put_br.err_unlock_mgr_crit_edge, label %if.then48

err_put_br.err_unlock_mgr_crit_edge:              ; preds = %err_put_br
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unlock_mgr

if.then48:                                        ; preds = %err_put_br
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @fpga_bridges_put(ptr noundef %bridge_list) #8
  br label %err_unlock_mgr

err_unlock_mgr:                                   ; preds = %if.then48, %err_put_br.err_unlock_mgr_crit_edge, %do.end19
  %ret.1 = phi i32 [ %call14, %do.end19 ], [ %ret.0, %if.then48 ], [ %ret.0, %err_put_br.err_unlock_mgr_crit_edge ]
  %19 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mgr, align 4
  tail call void @fpga_mgr_unlock(ptr noundef %20) #8
  br label %err_put_region

err_put_region:                                   ; preds = %err_unlock_mgr, %do.end9
  %ret.2 = phi i32 [ %call5, %do.end9 ], [ %ret.1, %err_unlock_mgr ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fpga_region_put.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fpga_region_program_fpga, %if.then.i81)) #8
          to label %fpga_region_put.exit86 [label %if.then.i81], !srcloc !97

if.then.i81:                                      ; preds = %err_put_region
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fpga_region_put.__UNIQUE_ID_ddebug185, ptr noundef %call, ptr noundef nonnull @.str.29) #8
  br label %fpga_region_put.exit86

fpga_region_put.exit86:                           ; preds = %if.then.i81, %err_put_region
  %parent.i82 = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 1
  %21 = ptrtoint ptr %parent.i82 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent.i82, align 8
  %driver.i83 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %driver.i83 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %driver.i83, align 4
  %owner.i84 = getelementptr inbounds %struct.device_driver, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %owner.i84 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %owner.i84, align 4
  tail call void @module_put(ptr noundef %26) #8
  tail call void @put_device(ptr noundef %call) #8
  %mutex.i85 = getelementptr inbounds %struct.fpga_region, ptr %call, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %mutex.i85) #8
  br label %cleanup

cleanup:                                          ; preds = %fpga_region_put.exit86, %fpga_region_put.exit, %do.end
  %retval.0 = phi i32 [ %2, %do.end ], [ %ret.2, %fpga_region_put.exit86 ], [ 0, %fpga_region_put.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @fpga_region_get(ptr noundef %region) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.fpga_region, ptr %region, i32 0, i32 1
  %call = tail call i32 @mutex_trylock(ptr noundef %mutex) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fpga_region_get.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fpga_region_get, %if.then6)) #8
          to label %cleanup [label %if.then6], !srcloc !97

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fpga_region_get.__UNIQUE_ID_ddebug183, ptr noundef %region, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.25) #8
  br label %cleanup

if.end8:                                          ; preds = %entry
  %call9 = tail call ptr @get_device(ptr noundef %region) #8
  %parent = getelementptr inbounds %struct.device, ptr %region, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %owner = getelementptr inbounds %struct.device_driver, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %owner, align 4
  %call10 = tail call zeroext i1 @try_module_get(ptr noundef %5) #8
  br i1 %call10, label %do.body15, label %if.then11

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @put_device(ptr noundef %region) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

do.body15:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fpga_region_get.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fpga_region_get, %if.then27)) #8
          to label %cleanup [label %if.then27], !srcloc !97

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fpga_region_get.__UNIQUE_ID_ddebug184, ptr noundef %region, ptr noundef nonnull @.str.27) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %do.body15, %if.then11, %if.then6, %do.body
  %retval.0 = phi ptr [ inttoptr (i32 -19 to ptr), %if.then11 ], [ %region, %if.then27 ], [ inttoptr (i32 -16 to ptr), %do.body ], [ inttoptr (i32 -16 to ptr), %if.then6 ], [ %region, %do.body15 ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fpga_mgr_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fpga_bridges_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fpga_mgr_load(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fpga_bridges_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fpga_mgr_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fpga_bridges_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fpga_region_register_full(ptr noundef %parent, ptr noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %info, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %parent, ptr noundef nonnull @.str.20) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1048) #12
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @ida_alloc_range(ptr noundef nonnull @fpga_region_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.end5.err_free_crit_edge, label %if.end8

if.end5.err_free_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free

if.end8:                                          ; preds = %if.end5
  %1 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %info, align 4
  %mgr9 = getelementptr inbounds %struct.fpga_region, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %mgr9 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %mgr9, align 4
  %compat_id = getelementptr inbounds %struct.fpga_region_info, ptr %info, i32 0, i32 1
  %4 = ptrtoint ptr %compat_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %compat_id, align 4
  %compat_id10 = getelementptr inbounds %struct.fpga_region, ptr %call7.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %compat_id10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %compat_id10, align 4
  %priv = getelementptr inbounds %struct.fpga_region_info, ptr %info, i32 0, i32 2
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 4
  %priv11 = getelementptr inbounds %struct.fpga_region, ptr %call7.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %priv11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %priv11, align 8
  %get_bridges = getelementptr inbounds %struct.fpga_region_info, ptr %info, i32 0, i32 3
  %10 = ptrtoint ptr %get_bridges to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_bridges, align 4
  %get_bridges12 = getelementptr inbounds %struct.fpga_region, ptr %call7.i.i, i32 0, i32 7
  %12 = ptrtoint ptr %get_bridges12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %get_bridges12, align 4
  %mutex = getelementptr inbounds %struct.fpga_region, ptr %call7.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.22, ptr noundef nonnull @fpga_region_register_full.__key) #8
  %bridge_list = getelementptr inbounds %struct.fpga_region, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %bridge_list to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %bridge_list, ptr %bridge_list, align 4
  %prev.i = getelementptr inbounds %struct.fpga_region, ptr %call7.i.i, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %bridge_list, ptr %prev.i, align 8
  %15 = load ptr, ptr @fpga_region_class, align 4
  %class = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 33
  %16 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %class, align 4
  %parent17 = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %parent17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %parent, ptr %parent17, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %parent, i32 0, i32 27
  %18 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node, align 8
  %of_node19 = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 27
  %20 = ptrtoint ptr %of_node19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %of_node19, align 8
  %id21 = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 30
  %21 = ptrtoint ptr %id21 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call6, ptr %id21, align 4
  %call23 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.23, i32 noundef %call6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %err_remove

if.end26:                                         ; preds = %if.end8
  %call28 = tail call i32 @device_register(ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end26.cleanup_crit_edge, label %if.then30

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @put_device(ptr noundef nonnull %call7.i.i) #8
  %22 = inttoptr i32 %call28 to ptr
  br label %cleanup

err_remove:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ida_free(ptr noundef nonnull @fpga_region_ida, i32 noundef %call6) #8
  br label %err_free

err_free:                                         ; preds = %err_remove, %if.end5.err_free_crit_edge
  %ret.0 = phi i32 [ %call23, %err_remove ], [ %call6, %if.end5.err_free_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  %23 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.then30, %if.end26.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ %23, %err_free ], [ %22, %if.then30 ], [ inttoptr (i32 -22 to ptr), %do.end ], [ %call7.i.i, %if.end26.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fpga_region_register(ptr noundef %parent, ptr noundef %mgr, ptr noundef %get_bridges) #0 align 64 {
entry:
  %info = alloca %struct.fpga_region_info, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #8
  %0 = getelementptr inbounds i8, ptr %info, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 0, ptr %0, align 4
  %2 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mgr, ptr %info, align 4
  %get_bridges2 = getelementptr inbounds %struct.fpga_region_info, ptr %info, i32 0, i32 3
  %3 = ptrtoint ptr %get_bridges2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %get_bridges, ptr %get_bridges2, align 4
  %call = call ptr @fpga_region_register_full(ptr noundef %parent, ptr noundef nonnull %info)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #8
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fpga_region_unregister(ptr noundef %region) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @device_unregister(ptr noundef %region) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fpga_region_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @fpga_region_class, align 4
  tail call void @class_destroy(ptr noundef %0) #8
  tail call void @ida_destroy(ptr noundef nonnull @fpga_region_ida) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fpga_region_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.24, ptr noundef nonnull @fpga_region_init.__key) #8
  store ptr %call, ptr @fpga_region_class, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call to i32
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev_groups = getelementptr inbounds %struct.class, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %dev_groups to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @fpga_region_groups, ptr %dev_groups, align 4
  %dev_release = getelementptr inbounds %struct.class, ptr %call, i32 0, i32 8
  %2 = ptrtoint ptr %dev_release to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @fpga_region_dev_release, ptr %dev_release, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fpga_region_dev_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 30
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  tail call void @ida_free(ptr noundef nonnull @fpga_region_ida, i32 noundef %1) #8
  tail call void @kfree(ptr noundef %dev) #8
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @compat_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %compat_id = getelementptr inbounds %struct.fpga_region, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %compat_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %compat_id, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %1, align 8
  %id_l = getelementptr inbounds %struct.fpga_compat_id, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %id_l to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %id_l, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.32, i64 noundef %3, i64 noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !34, !35, !36, !37, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !59, !61, !63, !64, !65, !66, !68, !69, !71, !72, !73, !75, !76, !78, !80, !81, !83, !85, !86}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @__ksymtab_fpga_region_class_find, !1, !"__ksymtab_fpga_region_class_find", i1 false, i1 false}
!1 = !{!"../drivers/fpga/fpga-region.c", i32 33, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/fpga/fpga-region.c", i32 104, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @fpga_region_program_fpga._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @fpga_region_program_fpga._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/fpga/fpga-region.c", i32 110, i32 3}
!12 = !{ptr @fpga_region_program_fpga._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @fpga_region_program_fpga._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/fpga/fpga-region.c", i32 121, i32 4}
!16 = !{ptr @fpga_region_program_fpga._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @fpga_region_program_fpga._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/fpga/fpga-region.c", i32 128, i32 3}
!20 = !{ptr @fpga_region_program_fpga._entry.11, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @fpga_region_program_fpga._entry_ptr.13, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/fpga/fpga-region.c", i32 134, i32 3}
!24 = !{ptr @fpga_region_program_fpga._entry.14, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @fpga_region_program_fpga._entry_ptr.16, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/fpga/fpga-region.c", i32 140, i32 3}
!28 = !{ptr @fpga_region_program_fpga._entry.17, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @fpga_region_program_fpga._entry_ptr.19, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @__ksymtab_fpga_region_program_fpga, !31, !"__ksymtab_fpga_region_program_fpga", i1 false, i1 false}
!31 = !{!"../drivers/fpga/fpga-region.c", i32 159, i32 1}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/fpga/fpga-region.c", i32 196, i32 3}
!34 = !{ptr @.str.21, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @fpga_region_register_full._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @fpga_region_register_full._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @fpga_region_register_full.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/fpga/fpga-region.c", i32 216, i32 2}
!39 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/fpga/fpga-region.c", i32 224, i32 35}
!42 = !{ptr @__ksymtab_fpga_region_register_full, !43, !"__ksymtab_fpga_region_register_full", i1 false, i1 false}
!43 = !{!"../drivers/fpga/fpga-region.c", i32 243, i32 1}
!44 = !{ptr @__ksymtab_fpga_region_register, !45, !"__ksymtab_fpga_region_register", i1 false, i1 false}
!45 = !{!"../drivers/fpga/fpga-region.c", i32 268, i32 1}
!46 = !{ptr @__ksymtab_fpga_region_unregister, !47, !"__ksymtab_fpga_region_unregister", i1 false, i1 false}
!47 = !{!"../drivers/fpga/fpga-region.c", i32 280, i32 1}
!48 = !{ptr @__initcall__kmod_fpga_region__186_312_fpga_region_init4, !49, !"__initcall__kmod_fpga_region__186_312_fpga_region_init4", i1 false, i1 false}
!49 = !{!"../drivers/fpga/fpga-region.c", i32 312, i32 1}
!50 = !{ptr @__exitcall_fpga_region_exit, !51, !"__exitcall_fpga_region_exit", i1 false, i1 false}
!51 = !{!"../drivers/fpga/fpga-region.c", i32 313, i32 1}
!52 = !{ptr @__UNIQUE_ID_description187, !53, !"__UNIQUE_ID_description187", i1 false, i1 false}
!53 = !{!"../drivers/fpga/fpga-region.c", i32 315, i32 1}
!54 = !{ptr @__UNIQUE_ID_author188, !55, !"__UNIQUE_ID_author188", i1 false, i1 false}
!55 = !{!"../drivers/fpga/fpga-region.c", i32 316, i32 1}
!56 = !{ptr @__UNIQUE_ID_file189, !57, !"__UNIQUE_ID_file189", i1 false, i1 false}
!57 = !{!"../drivers/fpga/fpga-region.c", i32 317, i32 1}
!58 = !{ptr @__UNIQUE_ID_license190, !57, !"__UNIQUE_ID_license190", i1 false, i1 false}
!59 = !{ptr @fpga_region_class, !60, !"fpga_region_class", i1 false, i1 false}
!60 = !{!"../drivers/fpga/fpga-region.c", i32 19, i32 22}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/fpga/fpga-region.c", i32 50, i32 3}
!63 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @fpga_region_get.__UNIQUE_ID_ddebug183, !62, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/fpga/fpga-region.c", i32 61, i32 2}
!68 = !{ptr @fpga_region_get.__UNIQUE_ID_ddebug184, !67, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/fpga/fpga-region.c", i32 75, i32 2}
!71 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @fpga_region_put.__UNIQUE_ID_ddebug185, !70, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/fpga/fpga-region.c", i32 18, i32 8}
!75 = !{ptr @fpga_region_ida, !74, !"fpga_region_ida", i1 false, i1 false}
!76 = !{ptr @fpga_region_init.__key, !77, !"__key", i1 false, i1 false}
!77 = !{!"../drivers/fpga/fpga-region.c", i32 296, i32 22}
!78 = !{ptr @fpga_region_groups, !79, !"fpga_region_groups", i1 false, i1 false}
!79 = !{!"../drivers/fpga/fpga-region.c", i32 180, i32 1}
!80 = !{ptr @fpga_region_group, !79, !"fpga_region_group", i1 false, i1 false}
!81 = !{ptr @fpga_region_attrs, !82, !"fpga_region_attrs", i1 false, i1 false}
!82 = !{!"../drivers/fpga/fpga-region.c", i32 176, i32 26}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/fpga/fpga-region.c", i32 174, i32 8}
!85 = !{ptr @dev_attr_compat_id, !84, !"dev_attr_compat_id", i1 false, i1 false}
!86 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/fpga/fpga-region.c", i32 169, i32 22}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{i64 2148286113, i64 2148286118, i64 2148286131, i64 2148286175, i64 2148286209, i64 2148286230}
