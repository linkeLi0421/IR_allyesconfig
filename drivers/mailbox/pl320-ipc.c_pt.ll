; ModuleID = '/llk/IR_all_yes/drivers/mailbox/pl320-ipc.c_pt.bc'
source_filename = "../drivers/mailbox/pl320-ipc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+pl320_ipc_transmit\22, \22a\22\09"
module asm "\09.weak\09__crc_pl320_ipc_transmit\09\09\09\09"
module asm "\09.long\09__crc_pl320_ipc_transmit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pl320_ipc_transmit:\09\09\09\09\09"
module asm "\09.asciz \09\22pl320_ipc_transmit\22\09\09\09\09\09"
module asm "__kstrtabns_pl320_ipc_transmit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pl320_ipc_register_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_pl320_ipc_register_notifier\09\09\09\09"
module asm "\09.long\09__crc_pl320_ipc_register_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pl320_ipc_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22pl320_ipc_register_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_pl320_ipc_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pl320_ipc_unregister_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_pl320_ipc_unregister_notifier\09\09\09\09"
module asm "\09.long\09__crc_pl320_ipc_unregister_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pl320_ipc_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22pl320_ipc_unregister_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_pl320_ipc_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.amba_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amba_id = type { i32, i32, ptr }
%struct.amba_device = type { %struct.device, %struct.resource, ptr, %struct.device_dma_parameters, i32, i32, %struct.amba_cs_uci_id, [9 x i32], ptr }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.amba_cs_uci_id = type { i32, i32, i32, ptr }

@ipc_m1_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ipc_m1_lock, i64 52), ptr getelementptr (i8, ptr @ipc_m1_lock, i64 52) }, ptr @ipc_m1_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@ipc_completion = internal global { %struct.completion, [40 x i8] } { %struct.completion { i32 0, %struct.swait_queue_head { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @ipc_completion, i64 48), ptr getelementptr (i8, ptr @ipc_completion, i64 48) } } }, [40 x i8] zeroinitializer }, align 32
@__kstrtab_pl320_ipc_transmit = external dso_local constant [0 x i8], align 1
@__kstrtabns_pl320_ipc_transmit = external dso_local constant [0 x i8], align 1
@__ksymtab_pl320_ipc_transmit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pl320_ipc_transmit to i32), ptr @__kstrtab_pl320_ipc_transmit, ptr @__kstrtabns_pl320_ipc_transmit }, section "___ksymtab_gpl+pl320_ipc_transmit", align 4
@ipc_notifier = internal global { %struct.atomic_notifier_head, [48 x i8] } { %struct.atomic_notifier_head { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, ptr null }, [48 x i8] zeroinitializer }, align 32
@__kstrtab_pl320_ipc_register_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_pl320_ipc_register_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_pl320_ipc_register_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pl320_ipc_register_notifier to i32), ptr @__kstrtab_pl320_ipc_register_notifier, ptr @__kstrtabns_pl320_ipc_register_notifier }, section "___ksymtab_gpl+pl320_ipc_register_notifier", align 4
@__kstrtab_pl320_ipc_unregister_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_pl320_ipc_unregister_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_pl320_ipc_unregister_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pl320_ipc_unregister_notifier to i32), ptr @__kstrtab_pl320_ipc_unregister_notifier, ptr @__kstrtabns_pl320_ipc_unregister_notifier }, section "___ksymtab_gpl+pl320_ipc_unregister_notifier", align 4
@__initcall__kmod_pl320_ipc__288_187_ipc_init4 = internal global ptr @ipc_init, section ".initcall4.init", align 4
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ipc_m1_lock.wait_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ipc_m1_lock\00", [20 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"(ipc_completion).wait.lock\00", [37 x i8] zeroinitializer }, align 32
@ipc_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ipc_notifier.lock\00", [46 x i8] zeroinitializer }, align 32
@pl320_driver = internal global { %struct.amba_driver, [36 x i8] } { %struct.amba_driver { %struct.device_driver { ptr @.str.5, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @pl320_probe, ptr null, ptr null, ptr @pl320_ids }, [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pl320\00", [26 x i8] zeroinitializer }, align 32
@pl320_ids = internal global { [2 x %struct.amba_id], [40 x i8] } { [2 x %struct.amba_id] [%struct.amba_id { i32 267040, i32 1048575, ptr null }, %struct.amba_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [12 x i8] c"ipc_m1_lock\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [15 x i8] c"ipc_completion\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [13 x i8] c"ipc_notifier\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 44, i32 8 }
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 87, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 45, i32 8 }
@___asan_gen_.30 = private unnamed_addr constant [9 x i8] c"ipc_base\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 42, i32 22 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 46, i32 8 }
@___asan_gen_.36 = private unnamed_addr constant [13 x i8] c"pl320_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 175, i32 27 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 177, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant [10 x i8] c"pl320_ids\00", align 1
@___asan_gen_.43 = private constant [31 x i8] c"../drivers/mailbox/pl320-ipc.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 167, i32 23 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__initcall__kmod_pl320_ipc__288_187_ipc_init4, ptr @__ksymtab_pl320_ipc_register_notifier, ptr @__ksymtab_pl320_ipc_transmit, ptr @__ksymtab_pl320_ipc_unregister_notifier, ptr @ipc_m1_lock, ptr @ipc_completion, ptr @ipc_notifier, ptr @.str, ptr @.str.1, ptr @init_completion.__key, ptr @.str.2, ptr @.str.3, ptr @ipc_base, ptr @.str.4, ptr @pl320_driver, ptr @.str.5, ptr @pl320_ids], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipc_m1_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipc_completion to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipc_notifier to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipc_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl320_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl320_ids to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pl320_ipc_transmit(ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @ipc_m1_lock, i32 noundef 0) #5
  store i32 0, ptr @ipc_completion, align 4
  tail call void @__init_swait_queue_head(ptr noundef getelementptr inbounds (%struct.completion, ptr @ipc_completion, i32 0, i32 1), ptr noundef nonnull @.str.2, ptr noundef nonnull @init_completion.__key) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #5
  %3 = load ptr, ptr @ipc_base, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #5, !srcloc !40
  %arrayidx.1.i = getelementptr i32, ptr %data, i32 1
  %4 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.1.i, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #5
  %7 = load ptr, ptr @ipc_base, align 4
  %add.ptr.1.i = getelementptr i8, ptr %7, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1.i, i32 %6) #5, !srcloc !40
  %arrayidx.2.i = getelementptr i32, ptr %data, i32 2
  %8 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.2.i, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #5
  %11 = load ptr, ptr @ipc_base, align 4
  %add.ptr.2.i = getelementptr i8, ptr %11, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.2.i, i32 %10) #5, !srcloc !40
  %arrayidx.3.i = getelementptr i32, ptr %data, i32 3
  %12 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.3.i, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  %15 = load ptr, ptr @ipc_base, align 4
  %add.ptr.3.i = getelementptr i8, ptr %15, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.3.i, i32 %14) #5, !srcloc !40
  %arrayidx.4.i = getelementptr i32, ptr %data, i32 4
  %16 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.4.i, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #5
  %19 = load ptr, ptr @ipc_base, align 4
  %add.ptr.4.i = getelementptr i8, ptr %19, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.4.i, i32 %18) #5, !srcloc !40
  %arrayidx.5.i = getelementptr i32, ptr %data, i32 5
  %20 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.5.i, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #5
  %23 = load ptr, ptr @ipc_base, align 4
  %add.ptr.5.i = getelementptr i8, ptr %23, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.5.i, i32 %22) #5, !srcloc !40
  %arrayidx.6.i = getelementptr i32, ptr %data, i32 6
  %24 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.6.i, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #5
  %27 = load ptr, ptr @ipc_base, align 4
  %add.ptr.6.i = getelementptr i8, ptr %27, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.6.i, i32 %26) #5, !srcloc !40
  %28 = load ptr, ptr @ipc_base, align 4
  %add.ptr5.i = getelementptr i8, ptr %28, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 16777216) #5, !srcloc !40
  %call1 = tail call i32 @wait_for_completion_timeout(ptr noundef nonnull @ipc_completion, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %29 = load ptr, ptr @ipc_base, align 4
  %add.ptr.i5 = getelementptr i8, ptr %29, i32 100
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5) #5, !srcloc !41
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #5
  %32 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %data, align 4
  %33 = load ptr, ptr @ipc_base, align 4
  %add.ptr.1.i6 = getelementptr i8, ptr %33, i32 104
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1.i6) #5, !srcloc !41
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #5
  %36 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %arrayidx.1.i, align 4
  %37 = load ptr, ptr @ipc_base, align 4
  %add.ptr.2.i8 = getelementptr i8, ptr %37, i32 108
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2.i8) #5, !srcloc !41
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #5
  %40 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx.2.i, align 4
  %41 = load ptr, ptr @ipc_base, align 4
  %add.ptr.3.i10 = getelementptr i8, ptr %41, i32 112
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.3.i10) #5, !srcloc !41
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #5
  %44 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %arrayidx.3.i, align 4
  %45 = load ptr, ptr @ipc_base, align 4
  %add.ptr.4.i12 = getelementptr i8, ptr %45, i32 116
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.4.i12) #5, !srcloc !41
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #5
  %48 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %arrayidx.4.i, align 4
  %49 = load ptr, ptr @ipc_base, align 4
  %add.ptr.5.i14 = getelementptr i8, ptr %49, i32 120
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.5.i14) #5, !srcloc !41
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #5
  %52 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %arrayidx.5.i, align 4
  %53 = load ptr, ptr @ipc_base, align 4
  %add.ptr.6.i16 = getelementptr i8, ptr %53, i32 124
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.6.i16) #5, !srcloc !41
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #5
  %56 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %arrayidx.6.i, align 4
  %57 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.1.i, align 4
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  %ret.0 = phi i32 [ %58, %if.end ], [ -110, %entry.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @ipc_m1_lock) #5
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pl320_ipc_register_notifier(ptr noundef %nb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @atomic_notifier_chain_register(ptr noundef nonnull @ipc_notifier, ptr noundef %nb) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pl320_ipc_unregister_notifier(ptr noundef %nb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @atomic_notifier_chain_unregister(ptr noundef nonnull @ipc_notifier, ptr noundef %nb) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ipc_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amba_driver_register(ptr noundef nonnull @pl320_driver) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amba_driver_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl320_probe(ptr nocapture noundef readonly %adev, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %res = getelementptr inbounds %struct.amba_device, ptr %adev, i32 0, i32 1
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %res, align 8
  %end.i = getelementptr inbounds %struct.amba_device, ptr %adev, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %1
  %add.i = add i32 %sub.i, %3
  %call2 = tail call ptr @ioremap(i32 noundef %1, i32 noundef %add.i) #5
  store ptr %call2, ptr @ipc_base, align 4
  %cmp = icmp eq ptr %call2, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %call2, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !40
  %irq = getelementptr inbounds %struct.amba_device, ptr %adev, i32 0, i32 7
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %if.end.dev_name.exit_crit_edge ]
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %5, ptr noundef nonnull @ipc_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5 = icmp slt i32 %call.i, 0
  %10 = load ptr, ptr @ipc_base, align 4
  br i1 %cmp5, label %err, label %if.end7

if.end7:                                          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr8 = getelementptr i8, ptr %10, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 33554432) #5, !srcloc !40
  %11 = load ptr, ptr @ipc_base, align 4
  %add.ptr9 = getelementptr i8, ptr %11, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 16777216) #5, !srcloc !40
  %12 = load ptr, ptr @ipc_base, align 4
  %add.ptr10 = getelementptr i8, ptr %12, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 50331648) #5, !srcloc !40
  %13 = load ptr, ptr @ipc_base, align 4
  %add.ptr11 = getelementptr i8, ptr %13, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 16777216) #5, !srcloc !40
  %14 = load ptr, ptr @ipc_base, align 4
  %add.ptr12 = getelementptr i8, ptr %14, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 33554432) #5, !srcloc !40
  %15 = load ptr, ptr @ipc_base, align 4
  %add.ptr13 = getelementptr i8, ptr %15, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 50331648) #5, !srcloc !40
  br label %cleanup

err:                                              ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @iounmap(ptr noundef %10) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %err ], [ 0, %if.end7 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipc_handler(i32 noundef %irq, ptr nocapture noundef readnone %dev) #0 align 64 {
entry:
  %data = alloca [7 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %data) #5
  %0 = getelementptr inbounds [7 x i32], ptr %data, i32 0, i32 1
  %1 = getelementptr inbounds [7 x i32], ptr %data, i32 0, i32 2
  %2 = getelementptr inbounds [7 x i32], ptr %data, i32 0, i32 3
  %3 = getelementptr inbounds [7 x i32], ptr %data, i32 0, i32 4
  %4 = getelementptr inbounds [7 x i32], ptr %data, i32 0, i32 5
  %5 = getelementptr inbounds [7 x i32], ptr %data, i32 0, i32 6
  %6 = load ptr, ptr @ipc_base, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 2056
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !41
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %and = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %9 = load ptr, ptr @ipc_base, align 4
  %add.ptr1 = getelementptr i8, ptr %9, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 0) #5, !srcloc !40
  tail call void @complete(ptr noundef nonnull @ipc_completion) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and2 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end10_crit_edge, label %if.then4

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %10 = load ptr, ptr @ipc_base, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 164
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !41
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #5
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %data, align 4
  %14 = load ptr, ptr @ipc_base, align 4
  %add.ptr.1.i = getelementptr i8, ptr %14, i32 168
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1.i) #5, !srcloc !41
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #5
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %0, align 4
  %18 = load ptr, ptr @ipc_base, align 4
  %add.ptr.2.i = getelementptr i8, ptr %18, i32 172
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2.i) #5, !srcloc !41
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #5
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %1, align 4
  %22 = load ptr, ptr @ipc_base, align 4
  %add.ptr.3.i = getelementptr i8, ptr %22, i32 176
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.3.i) #5, !srcloc !41
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #5
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %2, align 4
  %26 = load ptr, ptr @ipc_base, align 4
  %add.ptr.4.i = getelementptr i8, ptr %26, i32 180
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.4.i) #5, !srcloc !41
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #5
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %3, align 4
  %30 = load ptr, ptr @ipc_base, align 4
  %add.ptr.5.i = getelementptr i8, ptr %30, i32 184
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.5.i) #5, !srcloc !41
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #5
  %33 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %4, align 4
  %34 = load ptr, ptr @ipc_base, align 4
  %add.ptr.6.i = getelementptr i8, ptr %34, i32 188
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.6.i) #5, !srcloc !41
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #5
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %5, align 4
  %call8 = call i32 @atomic_notifier_call_chain(ptr noundef nonnull @ipc_notifier, i32 noundef %12, ptr noundef %0) #5
  %38 = load ptr, ptr @ipc_base, align 4
  %add.ptr9 = getelementptr i8, ptr %38, i32 160
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 33554432) #5, !srcloc !40
  br label %if.end10

if.end10:                                         ; preds = %if.then4, %if.end.if.end10_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %data) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !14, !15, !17, !18, !20, !22, !23, !25, !27, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__ksymtab_pl320_ipc_transmit, !1, !"__ksymtab_pl320_ipc_transmit", i1 false, i1 false}
!1 = !{!"../drivers/mailbox/pl320-ipc.c", i32 97, i32 1}
!2 = !{ptr @__ksymtab_pl320_ipc_register_notifier, !3, !"__ksymtab_pl320_ipc_register_notifier", i1 false, i1 false}
!3 = !{!"../drivers/mailbox/pl320-ipc.c", i32 122, i32 1}
!4 = !{ptr @__ksymtab_pl320_ipc_unregister_notifier, !5, !"__ksymtab_pl320_ipc_unregister_notifier", i1 false, i1 false}
!5 = !{!"../drivers/mailbox/pl320-ipc.c", i32 128, i32 1}
!6 = !{ptr @__initcall__kmod_pl320_ipc__288_187_ipc_init4, !7, !"__initcall__kmod_pl320_ipc__288_187_ipc_init4", i1 false, i1 false}
!7 = !{!"../drivers/mailbox/pl320-ipc.c", i32 187, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mailbox/pl320-ipc.c", i32 44, i32 8}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ipc_m1_lock, !9, !"ipc_m1_lock", i1 false, i1 false}
!12 = !{ptr @init_completion.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../include/linux/completion.h", i32 87, i32 2}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/mailbox/pl320-ipc.c", i32 45, i32 8}
!17 = !{ptr @ipc_completion, !16, !"ipc_completion", i1 false, i1 false}
!18 = !{ptr @ipc_base, !19, !"ipc_base", i1 false, i1 false}
!19 = !{!"../drivers/mailbox/pl320-ipc.c", i32 42, i32 22}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mailbox/pl320-ipc.c", i32 46, i32 8}
!22 = !{ptr @ipc_notifier, !21, !"ipc_notifier", i1 false, i1 false}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/mailbox/pl320-ipc.c", i32 177, i32 11}
!25 = !{ptr @pl320_driver, !26, !"pl320_driver", i1 false, i1 false}
!26 = !{!"../drivers/mailbox/pl320-ipc.c", i32 175, i32 27}
!27 = distinct !{null, !28, !"ipc_irq", i1 false, i1 false}
!28 = !{!"../drivers/mailbox/pl320-ipc.c", i32 43, i32 12}
!29 = !{ptr @pl320_ids, !30, !"pl320_ids", i1 false, i1 false}
!30 = !{!"../drivers/mailbox/pl320-ipc.c", i32 167, i32 23}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{i64 2978706}
!41 = !{i64 2979124}
