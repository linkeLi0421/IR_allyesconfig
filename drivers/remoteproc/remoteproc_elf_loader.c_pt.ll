; ModuleID = '/llk/IR_all_yes/drivers/remoteproc/remoteproc_elf_loader.c_pt.bc'
source_filename = "../drivers/remoteproc/remoteproc_elf_loader.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rproc_elf_sanity_check\22, \22a\22\09"
module asm "\09.weak\09__crc_rproc_elf_sanity_check\09\09\09\09"
module asm "\09.long\09__crc_rproc_elf_sanity_check\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rproc_elf_sanity_check:\09\09\09\09\09"
module asm "\09.asciz \09\22rproc_elf_sanity_check\22\09\09\09\09\09"
module asm "__kstrtabns_rproc_elf_sanity_check:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rproc_elf_get_boot_addr\22, \22a\22\09"
module asm "\09.weak\09__crc_rproc_elf_get_boot_addr\09\09\09\09"
module asm "\09.long\09__crc_rproc_elf_get_boot_addr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rproc_elf_get_boot_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22rproc_elf_get_boot_addr\22\09\09\09\09\09"
module asm "__kstrtabns_rproc_elf_get_boot_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rproc_elf_load_segments\22, \22a\22\09"
module asm "\09.weak\09__crc_rproc_elf_load_segments\09\09\09\09"
module asm "\09.long\09__crc_rproc_elf_load_segments\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rproc_elf_load_segments:\09\09\09\09\09"
module asm "\09.asciz \09\22rproc_elf_load_segments\22\09\09\09\09\09"
module asm "__kstrtabns_rproc_elf_load_segments:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rproc_elf_load_rsc_table\22, \22a\22\09"
module asm "\09.weak\09__crc_rproc_elf_load_rsc_table\09\09\09\09"
module asm "\09.long\09__crc_rproc_elf_load_rsc_table\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rproc_elf_load_rsc_table:\09\09\09\09\09"
module asm "\09.asciz \09\22rproc_elf_load_rsc_table\22\09\09\09\09\09"
module asm "__kstrtabns_rproc_elf_load_rsc_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rproc_elf_find_loaded_rsc_table\22, \22a\22\09"
module asm "\09.weak\09__crc_rproc_elf_find_loaded_rsc_table\09\09\09\09"
module asm "\09.long\09__crc_rproc_elf_find_loaded_rsc_table\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rproc_elf_find_loaded_rsc_table:\09\09\09\09\09"
module asm "\09.asciz \09\22rproc_elf_find_loaded_rsc_table\22\09\09\09\09\09"
module asm "__kstrtabns_rproc_elf_find_loaded_rsc_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rproc = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.device, %struct.atomic_t, i32, i32, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, %struct.list_head, i64, %struct.list_head, %struct.list_head, %struct.idr, i32, %struct.work_struct, i32, i8, i32, ptr, ptr, ptr, i32, i8, i8, %struct.list_head, i32, i8, i16, %struct.cdev, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.elf64_hdr = type { [16 x i8], i16, i16, i32, i64, i64, i64, i32, i16, i16, i16, i16, i16, i16 }
%struct.elf32_hdr = type { [16 x i8], i16, i16, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.elf32_phdr = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.elf64_phdr = type { i32, i32, i64, i64, i64, i64, i64, i64 }
%struct.elf32_shdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.elf64_shdr = type { i32, i32, i64, i64, i64, i64, i32, i32, i64, i64 }
%struct.resource_table = type { i32, i32, [2 x i32], [0 x i32] }

@rproc_elf_sanity_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 53, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to load %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rproc_elf_sanity_check\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/remoteproc/remoteproc_elf_loader.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rproc_elf_sanity_check._entry_ptr = internal global ptr @rproc_elf_sanity_check._entry, section ".printk_index", align 4
@rproc_elf_sanity_check._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 58, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Image is too small\0A\00", [44 x i8] zeroinitializer }, align 32
@rproc_elf_sanity_check._entry_ptr.7 = internal global ptr @rproc_elf_sanity_check._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\7FELF\00", [27 x i8] zeroinitializer }, align 32
@rproc_elf_sanity_check._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 65, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Image is corrupted (bad magic)\0A\00", [32 x i8] zeroinitializer }, align 32
@rproc_elf_sanity_check._entry_ptr.11 = internal global ptr @rproc_elf_sanity_check._entry.9, section ".printk_index", align 4
@rproc_elf_sanity_check._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 71, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unsupported class: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@rproc_elf_sanity_check._entry_ptr.14 = internal global ptr @rproc_elf_sanity_check._entry.12, section ".printk_index", align 4
@rproc_elf_sanity_check._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 76, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"elf64 header is too small\0A\00", [37 x i8] zeroinitializer }, align 32
@rproc_elf_sanity_check._entry_ptr.17 = internal global ptr @rproc_elf_sanity_check._entry.15, section ".printk_index", align 4
@rproc_elf_sanity_check._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 86, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unsupported firmware endianness\0A\00", [63 x i8] zeroinitializer }, align 32
@rproc_elf_sanity_check._entry_ptr.20 = internal global ptr @rproc_elf_sanity_check._entry.18, section ".printk_index", align 4
@rproc_elf_sanity_check._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 96, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rproc_elf_sanity_check._entry_ptr.22 = internal global ptr @rproc_elf_sanity_check._entry.21, section ".printk_index", align 4
@rproc_elf_sanity_check._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.1, ptr @.str.2, i32 101, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"No loadable segments\0A\00", [42 x i8] zeroinitializer }, align 32
@rproc_elf_sanity_check._entry_ptr.25 = internal global ptr @rproc_elf_sanity_check._entry.23, section ".printk_index", align 4
@rproc_elf_sanity_check._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.1, ptr @.str.2, i32 106, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Firmware size is too small\0A\00", [36 x i8] zeroinitializer }, align 32
@rproc_elf_sanity_check._entry_ptr.28 = internal global ptr @rproc_elf_sanity_check._entry.26, section ".printk_index", align 4
@rproc_elf_sanity_check.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.1, ptr @.str.2, ptr @.str.30, i8 0, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"remoteproc\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Firmware is an elf%d file\0A\00", [37 x i8] zeroinitializer }, align 32
@__kstrtab_rproc_elf_sanity_check = external dso_local constant [0 x i8], align 1
@__kstrtabns_rproc_elf_sanity_check = external dso_local constant [0 x i8], align 1
@__ksymtab_rproc_elf_sanity_check = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rproc_elf_sanity_check to i32), ptr @__kstrtab_rproc_elf_sanity_check, ptr @__kstrtabns_rproc_elf_sanity_check }, section "___ksymtab+rproc_elf_sanity_check", align 4
@__kstrtab_rproc_elf_get_boot_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_rproc_elf_get_boot_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_rproc_elf_get_boot_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rproc_elf_get_boot_addr to i32), ptr @__kstrtab_rproc_elf_get_boot_addr, ptr @__kstrtabns_rproc_elf_get_boot_addr }, section "___ksymtab+rproc_elf_get_boot_addr", align 4
@rproc_elf_load_segments.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 0, i8 47, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rproc_elf_load_segments\00", [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"phdr: type %d da 0x%llx memsz 0x%llx filesz 0x%llx\0A\00", [44 x i8] zeroinitializer }, align 32
@rproc_elf_load_segments._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 192, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"bad phdr filesz 0x%llx memsz 0x%llx\0A\00", [59 x i8] zeroinitializer }, align 32
@rproc_elf_load_segments._entry_ptr = internal global ptr @rproc_elf_load_segments._entry, section ".printk_index", align 4
@rproc_elf_load_segments._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.31, ptr @.str.2, i32 199, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"truncated fw: need 0x%llx avail 0x%zx\0A\00", [57 x i8] zeroinitializer }, align 32
@rproc_elf_load_segments._entry_ptr.36 = internal global ptr @rproc_elf_load_segments._entry.34, section ".printk_index", align 4
@rproc_elf_load_segments._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.31, ptr @.str.2, i32 206, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"size (%llx) does not fit in size_t type\0A\00", [55 x i8] zeroinitializer }, align 32
@rproc_elf_load_segments._entry_ptr.39 = internal global ptr @rproc_elf_load_segments._entry.37, section ".printk_index", align 4
@rproc_elf_load_segments._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.31, ptr @.str.2, i32 215, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bad phdr da 0x%llx mem 0x%llx\0A\00", [33 x i8] zeroinitializer }, align 32
@rproc_elf_load_segments._entry_ptr.42 = internal global ptr @rproc_elf_load_segments._entry.40, section ".printk_index", align 4
@__kstrtab_rproc_elf_load_segments = external dso_local constant [0 x i8], align 1
@__kstrtabns_rproc_elf_load_segments = external dso_local constant [0 x i8], align 1
@__ksymtab_rproc_elf_load_segments = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rproc_elf_load_segments to i32), ptr @__kstrtab_rproc_elf_load_segments, ptr @__kstrtabns_rproc_elf_load_segments }, section "___ksymtab+rproc_elf_load_segments", align 4
@__kstrtab_rproc_elf_load_rsc_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_rproc_elf_load_rsc_table = external dso_local constant [0 x i8], align 1
@__ksymtab_rproc_elf_load_rsc_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rproc_elf_load_rsc_table to i32), ptr @__kstrtab_rproc_elf_load_rsc_table, ptr @__kstrtabns_rproc_elf_load_rsc_table }, section "___ksymtab+rproc_elf_load_rsc_table", align 4
@rproc_elf_find_loaded_rsc_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.43, ptr @.str.2, i32 389, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rproc_elf_find_loaded_rsc_table\00", [32 x i8] zeroinitializer }, align 32
@rproc_elf_find_loaded_rsc_table._entry_ptr = internal global ptr @rproc_elf_find_loaded_rsc_table._entry, section ".printk_index", align 4
@__kstrtab_rproc_elf_find_loaded_rsc_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_rproc_elf_find_loaded_rsc_table = external dso_local constant [0 x i8], align 1
@__ksymtab_rproc_elf_find_loaded_rsc_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rproc_elf_find_loaded_rsc_table to i32), ptr @__kstrtab_rproc_elf_find_loaded_rsc_table, ptr @__kstrtabns_rproc_elf_find_loaded_rsc_table }, section "___ksymtab+rproc_elf_find_loaded_rsc_table", align 4
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c".resource_table\00", [16 x i8] zeroinitializer }, align 32
@find_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 282, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"resource table truncated\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"find_table\00", [21 x i8] zeroinitializer }, align 32
@find_table._entry_ptr = internal global ptr @find_table._entry, section ".printk_index", align 4
@find_table._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.2, i32 288, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"header-less resource table\0A\00", [36 x i8] zeroinitializer }, align 32
@find_table._entry_ptr.49 = internal global ptr @find_table._entry.47, section ".printk_index", align 4
@find_table._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.2, i32 294, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unsupported fw ver: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@find_table._entry_ptr.52 = internal global ptr @find_table._entry.50, section ".printk_index", align 4
@find_table._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.46, ptr @.str.2, i32 300, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"non zero reserved bytes\0A\00", [39 x i8] zeroinitializer }, align 32
@find_table._entry_ptr.55 = internal global ptr @find_table._entry.53, section ".printk_index", align 4
@find_table._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.46, ptr @.str.2, i32 306, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"resource table incomplete\0A\00", [37 x i8] zeroinitializer }, align 32
@find_table._entry_ptr.58 = internal global ptr @find_table._entry.56, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 53, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 58, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 64, i32 28 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 65, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 71, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 76, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 86, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 96, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 101, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 106, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 110, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 187, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 191, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 198, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 205, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 214, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 388, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 275, i32 33 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 282, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 288, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 294, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 300, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.201 = private constant [46 x i8] c"../drivers/remoteproc/remoteproc_elf_loader.c\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 306, i32 4 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @__ksymtab_rproc_elf_find_loaded_rsc_table, ptr @__ksymtab_rproc_elf_get_boot_addr, ptr @__ksymtab_rproc_elf_load_rsc_table, ptr @__ksymtab_rproc_elf_load_segments, ptr @__ksymtab_rproc_elf_sanity_check, ptr @find_table._entry, ptr @find_table._entry.47, ptr @find_table._entry.50, ptr @find_table._entry.53, ptr @find_table._entry.56, ptr @find_table._entry_ptr, ptr @find_table._entry_ptr.49, ptr @find_table._entry_ptr.52, ptr @find_table._entry_ptr.55, ptr @find_table._entry_ptr.58, ptr @rproc_elf_find_loaded_rsc_table._entry, ptr @rproc_elf_find_loaded_rsc_table._entry_ptr, ptr @rproc_elf_load_segments._entry, ptr @rproc_elf_load_segments._entry.34, ptr @rproc_elf_load_segments._entry.37, ptr @rproc_elf_load_segments._entry.40, ptr @rproc_elf_load_segments._entry_ptr, ptr @rproc_elf_load_segments._entry_ptr.36, ptr @rproc_elf_load_segments._entry_ptr.39, ptr @rproc_elf_load_segments._entry_ptr.42, ptr @rproc_elf_sanity_check._entry, ptr @rproc_elf_sanity_check._entry.12, ptr @rproc_elf_sanity_check._entry.15, ptr @rproc_elf_sanity_check._entry.18, ptr @rproc_elf_sanity_check._entry.21, ptr @rproc_elf_sanity_check._entry.23, ptr @rproc_elf_sanity_check._entry.26, ptr @rproc_elf_sanity_check._entry.5, ptr @rproc_elf_sanity_check._entry.9, ptr @rproc_elf_sanity_check._entry_ptr, ptr @rproc_elf_sanity_check._entry_ptr.11, ptr @rproc_elf_sanity_check._entry_ptr.14, ptr @rproc_elf_sanity_check._entry_ptr.17, ptr @rproc_elf_sanity_check._entry_ptr.20, ptr @rproc_elf_sanity_check._entry_ptr.22, ptr @rproc_elf_sanity_check._entry_ptr.25, ptr @rproc_elf_sanity_check._entry_ptr.28, ptr @rproc_elf_sanity_check._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rproc_elf_sanity_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rproc_elf_sanity_check._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rproc_elf_sanity_check._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rproc_elf_sanity_check._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rproc_elf_sanity_check._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rproc_elf_sanity_check._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rproc_elf_sanity_check._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rproc_elf_sanity_check._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rproc_elf_sanity_check._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rproc_elf_load_segments._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rproc_elf_load_segments._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rproc_elf_load_segments._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rproc_elf_load_segments._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rproc_elf_find_loaded_rsc_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_table._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_table._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_table._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_table._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rproc_elf_sanity_check(ptr noundef %rproc, ptr noundef readonly %fw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6
  %tobool.not = icmp eq ptr %fw, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %firmware = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 3
  %0 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %firmware, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str, ptr noundef %1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %3)
  %cmp = icmp ult i32 %3, 52
  br i1 %cmp, label %do.end5, label %if.end6

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.6) #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %5, ptr noundef nonnull dereferenceable(4) @.str.8, i32 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool7.not = icmp eq i32 %bcmp, 0
  br i1 %tobool7.not, label %if.end12, label %do.end11

do.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #11
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %arrayidx = getelementptr [16 x i8], ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 4
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %7, label %do.end22 [
    i8 2, label %land.lhs.true28
    i8 1, label %if.end36
  ]

do.end22:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %conv) #11
  br label %cleanup

land.lhs.true28:                                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %3)
  %cmp30 = icmp ult i32 %3, 64
  br i1 %cmp30, label %do.end35, label %if.end36.thread

do.end35:                                         ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #11
  br label %cleanup

if.end36:                                         ; preds = %if.end12
  %arrayidx38 = getelementptr [16 x i8], ptr %5, i32 0, i32 5
  %9 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx38, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp40.not = icmp eq i8 %10, 2
  br i1 %cmp40.not, label %17, label %if.end36.do.end45_crit_edge

if.end36.do.end45_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end45

if.end36.thread:                                  ; preds = %land.lhs.true28
  %arrayidx38137 = getelementptr [16 x i8], ptr %5, i32 0, i32 5
  %11 = ptrtoint ptr %arrayidx38137 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx38137, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %cmp40.not138 = icmp eq i8 %12, 2
  br i1 %cmp40.not138, label %elf_hdr_get_e_shoff.exit, label %if.end36.thread.do.end45_crit_edge

if.end36.thread.do.end45_crit_edge:               ; preds = %if.end36.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end45

do.end45:                                         ; preds = %if.end36.thread.do.end45_crit_edge, %if.end36.do.end45_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #11
  br label %cleanup

elf_hdr_get_e_shoff.exit:                         ; preds = %if.end36.thread
  call void @__sanitizer_cov_trace_pc() #10
  %.in = getelementptr inbounds %struct.elf64_hdr, ptr %5, i32 0, i32 5
  %13 = ptrtoint ptr %.in to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %.in, align 8
  %e_shoff3.i = getelementptr inbounds %struct.elf64_hdr, ptr %5, i32 0, i32 6
  %15 = ptrtoint ptr %e_shoff3.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %e_shoff3.i, align 8
  br label %22

17:                                               ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %e_phoff.i = getelementptr inbounds %struct.elf32_hdr, ptr %5, i32 0, i32 5
  %18 = ptrtoint ptr %e_phoff.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %e_phoff.i, align 4
  %conv2.i = zext i32 %19 to i64
  %e_shoff.i = getelementptr inbounds %struct.elf32_hdr, ptr %5, i32 0, i32 6
  %20 = ptrtoint ptr %e_shoff.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %e_shoff.i, align 4
  %conv2.i130 = zext i32 %21 to i64
  br label %22

22:                                               ; preds = %17, %elf_hdr_get_e_shoff.exit
  %retval.0.i133161 = phi i64 [ %conv2.i130, %17 ], [ %16, %elf_hdr_get_e_shoff.exit ]
  %cmp.i140144159 = phi i1 [ true, %17 ], [ false, %elf_hdr_get_e_shoff.exit ]
  %retval.0.i128146157 = phi i64 [ %conv2.i, %17 ], [ %14, %elf_hdr_get_e_shoff.exit ]
  %23 = phi i64 [ 40, %17 ], [ 64, %elf_hdr_get_e_shoff.exit ]
  %conv55 = zext i32 %3 to i64
  %add = add i64 %retval.0.i133161, %23
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv55)
  %cmp57 = icmp ugt i64 %add, %conv55
  br i1 %cmp57, label %do.end62, label %if.end63

do.end62:                                         ; preds = %22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.6) #11
  br label %cleanup

if.end63:                                         ; preds = %22
  %e_phnum.i = getelementptr inbounds %struct.elf32_hdr, ptr %5, i32 0, i32 10
  %e_phnum2.i = getelementptr inbounds %struct.elf64_hdr, ptr %5, i32 0, i32 10
  %retval.0.in.i = select i1 %cmp.i140144159, ptr %e_phnum.i, ptr %e_phnum2.i
  %24 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %retval.0.i135 = load i16, ptr %retval.0.in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %retval.0.i135)
  %cmp65 = icmp eq i16 %retval.0.i135, 0
  br i1 %cmp65, label %do.end70, label %if.end71

do.end70:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24) #11
  br label %cleanup

if.end71:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i128146157, i64 %conv55)
  %cmp74 = icmp ugt i64 %retval.0.i128146157, %conv55
  br i1 %cmp74, label %do.end79, label %do.body81

do.end79:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27) #11
  br label %cleanup

do.body81:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rproc_elf_sanity_check.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rproc_elf_sanity_check, %if.then86)) #8
          to label %cleanup [label %if.then86], !srcloc !111

if.then86:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #10
  %cond = select i1 %cmp.i140144159, i32 32, i32 64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rproc_elf_sanity_check.__UNIQUE_ID_ddebug227, ptr noundef %dev1, ptr noundef nonnull @.str.30, i32 noundef %cond) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then86, %do.body81, %do.end79, %do.end70, %do.end62, %do.end45, %do.end35, %do.end22, %do.end11, %do.end5, %do.end
  %retval.0 = phi i32 [ -22, %do.end5 ], [ -22, %do.end11 ], [ -22, %do.end22 ], [ -22, %do.end35 ], [ -22, %do.end45 ], [ -22, %do.end62 ], [ -22, %do.end70 ], [ -22, %do.end79 ], [ -22, %do.end ], [ 0, %if.then86 ], [ 0, %do.body81 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @rproc_elf_get_boot_addr(ptr nocapture readnone %rproc, ptr nocapture noundef readonly %fw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %arrayidx.i = getelementptr [16 x i8], ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.i = icmp eq i8 %3, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %e_entry.i = getelementptr inbounds %struct.elf32_hdr, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %e_entry.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %e_entry.i, align 4
  %conv2.i = zext i32 %5 to i64
  br label %elf_hdr_get_e_entry.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %e_entry3.i = getelementptr inbounds %struct.elf64_hdr, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %e_entry3.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %e_entry3.i, align 8
  br label %elf_hdr_get_e_entry.exit

elf_hdr_get_e_entry.exit:                         ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i64 [ %conv2.i, %if.then.i ], [ %7, %if.else.i ]
  ret i64 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rproc_elf_load_segments(ptr noundef %rproc, ptr nocapture noundef readonly %fw) #0 align 64 {
entry:
  %is_iomem = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %arrayidx.i = getelementptr [16 x i8], ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.i = icmp eq i8 %3, 1
  %..i = select i1 %cmp.i, i32 32, i32 56
  %e_phnum.i = getelementptr inbounds %struct.elf32_hdr, ptr %1, i32 0, i32 10
  %e_phnum2.i = getelementptr inbounds %struct.elf64_hdr, ptr %1, i32 0, i32 10
  %retval.0.in.i = select i1 %cmp.i, ptr %e_phnum.i, ptr %e_phnum2.i
  %4 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %retval.0.i149 = load i16, ptr %retval.0.in.i, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %e_phoff.i = getelementptr inbounds %struct.elf32_hdr, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %e_phoff.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %e_phoff.i, align 4
  br label %elf_hdr_get_e_phoff.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %e_phoff3.i = getelementptr inbounds %struct.elf64_hdr, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %e_phoff3.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %e_phoff3.i, align 8
  %extract.t197 = trunc i64 %8 to i32
  br label %elf_hdr_get_e_phoff.exit

elf_hdr_get_e_phoff.exit:                         ; preds = %if.else.i, %if.then.i
  %retval.0.i151.off0 = phi i32 [ %6, %if.then.i ], [ %extract.t197, %if.else.i ]
  %conv = zext i16 %retval.0.i149 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %retval.0.i149)
  %cmp211.not = icmp eq i16 %retval.0.i149, 0
  br i1 %cmp211.not, label %elf_hdr_get_e_phoff.exit.for.end_crit_edge, label %for.body.preheader

elf_hdr_get_e_phoff.exit.for.end_crit_edge:       ; preds = %elf_hdr_get_e_phoff.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.preheader:                               ; preds = %elf_hdr_get_e_phoff.exit
  %add.ptr = getelementptr i8, ptr %1, i32 %retval.0.i151.off0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %phdr.0213 = phi ptr [ %add.ptr82, %for.inc.for.body_crit_edge ], [ %add.ptr, %for.body.preheader ]
  %i.0212 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  br i1 %cmp.i, label %if.then.i169, label %if.else.i170

if.then.i169:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %p_paddr.i = getelementptr inbounds %struct.elf32_phdr, ptr %phdr.0213, i32 0, i32 3
  %9 = ptrtoint ptr %p_paddr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %p_paddr.i, align 4
  %conv2.i153 = zext i32 %10 to i64
  %p_memsz.i = getelementptr inbounds %struct.elf32_phdr, ptr %phdr.0213, i32 0, i32 5
  %11 = ptrtoint ptr %p_memsz.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %p_memsz.i, align 4
  %conv2.i158 = zext i32 %12 to i64
  %p_filesz.i = getelementptr inbounds %struct.elf32_phdr, ptr %phdr.0213, i32 0, i32 4
  %13 = ptrtoint ptr %p_filesz.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %p_filesz.i, align 4
  %conv2.i163 = zext i32 %14 to i64
  %p_offset.i = getelementptr inbounds %struct.elf32_phdr, ptr %phdr.0213, i32 0, i32 1
  %15 = ptrtoint ptr %p_offset.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %p_offset.i, align 4
  %conv2.i168 = zext i32 %16 to i64
  br label %elf_phdr_get_p_offset.exit

if.else.i170:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %p_paddr3.i = getelementptr inbounds %struct.elf64_phdr, ptr %phdr.0213, i32 0, i32 4
  %17 = ptrtoint ptr %p_paddr3.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %p_paddr3.i, align 8
  %p_memsz3.i = getelementptr inbounds %struct.elf64_phdr, ptr %phdr.0213, i32 0, i32 6
  %19 = ptrtoint ptr %p_memsz3.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %p_memsz3.i, align 8
  %p_filesz3.i = getelementptr inbounds %struct.elf64_phdr, ptr %phdr.0213, i32 0, i32 5
  %21 = ptrtoint ptr %p_filesz3.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %p_filesz3.i, align 8
  %p_offset3.i = getelementptr inbounds %struct.elf64_phdr, ptr %phdr.0213, i32 0, i32 2
  %23 = ptrtoint ptr %p_offset3.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %p_offset3.i, align 8
  br label %elf_phdr_get_p_offset.exit

elf_phdr_get_p_offset.exit:                       ; preds = %if.else.i170, %if.then.i169
  %retval.0.i166190 = phi i64 [ %conv2.i163, %if.then.i169 ], [ %22, %if.else.i170 ]
  %retval.0.i156175179188 = phi i64 [ %conv2.i153, %if.then.i169 ], [ %18, %if.else.i170 ]
  %retval.0.i161181186 = phi i64 [ %conv2.i158, %if.then.i169 ], [ %20, %if.else.i170 ]
  %retval.0.i171 = phi i64 [ %conv2.i168, %if.then.i169 ], [ %24, %if.else.i170 ]
  %25 = ptrtoint ptr %phdr.0213 to i32
  call void @__asan_load4_noabort(i32 %25)
  %retval.0.i172 = load i32, ptr %phdr.0213, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %is_iomem) #8
  %26 = ptrtoint ptr %is_iomem to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %is_iomem, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i172)
  %cmp11.not = icmp eq i32 %retval.0.i172, 1
  br i1 %cmp11.not, label %do.body, label %elf_phdr_get_p_offset.exit.for.inc_crit_edge

elf_phdr_get_p_offset.exit.for.inc_crit_edge:     ; preds = %elf_phdr_get_p_offset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.body:                                          ; preds = %elf_phdr_get_p_offset.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rproc_elf_load_segments.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rproc_elf_load_segments, %if.then16)) #8
          to label %do.end [label %if.then16], !srcloc !111

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rproc_elf_load_segments.__UNIQUE_ID_ddebug228, ptr noundef %dev1, ptr noundef nonnull @.str.32, i32 noundef 1, i64 noundef %retval.0.i156175179188, i64 noundef %retval.0.i161181186, i64 noundef %retval.0.i166190) #8
  br label %do.end

do.end:                                           ; preds = %if.then16, %do.body
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i161181186, i64 %retval.0.i166190)
  %cmp18 = icmp ult i64 %retval.0.i161181186, %retval.0.i166190
  br i1 %cmp18, label %do.end23, label %if.end24

do.end23:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.33, i64 noundef %retval.0.i166190, i64 noundef %retval.0.i161181186) #11
  br label %cleanup.thread

if.end24:                                         ; preds = %do.end
  %add = add i64 %retval.0.i171, %retval.0.i166190
  %27 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fw, align 4
  %conv25 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv25)
  %cmp26 = icmp ugt i64 %add, %conv25
  br i1 %cmp26, label %do.end31, label %if.end34

do.end31:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.35, i64 noundef %add, i32 noundef %28) #11
  br label %cleanup.thread

if.end34:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %retval.0.i161181186)
  %cmp.i173 = icmp ult i64 %retval.0.i161181186, 4294967296
  br i1 %cmp.i173, label %if.end40, label %do.end39

do.end39:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.38, i64 noundef %retval.0.i161181186) #11
  br label %cleanup.thread

if.end40:                                         ; preds = %if.end34
  %conv41 = trunc i64 %retval.0.i161181186 to i32
  %call42 = call ptr @rproc_da_to_va(ptr noundef %rproc, i64 noundef %retval.0.i156175179188, i32 noundef %conv41, ptr noundef nonnull %is_iomem) #8
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %do.end47, label %if.end48

do.end47:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.41, i64 noundef %retval.0.i156175179188, i64 noundef %retval.0.i161181186) #11
  br label %cleanup.thread

if.end48:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %retval.0.i166190)
  %tobool49.not = icmp eq i64 %retval.0.i166190, 0
  br i1 %tobool49.not, label %if.end48.if.end60_crit_edge, label %if.then50

if.end48.if.end60_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then50:                                        ; preds = %if.end48
  %29 = ptrtoint ptr %is_iomem to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %is_iomem, align 1, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool51.not = icmp eq i8 %30, 0
  %idx.ext56 = trunc i64 %retval.0.i171 to i32
  %add.ptr57 = getelementptr i8, ptr %1, i32 %idx.ext56
  %conv58 = trunc i64 %retval.0.i166190 to i32
  br i1 %tobool51.not, label %if.else, label %if.then52

if.then52:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  call void @mmiocpy(ptr noundef nonnull %call42, ptr noundef %add.ptr57, i32 noundef %conv58) #8
  br label %if.end60

if.else:                                          ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  %31 = call ptr @memcpy(ptr %call42, ptr %add.ptr57, i32 %conv58)
  br label %if.end60

if.end60:                                         ; preds = %if.else, %if.then52, %if.end48.if.end60_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i161181186, i64 %retval.0.i166190)
  %cmp61 = icmp ugt i64 %retval.0.i161181186, %retval.0.i166190
  br i1 %cmp61, label %if.then63, label %if.end60.for.inc_crit_edge

if.end60.for.inc_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then63:                                        ; preds = %if.end60
  %32 = ptrtoint ptr %is_iomem to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %is_iomem, align 1, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool64.not = icmp eq i8 %33, 0
  %idx.ext70 = trunc i64 %retval.0.i166190 to i32
  %add.ptr71 = getelementptr i8, ptr %call42, i32 %idx.ext70
  %sub72 = sub i64 %retval.0.i161181186, %retval.0.i166190
  %conv73 = trunc i64 %sub72 to i32
  br i1 %tobool64.not, label %if.else69, label %if.then65

if.then65:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  call void @mmioset(ptr noundef %add.ptr71, i32 noundef 0, i32 noundef %conv73) #8
  br label %for.inc

if.else69:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #10
  %34 = call ptr @memset(ptr %add.ptr71, i32 0, i32 %conv73)
  br label %for.inc

cleanup.thread:                                   ; preds = %do.end47, %do.end39, %do.end31, %do.end23
  %ret.1.ph = phi i32 [ -75, %do.end39 ], [ -22, %do.end47 ], [ -22, %do.end31 ], [ -22, %do.end23 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %is_iomem) #8
  br label %for.end

for.inc:                                          ; preds = %if.else69, %if.then65, %if.end60.for.inc_crit_edge, %elf_phdr_get_p_offset.exit.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %is_iomem) #8
  %inc = add nuw nsw i32 %i.0212, 1
  %add.ptr82 = getelementptr i8, ptr %phdr.0213, i32 %..i
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup.thread, %elf_hdr_get_e_phoff.exit.for.end_crit_edge
  %ret.2 = phi i32 [ %ret.1.ph, %cleanup.thread ], [ 0, %elf_hdr_get_e_phoff.exit.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rproc_da_to_va(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rproc_elf_load_rsc_table(ptr noundef %rproc, ptr nocapture noundef readonly %fw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %arrayidx.i = getelementptr [16 x i8], ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 4
  %call2 = tail call fastcc ptr @find_table(ptr noundef %dev1, ptr noundef %fw)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.i = icmp eq i8 %3, 1
  br i1 %cmp.i, label %if.then.i30, label %if.else.i31

if.then.i30:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sh_offset.i = getelementptr inbounds %struct.elf32_shdr, ptr %call2, i32 0, i32 4
  %4 = ptrtoint ptr %sh_offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sh_offset.i, align 4
  %sh_size.i = getelementptr inbounds %struct.elf32_shdr, ptr %call2, i32 0, i32 5
  %6 = ptrtoint ptr %sh_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sh_size.i, align 4
  br label %elf_shdr_get_sh_size.exit

if.else.i31:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sh_offset3.i = getelementptr inbounds %struct.elf64_shdr, ptr %call2, i32 0, i32 4
  %8 = ptrtoint ptr %sh_offset3.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %sh_offset3.i, align 8
  %idx.ext = trunc i64 %9 to i32
  %sh_size3.i = getelementptr inbounds %struct.elf64_shdr, ptr %call2, i32 0, i32 5
  %10 = ptrtoint ptr %sh_size3.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %sh_size3.i, align 8
  %extract.t38 = trunc i64 %11 to i32
  br label %elf_shdr_get_sh_size.exit

elf_shdr_get_sh_size.exit:                        ; preds = %if.else.i31, %if.then.i30
  %.pn = phi i32 [ %5, %if.then.i30 ], [ %idx.ext, %if.else.i31 ]
  %retval.0.i32.off0 = phi i32 [ %7, %if.then.i30 ], [ %extract.t38, %if.else.i31 ]
  %add.ptr36 = getelementptr i8, ptr %1, i32 %.pn
  %call5 = tail call ptr @kmemdup(ptr noundef %add.ptr36, i32 noundef %retval.0.i32.off0, i32 noundef 3264) #8
  %cached_table = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 27
  %12 = ptrtoint ptr %cached_table to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call5, ptr %cached_table, align 8
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %elf_shdr_get_sh_size.exit.cleanup_crit_edge, label %if.end9

elf_shdr_get_sh_size.exit.cleanup_crit_edge:      ; preds = %elf_shdr_get_sh_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %elf_shdr_get_sh_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  %table_ptr = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 25
  %13 = ptrtoint ptr %table_ptr to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call5, ptr %table_ptr, align 8
  %table_sz = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 28
  %14 = ptrtoint ptr %table_sz to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %retval.0.i32.off0, ptr %table_sz, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %elf_shdr_get_sh_size.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %elf_shdr_get_sh_size.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @find_table(ptr noundef %dev, ptr nocapture noundef readonly %fw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %arrayidx.i = getelementptr [16 x i8], ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 4
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fw, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.i = icmp eq i8 %3, 1
  %e_shnum.i = getelementptr inbounds %struct.elf32_hdr, ptr %1, i32 0, i32 12
  %e_shnum2.i = getelementptr inbounds %struct.elf64_hdr, ptr %1, i32 0, i32 12
  %retval.0.in.i = select i1 %cmp.i, ptr %e_shnum.i, ptr %e_shnum2.i
  %6 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %retval.0.i = load i16, ptr %retval.0.in.i, align 4
  %..i = select i1 %cmp.i, i32 40, i32 64
  %e_shstrndx.i = getelementptr inbounds %struct.elf32_hdr, ptr %1, i32 0, i32 13
  %e_shstrndx2.i = getelementptr inbounds %struct.elf64_hdr, ptr %1, i32 0, i32 13
  %retval.0.in.i113 = select i1 %cmp.i, ptr %e_shstrndx.i, ptr %e_shstrndx2.i
  %7 = ptrtoint ptr %retval.0.in.i113 to i32
  call void @__asan_load2_noabort(i32 %7)
  %retval.0.i114 = load i16, ptr %retval.0.in.i113, align 2
  br i1 %cmp.i, label %if.then.i119, label %if.else.i120

if.then.i119:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %e_shoff.i = getelementptr inbounds %struct.elf32_hdr, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %e_shoff.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %e_shoff.i, align 4
  %add.ptr139 = getelementptr i8, ptr %1, i32 %9
  %conv140 = zext i16 %retval.0.i114 to i32
  %mul141 = mul nuw nsw i32 %..i, %conv140
  %add.ptr5142 = getelementptr i8, ptr %add.ptr139, i32 %mul141
  %sh_offset.i = getelementptr inbounds %struct.elf32_shdr, ptr %add.ptr5142, i32 0, i32 4
  %10 = ptrtoint ptr %sh_offset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sh_offset.i, align 4
  br label %elf_shdr_get_sh_offset.exit

if.else.i120:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %e_shoff3.i = getelementptr inbounds %struct.elf64_hdr, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %e_shoff3.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %e_shoff3.i, align 8
  %idx.ext = trunc i64 %13 to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %idx.ext
  %conv = zext i16 %retval.0.i114 to i32
  %mul = mul nuw nsw i32 %..i, %conv
  %add.ptr5 = getelementptr i8, ptr %add.ptr, i32 %mul
  %sh_offset3.i = getelementptr inbounds %struct.elf64_shdr, ptr %add.ptr5, i32 0, i32 4
  %14 = ptrtoint ptr %sh_offset3.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %sh_offset3.i, align 8
  %extract.t150 = trunc i64 %15 to i32
  br label %elf_shdr_get_sh_offset.exit

elf_shdr_get_sh_offset.exit:                      ; preds = %if.else.i120, %if.then.i119
  %add.ptr143 = phi ptr [ %add.ptr139, %if.then.i119 ], [ %add.ptr, %if.else.i120 ]
  %retval.0.i121.off0 = phi i32 [ %11, %if.then.i119 ], [ %extract.t150, %if.else.i120 ]
  %add.ptr8 = getelementptr i8, ptr %1, i32 %retval.0.i121.off0
  %conv9 = zext i16 %retval.0.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %retval.0.i)
  %cmp152.not = icmp eq i16 %retval.0.i, 0
  br i1 %cmp152.not, label %elf_shdr_get_sh_offset.exit.cleanup64_crit_edge, label %elf_shdr_get_sh_offset.exit.for.body_crit_edge

elf_shdr_get_sh_offset.exit.for.body_crit_edge:   ; preds = %elf_shdr_get_sh_offset.exit
  br label %for.body

elf_shdr_get_sh_offset.exit.cleanup64_crit_edge:  ; preds = %elf_shdr_get_sh_offset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup64

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %elf_shdr_get_sh_offset.exit.for.body_crit_edge
  %shdr.0154 = phi ptr [ %add.ptr63, %for.inc.for.body_crit_edge ], [ %add.ptr143, %elf_shdr_get_sh_offset.exit.for.body_crit_edge ]
  %i.0153 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %elf_shdr_get_sh_offset.exit.for.body_crit_edge ]
  br i1 %cmp.i, label %if.then.i130, label %if.else.i132

if.then.i130:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %sh_size.i = getelementptr inbounds %struct.elf32_shdr, ptr %shdr.0154, i32 0, i32 5
  %16 = ptrtoint ptr %sh_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sh_size.i, align 4
  %conv2.i123 = zext i32 %17 to i64
  %sh_offset.i128 = getelementptr inbounds %struct.elf32_shdr, ptr %shdr.0154, i32 0, i32 4
  %18 = ptrtoint ptr %sh_offset.i128 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sh_offset.i128, align 4
  %conv2.i129 = zext i32 %19 to i64
  br label %elf_shdr_get_sh_offset.exit134

if.else.i132:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %sh_size3.i = getelementptr inbounds %struct.elf64_shdr, ptr %shdr.0154, i32 0, i32 5
  %20 = ptrtoint ptr %sh_size3.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %sh_size3.i, align 8
  %sh_offset3.i131 = getelementptr inbounds %struct.elf64_shdr, ptr %shdr.0154, i32 0, i32 4
  %22 = ptrtoint ptr %sh_offset3.i131 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %sh_offset3.i131, align 8
  br label %elf_shdr_get_sh_offset.exit134

elf_shdr_get_sh_offset.exit134:                   ; preds = %if.else.i132, %if.then.i130
  %retval.0.i126147 = phi i64 [ %conv2.i123, %if.then.i130 ], [ %21, %if.else.i132 ]
  %retval.0.i133 = phi i64 [ %conv2.i129, %if.then.i130 ], [ %23, %if.else.i132 ]
  %24 = ptrtoint ptr %shdr.0154 to i32
  call void @__asan_load4_noabort(i32 %24)
  %retval.0.i135 = load i32, ptr %shdr.0154, align 4
  %add.ptr15 = getelementptr i8, ptr %add.ptr8, i32 %retval.0.i135
  %call16 = tail call i32 @strcmp(ptr noundef %add.ptr15, ptr noundef nonnull dereferenceable(16) @.str.44) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %if.end, label %for.inc

if.end:                                           ; preds = %elf_shdr_get_sh_offset.exit134
  %idx.ext17 = trunc i64 %retval.0.i133 to i32
  %add.ptr18 = getelementptr i8, ptr %1, i32 %idx.ext17
  %add = add i64 %retval.0.i133, %retval.0.i126147
  %conv19 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv19)
  %cmp20 = icmp ugt i64 %add, %conv19
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %retval.0.i126147)
  %cmp23 = icmp ult i64 %add, %retval.0.i126147
  %or.cond = or i1 %cmp20, %cmp23
  br i1 %or.cond, label %do.end, label %if.end26

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45) #11
  br label %cleanup64

if.end26:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %retval.0.i126147)
  %cmp27 = icmp ult i64 %retval.0.i126147, 16
  br i1 %cmp27, label %do.end32, label %if.end33

do.end32:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.48) #11
  br label %cleanup64

if.end33:                                         ; preds = %if.end26
  %25 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %add.ptr18, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp34.not = icmp eq i32 %26, 1
  br i1 %cmp34.not, label %if.end41, label %do.end39

do.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.51, i32 noundef %26) #11
  br label %cleanup64

if.end41:                                         ; preds = %if.end33
  %reserved = getelementptr inbounds %struct.resource_table, ptr %add.ptr18, i32 0, i32 2
  %27 = ptrtoint ptr %reserved to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %reserved, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool42.not = icmp eq i32 %28, 0
  br i1 %tobool42.not, label %lor.lhs.false43, label %if.end41.do.end50_crit_edge

if.end41.do.end50_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end50

lor.lhs.false43:                                  ; preds = %if.end41
  %arrayidx45 = getelementptr [2 x i32], ptr %reserved, i32 0, i32 1
  %29 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %arrayidx45, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool46.not = icmp eq i32 %30, 0
  br i1 %tobool46.not, label %if.end51, label %lor.lhs.false43.do.end50_crit_edge

lor.lhs.false43.do.end50_crit_edge:               ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end50

do.end50:                                         ; preds = %lor.lhs.false43.do.end50_crit_edge, %if.end41.do.end50_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.54) #11
  br label %cleanup64

if.end51:                                         ; preds = %lor.lhs.false43
  %num = getelementptr inbounds %struct.resource_table, ptr %add.ptr18, i32 0, i32 1
  %31 = ptrtoint ptr %num to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %num, align 1
  %33 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %32, i32 4) #8
  %34 = extractvalue { i32, i1 } %33, 1
  %35 = extractvalue { i32, i1 } %33, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %35, i32 16) #8
  %36 = zext i32 %spec.select.i to i64
  %conv53 = select i1 %34, i64 4294967295, i64 %36
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i126147, i64 %conv53)
  %cmp54 = icmp ult i64 %retval.0.i126147, %conv53
  br i1 %cmp54, label %do.end59, label %if.end51.cleanup64_crit_edge

if.end51.cleanup64_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup64

do.end59:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.57) #11
  br label %cleanup64

for.inc:                                          ; preds = %elf_shdr_get_sh_offset.exit134
  %inc = add nuw nsw i32 %i.0153, 1
  %add.ptr63 = getelementptr i8, ptr %shdr.0154, i32 %..i
  %exitcond.not = icmp eq i32 %inc, %conv9
  br i1 %exitcond.not, label %for.inc.cleanup64_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup64_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup64

cleanup64:                                        ; preds = %for.inc.cleanup64_crit_edge, %do.end59, %if.end51.cleanup64_crit_edge, %do.end50, %do.end39, %do.end32, %do.end, %elf_shdr_get_sh_offset.exit.cleanup64_crit_edge
  %retval.2 = phi ptr [ %shdr.0154, %if.end51.cleanup64_crit_edge ], [ null, %do.end59 ], [ null, %do.end50 ], [ null, %do.end39 ], [ null, %do.end32 ], [ null, %do.end ], [ null, %elf_shdr_get_sh_offset.exit.cleanup64_crit_edge ], [ null, %for.inc.cleanup64_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rproc_elf_find_loaded_rsc_table(ptr noundef %rproc, ptr nocapture noundef readonly %fw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %arrayidx.i = getelementptr [16 x i8], ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 4
  %dev1 = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 6
  %call3 = tail call fastcc ptr @find_table(ptr noundef %dev1, ptr noundef %fw)
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.i = icmp eq i8 %3, 1
  br i1 %cmp.i, label %elf_shdr_get_sh_size.exit.thread, label %elf_shdr_get_sh_size.exit

elf_shdr_get_sh_size.exit.thread:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sh_addr.i = getelementptr inbounds %struct.elf32_shdr, ptr %call3, i32 0, i32 3
  %4 = ptrtoint ptr %sh_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sh_addr.i, align 4
  %conv2.i = zext i32 %5 to i64
  %sh_size.i = getelementptr inbounds %struct.elf32_shdr, ptr %call3, i32 0, i32 5
  %6 = ptrtoint ptr %sh_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sh_size.i, align 4
  br label %if.end8

elf_shdr_get_sh_size.exit:                        ; preds = %if.end
  %sh_addr3.i = getelementptr inbounds %struct.elf64_shdr, ptr %call3, i32 0, i32 3
  %8 = ptrtoint ptr %sh_addr3.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %sh_addr3.i, align 8
  %sh_size3.i = getelementptr inbounds %struct.elf64_shdr, ptr %call3, i32 0, i32 5
  %10 = ptrtoint ptr %sh_size3.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %sh_size3.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %11)
  %cmp.i27 = icmp ult i64 %11, 4294967296
  %extract.t36 = trunc i64 %11 to i32
  br i1 %cmp.i27, label %elf_shdr_get_sh_size.exit.if.end8_crit_edge, label %do.end

elf_shdr_get_sh_size.exit.if.end8_crit_edge:      ; preds = %elf_shdr_get_sh_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

do.end:                                           ; preds = %elf_shdr_get_sh_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.38, i64 noundef %11) #11
  br label %cleanup

if.end8:                                          ; preds = %elf_shdr_get_sh_size.exit.if.end8_crit_edge, %elf_shdr_get_sh_size.exit.thread
  %retval.0.i2635.off0 = phi i32 [ %7, %elf_shdr_get_sh_size.exit.thread ], [ %extract.t36, %elf_shdr_get_sh_size.exit.if.end8_crit_edge ]
  %retval.0.i2934 = phi i64 [ %conv2.i, %elf_shdr_get_sh_size.exit.thread ], [ %9, %elf_shdr_get_sh_size.exit.if.end8_crit_edge ]
  %call9 = tail call ptr @rproc_da_to_va(ptr noundef %rproc, i64 noundef %retval.0.i2934, i32 noundef %retval.0.i2635.off0, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call9, %if.end8 ], [ null, %do.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !73, !75, !76, !77, !79, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/remoteproc/remoteproc_elf_loader.c", i32 53, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @rproc_elf_sanity_check._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @rproc_elf_sanity_check._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/remoteproc/remoteproc_elf_loader.c", i32 58, i32 3}
!10 = !{ptr @rproc_elf_sanity_check._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @rproc_elf_sanity_check._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/remoteproc/remoteproc_elf_loader.c", i32 64, i32 28}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/remoteproc/remoteproc_elf_loader.c", i32 65, i32 3}
!16 = !{ptr @rproc_elf_sanity_check._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @rproc_elf_sanity_check._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/remoteproc/remoteproc_elf_loader.c", i32 71, i32 3}
!20 = !{ptr @rproc_elf_sanity_check._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @rproc_elf_sanity_check._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/remoteproc/remoteproc_elf_loader.c", i32 76, i32 3}
!24 = !{ptr @rproc_elf_sanity_check._entry.15, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @rproc_elf_sanity_check._entry_ptr.17, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.19, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/remoteproc/remoteproc_elf_loader.c", i32 86, i32 3}
!28 = !{ptr @rproc_elf_sanity_check._entry.18, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @rproc_elf_sanity_check._entry_ptr.20, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @rproc_elf_sanity_check._entry.21, !31, !"_entry", i1 false, i1 false}
!31 = !{!"../drivers/remoteproc/remoteproc_elf_loader.c", i32 96, i32 3}
!32 = !{ptr @rproc_elf_sanity_check._entry_ptr.22, !31, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.24, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/remoteproc/remoteproc_elf_loader.c", i32 101, i32 3}
!35 = !{ptr @rproc_elf_sanity_check._entry.23, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @rproc_elf_sanity_check._entry_ptr.25, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.27, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/remoteproc/remoteproc_elf_loader.c", i32 106, i32 3}
!39 = !{ptr @rproc_elf_sanity_check._entry.26, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @rproc_elf_sanity_check._entry_ptr.28, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.29, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/remoteproc/remoteproc_elf_loader.c", i32 110, i32 2}
!43 = !{ptr @.str.30, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @rproc_elf_sanity_check.__UNIQUE_ID_ddebug227, !42, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!45 = !{ptr @__ksymtab_rproc_elf_sanity_check, !46, !"__ksymtab_rproc_elf_sanity_check", i1 false, i1 false}
!46 = !{!"../drivers/remoteproc/remoteproc_elf_loader.c", i32 115, i32 1}
!47 = !{ptr @__ksymtab_rproc_elf_get_boot_addr, !48, !"__ksymtab_rproc_elf_get_boot_addr", i1 false, i1 false}
!48 = !{!"../drivers/remoteproc/remoteproc_elf_loader.c", i32 132, i32 1}
!49 = !{ptr @.str.31, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/remoteproc/remoteproc_elf_loader.c", i32 187, i32 3}
!51 = !{ptr @.str.32, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @rproc_elf_load_segments.__UNIQUE_ID_ddebug228, !50, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!53 = !{ptr @.str.33, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/remoteproc/remoteproc_elf_loader.c", i32 191, i32 4}
!55 = !{ptr @rproc_elf_load_segments._entry, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @rproc_elf_load_segments._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.35, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/remoteproc/remoteproc_elf_loader.c", i32 198, i32 4}
!59 = !{ptr @rproc_elf_load_segments._entry.34, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @rproc_elf_load_segments._entry_ptr.36, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.38, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/remoteproc/remoteproc_elf_loader.c", i32 205, i32 4}
!63 = !{ptr @rproc_elf_load_segments._entry.37, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @rproc_elf_load_segments._entry_ptr.39, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.41, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/remoteproc/remoteproc_elf_loader.c", i32 214, i32 4}
!67 = !{ptr @rproc_elf_load_segments._entry.40, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @rproc_elf_load_segments._entry_ptr.42, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @__ksymtab_rproc_elf_load_segments, !70, !"__ksymtab_rproc_elf_load_segments", i1 false, i1 false}
!70 = !{!"../drivers/remoteproc/remoteproc_elf_loader.c", i32 245, i32 1}
!71 = !{ptr @__ksymtab_rproc_elf_load_rsc_table, !72, !"__ksymtab_rproc_elf_load_rsc_table", i1 false, i1 false}
!72 = !{!"../drivers/remoteproc/remoteproc_elf_loader.c", i32 359, i32 1}
!73 = !{ptr @.str.43, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/remoteproc/remoteproc_elf_loader.c", i32 388, i32 3}
!75 = !{ptr @rproc_elf_find_loaded_rsc_table._entry, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @rproc_elf_find_loaded_rsc_table._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @__ksymtab_rproc_elf_find_loaded_rsc_table, !78, !"__ksymtab_rproc_elf_find_loaded_rsc_table", i1 false, i1 false}
!78 = !{!"../drivers/remoteproc/remoteproc_elf_loader.c", i32 395, i32 1}
!79 = !{ptr @.str.44, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/remoteproc/remoteproc_elf_loader.c", i32 275, i32 33}
!81 = !{ptr @.str.45, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/remoteproc/remoteproc_elf_loader.c", i32 282, i32 4}
!83 = !{ptr @.str.46, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @find_table._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @find_table._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.48, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/remoteproc/remoteproc_elf_loader.c", i32 288, i32 4}
!88 = !{ptr @find_table._entry.47, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @find_table._entry_ptr.49, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.51, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/remoteproc/remoteproc_elf_loader.c", i32 294, i32 4}
!92 = !{ptr @find_table._entry.50, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @find_table._entry_ptr.52, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.54, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/remoteproc/remoteproc_elf_loader.c", i32 300, i32 4}
!96 = !{ptr @find_table._entry.53, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @find_table._entry_ptr.55, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.57, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/remoteproc/remoteproc_elf_loader.c", i32 306, i32 4}
!100 = !{ptr @find_table._entry.56, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @find_table._entry_ptr.58, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{i32 1, !"min_enum_size", i32 4}
!104 = !{i32 8, !"branch-target-enforcement", i32 0}
!105 = !{i32 8, !"sign-return-address", i32 0}
!106 = !{i32 8, !"sign-return-address-all", i32 0}
!107 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!108 = !{i32 7, !"uwtable", i32 1}
!109 = !{i32 7, !"frame-pointer", i32 2}
!110 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!111 = !{i64 2148962825, i64 2148962830, i64 2148962843, i64 2148962887, i64 2148962921, i64 2148962942}
!112 = !{i8 0, i8 2}
