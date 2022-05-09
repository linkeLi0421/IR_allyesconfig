; ModuleID = '/llk/IR_all_yes/drivers/scsi/snic/snic_trc.c_pt.bc'
source_filename = "../drivers/scsi/snic/snic_trc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snic_global = type { %struct.list_head, %struct.spinlock, [3 x ptr], ptr, ptr, ptr, [52 x i8], %struct.snic_trc, [64 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snic_trc = type { %struct.spinlock, ptr, i32, i32, i32, i8 }
%struct.snic_trc_data = type <{ i64, ptr, i32, i32, [5 x i64] }>
%struct.timespec64 = type { i64, i32 }

@snic_glob = external dso_local local_unnamed_addr global ptr, align 4
@snic_trace_max_pages = external dso_local local_unnamed_addr global i32, align 4
@snic_trc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013snic:Failed to Allocate Trace Buffer Size. %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snic_trc_init\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/scsi/snic/snic_trc.c\00", [35 x i8] zeroinitializer }, align 32
@snic_trc_init._entry_ptr = internal global ptr @snic_trc_init._entry, section ".printk_index", align 4
@snic_trc_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013snic:Trace Facility not enabled.\0A\00", [60 x i8] zeroinitializer }, align 32
@snic_trc_init._entry_ptr.5 = internal global ptr @snic_trc_init._entry.3, section ".printk_index", align 4
@snic_trc_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&trc->lock\00", [21 x i8] zeroinitializer }, align 32
@snic_trc_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016snic:Trace Facility Enabled.\0A Trace Buffer SZ %lu Pages.\0A\00", [36 x i8] zeroinitializer }, align 32
@snic_trc_init._entry_ptr.9 = internal global ptr @snic_trc_init._entry.7, section ".printk_index", align 4
@snic_trc_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016snic:Trace Facility Disabled.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snic_trc_free\00", [18 x i8] zeroinitializer }, align 32
@snic_trc_free._entry_ptr = internal global ptr @snic_trc_free._entry, section ".printk_index", align 4
@.str.12 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%llu.%09lu %-25s %3d %4x %16llx %16llx %16llx %16llx %16llx\0A\00", [35 x i8] zeroinitializer }, align 32
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 131, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 132, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 139, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 146, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 169, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [32 x i8] c"../drivers/scsi/snic/snic_trc.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 73, i32 4 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @snic_trc_free._entry, ptr @snic_trc_free._entry_ptr, ptr @snic_trc_init._entry, ptr @snic_trc_init._entry.3, ptr @snic_trc_init._entry.7, ptr @snic_trc_init._entry_ptr, ptr @snic_trc_init._entry_ptr.5, ptr @snic_trc_init._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @snic_trc_init.__key, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_trc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_trc_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_trc_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_trc_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_trc_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @snic_get_trc_buf() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_glob to i32))
  %0 = load ptr, ptr @snic_glob, align 4
  %trc1 = getelementptr inbounds %struct.snic_global, ptr %0, i32 0, i32 7
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %trc1) #6
  %buf = getelementptr inbounds %struct.snic_global, ptr %0, i32 0, i32 7, i32 1
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %buf, align 4
  %wr_idx = getelementptr inbounds %struct.snic_global, ptr %0, i32 0, i32 7, i32 4
  %3 = ptrtoint ptr %wr_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wr_idx, align 4
  %arrayidx = getelementptr %struct.snic_trc_data, ptr %2, i32 %4
  %inc = add i32 %4, 1
  %max_idx = getelementptr inbounds %struct.snic_global, ptr %0, i32 0, i32 7, i32 2
  %5 = ptrtoint ptr %max_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %6)
  %cmp8 = icmp eq i32 %inc, %6
  %spec.store.select = select i1 %cmp8, i32 0, i32 %inc
  %7 = ptrtoint ptr %wr_idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %spec.store.select, ptr %wr_idx, align 4
  %rd_idx = getelementptr inbounds %struct.snic_global, ptr %0, i32 0, i32 7, i32 3
  %8 = ptrtoint ptr %rd_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rd_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.store.select, i32 %9)
  %cmp12.not = icmp eq i32 %spec.store.select, %9
  br i1 %cmp12.not, label %if.end16, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

if.end16:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %inc18 = add i32 %spec.store.select, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc18, i32 %6)
  %cmp21 = icmp eq i32 %inc18, %6
  %spec.store.select43 = select i1 %cmp21, i32 0, i32 %inc18
  %10 = ptrtoint ptr %rd_idx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %spec.store.select43, ptr %rd_idx, align 4
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 0, ptr %arrayidx, align 1
  br label %end

end:                                              ; preds = %if.end16, %entry.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %trc1, i32 noundef %call3) #6
  ret ptr %arrayidx
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snic_get_trc_data(ptr nocapture noundef writeonly %buf, i32 noundef %buf_sz) local_unnamed_addr #0 align 64 {
entry:
  %tmspec.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_glob to i32))
  %0 = load ptr, ptr @snic_glob, align 4
  %trc1 = getelementptr inbounds %struct.snic_global, ptr %0, i32 0, i32 7
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %trc1) #6
  %rd_idx = getelementptr inbounds %struct.snic_global, ptr %0, i32 0, i32 7, i32 3
  %1 = ptrtoint ptr %rd_idx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rd_idx, align 4
  %wr_idx = getelementptr inbounds %struct.snic_global, ptr %0, i32 0, i32 7, i32 4
  %3 = ptrtoint ptr %wr_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wr_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp6 = icmp eq i32 %2, %4
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %trc1, i32 noundef %call3) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %buf9 = getelementptr inbounds %struct.snic_global, ptr %0, i32 0, i32 7, i32 1
  %5 = ptrtoint ptr %buf9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buf9, align 4
  %arrayidx = getelementptr %struct.snic_trc_data, ptr %6, i32 %2
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %cmp11 = icmp eq i64 %8, 0
  br i1 %cmp11, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %trc1, i32 noundef %call3) #6
  br label %cleanup

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %inc = add i32 %2, 1
  %max_idx = getelementptr inbounds %struct.snic_global, ptr %0, i32 0, i32 7, i32 2
  %9 = ptrtoint ptr %max_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %10)
  %cmp18 = icmp eq i32 %inc, %10
  %spec.store.select = select i1 %cmp18, i32 0, i32 %inc
  %11 = ptrtoint ptr %rd_idx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.store.select, ptr %rd_idx, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %trc1, i32 noundef %call3) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmspec.i) #6
  %12 = call ptr @memset(ptr %tmspec.i, i32 255, i32 16)
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %arrayidx, align 1
  %conv.i = trunc i64 %14 to i32
  call void @jiffies_to_timespec64(i32 noundef %conv.i, ptr noundef nonnull %tmspec.i) #6
  %15 = ptrtoint ptr %tmspec.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %tmspec.i, align 8
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %tmspec.i, i32 0, i32 1
  %17 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tv_nsec.i, align 8
  %fn.i = getelementptr %struct.snic_trc_data, ptr %6, i32 %2, i32 1
  %19 = ptrtoint ptr %fn.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load ptr, ptr %fn.i, align 1
  %hno.i = getelementptr %struct.snic_trc_data, ptr %6, i32 %2, i32 2
  %21 = ptrtoint ptr %hno.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %hno.i, align 1
  %tag.i = getelementptr %struct.snic_trc_data, ptr %6, i32 %2, i32 3
  %23 = ptrtoint ptr %tag.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %tag.i, align 1
  %data.i = getelementptr %struct.snic_trc_data, ptr %6, i32 %2, i32 4
  %25 = ptrtoint ptr %data.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %26 = load i64, ptr %data.i, align 1
  %arrayidx2.i = getelementptr %struct.snic_trc_data, ptr %6, i32 %2, i32 4, i32 1
  %27 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 8)
  %28 = load i64, ptr %arrayidx2.i, align 1
  %arrayidx4.i = getelementptr %struct.snic_trc_data, ptr %6, i32 %2, i32 4, i32 2
  %29 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 8)
  %30 = load i64, ptr %arrayidx4.i, align 1
  %arrayidx6.i = getelementptr %struct.snic_trc_data, ptr %6, i32 %2, i32 4, i32 3
  %31 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 8)
  %32 = load i64, ptr %arrayidx6.i, align 1
  %arrayidx8.i = getelementptr %struct.snic_trc_data, ptr %6, i32 %2, i32 4, i32 4
  %33 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 8)
  %34 = load i64, ptr %arrayidx8.i, align 1
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef %buf_sz, ptr noundef nonnull @.str.12, i64 noundef %16, i32 noundef %18, ptr noundef %20, i32 noundef %22, i32 noundef %24, i64 noundef %26, i64 noundef %28, i64 noundef %30, i64 noundef %32, i64 noundef %34) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmspec.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then13, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then13 ], [ %call.i, %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snic_trc_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_glob to i32))
  %0 = load ptr, ptr @snic_glob, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_trace_max_pages to i32))
  %1 = load i32, ptr @snic_trace_max_pages, align 4
  %mul = shl i32 %1, 12
  %call = tail call noalias ptr @vzalloc(i32 noundef %mul) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %mul) #10
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %trc1 = getelementptr inbounds %struct.snic_global, ptr %0, i32 0, i32 7
  %buf = getelementptr inbounds %struct.snic_global, ptr %0, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %buf, align 4
  tail call void @__raw_spin_lock_init(ptr noundef %trc1, ptr noundef nonnull @.str.6, ptr noundef nonnull @snic_trc_init.__key, i16 noundef signext 3) #6
  tail call void @snic_trc_debugfs_init() #6
  %div = sdiv i32 %mul, 64
  %max_idx = getelementptr inbounds %struct.snic_global, ptr %0, i32 0, i32 7, i32 2
  %3 = ptrtoint ptr %max_idx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %div, ptr %max_idx, align 4
  %wr_idx = getelementptr inbounds %struct.snic_global, ptr %0, i32 0, i32 7, i32 4
  %4 = ptrtoint ptr %wr_idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wr_idx, align 4
  %rd_idx = getelementptr inbounds %struct.snic_global, ptr %0, i32 0, i32 7, i32 3
  %5 = ptrtoint ptr %rd_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %rd_idx, align 4
  %enable = getelementptr inbounds %struct.snic_global, ptr %0, i32 0, i32 7, i32 5
  %6 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %enable, align 4
  %div1631 = and i32 %1, 1048575
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %div1631) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snic_trc_debugfs_init() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snic_trc_free() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_glob to i32))
  %0 = load ptr, ptr @snic_glob, align 4
  %enable = getelementptr inbounds %struct.snic_global, ptr %0, i32 0, i32 7, i32 5
  %1 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %enable, align 4
  tail call void @snic_trc_debugfs_term() #6
  %buf = getelementptr inbounds %struct.snic_global, ptr %0, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @vfree(ptr noundef nonnull %3) #6
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %buf, align 4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snic_trc_debugfs_term() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @jiffies_to_timespec64(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !15, !16, !17, !19, !20, !21, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/snic/snic_trc.c", i32 131, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @snic_trc_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @snic_trc_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/snic/snic_trc.c", i32 132, i32 3}
!8 = !{ptr @snic_trc_init._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @snic_trc_init._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @snic_trc_init.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/scsi/snic/snic_trc.c", i32 139, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/scsi/snic/snic_trc.c", i32 146, i32 2}
!15 = !{ptr @snic_trc_init._entry.7, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @snic_trc_init._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/scsi/snic/snic_trc.c", i32 169, i32 2}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @snic_trc_free._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @snic_trc_free._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/snic/snic_trc.c", i32 73, i32 4}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
