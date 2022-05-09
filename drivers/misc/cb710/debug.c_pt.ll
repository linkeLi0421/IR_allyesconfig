; ModuleID = '/llk/IR_all_yes/drivers/misc/cb710/debug.c_pt.bc'
source_filename = "../drivers/misc/cb710/debug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+cb710_dump_regs\22, \22a\22\09"
module asm "\09.weak\09__crc_cb710_dump_regs\09\09\09\09"
module asm "\09.long\09__crc_cb710_dump_regs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cb710_dump_regs:\09\09\09\09\09"
module asm "\09.asciz \09\22cb710_dump_regs\22\09\09\09\09\09"
module asm "__kstrtabns_cb710_dump_regs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cb710_chip = type { ptr, ptr, i32, %struct.atomic_t, i32, i32, %struct.spinlock, [0 x %struct.cb710_slot] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cb710_slot = type { %struct.platform_device, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.71, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.71 = type { ptr }

@__kstrtab_cb710_dump_regs = external dso_local constant [0 x i8], align 1
@__kstrtabns_cb710_dump_regs = external dso_local constant [0 x i8], align 1
@__ksymtab_cb710_dump_regs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cb710_dump_regs to i32), ptr @__kstrtab_cb710_dump_regs, ptr @__kstrtabns_cb710_dump_regs }, section "___ksymtab_gpl+cb710_dump_regs", align 4
@allow = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 -16, i16 -1, i16 -1, i16 -1, i16 -16, i16 -1, i16 -1, i16 -1], [16 x i8] zeroinitializer }, align 32
@cb710_xes = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xxxxxxxx\00", [23 x i8] zeroinitializer }, align 32
@cb710_regf_32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%08X\00", [27 x i8] zeroinitializer }, align 32
@cb710_dump_regs_32.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 24, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cb710\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cb710_dump_regs_32\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/misc/cb710/debug.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s 0x%02X %s\0A\00", [18 x i8] zeroinitializer }, align 32
@prefix = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.5, ptr @.str.6, ptr @.str.6, ptr @.str.7, ptr @.str.7], [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MMC\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MS?\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SM?\00", [28 x i8] zeroinitializer }, align 32
@cb710_regf_16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%04X\00", [27 x i8] zeroinitializer }, align 32
@cb710_dump_regs_16.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str.3, ptr @.str.4, i8 0, i8 24, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cb710_dump_regs_16\00", [45 x i8] zeroinitializer }, align 32
@cb710_regf_8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02X\00", [27 x i8] zeroinitializer }, align 32
@cb710_dump_regs_8.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.9, ptr @.str.3, ptr @.str.4, i8 0, i8 24, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cb710_dump_regs_8\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant [6 x i8] c"allow\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 13, i32 18 }
@___asan_gen_.13 = private unnamed_addr constant [10 x i8] c"cb710_xes\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 51, i32 19 }
@___asan_gen_.16 = private unnamed_addr constant [14 x i8] c"cb710_regf_32\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 50, i32 19 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 98, i32 1 }
@___asan_gen_.31 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 17, i32 26 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 18, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 19, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 19, i32 16 }
@___asan_gen_.43 = private unnamed_addr constant [14 x i8] c"cb710_regf_16\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 49, i32 19 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 97, i32 1 }
@___asan_gen_.49 = private unnamed_addr constant [13 x i8] c"cb710_regf_8\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 48, i32 19 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [30 x i8] c"../drivers/misc/cb710/debug.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 96, i32 1 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__ksymtab_cb710_dump_regs, ptr @allow, ptr @cb710_xes, ptr @cb710_regf_32, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @prefix, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @cb710_regf_16, ptr @.str.8, ptr @cb710_regf_8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @allow to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb710_xes to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb710_regf_32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prefix to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb710_regf_16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb710_regf_8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cb710_dump_regs(ptr nocapture noundef readonly %chip, i32 noundef %select) #0 align 64 {
entry:
  %regs.i27 = alloca [64 x i16], align 2
  %regs.i = alloca [32 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %select, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.store.select = select i1 %tobool.not, i32 255, i32 %select
  %and1 = and i32 %spec.store.select, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %or = or i32 %spec.store.select, 256
  %spec.select = select i1 %tobool2.not, i32 %or, i32 %spec.store.select
  %and5 = and i32 %spec.select, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %entry.if.end8_crit_edge, label %if.then7

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then7:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %regs.i) #5
  %0 = call ptr @memset(ptr %regs.i, i32 0, i32 128)
  %iobase.i = getelementptr inbounds %struct.cb710_chip, ptr %chip, i32 0, i32 1
  %1 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %iobase.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc10.i.i.for.body.i.i_crit_edge, %if.then7
  %i.026.i.i = phi i32 [ 0, %if.then7 ], [ %inc11.i.i, %for.inc10.i.i.for.body.i.i_crit_edge ]
  %reg.addr.025.i.i = phi ptr [ %regs.i, %if.then7 ], [ %add.ptr12.i.i, %for.inc10.i.i.for.body.i.i_crit_edge ]
  %shl.i.i = shl nuw nsw i32 1, %i.026.i.i
  %and.i.i = and i32 %shl.i.i, %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc10.i.i_crit_edge, label %for.cond1.preheader.i.i

for.body.i.i.for.inc10.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc10.i.i

for.cond1.preheader.i.i:                          ; preds = %for.body.i.i
  %arrayidx.i.i.i = getelementptr [8 x i16], ptr @allow, i32 0, i32 %i.026.i.i
  %3 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx.i.i.i, align 2
  %conv.i.i.i = zext i16 %4 to i32
  %shl7.i.i = shl i32 %i.026.i.i, 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %shl7.i.i
  %and.i.i.i = and i32 %conv.i.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %and.i.i.i, 15
  br i1 %cmp.i.not.i.i, label %if.end6.i.i, label %for.cond1.preheader.i.i.for.inc.i.i_crit_edge

for.cond1.preheader.i.i.for.inc.i.i_crit_edge:    ; preds = %for.cond1.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

if.end6.i.i:                                      ; preds = %for.cond1.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !42
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  %7 = ptrtoint ptr %reg.addr.025.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %reg.addr.025.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end6.i.i, %for.cond1.preheader.i.i.for.inc.i.i_crit_edge
  %8 = and i32 %conv.i.i.i, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %8)
  %cmp.i.not.1.i.i = icmp eq i32 %8, 240
  br i1 %cmp.i.not.1.i.i, label %if.end6.1.i.i, label %for.inc.i.i.for.inc.1.i.i_crit_edge

for.inc.i.i.for.inc.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i.i

if.end6.1.i.i:                                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr8.1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.1.i.i) #5, !srcloc !42
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  %arrayidx.1.i.i = getelementptr i32, ptr %reg.addr.025.i.i, i32 1
  %11 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx.1.i.i, align 4
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.end6.1.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge
  %12 = and i32 %conv.i.i.i, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 3840, i32 %12)
  %cmp.i.not.2.i.i = icmp eq i32 %12, 3840
  br i1 %cmp.i.not.2.i.i, label %if.end6.2.i.i, label %for.inc.1.i.i.for.inc.2.i.i_crit_edge

for.inc.1.i.i.for.inc.2.i.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2.i.i

if.end6.2.i.i:                                    ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr8.2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.2.i.i) #5, !srcloc !42
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  %arrayidx.2.i.i = getelementptr i32, ptr %reg.addr.025.i.i, i32 2
  %15 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx.2.i.i, align 4
  br label %for.inc.2.i.i

for.inc.2.i.i:                                    ; preds = %if.end6.2.i.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge
  %shr.i.3.mask.i.i = and i32 %conv.i.i.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 61440, i32 %shr.i.3.mask.i.i)
  %cmp.i.not.3.i.i = icmp eq i32 %shr.i.3.mask.i.i, 61440
  br i1 %cmp.i.not.3.i.i, label %if.end6.3.i.i, label %for.inc.2.i.i.for.inc10.i.i_crit_edge

for.inc.2.i.i.for.inc10.i.i_crit_edge:            ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc10.i.i

if.end6.3.i.i:                                    ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr8.3.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 12
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.3.i.i) #5, !srcloc !42
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  %arrayidx.3.i.i = getelementptr i32, ptr %reg.addr.025.i.i, i32 3
  %18 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx.3.i.i, align 4
  br label %for.inc10.i.i

for.inc10.i.i:                                    ; preds = %if.end6.3.i.i, %for.inc.2.i.i.for.inc10.i.i_crit_edge, %for.body.i.i.for.inc10.i.i_crit_edge
  %inc11.i.i = add nuw nsw i32 %i.026.i.i, 1
  %add.ptr12.i.i = getelementptr i32, ptr %reg.addr.025.i.i, i32 4
  %exitcond.not.i.i = icmp eq i32 %inc11.i.i, 8
  br i1 %exitcond.not.i.i, label %cb710_read_and_dump_regs_32.exit, label %for.inc10.i.i.for.body.i.i_crit_edge

for.inc10.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc10.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

cb710_read_and_dump_regs_32.exit:                 ; preds = %for.inc10.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chip, align 8
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  call fastcc void @cb710_dump_regs_32(ptr noundef %dev.i.i, ptr noundef nonnull %regs.i, i32 noundef %spec.select) #5
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %regs.i) #5
  br label %if.end8

if.end8:                                          ; preds = %cb710_read_and_dump_regs_32.exit, %entry.if.end8_crit_edge
  %and9 = and i32 %spec.select, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end12_crit_edge, label %if.then11

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %regs.i27) #5
  %21 = call ptr @memset(ptr %regs.i27, i32 0, i32 128)
  %iobase.i28 = getelementptr inbounds %struct.cb710_chip, ptr %chip, i32 0, i32 1
  %22 = ptrtoint ptr %iobase.i28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iobase.i28, align 4
  br label %for.body.i.i34

for.body.i.i34:                                   ; preds = %for.inc10.i.i61.for.body.i.i34_crit_edge, %if.then11
  %i.026.i.i29 = phi i32 [ 0, %if.then11 ], [ %inc11.i.i58, %for.inc10.i.i61.for.body.i.i34_crit_edge ]
  %reg.addr.025.i.i30 = phi ptr [ %regs.i27, %if.then11 ], [ %add.ptr12.i.i59, %for.inc10.i.i61.for.body.i.i34_crit_edge ]
  %shl.i.i31 = shl nuw nsw i32 1, %i.026.i.i29
  %and.i.i32 = and i32 %shl.i.i31, %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i32)
  %tobool.not.i.i33 = icmp eq i32 %and.i.i32, 0
  br i1 %tobool.not.i.i33, label %for.body.i.i34.for.inc10.i.i61_crit_edge, label %for.cond1.preheader.i.i41

for.body.i.i34.for.inc10.i.i61_crit_edge:         ; preds = %for.body.i.i34
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc10.i.i61

for.cond1.preheader.i.i41:                        ; preds = %for.body.i.i34
  %arrayidx.i.i.i35 = getelementptr [8 x i16], ptr @allow, i32 0, i32 %i.026.i.i29
  %24 = ptrtoint ptr %arrayidx.i.i.i35 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx.i.i.i35, align 2
  %conv.i.i.i36 = zext i16 %25 to i32
  %shl7.i.i37 = shl i32 %i.026.i.i29, 4
  %add.ptr.i.i38 = getelementptr i8, ptr %23, i32 %shl7.i.i37
  %and.i.i.i39 = and i32 %conv.i.i.i36, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i.i39)
  %cmp.i.not.i.i40 = icmp eq i32 %and.i.i.i39, 3
  br i1 %cmp.i.not.i.i40, label %if.end6.i.i42, label %for.cond1.preheader.i.i41.for.inc.i.i44_crit_edge

for.cond1.preheader.i.i41.for.inc.i.i44_crit_edge: ; preds = %for.cond1.preheader.i.i41
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i44

if.end6.i.i42:                                    ; preds = %for.cond1.preheader.i.i41
  call void @__sanitizer_cov_trace_pc() #7
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i38) #5, !srcloc !44
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %28 = ptrtoint ptr %reg.addr.025.i.i30 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %reg.addr.025.i.i30, align 2
  br label %for.inc.i.i44

for.inc.i.i44:                                    ; preds = %if.end6.i.i42, %for.cond1.preheader.i.i41.for.inc.i.i44_crit_edge
  %29 = and i32 %conv.i.i.i36, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %29)
  %cmp.i.not.1.i.i43 = icmp eq i32 %29, 12
  br i1 %cmp.i.not.1.i.i43, label %if.end6.1.i.i47, label %for.inc.i.i44.for.inc.1.i.i49_crit_edge

for.inc.i.i44.for.inc.1.i.i49_crit_edge:          ; preds = %for.inc.i.i44
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i.i49

if.end6.1.i.i47:                                  ; preds = %for.inc.i.i44
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr8.1.i.i45 = getelementptr i8, ptr %add.ptr.i.i38, i32 2
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr8.1.i.i45) #5, !srcloc !44
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %arrayidx.1.i.i46 = getelementptr i16, ptr %reg.addr.025.i.i30, i32 1
  %32 = ptrtoint ptr %arrayidx.1.i.i46 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %arrayidx.1.i.i46, align 2
  br label %for.inc.1.i.i49

for.inc.1.i.i49:                                  ; preds = %if.end6.1.i.i47, %for.inc.i.i44.for.inc.1.i.i49_crit_edge
  %33 = and i32 %conv.i.i.i36, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %33)
  %cmp.i.not.2.i.i48 = icmp eq i32 %33, 48
  br i1 %cmp.i.not.2.i.i48, label %if.end6.2.i.i52, label %for.inc.1.i.i49.for.inc.2.i.i54_crit_edge

for.inc.1.i.i49.for.inc.2.i.i54_crit_edge:        ; preds = %for.inc.1.i.i49
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2.i.i54

if.end6.2.i.i52:                                  ; preds = %for.inc.1.i.i49
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr8.2.i.i50 = getelementptr i8, ptr %add.ptr.i.i38, i32 4
  %34 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr8.2.i.i50) #5, !srcloc !44
  %35 = tail call i16 @llvm.bswap.i16(i16 %34) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %arrayidx.2.i.i51 = getelementptr i16, ptr %reg.addr.025.i.i30, i32 2
  %36 = ptrtoint ptr %arrayidx.2.i.i51 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %arrayidx.2.i.i51, align 2
  br label %for.inc.2.i.i54

for.inc.2.i.i54:                                  ; preds = %if.end6.2.i.i52, %for.inc.1.i.i49.for.inc.2.i.i54_crit_edge
  %37 = and i32 %conv.i.i.i36, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %37)
  %cmp.i.not.3.i.i53 = icmp eq i32 %37, 192
  br i1 %cmp.i.not.3.i.i53, label %if.end6.3.i.i57, label %for.inc.2.i.i54.for.inc.3.i.i_crit_edge

for.inc.2.i.i54.for.inc.3.i.i_crit_edge:          ; preds = %for.inc.2.i.i54
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3.i.i

if.end6.3.i.i57:                                  ; preds = %for.inc.2.i.i54
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr8.3.i.i55 = getelementptr i8, ptr %add.ptr.i.i38, i32 6
  %38 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr8.3.i.i55) #5, !srcloc !44
  %39 = tail call i16 @llvm.bswap.i16(i16 %38) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %arrayidx.3.i.i56 = getelementptr i16, ptr %reg.addr.025.i.i30, i32 3
  %40 = ptrtoint ptr %arrayidx.3.i.i56 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %arrayidx.3.i.i56, align 2
  br label %for.inc.3.i.i

for.inc.3.i.i:                                    ; preds = %if.end6.3.i.i57, %for.inc.2.i.i54.for.inc.3.i.i_crit_edge
  %41 = and i32 %conv.i.i.i36, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %41)
  %cmp.i.not.4.i.i = icmp eq i32 %41, 768
  br i1 %cmp.i.not.4.i.i, label %if.end6.4.i.i, label %for.inc.3.i.i.for.inc.4.i.i_crit_edge

for.inc.3.i.i.for.inc.4.i.i_crit_edge:            ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4.i.i

if.end6.4.i.i:                                    ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr8.4.i.i = getelementptr i8, ptr %add.ptr.i.i38, i32 8
  %42 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr8.4.i.i) #5, !srcloc !44
  %43 = tail call i16 @llvm.bswap.i16(i16 %42) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %arrayidx.4.i.i = getelementptr i16, ptr %reg.addr.025.i.i30, i32 4
  %44 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %arrayidx.4.i.i, align 2
  br label %for.inc.4.i.i

for.inc.4.i.i:                                    ; preds = %if.end6.4.i.i, %for.inc.3.i.i.for.inc.4.i.i_crit_edge
  %45 = and i32 %conv.i.i.i36, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072, i32 %45)
  %cmp.i.not.5.i.i = icmp eq i32 %45, 3072
  br i1 %cmp.i.not.5.i.i, label %if.end6.5.i.i, label %for.inc.4.i.i.for.inc.5.i.i_crit_edge

for.inc.4.i.i.for.inc.5.i.i_crit_edge:            ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.5.i.i

if.end6.5.i.i:                                    ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr8.5.i.i = getelementptr i8, ptr %add.ptr.i.i38, i32 10
  %46 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr8.5.i.i) #5, !srcloc !44
  %47 = tail call i16 @llvm.bswap.i16(i16 %46) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %arrayidx.5.i.i = getelementptr i16, ptr %reg.addr.025.i.i30, i32 5
  %48 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %arrayidx.5.i.i, align 2
  br label %for.inc.5.i.i

for.inc.5.i.i:                                    ; preds = %if.end6.5.i.i, %for.inc.4.i.i.for.inc.5.i.i_crit_edge
  %49 = and i32 %conv.i.i.i36, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 12288, i32 %49)
  %cmp.i.not.6.i.i = icmp eq i32 %49, 12288
  br i1 %cmp.i.not.6.i.i, label %if.end6.6.i.i, label %for.inc.5.i.i.for.inc.6.i.i_crit_edge

for.inc.5.i.i.for.inc.6.i.i_crit_edge:            ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.6.i.i

if.end6.6.i.i:                                    ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr8.6.i.i = getelementptr i8, ptr %add.ptr.i.i38, i32 12
  %50 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr8.6.i.i) #5, !srcloc !44
  %51 = tail call i16 @llvm.bswap.i16(i16 %50) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %arrayidx.6.i.i = getelementptr i16, ptr %reg.addr.025.i.i30, i32 6
  %52 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %arrayidx.6.i.i, align 2
  br label %for.inc.6.i.i

for.inc.6.i.i:                                    ; preds = %if.end6.6.i.i, %for.inc.5.i.i.for.inc.6.i.i_crit_edge
  %shr.i.7.mask.i.i = and i32 %conv.i.i.i36, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %shr.i.7.mask.i.i)
  %cmp.i.not.7.i.i = icmp eq i32 %shr.i.7.mask.i.i, 49152
  br i1 %cmp.i.not.7.i.i, label %if.end6.7.i.i, label %for.inc.6.i.i.for.inc10.i.i61_crit_edge

for.inc.6.i.i.for.inc10.i.i61_crit_edge:          ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc10.i.i61

if.end6.7.i.i:                                    ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr8.7.i.i = getelementptr i8, ptr %add.ptr.i.i38, i32 14
  %53 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr8.7.i.i) #5, !srcloc !44
  %54 = tail call i16 @llvm.bswap.i16(i16 %53) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  %arrayidx.7.i.i = getelementptr i16, ptr %reg.addr.025.i.i30, i32 7
  %55 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %arrayidx.7.i.i, align 2
  br label %for.inc10.i.i61

for.inc10.i.i61:                                  ; preds = %if.end6.7.i.i, %for.inc.6.i.i.for.inc10.i.i61_crit_edge, %for.body.i.i34.for.inc10.i.i61_crit_edge
  %inc11.i.i58 = add nuw nsw i32 %i.026.i.i29, 1
  %add.ptr12.i.i59 = getelementptr i16, ptr %reg.addr.025.i.i30, i32 8
  %exitcond.not.i.i60 = icmp eq i32 %inc11.i.i58, 8
  br i1 %exitcond.not.i.i60, label %cb710_read_and_dump_regs_16.exit, label %for.inc10.i.i61.for.body.i.i34_crit_edge

for.inc10.i.i61.for.body.i.i34_crit_edge:         ; preds = %for.inc10.i.i61
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i34

cb710_read_and_dump_regs_16.exit:                 ; preds = %for.inc10.i.i61
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %chip, align 8
  %dev.i.i62 = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  call fastcc void @cb710_dump_regs_16(ptr noundef %dev.i.i62, ptr noundef nonnull %regs.i27, i32 noundef %spec.select) #5
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %regs.i27) #5
  br label %if.end12

if.end12:                                         ; preds = %cb710_read_and_dump_regs_16.exit, %if.end8.if.end12_crit_edge
  %and13 = and i32 %spec.select, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end16_crit_edge, label %if.then15

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @cb710_read_and_dump_regs_8(ptr noundef %chip, i32 noundef %spec.select)
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end12.if.end16_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cb710_read_and_dump_regs_8(ptr nocapture noundef readonly %chip, i32 noundef %select) unnamed_addr #0 align 64 {
entry:
  %msg.i = alloca [100 x i8], align 1
  %regs = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %regs) #5
  %0 = call ptr @memset(ptr %regs, i32 0, i32 128)
  %iobase = getelementptr inbounds %struct.cb710_chip, ptr %chip, i32 0, i32 1
  %1 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %iobase, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc10.i.for.body.i_crit_edge, %entry
  %i.026.i = phi i32 [ 0, %entry ], [ %inc11.i, %for.inc10.i.for.body.i_crit_edge ]
  %reg.addr.025.i = phi ptr [ %regs, %entry ], [ %add.ptr12.i, %for.inc10.i.for.body.i_crit_edge ]
  %shl.i = shl nuw nsw i32 1, %i.026.i
  %and.i = and i32 %shl.i, %select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc10.i_crit_edge, label %for.cond1.preheader.i

for.body.i.for.inc10.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc10.i

for.cond1.preheader.i:                            ; preds = %for.body.i
  %arrayidx.i.i = getelementptr [8 x i16], ptr @allow, i32 0, i32 %i.026.i
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %4 to i32
  %shl7.i = shl i32 %i.026.i, 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 %shl7.i
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.inc.i.for.body3.i_crit_edge, %for.cond1.preheader.i
  %j.023.i = phi i32 [ 0, %for.cond1.preheader.i ], [ %inc.i, %for.inc.i.for.body3.i_crit_edge ]
  %5 = shl nuw i32 1, %j.023.i
  %6 = and i32 %5, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not.i = icmp eq i32 %6, 0
  br i1 %tobool4.not.i, label %for.body3.i.for.inc.i_crit_edge, label %if.end6.i

for.body3.i.for.inc.i_crit_edge:                  ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end6.i:                                        ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr8.i = getelementptr i8, ptr %add.ptr.i, i32 %j.023.i
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr8.i) #5, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  %arrayidx.i = getelementptr i8, ptr %reg.addr.025.i, i32 %j.023.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %arrayidx.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end6.i, %for.body3.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %j.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.inc.i.for.inc10.i_crit_edge, label %for.inc.i.for.body3.i_crit_edge

for.inc.i.for.body3.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3.i

for.inc.i.for.inc10.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc10.i

for.inc10.i:                                      ; preds = %for.inc.i.for.inc10.i_crit_edge, %for.body.i.for.inc10.i_crit_edge
  %inc11.i = add nuw nsw i32 %i.026.i, 1
  %add.ptr12.i = getelementptr i8, ptr %reg.addr.025.i, i32 16
  %exitcond28.not.i = icmp eq i32 %inc11.i, 8
  br i1 %exitcond28.not.i, label %cb710_read_regs_8.exit, label %for.inc10.i.for.body.i_crit_edge

for.inc10.i.for.body.i_crit_edge:                 ; preds = %for.inc10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

cb710_read_regs_8.exit:                           ; preds = %for.inc10.i
  %9 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chip, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %msg.i) #5
  %11 = call ptr @memset(ptr %msg.i, i32 255, i32 100)
  br label %for.body.i7

for.body.i7:                                      ; preds = %for.inc24.i.for.body.i7_crit_edge, %cb710_read_regs_8.exit
  %reg.addr.049.i = phi ptr [ %regs, %cb710_read_regs_8.exit ], [ %add.ptr26.i, %for.inc24.i.for.body.i7_crit_edge ]
  %i.047.i = phi i32 [ 0, %cb710_read_regs_8.exit ], [ %inc25.i, %for.inc24.i.for.body.i7_crit_edge ]
  %shl.i4 = shl nuw nsw i32 1, %i.047.i
  %and.i5 = and i32 %shl.i4, %select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i5)
  %tobool.not.i6 = icmp eq i32 %and.i5, 0
  br i1 %tobool.not.i6, label %for.body.i7.for.inc24.i_crit_edge, label %for.cond1.preheader.i10

for.body.i7.for.inc24.i_crit_edge:                ; preds = %for.body.i7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc24.i

for.cond1.preheader.i10:                          ; preds = %for.body.i7
  %arrayidx.i.i8 = getelementptr [8 x i16], ptr @allow, i32 0, i32 %i.047.i
  %12 = ptrtoint ptr %arrayidx.i.i8 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.i.i8, align 2
  %conv.i.i9 = zext i16 %13 to i32
  br label %for.body3.i11

for.body3.i11:                                    ; preds = %for.inc.i16.for.body3.i11_crit_edge, %for.cond1.preheader.i10
  %p.046.i = phi ptr [ %msg.i, %for.cond1.preheader.i10 ], [ %add.ptr.i13, %for.inc.i16.for.body3.i11_crit_edge ]
  %j.044.i = phi i32 [ 0, %for.cond1.preheader.i10 ], [ %inc.i14, %for.inc.i16.for.body3.i11_crit_edge ]
  %incdec.ptr.i = getelementptr i8, ptr %p.046.i, i32 1
  %14 = ptrtoint ptr %p.046.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 32, ptr %p.046.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %j.044.i)
  %cmp4.i = icmp eq i32 %j.044.i, 8
  br i1 %cmp4.i, label %if.then5.i, label %for.body3.i11.if.end7.i_crit_edge

for.body3.i11.if.end7.i_crit_edge:                ; preds = %for.body3.i11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

if.then5.i:                                       ; preds = %for.body3.i11
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr6.i = getelementptr i8, ptr %p.046.i, i32 2
  %15 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 32, ptr %incdec.ptr.i, align 1
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %for.body3.i11.if.end7.i_crit_edge
  %p.1.i = phi ptr [ %incdec.ptr6.i, %if.then5.i ], [ %incdec.ptr.i, %for.body3.i11.if.end7.i_crit_edge ]
  %16 = shl nuw i32 1, %j.044.i
  %17 = and i32 %16, %conv.i.i9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool8.not.i = icmp eq i32 %17, 0
  br i1 %tobool8.not.i, label %if.else.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i12 = getelementptr i8, ptr %reg.addr.049.i, i32 %j.044.i
  %18 = ptrtoint ptr %arrayidx.i12 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i12, align 1
  %conv.i = zext i8 %19 to i32
  %call10.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %p.1.i, ptr noundef nonnull @cb710_regf_8, i32 noundef %conv.i) #5
  br label %for.inc.i16

if.else.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  %20 = call ptr @memcpy(ptr %p.1.i, ptr getelementptr inbounds ([9 x i8], ptr @cb710_xes, i32 0, i32 6), i32 3)
  br label %for.inc.i16

for.inc.i16:                                      ; preds = %if.else.i, %if.then9.i
  %call10.sink.i = phi i32 [ %call10.i, %if.then9.i ], [ 2, %if.else.i ]
  %add.ptr.i13 = getelementptr i8, ptr %p.1.i, i32 %call10.sink.i
  %inc.i14 = add nuw nsw i32 %j.044.i, 1
  %exitcond.not.i15 = icmp eq i32 %inc.i14, 16
  br i1 %exitcond.not.i15, label %do.body.i, label %for.inc.i16.for.body3.i11_crit_edge

for.inc.i16.for.body3.i11_crit_edge:              ; preds = %for.inc.i16
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3.i11

do.body.i:                                        ; preds = %for.inc.i16
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb710_dump_regs_8.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cb710_read_and_dump_regs_8, %for.inc24.i)) #5
          to label %if.then19.i [label %for.inc24.i], !srcloc !48

if.then19.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx20.i = getelementptr [8 x ptr], ptr @prefix, i32 0, i32 %i.047.i
  %21 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx20.i, align 4
  %shl21.i = shl i32 %i.047.i, 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb710_dump_regs_8.__UNIQUE_ID_ddebug275, ptr noundef %dev.i, ptr noundef nonnull @.str.4, ptr noundef %22, i32 noundef %shl21.i, ptr noundef nonnull %msg.i) #5
  br label %for.inc24.i

for.inc24.i:                                      ; preds = %if.then19.i, %do.body.i, %for.body.i7.for.inc24.i_crit_edge
  %inc25.i = add nuw nsw i32 %i.047.i, 1
  %add.ptr26.i = getelementptr i8, ptr %reg.addr.049.i, i32 16
  %exitcond50.not.i = icmp eq i32 %inc25.i, 8
  br i1 %exitcond50.not.i, label %cb710_dump_regs_8.exit, label %for.inc24.i.for.body.i7_crit_edge

for.inc24.i.for.body.i7_crit_edge:                ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i7

cb710_dump_regs_8.exit:                           ; preds = %for.inc24.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %regs) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cb710_dump_regs_32(ptr noundef %dev, ptr nocapture noundef readonly %reg, i32 noundef %select) unnamed_addr #0 align 64 {
entry:
  %msg = alloca [100 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %msg) #5
  %0 = getelementptr inbounds i8, ptr %msg, i32 1
  %1 = call ptr @memset(ptr %0, i32 255, i32 99)
  %incdec.ptr = getelementptr inbounds i8, ptr %msg, i32 1
  %add.ptr12 = getelementptr inbounds i8, ptr %msg, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc24.for.body_crit_edge, %entry
  %reg.addr.049 = phi ptr [ %reg, %entry ], [ %add.ptr26, %for.inc24.for.body_crit_edge ]
  %i.047 = phi i32 [ 0, %entry ], [ %inc25, %for.inc24.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.047
  %and = and i32 %shl, %select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc24_crit_edge, label %if.end7

for.body.for.inc24_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc24

if.end7:                                          ; preds = %for.body
  %arrayidx.i = getelementptr [8 x i16], ptr @allow, i32 0, i32 %i.047
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %3 to i32
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 32, ptr %msg, align 1
  %and.i = and i32 %conv.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 15
  br i1 %cmp.i.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %reg.addr.049 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg.addr.049, align 4
  %call10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %incdec.ptr, ptr noundef nonnull @cb710_regf_32, i32 noundef %6)
  %add.ptr = getelementptr i8, ptr %incdec.ptr, i32 %call10
  br label %if.end7.1

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %7 = call ptr @memcpy(ptr %incdec.ptr, ptr @cb710_xes, i32 9)
  br label %if.end7.1

if.end7.1:                                        ; preds = %if.else, %if.then9
  %p.2 = phi ptr [ %add.ptr, %if.then9 ], [ %add.ptr12, %if.else ]
  %incdec.ptr.1 = getelementptr i8, ptr %p.2, i32 1
  %8 = ptrtoint ptr %p.2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 32, ptr %p.2, align 1
  %9 = and i32 %conv.i, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %9)
  %cmp.i.not.1 = icmp eq i32 %9, 240
  br i1 %cmp.i.not.1, label %if.then9.1, label %if.else.1

if.else.1:                                        ; preds = %if.end7.1
  call void @__sanitizer_cov_trace_pc() #7
  %10 = call ptr @memcpy(ptr %incdec.ptr.1, ptr @cb710_xes, i32 9)
  %add.ptr12.1 = getelementptr i8, ptr %p.2, i32 9
  br label %if.end7.2

if.then9.1:                                       ; preds = %if.end7.1
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.1 = getelementptr i32, ptr %reg.addr.049, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.1, align 4
  %call10.1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %incdec.ptr.1, ptr noundef nonnull @cb710_regf_32, i32 noundef %12)
  %add.ptr.1 = getelementptr i8, ptr %incdec.ptr.1, i32 %call10.1
  br label %if.end7.2

if.end7.2:                                        ; preds = %if.then9.1, %if.else.1
  %p.2.1 = phi ptr [ %add.ptr.1, %if.then9.1 ], [ %add.ptr12.1, %if.else.1 ]
  %13 = ptrtoint ptr %p.2.1 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 32, ptr %p.2.1, align 1
  %incdec.ptr.2 = getelementptr i8, ptr %p.2.1, i32 1
  %incdec.ptr6.2 = getelementptr i8, ptr %p.2.1, i32 2
  %14 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 32, ptr %incdec.ptr.2, align 1
  %15 = and i32 %conv.i, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 3840, i32 %15)
  %cmp.i.not.2 = icmp eq i32 %15, 3840
  br i1 %cmp.i.not.2, label %if.then9.2, label %if.else.2

if.else.2:                                        ; preds = %if.end7.2
  call void @__sanitizer_cov_trace_pc() #7
  %16 = call ptr @memcpy(ptr %incdec.ptr6.2, ptr @cb710_xes, i32 9)
  br label %if.end7.3

if.then9.2:                                       ; preds = %if.end7.2
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.2 = getelementptr i32, ptr %reg.addr.049, i32 2
  %17 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.2, align 4
  %call10.2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %incdec.ptr6.2, ptr noundef nonnull @cb710_regf_32, i32 noundef %18)
  br label %if.end7.3

if.end7.3:                                        ; preds = %if.then9.2, %if.else.2
  %.sink = phi i32 [ 8, %if.else.2 ], [ %call10.2, %if.then9.2 ]
  %add.ptr12.2 = getelementptr i8, ptr %incdec.ptr6.2, i32 %.sink
  %incdec.ptr.3 = getelementptr i8, ptr %add.ptr12.2, i32 1
  %19 = ptrtoint ptr %add.ptr12.2 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 32, ptr %add.ptr12.2, align 1
  %shr.i.3.mask = and i32 %conv.i, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 61440, i32 %shr.i.3.mask)
  %cmp.i.not.3 = icmp eq i32 %shr.i.3.mask, 61440
  br i1 %cmp.i.not.3, label %if.then9.3, label %if.else.3

if.else.3:                                        ; preds = %if.end7.3
  call void @__sanitizer_cov_trace_pc() #7
  %20 = call ptr @memcpy(ptr %incdec.ptr.3, ptr @cb710_xes, i32 9)
  br label %for.inc.3

if.then9.3:                                       ; preds = %if.end7.3
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.3 = getelementptr i32, ptr %reg.addr.049, i32 3
  %21 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.3, align 4
  %call10.3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %incdec.ptr.3, ptr noundef nonnull @cb710_regf_32, i32 noundef %22)
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then9.3, %if.else.3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb710_dump_regs_32.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cb710_dump_regs_32, %for.inc24)) #5
          to label %if.then19 [label %for.inc24], !srcloc !48

if.then19:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx20 = getelementptr [8 x ptr], ptr @prefix, i32 0, i32 %i.047
  %23 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx20, align 4
  %shl21 = shl i32 %i.047, 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb710_dump_regs_32.__UNIQUE_ID_ddebug277, ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef %24, i32 noundef %shl21, ptr noundef nonnull %msg) #5
  br label %for.inc24

for.inc24:                                        ; preds = %if.then19, %for.inc.3, %for.body.for.inc24_crit_edge
  %inc25 = add nuw nsw i32 %i.047, 1
  %add.ptr26 = getelementptr i32, ptr %reg.addr.049, i32 4
  %exitcond.not = icmp eq i32 %inc25, 8
  br i1 %exitcond.not, label %for.end27, label %for.inc24.for.body_crit_edge

for.inc24.for.body_crit_edge:                     ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end27:                                        ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %msg) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cb710_dump_regs_16(ptr noundef %dev, ptr nocapture noundef readonly %reg, i32 noundef %select) unnamed_addr #0 align 64 {
entry:
  %msg = alloca [100 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %msg) #5
  %0 = getelementptr inbounds i8, ptr %msg, i32 1
  %1 = call ptr @memset(ptr %0, i32 255, i32 99)
  %incdec.ptr.peel = getelementptr inbounds i8, ptr %msg, i32 1
  %add.ptr12.peel = getelementptr inbounds i8, ptr %msg, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc24.for.body_crit_edge, %entry
  %reg.addr.049 = phi ptr [ %reg, %entry ], [ %add.ptr26, %for.inc24.for.body_crit_edge ]
  %i.047 = phi i32 [ 0, %entry ], [ %inc25, %for.inc24.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.047
  %and = and i32 %shl, %select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc24_crit_edge, label %if.end7.peel

for.body.for.inc24_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc24

if.end7.peel:                                     ; preds = %for.body
  %arrayidx.i = getelementptr [8 x i16], ptr @allow, i32 0, i32 %i.047
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %3 to i32
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 32, ptr %msg, align 1
  %and.i.peel = and i32 %conv.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.peel)
  %cmp.i.not.peel = icmp eq i32 %and.i.peel, 3
  br i1 %cmp.i.not.peel, label %if.then9.peel, label %if.else.peel

if.else.peel:                                     ; preds = %if.end7.peel
  call void @__sanitizer_cov_trace_pc() #7
  %5 = call ptr @memcpy(ptr %incdec.ptr.peel, ptr getelementptr inbounds ([9 x i8], ptr @cb710_xes, i32 0, i32 4), i32 5)
  br label %if.end7.peel56

if.then9.peel:                                    ; preds = %if.end7.peel
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %reg.addr.049 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %reg.addr.049, align 2
  %conv.peel = zext i16 %7 to i32
  %call10.peel = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %incdec.ptr.peel, ptr noundef nonnull @cb710_regf_16, i32 noundef %conv.peel)
  %add.ptr.peel = getelementptr i8, ptr %incdec.ptr.peel, i32 %call10.peel
  br label %if.end7.peel56

if.end7.peel56:                                   ; preds = %if.then9.peel, %if.else.peel
  %p.2.peel = phi ptr [ %add.ptr.peel, %if.then9.peel ], [ %add.ptr12.peel, %if.else.peel ]
  %incdec.ptr.peel52 = getelementptr i8, ptr %p.2.peel, i32 1
  %8 = ptrtoint ptr %p.2.peel to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 32, ptr %p.2.peel, align 1
  %9 = and i32 %conv.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %9)
  %cmp.i.not.peel61 = icmp eq i32 %9, 12
  br i1 %cmp.i.not.peel61, label %if.then9.peel64, label %if.else.peel62

if.else.peel62:                                   ; preds = %if.end7.peel56
  call void @__sanitizer_cov_trace_pc() #7
  %10 = call ptr @memcpy(ptr %incdec.ptr.peel52, ptr getelementptr inbounds ([9 x i8], ptr @cb710_xes, i32 0, i32 4), i32 5)
  %add.ptr12.peel63 = getelementptr i8, ptr %p.2.peel, i32 5
  br label %if.end7.peel79

if.then9.peel64:                                  ; preds = %if.end7.peel56
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.peel65 = getelementptr i16, ptr %reg.addr.049, i32 1
  %11 = ptrtoint ptr %arrayidx.peel65 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx.peel65, align 2
  %conv.peel66 = zext i16 %12 to i32
  %call10.peel67 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %incdec.ptr.peel52, ptr noundef nonnull @cb710_regf_16, i32 noundef %conv.peel66)
  %add.ptr.peel68 = getelementptr i8, ptr %incdec.ptr.peel52, i32 %call10.peel67
  br label %if.end7.peel79

if.end7.peel79:                                   ; preds = %if.then9.peel64, %if.else.peel62
  %p.2.peel70 = phi ptr [ %add.ptr.peel68, %if.then9.peel64 ], [ %add.ptr12.peel63, %if.else.peel62 ]
  %incdec.ptr.peel75 = getelementptr i8, ptr %p.2.peel70, i32 1
  %13 = ptrtoint ptr %p.2.peel70 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 32, ptr %p.2.peel70, align 1
  %14 = and i32 %conv.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %14)
  %cmp.i.not.peel84 = icmp eq i32 %14, 48
  br i1 %cmp.i.not.peel84, label %if.then9.peel87, label %if.else.peel85

if.else.peel85:                                   ; preds = %if.end7.peel79
  call void @__sanitizer_cov_trace_pc() #7
  %15 = call ptr @memcpy(ptr %incdec.ptr.peel75, ptr getelementptr inbounds ([9 x i8], ptr @cb710_xes, i32 0, i32 4), i32 5)
  %add.ptr12.peel86 = getelementptr i8, ptr %p.2.peel70, i32 5
  br label %if.end7.peel102

if.then9.peel87:                                  ; preds = %if.end7.peel79
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.peel88 = getelementptr i16, ptr %reg.addr.049, i32 2
  %16 = ptrtoint ptr %arrayidx.peel88 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.peel88, align 2
  %conv.peel89 = zext i16 %17 to i32
  %call10.peel90 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %incdec.ptr.peel75, ptr noundef nonnull @cb710_regf_16, i32 noundef %conv.peel89)
  %add.ptr.peel91 = getelementptr i8, ptr %incdec.ptr.peel75, i32 %call10.peel90
  br label %if.end7.peel102

if.end7.peel102:                                  ; preds = %if.then9.peel87, %if.else.peel85
  %p.2.peel93 = phi ptr [ %add.ptr.peel91, %if.then9.peel87 ], [ %add.ptr12.peel86, %if.else.peel85 ]
  %incdec.ptr.peel98 = getelementptr i8, ptr %p.2.peel93, i32 1
  %18 = ptrtoint ptr %p.2.peel93 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 32, ptr %p.2.peel93, align 1
  %19 = and i32 %conv.i, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %19)
  %cmp.i.not.peel107 = icmp eq i32 %19, 192
  br i1 %cmp.i.not.peel107, label %if.then9.peel110, label %if.else.peel108

if.else.peel108:                                  ; preds = %if.end7.peel102
  call void @__sanitizer_cov_trace_pc() #7
  %20 = call ptr @memcpy(ptr %incdec.ptr.peel98, ptr getelementptr inbounds ([9 x i8], ptr @cb710_xes, i32 0, i32 4), i32 5)
  %add.ptr12.peel109 = getelementptr i8, ptr %p.2.peel93, i32 5
  br label %if.end7.peel125

if.then9.peel110:                                 ; preds = %if.end7.peel102
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.peel111 = getelementptr i16, ptr %reg.addr.049, i32 3
  %21 = ptrtoint ptr %arrayidx.peel111 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx.peel111, align 2
  %conv.peel112 = zext i16 %22 to i32
  %call10.peel113 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %incdec.ptr.peel98, ptr noundef nonnull @cb710_regf_16, i32 noundef %conv.peel112)
  %add.ptr.peel114 = getelementptr i8, ptr %incdec.ptr.peel98, i32 %call10.peel113
  br label %if.end7.peel125

if.end7.peel125:                                  ; preds = %if.then9.peel110, %if.else.peel108
  %p.2.peel116 = phi ptr [ %add.ptr.peel114, %if.then9.peel110 ], [ %add.ptr12.peel109, %if.else.peel108 ]
  %23 = ptrtoint ptr %p.2.peel116 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 32, ptr %p.2.peel116, align 1
  %incdec.ptr.peel121 = getelementptr i8, ptr %p.2.peel116, i32 1
  %incdec.ptr6.peel124 = getelementptr i8, ptr %p.2.peel116, i32 2
  %24 = ptrtoint ptr %incdec.ptr.peel121 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 32, ptr %incdec.ptr.peel121, align 1
  %25 = and i32 %conv.i, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %25)
  %cmp.i.not.peel130 = icmp eq i32 %25, 768
  br i1 %cmp.i.not.peel130, label %if.then9.peel133, label %if.else.peel131

if.else.peel131:                                  ; preds = %if.end7.peel125
  call void @__sanitizer_cov_trace_pc() #7
  %26 = call ptr @memcpy(ptr %incdec.ptr6.peel124, ptr getelementptr inbounds ([9 x i8], ptr @cb710_xes, i32 0, i32 4), i32 5)
  br label %for.body3.peel.next119

if.then9.peel133:                                 ; preds = %if.end7.peel125
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.peel134 = getelementptr i16, ptr %reg.addr.049, i32 4
  %27 = ptrtoint ptr %arrayidx.peel134 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx.peel134, align 2
  %conv.peel135 = zext i16 %28 to i32
  %call10.peel136 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %incdec.ptr6.peel124, ptr noundef nonnull @cb710_regf_16, i32 noundef %conv.peel135)
  br label %for.body3.peel.next119

for.body3.peel.next119:                           ; preds = %if.then9.peel133, %if.else.peel131
  %.sink = phi i32 [ 4, %if.else.peel131 ], [ %call10.peel136, %if.then9.peel133 ]
  %add.ptr12.peel132 = getelementptr i8, ptr %incdec.ptr6.peel124, i32 %.sink
  %incdec.ptr = getelementptr i8, ptr %add.ptr12.peel132, i32 1
  %29 = ptrtoint ptr %add.ptr12.peel132 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 32, ptr %add.ptr12.peel132, align 1
  %30 = and i32 %conv.i, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072, i32 %30)
  %cmp.i.not = icmp eq i32 %30, 3072
  br i1 %cmp.i.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %for.body3.peel.next119
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr i16, ptr %reg.addr.049, i32 5
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %32 to i32
  %call10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %incdec.ptr, ptr noundef nonnull @cb710_regf_16, i32 noundef %conv)
  %add.ptr = getelementptr i8, ptr %incdec.ptr, i32 %call10
  br label %for.inc

if.else:                                          ; preds = %for.body3.peel.next119
  call void @__sanitizer_cov_trace_pc() #7
  %33 = call ptr @memcpy(ptr %incdec.ptr, ptr getelementptr inbounds ([9 x i8], ptr @cb710_xes, i32 0, i32 4), i32 5)
  %add.ptr12 = getelementptr i8, ptr %add.ptr12.peel132, i32 5
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then9
  %p.2 = phi ptr [ %add.ptr, %if.then9 ], [ %add.ptr12, %if.else ]
  %incdec.ptr.1 = getelementptr i8, ptr %p.2, i32 1
  %34 = ptrtoint ptr %p.2 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 32, ptr %p.2, align 1
  %35 = and i32 %conv.i, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 12288, i32 %35)
  %cmp.i.not.1 = icmp eq i32 %35, 12288
  br i1 %cmp.i.not.1, label %if.then9.1, label %if.else.1

if.else.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %36 = call ptr @memcpy(ptr %incdec.ptr.1, ptr getelementptr inbounds ([9 x i8], ptr @cb710_xes, i32 0, i32 4), i32 5)
  %add.ptr12.1 = getelementptr i8, ptr %p.2, i32 5
  br label %for.inc.1

if.then9.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.1 = getelementptr i16, ptr %reg.addr.049, i32 6
  %37 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx.1, align 2
  %conv.1 = zext i16 %38 to i32
  %call10.1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %incdec.ptr.1, ptr noundef nonnull @cb710_regf_16, i32 noundef %conv.1)
  %add.ptr.1 = getelementptr i8, ptr %incdec.ptr.1, i32 %call10.1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then9.1, %if.else.1
  %p.2.1 = phi ptr [ %add.ptr.1, %if.then9.1 ], [ %add.ptr12.1, %if.else.1 ]
  %incdec.ptr.2 = getelementptr i8, ptr %p.2.1, i32 1
  %39 = ptrtoint ptr %p.2.1 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 32, ptr %p.2.1, align 1
  %shr.i.2.mask = and i32 %conv.i, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %shr.i.2.mask)
  %cmp.i.not.2 = icmp eq i32 %shr.i.2.mask, 49152
  br i1 %cmp.i.not.2, label %if.then9.2, label %if.else.2

if.else.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  %40 = call ptr @memcpy(ptr %incdec.ptr.2, ptr getelementptr inbounds ([9 x i8], ptr @cb710_xes, i32 0, i32 4), i32 5)
  br label %for.inc.2

if.then9.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.2 = getelementptr i16, ptr %reg.addr.049, i32 7
  %41 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx.2, align 2
  %conv.2 = zext i16 %42 to i32
  %call10.2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %incdec.ptr.2, ptr noundef nonnull @cb710_regf_16, i32 noundef %conv.2)
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then9.2, %if.else.2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb710_dump_regs_16.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cb710_dump_regs_16, %for.inc24)) #5
          to label %if.then19 [label %for.inc24], !srcloc !48

if.then19:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx20 = getelementptr [8 x ptr], ptr @prefix, i32 0, i32 %i.047
  %43 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx20, align 4
  %shl21 = shl i32 %i.047, 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb710_dump_regs_16.__UNIQUE_ID_ddebug276, ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef %44, i32 noundef %shl21, ptr noundef nonnull %msg) #5
  br label %for.inc24

for.inc24:                                        ; preds = %if.then19, %for.inc.2, %for.body.for.inc24_crit_edge
  %inc25 = add nuw nsw i32 %i.047, 1
  %add.ptr26 = getelementptr i16, ptr %reg.addr.049, i32 8
  %exitcond143.not = icmp eq i32 %inc25, 8
  br i1 %exitcond143.not, label %for.end27, label %for.inc24.for.body_crit_edge

for.inc24.for.body_crit_edge:                     ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end27:                                        ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %msg) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !13, !15, !17, !19, !21, !23, !25, !26, !28, !30, !31}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @__ksymtab_cb710_dump_regs, !1, !"__ksymtab_cb710_dump_regs", i1 false, i1 false}
!1 = !{!"../drivers/misc/cb710/debug.c", i32 114, i32 1}
!2 = !{ptr @allow, !3, !"allow", i1 false, i1 false}
!3 = !{!"../drivers/misc/cb710/debug.c", i32 13, i32 18}
!4 = distinct !{null, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/misc/cb710/debug.c", i32 98, i32 1}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @cb710_dump_regs_32.__UNIQUE_ID_ddebug277, !5, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!11 = !{ptr @cb710_xes, !12, !"cb710_xes", i1 false, i1 false}
!12 = !{!"../drivers/misc/cb710/debug.c", i32 51, i32 19}
!13 = !{ptr @cb710_regf_32, !14, !"cb710_regf_32", i1 false, i1 false}
!14 = !{!"../drivers/misc/cb710/debug.c", i32 50, i32 19}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/misc/cb710/debug.c", i32 18, i32 2}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/misc/cb710/debug.c", i32 19, i32 2}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/misc/cb710/debug.c", i32 19, i32 16}
!21 = !{ptr @prefix, !22, !"prefix", i1 false, i1 false}
!22 = !{!"../drivers/misc/cb710/debug.c", i32 17, i32 26}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/misc/cb710/debug.c", i32 97, i32 1}
!25 = !{ptr @cb710_dump_regs_16.__UNIQUE_ID_ddebug276, !24, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!26 = !{ptr @cb710_regf_16, !27, !"cb710_regf_16", i1 false, i1 false}
!27 = !{!"../drivers/misc/cb710/debug.c", i32 49, i32 19}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/misc/cb710/debug.c", i32 96, i32 1}
!30 = !{ptr @cb710_dump_regs_8.__UNIQUE_ID_ddebug275, !29, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!31 = !{ptr @cb710_regf_8, !32, !"cb710_regf_8", i1 false, i1 false}
!32 = !{!"../drivers/misc/cb710/debug.c", i32 48, i32 19}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{i64 692265}
!43 = !{i64 2148877438}
!44 = !{i64 691427}
!45 = !{i64 2148876826}
!46 = !{i64 692045}
!47 = !{i64 2148876214}
!48 = !{i64 2148159004, i64 2148159009, i64 2148159022, i64 2148159066, i64 2148159100, i64 2148159121}
