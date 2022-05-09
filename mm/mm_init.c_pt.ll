; ModuleID = '/llk/IR_all_yes/mm/mm_init.c_pt.bc'
source_filename = "../mm/mm_init.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mm_kobj\22, \22a\22\09"
module asm "\09.weak\09__crc_mm_kobj\09\09\09\09"
module asm "\09.long\09__crc_mm_kobj\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mm_kobj:\09\09\09\09\09"
module asm "\09.asciz \09\22mm_kobj\22\09\09\09\09\09"
module asm "__kstrtabns_mm_kobj:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, ptr, ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i32, [36 x i8], %struct.zone_padding, %struct.lruvec, i32, [12 x i8], %struct.zone_padding, ptr, [40 x %struct.atomic_t], [92 x i8] }
%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [96 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [90 x i8], %struct.zone_padding, [11 x %struct.atomic_t], [0 x %struct.atomic_t], [84 x i8] }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i32, i32, %struct.atomic_t, [2 x i32], i32, ptr }
%struct.zone_padding = type { [0 x i8] }

@mminit_loglevel = dso_local global i32 0, section ".meminit.data", align 4
@mminit_verify_zonelist._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017mminit::zonelist %s %d:%s = \00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mminit_verify_zonelist\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mm/mm_init.c\00", [19 x i8] zeroinitializer }, align 32
@mminit_verify_zonelist._entry_ptr = internal global ptr @mminit_verify_zonelist._entry, section ".printk_index", align 4
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"general\00", [24 x i8] zeroinitializer }, align 32
@mminit_verify_zonelist._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01c%d:%s \00", [23 x i8] zeroinitializer }, align 32
@mminit_verify_zonelist._entry_ptr.7 = internal global ptr @mminit_verify_zonelist._entry.5, section ".printk_index", align 4
@mminit_verify_zonelist._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 56, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@mminit_verify_zonelist._entry_ptr.10 = internal global ptr @mminit_verify_zonelist._entry.8, section ".printk_index", align 4
@mminit_verify_pageflags_layout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"\017mminit::pageflags_layout_widths Section %d Node %d Zone %d Lastcpupid %d Kasantag %d Flags %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mminit_verify_pageflags_layout\00", [33 x i8] zeroinitializer }, align 32
@mminit_verify_pageflags_layout._entry_ptr = internal global ptr @mminit_verify_pageflags_layout._entry, section ".printk_index", align 4
@mminit_verify_pageflags_layout._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 83, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\017mminit::pageflags_layout_shifts Section %d Node %d Zone %d Lastcpupid %d Kasantag %d\0A\00", [40 x i8] zeroinitializer }, align 32
@mminit_verify_pageflags_layout._entry_ptr.15 = internal global ptr @mminit_verify_pageflags_layout._entry.13, section ".printk_index", align 4
@mminit_verify_pageflags_layout._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.2, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"\017mminit::pageflags_layout_pgshifts Section %lu Node %lu Zone %lu Lastcpupid %lu Kasantag %lu\0A\00", [33 x i8] zeroinitializer }, align 32
@mminit_verify_pageflags_layout._entry_ptr.18 = internal global ptr @mminit_verify_pageflags_layout._entry.16, section ".printk_index", align 4
@mminit_verify_pageflags_layout._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.2, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\017mminit::pageflags_layout_nodezoneid Node/Zone ID: %lu -> %lu\0A\00", [32 x i8] zeroinitializer }, align 32
@mminit_verify_pageflags_layout._entry_ptr.21 = internal global ptr @mminit_verify_pageflags_layout._entry.19, section ".printk_index", align 4
@mminit_verify_pageflags_layout._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.12, ptr @.str.2, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\017mminit::pageflags_layout_usage location: %d -> %d layout %d -> %d unused %d -> %d page-flags\0A\00", [32 x i8] zeroinitializer }, align 32
@mminit_verify_pageflags_layout._entry_ptr.24 = internal global ptr @mminit_verify_pageflags_layout._entry.22, section ".printk_index", align 4
@__setup_str_set_mminit_loglevel = internal constant [16 x i8] c"mminit_loglevel\00", section ".init.rodata", align 1
@__setup_set_mminit_loglevel = internal global %struct.obs_kernel_param { ptr @__setup_str_set_mminit_loglevel, ptr @set_mminit_loglevel, i32 1 }, section ".init.setup", align 4
@mm_kobj = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_mm_kobj = external dso_local constant [0 x i8], align 1
@__kstrtabns_mm_kobj = external dso_local constant [0 x i8], align 1
@__ksymtab_mm_kobj = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mm_kobj to i32), ptr @__kstrtab_mm_kobj, ptr @__kstrtabns_mm_kobj }, section "___ksymtab_gpl+mm_kobj", align 4
@vm_committed_as_batch = dso_local global { i32, [28 x i8] } { i32 32, [28 x i8] zeroinitializer }, align 32
@__cpu_present_mask = external dso_local global %struct.cpumask, align 4
@__initcall__kmod_mm_init__251_192_mm_compute_batch_init6 = internal global ptr @mm_compute_batch_init, section ".initcall6.init", align 4
@__initcall__kmod_mm_init__252_204_mm_sysfs_init2 = internal global ptr @mm_sysfs_init, section ".initcall2.init", align 4
@contig_page_data = external dso_local global %struct.pglist_data, align 128
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@_totalram_pages = external dso_local global %struct.atomic_t, align 4
@sysctl_overcommit_memory = external dso_local local_unnamed_addr global i32, align 4
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"mm\00", [29 x i8] zeroinitializer }, align 32
@kernel_kobj = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 49, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 55, i32 5 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 56, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 69, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 77, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 84, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 91, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 95, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant [8 x i8] c"mm_kobj\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 138, i32 17 }
@___asan_gen_.89 = private unnamed_addr constant [22 x i8] c"vm_committed_as_batch\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 142, i32 5 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.93 = private constant [16 x i8] c"../mm/mm_init.c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 198, i32 35 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__initcall__kmod_mm_init__251_192_mm_compute_batch_init6, ptr @__initcall__kmod_mm_init__252_204_mm_sysfs_init2, ptr @__ksymtab_mm_kobj, ptr @__setup_set_mminit_loglevel, ptr @mminit_verify_pageflags_layout._entry, ptr @mminit_verify_pageflags_layout._entry.13, ptr @mminit_verify_pageflags_layout._entry.16, ptr @mminit_verify_pageflags_layout._entry.19, ptr @mminit_verify_pageflags_layout._entry.22, ptr @mminit_verify_pageflags_layout._entry_ptr, ptr @mminit_verify_pageflags_layout._entry_ptr.15, ptr @mminit_verify_pageflags_layout._entry_ptr.18, ptr @mminit_verify_pageflags_layout._entry_ptr.21, ptr @mminit_verify_pageflags_layout._entry_ptr.24, ptr @mminit_verify_zonelist._entry, ptr @mminit_verify_zonelist._entry.5, ptr @mminit_verify_zonelist._entry.8, ptr @mminit_verify_zonelist._entry_ptr, ptr @mminit_verify_zonelist._entry_ptr.10, ptr @mminit_verify_zonelist._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @mm_kobj, ptr @vm_committed_as_batch, ptr @.str.25], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mminit_verify_zonelist._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mminit_verify_zonelist._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mminit_verify_zonelist._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mminit_verify_pageflags_layout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mminit_verify_pageflags_layout._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mminit_verify_pageflags_layout._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mminit_verify_pageflags_layout._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mminit_verify_pageflags_layout._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mm_kobj to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vm_committed_as_batch to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @mminit_verify_zonelist() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @mminit_loglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %entry.for.body4_crit_edge

entry.for.body4_crit_edge:                        ; preds = %entry
  br label %for.body4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body4:                                        ; preds = %for.inc32.for.body4_crit_edge, %entry.for.body4_crit_edge
  %i.055 = phi i32 [ %inc, %for.inc32.for.body4_crit_edge ], [ 0, %entry.for.body4_crit_edge ]
  %present_pages.i = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %i.055, i32 13
  %1 = ptrtoint ptr %present_pages.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %present_pages.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  br i1 %tobool.i.not, label %for.body4.for.inc32_crit_edge, label %do.end11

for.body4.for.inc32_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc32

do.end11:                                         ; preds = %for.body4
  %div.udiv57 = lshr i32 %i.055, 2
  %arrayidx = getelementptr %struct.pglist_data, ptr @contig_page_data, i32 0, i32 1, i32 %div.udiv57
  %name = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %i.055, i32 15
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 16
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 0, ptr noundef %4) #8
  %zone_idx.i.i.i = getelementptr inbounds %struct.zoneref, ptr %arrayidx, i32 0, i32 1
  %5 = ptrtoint ptr %zone_idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %zone_idx.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %i.055)
  %cmp.not.i.i = icmp ugt i32 %6, %i.055
  br i1 %cmp.not.i.i, label %if.end.i.i, label %do.end11.first_zones_zonelist.exit_crit_edge, !prof !65

do.end11.first_zones_zonelist.exit_crit_edge:     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %first_zones_zonelist.exit

if.end.i.i:                                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i.i = tail call ptr @__next_zones_zonelist(ptr noundef %arrayidx, i32 noundef %i.055, ptr noundef null) #5
  br label %first_zones_zonelist.exit

first_zones_zonelist.exit:                        ; preds = %if.end.i.i, %do.end11.first_zones_zonelist.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call3.i.i, %if.end.i.i ], [ %arrayidx, %do.end11.first_zones_zonelist.exit_crit_edge ]
  %7 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %zone.051 = load ptr, ptr %retval.0.i.i, align 4
  %tobool.not52 = icmp eq ptr %zone.051, null
  br i1 %tobool.not52, label %first_zones_zonelist.exit.do.end29_crit_edge, label %first_zones_zonelist.exit.do.end20_crit_edge

first_zones_zonelist.exit.do.end20_crit_edge:     ; preds = %first_zones_zonelist.exit
  br label %do.end20

first_zones_zonelist.exit.do.end29_crit_edge:     ; preds = %first_zones_zonelist.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end29

do.end20:                                         ; preds = %next_zones_zonelist.exit.do.end20_crit_edge, %first_zones_zonelist.exit.do.end20_crit_edge
  %zone.054 = phi ptr [ %zone.0, %next_zones_zonelist.exit.do.end20_crit_edge ], [ %zone.051, %first_zones_zonelist.exit.do.end20_crit_edge ]
  %z.053 = phi ptr [ %retval.0.i, %next_zones_zonelist.exit.do.end20_crit_edge ], [ %retval.0.i.i, %first_zones_zonelist.exit.do.end20_crit_edge ]
  %name23 = getelementptr inbounds %struct.zone, ptr %zone.054, i32 0, i32 15
  %8 = ptrtoint ptr %name23 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name23, align 16
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef %9) #8
  %incdec.ptr = getelementptr %struct.zoneref, ptr %z.053, i32 1
  %zone_idx.i.i = getelementptr %struct.zoneref, ptr %z.053, i32 1, i32 1
  %10 = ptrtoint ptr %zone_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %zone_idx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %i.055)
  %cmp.not.i = icmp ugt i32 %11, %i.055
  br i1 %cmp.not.i, label %if.end.i, label %do.end20.next_zones_zonelist.exit_crit_edge, !prof !65

do.end20.next_zones_zonelist.exit_crit_edge:      ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %next_zones_zonelist.exit

if.end.i:                                         ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i = tail call ptr @__next_zones_zonelist(ptr noundef %incdec.ptr, i32 noundef %i.055, ptr noundef null) #5
  br label %next_zones_zonelist.exit

next_zones_zonelist.exit:                         ; preds = %if.end.i, %do.end20.next_zones_zonelist.exit_crit_edge
  %retval.0.i = phi ptr [ %call3.i, %if.end.i ], [ %incdec.ptr, %do.end20.next_zones_zonelist.exit_crit_edge ]
  %12 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %zone.0 = load ptr, ptr %retval.0.i, align 4
  %tobool.not = icmp eq ptr %zone.0, null
  br i1 %tobool.not, label %next_zones_zonelist.exit.do.end29_crit_edge, label %next_zones_zonelist.exit.do.end20_crit_edge

next_zones_zonelist.exit.do.end20_crit_edge:      ; preds = %next_zones_zonelist.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end20

next_zones_zonelist.exit.do.end29_crit_edge:      ; preds = %next_zones_zonelist.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end29

do.end29:                                         ; preds = %next_zones_zonelist.exit.do.end29_crit_edge, %first_zones_zonelist.exit.do.end29_crit_edge
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #8
  br label %for.inc32

for.inc32:                                        ; preds = %do.end29, %for.body4.for.inc32_crit_edge
  %inc = add nuw nsw i32 %i.055, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.inc32.cleanup_crit_edge, label %for.inc32.for.body4_crit_edge

for.inc32.for.body4_crit_edge:                    ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body4

for.inc32.cleanup_crit_edge:                      ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc32.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @mminit_verify_pageflags_layout() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @mminit_loglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp = icmp sgt i32 %0, 2
  br i1 %cmp, label %do.body8, label %entry.do.end83_crit_edge

entry.do.end83_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end83

do.body8:                                         ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef 22) #8
  %.pr = load i32, ptr @mminit_loglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp9 = icmp sgt i32 %.pr, 2
  br i1 %cmp9, label %do.body19, label %do.body8.do.end83_crit_edge

do.body8.do.end83_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end83

do.body19:                                        ; preds = %do.body8
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, i32 noundef 0) #8
  %.pr89 = load i32, ptr @mminit_loglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr89)
  %cmp20 = icmp sgt i32 %.pr89, 2
  br i1 %cmp20, label %do.body30, label %do.body19.do.end83_crit_edge

do.body19.do.end83_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end83

do.body30:                                        ; preds = %do.body19
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef 0, i32 noundef 30, i32 noundef 0, i32 noundef 0) #8
  %.pr91.pr = load i32, ptr @mminit_loglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr91.pr)
  %cmp31 = icmp sgt i32 %.pr91.pr, 2
  br i1 %cmp31, label %do.body41, label %do.body30.do.end83_crit_edge

do.body30.do.end83_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end83

do.body41:                                        ; preds = %do.body30
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef 32, i32 noundef 30) #8
  %.pr93 = load i32, ptr @mminit_loglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr93)
  %cmp42 = icmp sgt i32 %.pr93, 2
  br i1 %cmp42, label %do.end46, label %do.body41.do.end83_crit_edge

do.body41.do.end83_crit_edge:                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end83

do.end46:                                         ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #7
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef 32, i32 noundef 30, i32 noundef 30, i32 noundef 22, i32 noundef 22, i32 noundef 0) #8
  br label %do.end83

do.end83:                                         ; preds = %do.end46, %do.body41.do.end83_crit_edge, %do.body30.do.end83_crit_edge, %do.body19.do.end83_crit_edge, %do.body8.do.end83_crit_edge, %entry.do.end83_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @set_mminit_loglevel(ptr noundef %str) #0 section ".init.text" align 64 {
entry:
  %str.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %str.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %str, ptr %str.addr, align 4
  %call = call i32 @get_option(ptr noundef nonnull %str.addr, ptr noundef nonnull @mminit_loglevel) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mm_compute_batch(i32 noundef %overcommit_policy) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_present_mask, i32 noundef %0) #5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %1 = load volatile i32, ptr @_totalram_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %overcommit_policy)
  %cmp2 = icmp eq i32 %overcommit_policy, 2
  %div = udiv i32 %1, %call4.i.i
  %. = select i1 %cmp2, i32 8, i32 2
  %div1240 = lshr i32 %div, %.
  %mul = shl i32 %call4.i.i, 1
  %2 = tail call i32 @llvm.smax.i32(i32 %mul, i32 32)
  %3 = tail call i32 @llvm.umax.i32(i32 %div1240, i32 %2)
  store i32 %3, ptr @vm_committed_as_batch, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mm_compute_batch_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_overcommit_memory to i32))
  %0 = load i32, ptr @sysctl_overcommit_memory, align 4
  tail call void @mm_compute_batch(i32 noundef %0)
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mm_sysfs_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kernel_kobj to i32))
  %0 = load ptr, ptr @kernel_kobj, align 4
  %call = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.25, ptr noundef %0) #5
  store ptr %call, ptr @mm_kobj, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__next_zones_zonelist(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_option(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !41, !43, !45, !47, !49, !51, !52, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../mm/mm_init.c", i32 49, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @mminit_verify_zonelist._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @mminit_verify_zonelist._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../mm/mm_init.c", i32 55, i32 5}
!10 = !{ptr @mminit_verify_zonelist._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @mminit_verify_zonelist._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../mm/mm_init.c", i32 56, i32 4}
!14 = !{ptr @mminit_verify_zonelist._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @mminit_verify_zonelist._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../mm/mm_init.c", i32 69, i32 2}
!18 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @mminit_verify_pageflags_layout._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @mminit_verify_pageflags_layout._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../mm/mm_init.c", i32 77, i32 2}
!23 = !{ptr @mminit_verify_pageflags_layout._entry.13, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @mminit_verify_pageflags_layout._entry_ptr.15, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../mm/mm_init.c", i32 84, i32 2}
!27 = !{ptr @mminit_verify_pageflags_layout._entry.16, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @mminit_verify_pageflags_layout._entry_ptr.18, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.20, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../mm/mm_init.c", i32 91, i32 2}
!31 = !{ptr @mminit_verify_pageflags_layout._entry.19, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @mminit_verify_pageflags_layout._entry_ptr.21, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.23, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../mm/mm_init.c", i32 95, i32 2}
!35 = !{ptr @mminit_verify_pageflags_layout._entry.22, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @mminit_verify_pageflags_layout._entry_ptr.24, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @__setup_set_mminit_loglevel, !38, !"__setup_set_mminit_loglevel", i1 false, i1 false}
!38 = !{!"../mm/mm_init.c", i32 135, i32 1}
!39 = !{ptr @__ksymtab_mm_kobj, !40, !"__ksymtab_mm_kobj", i1 false, i1 false}
!40 = !{!"../mm/mm_init.c", i32 139, i32 1}
!41 = !{ptr @vm_committed_as_batch, !42, !"vm_committed_as_batch", i1 false, i1 false}
!42 = !{!"../mm/mm_init.c", i32 142, i32 5}
!43 = !{ptr @__initcall__kmod_mm_init__251_192_mm_compute_batch_init6, !44, !"__initcall__kmod_mm_init__251_192_mm_compute_batch_init6", i1 false, i1 false}
!44 = !{!"../mm/mm_init.c", i32 192, i32 1}
!45 = !{ptr @__initcall__kmod_mm_init__252_204_mm_sysfs_init2, !46, !"__initcall__kmod_mm_init__252_204_mm_sysfs_init2", i1 false, i1 false}
!46 = !{!"../mm/mm_init.c", i32 204, i32 1}
!47 = !{ptr @mminit_loglevel, !48, !"mminit_loglevel", i1 false, i1 false}
!48 = !{!"../mm/mm_init.c", i32 20, i32 19}
!49 = !{ptr @mm_kobj, !50, !"mm_kobj", i1 false, i1 false}
!50 = !{!"../mm/mm_init.c", i32 138, i32 17}
!51 = !{ptr @__setup_str_set_mminit_loglevel, !38, !"__setup_str_set_mminit_loglevel", i1 false, i1 false}
!52 = distinct !{null, !53, !"compute_batch_nb", i1 false, i1 false}
!53 = !{!"../mm/mm_init.c", i32 179, i32 30}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../mm/mm_init.c", i32 198, i32 35}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"branch_weights", i32 1, i32 2000}
