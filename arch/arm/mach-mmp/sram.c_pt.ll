; ModuleID = '/llk/IR_all_yes/arch/arm/mach-mmp/sram.c_pt.bc'
source_filename = "../arch/arm/mach-mmp/sram.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+sram_get_gpool\22, \22a\22\09"
module asm "\09.weak\09__crc_sram_get_gpool\09\09\09\09"
module asm "\09.long\09__crc_sram_get_gpool\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sram_get_gpool:\09\09\09\09\09"
module asm "\09.asciz \09\22sram_get_gpool\22\09\09\09\09\09"
module asm "__kstrtabns_sram_get_gpool:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.sram_bank_info = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head }
%struct.sram_platdata = type { ptr, i32 }

@sram_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @sram_lock, i64 52), ptr getelementptr (i8, ptr @sram_lock, i64 52) }, ptr @sram_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@sram_bank_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @sram_bank_list, ptr @sram_bank_list }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_sram_get_gpool = external dso_local constant [0 x i8], align 1
@__kstrtabns_sram_get_gpool = external dso_local constant [0 x i8], align 1
@__ksymtab_sram_get_gpool = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sram_get_gpool to i32), ptr @__kstrtab_sram_get_gpool, ptr @__kstrtabns_sram_get_gpool }, section "___ksymtab+sram_get_gpool", align 4
@__initcall__kmod_sram__183_163_sram_init1 = internal global ptr @sram_init, section ".initcall1.init", align 4
@__UNIQUE_ID_file184 = internal constant [33 x i8] c"sram.file=arch/arm/mach-mmp/sram\00", section ".modinfo", align 1
@__UNIQUE_ID_license185 = internal constant [17 x i8] c"sram.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sram_lock.wait_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sram_lock\00", [22 x i8] zeroinitializer }, align 32
@sram_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sram_probe, ptr @sram_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @sram_id_table, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmp-sram\00", [23 x i8] zeroinitializer }, align 32
@sram_id_table = internal constant { [3 x %struct.platform_device_id], [56 x i8] } { [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"asram\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.platform_device_id { [20 x i8] c"isram\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.platform_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@sram_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 77, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no memory resource defined\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sram_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"arch/arm/mach-mmp/sram.c\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sram_probe._entry_ptr = internal global ptr @sram_probe._entry, section ".printk_index", align 4
@sram_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 93, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"create pool failed\0A\00", [44 x i8] zeroinitializer }, align 32
@sram_probe._entry_ptr.10 = internal global ptr @sram_probe._entry.8, section ".printk_index", align 4
@sram_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 101, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"add new chunk failed\0A\00", [42 x i8] zeroinitializer }, align 32
@sram_probe._entry_ptr.13 = internal global ptr @sram_probe._entry.11, section ".printk_index", align 4
@sram_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 112, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"initialized\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sram_probe._entry_ptr.17 = internal global ptr @sram_probe._entry.14, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.18 = private unnamed_addr constant [10 x i8] c"sram_lock\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [15 x i8] c"sram_bank_list\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 37, i32 8 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 36, i32 8 }
@___asan_gen_.30 = private unnamed_addr constant [12 x i8] c"sram_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 150, i32 31 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 154, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [14 x i8] c"sram_id_table\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 144, i32 40 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 77, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 93, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 101, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private constant [28 x i8] c"../arch/arm/mach-mmp/sram.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 112, i32 2 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_file184, ptr @__UNIQUE_ID_license185, ptr @__initcall__kmod_sram__183_163_sram_init1, ptr @__ksymtab_sram_get_gpool, ptr @sram_probe._entry, ptr @sram_probe._entry.11, ptr @sram_probe._entry.14, ptr @sram_probe._entry.8, ptr @sram_probe._entry_ptr, ptr @sram_probe._entry_ptr.10, ptr @sram_probe._entry_ptr.13, ptr @sram_probe._entry_ptr.17, ptr @sram_lock, ptr @sram_bank_list, ptr @.str, ptr @.str.1, ptr @sram_driver, ptr @.str.2, ptr @sram_id_table, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sram_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sram_bank_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sram_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sram_id_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sram_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sram_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sram_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sram_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sram_get_gpool(ptr noundef readonly %pool_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pool_name, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @sram_lock, i32 noundef 0) #7
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %.pn.in = phi ptr [ @sram_bank_list, %if.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp = icmp eq ptr %.pn, @sram_bank_list
  br i1 %cmp, label %if.then11.critedge, label %for.body

for.body:                                         ; preds = %for.cond
  %info.0 = getelementptr i8, ptr %.pn, i32 -24
  %1 = ptrtoint ptr %info.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %info.0, align 4
  %call = tail call i32 @strcmp(ptr noundef nonnull %pool_name, ptr noundef %2) #10
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end12.critedge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

if.then11.critedge:                               ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef nonnull @sram_lock) #7
  br label %cleanup

if.end12.critedge:                                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef nonnull @sram_lock) #7
  %gpool = getelementptr i8, ptr %.pn, i32 -20
  %3 = ptrtoint ptr %gpool to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gpool, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12.critedge, %if.then11.critedge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then11.critedge ], [ %4, %if.end12.critedge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sram_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sram_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sram_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 32) #11
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %cmp = icmp eq ptr %call5, null
  br i1 %cmp, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #12
  br label %out

if.end8:                                          ; preds = %if.end4
  %end.i = getelementptr inbounds %struct.resource, ptr %call5, i32 0, i32 1
  %5 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %end.i, align 4
  %7 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call5, align 4
  %sub.i = add i32 %6, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %8)
  %tobool10.not = icmp eq i32 %sub.i, %8
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %sram_phys = getelementptr inbounds %struct.sram_bank_info, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %sram_phys to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %sram_phys, align 4
  %10 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end.i, align 4
  %12 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call5, align 4
  %sub.i101 = add i32 %11, 1
  %add.i102 = sub i32 %sub.i101, %13
  %sram_size = getelementptr inbounds %struct.sram_bank_info, ptr %call7.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %sram_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add.i102, ptr %sram_size, align 4
  %call16 = tail call ptr @ioremap(i32 noundef %8, i32 noundef %add.i102) #7
  %sram_virt = getelementptr inbounds %struct.sram_bank_info, ptr %call7.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %sram_virt to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call16, ptr %sram_virt, align 8
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call18 = tail call noalias ptr @kstrdup(ptr noundef %17, i32 noundef 3264) #7
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call18, ptr %call7.i.i, align 8
  %granularity = getelementptr inbounds %struct.sram_platdata, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %granularity to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %granularity, align 4
  %granularity20 = getelementptr inbounds %struct.sram_bank_info, ptr %call7.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %granularity20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %granularity20, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i = icmp eq i32 %20, 0
  %22 = tail call i32 @llvm.ctlz.i32(i32 %20, i1 true) #7, !range !49
  %sub.i.op.i = xor i32 %22, 31
  %sub.i103 = select i1 %tobool.not.i.i, i32 -1, i32 %sub.i.op.i
  %call31 = tail call ptr @gen_pool_create(i32 noundef %sub.i103, i32 noundef -1) #7
  %gpool = getelementptr inbounds %struct.sram_bank_info, ptr %call7.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %gpool to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call31, ptr %gpool, align 4
  %tobool33.not = icmp eq ptr %call31, null
  br i1 %tobool33.not, label %do.end37, label %if.end39

do.end37:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #12
  br label %create_pool_err

if.end39:                                         ; preds = %if.end12
  %24 = ptrtoint ptr %sram_virt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sram_virt, align 8
  %26 = ptrtoint ptr %25 to i32
  %27 = ptrtoint ptr %sram_phys to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sram_phys, align 4
  %29 = ptrtoint ptr %sram_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sram_size, align 4
  %call.i = tail call i32 @gen_pool_add_owner(ptr noundef nonnull %call31, i32 noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef -1, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp45 = icmp slt i32 %call.i, 0
  br i1 %cmp45, label %do.end50, label %if.end52

do.end50:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #12
  %31 = ptrtoint ptr %gpool to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %gpool, align 4
  tail call void @gen_pool_destroy(ptr noundef %32) #7
  br label %create_pool_err

if.end52:                                         ; preds = %if.end39
  tail call void @mutex_lock_nested(ptr noundef nonnull @sram_lock, i32 noundef 0) #7
  %node = getelementptr inbounds %struct.sram_bank_info, ptr %call7.i.i, i32 0, i32 6
  %33 = load ptr, ptr @sram_bank_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef nonnull @sram_bank_list, ptr noundef %33) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end52.list_add.exit_crit_edge

if.end52.list_add.exit_crit_edge:                 ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %node, ptr %prev1.i.i, align 4
  %35 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %33, ptr %node, align 8
  %prev3.i.i = getelementptr inbounds %struct.sram_bank_info, ptr %call7.i.i, i32 0, i32 6, i32 1
  %36 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @sram_bank_list, ptr %prev3.i.i, align 4
  store volatile ptr %node, ptr @sram_bank_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end52.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @sram_lock) #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %37 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.15) #12
  br label %cleanup

create_pool_err:                                  ; preds = %do.end50, %do.end37
  %38 = ptrtoint ptr %sram_virt to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sram_virt, align 8
  tail call void @iounmap(ptr noundef %39) #7
  %40 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call7.i.i, align 8
  tail call void @kfree(ptr noundef %41) #7
  br label %out

out:                                              ; preds = %create_pool_err, %do.end
  %ret.1 = phi i32 [ -19, %do.end ], [ -12, %create_pool_err ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %list_add.exit, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out ], [ 0, %list_add.exit ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sram_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @sram_lock, i32 noundef 0) #7
  %node = getelementptr inbounds %struct.sram_bank_info, ptr %1, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.sram_bank_info, ptr %1, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %8 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.sram_bank_info, ptr %1, i32 0, i32 6, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @sram_lock) #7
  %gpool = getelementptr inbounds %struct.sram_bank_info, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %gpool to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gpool, align 4
  tail call void @gen_pool_destroy(ptr noundef %11) #7
  %sram_virt = getelementptr inbounds %struct.sram_bank_info, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %sram_virt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sram_virt, align 4
  tail call void @iounmap(ptr noundef %13) #7
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  tail call void @kfree(ptr noundef %15) #7
  tail call void @kfree(ptr noundef nonnull %1) #7
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_del.exit ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gen_pool_create(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_add_owner(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__ksymtab_sram_get_gpool, !1, !"__ksymtab_sram_get_gpool", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-mmp/sram.c", i32 59, i32 1}
!2 = !{ptr @__initcall__kmod_sram__183_163_sram_init1, !3, !"__initcall__kmod_sram__183_163_sram_init1", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-mmp/sram.c", i32 163, i32 1}
!4 = !{ptr @__UNIQUE_ID_file184, !5, !"__UNIQUE_ID_file184", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-mmp/sram.c", i32 165, i32 1}
!6 = !{ptr @__UNIQUE_ID_license185, !5, !"__UNIQUE_ID_license185", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../arch/arm/mach-mmp/sram.c", i32 36, i32 8}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @sram_lock, !8, !"sram_lock", i1 false, i1 false}
!11 = !{ptr @sram_bank_list, !12, !"sram_bank_list", i1 false, i1 false}
!12 = !{!"../arch/arm/mach-mmp/sram.c", i32 37, i32 8}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../arch/arm/mach-mmp/sram.c", i32 154, i32 11}
!15 = !{ptr @sram_driver, !16, !"sram_driver", i1 false, i1 false}
!16 = !{!"../arch/arm/mach-mmp/sram.c", i32 150, i32 31}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../arch/arm/mach-mmp/sram.c", i32 77, i32 3}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @sram_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @sram_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../arch/arm/mach-mmp/sram.c", i32 93, i32 3}
!27 = !{ptr @sram_probe._entry.8, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @sram_probe._entry_ptr.10, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../arch/arm/mach-mmp/sram.c", i32 101, i32 3}
!31 = !{ptr @sram_probe._entry.11, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @sram_probe._entry_ptr.13, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../arch/arm/mach-mmp/sram.c", i32 112, i32 2}
!35 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @sram_probe._entry.14, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @sram_probe._entry_ptr.17, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @sram_id_table, !39, !"sram_id_table", i1 false, i1 false}
!39 = !{!"../arch/arm/mach-mmp/sram.c", i32 144, i32 40}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i32 0, i32 33}
