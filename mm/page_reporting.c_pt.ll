; ModuleID = '/llk/IR_all_yes/mm/page_reporting.c_pt.bc'
source_filename = "../mm/page_reporting.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+page_reporting_register\22, \22a\22\09"
module asm "\09.weak\09__crc_page_reporting_register\09\09\09\09"
module asm "\09.long\09__crc_page_reporting_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_page_reporting_register:\09\09\09\09\09"
module asm "\09.asciz \09\22page_reporting_register\22\09\09\09\09\09"
module asm "__kstrtabns_page_reporting_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+page_reporting_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_page_reporting_unregister\09\09\09\09"
module asm "\09.long\09__crc_page_reporting_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_page_reporting_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22page_reporting_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_page_reporting_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.page_reporting_dev_info = type { ptr, %struct.delayed_work, %struct.atomic_t, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [96 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [90 x i8], %struct.zone_padding, [11 x %struct.atomic_t], [0 x %struct.atomic_t], [84 x i8] }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.zone_padding = type { [0 x i8] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }

@page_reporting_order = dso_local global { i32, [28 x i8] } { i32 12, [28 x i8] zeroinitializer }, align 32
@__param_str_page_reporting_order = internal constant [36 x i8] c"page_reporting.page_reporting_order\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@__param_page_reporting_order = internal constant %struct.kernel_param { ptr @__param_str_page_reporting_order, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @page_reporting_order } }, section "__param", align 4
@__UNIQUE_ID_page_reporting_ordertype240 = internal constant [50 x i8] c"page_reporting.parmtype=page_reporting_order:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_page_reporting_order241 = internal constant [66 x i8] c"page_reporting.parm=page_reporting_order:Set page reporting order\00", section ".modinfo", align 1
@pr_dev_info = internal global ptr null, section ".data..read_mostly", align 4
@__page_reporting_notify.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mm/page_reporting.c\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@page_reporting_enabled = dso_local global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } zeroinitializer, align 32
@page_reporting_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @page_reporting_mutex, i64 52), ptr getelementptr (i8, ptr @page_reporting_mutex, i64 52) }, ptr @page_reporting_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@page_reporting_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&(&prdev->work)->work)\00", [55 x i8] zeroinitializer }, align 32
@page_reporting_register.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&(&prdev->work)->timer\00", [41 x i8] zeroinitializer }, align 32
@page_reporting_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016Free page reporting enabled\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"page_reporting_register\00", [40 x i8] zeroinitializer }, align 32
@page_reporting_register._entry_ptr = internal global ptr @page_reporting_register._entry, section ".printk_index", align 4
@__kstrtab_page_reporting_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_page_reporting_register = external dso_local constant [0 x i8], align 1
@__ksymtab_page_reporting_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @page_reporting_register to i32), ptr @__kstrtab_page_reporting_register, ptr @__kstrtabns_page_reporting_register }, section "___ksymtab_gpl+page_reporting_register", align 4
@__kstrtab_page_reporting_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_page_reporting_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_page_reporting_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @page_reporting_unregister to i32), ptr @__kstrtab_page_reporting_unregister, ptr @__kstrtabns_page_reporting_unregister }, section "___ksymtab_gpl+page_reporting_unregister", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"page_reporting_mutex.wait_lock\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"page_reporting_mutex\00", [43 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"VM_BUG_ON_PAGE(1 && PageCompound(page))\00", [56 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant [21 x i8] c"page_reporting_order\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 14, i32 14 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 65, i32 10 }
@___asan_gen_.23 = private unnamed_addr constant [23 x i8] c"page_reporting_enabled\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 318, i32 1 }
@___asan_gen_.26 = private unnamed_addr constant [21 x i8] c"page_reporting_mutex\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 340, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 351, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 695, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 723, i32 2 }
@___asan_gen_.63 = private constant [23 x i8] c"../mm/page_reporting.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 317, i32 8 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 551, i32 1 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_page_reporting_order241, ptr @__UNIQUE_ID_page_reporting_ordertype240, ptr @__ksymtab_page_reporting_register, ptr @__ksymtab_page_reporting_unregister, ptr @__param_page_reporting_order, ptr @page_reporting_register._entry, ptr @page_reporting_register._entry_ptr, ptr @page_reporting_order, ptr @.str, ptr @.str.1, ptr @page_reporting_enabled, ptr @page_reporting_mutex, ptr @page_reporting_register.__key, ptr @.str.2, ptr @page_reporting_register.__key.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page_reporting_order to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page_reporting_enabled to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page_reporting_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page_reporting_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page_reporting_register.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page_reporting_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__page_reporting_notify() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !44) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !54
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = load volatile ptr, ptr @pr_dev_info, align 4
  %call = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b15 = load i1, ptr @__page_reporting_notify.__warned, align 1
  br i1 %.b15, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__page_reporting_notify.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 65, ptr noundef nonnull @.str.1) #8
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %4, null
  br i1 %tobool9.not, label %do.end7.if.end13_crit_edge, label %if.then12, !prof !55

do.end7.if.end13_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then12:                                        ; preds = %do.end7
  %state1.i = getelementptr inbounds %struct.page_reporting_dev_info, ptr %4, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %state1.i, i32 noundef 4) #8
  %5 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.i = icmp eq i32 %6, 1
  br i1 %cmp.i, label %if.then12.if.end13_crit_edge, label %if.end.i

if.then12.if.end13_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.end.i:                                         ; preds = %if.then12
  %call.i.i11.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state1.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !56
  tail call void @llvm.prefetch.p0(ptr %state1.i, i32 1, i32 3, i32 1) #8
  %7 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr %state1.i) #8, !srcloc !57
  %asmresult.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp4.not.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp4.not.i, label %if.end6.i, label %if.end.i.if.end13_crit_edge

if.end.i.if.end13_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %work.i = getelementptr inbounds %struct.page_reporting_dev_info, ptr %4, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i12.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %work.i, i32 noundef 200) #8
  br label %if.end13

if.end13:                                         ; preds = %if.end6.i, %if.end.i.if.end13_crit_edge, %if.then12.if.end13_crit_edge, %do.end7.if.end13_crit_edge
  %call.i16 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i16, label %if.end13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i19

if.end13.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i19:                                ; preds = %if.end13
  %call1.i17 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17)
  %tobool.not.i18 = icmp eq i32 %call1.i17, 0
  br i1 %tobool.not.i18, label %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i21

land.lhs.true.i19.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i21:                               ; preds = %land.lhs.true.i19
  %.b4.i20 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i20, label %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, label %if.then.i22

land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i22:                                      ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i22, %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, %if.end13.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !59
  %9 = tail call i32 @llvm.read_register.i32(metadata !44) #8
  %and.i.i.i.i.i23 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i23 to ptr
  %preempt_count.i.i.i.i24 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i24, align 4
  %sub.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i24, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @page_reporting_register(ptr noundef %prdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @page_reporting_mutex, i32 noundef 0) #8
  %0 = load volatile ptr, ptr @pr_dev_info, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %entry.err_out_crit_edge

entry.err_out_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out

if.end:                                           ; preds = %entry
  %order = getelementptr inbounds %struct.page_reporting_dev_info, ptr %prdev, i32 0, i32 3
  %1 = ptrtoint ptr %order to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %order, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool2.not = icmp eq i32 %2, 0
  %. = select i1 %tobool2.not, i32 11, i32 %2
  store i32 %., ptr @page_reporting_order, align 4
  %state = getelementptr inbounds %struct.page_reporting_dev_info, ptr %prdev, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #8
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 0, ptr %state, align 4
  %work = getelementptr inbounds %struct.page_reporting_dev_info, ptr %prdev, i32 0, i32 1
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #8
  %4 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.page_reporting_dev_info, ptr %prdev, i32 0, i32 1, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.2, ptr noundef nonnull @page_reporting_register.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry12 = getelementptr inbounds %struct.page_reporting_dev_info, ptr %prdev, i32 0, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %entry12 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry12, ptr %entry12, align 4
  %prev.i = getelementptr inbounds %struct.page_reporting_dev_info, ptr %prdev, i32 0, i32 1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry12, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.page_reporting_dev_info, ptr %prdev, i32 0, i32 1, i32 0, i32 2
  %7 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @page_reporting_process, ptr %func, align 4
  %timer = getelementptr inbounds %struct.page_reporting_dev_info, ptr %prdev, i32 0, i32 1, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.4, ptr noundef nonnull @page_reporting_register.__key.3) #8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %state, i32 noundef 4) #8
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i = icmp eq i32 %9, 1
  br i1 %cmp.i, label %if.end.__page_reporting_request.exit_crit_edge, label %if.end.i

if.end.__page_reporting_request.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %__page_reporting_request.exit

if.end.i:                                         ; preds = %if.end
  %call.i.i11.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !56
  tail call void @llvm.prefetch.p0(ptr %state, i32 1, i32 3, i32 1) #8
  %10 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr %state) #8, !srcloc !57
  %asmresult.i.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp4.not.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp4.not.i, label %if.end6.i, label %if.end.i.__page_reporting_request.exit_crit_edge

if.end.i.__page_reporting_request.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__page_reporting_request.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %11 = load ptr, ptr @system_wq, align 4
  %call.i.i12.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %work, i32 noundef 200) #8
  br label %__page_reporting_request.exit

__page_reporting_request.exit:                    ; preds = %if.end6.i, %if.end.i.__page_reporting_request.exit_crit_edge, %if.end.__page_reporting_request.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !60
  store volatile ptr %prdev, ptr @pr_dev_info, align 4
  %call = tail call i32 @static_key_count(ptr noundef nonnull @page_reporting_enabled) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp59 = icmp sgt i32 %call, 0
  br i1 %cmp59, label %__page_reporting_request.exit.err_out_crit_edge, label %if.then61

__page_reporting_request.exit.err_out_crit_edge:  ; preds = %__page_reporting_request.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out

if.then61:                                        ; preds = %__page_reporting_request.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @static_key_enable(ptr noundef nonnull @page_reporting_enabled) #8
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #11
  br label %err_out

err_out:                                          ; preds = %if.then61, %__page_reporting_request.exit.err_out_crit_edge, %entry.err_out_crit_edge
  %err.0 = phi i32 [ 0, %__page_reporting_request.exit.err_out_crit_edge ], [ 0, %if.then61 ], [ -16, %entry.err_out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @page_reporting_mutex) #8
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @page_reporting_process(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4
  %state1 = getelementptr i8, ptr %work, i32 100
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state1, i32 noundef 4) #8
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 2, ptr %state1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 640) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.err_out_crit_edge, label %if.end

entry.err_out_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out

if.end:                                           ; preds = %entry
  tail call void @sg_init_table(ptr noundef nonnull %call7.i.i, i32 noundef 32) #8
  %call3 = tail call ptr @first_online_pgdat() #8
  %tobool4.not42 = icmp eq ptr %call3, null
  br i1 %tobool4.not42, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %zone.043 = phi ptr [ %call9, %for.inc.for.body_crit_edge ], [ %call3, %if.end.for.body_crit_edge ]
  %arrayidx.i = getelementptr [3 x i32], ptr %zone.043, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %watermark_boost.i = getelementptr inbounds %struct.zone, ptr %zone.043, i32 0, i32 1
  %4 = ptrtoint ptr %watermark_boost.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %watermark_boost.i, align 4
  %add.i = add i32 %5, %3
  %6 = load i32, ptr @page_reporting_order, align 4
  %shl.i = shl i32 32, %6
  %add1.i = add i32 %add.i, %shl.i
  %call.i = tail call zeroext i1 @zone_watermark_ok(ptr noundef nonnull %zone.043, i32 noundef 0, i32 noundef %add1.i, i32 noundef 0, i32 noundef 128) #8
  br i1 %call.i, label %if.end.i, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end.i:                                         ; preds = %for.body
  %7 = load i32, ptr @page_reporting_order, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %7)
  %cmp74.i = icmp ult i32 %7, 12
  br i1 %cmp74.i, label %for.cond2.preheader.lr.ph.i, label %if.end.i.for.inc_crit_edge

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.cond2.preheader.lr.ph.i:                      ; preds = %if.end.i
  %lock.i.i = getelementptr inbounds %struct.zone, ptr %zone.043, i32 0, i32 22
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc11.i.for.cond2.preheader.i_crit_edge, %for.cond2.preheader.lr.ph.i
  %order.076.i = phi i32 [ %7, %for.cond2.preheader.lr.ph.i ], [ %inc12.i, %for.inc11.i.for.cond2.preheader.i_crit_edge ]
  %offset.075.i = phi i32 [ 32, %for.cond2.preheader.lr.ph.i ], [ %offset.6.i, %for.inc11.i.for.cond2.preheader.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.zone, ptr %zone.043, i32 0, i32 20, i32 %order.076.i
  %shl.i.i = shl i32 4096, %order.076.i
  %nr_free.i.i = getelementptr %struct.zone, ptr %zone.043, i32 0, i32 20, i32 %order.076.i, i32 1
  br label %if.end7.i

if.end7.i:                                        ; preds = %for.inc.i.if.end7.i_crit_edge, %for.cond2.preheader.i
  %offset.169.i84 = phi i32 [ %offset.075.i, %for.cond2.preheader.i ], [ %offset.6.i, %for.inc.i.if.end7.i_crit_edge ]
  %mt.070.i80 = phi i32 [ 0, %for.cond2.preheader.i ], [ %inc.i, %for.inc.i.if.end7.i_crit_edge ]
  %arrayidx1.i.i = getelementptr [6 x %struct.list_head], ptr %arrayidx.i.i, i32 0, i32 %mt.070.i80
  %8 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %arrayidx1.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %9, %arrayidx1.i.i
  br i1 %cmp.i.not.i.i, label %if.end7.i.for.inc.i_crit_edge, label %if.end.i.i

if.end7.i.for.inc.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i.i:                                       ; preds = %if.end7.i
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i) #8
  %10 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx1.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn121.i.i = load ptr, ptr %11, align 4
  %next.0122.i.i = getelementptr i8, ptr %.pn121.i.i, i32 -4
  %cmp.not123.i.i = icmp eq ptr %11, %arrayidx1.i.i
  br i1 %cmp.not123.i.i, label %if.end.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i.i.for.end.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i.i
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 -4
  %13 = ptrtoint ptr %nr_free.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr_free.i.i, align 4
  %sub.i.i = add i32 %14, 511
  %div101.i.i = lshr i32 %sub.i.i, 9
  %prev.i.i.i.i.i = getelementptr [6 x %struct.list_head], ptr %arrayidx.i.i, i32 0, i32 %mt.070.i80, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %offset.2.i = phi i32 [ %offset.169.i84, %for.body.lr.ph.i.i ], [ %offset.3.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %15 = phi ptr [ %11, %for.body.lr.ph.i.i ], [ %46, %for.inc.i.i.for.body.i.i_crit_edge ]
  %next.0126.i.i = phi ptr [ %next.0122.i.i, %for.body.lr.ph.i.i ], [ %next.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %page.0125.i.i = phi ptr [ %add.ptr.i.i, %for.body.lr.ph.i.i ], [ %next.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %budget.0124.i.i = phi i32 [ %div101.i.i, %for.body.lr.ph.i.i ], [ %budget.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %16 = ptrtoint ptr %page.0125.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %page.0125.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp.i.not.i.i.i = icmp eq i32 %17, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %PageReported.exit.i.i, !prof !55

if.then.i.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %page.0125.i.i, ptr noundef nonnull @.str.12) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 551, 0\0A.popsection", ""() #8, !srcloc !61
  unreachable

PageReported.exit.i.i:                            ; preds = %for.body.i.i
  %18 = ptrtoint ptr %page.0125.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %page.0125.i.i, align 4
  %20 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool9.not.i.i = icmp eq i32 %20, 0
  br i1 %tobool9.not.i.i, label %if.end11.i.i, label %PageReported.exit.i.i.for.inc.i.i_crit_edge

PageReported.exit.i.i.for.inc.i.i_crit_edge:      ; preds = %PageReported.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.end11.i.i:                                     ; preds = %PageReported.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget.0124.i.i)
  %cmp12.i.i = icmp slt i32 %budget.0124.i.i, 0
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i

if.then13.i.i:                                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state1, i32 noundef 4) #8
  %21 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 1, ptr %state1, align 4
  br label %for.end.i.i

if.end14.i.i:                                     ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset.2.i)
  %tobool15.not.i.i = icmp eq i32 %offset.2.i, 0
  br i1 %tobool15.not.i.i, label %if.end22.i.i, label %if.then16.i.i

if.then16.i.i:                                    ; preds = %if.end14.i.i
  %call17.i.i = tail call i32 @__isolate_free_page(ptr noundef %page.0125.i.i, i32 noundef %order.076.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %tobool18.not.i.i = icmp eq i32 %call17.i.i, 0
  br i1 %tobool18.not.i.i, label %if.then16.i.i.for.end.i.i_crit_edge, label %if.end20.i.i

if.then16.i.i.for.end.i.i_crit_edge:              ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.end20.i.i:                                     ; preds = %if.then16.i.i
  %dec.i.i = add i32 %offset.2.i, -1
  %arrayidx21.i.i = getelementptr %struct.scatterlist, ptr %call7.i.i, i32 %dec.i.i
  %22 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx21.i.i, align 4
  %24 = ptrtoint ptr %page.0125.i.i to i32
  %and2.i.i.i.i = and i32 %24, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %do.body11.i.i.i.i, label %do.body5.i.i.i.i, !prof !62

do.body5.i.i.i.i:                                 ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #8, !srcloc !63
  unreachable

do.body11.i.i.i.i:                                ; preds = %if.end20.i.i
  %and.i.i.i.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %sg_set_page.exit.i.i, label %do.body19.i.i.i.i, !prof !62

do.body19.i.i.i.i:                                ; preds = %do.body11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #8, !srcloc !64
  unreachable

sg_set_page.exit.i.i:                             ; preds = %do.body11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %and.i.i.i.i = and i32 %23, 3
  %or.i.i.i.i = or i32 %and.i.i.i.i, %24
  %25 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or.i.i.i.i, ptr %arrayidx21.i.i, align 4
  %offset1.i.i.i = getelementptr %struct.scatterlist, ptr %call7.i.i, i32 %dec.i.i, i32 1
  %26 = ptrtoint ptr %offset1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %offset1.i.i.i, align 4
  %length.i.i.i = getelementptr %struct.scatterlist, ptr %call7.i.i, i32 %dec.i.i, i32 2
  %27 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %shl.i.i, ptr %length.i.i.i, align 4
  br label %for.inc.i.i

if.end22.i.i:                                     ; preds = %if.end14.i.i
  %prev.i.i.i = getelementptr inbounds %struct.page, ptr %page.0125.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i.i, align 4
  %cmp.i102.not.i.i = icmp eq ptr %29, %arrayidx1.i.i
  br i1 %cmp.i102.not.i.i, label %if.end22.i.i.if.end28.i.i_crit_edge, label %if.then26.i.i

if.end22.i.i.if.end28.i.i_crit_edge:              ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i.i

if.then26.i.i:                                    ; preds = %if.end22.i.i
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %arrayidx1.i.i) #8
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then26.i.i.__list_del_entry.exit.i.i.i.i_crit_edge

if.then26.i.i.__list_del_entry.exit.i.i.i.i_crit_edge: ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %32 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx1.i.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %__list_del_entry.exit.i.i.i.i

__list_del_entry.exit.i.i.i.i:                    ; preds = %if.end.i.i.i.i.i, %if.then26.i.i.__list_del_entry.exit.i.i.i.i_crit_edge
  %36 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx1.i.i, ptr noundef %37, ptr noundef %15) #8
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %__list_del_entry.exit.i.i.i.i.if.end28.i.i_crit_edge

__list_del_entry.exit.i.i.i.i.if.end28.i.i_crit_edge: ; preds = %__list_del_entry.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i.i

if.end.i.i.i.i.i.i:                               ; preds = %__list_del_entry.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %arrayidx1.i.i, ptr %prev.i.i.i, align 4
  %39 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %15, ptr %arrayidx1.i.i, align 4
  %40 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev.i.i.i.i.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %arrayidx1.i.i, ptr %37, align 4
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %if.end.i.i.i.i.i.i, %__list_del_entry.exit.i.i.i.i.if.end28.i.i_crit_edge, %if.end22.i.i.if.end28.i.i_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i.i) #8
  %42 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr, align 4
  %call30.i.i = tail call i32 %43(ptr noundef %add.ptr, ptr noundef nonnull %call7.i.i, i32 noundef 32) #8
  %dec31.i.i = add nsw i32 %budget.0124.i.i, -1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i)
  %tobool33.not.i.i = icmp eq i32 %call30.i.i, 0
  tail call fastcc void @page_reporting_drain(ptr noundef nonnull %call7.i.i, i32 noundef 32, i1 noundef zeroext %tobool33.not.i.i) #8
  %44 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx1.i.i, align 4
  %add.ptr38.i.i = getelementptr i8, ptr %45, i32 -4
  br i1 %tobool33.not.i.i, label %if.end28.i.i.for.inc.i.i_crit_edge, label %if.end28.i.i.for.end.i.i_crit_edge

if.end28.i.i.for.end.i.i_crit_edge:               ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.end28.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end28.i.i.for.inc.i.i_crit_edge, %sg_set_page.exit.i.i, %PageReported.exit.i.i.for.inc.i.i_crit_edge
  %offset.3.i = phi i32 [ 32, %if.end28.i.i.for.inc.i.i_crit_edge ], [ %dec.i.i, %sg_set_page.exit.i.i ], [ %offset.2.i, %PageReported.exit.i.i.for.inc.i.i_crit_edge ]
  %budget.1.i.i = phi i32 [ %dec31.i.i, %if.end28.i.i.for.inc.i.i_crit_edge ], [ %budget.0124.i.i, %sg_set_page.exit.i.i ], [ %budget.0124.i.i, %PageReported.exit.i.i.for.inc.i.i_crit_edge ]
  %next.1.i.i = phi ptr [ %add.ptr38.i.i, %if.end28.i.i.for.inc.i.i_crit_edge ], [ %next.0126.i.i, %sg_set_page.exit.i.i ], [ %next.0126.i.i, %PageReported.exit.i.i.for.inc.i.i_crit_edge ]
  %46 = getelementptr inbounds %struct.page, ptr %next.1.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn.i.i = load ptr, ptr %46, align 4
  %next.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -4
  %cmp.not.i.i = icmp eq ptr %46, %arrayidx1.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.end28.i.i.for.end.i.i_crit_edge, %if.then16.i.i.for.end.i.i_crit_edge, %if.then13.i.i, %if.end.i.i.for.end.i.i_crit_edge
  %offset.4.i = phi i32 [ %offset.169.i84, %if.end.i.i.for.end.i.i_crit_edge ], [ %offset.2.i, %if.then13.i.i ], [ %offset.3.i, %for.inc.i.i.for.end.i.i_crit_edge ], [ 32, %if.end28.i.i.for.end.i.i_crit_edge ], [ %offset.2.i, %if.then16.i.i.for.end.i.i_crit_edge ]
  %err.2.i.i = phi i32 [ 0, %if.end.i.i.for.end.i.i_crit_edge ], [ 0, %if.then13.i.i ], [ 0, %for.inc.i.i.for.end.i.i_crit_edge ], [ %call30.i.i, %if.end28.i.i.for.end.i.i_crit_edge ], [ 0, %if.then16.i.i.for.end.i.i_crit_edge ]
  %next.2.i.i = phi ptr [ %next.0122.i.i, %if.end.i.i.for.end.i.i_crit_edge ], [ %page.0125.i.i, %if.then13.i.i ], [ %next.0.i.i, %for.inc.i.i.for.end.i.i_crit_edge ], [ %add.ptr38.i.i, %if.end28.i.i.for.end.i.i_crit_edge ], [ %page.0125.i.i, %if.then16.i.i.for.end.i.i_crit_edge ]
  %48 = getelementptr inbounds %struct.page, ptr %next.2.i.i, i32 0, i32 1
  %cmp48.i.i = icmp eq ptr %48, %arrayidx1.i.i
  br i1 %cmp48.i.i, label %for.end.i.i.page_reporting_cycle.exit.i_crit_edge, label %land.lhs.true.i.i

for.end.i.i.page_reporting_cycle.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %page_reporting_cycle.exit.i

land.lhs.true.i.i:                                ; preds = %for.end.i.i
  %prev.i104.i.i = getelementptr inbounds %struct.page, ptr %next.2.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %49 = ptrtoint ptr %prev.i104.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i104.i.i, align 4
  %cmp.i105.not.i.i = icmp eq ptr %50, %arrayidx1.i.i
  br i1 %cmp.i105.not.i.i, label %land.lhs.true.i.i.page_reporting_cycle.exit.i_crit_edge, label %if.then52.i.i

land.lhs.true.i.i.page_reporting_cycle.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %page_reporting_cycle.exit.i

if.then52.i.i:                                    ; preds = %land.lhs.true.i.i
  %call.i.i.i107.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %arrayidx1.i.i) #8
  br i1 %call.i.i.i107.i.i, label %if.end.i.i.i110.i.i, label %if.then52.i.i.__list_del_entry.exit.i.i113.i.i_crit_edge

if.then52.i.i.__list_del_entry.exit.i.i113.i.i_crit_edge: ; preds = %if.then52.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i.i113.i.i

if.end.i.i.i110.i.i:                              ; preds = %if.then52.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i108.i.i = getelementptr [6 x %struct.list_head], ptr %arrayidx.i.i, i32 0, i32 %mt.070.i80, i32 1
  %51 = ptrtoint ptr %prev.i.i.i108.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i.i.i108.i.i, align 4
  %53 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx1.i.i, align 4
  %prev1.i.i.i.i109.i.i = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %prev1.i.i.i.i109.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev1.i.i.i.i109.i.i, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %54, ptr %52, align 4
  br label %__list_del_entry.exit.i.i113.i.i

__list_del_entry.exit.i.i113.i.i:                 ; preds = %if.end.i.i.i110.i.i, %if.then52.i.i.__list_del_entry.exit.i.i113.i.i_crit_edge
  %57 = ptrtoint ptr %prev.i104.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i104.i.i, align 4
  %call.i.i.i.i112.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %arrayidx1.i.i, ptr noundef %58, ptr noundef %48) #8
  br i1 %call.i.i.i.i112.i.i, label %if.end.i.i.i.i115.i.i, label %__list_del_entry.exit.i.i113.i.i.page_reporting_cycle.exit.i_crit_edge

__list_del_entry.exit.i.i113.i.i.page_reporting_cycle.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i113.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %page_reporting_cycle.exit.i

if.end.i.i.i.i115.i.i:                            ; preds = %__list_del_entry.exit.i.i113.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %prev.i104.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %arrayidx1.i.i, ptr %prev.i104.i.i, align 4
  %60 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %48, ptr %arrayidx1.i.i, align 4
  %prev3.i.i.i.i114.i.i = getelementptr [6 x %struct.list_head], ptr %arrayidx.i.i, i32 0, i32 %mt.070.i80, i32 1
  %61 = ptrtoint ptr %prev3.i.i.i.i114.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev3.i.i.i.i114.i.i, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %arrayidx1.i.i, ptr %58, align 4
  br label %page_reporting_cycle.exit.i

page_reporting_cycle.exit.i:                      ; preds = %if.end.i.i.i.i115.i.i, %__list_del_entry.exit.i.i113.i.i.page_reporting_cycle.exit.i_crit_edge, %land.lhs.true.i.i.page_reporting_cycle.exit.i_crit_edge, %for.end.i.i.page_reporting_cycle.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2.i.i)
  %tobool.not.i = icmp eq i32 %err.2.i.i, 0
  br i1 %tobool.not.i, label %page_reporting_cycle.exit.i.for.inc.i_crit_edge, label %page_reporting_cycle.exit.i.for.end_crit_edge

page_reporting_cycle.exit.i.for.end_crit_edge:    ; preds = %page_reporting_cycle.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

page_reporting_cycle.exit.i.for.inc.i_crit_edge:  ; preds = %page_reporting_cycle.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %page_reporting_cycle.exit.i.for.inc.i_crit_edge, %if.end7.i.for.inc.i_crit_edge
  %offset.6.i = phi i32 [ %offset.4.i, %page_reporting_cycle.exit.i.for.inc.i_crit_edge ], [ %offset.169.i84, %if.end7.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %mt.070.i80, 1
  %cmp.i.i = icmp eq i32 %inc.i, 5
  br i1 %cmp.i.i, label %for.inc11.i, label %for.inc.i.if.end7.i_crit_edge

for.inc.i.if.end7.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

for.inc11.i:                                      ; preds = %for.inc.i
  %inc12.i = add nuw nsw i32 %order.076.i, 1
  %exitcond85.not.i = icmp eq i32 %inc12.i, 12
  br i1 %exitcond85.not.i, label %for.end13.i, label %for.inc11.i.for.cond2.preheader.i_crit_edge

for.inc11.i.for.cond2.preheader.i_crit_edge:      ; preds = %for.inc11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond2.preheader.i

for.end13.i:                                      ; preds = %for.inc11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %offset.6.i)
  %tobool14.not.i = icmp eq i32 %offset.6.i, 32
  br i1 %tobool14.not.i, label %for.end13.i.for.inc_crit_edge, label %page_reporting_process_zone.exit

for.end13.i.for.inc_crit_edge:                    ; preds = %for.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

page_reporting_process_zone.exit:                 ; preds = %for.end13.i
  %sub.i = sub i32 32, %offset.6.i
  %arrayidx16.i = getelementptr %struct.scatterlist, ptr %call7.i.i, i32 %offset.6.i
  %63 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %add.ptr, align 4
  %call17.i = tail call i32 %64(ptr noundef %add.ptr, ptr noundef %arrayidx16.i, i32 noundef %sub.i) #8
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  tail call fastcc void @page_reporting_drain(ptr noundef %arrayidx16.i, i32 noundef %sub.i, i1 noundef zeroext %tobool18.not.i) #8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i.i) #8
  br i1 %tobool18.not.i, label %page_reporting_process_zone.exit.for.inc_crit_edge, label %page_reporting_process_zone.exit.for.end_crit_edge

page_reporting_process_zone.exit.for.end_crit_edge: ; preds = %page_reporting_process_zone.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

page_reporting_process_zone.exit.for.inc_crit_edge: ; preds = %page_reporting_process_zone.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %page_reporting_process_zone.exit.for.inc_crit_edge, %for.end13.i.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %call9 = tail call ptr @next_zone(ptr noundef nonnull %zone.043) #8
  %tobool4.not = icmp eq ptr %call9, null
  br i1 %tobool4.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %page_reporting_process_zone.exit.for.end_crit_edge, %page_reporting_cycle.exit.i.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %err_out

err_out:                                          ; preds = %for.end, %entry.err_out_crit_edge
  %call.i.i26 = tail call zeroext i1 @__kasan_check_write(ptr noundef %state1, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @llvm.prefetch.p0(ptr %state1, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %err_out
  %65 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %state1, ptr %state1, i32 2, i32 0, ptr elementtype(i32) %state1) #8, !srcloc !66
  %asmresult.i.i.i = extractvalue { i32, i32 } %65, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %65, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult3.i.i.i)
  %cmp = icmp eq i32 %asmresult3.i.i.i, 1
  br i1 %cmp, label %if.then12, label %atomic_cmpxchg.exit.if.end15_crit_edge

atomic_cmpxchg.exit.if.end15_crit_edge:           ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then12:                                        ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %66 = load ptr, ptr @system_wq, align 4
  %call.i.i27 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %66, ptr noundef %work, i32 noundef 200) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %atomic_cmpxchg.exit.if.end15_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @static_key_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @page_reporting_unregister(ptr noundef %prdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @page_reporting_mutex, i32 noundef 0) #8
  %0 = load volatile ptr, ptr @pr_dev_info, align 4
  %cmp = icmp eq ptr %0, %prdev
  br i1 %cmp, label %do.body7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  store volatile ptr null, ptr @pr_dev_info, align 4
  tail call void @synchronize_rcu() #8
  %work = getelementptr inbounds %struct.page_reporting_dev_info, ptr %prdev, i32 0, i32 1
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #8
  br label %if.end

if.end:                                           ; preds = %do.body7, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @page_reporting_mutex) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @first_online_pgdat() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @next_zone(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @zone_watermark_ok(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @page_reporting_drain(ptr noundef %sgl, i32 noundef %nents, i1 noundef zeroext %reported) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %cleanup.do.body_crit_edge, %entry
  %sg.0 = phi ptr [ %sgl, %entry ], [ %call10, %cleanup.do.body_crit_edge ]
  %0 = ptrtoint ptr %sg.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sg.0, align 4
  %and.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !62

do.body2.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #8, !srcloc !68
  unreachable

sg_page.exit:                                     ; preds = %do.body
  %and.i5 = and i32 %1, -4
  %2 = inttoptr i32 %and.i5 to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %3 = load ptr, ptr @mem_map, align 4
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.sub = sub i32 %and.i5, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %4 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %sub.ptr.div, %4
  %call1 = tail call i32 @get_pfnblock_flags_mask(ptr noundef %2, i32 noundef %add, i32 noundef 7) #8
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg.0, i32 0, i32 2
  %5 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %length, align 4
  %dec.i = add i32 %6, -1
  %shr.i = lshr i32 %dec.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i)
  %tobool.not.i.i = icmp ult i32 %dec.i, 4096
  %7 = tail call i32 @llvm.ctlz.i32(i32 %shr.i, i1 true) #8, !range !69
  %sub.i.i = sub nuw nsw i32 32, %7
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  tail call void @__putback_isolated_page(ptr noundef %2, i32 noundef %cond.i.i, i32 noundef %call1) #8
  br i1 %reported, label %if.end, label %sg_page.exit.cleanup_crit_edge

sg_page.exit.cleanup_crit_edge:                   ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sg_page.exit
  %8 = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %and.i = and i32 %10, -268435328
  call void @__sanitizer_cov_trace_const_cmp4(i32 -268435456, i32 %and.i)
  %cmp.i1.not = icmp eq i32 %and.i, -268435456
  br i1 %cmp.i1.not, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %private.i = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 1, i32 0, i32 3
  %11 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %private.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %cond.i.i)
  %cmp = icmp eq i32 %12, %cond.i.i
  br i1 %cmp, label %if.then6, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6:                                         ; preds = %land.lhs.true
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %2, align 4
  %15 = and i32 %14, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i2 = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i2, label %PageCompound.exit.i, label %if.then6.if.then.i4_crit_edge

if.then6.if.then.i4_crit_edge:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i4

PageCompound.exit.i:                              ; preds = %if.then6
  %16 = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %and.i.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i3 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i3, label %do.body7.i, label %PageCompound.exit.i.if.then.i4_crit_edge, !prof !62

PageCompound.exit.i.if.then.i4_crit_edge:         ; preds = %PageCompound.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i4

if.then.i4:                                       ; preds = %PageCompound.exit.i.if.then.i4_crit_edge, %if.then6.if.then.i4_crit_edge
  %19 = inttoptr i32 %and.i5 to ptr
  tail call void @dump_page(ptr noundef %19, ptr noundef nonnull @.str.13) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 551, 0\0A.popsection", ""() #8, !srcloc !70
  unreachable

do.body7.i:                                       ; preds = %PageCompound.exit.i
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp.i.not.i = icmp eq i32 %21, -1
  br i1 %cmp.i.not.i, label %if.then16.i, label %__SetPageReported.exit, !prof !55

if.then16.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = inttoptr i32 %and.i5 to ptr
  tail call void @dump_page(ptr noundef %22, ptr noundef nonnull @.str.12) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 551, 0\0A.popsection", ""() #8, !srcloc !71
  unreachable

__SetPageReported.exit:                           ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i.i = or i32 %21, 4
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or.i.i, ptr %2, align 4
  br label %cleanup

cleanup:                                          ; preds = %__SetPageReported.exit, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sg_page.exit.cleanup_crit_edge
  %call10 = tail call ptr @sg_next(ptr noundef %sg.0) #8
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %do.end, label %cleanup.do.body_crit_edge

cleanup.do.body_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @sg_init_table(ptr noundef %sgl, i32 noundef %nents) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__isolate_free_page(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_pfnblock_flags_mask(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__putback_isolated_page(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !11, !13, !15, !16, !17, !18, !20, !21, !22, !23, !25, !27, !29, !30, !32, !33, !34, !36, !37, !39, !40, !41, !43}
!llvm.named.register.sp = !{!44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @page_reporting_order, !1, !"page_reporting_order", i1 false, i1 false}
!1 = !{!"../mm/page_reporting.c", i32 14, i32 14}
!2 = !{ptr @__param_page_reporting_order, !3, !"__param_page_reporting_order", i1 false, i1 false}
!3 = !{!"../mm/page_reporting.c", i32 15, i32 1}
!4 = !{ptr @__UNIQUE_ID_page_reporting_ordertype240, !3, !"__UNIQUE_ID_page_reporting_ordertype240", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_page_reporting_order241, !6, !"__UNIQUE_ID_page_reporting_order241", i1 false, i1 false}
!6 = !{!"../mm/page_reporting.c", i32 16, i32 1}
!7 = distinct !{null, !8, !"__warned", i1 false, i1 false}
!8 = !{!"../mm/page_reporting.c", i32 65, i32 10}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @page_reporting_enabled, !12, !"page_reporting_enabled", i1 false, i1 false}
!12 = !{!"../mm/page_reporting.c", i32 318, i32 1}
!13 = !{ptr @page_reporting_register.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../mm/page_reporting.c", i32 340, i32 2}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @page_reporting_register.__key.3, !14, !"__key", i1 false, i1 false}
!17 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../mm/page_reporting.c", i32 351, i32 3}
!20 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @page_reporting_register._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @page_reporting_register._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @__ksymtab_page_reporting_register, !24, !"__ksymtab_page_reporting_register", i1 false, i1 false}
!24 = !{!"../mm/page_reporting.c", i32 358, i32 1}
!25 = !{ptr @__ksymtab_page_reporting_unregister, !26, !"__ksymtab_page_reporting_unregister", i1 false, i1 false}
!26 = !{!"../mm/page_reporting.c", i32 375, i32 1}
!27 = !{ptr @pr_dev_info, !28, !"pr_dev_info", i1 false, i1 false}
!28 = !{!"../mm/page_reporting.c", i32 19, i32 46}
!29 = !{ptr @__param_str_page_reporting_order, !3, !"__param_str_page_reporting_order", i1 false, i1 false}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!32 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!36 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../mm/page_reporting.c", i32 317, i32 8}
!39 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @page_reporting_mutex, !38, !"page_reporting_mutex", i1 false, i1 false}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../include/linux/page-flags.h", i32 551, i32 1}
!43 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!44 = !{!"sp"}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{i64 2150009172}
!55 = !{!"branch_weights", i32 1, i32 2000}
!56 = !{i64 2148933739}
!57 = !{i64 1180607, i64 1180624, i64 1180648, i64 1180674, i64 1180692}
!58 = !{i64 2148934109}
!59 = !{i64 2150009438}
!60 = !{i64 2153995145}
!61 = !{i64 2150965702, i64 2150966193, i64 2150965739, i64 2150965795, i64 2150965829, i64 2150965853, i64 2150965894, i64 2150965915, i64 2150965943, i64 2150965977}
!62 = !{!"branch_weights", i32 2000, i32 1}
!63 = !{i64 2153351898, i64 2153352390, i64 2153351935, i64 2153351991, i64 2153352025, i64 2153352049, i64 2153352090, i64 2153352111, i64 2153352139, i64 2153352173}
!64 = !{i64 2153353508, i64 2153354000, i64 2153353545, i64 2153353601, i64 2153353635, i64 2153353659, i64 2153353700, i64 2153353721, i64 2153353749, i64 2153353783}
!65 = !{i64 2148775686}
!66 = !{i64 1159352, i64 1159376, i64 1159397, i64 1159414, i64 1159431}
!67 = !{i64 2148775912}
!68 = !{i64 2153355456, i64 2153355948, i64 2153355493, i64 2153355549, i64 2153355583, i64 2153355607, i64 2153355648, i64 2153355669, i64 2153355697, i64 2153355731}
!69 = !{i32 0, i32 33}
!70 = !{i64 2150968576, i64 2150969067, i64 2150968613, i64 2150968669, i64 2150968703, i64 2150968727, i64 2150968768, i64 2150968789, i64 2150968817, i64 2150968851}
!71 = !{i64 2150970517, i64 2150971008, i64 2150970554, i64 2150970610, i64 2150970644, i64 2150970668, i64 2150970709, i64 2150970730, i64 2150970758, i64 2150970792}
