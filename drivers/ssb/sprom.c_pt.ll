; ModuleID = '/llk/IR_all_yes/drivers/ssb/sprom.c_pt.bc'
source_filename = "../drivers/ssb/sprom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ssb_bus = type { ptr, ptr, ptr, %union.anon.67, %struct.spinlock, i32, %union.anon.68, i32, %struct.mutex, i16, i8, i16, i16, i8, [16 x %struct.ssb_device], i8, i32, %struct.ssb_chipcommon, %struct.ssb_pcicore, %struct.ssb_mipscore, %struct.ssb_extif, %struct.ssb_boardinfo, %struct.ssb_sprom, i8, %struct.gpio_chip, ptr, %struct.list_head, i8, i32 }
%union.anon.67 = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.68 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ssb_device = type { ptr, ptr, ptr, ptr, %struct.ssb_device_id, i8, i32, ptr, ptr }
%struct.ssb_device_id = type { i16, i16, i8, i8 }
%struct.ssb_chipcommon = type { ptr, i32, i32, i16, %struct.spinlock, %struct.ssb_chipcommon_pmu, i32, i32 }
%struct.ssb_chipcommon_pmu = type { i8, i32 }
%struct.ssb_pcicore = type { ptr, i8 }
%struct.ssb_mipscore = type {}
%struct.ssb_extif = type {}
%struct.ssb_boardinfo = type { i16, i16 }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.70, %struct.anon.71, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.70 = type { i8, i8, i8, i8 }
%struct.anon.71 = type { %struct.anon.72, %struct.anon.73 }
%struct.anon.72 = type { i8, i8, i8, i8, i8 }
%struct.anon.73 = type { i8, i8, i8, i8, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.74, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.74 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.ssb_freeze_context = type { ptr, [16 x i8] }

@ssb_attr_sprom_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013ssb: SPROM write: Could not freeze all devices\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ssb_attr_sprom_store\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"drivers/ssb/sprom.c\00", [44 x i8] zeroinitializer }, align 32
@ssb_attr_sprom_store._entry_ptr = internal global ptr @ssb_attr_sprom_store._entry, section ".printk_index", align 4
@ssb_attr_sprom_store._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013ssb: SPROM write: Could not thaw all devices\0A\00", [48 x i8] zeroinitializer }, align 32
@ssb_attr_sprom_store._entry_ptr.5 = internal global ptr @ssb_attr_sprom_store._entry.3, section ".printk_index", align 4
@get_fallback_sprom = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%04X\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 132, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 138, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant [19 x i8] c"get_fallback_sprom\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 20, i32 13 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 30, i32 5 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private constant [23 x i8] c"../drivers/ssb/sprom.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 31, i32 49 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @ssb_attr_sprom_store._entry, ptr @ssb_attr_sprom_store._entry.3, ptr @ssb_attr_sprom_store._entry_ptr, ptr @ssb_attr_sprom_store._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @get_fallback_sprom, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_attr_sprom_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssb_attr_sprom_store._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_fallback_sprom to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssb_attr_sprom_show(ptr noundef %bus, ptr noundef %buf, ptr nocapture noundef readonly %sprom_read) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sprom_size = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 12
  %0 = ptrtoint ptr %sprom_size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sprom_size, align 2
  %conv = zext i16 %1 to i32
  %2 = shl nuw nsw i32 %conv, 1
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %entry.out.thread_crit_edge, label %if.end

entry.out.thread_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread

if.end:                                           ; preds = %entry
  %sprom_mutex = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 8
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %sprom_mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out.thread.sink.split_crit_edge

if.end.out.thread.sink.split_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread.sink.split

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 %sprom_read(ptr noundef %bus, ptr noundef nonnull %call8.i.i) #8
  tail call void @mutex_unlock(ptr noundef %sprom_mutex) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool7.not = icmp eq i32 %call5, 0
  br i1 %tobool7.not, label %if.then8, label %if.end4.out.thread.sink.split_crit_edge

if.end4.out.thread.sink.split_crit_edge:          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread.sink.split

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp1.not.i = icmp eq i16 %1, 0
  br i1 %cmp1.not.i, label %if.then8..loopexit_crit_edge, label %if.then8.for.body.i_crit_edge

if.then8.for.body.i_crit_edge:                    ; preds = %if.then8
  br label %for.body.i

if.then8..loopexit_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %.loopexit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then8.for.body.i_crit_edge
  %pos.03.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then8.for.body.i_crit_edge ]
  %i.02.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then8.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %pos.03.i
  %sub1.i = sub i32 4095, %pos.03.i
  %arrayidx.i = getelementptr i16, ptr %call8.i.i, i32 %i.02.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx.i, align 2
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #8
  %conv.i = zext i16 %5 to i32
  %call.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i, i32 noundef %sub1.i, ptr noundef nonnull @.str.6, i32 noundef %conv.i) #8
  %add.i = add i32 %call.i, %pos.03.i
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv
  br i1 %exitcond.not.i, label %for.body.i..loopexit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i..loopexit_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %.loopexit

.loopexit:                                        ; preds = %for.body.i..loopexit_crit_edge, %if.then8..loopexit_crit_edge
  %pos.0.lcssa.i = phi i32 [ 0, %if.then8..loopexit_crit_edge ], [ %add.i, %for.body.i..loopexit_crit_edge ]
  %add.ptr2.i = getelementptr i8, ptr %buf, i32 %pos.0.lcssa.i
  %sub4.i = sub i32 4095, %pos.0.lcssa.i
  %call5.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2.i, i32 noundef %sub4.i, ptr noundef nonnull @.str.7) #8
  %add6.i = add i32 %pos.0.lcssa.i, 1
  %add7.i = add i32 %add6.i, %call5.i
  br label %out.thread.sink.split

out.thread.sink.split:                            ; preds = %.loopexit, %if.end4.out.thread.sink.split_crit_edge, %if.end.out.thread.sink.split_crit_edge
  %.ph = phi i32 [ %add7.i, %.loopexit ], [ %call5, %if.end4.out.thread.sink.split_crit_edge ], [ -512, %if.end.out.thread.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #8
  br label %out.thread

out.thread:                                       ; preds = %out.thread.sink.split, %entry.out.thread_crit_edge
  %6 = phi i32 [ -12, %entry.out.thread_crit_edge ], [ %.ph, %out.thread.sink.split ]
  ret i32 %6
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssb_attr_sprom_store(ptr noundef %bus, ptr nocapture noundef readonly %buf, i32 noundef %count, ptr nocapture noundef readonly %sprom_check_crc, ptr nocapture noundef readonly %sprom_write) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca [5 x i8], align 4
  %parsed.i = alloca i32, align 4
  %freeze = alloca %struct.ssb_freeze_context, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sprom_size = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 12
  %0 = ptrtoint ptr %sprom_size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sprom_size, align 2
  %conv = zext i16 %1 to i32
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %freeze) #8
  %2 = call ptr @memset(ptr %freeze, i32 255, i32 20)
  %3 = shl nuw nsw i32 %conv, 1
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %entry..thread_crit_edge, label %if.end

entry..thread_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %.thread

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %tmp.i) #8
  %4 = getelementptr inbounds i8, ptr %tmp.i, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parsed.i) #8
  %6 = ptrtoint ptr %parsed.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %parsed.i, align 4, !annotation !25
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end
  %len.addr.0.i = phi i32 [ %count, %if.end ], [ %sub.i, %while.body.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.i)
  %tobool.not.i = icmp eq i32 %len.addr.0.i, 0
  br i1 %tobool.not.i, label %while.cond.i.while.end.i_crit_edge, label %while.body.i

while.cond.i.while.end.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %sub.i = add i32 %len.addr.0.i, -1
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %sub.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %8 to i32
  %arrayidx1.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %9 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx1.i, align 1
  %11 = and i8 %10, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp.not.i = icmp ne i8 %11, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp5.not.i = icmp eq i8 %8, 0
  %or.cond.i = select i1 %cmp.not.i, i1 true, i1 %cmp5.not.i
  br i1 %or.cond.i, label %while.body.i.while.cond.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %while.cond.i.while.end.i_crit_edge
  %mul.i = shl nuw nsw i32 %conv, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %len.addr.0.i, i32 %mul.i)
  %cmp7.not.i = icmp eq i32 %len.addr.0.i, %mul.i
  br i1 %cmp7.not.i, label %while.cond11.preheader.i, label %while.end.i.hex2sprom.exit_crit_edge

while.end.i.hex2sprom.exit_crit_edge:             ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hex2sprom.exit

while.cond11.preheader.i:                         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp1235.not.i = icmp eq i16 %1, 0
  br i1 %cmp1235.not.i, label %while.cond11.preheader.i.if.end6_crit_edge, label %while.cond11.preheader.i.while.body14.i_crit_edge

while.cond11.preheader.i.while.body14.i_crit_edge: ; preds = %while.cond11.preheader.i
  br label %while.body14.i

while.cond11.preheader.i.if.end6_crit_edge:       ; preds = %while.cond11.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

while.body14.i:                                   ; preds = %if.end18.i.while.body14.i_crit_edge, %while.cond11.preheader.i.while.body14.i_crit_edge
  %cnt.037.i = phi i32 [ %inc.i, %if.end18.i.while.body14.i_crit_edge ], [ 0, %while.cond11.preheader.i.while.body14.i_crit_edge ]
  %dump.addr.036.i = phi ptr [ %add.ptr.i, %if.end18.i.while.body14.i_crit_edge ], [ %buf, %while.cond11.preheader.i.while.body14.i_crit_edge ]
  %12 = ptrtoint ptr %dump.addr.036.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %dump.addr.036.i, align 1
  %14 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %tmp.i, align 4
  %call.i.i = call i32 @_kstrtoul(ptr noundef nonnull %tmp.i, i32 noundef 16, ptr noundef nonnull %parsed.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool16.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %while.body14.i.hex2sprom.exit_crit_edge

while.body14.i.hex2sprom.exit_crit_edge:          ; preds = %while.body14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hex2sprom.exit

if.end18.i:                                       ; preds = %while.body14.i
  %add.ptr.i = getelementptr i8, ptr %dump.addr.036.i, i32 4
  %15 = ptrtoint ptr %parsed.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %parsed.i, align 4
  %conv19.i = trunc i32 %16 to i16
  %17 = call i16 @llvm.bswap.i16(i16 %conv19.i) #8
  %inc.i = add nuw nsw i32 %cnt.037.i, 1
  %arrayidx20.i = getelementptr i16, ptr %call8.i.i, i32 %cnt.037.i
  %18 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %arrayidx20.i, align 2
  %exitcond.not.i = icmp eq i32 %inc.i, %conv
  br i1 %exitcond.not.i, label %if.end18.i.if.end6_crit_edge, label %if.end18.i.while.body14.i_crit_edge

if.end18.i.while.body14.i_crit_edge:              ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body14.i

if.end18.i.if.end6_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

hex2sprom.exit:                                   ; preds = %while.body14.i.hex2sprom.exit_crit_edge, %while.end.i.hex2sprom.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parsed.i) #8
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %tmp.i) #8
  br label %out.thread73

if.end6:                                          ; preds = %if.end18.i.if.end6_crit_edge, %while.cond11.preheader.i.if.end6_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parsed.i) #8
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %tmp.i) #8
  %call7 = call i32 %sprom_check_crc(ptr noundef nonnull %call8.i.i, i32 noundef %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.out.thread73_crit_edge

if.end6.out.thread73_crit_edge:                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread73

if.end10:                                         ; preds = %if.end6
  %sprom_mutex = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 8
  %call11 = call i32 @mutex_lock_interruptible_nested(ptr noundef %sprom_mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.out.thread73_crit_edge

if.end10.out.thread73_crit_edge:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread73

if.end14:                                         ; preds = %if.end10
  %call15 = call i32 @ssb_devices_freeze(ptr noundef %bus, ptr noundef nonnull %freeze) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end19, label %if.end14.out.sink.split_crit_edge

if.end14.out.sink.split_crit_edge:                ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.sink.split

if.end19:                                         ; preds = %if.end14
  %call20 = call i32 %sprom_write(ptr noundef %bus, ptr noundef nonnull %call8.i.i) #8
  %call21 = call i32 @ssb_devices_thaw(ptr noundef nonnull %freeze) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end19.out_crit_edge, label %if.end19.out.sink.split_crit_edge

if.end19.out.sink.split_crit_edge:                ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.sink.split

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out.thread73:                                     ; preds = %if.end10.out.thread73_crit_edge, %if.end6.out.thread73_crit_edge, %hex2sprom.exit
  %err.1.ph = phi i32 [ -22, %if.end6.out.thread73_crit_edge ], [ -22, %hex2sprom.exit ], [ -512, %if.end10.out.thread73_crit_edge ]
  call void @kfree(ptr noundef nonnull %call8.i.i) #8
  br label %.thread

out.sink.split:                                   ; preds = %if.end19.out.sink.split_crit_edge, %if.end14.out.sink.split_crit_edge
  %.str.sink = phi ptr [ @.str, %if.end14.out.sink.split_crit_edge ], [ @.str.4, %if.end19.out.sink.split_crit_edge ]
  %res.0.ph = phi i32 [ 0, %if.end14.out.sink.split_crit_edge ], [ %call20, %if.end19.out.sink.split_crit_edge ]
  %err.0.ph = phi i32 [ %call15, %if.end14.out.sink.split_crit_edge ], [ %call21, %if.end19.out.sink.split_crit_edge ]
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.sink) #12
  br label %out

out:                                              ; preds = %out.sink.split, %if.end19.out_crit_edge
  %res.0 = phi i32 [ %call20, %if.end19.out_crit_edge ], [ %res.0.ph, %out.sink.split ]
  %err.0 = phi i32 [ 0, %if.end19.out_crit_edge ], [ %err.0.ph, %out.sink.split ]
  call void @mutex_unlock(ptr noundef %sprom_mutex) #8
  call void @kfree(ptr noundef nonnull %call8.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0)
  %tobool31.not = icmp eq i32 %res.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool34.not = icmp eq i32 %err.0, 0
  %19 = select i1 %tobool34.not, i32 %count, i32 %err.0
  br i1 %tobool31.not, label %out..thread_crit_edge, label %out._crit_edge

out._crit_edge:                                   ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %21

out..thread_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %.thread

.thread:                                          ; preds = %out..thread_crit_edge, %out.thread73, %entry..thread_crit_edge
  %20 = phi i32 [ %err.1.ph, %out.thread73 ], [ -12, %entry..thread_crit_edge ], [ %19, %out..thread_crit_edge ]
  br label %21

21:                                               ; preds = %.thread, %out._crit_edge
  %22 = phi i32 [ %20, %.thread ], [ %res.0, %out._crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %freeze) #8
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssb_devices_freeze(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssb_devices_thaw(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ssb_arch_register_fallback_sprom(ptr noundef %sprom_callback) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @get_fallback_sprom, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %sprom_callback, ptr @get_fallback_sprom, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -17, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssb_fill_sprom_with_fallback(ptr noundef %bus, ptr noundef %out) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @get_fallback_sprom, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 %0(ptr noundef %bus, ptr noundef %out) #8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -2, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ssb_is_sprom_available(ptr nocapture noundef readonly %bus) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bustype = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 5
  %0 = ptrtoint ptr %bustype to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bustype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %land.lhs.true, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

land.lhs.true:                                    ; preds = %entry
  %chipco = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 17
  %2 = ptrtoint ptr %chipco to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chipco, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.lhs.true.return_crit_edge, label %land.lhs.true1

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

land.lhs.true1:                                   ; preds = %land.lhs.true
  %revision = getelementptr inbounds %struct.ssb_device, ptr %3, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %5)
  %cmp4 = icmp ugt i8 %5, 30
  br i1 %cmp4, label %if.then, label %land.lhs.true1.return_crit_edge

land.lhs.true1.return_crit_edge:                  ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then:                                          ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #10
  %capabilities = getelementptr inbounds %struct.ssb_bus, ptr %bus, i32 0, i32 17, i32 1
  %6 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %capabilities, align 4
  %and = and i32 %7, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7 = icmp ne i32 %and, 0
  br label %return

return:                                           ; preds = %if.then, %land.lhs.true1.return_crit_edge, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ %tobool7, %if.then ], [ true, %land.lhs.true1.return_crit_edge ], [ true, %land.lhs.true.return_crit_edge ], [ true, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/ssb/sprom.c", i32 132, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ssb_attr_sprom_store._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ssb_attr_sprom_store._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/ssb/sprom.c", i32 138, i32 3}
!8 = !{ptr @ssb_attr_sprom_store._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @ssb_attr_sprom_store._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @get_fallback_sprom, !11, !"get_fallback_sprom", i1 false, i1 false}
!11 = !{!"../drivers/ssb/sprom.c", i32 20, i32 13}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/ssb/sprom.c", i32 30, i32 5}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/ssb/sprom.c", i32 31, i32 49}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{!"auto-init"}
