; ModuleID = '/llk/IR_all_yes/drivers/mtd/chips/gen_probe.c_pt.bc'
source_filename = "../drivers/mtd/chips/gen_probe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mtd_do_chip_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_mtd_do_chip_probe\09\09\09\09"
module asm "\09.long\09__crc_mtd_do_chip_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtd_do_chip_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22mtd_do_chip_probe\22\09\09\09\09\09"
module asm "__kstrtabns_mtd_do_chip_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.map_info = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.43 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
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
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.43 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.cfi_private = type { i16, ptr, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, %union.map_word, i32, ptr, [0 x %struct.flchip] }
%union.map_word = type { [8 x i32] }
%struct.flchip = type { i32, i32, i32, i32, i8, i32, i32, %struct.mutex, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, ptr }
%struct.chip_probe = type { ptr, ptr }
%struct.cfi_ident = type <{ [3 x i8], i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, [0 x i32] }>

@mtd_do_chip_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 43, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014Reducing visibility of %ldKiB chip to %ldKiB\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtd_do_chip_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/mtd/chips/gen_probe.c\00", [34 x i8] zeroinitializer }, align 32
@mtd_do_chip_probe._entry_ptr = internal global ptr @mtd_do_chip_probe._entry, section ".printk_index", align 4
@mtd_do_chip_probe._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 49, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014gen_probe: No supported Vendor Command Set found\0A\00", [44 x i8] zeroinitializer }, align 32
@mtd_do_chip_probe._entry_ptr.5 = internal global ptr @mtd_do_chip_probe._entry.3, section ".printk_index", align 4
@__kstrtab_mtd_do_chip_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtd_do_chip_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_mtd_do_chip_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtd_do_chip_probe to i32), ptr @__kstrtab_mtd_do_chip_probe, ptr @__kstrtabns_mtd_do_chip_probe }, section "___ksymtab+mtd_do_chip_probe", align 4
@__UNIQUE_ID_file190 = internal constant [43 x i8] c"gen_probe.file=drivers/mtd/chips/gen_probe\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [22 x i8] c"gen_probe.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author192 = internal constant [55 x i8] c"gen_probe.author=David Woodhouse <dwmw2@infradead.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description193 = internal constant [64 x i8] c"gen_probe.description=Helper routines for flash chip probe code\00", section ".modinfo", align 1
@genprobe_ident_chips.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gen_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"genprobe_ident_chips\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Found no %s device at location zero\0A\00", [55 x i8] zeroinitializer }, align 32
@genprobe_ident_chips._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014NOR chip too large to fit in mapping. Attempting to cope...\0A\00", [33 x i8] zeroinitializer }, align 32
@genprobe_ident_chips._entry_ptr = internal global ptr @genprobe_ident_chips._entry, section ".printk_index", align 4
@genprobe_ident_chips.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&pchip->wq\00", [21 x i8] zeroinitializer }, align 32
@genprobe_ident_chips.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&pchip->mutex\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cfi_cmdset_%4.4X\00", [47 x i8] zeroinitializer }, align 32
@cfi_cmdset_unknown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015Support for command set %04X not present\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cfi_cmdset_unknown\00", [45 x i8] zeroinitializer }, align 32
@cfi_cmdset_unknown._entry_ptr = internal global ptr @cfi_cmdset_unknown._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.16 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.17 = internal global [11 x i64] [i64 9, i64 16, i64 0, i64 1, i64 2, i64 3, i64 6, i64 32, i64 512, i64 1793, i64 65535]
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 41, i32 4 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 49, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 73, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 110, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 154, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 155, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 207, i32 36 }
@___asan_gen_.66 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.73 = private constant [33 x i8] c"../drivers/mtd/chips/gen_probe.c\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 227, i32 2 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_author192, ptr @__UNIQUE_ID_description193, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__ksymtab_mtd_do_chip_probe, ptr @cfi_cmdset_unknown._entry, ptr @cfi_cmdset_unknown._entry_ptr, ptr @genprobe_ident_chips._entry, ptr @genprobe_ident_chips._entry_ptr, ptr @mtd_do_chip_probe._entry, ptr @mtd_do_chip_probe._entry.3, ptr @mtd_do_chip_probe._entry_ptr, ptr @mtd_do_chip_probe._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @genprobe_ident_chips.__key, ptr @.str.10, ptr @genprobe_ident_chips.__key.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_do_chip_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtd_do_chip_probe._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @genprobe_ident_chips._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @genprobe_ident_chips.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @genprobe_ident_chips.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfi_cmdset_unknown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mtd_do_chip_probe(ptr noundef %map, ptr nocapture noundef readonly %cp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @genprobe_ident_chips(ptr noundef %map, ptr noundef %cp)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 17
  %0 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %fldrv_priv, align 4
  %call1 = tail call fastcc ptr @check_cmd_set(ptr noundef %map, i32 noundef 1)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end5, label %if.end.if.then7_crit_edge

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

if.end5:                                          ; preds = %if.end
  %call4 = tail call fastcc ptr @check_cmd_set(ptr noundef %map, i32 noundef 0)
  %tobool6.not = icmp eq ptr %call4, null
  br i1 %tobool6.not, label %do.end23, label %if.end5.if.then7_crit_edge

if.end5.if.then7_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7

if.then7:                                         ; preds = %if.end5.if.then7_crit_edge, %if.end.if.then7_crit_edge
  %mtd.045 = phi ptr [ %call4, %if.end5.if.then7_crit_edge ], [ %call1, %if.end.if.then7_crit_edge ]
  %size = getelementptr inbounds %struct.mtd_info, ptr %mtd.045, i32 0, i32 2
  %1 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %size, align 8
  %size8 = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 1
  %3 = ptrtoint ptr %size8 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size8, align 4
  %conv = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %2, i64 %conv)
  %cmp = icmp ugt i64 %2, %conv
  br i1 %cmp, label %do.end, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %conv12 = trunc i64 %2 to i32
  %shr = lshr i32 %conv12, 10
  %shr14 = lshr i32 %4, 10
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %shr, i32 noundef %shr14) #9
  %5 = ptrtoint ptr %size8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size8, align 4
  %conv17 = zext i32 %6 to i64
  %7 = ptrtoint ptr %size to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv17, ptr %size, align 8
  br label %cleanup

do.end23:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  %cfiq = getelementptr inbounds %struct.cfi_private, ptr %call, i32 0, i32 8
  %8 = ptrtoint ptr %cfiq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfiq, align 4
  tail call void @kfree(ptr noundef %9) #6
  tail call void @kfree(ptr noundef nonnull %call) #6
  %10 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %fldrv_priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %do.end, %if.then7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end23 ], [ null, %entry.cleanup_crit_edge ], [ %mtd.045, %do.end ], [ %mtd.045, %if.then7.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @genprobe_ident_chips(ptr noundef %map, ptr nocapture noundef readonly %cp) unnamed_addr #0 align 64 {
entry:
  %cfi = alloca %struct.cfi_private, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %cfi) #6
  %0 = call ptr @memset(ptr %cfi, i32 0, i32 88)
  %bankwidth.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 6
  %1 = ptrtoint ptr %bankwidth.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %bankwidth.i, align 4
  %div.i = sdiv i32 %2, 4
  %.off.i = add i32 %2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %.off.i)
  %3 = icmp ult i32 %.off.i, 7
  %div..i = select i1 %3, i32 1, i32 %div.i
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %div..i)
  %cmp.not33.i = icmp slt i32 %2, %div..i
  br i1 %cmp.not33.i, label %entry.do.body_crit_edge, label %for.body.lr.ph.i

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

for.body.lr.ph.i:                                 ; preds = %entry
  %interleave.i = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 2
  %device_type.i = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 3
  %probe_chip.i = getelementptr inbounds %struct.chip_probe, ptr %cp, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc12.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %nr_chips.034.i = phi i32 [ %2, %for.body.lr.ph.i ], [ %shr.i124, %for.inc12.i.for.body.i_crit_edge ]
  %4 = zext i32 %nr_chips.034.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %nr_chips.034.i, label %for.body.i.for.inc12.i_crit_edge [
    i32 1, label %for.body.i.if.end.i123_crit_edge
    i32 2, label %for.body.i.if.end.i123_crit_edge138
    i32 4, label %for.body.i.if.end.i123_crit_edge139
    i32 8, label %for.body.i.if.end.i123_crit_edge140
  ]

for.body.i.if.end.i123_crit_edge140:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i123

for.body.i.if.end.i123_crit_edge139:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i123

for.body.i.if.end.i123_crit_edge138:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i123

for.body.i.if.end.i123_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i123

for.body.i.for.inc12.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc12.i

if.end.i123:                                      ; preds = %for.body.i.if.end.i123_crit_edge, %for.body.i.if.end.i123_crit_edge138, %for.body.i.if.end.i123_crit_edge139, %for.body.i.if.end.i123_crit_edge140
  %5 = ptrtoint ptr %interleave.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %nr_chips.034.i, ptr %interleave.i, align 4
  %6 = ptrtoint ptr %bankwidth.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bankwidth.i, align 4
  %div4.i = sdiv i32 %7, %nr_chips.034.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %div4.i)
  %cmp631.i = icmp slt i32 %div4.i, 5
  br i1 %cmp631.i, label %if.end.i123.for.body7.i_crit_edge, label %if.end.i123.for.inc12.i_crit_edge

if.end.i123.for.inc12.i_crit_edge:                ; preds = %if.end.i123
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc12.i

if.end.i123.for.body7.i_crit_edge:                ; preds = %if.end.i123
  br label %for.body7.i

for.cond5.i:                                      ; preds = %for.body7.i
  %shl.i = shl i32 %type.032.i, 1
  %cmp6.i = icmp slt i32 %shl.i, 5
  br i1 %cmp6.i, label %for.cond5.i.for.body7.i_crit_edge, label %for.cond5.i.for.inc12.i_crit_edge

for.cond5.i.for.inc12.i_crit_edge:                ; preds = %for.cond5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc12.i

for.cond5.i.for.body7.i_crit_edge:                ; preds = %for.cond5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body7.i

for.body7.i:                                      ; preds = %for.cond5.i.for.body7.i_crit_edge, %if.end.i123.for.body7.i_crit_edge
  %type.032.i = phi i32 [ %shl.i, %for.cond5.i.for.body7.i_crit_edge ], [ %div4.i, %if.end.i123.for.body7.i_crit_edge ]
  %8 = ptrtoint ptr %device_type.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %type.032.i, ptr %device_type.i, align 4
  %9 = ptrtoint ptr %probe_chip.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %probe_chip.i, align 4
  %call8.i = call i32 %10(ptr noundef %map, i32 noundef 0, ptr noundef null, ptr noundef nonnull %cfi) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %for.cond5.i, label %if.end7

for.inc12.i:                                      ; preds = %for.cond5.i.for.inc12.i_crit_edge, %if.end.i123.for.inc12.i_crit_edge, %for.body.i.for.inc12.i_crit_edge
  %shr.i124 = ashr i32 %nr_chips.034.i, 1
  %cmp.not.i = icmp slt i32 %shr.i124, %div..i
  br i1 %cmp.not.i, label %for.inc12.i.do.body_crit_edge, label %for.inc12.i.for.body.i_crit_edge

for.inc12.i.for.body.i_crit_edge:                 ; preds = %for.inc12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc12.i.do.body_crit_edge:                    ; preds = %for.inc12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %for.inc12.i.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @genprobe_ident_chips.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@genprobe_ident_chips, %if.then5)) #6
          to label %cleanup [label %if.then5], !srcloc !50

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cp, align 4
  %13 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @genprobe_ident_chips.__UNIQUE_ID_ddebug189, ptr noundef nonnull @.str.8, ptr noundef %12, ptr noundef %14) #6
  br label %cleanup

if.end7:                                          ; preds = %for.body7.i
  %cfiq = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 8
  %15 = ptrtoint ptr %cfiq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cfiq, align 4
  %DevSize = getelementptr inbounds %struct.cfi_ident, ptr %16, i32 0, i32 17
  %17 = ptrtoint ptr %DevSize to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %DevSize, align 1
  %conv = zext i8 %18 to i32
  %chipshift = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 13
  %19 = ptrtoint ptr %chipshift to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv, ptr %chipshift, align 4
  %20 = ptrtoint ptr %interleave.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %interleave.i, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %21, label %do.body29 [
    i32 1, label %if.end7.if.end38_crit_edge
    i32 2, label %if.end7.if.end38.sink.split_crit_edge
    i32 4, label %if.then19
    i32 8, label %if.then25
  ]

if.end7.if.end38.sink.split_crit_edge:            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.sink.split

if.end7.if.end38_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then19:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.sink.split

if.then25:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.sink.split

do.body29:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mtd/chips/gen_probe.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 99, 0\0A.popsection", ""() #6, !srcloc !51
  unreachable

if.end38.sink.split:                              ; preds = %if.then25, %if.then19, %if.end7.if.end38.sink.split_crit_edge
  %.sink = phi i32 [ 3, %if.then25 ], [ 2, %if.then19 ], [ 1, %if.end7.if.end38.sink.split_crit_edge ]
  %inc = add nuw nsw i32 %.sink, %conv
  %23 = ptrtoint ptr %chipshift to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %inc, ptr %chipshift, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.end38.sink.split, %if.end7.if.end38_crit_edge
  %numchips = getelementptr inbounds %struct.cfi_private, ptr %cfi, i32 0, i32 11
  %24 = ptrtoint ptr %numchips to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %numchips, align 4
  %size = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 1
  %25 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size, align 4
  %27 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %chipshift, align 4
  %shr = lshr i32 %26, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %tobool40.not = icmp eq i32 %shr, 0
  br i1 %tobool40.not, label %do.end44, label %if.end38.if.end47_crit_edge

if.end38.if.end47_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

do.end44:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #9
  br label %if.end47

if.end47:                                         ; preds = %do.end44, %if.end38.if.end47_crit_edge
  %max_chips.0 = phi i32 [ %shr, %if.end38.if.end47_crit_edge ], [ 1, %do.end44 ]
  %call48 = call ptr @bitmap_zalloc(i32 noundef %max_chips.0, i32 noundef 3264) #6
  %tobool49.not = icmp eq ptr %call48, null
  br i1 %tobool49.not, label %if.then50, label %if.end52

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %cfiq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cfiq, align 4
  call void @kfree(ptr noundef %30) #6
  br label %cleanup

if.end52:                                         ; preds = %if.end47
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %call48) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %max_chips.0)
  %cmp53130 = icmp sgt i32 %max_chips.0, 1
  br i1 %cmp53130, label %if.end52.for.body_crit_edge, label %if.end52.if.end8.i_crit_edge

if.end52.if.end8.i_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.end52.for.body_crit_edge:                      ; preds = %if.end52
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end52.for.body_crit_edge
  %i.0131 = phi i32 [ %inc57, %for.body.for.body_crit_edge ], [ 1, %if.end52.for.body_crit_edge ]
  %31 = ptrtoint ptr %probe_chip.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %probe_chip.i, align 4
  %33 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %chipshift, align 4
  %shl = shl i32 %i.0131, %34
  %call56 = call i32 %32(ptr noundef %map, i32 noundef %shl, ptr noundef nonnull %call48, ptr noundef nonnull %cfi) #6
  %inc57 = add nuw nsw i32 %i.0131, 1
  %exitcond.not = icmp eq i32 %inc57, %max_chips.0
  br i1 %exitcond.not, label %for.body.if.end8.i_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.if.end8.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.end8.i:                                        ; preds = %for.body.if.end8.i_crit_edge, %if.end52.if.end8.i_crit_edge
  %35 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %numchips, align 4
  %37 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %36, i32 200) #6
  %38 = extractvalue { i32, i1 } %37, 1
  %39 = extractvalue { i32, i1 } %37, 0
  %40 = add nuw i32 %39, 88
  %retval.0.i126 = select i1 %38, i32 -1, i32 %40
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i126, i32 noundef 3264) #10
  %tobool61.not = icmp eq ptr %call9.i, null
  br i1 %tobool61.not, label %if.then62, label %if.end64

if.then62:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %cfiq to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cfiq, align 4
  call void @kfree(ptr noundef %42) #6
  call void @bitmap_free(ptr noundef nonnull %call48) #6
  br label %cleanup

if.end64:                                         ; preds = %if.end8.i
  %43 = call ptr @memcpy(ptr %call9.i, ptr %cfi, i32 88)
  %chips = getelementptr inbounds %struct.cfi_private, ptr %call9.i, i32 0, i32 15
  %44 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %numchips, align 4
  %mul = mul i32 %45, 200
  %46 = call ptr @memset(ptr %chips, i32 0, i32 %mul)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp68132 = icmp sgt i32 %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_chips.0)
  %cmp70133 = icmp sgt i32 %max_chips.0, 0
  %or.cond134 = and i1 %cmp68132, %cmp70133
  br i1 %or.cond134, label %if.end64.for.body72_crit_edge, label %if.end64.for.end90_crit_edge

if.end64.for.end90_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end90

if.end64.for.body72_crit_edge:                    ; preds = %if.end64
  br label %for.body72

for.body72:                                       ; preds = %for.inc88.for.body72_crit_edge, %if.end64.for.body72_crit_edge
  %j.0137 = phi i32 [ %j.1, %for.inc88.for.body72_crit_edge ], [ 0, %if.end64.for.body72_crit_edge ]
  %i.1135 = phi i32 [ %inc89, %for.inc88.for.body72_crit_edge ], [ 0, %if.end64.for.body72_crit_edge ]
  %div3.i = lshr i32 %i.1135, 5
  %arrayidx.i = getelementptr i32, ptr %call48, i32 %div3.i
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.1135, 31
  %49 = shl nuw i32 1, %and.i
  %50 = and i32 %48, %49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool74.not = icmp eq i32 %50, 0
  br i1 %tobool74.not, label %for.body72.for.inc88_crit_edge, label %if.then75

for.body72.for.inc88_crit_edge:                   ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc88

if.then75:                                        ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #8
  %inc77 = add nsw i32 %j.0137, 1
  %arrayidx78 = getelementptr %struct.cfi_private, ptr %call9.i, i32 0, i32 15, i32 %j.0137
  %51 = ptrtoint ptr %chipshift to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %chipshift, align 4
  %shl80 = shl i32 %i.1135, %52
  %53 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %shl80, ptr %arrayidx78, align 8
  %state = getelementptr %struct.cfi_private, ptr %call9.i, i32 0, i32 15, i32 %j.0137, i32 2
  %54 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %state, align 8
  %wq = getelementptr %struct.cfi_private, ptr %call9.i, i32 0, i32 15, i32 %j.0137, i32 8
  call void @__init_waitqueue_head(ptr noundef %wq, ptr noundef nonnull @.str.10, ptr noundef nonnull @genprobe_ident_chips.__key) #6
  %mutex = getelementptr %struct.cfi_private, ptr %call9.i, i32 0, i32 15, i32 %j.0137, i32 7
  call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.12, ptr noundef nonnull @genprobe_ident_chips.__key.11) #6
  br label %for.inc88

for.inc88:                                        ; preds = %if.then75, %for.body72.for.inc88_crit_edge
  %j.1 = phi i32 [ %inc77, %if.then75 ], [ %j.0137, %for.body72.for.inc88_crit_edge ]
  %inc89 = add nuw nsw i32 %i.1135, 1
  %55 = ptrtoint ptr %numchips to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %numchips, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %j.1, i32 %56)
  %cmp68 = icmp slt i32 %j.1, %56
  call void @__sanitizer_cov_trace_cmp4(i32 %inc89, i32 %max_chips.0)
  %cmp70 = icmp slt i32 %inc89, %max_chips.0
  %or.cond = select i1 %cmp68, i1 %cmp70, i1 false
  br i1 %or.cond, label %for.inc88.for.body72_crit_edge, label %for.inc88.for.end90_crit_edge

for.inc88.for.end90_crit_edge:                    ; preds = %for.inc88
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end90

for.inc88.for.body72_crit_edge:                   ; preds = %for.inc88
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body72

for.end90:                                        ; preds = %for.inc88.for.end90_crit_edge, %if.end64.for.end90_crit_edge
  call void @bitmap_free(ptr noundef nonnull %call48) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end90, %if.then62, %if.then50, %if.then5, %do.body
  %retval.0 = phi ptr [ %call9.i, %for.end90 ], [ null, %if.then62 ], [ null, %if.then50 ], [ null, %if.then5 ], [ null, %do.body ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %cfi) #6
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @check_cmd_set(ptr noundef %map, i32 noundef %primary) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 17
  %0 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fldrv_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %primary)
  %tobool.not = icmp eq i32 %primary, 0
  %cfiq1 = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %cfiq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfiq1, align 4
  %P_ID = getelementptr inbounds %struct.cfi_ident, ptr %3, i32 0, i32 1
  %A_ID = getelementptr inbounds %struct.cfi_ident, ptr %3, i32 0, i32 3
  %cond.in.in = select i1 %tobool.not, ptr %A_ID, ptr %P_ID
  %4 = ptrtoint ptr %cond.in.in to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %cond.in27 = load i16, ptr %cond.in.in, align 1
  %5 = zext i16 %cond.in27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.17)
  switch i16 %cond.in27, label %sw.default [
    i16 0, label %entry.cleanup_crit_edge
    i16 -1, label %entry.cleanup_crit_edge28
    i16 1, label %entry.sw.bb_crit_edge
    i16 3, label %entry.sw.bb_crit_edge29
    i16 512, label %entry.sw.bb_crit_edge30
    i16 2, label %entry.sw.bb10_crit_edge
    i16 1793, label %entry.sw.bb10_crit_edge31
    i16 6, label %entry.sw.bb10_crit_edge32
    i16 32, label %sw.bb12
  ]

entry.sw.bb10_crit_edge32:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb10

entry.sw.bb10_crit_edge31:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb10

entry.sw.bb10_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb10

entry.sw.bb_crit_edge30:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge29:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.cleanup_crit_edge28:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge29, %entry.sw.bb_crit_edge30
  %call = tail call ptr @cfi_cmdset_0001(ptr noundef %map, i32 noundef %primary) #6
  br label %cleanup

sw.bb10:                                          ; preds = %entry.sw.bb10_crit_edge, %entry.sw.bb10_crit_edge31, %entry.sw.bb10_crit_edge32
  %call11 = tail call ptr @cfi_cmdset_0002(ptr noundef %map, i32 noundef %primary) #6
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call ptr @cfi_cmdset_0020(ptr noundef %map, i32 noundef %primary) #6
  br label %cleanup

sw.default:                                       ; preds = %entry
  %cfiq1.i = getelementptr inbounds %struct.cfi_private, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %cfiq1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfiq1.i, align 4
  %P_ID.i = getelementptr inbounds %struct.cfi_ident, ptr %7, i32 0, i32 1
  %A_ID.i = getelementptr inbounds %struct.cfi_ident, ptr %7, i32 0, i32 3
  %cond.in.in.i = select i1 %tobool.not, ptr %A_ID.i, ptr %P_ID.i
  %8 = ptrtoint ptr %cond.in.in.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %cond.in33.i = load i16, ptr %cond.in.in.i, align 1
  %conv4.i = zext i16 %cond.in33.i to i32
  %call.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.13, i32 noundef %conv4.i) #6
  %tobool5.not.i = icmp eq ptr %call.i, null
  br i1 %tobool5.not.i, label %sw.default.cleanup_crit_edge, label %if.end.i

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %sw.default
  %call6.i = tail call ptr @__symbol_get(ptr noundef nonnull %call.i) #6
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %if.end12.i, label %if.end12.thread.i

if.end12.thread.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call.i) #6
  br label %if.then14.i

if.end12.i:                                       ; preds = %if.end.i
  %call10.i = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.13, i32 noundef %conv4.i) #6
  %call11.i = tail call ptr @__symbol_get(ptr noundef nonnull %call.i) #6
  tail call void @kfree(ptr noundef nonnull %call.i) #6
  %tobool13.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool13.not.i, label %do.end.i, label %if.end12.i.if.then14.i_crit_edge

if.end12.i.if.then14.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14.i

if.then14.i:                                      ; preds = %if.end12.i.if.then14.i_crit_edge, %if.end12.thread.i
  %probe_function.036.i = phi ptr [ %call6.i, %if.end12.thread.i ], [ %call11.i, %if.end12.i.if.then14.i_crit_edge ]
  %call15.i = tail call ptr %probe_function.036.i(ptr noundef %map, i32 noundef %primary) #6
  tail call void @symbol_put_addr(ptr noundef nonnull %probe_function.036.i) #6
  br label %cleanup

do.end.i:                                         ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv4.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.then14.i, %sw.default.cleanup_crit_edge, %sw.bb12, %sw.bb10, %sw.bb, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge28
  %retval.0 = phi ptr [ %call13, %sw.bb12 ], [ %call11, %sw.bb10 ], [ %call, %sw.bb ], [ null, %entry.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge28 ], [ %call15.i, %if.then14.i ], [ null, %do.end.i ], [ null, %sw.default.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfi_cmdset_0001(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfi_cmdset_0002(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfi_cmdset_0020(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @symbol_put_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !15, !17, !19, !21, !22, !23, !24, !26, !27, !28, !30, !31, !33, !34, !36, !38, !39, !40}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mtd/chips/gen_probe.c", i32 41, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @mtd_do_chip_probe._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @mtd_do_chip_probe._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/mtd/chips/gen_probe.c", i32 49, i32 2}
!8 = !{ptr @mtd_do_chip_probe._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @mtd_do_chip_probe._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @__ksymtab_mtd_do_chip_probe, !11, !"__ksymtab_mtd_do_chip_probe", i1 false, i1 false}
!11 = !{!"../drivers/mtd/chips/gen_probe.c", i32 56, i32 1}
!12 = !{ptr @__UNIQUE_ID_file190, !13, !"__UNIQUE_ID_file190", i1 false, i1 false}
!13 = !{!"../drivers/mtd/chips/gen_probe.c", i32 264, i32 1}
!14 = !{ptr @__UNIQUE_ID_license191, !13, !"__UNIQUE_ID_license191", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_author192, !16, !"__UNIQUE_ID_author192", i1 false, i1 false}
!16 = !{!"../drivers/mtd/chips/gen_probe.c", i32 265, i32 1}
!17 = !{ptr @__UNIQUE_ID_description193, !18, !"__UNIQUE_ID_description193", i1 false, i1 false}
!18 = !{!"../drivers/mtd/chips/gen_probe.c", i32 266, i32 1}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mtd/chips/gen_probe.c", i32 73, i32 3}
!21 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @genprobe_ident_chips.__UNIQUE_ID_ddebug189, !20, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mtd/chips/gen_probe.c", i32 110, i32 3}
!26 = !{ptr @genprobe_ident_chips._entry, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @genprobe_ident_chips._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @genprobe_ident_chips.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/mtd/chips/gen_probe.c", i32 154, i32 4}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @genprobe_ident_chips.__key.11, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/mtd/chips/gen_probe.c", i32 155, i32 4}
!33 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mtd/chips/gen_probe.c", i32 207, i32 36}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mtd/chips/gen_probe.c", i32 227, i32 2}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @cfi_cmdset_unknown._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @cfi_cmdset_unknown._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{i64 2148696319, i64 2148696324, i64 2148696337, i64 2148696381, i64 2148696415, i64 2148696436}
!51 = !{i64 2153243528, i64 2153244021, i64 2153243565, i64 2153243621, i64 2153243655, i64 2153243679, i64 2153243720, i64 2153243741, i64 2153243769, i64 2153243803}
