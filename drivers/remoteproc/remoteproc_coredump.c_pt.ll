; ModuleID = '/llk/IR_all_yes/drivers/remoteproc/remoteproc_coredump.c_pt.bc'
source_filename = "../drivers/remoteproc/remoteproc_coredump.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rproc_coredump_add_segment\22, \22a\22\09"
module asm "\09.weak\09__crc_rproc_coredump_add_segment\09\09\09\09"
module asm "\09.long\09__crc_rproc_coredump_add_segment\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rproc_coredump_add_segment:\09\09\09\09\09"
module asm "\09.asciz \09\22rproc_coredump_add_segment\22\09\09\09\09\09"
module asm "__kstrtabns_rproc_coredump_add_segment:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rproc_coredump_add_custom_segment\22, \22a\22\09"
module asm "\09.weak\09__crc_rproc_coredump_add_custom_segment\09\09\09\09"
module asm "\09.long\09__crc_rproc_coredump_add_custom_segment\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rproc_coredump_add_custom_segment:\09\09\09\09\09"
module asm "\09.asciz \09\22rproc_coredump_add_custom_segment\22\09\09\09\09\09"
module asm "__kstrtabns_rproc_coredump_add_custom_segment:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rproc_coredump_set_elf_info\22, \22a\22\09"
module asm "\09.weak\09__crc_rproc_coredump_set_elf_info\09\09\09\09"
module asm "\09.long\09__crc_rproc_coredump_set_elf_info\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rproc_coredump_set_elf_info:\09\09\09\09\09"
module asm "\09.asciz \09\22rproc_coredump_set_elf_info\22\09\09\09\09\09"
module asm "__kstrtabns_rproc_coredump_set_elf_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rproc_coredump_using_sections\22, \22a\22\09"
module asm "\09.weak\09__crc_rproc_coredump_using_sections\09\09\09\09"
module asm "\09.long\09__crc_rproc_coredump_using_sections\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rproc_coredump_using_sections:\09\09\09\09\09"
module asm "\09.asciz \09\22rproc_coredump_using_sections\22\09\09\09\09\09"
module asm "__kstrtabns_rproc_coredump_using_sections:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rproc = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.device, %struct.atomic_t, i32, i32, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, %struct.list_head, i64, %struct.list_head, %struct.list_head, %struct.idr, i32, %struct.work_struct, i32, i8, i32, ptr, ptr, ptr, i32, i8, i8, %struct.list_head, i32, i8, i16, %struct.cdev, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.rproc_dump_segment = type { %struct.list_head, i32, i32, ptr, ptr, i64 }
%struct.rproc_coredump_state = type { ptr, ptr, %struct.completion }
%struct.elf32_hdr = type { [16 x i8], i16, i16, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.elf64_hdr = type { [16 x i8], i16, i16, i32, i64, i64, i64, i32, i16, i16, i16, i16, i16, i16 }
%struct.elf32_phdr = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.elf64_phdr = type { i32, i32, i64, i64, i64, i64, i64, i64 }
%struct.elf64_shdr = type { i32, i32, i64, i64, i64, i64, i32, i32, i64, i64 }
%struct.elf32_shdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__kstrtab_rproc_coredump_add_segment = external dso_local constant [0 x i8], align 1
@__kstrtabns_rproc_coredump_add_segment = external dso_local constant [0 x i8], align 1
@__ksymtab_rproc_coredump_add_segment = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rproc_coredump_add_segment to i32), ptr @__kstrtab_rproc_coredump_add_segment, ptr @__kstrtabns_rproc_coredump_add_segment }, section "___ksymtab+rproc_coredump_add_segment", align 4
@__kstrtab_rproc_coredump_add_custom_segment = external dso_local constant [0 x i8], align 1
@__kstrtabns_rproc_coredump_add_custom_segment = external dso_local constant [0 x i8], align 1
@__ksymtab_rproc_coredump_add_custom_segment = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rproc_coredump_add_custom_segment to i32), ptr @__kstrtab_rproc_coredump_add_custom_segment, ptr @__kstrtabns_rproc_coredump_add_custom_segment }, section "___ksymtab+rproc_coredump_add_custom_segment", align 4
@__kstrtab_rproc_coredump_set_elf_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_rproc_coredump_set_elf_info = external dso_local constant [0 x i8], align 1
@__ksymtab_rproc_coredump_set_elf_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rproc_coredump_set_elf_info to i32), ptr @__kstrtab_rproc_coredump_set_elf_info, ptr @__kstrtabns_rproc_coredump_set_elf_info }, section "___ksymtab+rproc_coredump_set_elf_info", align 4
@rproc_coredump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 252, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Elf class is not set\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rproc_coredump\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/remoteproc/remoteproc_coredump.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rproc_coredump._entry_ptr = internal global ptr @rproc_coredump._entry, section ".printk_index", align 4
@rproc_coredump_using_sections._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.6, ptr @.str.2, i32 364, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rproc_coredump_using_sections\00", [34 x i8] zeroinitializer }, align 32
@rproc_coredump_using_sections._entry_ptr = internal global ptr @rproc_coredump_using_sections._entry, section ".printk_index", align 4
@__kstrtab_rproc_coredump_using_sections = external dso_local constant [0 x i8], align 1
@__kstrtabns_rproc_coredump_using_sections = external dso_local constant [0 x i8], align 1
@__ksymtab_rproc_coredump_using_sections = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rproc_coredump_using_sections to i32), ptr @__kstrtab_rproc_coredump_using_sections, ptr @__kstrtabns_rproc_coredump_using_sections }, section "___ksymtab+rproc_coredump_using_sections", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rproc_copy_segment._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 165, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"invalid copy request for segment %pad with offset %zu and size %zu)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rproc_copy_segment\00", [45 x i8] zeroinitializer }, align 32
@rproc_copy_segment._entry_ptr = internal global ptr @rproc_copy_segment._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@rproc_coredump_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 205, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Ramdump done, %lld bytes read\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rproc_coredump_read\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rproc_coredump_read._entry_ptr = internal global ptr @rproc_coredump_read._entry, section ".printk_index", align 4
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 252, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 364, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 163, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 87, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private constant [44 x i8] c"../drivers/remoteproc/remoteproc_coredump.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 204, i32 4 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__ksymtab_rproc_coredump_add_custom_segment, ptr @__ksymtab_rproc_coredump_add_segment, ptr @__ksymtab_rproc_coredump_set_elf_info, ptr @__ksymtab_rproc_coredump_using_sections, ptr @rproc_copy_segment._entry, ptr @rproc_copy_segment._entry_ptr, ptr @rproc_coredump._entry, ptr @rproc_coredump._entry_ptr, ptr @rproc_coredump_read._entry, ptr @rproc_coredump_read._entry_ptr, ptr @rproc_coredump_using_sections._entry, ptr @rproc_coredump_using_sections._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @init_completion.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rproc_coredump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rproc_coredump_using_sections._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rproc_copy_segment._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rproc_coredump_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rproc_coredump_cleanup(ptr noundef readonly %rproc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dump_segments = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 31
  %0 = ptrtoint ptr %dump_segments to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dump_segments, align 4
  %cmp.not20 = icmp eq ptr %1, %dump_segments
  br i1 %cmp.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %entry1.021 = phi ptr [ %tmp.0, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %entry1.021 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0 = load ptr, ptr %entry1.021, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %entry1.021) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %entry1.021, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %entry1.021 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %entry1.021, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %entry1.021 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %entry1.021, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %entry1.021, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %entry1.021) #10
  %cmp.not = icmp eq ptr %tmp.0, %dump_segments
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rproc_coredump_add_segment(ptr noundef %rproc, i32 noundef %da, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 32) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %da1 = getelementptr inbounds %struct.rproc_dump_segment, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %da1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %da, ptr %da1, align 8
  %size2 = getelementptr inbounds %struct.rproc_dump_segment, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %size2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %size, ptr %size2, align 4
  %dump_segments = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 31
  %prev.i = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 31, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %4, ptr noundef %dump_segments) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dump_segments, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev3.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %call7.i.i, ptr %4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rproc_coredump_add_custom_segment(ptr noundef %rproc, i32 noundef %da, i32 noundef %size, ptr noundef %dumpfn, ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 32) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %da1 = getelementptr inbounds %struct.rproc_dump_segment, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %da1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %da, ptr %da1, align 8
  %size2 = getelementptr inbounds %struct.rproc_dump_segment, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %size2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %size, ptr %size2, align 4
  %priv3 = getelementptr inbounds %struct.rproc_dump_segment, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %priv3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %priv, ptr %priv3, align 8
  %dump = getelementptr inbounds %struct.rproc_dump_segment, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %dump to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dumpfn, ptr %dump, align 4
  %dump_segments = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 31
  %prev.i = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 31, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %6, ptr noundef %dump_segments) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dump_segments, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %call7.i.i, ptr %6, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @rproc_coredump_set_elf_info(ptr nocapture noundef writeonly %rproc, i8 noundef zeroext %class, i16 noundef zeroext %machine) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %class.off = add i8 %class, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %class.off)
  %switch = icmp ult i8 %class.off, 2
  br i1 %switch, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %elf_class = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 33
  %0 = ptrtoint ptr %elf_class to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %class, ptr %elf_class, align 8
  %elf_machine = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 34
  %1 = ptrtoint ptr %elf_machine to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %machine, ptr %elf_machine, align 2
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rproc_coredump(ptr noundef %rproc) local_unnamed_addr #0 align 64 {
entry:
  %is_iomem.i = alloca i8, align 1
  %dump_state = alloca %struct.rproc_coredump_state, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %elf_class = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 33
  %0 = ptrtoint ptr %elf_class to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %elf_class, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %dump_state) #10
  %2 = call ptr @memset(ptr %dump_state, i32 255, i32 64)
  %dump_conf1 = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 9
  %3 = ptrtoint ptr %dump_conf1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dump_conf1, align 8
  %dump_segments = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 31
  %5 = ptrtoint ptr %dump_segments to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %dump_segments, align 4
  %cmp.i = icmp eq ptr %6, %dump_segments
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  %or.cond = select i1 %cmp.i, i1 true, i1 %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp2 = icmp eq i8 %1, 0
  br i1 %cmp2, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.i189 = icmp eq i8 %1, 1
  %..i = select i1 %cmp.i189, i32 52, i32 64
  %7 = ptrtoint ptr %dump_segments to i32
  call void @__asan_load4_noabort(i32 %7)
  %segment.0330 = load ptr, ptr %dump_segments, align 4
  %cmp9.not331 = icmp eq ptr %segment.0330, %dump_segments
  br i1 %cmp9.not331, label %if.end5.for.end_crit_edge, label %for.body.lr.ph

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end5
  %..i191 = select i1 %cmp.i189, i32 32, i32 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp12 = icmp eq i32 %4, 1
  br label %for.body

for.body:                                         ; preds = %if.end16.for.body_crit_edge, %for.body.lr.ph
  %segment.0334 = phi ptr [ %segment.0330, %for.body.lr.ph ], [ %segment.0, %if.end16.for.body_crit_edge ]
  %data_size.0333 = phi i32 [ %..i, %for.body.lr.ph ], [ %data_size.1, %if.end16.for.body_crit_edge ]
  %phnum.0332 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end16.for.body_crit_edge ]
  %add = add i32 %data_size.0333, %..i191
  br i1 %cmp12, label %if.then14, label %for.body.if.end16_crit_edge

for.body.if.end16_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then14:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %size = getelementptr inbounds %struct.rproc_dump_segment, ptr %segment.0334, i32 0, i32 2
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  %add15 = add i32 %9, %add
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %for.body.if.end16_crit_edge
  %data_size.1 = phi i32 [ %add15, %if.then14 ], [ %add, %for.body.if.end16_crit_edge ]
  %inc = add i32 %phnum.0332, 1
  %10 = ptrtoint ptr %segment.0334 to i32
  call void @__asan_load4_noabort(i32 %10)
  %segment.0 = load ptr, ptr %segment.0334, align 4
  %cmp9.not = icmp eq ptr %segment.0, %dump_segments
  br i1 %cmp9.not, label %for.end.loopexit, label %if.end16.for.body_crit_edge

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end.loopexit:                                 ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %phi.cast = trunc i32 %inc to i16
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end5.for.end_crit_edge
  %phnum.0.lcssa = phi i16 [ 0, %if.end5.for.end_crit_edge ], [ %phi.cast, %for.end.loopexit ]
  %data_size.0.lcssa = phi i32 [ %..i, %if.end5.for.end_crit_edge ], [ %data_size.1, %for.end.loopexit ]
  %call22 = tail call noalias ptr @vmalloc(i32 noundef %data_size.0.lcssa) #15
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %for.end.cleanup_crit_edge, label %if.end25

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end25:                                         ; preds = %for.end
  %11 = call ptr @memset(ptr %call22, i32 0, i32 %..i)
  %12 = ptrtoint ptr %call22 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2135247942, ptr %call22, align 4
  %arrayidx.i = getelementptr [16 x i8], ptr %call22, i32 0, i32 4
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %1, ptr %arrayidx.i, align 4
  %arrayidx3.i = getelementptr [16 x i8], ptr %call22, i32 0, i32 5
  %14 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %arrayidx3.i, align 1
  %arrayidx5.i = getelementptr [16 x i8], ptr %call22, i32 0, i32 6
  %15 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %arrayidx5.i, align 2
  %arrayidx7.i = getelementptr [16 x i8], ptr %call22, i32 0, i32 7
  %16 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx7.i, align 1
  br i1 %cmp.i189, label %if.then.i224, label %if.else.i226

if.then.i224:                                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %e_type.i = getelementptr inbounds %struct.elf32_hdr, ptr %call22, i32 0, i32 1
  %17 = ptrtoint ptr %e_type.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 4, ptr %e_type.i, align 4
  %elf_machine344 = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 34
  %18 = ptrtoint ptr %elf_machine344 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %elf_machine344, align 2
  %e_machine2.i345 = getelementptr inbounds %struct.elf64_hdr, ptr %call22, i32 0, i32 2
  %20 = ptrtoint ptr %e_machine2.i345 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %e_machine2.i345, align 2
  %e_version2.i346 = getelementptr inbounds %struct.elf64_hdr, ptr %call22, i32 0, i32 3
  %21 = ptrtoint ptr %e_version2.i346 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %e_version2.i346, align 4
  %bootaddr347 = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 16
  %22 = ptrtoint ptr %bootaddr347 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %bootaddr347, align 8
  %conv2.i = trunc i64 %23 to i32
  %e_entry.i = getelementptr inbounds %struct.elf32_hdr, ptr %call22, i32 0, i32 4
  %24 = ptrtoint ptr %e_entry.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv2.i, ptr %e_entry.i, align 4
  %e_phoff.i = getelementptr inbounds %struct.elf32_hdr, ptr %call22, i32 0, i32 5
  %25 = ptrtoint ptr %e_phoff.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %..i, ptr %e_phoff.i, align 4
  %conv2.i208272 = trunc i32 %..i to i16
  %e_ehsize.i274 = getelementptr inbounds %struct.elf32_hdr, ptr %call22, i32 0, i32 8
  %26 = ptrtoint ptr %e_ehsize.i274 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv2.i208272, ptr %e_ehsize.i274, align 4
  %e_phentsize.i279 = getelementptr inbounds %struct.elf32_hdr, ptr %call22, i32 0, i32 9
  %27 = ptrtoint ptr %e_phentsize.i279 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 32, ptr %e_phentsize.i279, align 2
  %e_phnum.i = getelementptr inbounds %struct.elf32_hdr, ptr %call22, i32 0, i32 10
  %28 = ptrtoint ptr %e_phnum.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %phnum.0.lcssa, ptr %e_phnum.i, align 4
  br label %elf_hdr_get_e_phoff.exit228

if.else.i226:                                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %e_type2.i = getelementptr inbounds %struct.elf64_hdr, ptr %call22, i32 0, i32 1
  %29 = ptrtoint ptr %e_type2.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 4, ptr %e_type2.i, align 8
  %elf_machine = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 34
  %30 = ptrtoint ptr %elf_machine to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %elf_machine, align 2
  %e_machine2.i = getelementptr inbounds %struct.elf64_hdr, ptr %call22, i32 0, i32 2
  %32 = ptrtoint ptr %e_machine2.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %e_machine2.i, align 2
  %e_version2.i = getelementptr inbounds %struct.elf64_hdr, ptr %call22, i32 0, i32 3
  %33 = ptrtoint ptr %e_version2.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %e_version2.i, align 4
  %bootaddr = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 16
  %34 = ptrtoint ptr %bootaddr to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %bootaddr, align 8
  %e_entry3.i = getelementptr inbounds %struct.elf64_hdr, ptr %call22, i32 0, i32 4
  %36 = ptrtoint ptr %e_entry3.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %e_entry3.i, align 8
  %conv28 = zext i32 %..i to i64
  %e_phoff3.i = getelementptr inbounds %struct.elf64_hdr, ptr %call22, i32 0, i32 5
  %37 = ptrtoint ptr %e_phoff3.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %conv28, ptr %e_phoff3.i, align 8
  %conv2.i208 = trunc i32 %..i to i16
  %e_ehsize4.i = getelementptr inbounds %struct.elf64_hdr, ptr %call22, i32 0, i32 8
  %38 = ptrtoint ptr %e_ehsize4.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv2.i208, ptr %e_ehsize4.i, align 4
  %e_phentsize2.i = getelementptr inbounds %struct.elf64_hdr, ptr %call22, i32 0, i32 9
  %39 = ptrtoint ptr %e_phentsize2.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 56, ptr %e_phentsize2.i, align 2
  %e_phnum2.i = getelementptr inbounds %struct.elf64_hdr, ptr %call22, i32 0, i32 10
  %40 = ptrtoint ptr %e_phnum2.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %phnum.0.lcssa, ptr %e_phnum2.i, align 8
  br label %elf_hdr_get_e_phoff.exit228

elf_hdr_get_e_phoff.exit228:                      ; preds = %if.else.i226, %if.then.i224
  %..i210282286292 = phi i32 [ 32, %if.then.i224 ], [ 56, %if.else.i226 ]
  %41 = ptrtoint ptr %dump_segments to i32
  call void @__asan_load4_noabort(i32 %41)
  %segment.1336 = load ptr, ptr %dump_segments, align 4
  %cmp49.not337 = icmp eq ptr %segment.1336, %dump_segments
  br i1 %cmp49.not337, label %elf_hdr_get_e_phoff.exit228.for.end80_crit_edge, label %for.body52.lr.ph

elf_hdr_get_e_phoff.exit228.for.end80_crit_edge:  ; preds = %elf_hdr_get_e_phoff.exit228
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end80

for.body52.lr.ph:                                 ; preds = %elf_hdr_get_e_phoff.exit228
  %e_phnum.i232 = getelementptr inbounds %struct.elf32_hdr, ptr %call22, i32 0, i32 10
  %e_phnum2.i233 = getelementptr inbounds %struct.elf64_hdr, ptr %call22, i32 0, i32 10
  %retval.0.in.i = select i1 %cmp.i189, ptr %e_phnum.i232, ptr %e_phnum2.i233
  %42 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %retval.0.i234 = load i16, ptr %retval.0.in.i, align 4
  %conv39 = zext i16 %retval.0.i234 to i32
  %mul = mul nuw nsw i32 %..i210282286292, %conv39
  %add40 = add nuw nsw i32 %mul, %..i
  %add.ptr34294 = getelementptr i8, ptr %call22, i32 %..i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp62 = icmp eq i32 %4, 1
  %dev.i = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6
  br label %for.body52

for.body52:                                       ; preds = %elf_phdr_get_p_filesz.exit.for.body52_crit_edge, %for.body52.lr.ph
  %segment.1343 = phi ptr [ %segment.1336, %for.body52.lr.ph ], [ %segment.1, %elf_phdr_get_p_filesz.exit.for.body52_crit_edge ]
  %phdr.0340 = phi ptr [ %add.ptr34294, %for.body52.lr.ph ], [ %add.ptr73, %elf_phdr_get_p_filesz.exit.for.body52_crit_edge ]
  %offset.0338 = phi i32 [ %add40, %for.body52.lr.ph ], [ %conv71, %elf_phdr_get_p_filesz.exit.for.body52_crit_edge ]
  %43 = call ptr @memset(ptr %phdr.0340, i32 0, i32 %..i210282286292)
  br i1 %cmp.i189, label %if.then.i257, label %if.else.i258

if.then.i257:                                     ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %phdr.0340 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %phdr.0340, align 4
  %p_offset.i = getelementptr inbounds %struct.elf32_phdr, ptr %phdr.0340, i32 0, i32 1
  %45 = ptrtoint ptr %p_offset.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %offset.0338, ptr %p_offset.i, align 4
  %da297 = getelementptr inbounds %struct.rproc_dump_segment, ptr %segment.1343, i32 0, i32 1
  %46 = ptrtoint ptr %da297 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %da297, align 8
  %p_vaddr.i = getelementptr inbounds %struct.elf32_phdr, ptr %phdr.0340, i32 0, i32 2
  %48 = ptrtoint ptr %p_vaddr.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %p_vaddr.i, align 4
  %49 = load i32, ptr %da297, align 8
  %p_paddr.i = getelementptr inbounds %struct.elf32_phdr, ptr %phdr.0340, i32 0, i32 3
  %50 = ptrtoint ptr %p_paddr.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %p_paddr.i, align 4
  %size58306 = getelementptr inbounds %struct.rproc_dump_segment, ptr %segment.1343, i32 0, i32 2
  %51 = ptrtoint ptr %size58306 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %size58306, align 4
  %p_filesz.i = getelementptr inbounds %struct.elf32_phdr, ptr %phdr.0340, i32 0, i32 4
  %53 = ptrtoint ptr %p_filesz.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %p_filesz.i, align 4
  %54 = load i32, ptr %size58306, align 4
  %p_memsz.i = getelementptr inbounds %struct.elf32_phdr, ptr %phdr.0340, i32 0, i32 5
  %55 = ptrtoint ptr %p_memsz.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %p_memsz.i, align 4
  %p_flags.i322 = getelementptr inbounds %struct.elf32_phdr, ptr %phdr.0340, i32 0, i32 6
  %56 = ptrtoint ptr %p_flags.i322 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 7, ptr %p_flags.i322, align 4
  %p_align.i = getelementptr inbounds %struct.elf32_phdr, ptr %phdr.0340, i32 0, i32 7
  %57 = ptrtoint ptr %p_align.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %p_align.i, align 4
  br label %elf_phdr_set_p_align.exit

if.else.i258:                                     ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %phdr.0340 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %phdr.0340, align 8
  %conv54 = zext i32 %offset.0338 to i64
  %p_offset3.i = getelementptr inbounds %struct.elf64_phdr, ptr %phdr.0340, i32 0, i32 2
  %59 = ptrtoint ptr %p_offset3.i to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %conv54, ptr %p_offset3.i, align 8
  %da = getelementptr inbounds %struct.rproc_dump_segment, ptr %segment.1343, i32 0, i32 1
  %60 = ptrtoint ptr %da to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %da, align 8
  %conv55 = zext i32 %61 to i64
  %p_vaddr3.i = getelementptr inbounds %struct.elf64_phdr, ptr %phdr.0340, i32 0, i32 3
  %62 = ptrtoint ptr %p_vaddr3.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %conv55, ptr %p_vaddr3.i, align 8
  %63 = load i32, ptr %da, align 8
  %conv57 = zext i32 %63 to i64
  %p_paddr3.i = getelementptr inbounds %struct.elf64_phdr, ptr %phdr.0340, i32 0, i32 4
  %64 = ptrtoint ptr %p_paddr3.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %conv57, ptr %p_paddr3.i, align 8
  %size58 = getelementptr inbounds %struct.rproc_dump_segment, ptr %segment.1343, i32 0, i32 2
  %65 = ptrtoint ptr %size58 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %size58, align 4
  %conv59 = zext i32 %66 to i64
  %p_filesz3.i = getelementptr inbounds %struct.elf64_phdr, ptr %phdr.0340, i32 0, i32 5
  %67 = ptrtoint ptr %p_filesz3.i to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %conv59, ptr %p_filesz3.i, align 8
  %68 = load i32, ptr %size58, align 4
  %conv61 = zext i32 %68 to i64
  %p_memsz3.i = getelementptr inbounds %struct.elf64_phdr, ptr %phdr.0340, i32 0, i32 6
  %69 = ptrtoint ptr %p_memsz3.i to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %conv61, ptr %p_memsz3.i, align 8
  %p_flags2.i = getelementptr inbounds %struct.elf64_phdr, ptr %phdr.0340, i32 0, i32 1
  %70 = ptrtoint ptr %p_flags2.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 7, ptr %p_flags2.i, align 4
  %p_align3.i = getelementptr inbounds %struct.elf64_phdr, ptr %phdr.0340, i32 0, i32 7
  %71 = ptrtoint ptr %p_align3.i to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 0, ptr %p_align3.i, align 8
  br label %elf_phdr_set_p_align.exit

elf_phdr_set_p_align.exit:                        ; preds = %if.else.i258, %if.then.i257
  %size58310315326 = phi ptr [ %size58306, %if.then.i257 ], [ %size58, %if.else.i258 ]
  %da299303308317324 = phi ptr [ %da297, %if.then.i257 ], [ %da, %if.else.i258 ]
  br i1 %cmp62, label %if.then64, label %elf_phdr_set_p_align.exit.if.end67_crit_edge

elf_phdr_set_p_align.exit.if.end67_crit_edge:     ; preds = %elf_phdr_set_p_align.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.then64:                                        ; preds = %elf_phdr_set_p_align.exit
  %add.ptr65 = getelementptr i8, ptr %call22, i32 %offset.0338
  %72 = ptrtoint ptr %size58310315326 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %size58310315326, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %is_iomem.i) #10
  %74 = ptrtoint ptr %is_iomem.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %is_iomem.i, align 1
  %dump.i = getelementptr inbounds %struct.rproc_dump_segment, ptr %segment.1343, i32 0, i32 4
  %75 = ptrtoint ptr %dump.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dump.i, align 4
  %tobool.not.i = icmp eq ptr %76, null
  br i1 %tobool.not.i, label %if.else.i261, label %if.then.i259

if.then.i259:                                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  call void %76(ptr noundef %rproc, ptr noundef %segment.1343, ptr noundef %add.ptr65, i32 noundef 0, i32 noundef %73) #10
  br label %rproc_copy_segment.exit

if.else.i261:                                     ; preds = %if.then64
  %77 = ptrtoint ptr %da299303308317324 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %da299303308317324, align 8
  %conv.i260 = zext i32 %78 to i64
  %call.i = call ptr @rproc_da_to_va(ptr noundef %rproc, i64 noundef %conv.i260, i32 noundef %73, ptr noundef nonnull %is_iomem.i) #10
  %tobool2.not.i = icmp eq ptr %call.i, null
  br i1 %tobool2.not.i, label %do.end.i, label %if.else5.i

do.end.i:                                         ; preds = %if.else.i261
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.8, ptr noundef %da299303308317324, i32 noundef 0, i32 noundef %73) #14
  %79 = call ptr @memset(ptr %add.ptr65, i32 255, i32 %73)
  br label %rproc_copy_segment.exit

if.else5.i:                                       ; preds = %if.else.i261
  %80 = ptrtoint ptr %is_iomem.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %is_iomem.i, align 1, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool6.not.i = icmp eq i8 %81, 0
  br i1 %tobool6.not.i, label %if.else8.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @mmiocpy(ptr noundef %add.ptr65, ptr noundef nonnull %call.i, i32 noundef %73) #10
  br label %rproc_copy_segment.exit

if.else8.i:                                       ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #12
  %82 = call ptr @memcpy(ptr %add.ptr65, ptr %call.i, i32 %73)
  br label %rproc_copy_segment.exit

rproc_copy_segment.exit:                          ; preds = %if.else8.i, %if.then7.i, %do.end.i, %if.then.i259
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %is_iomem.i) #10
  br label %if.end67

if.end67:                                         ; preds = %rproc_copy_segment.exit, %elf_phdr_set_p_align.exit.if.end67_crit_edge
  br i1 %cmp.i189, label %if.then.i265, label %if.else.i267

if.then.i265:                                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  %p_filesz.i263 = getelementptr inbounds %struct.elf32_phdr, ptr %phdr.0340, i32 0, i32 4
  %83 = ptrtoint ptr %p_filesz.i263 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %p_filesz.i263, align 4
  br label %elf_phdr_get_p_filesz.exit

if.else.i267:                                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  %p_filesz3.i266 = getelementptr inbounds %struct.elf64_phdr, ptr %phdr.0340, i32 0, i32 5
  %85 = ptrtoint ptr %p_filesz3.i266 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %p_filesz3.i266, align 8
  %extract.t329 = trunc i64 %86 to i32
  br label %elf_phdr_get_p_filesz.exit

elf_phdr_get_p_filesz.exit:                       ; preds = %if.else.i267, %if.then.i265
  %retval.0.i268.off0 = phi i32 [ %84, %if.then.i265 ], [ %extract.t329, %if.else.i267 ]
  %conv71 = add i32 %retval.0.i268.off0, %offset.0338
  %add.ptr73 = getelementptr i8, ptr %phdr.0340, i32 %..i210282286292
  %87 = ptrtoint ptr %segment.1343 to i32
  call void @__asan_load4_noabort(i32 %87)
  %segment.1 = load ptr, ptr %segment.1343, align 4
  %cmp49.not = icmp eq ptr %segment.1, %dump_segments
  br i1 %cmp49.not, label %elf_phdr_get_p_filesz.exit.for.end80_crit_edge, label %elf_phdr_get_p_filesz.exit.for.body52_crit_edge

elf_phdr_get_p_filesz.exit.for.body52_crit_edge:  ; preds = %elf_phdr_get_p_filesz.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body52

elf_phdr_get_p_filesz.exit.for.end80_crit_edge:   ; preds = %elf_phdr_get_p_filesz.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end80

for.end80:                                        ; preds = %elf_phdr_get_p_filesz.exit.for.end80_crit_edge, %elf_hdr_get_e_phoff.exit228.for.end80_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp81 = icmp eq i32 %4, 1
  br i1 %cmp81, label %if.then83, label %if.end85

if.then83:                                        ; preds = %for.end80
  call void @__sanitizer_cov_trace_pc() #12
  %dev84 = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6
  call void @dev_coredumpv(ptr noundef %dev84, ptr noundef nonnull %call22, i32 noundef %data_size.0.lcssa, i32 noundef 3264) #10
  br label %cleanup

if.end85:                                         ; preds = %for.end80
  call void @__sanitizer_cov_trace_pc() #12
  %88 = ptrtoint ptr %dump_state to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %rproc, ptr %dump_state, align 4
  %header = getelementptr inbounds %struct.rproc_coredump_state, ptr %dump_state, i32 0, i32 1
  %89 = ptrtoint ptr %header to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call22, ptr %header, align 4
  %dump_done = getelementptr inbounds %struct.rproc_coredump_state, ptr %dump_state, i32 0, i32 2
  %90 = ptrtoint ptr %dump_done to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %dump_done, align 4
  %wait.i = getelementptr inbounds %struct.rproc_coredump_state, ptr %dump_state, i32 0, i32 2, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_completion.__key) #10
  %dev87 = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6
  call void @dev_coredumpm(ptr noundef %dev87, ptr noundef null, ptr noundef nonnull %dump_state, i32 noundef %data_size.0.lcssa, i32 noundef 3264, ptr noundef nonnull @rproc_coredump_read, ptr noundef nonnull @rproc_coredump_free) #10
  call void @wait_for_completion(ptr noundef %dump_done) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end85, %if.then83, %for.end.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %dump_state) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_coredumpv(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_coredumpm(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rproc_coredump_read(ptr noundef %buffer, i64 noundef %offset, i32 noundef %count, ptr nocapture noundef readonly %data, i32 noundef %header_sz) #0 align 64 {
entry:
  %is_iomem.i = alloca i8, align 1
  %offset.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %offset.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %offset, ptr %offset.addr, align 8
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %conv = zext i32 %header_sz to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %offset)
  %cmp = icmp sgt i64 %conv, %offset
  br i1 %cmp, label %if.then, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not56 = icmp eq i32 %count, 0
  br i1 %tobool.not56, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %dump_segments = getelementptr inbounds %struct.rproc, ptr %2, i32 0, i32 31
  %dev.i = getelementptr inbounds %struct.rproc, ptr %2, i32 0, i32 6
  br label %while.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %header = getelementptr inbounds %struct.rproc_coredump_state, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %header, align 4
  %call = call i32 @memory_read_from_buffer(ptr noundef %buffer, i32 noundef %count, ptr noundef nonnull %offset.addr, ptr noundef %4, i32 noundef %header_sz) #10
  br label %cleanup

while.body:                                       ; preds = %rproc_copy_segment.exit.while.body_crit_edge, %while.body.lr.ph
  %buffer.addr.058 = phi ptr [ %buffer, %while.body.lr.ph ], [ %add.ptr, %rproc_copy_segment.exit.while.body_crit_edge ]
  %bytes_left.057 = phi i32 [ %count, %while.body.lr.ph ], [ %sub12, %rproc_copy_segment.exit.while.body_crit_edge ]
  %5 = ptrtoint ptr %offset.addr to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %offset.addr, align 8
  %7 = ptrtoint ptr %dump_segments to i32
  call void @__asan_load4_noabort(i32 %7)
  %segment.025.i = load ptr, ptr %dump_segments, align 4
  %cmp.not26.i = icmp eq ptr %segment.025.i, %dump_segments
  br i1 %cmp.not26.i, label %while.body.do.end_crit_edge, label %for.body.i.preheader

while.body.do.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.body.i.preheader:                             ; preds = %while.body
  %sub = sub i64 %6, %conv
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.i.preheader
  %segment.028.i = phi ptr [ %segment.0.i, %if.end.i.for.body.i_crit_edge ], [ %segment.025.i, %for.body.i.preheader ]
  %user_offset.addr.027.i = phi i64 [ %sub8.i, %if.end.i.for.body.i_crit_edge ], [ %sub, %for.body.i.preheader ]
  %size.i = getelementptr inbounds %struct.rproc_dump_segment, ptr %segment.028.i, i32 0, i32 2
  %8 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size.i, align 4
  %conv.i = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %user_offset.addr.027.i, i64 %conv.i)
  %cmp1.i = icmp slt i64 %user_offset.addr.027.i, %conv.i
  br i1 %cmp1.i, label %rproc_coredump_find_segment.exit, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  %sub8.i = sub i64 %user_offset.addr.027.i, %conv.i
  %10 = ptrtoint ptr %segment.028.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %segment.0.i = load ptr, ptr %segment.028.i, align 4
  %cmp.not.i = icmp eq ptr %segment.0.i, %dump_segments
  br i1 %cmp.not.i, label %if.end.i.do.end_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

rproc_coredump_find_segment.exit:                 ; preds = %for.body.i
  %tobool5.not = icmp eq ptr %segment.028.i, null
  br i1 %tobool5.not, label %rproc_coredump_find_segment.exit.do.end_crit_edge, label %if.end7

rproc_coredump_find_segment.exit.do.end_crit_edge: ; preds = %rproc_coredump_find_segment.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %rproc_coredump_find_segment.exit.do.end_crit_edge, %if.end.i.do.end_crit_edge, %while.body.do.end_crit_edge
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.11, i64 noundef %6) #14
  br label %while.end

if.end7:                                          ; preds = %rproc_coredump_find_segment.exit
  %size.i.le = getelementptr inbounds %struct.rproc_dump_segment, ptr %segment.028.i, i32 0, i32 2
  %11 = trunc i64 %user_offset.addr.027.i to i32
  %conv5.i = sub i32 %9, %11
  %12 = call i32 @llvm.umin.i32(i32 %bytes_left.057, i32 %conv5.i)
  %13 = ptrtoint ptr %size.i.le to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size.i.le, align 4
  %sub10 = sub i32 %14, %conv5.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %is_iomem.i) #10
  %15 = ptrtoint ptr %is_iomem.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %is_iomem.i, align 1
  %dump.i = getelementptr inbounds %struct.rproc_dump_segment, ptr %segment.028.i, i32 0, i32 4
  %16 = ptrtoint ptr %dump.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dump.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i40

if.then.i40:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  call void %17(ptr noundef %2, ptr noundef nonnull %segment.028.i, ptr noundef %buffer.addr.058, i32 noundef %sub10, i32 noundef %12) #10
  br label %rproc_copy_segment.exit

if.else.i:                                        ; preds = %if.end7
  %da.i = getelementptr inbounds %struct.rproc_dump_segment, ptr %segment.028.i, i32 0, i32 1
  %18 = ptrtoint ptr %da.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %da.i, align 8
  %add.i = add i32 %19, %sub10
  %conv.i41 = zext i32 %add.i to i64
  %call.i = call ptr @rproc_da_to_va(ptr noundef %2, i64 noundef %conv.i41, i32 noundef %12, ptr noundef nonnull %is_iomem.i) #10
  %tobool2.not.i = icmp eq ptr %call.i, null
  br i1 %tobool2.not.i, label %do.end.i, label %if.else5.i

do.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.8, ptr noundef %da.i, i32 noundef %sub10, i32 noundef %12) #14
  %20 = call ptr @memset(ptr %buffer.addr.058, i32 255, i32 %12)
  br label %rproc_copy_segment.exit

if.else5.i:                                       ; preds = %if.else.i
  %21 = ptrtoint ptr %is_iomem.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %is_iomem.i, align 1, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool6.not.i = icmp eq i8 %22, 0
  br i1 %tobool6.not.i, label %if.else8.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @mmiocpy(ptr noundef %buffer.addr.058, ptr noundef nonnull %call.i, i32 noundef %12) #10
  br label %rproc_copy_segment.exit

if.else8.i:                                       ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #12
  %23 = call ptr @memcpy(ptr %buffer.addr.058, ptr %call.i, i32 %12)
  br label %rproc_copy_segment.exit

rproc_copy_segment.exit:                          ; preds = %if.else8.i, %if.then7.i, %do.end.i, %if.then.i40
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %is_iomem.i) #10
  %conv11 = sext i32 %12 to i64
  %24 = ptrtoint ptr %offset.addr to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %offset.addr, align 8
  %add = add i64 %25, %conv11
  store i64 %add, ptr %offset.addr, align 8
  %add.ptr = getelementptr i8, ptr %buffer.addr.058, i32 %12
  %sub12 = sub i32 %bytes_left.057, %12
  %tobool.not = icmp eq i32 %sub12, 0
  br i1 %tobool.not, label %rproc_copy_segment.exit.while.end_crit_edge, label %rproc_copy_segment.exit.while.body_crit_edge

rproc_copy_segment.exit.while.body_crit_edge:     ; preds = %rproc_copy_segment.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

rproc_copy_segment.exit.while.end_crit_edge:      ; preds = %rproc_copy_segment.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %rproc_copy_segment.exit.while.end_crit_edge, %do.end, %while.cond.preheader.while.end_crit_edge
  %bytes_left.052 = phi i32 [ %bytes_left.057, %do.end ], [ 0, %while.cond.preheader.while.end_crit_edge ], [ 0, %rproc_copy_segment.exit.while.end_crit_edge ]
  %sub13 = sub i32 %count, %bytes_left.052
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %sub13, %while.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rproc_coredump_free(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %header = getelementptr inbounds %struct.rproc_coredump_state, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %header, align 4
  tail call void @vfree(ptr noundef %1) #10
  %dump_done = getelementptr inbounds %struct.rproc_coredump_state, ptr %data, i32 0, i32 2
  tail call void @complete(ptr noundef %dump_done) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rproc_coredump_using_sections(ptr noundef %rproc) #0 align 64 {
entry:
  %is_iomem.i = alloca i8, align 1
  %dump_state = alloca %struct.rproc_coredump_state, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %elf_class = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 33
  %0 = ptrtoint ptr %elf_class to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %elf_class, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %dump_state) #10
  %2 = call ptr @memset(ptr %dump_state, i32 255, i32 64)
  %dump_conf1 = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 9
  %3 = ptrtoint ptr %dump_conf1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dump_conf1, align 8
  %dump_segments = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 31
  %5 = ptrtoint ptr %dump_segments to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %dump_segments, align 4
  %cmp.i = icmp eq ptr %6, %dump_segments
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  %or.cond = select i1 %cmp.i, i1 true, i1 %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp2 = icmp eq i8 %1, 0
  br i1 %cmp2, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.i251 = icmp eq i8 %1, 1
  %..i = select i1 %cmp.i251, i32 52, i32 64
  %..i253 = select i1 %cmp.i251, i32 40, i32 64
  %mul = shl nuw nsw i32 %..i253, 1
  %add = add nuw nsw i32 %mul, %..i
  %7 = ptrtoint ptr %dump_segments to i32
  call void @__asan_load4_noabort(i32 %7)
  %segment.0472 = load ptr, ptr %dump_segments, align 4
  %cmp13.not473 = icmp eq ptr %segment.0472, %dump_segments
  br i1 %cmp13.not473, label %if.end5.for.end_crit_edge, label %for.body.lr.ph

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp20 = icmp eq i32 %4, 1
  br label %for.body

for.body:                                         ; preds = %if.end24.for.body_crit_edge, %for.body.lr.ph
  %segment.0477 = phi ptr [ %segment.0472, %for.body.lr.ph ], [ %segment.0, %if.end24.for.body_crit_edge ]
  %data_size.0476 = phi i32 [ %add, %for.body.lr.ph ], [ %data_size.1, %if.end24.for.body_crit_edge ]
  %strtbl_size.0475 = phi i32 [ 9, %for.body.lr.ph ], [ %add19, %if.end24.for.body_crit_edge ]
  %shnum.0474 = phi i32 [ 2, %for.body.lr.ph ], [ %inc, %if.end24.for.body_crit_edge ]
  %add16 = add i32 %data_size.0476, %..i253
  %priv = getelementptr inbounds %struct.rproc_dump_segment, ptr %segment.0477, i32 0, i32 3
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 8
  %call17 = tail call i32 @strlen(ptr noundef %9) #16
  %add18 = add i32 %strtbl_size.0475, 1
  %add19 = add i32 %add18, %call17
  br i1 %cmp20, label %if.then22, label %for.body.if.end24_crit_edge

for.body.if.end24_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then22:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %size = getelementptr inbounds %struct.rproc_dump_segment, ptr %segment.0477, i32 0, i32 2
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  %add23 = add i32 %11, %add16
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %for.body.if.end24_crit_edge
  %data_size.1 = phi i32 [ %add23, %if.then22 ], [ %add16, %for.body.if.end24_crit_edge ]
  %inc = add i32 %shnum.0474, 1
  %12 = ptrtoint ptr %segment.0477 to i32
  call void @__asan_load4_noabort(i32 %12)
  %segment.0 = load ptr, ptr %segment.0477, align 4
  %cmp13.not = icmp eq ptr %segment.0, %dump_segments
  br i1 %cmp13.not, label %for.end.loopexit, label %if.end24.for.body_crit_edge

if.end24.for.body_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end.loopexit:                                 ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %phi.cast = trunc i32 %inc to i16
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end5.for.end_crit_edge
  %shnum.0.lcssa = phi i16 [ 2, %if.end5.for.end_crit_edge ], [ %phi.cast, %for.end.loopexit ]
  %strtbl_size.0.lcssa = phi i32 [ 9, %if.end5.for.end_crit_edge ], [ %add19, %for.end.loopexit ]
  %data_size.0.lcssa = phi i32 [ %add, %if.end5.for.end_crit_edge ], [ %data_size.1, %for.end.loopexit ]
  %add30 = add i32 %data_size.0.lcssa, %strtbl_size.0.lcssa
  %call31 = tail call noalias ptr @vmalloc(i32 noundef %add30) #15
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %for.end.cleanup_crit_edge, label %if.end34

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end34:                                         ; preds = %for.end
  %13 = call ptr @memset(ptr %call31, i32 0, i32 %..i)
  %14 = ptrtoint ptr %call31 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2135247942, ptr %call31, align 4
  %arrayidx.i = getelementptr [16 x i8], ptr %call31, i32 0, i32 4
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %1, ptr %arrayidx.i, align 4
  %arrayidx3.i = getelementptr [16 x i8], ptr %call31, i32 0, i32 5
  %16 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %arrayidx3.i, align 1
  %arrayidx5.i = getelementptr [16 x i8], ptr %call31, i32 0, i32 6
  %17 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %arrayidx5.i, align 2
  %arrayidx7.i = getelementptr [16 x i8], ptr %call31, i32 0, i32 7
  %18 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx7.i, align 1
  br i1 %cmp.i251, label %if.then.i267, label %if.else.i268

if.then.i267:                                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %e_type.i = getelementptr inbounds %struct.elf32_hdr, ptr %call31, i32 0, i32 1
  %19 = ptrtoint ptr %e_type.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 4, ptr %e_type.i, align 4
  %elf_machine488 = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 34
  %20 = ptrtoint ptr %elf_machine488 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %elf_machine488, align 2
  %e_machine2.i489 = getelementptr inbounds %struct.elf64_hdr, ptr %call31, i32 0, i32 2
  %22 = ptrtoint ptr %e_machine2.i489 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %e_machine2.i489, align 2
  %e_version2.i490 = getelementptr inbounds %struct.elf64_hdr, ptr %call31, i32 0, i32 3
  %23 = ptrtoint ptr %e_version2.i490 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %e_version2.i490, align 4
  %bootaddr491 = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 16
  %24 = ptrtoint ptr %bootaddr491 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %bootaddr491, align 8
  %conv2.i = trunc i64 %25 to i32
  %e_entry.i = getelementptr inbounds %struct.elf32_hdr, ptr %call31, i32 0, i32 4
  %26 = ptrtoint ptr %e_entry.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv2.i, ptr %e_entry.i, align 4
  %e_shoff.i = getelementptr inbounds %struct.elf32_hdr, ptr %call31, i32 0, i32 6
  %27 = ptrtoint ptr %e_shoff.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %..i, ptr %e_shoff.i, align 4
  br label %elf_hdr_set_e_shoff.exit

if.else.i268:                                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %e_type2.i = getelementptr inbounds %struct.elf64_hdr, ptr %call31, i32 0, i32 1
  %28 = ptrtoint ptr %e_type2.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 4, ptr %e_type2.i, align 8
  %elf_machine = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 34
  %29 = ptrtoint ptr %elf_machine to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %elf_machine, align 2
  %e_machine2.i = getelementptr inbounds %struct.elf64_hdr, ptr %call31, i32 0, i32 2
  %31 = ptrtoint ptr %e_machine2.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %e_machine2.i, align 2
  %e_version2.i = getelementptr inbounds %struct.elf64_hdr, ptr %call31, i32 0, i32 3
  %32 = ptrtoint ptr %e_version2.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %e_version2.i, align 4
  %bootaddr = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 16
  %33 = ptrtoint ptr %bootaddr to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %bootaddr, align 8
  %e_entry3.i = getelementptr inbounds %struct.elf64_hdr, ptr %call31, i32 0, i32 4
  %35 = ptrtoint ptr %e_entry3.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %e_entry3.i, align 8
  %conv37 = zext i32 %..i to i64
  %e_shoff3.i = getelementptr inbounds %struct.elf64_hdr, ptr %call31, i32 0, i32 6
  %36 = ptrtoint ptr %e_shoff3.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %conv37, ptr %e_shoff3.i, align 8
  br label %elf_hdr_set_e_shoff.exit

elf_hdr_set_e_shoff.exit:                         ; preds = %if.else.i268, %if.then.i267
  %conv2.i272 = trunc i32 %..i to i16
  %e_ehsize4.i = getelementptr inbounds %struct.elf64_hdr, ptr %call31, i32 0, i32 8
  %e_ehsize.i = getelementptr inbounds %struct.elf32_hdr, ptr %call31, i32 0, i32 8
  %e_ehsize4.sink.i = select i1 %cmp.i251, ptr %e_ehsize.i, ptr %e_ehsize4.i
  %37 = ptrtoint ptr %e_ehsize4.sink.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv2.i272, ptr %e_ehsize4.sink.i, align 4
  %conv40 = trunc i32 %..i253 to i16
  %e_shentsize2.i = getelementptr inbounds %struct.elf64_hdr, ptr %call31, i32 0, i32 11
  %e_shentsize.i = getelementptr inbounds %struct.elf32_hdr, ptr %call31, i32 0, i32 11
  %e_shentsize2.sink.i = select i1 %cmp.i251, ptr %e_shentsize.i, ptr %e_shentsize2.i
  %38 = ptrtoint ptr %e_shentsize2.sink.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv40, ptr %e_shentsize2.sink.i, align 2
  %e_shnum2.i = getelementptr inbounds %struct.elf64_hdr, ptr %call31, i32 0, i32 12
  %e_shnum.i = getelementptr inbounds %struct.elf32_hdr, ptr %call31, i32 0, i32 12
  %e_shnum2.sink.i = select i1 %cmp.i251, ptr %e_shnum.i, ptr %e_shnum2.i
  %39 = ptrtoint ptr %e_shnum2.sink.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %shnum.0.lcssa, ptr %e_shnum2.sink.i, align 4
  %e_shstrndx2.i = getelementptr inbounds %struct.elf64_hdr, ptr %call31, i32 0, i32 13
  %e_shstrndx.i = getelementptr inbounds %struct.elf32_hdr, ptr %call31, i32 0, i32 13
  %e_shstrndx2.sink.i = select i1 %cmp.i251, ptr %e_shstrndx.i, ptr %e_shstrndx2.i
  %40 = ptrtoint ptr %e_shstrndx2.sink.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 1, ptr %e_shstrndx2.sink.i, align 2
  br i1 %cmp.i251, label %if.then.i291, label %if.else.i293

if.then.i291:                                     ; preds = %elf_hdr_set_e_shoff.exit
  call void @__sanitizer_cov_trace_pc() #12
  %e_shoff.i279 = getelementptr inbounds %struct.elf32_hdr, ptr %call31, i32 0, i32 6
  %41 = ptrtoint ptr %e_shoff.i279 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %e_shoff.i279, align 4
  %add.ptr43421 = getelementptr i8, ptr %call31, i32 %42
  %43 = call ptr @memset(ptr %add.ptr43421, i32 0, i32 %..i253)
  %44 = load i32, ptr %e_shoff.i279, align 4
  br label %elf_hdr_get_e_shoff.exit295

if.else.i293:                                     ; preds = %elf_hdr_set_e_shoff.exit
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %e_ehsize.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %e_ehsize.i, align 8
  %idx.ext = trunc i64 %46 to i32
  %add.ptr43 = getelementptr i8, ptr %call31, i32 %idx.ext
  %47 = call ptr @memset(ptr %add.ptr43, i32 0, i32 %..i253)
  %48 = load i64, ptr %e_ehsize.i, align 8
  %extract.t469 = trunc i64 %48 to i32
  br label %elf_hdr_get_e_shoff.exit295

elf_hdr_get_e_shoff.exit295:                      ; preds = %if.else.i293, %if.then.i291
  %49 = phi i32 [ %42, %if.then.i291 ], [ %idx.ext, %if.else.i293 ]
  %retval.0.i294.off0 = phi i32 [ %44, %if.then.i291 ], [ %extract.t469, %if.else.i293 ]
  %50 = getelementptr i8, ptr %call31, i32 %49
  %add.ptr46423 = getelementptr i8, ptr %50, i32 %..i253
  %51 = ptrtoint ptr %e_shnum2.sink.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %retval.0.i301 = load i16, ptr %e_shnum2.sink.i, align 4
  %conv50 = zext i16 %retval.0.i301 to i32
  %mul51 = mul nuw nsw i32 %..i253, %conv50
  %conv54 = add i32 %mul51, %retval.0.i294.off0
  %add.ptr55 = getelementptr i8, ptr %call31, i32 %conv54
  %52 = call ptr @memset(ptr %add.ptr55, i32 0, i32 %strtbl_size.0.lcssa)
  %53 = call ptr @memset(ptr %add.ptr46423, i32 0, i32 %..i253)
  %sh_type2.i = getelementptr inbounds %struct.elf64_shdr, ptr %add.ptr46423, i32 0, i32 1
  %54 = ptrtoint ptr %sh_type2.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 3, ptr %sh_type2.i, align 4
  br i1 %cmp.i251, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %elf_hdr_get_e_shoff.exit295
  call void @__sanitizer_cov_trace_pc() #12
  %sh_offset.i = getelementptr inbounds %struct.elf32_shdr, ptr %add.ptr46423, i32 0, i32 4
  %55 = ptrtoint ptr %sh_offset.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv54, ptr %sh_offset.i, align 4
  %sh_size.i = getelementptr inbounds %struct.elf32_shdr, ptr %add.ptr46423, i32 0, i32 5
  %56 = ptrtoint ptr %sh_size.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %strtbl_size.0.lcssa, ptr %sh_size.i, align 4
  %sh_entsize.i = getelementptr inbounds %struct.elf32_shdr, ptr %add.ptr46423, i32 0, i32 9
  %57 = ptrtoint ptr %sh_entsize.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %sh_entsize.i, align 4
  %sh_flags.i = getelementptr inbounds %struct.elf32_shdr, ptr %add.ptr46423, i32 0, i32 2
  %58 = ptrtoint ptr %sh_flags.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %sh_flags.i, align 4
  %59 = ptrtoint ptr %e_shstrndx2.sink.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %retval.0.i.i426 = load i16, ptr %e_shstrndx2.sink.i, align 2
  %add.ptr.i427 = getelementptr i8, ptr %call31, i32 %..i
  %conv.i317428 = zext i16 %retval.0.i.i426 to i32
  %mul.i429 = mul nuw nsw i32 %..i253, %conv.i317428
  %add.ptr3.i430 = getelementptr i8, ptr %add.ptr.i427, i32 %mul.i429
  %sh_offset.i.i = getelementptr inbounds %struct.elf32_shdr, ptr %add.ptr3.i430, i32 0, i32 4
  %60 = ptrtoint ptr %sh_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sh_offset.i.i, align 4
  br label %elf_shdr_get_sh_offset.exit.i

if.else.i.i:                                      ; preds = %elf_hdr_get_e_shoff.exit295
  call void @__sanitizer_cov_trace_pc() #12
  %conv57 = zext i32 %conv54 to i64
  %sh_offset3.i = getelementptr inbounds %struct.elf64_shdr, ptr %add.ptr46423, i32 0, i32 4
  %62 = ptrtoint ptr %sh_offset3.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %conv57, ptr %sh_offset3.i, align 8
  %conv58 = zext i32 %strtbl_size.0.lcssa to i64
  %sh_size3.i = getelementptr inbounds %struct.elf64_shdr, ptr %add.ptr46423, i32 0, i32 5
  %63 = ptrtoint ptr %sh_size3.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %conv58, ptr %sh_size3.i, align 8
  %sh_entsize4.i = getelementptr inbounds %struct.elf64_shdr, ptr %add.ptr46423, i32 0, i32 9
  %64 = ptrtoint ptr %sh_entsize4.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 0, ptr %sh_entsize4.i, align 8
  %sh_flags3.i = getelementptr inbounds %struct.elf64_shdr, ptr %add.ptr46423, i32 0, i32 2
  %65 = ptrtoint ptr %sh_flags3.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 0, ptr %sh_flags3.i, align 8
  %66 = ptrtoint ptr %e_shstrndx2.sink.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %retval.0.i.i = load i16, ptr %e_shstrndx2.sink.i, align 2
  %add.ptr.i = getelementptr i8, ptr %call31, i32 %..i
  %conv.i317 = zext i16 %retval.0.i.i to i32
  %mul.i = mul nuw nsw i32 %..i253, %conv.i317
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %sh_offset3.i.i = getelementptr inbounds %struct.elf64_shdr, ptr %add.ptr3.i, i32 0, i32 4
  %67 = ptrtoint ptr %sh_offset3.i.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %sh_offset3.i.i, align 8
  %extract.t38.i = trunc i64 %68 to i32
  br label %elf_shdr_get_sh_offset.exit.i

elf_shdr_get_sh_offset.exit.i:                    ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i37.off0.i = phi i32 [ %61, %if.then.i.i ], [ %extract.t38.i, %if.else.i.i ]
  %add.ptr5.i = getelementptr i8, ptr %call31, i32 %retval.0.i37.off0.i
  %tobool6.not.i = icmp eq ptr %add.ptr5.i, null
  br i1 %tobool6.not.i, label %elf_shdr_get_sh_offset.exit.i.elf_strtbl_add.exit_crit_edge, label %if.end.i

elf_shdr_get_sh_offset.exit.i.elf_strtbl_add.exit_crit_edge: ; preds = %elf_shdr_get_sh_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %elf_strtbl_add.exit

if.end.i:                                         ; preds = %elf_shdr_get_sh_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr8.i = getelementptr i8, ptr %add.ptr5.i, i32 1
  %69 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_storeN_noabort(i32 %69, i32 8)
  store i64 6004514772580715520, ptr %add.ptr8.i, align 1
  br label %elf_strtbl_add.exit

elf_strtbl_add.exit:                              ; preds = %if.end.i, %elf_shdr_get_sh_offset.exit.i.elf_strtbl_add.exit_crit_edge
  %strtbl_index.0 = phi i32 [ 1, %elf_shdr_get_sh_offset.exit.i.elf_strtbl_add.exit_crit_edge ], [ 9, %if.end.i ]
  %retval.0.i318 = phi i32 [ 0, %elf_shdr_get_sh_offset.exit.i.elf_strtbl_add.exit_crit_edge ], [ 1, %if.end.i ]
  br i1 %cmp.i251, label %if.then.i326, label %if.else.i328

if.then.i326:                                     ; preds = %elf_strtbl_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %add.ptr46423 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %retval.0.i318, ptr %add.ptr46423, align 4
  %sh_size.i324 = getelementptr inbounds %struct.elf32_shdr, ptr %add.ptr46423, i32 0, i32 5
  %71 = ptrtoint ptr %sh_size.i324 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %sh_size.i324, align 4
  br label %elf_shdr_get_sh_size.exit

if.else.i328:                                     ; preds = %elf_strtbl_add.exit
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %add.ptr46423 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %retval.0.i318, ptr %add.ptr46423, align 8
  %sh_size3.i327 = getelementptr inbounds %struct.elf64_shdr, ptr %add.ptr46423, i32 0, i32 5
  %74 = ptrtoint ptr %sh_size3.i327 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %sh_size3.i327, align 8
  %extract.t470 = trunc i64 %75 to i32
  br label %elf_shdr_get_sh_size.exit

elf_shdr_get_sh_size.exit:                        ; preds = %if.else.i328, %if.then.i326
  %retval.0.i329.off0 = phi i32 [ %72, %if.then.i326 ], [ %extract.t470, %if.else.i328 ]
  %76 = ptrtoint ptr %dump_segments to i32
  call void @__asan_load4_noabort(i32 %76)
  %segment.1481 = load ptr, ptr %dump_segments, align 4
  %cmp74.not482 = icmp eq ptr %segment.1481, %dump_segments
  br i1 %cmp74.not482, label %elf_shdr_get_sh_size.exit.for.end103_crit_edge, label %for.body77.lr.ph

elf_shdr_get_sh_size.exit.for.end103_crit_edge:   ; preds = %elf_shdr_get_sh_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end103

for.body77.lr.ph:                                 ; preds = %elf_shdr_get_sh_size.exit
  %conv63 = add i32 %retval.0.i329.off0, %conv54
  %77 = getelementptr i8, ptr %call31, i32 %..i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp85 = icmp eq i32 %4, 1
  %dev.i = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6
  br label %for.body77

for.body77:                                       ; preds = %elf_shdr_get_sh_size.exit414.for.body77_crit_edge, %for.body77.lr.ph
  %segment.1487 = phi ptr [ %segment.1481, %for.body77.lr.ph ], [ %segment.1, %elf_shdr_get_sh_size.exit414.for.body77_crit_edge ]
  %add.ptr46423.pn = phi ptr [ %add.ptr46423, %for.body77.lr.ph ], [ %shdr.0486, %elf_shdr_get_sh_size.exit414.for.body77_crit_edge ]
  %offset.0484 = phi i32 [ %conv63, %for.body77.lr.ph ], [ %conv94, %elf_shdr_get_sh_size.exit414.for.body77_crit_edge ]
  %strtbl_index.1483 = phi i32 [ %strtbl_index.0, %for.body77.lr.ph ], [ %strtbl_index.2, %elf_shdr_get_sh_size.exit414.for.body77_crit_edge ]
  %shdr.0486 = getelementptr i8, ptr %add.ptr46423.pn, i32 %..i253
  %78 = call ptr @memset(ptr %shdr.0486, i32 0, i32 %..i253)
  %sh_type2.i335 = getelementptr inbounds %struct.elf64_shdr, ptr %shdr.0486, i32 0, i32 1
  %79 = ptrtoint ptr %sh_type2.i335 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1, ptr %sh_type2.i335, align 4
  br i1 %cmp.i251, label %if.then.i.i382, label %if.else.i.i385

if.then.i.i382:                                   ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #12
  %sh_offset.i339 = getelementptr inbounds %struct.elf32_shdr, ptr %shdr.0486, i32 0, i32 4
  %80 = ptrtoint ptr %sh_offset.i339 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %offset.0484, ptr %sh_offset.i339, align 4
  %da434 = getelementptr inbounds %struct.rproc_dump_segment, ptr %segment.1487, i32 0, i32 1
  %81 = ptrtoint ptr %da434 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %da434, align 8
  %sh_addr.i = getelementptr inbounds %struct.elf32_shdr, ptr %shdr.0486, i32 0, i32 3
  %83 = ptrtoint ptr %sh_addr.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %sh_addr.i, align 4
  %size81439 = getelementptr inbounds %struct.rproc_dump_segment, ptr %segment.1487, i32 0, i32 2
  %84 = ptrtoint ptr %size81439 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %size81439, align 4
  %sh_size.i350 = getelementptr inbounds %struct.elf32_shdr, ptr %shdr.0486, i32 0, i32 5
  %86 = ptrtoint ptr %sh_size.i350 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %sh_size.i350, align 4
  %sh_entsize.i357 = getelementptr inbounds %struct.elf32_shdr, ptr %shdr.0486, i32 0, i32 9
  %87 = ptrtoint ptr %sh_entsize.i357 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %sh_entsize.i357, align 4
  %sh_flags.i364 = getelementptr inbounds %struct.elf32_shdr, ptr %shdr.0486, i32 0, i32 2
  %88 = ptrtoint ptr %sh_flags.i364 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 1, ptr %sh_flags.i364, align 4
  %89 = ptrtoint ptr %e_shstrndx2.sink.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %retval.0.i.i374460 = load i16, ptr %e_shstrndx2.sink.i, align 2
  %conv.i377461 = zext i16 %retval.0.i.i374460 to i32
  %mul.i379462 = mul nuw nsw i32 %..i253, %conv.i377461
  %add.ptr3.i380463 = getelementptr i8, ptr %77, i32 %mul.i379462
  %sh_offset.i.i381 = getelementptr inbounds %struct.elf32_shdr, ptr %add.ptr3.i380463, i32 0, i32 4
  %90 = ptrtoint ptr %sh_offset.i.i381 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %sh_offset.i.i381, align 4
  br label %elf_shdr_get_sh_offset.exit.i388

if.else.i.i385:                                   ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #12
  %conv79 = zext i32 %offset.0484 to i64
  %sh_offset3.i341 = getelementptr inbounds %struct.elf64_shdr, ptr %shdr.0486, i32 0, i32 4
  %92 = ptrtoint ptr %sh_offset3.i341 to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %conv79, ptr %sh_offset3.i341, align 8
  %da = getelementptr inbounds %struct.rproc_dump_segment, ptr %segment.1487, i32 0, i32 1
  %93 = ptrtoint ptr %da to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %da, align 8
  %conv80 = zext i32 %94 to i64
  %sh_addr3.i = getelementptr inbounds %struct.elf64_shdr, ptr %shdr.0486, i32 0, i32 3
  %95 = ptrtoint ptr %sh_addr3.i to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %conv80, ptr %sh_addr3.i, align 8
  %size81 = getelementptr inbounds %struct.rproc_dump_segment, ptr %segment.1487, i32 0, i32 2
  %96 = ptrtoint ptr %size81 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %size81, align 4
  %conv82 = zext i32 %97 to i64
  %sh_size3.i352 = getelementptr inbounds %struct.elf64_shdr, ptr %shdr.0486, i32 0, i32 5
  %98 = ptrtoint ptr %sh_size3.i352 to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %conv82, ptr %sh_size3.i352, align 8
  %sh_entsize4.i359 = getelementptr inbounds %struct.elf64_shdr, ptr %shdr.0486, i32 0, i32 9
  %99 = ptrtoint ptr %sh_entsize4.i359 to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 0, ptr %sh_entsize4.i359, align 8
  %sh_flags3.i366 = getelementptr inbounds %struct.elf64_shdr, ptr %shdr.0486, i32 0, i32 2
  %100 = ptrtoint ptr %sh_flags3.i366 to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 1, ptr %sh_flags3.i366, align 8
  %101 = ptrtoint ptr %e_shstrndx2.sink.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %retval.0.i.i374 = load i16, ptr %e_shstrndx2.sink.i, align 2
  %conv.i377 = zext i16 %retval.0.i.i374 to i32
  %mul.i379 = mul nuw nsw i32 %..i253, %conv.i377
  %add.ptr3.i380 = getelementptr i8, ptr %77, i32 %mul.i379
  %sh_offset3.i.i383 = getelementptr inbounds %struct.elf64_shdr, ptr %add.ptr3.i380, i32 0, i32 4
  %102 = ptrtoint ptr %sh_offset3.i.i383 to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %sh_offset3.i.i383, align 8
  %extract.t38.i384 = trunc i64 %103 to i32
  br label %elf_shdr_get_sh_offset.exit.i388

elf_shdr_get_sh_offset.exit.i388:                 ; preds = %if.else.i.i385, %if.then.i.i382
  %da436441449453466 = phi ptr [ %da434, %if.then.i.i382 ], [ %da, %if.else.i.i385 ]
  %size81443447455464 = phi ptr [ %size81439, %if.then.i.i382 ], [ %size81, %if.else.i.i385 ]
  %retval.0.i37.off0.i386 = phi i32 [ %91, %if.then.i.i382 ], [ %extract.t38.i384, %if.else.i.i385 ]
  %.in = getelementptr inbounds %struct.rproc_dump_segment, ptr %segment.1487, i32 0, i32 3
  %104 = ptrtoint ptr %.in to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %.in, align 8
  %add.ptr5.i387 = getelementptr i8, ptr %call31, i32 %retval.0.i37.off0.i386
  %tobool6.not.i389 = icmp eq ptr %add.ptr5.i387, null
  %tobool7.not.i = icmp eq ptr %105, null
  %or.cond.i = or i1 %tobool7.not.i, %tobool6.not.i389
  br i1 %or.cond.i, label %elf_shdr_get_sh_offset.exit.i388.elf_strtbl_add.exit397_crit_edge, label %if.end.i392

elf_shdr_get_sh_offset.exit.i388.elf_strtbl_add.exit397_crit_edge: ; preds = %elf_shdr_get_sh_offset.exit.i388
  call void @__sanitizer_cov_trace_pc() #12
  br label %elf_strtbl_add.exit397

if.end.i392:                                      ; preds = %elf_shdr_get_sh_offset.exit.i388
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr8.i390 = getelementptr i8, ptr %add.ptr5.i387, i32 %strtbl_index.1483
  %call9.i391 = call ptr @strcpy(ptr noundef %add.ptr8.i390, ptr noundef nonnull %105) #17
  %call10.i393 = call i32 @strlen(ptr noundef nonnull %105) #17
  %add.i394 = add i32 %strtbl_index.1483, 1
  %add11.i395 = add i32 %add.i394, %call10.i393
  br label %elf_strtbl_add.exit397

elf_strtbl_add.exit397:                           ; preds = %if.end.i392, %elf_shdr_get_sh_offset.exit.i388.elf_strtbl_add.exit397_crit_edge
  %strtbl_index.2 = phi i32 [ %strtbl_index.1483, %elf_shdr_get_sh_offset.exit.i388.elf_strtbl_add.exit397_crit_edge ], [ %add11.i395, %if.end.i392 ]
  %retval.0.i396 = phi i32 [ 0, %elf_shdr_get_sh_offset.exit.i388.elf_strtbl_add.exit397_crit_edge ], [ %strtbl_index.1483, %if.end.i392 ]
  br i1 %cmp.i251, label %if.then.i399, label %if.else.i400

if.then.i399:                                     ; preds = %elf_strtbl_add.exit397
  call void @__sanitizer_cov_trace_pc() #12
  %106 = ptrtoint ptr %shdr.0486 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %retval.0.i396, ptr %shdr.0486, align 4
  br label %elf_shdr_set_sh_name.exit402

if.else.i400:                                     ; preds = %elf_strtbl_add.exit397
  call void @__sanitizer_cov_trace_pc() #12
  %107 = ptrtoint ptr %shdr.0486 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %retval.0.i396, ptr %shdr.0486, align 8
  br label %elf_shdr_set_sh_name.exit402

elf_shdr_set_sh_name.exit402:                     ; preds = %if.else.i400, %if.then.i399
  br i1 %cmp85, label %if.then87, label %elf_shdr_set_sh_name.exit402.if.end90_crit_edge

elf_shdr_set_sh_name.exit402.if.end90_crit_edge:  ; preds = %elf_shdr_set_sh_name.exit402
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end90

if.then87:                                        ; preds = %elf_shdr_set_sh_name.exit402
  %add.ptr88 = getelementptr i8, ptr %call31, i32 %offset.0484
  %108 = ptrtoint ptr %size81443447455464 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %size81443447455464, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %is_iomem.i) #10
  %110 = ptrtoint ptr %is_iomem.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %is_iomem.i, align 1
  %dump.i = getelementptr inbounds %struct.rproc_dump_segment, ptr %segment.1487, i32 0, i32 4
  %111 = ptrtoint ptr %dump.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dump.i, align 4
  %tobool.not.i = icmp eq ptr %112, null
  br i1 %tobool.not.i, label %if.else.i405, label %if.then.i403

if.then.i403:                                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #12
  call void %112(ptr noundef %rproc, ptr noundef %segment.1487, ptr noundef %add.ptr88, i32 noundef 0, i32 noundef %109) #10
  br label %rproc_copy_segment.exit

if.else.i405:                                     ; preds = %if.then87
  %113 = ptrtoint ptr %da436441449453466 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %da436441449453466, align 8
  %conv.i404 = zext i32 %114 to i64
  %call.i = call ptr @rproc_da_to_va(ptr noundef %rproc, i64 noundef %conv.i404, i32 noundef %109, ptr noundef nonnull %is_iomem.i) #10
  %tobool2.not.i = icmp eq ptr %call.i, null
  br i1 %tobool2.not.i, label %do.end.i, label %if.else5.i

do.end.i:                                         ; preds = %if.else.i405
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.8, ptr noundef %da436441449453466, i32 noundef 0, i32 noundef %109) #14
  %115 = call ptr @memset(ptr %add.ptr88, i32 255, i32 %109)
  br label %rproc_copy_segment.exit

if.else5.i:                                       ; preds = %if.else.i405
  %116 = ptrtoint ptr %is_iomem.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %is_iomem.i, align 1, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool6.not.i406 = icmp eq i8 %117, 0
  br i1 %tobool6.not.i406, label %if.else8.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @mmiocpy(ptr noundef %add.ptr88, ptr noundef nonnull %call.i, i32 noundef %109) #10
  br label %rproc_copy_segment.exit

if.else8.i:                                       ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #12
  %118 = call ptr @memcpy(ptr %add.ptr88, ptr %call.i, i32 %109)
  br label %rproc_copy_segment.exit

rproc_copy_segment.exit:                          ; preds = %if.else8.i, %if.then7.i, %do.end.i, %if.then.i403
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %is_iomem.i) #10
  br label %if.end90

if.end90:                                         ; preds = %rproc_copy_segment.exit, %elf_shdr_set_sh_name.exit402.if.end90_crit_edge
  br i1 %cmp.i251, label %if.then.i410, label %if.else.i412

if.then.i410:                                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  %sh_size.i408 = getelementptr inbounds %struct.elf32_shdr, ptr %shdr.0486, i32 0, i32 5
  %119 = ptrtoint ptr %sh_size.i408 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %sh_size.i408, align 4
  br label %elf_shdr_get_sh_size.exit414

if.else.i412:                                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  %sh_size3.i411 = getelementptr inbounds %struct.elf64_shdr, ptr %shdr.0486, i32 0, i32 5
  %121 = ptrtoint ptr %sh_size3.i411 to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %sh_size3.i411, align 8
  %extract.t471 = trunc i64 %122 to i32
  br label %elf_shdr_get_sh_size.exit414

elf_shdr_get_sh_size.exit414:                     ; preds = %if.else.i412, %if.then.i410
  %retval.0.i413.off0 = phi i32 [ %120, %if.then.i410 ], [ %extract.t471, %if.else.i412 ]
  %conv94 = add i32 %retval.0.i413.off0, %offset.0484
  %123 = ptrtoint ptr %segment.1487 to i32
  call void @__asan_load4_noabort(i32 %123)
  %segment.1 = load ptr, ptr %segment.1487, align 4
  %cmp74.not = icmp eq ptr %segment.1, %dump_segments
  br i1 %cmp74.not, label %elf_shdr_get_sh_size.exit414.for.end103_crit_edge, label %elf_shdr_get_sh_size.exit414.for.body77_crit_edge

elf_shdr_get_sh_size.exit414.for.body77_crit_edge: ; preds = %elf_shdr_get_sh_size.exit414
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body77

elf_shdr_get_sh_size.exit414.for.end103_crit_edge: ; preds = %elf_shdr_get_sh_size.exit414
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end103

for.end103:                                       ; preds = %elf_shdr_get_sh_size.exit414.for.end103_crit_edge, %elf_shdr_get_sh_size.exit.for.end103_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp104 = icmp eq i32 %4, 1
  br i1 %cmp104, label %if.then106, label %if.end108

if.then106:                                       ; preds = %for.end103
  call void @__sanitizer_cov_trace_pc() #12
  %dev107 = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6
  call void @dev_coredumpv(ptr noundef %dev107, ptr noundef %call31, i32 noundef %add30, i32 noundef 3264) #10
  br label %cleanup

if.end108:                                        ; preds = %for.end103
  call void @__sanitizer_cov_trace_pc() #12
  %124 = ptrtoint ptr %dump_state to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %rproc, ptr %dump_state, align 4
  %header = getelementptr inbounds %struct.rproc_coredump_state, ptr %dump_state, i32 0, i32 1
  %125 = ptrtoint ptr %header to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call31, ptr %header, align 4
  %dump_done = getelementptr inbounds %struct.rproc_coredump_state, ptr %dump_state, i32 0, i32 2
  %126 = ptrtoint ptr %dump_done to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %dump_done, align 4
  %wait.i = getelementptr inbounds %struct.rproc_coredump_state, ptr %dump_state, i32 0, i32 2, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_completion.__key) #10
  %dev110 = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6
  call void @dev_coredumpm(ptr noundef %dev110, ptr noundef null, ptr noundef nonnull %dump_state, i32 noundef %add30, i32 noundef 3264, ptr noundef nonnull @rproc_coredump_read, ptr noundef nonnull @rproc_coredump_free) #10
  call void @wait_for_completion(ptr noundef %dump_done) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end108, %if.then106, %for.end.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %dump_state) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rproc_da_to_va(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memory_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nobuiltin }
attributes #17 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !18, !19, !20, !22, !24, !26, !27, !28, !29, !31, !32, !34, !35, !36, !37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__ksymtab_rproc_coredump_add_segment, !1, !"__ksymtab_rproc_coredump_add_segment", i1 false, i1 false}
!1 = !{!"../drivers/remoteproc/remoteproc_coredump.c", i32 62, i32 1}
!2 = !{ptr @__ksymtab_rproc_coredump_add_custom_segment, !3, !"__ksymtab_rproc_coredump_add_custom_segment", i1 false, i1 false}
!3 = !{!"../drivers/remoteproc/remoteproc_coredump.c", i32 101, i32 1}
!4 = !{ptr @__ksymtab_rproc_coredump_set_elf_info, !5, !"__ksymtab_rproc_coredump_set_elf_info", i1 false, i1 false}
!5 = !{!"../drivers/remoteproc/remoteproc_coredump.c", i32 123, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/remoteproc/remoteproc_coredump.c", i32 252, i32 3}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @rproc_coredump._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @rproc_coredump._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = distinct !{null, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/remoteproc/remoteproc_coredump.c", i32 357, i32 18}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/remoteproc/remoteproc_coredump.c", i32 364, i32 3}
!18 = !{ptr @rproc_coredump_using_sections._entry, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @rproc_coredump_using_sections._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @__ksymtab_rproc_coredump_using_sections, !21, !"__ksymtab_rproc_coredump_using_sections", i1 false, i1 false}
!21 = !{!"../drivers/remoteproc/remoteproc_coredump.c", i32 469, i32 1}
!22 = distinct !{null, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/remoteproc/remoteproc_elf_helpers.h", i32 32, i32 23}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/remoteproc/remoteproc_coredump.c", i32 163, i32 4}
!26 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @rproc_copy_segment._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @rproc_copy_segment._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @init_completion.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../include/linux/completion.h", i32 87, i32 2}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/remoteproc/remoteproc_coredump.c", i32 204, i32 4}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @rproc_coredump_read._entry, !33, !"_entry", i1 false, i1 false}
!37 = !{ptr @rproc_coredump_read._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i8 0, i8 2}
