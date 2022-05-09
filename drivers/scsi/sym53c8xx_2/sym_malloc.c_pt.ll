; ModuleID = '/llk/IR_all_yes/drivers/scsi/sym53c8xx_2/sym_malloc.c_pt.bc'
source_filename = "../drivers/scsi/sym53c8xx_2/sym_malloc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sym_m_pool = type { ptr, ptr, ptr, i32, [32 x ptr], ptr, [9 x %struct.sym_m_link] }
%struct.sym_m_link = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sym_m_vtob = type { ptr, ptr, i32 }

@sym53c8xx_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sym: VTOBUS FAILED!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sym53c8xx_lock\00", [17 x i8] zeroinitializer }, align 32
@mp0 = internal global { %struct.sym_m_pool, [40 x i8] } { %struct.sym_m_pool { ptr null, ptr @___mp0_get_mem_cluster, ptr @___mp0_free_mem_cluster, i32 0, [32 x ptr] zeroinitializer, ptr null, [9 x %struct.sym_m_link] zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MPOOL\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VTOB\00", [27 x i8] zeroinitializer }, align 32
@sym_debug_flags = external dso_local local_unnamed_addr global i32, align 4
@__sym_calloc2._entry = internal constant %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 152, ptr null, ptr null }, align 1
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"new %-10s[%4d] @%p.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"__sym_calloc2\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/scsi/sym53c8xx_2/sym_malloc.c\00", [58 x i8] zeroinitializer }, align 32
@__sym_calloc2._entry_ptr = internal global ptr @__sym_calloc2._entry, section ".printk_index", align 4
@__sym_calloc2._entry.7 = internal constant %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.6, i32 158, ptr null, ptr null }, align 1
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"__sym_calloc2: failed to allocate %s[%d]\0A\00", [54 x i8] zeroinitializer }, align 32
@__sym_calloc2._entry_ptr.9 = internal global ptr @__sym_calloc2._entry.7, section ".printk_index", align 4
@__sym_mfree._entry = internal constant %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.6, i32 169, ptr null, ptr null }, align 1
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"freeing %-10s[%4d] @%p.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"__sym_mfree\00", [20 x i8] zeroinitializer }, align 32
@__sym_mfree._entry_ptr = internal global ptr @__sym_mfree._entry, section ".printk_index", align 4
@___asan_gen_.12 = private unnamed_addr constant [15 x i8] c"sym53c8xx_lock\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 361, i32 9 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 294, i32 8 }
@___asan_gen_.21 = private unnamed_addr constant [4 x i8] c"mp0\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 198, i32 26 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 264, i32 16 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 215, i32 8 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 152, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 158, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private constant [41 x i8] c"../drivers/scsi/sym53c8xx_2/sym_malloc.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 169, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__sym_calloc2._entry, ptr @__sym_calloc2._entry.7, ptr @__sym_calloc2._entry_ptr, ptr @__sym_calloc2._entry_ptr.9, ptr @__sym_mfree._entry, ptr @__sym_mfree._entry_ptr, ptr @sym53c8xx_lock, ptr @.str, ptr @.str.1, ptr @mp0, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sym53c8xx_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mp0 to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__sym_calloc_dma(ptr noundef %dev_dmat, i32 noundef %size, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @sym53c8xx_lock) #5
  %mp.05.i = load ptr, ptr getelementptr inbounds (%struct.sym_m_pool, ptr @mp0, i32 0, i32 5), align 4
  %tobool.not6.i = icmp eq ptr %mp.05.i, null
  br i1 %tobool.not6.i, label %entry.if.then_crit_edge, label %entry.land.rhs.i_crit_edge

entry.land.rhs.i_crit_edge:                       ; preds = %entry
  br label %land.rhs.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %entry.land.rhs.i_crit_edge
  %mp.07.i = phi ptr [ %mp.0.i, %for.inc.i.land.rhs.i_crit_edge ], [ %mp.05.i, %entry.land.rhs.i_crit_edge ]
  %0 = ptrtoint ptr %mp.07.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mp.07.i, align 4
  %cmp.not.i = icmp eq ptr %1, %dev_dmat
  br i1 %cmp.not.i, label %land.rhs.i.if.end9_crit_edge, label %for.inc.i

land.rhs.i.if.end9_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

for.inc.i:                                        ; preds = %land.rhs.i
  %next.i = getelementptr inbounds %struct.sym_m_pool, ptr %mp.07.i, i32 0, i32 5
  %2 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %mp.0.i = load ptr, ptr %next.i, align 4
  %tobool.not.i = icmp eq ptr %mp.0.i, null
  br i1 %tobool.not.i, label %for.inc.i.if.then_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

for.inc.i.if.then_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %for.inc.i.if.then_crit_edge, %entry.if.then_crit_edge
  %call.i = tail call fastcc ptr @__sym_calloc2(ptr noundef nonnull @mp0, i32 noundef 184, ptr noundef nonnull @.str.2) #5
  %tobool.not.i19 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i19, label %if.then.out_crit_edge, label %if.then.i

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev_dmat, ptr %call.i, align 4
  %get_mem_cluster.i = getelementptr inbounds %struct.sym_m_pool, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %get_mem_cluster.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @___get_dma_mem_cluster, ptr %get_mem_cluster.i, align 4
  %free_mem_cluster.i = getelementptr inbounds %struct.sym_m_pool, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %free_mem_cluster.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @___free_dma_mem_cluster, ptr %free_mem_cluster.i, align 4
  %6 = load ptr, ptr getelementptr inbounds (%struct.sym_m_pool, ptr @mp0, i32 0, i32 5), align 4
  %next.i20 = getelementptr inbounds %struct.sym_m_pool, ptr %call.i, i32 0, i32 5
  %7 = ptrtoint ptr %next.i20 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %next.i20, align 4
  store ptr %call.i, ptr getelementptr inbounds (%struct.sym_m_pool, ptr @mp0, i32 0, i32 5), align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then.i, %land.rhs.i.if.end9_crit_edge
  %mp.0.ph = phi ptr [ %call.i, %if.then.i ], [ %mp.07.i, %land.rhs.i.if.end9_crit_edge ]
  %call10 = tail call fastcc ptr @__sym_calloc2(ptr noundef nonnull %mp.0.ph, i32 noundef %size, ptr noundef %name)
  %nump = getelementptr inbounds %struct.sym_m_pool, ptr %mp.0.ph, i32 0, i32 3
  %8 = ptrtoint ptr %nump to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nump, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool11.not = icmp eq i32 %9, 0
  br i1 %tobool11.not, label %if.then12, label %if.end9.out_crit_edge

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @___del_dma_pool(ptr noundef nonnull %mp.0.ph)
  br label %out

out:                                              ; preds = %if.then12, %if.end9.out_crit_edge, %if.then.out_crit_edge
  %m.0 = phi ptr [ %call10, %if.end9.out_crit_edge ], [ %call10, %if.then12 ], [ null, %if.then.out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @sym53c8xx_lock, i32 noundef %call2) #5
  ret ptr %m.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__sym_calloc2(ptr noundef %mp, i32 noundef %size, ptr noundef %name) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %h1.i = getelementptr inbounds %struct.sym_m_pool, ptr %mp, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %size)
  %cmp.i = icmp ugt i32 %size, 4096
  br i1 %cmp.i, label %entry.___sym_malloc.exit_crit_edge, label %while.cond.preheader.i

entry.___sym_malloc.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %___sym_malloc.exit

while.cond.preheader.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %size)
  %cmp285.i = icmp ugt i32 %size, 16
  br i1 %cmp285.i, label %while.cond.preheader.i.while.body.i_crit_edge, label %while.cond3.preheader.i.thread

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond3.preheader.i:                          ; preds = %while.body.i
  %arrayidx89.i = getelementptr %struct.sym_m_link, ptr %h1.i, i32 %inc.i
  %0 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx89.i, align 4
  %tobool.not90.i = icmp eq ptr %1, null
  br i1 %tobool.not90.i, label %while.body4.i.preheader, label %while.cond3.preheader.i.if.then24.thread.i_crit_edge

while.cond3.preheader.i.if.then24.thread.i_crit_edge: ; preds = %while.cond3.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24.thread.i

while.cond3.preheader.i.thread:                   ; preds = %while.cond.preheader.i
  %2 = ptrtoint ptr %h1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %h1.i, align 4
  %tobool.not90.i14 = icmp eq ptr %3, null
  br i1 %tobool.not90.i14, label %while.cond3.preheader.i.thread.if.end17.i.preheader_crit_edge, label %while.cond3.preheader.i.thread.if.then24.thread.i_crit_edge

while.cond3.preheader.i.thread.if.then24.thread.i_crit_edge: ; preds = %while.cond3.preheader.i.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24.thread.i

while.cond3.preheader.i.thread.if.end17.i.preheader_crit_edge: ; preds = %while.cond3.preheader.i.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i.preheader

while.body4.i.preheader:                          ; preds = %while.cond3.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %shl.i)
  %cmp5.i3 = icmp eq i32 %shl.i, 4096
  br i1 %cmp5.i3, label %while.body4.i.preheader.if.then6.i_crit_edge, label %while.body4.i.preheader.if.end17.i.preheader_crit_edge

while.body4.i.preheader.if.end17.i.preheader_crit_edge: ; preds = %while.body4.i.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i.preheader

while.body4.i.preheader.if.then6.i_crit_edge:     ; preds = %while.body4.i.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then6.i

if.end17.i.preheader:                             ; preds = %while.body4.i.preheader.if.end17.i.preheader_crit_edge, %while.cond3.preheader.i.thread.if.end17.i.preheader_crit_edge
  %i.0.lcssa.i1526 = phi i32 [ %inc.i, %while.body4.i.preheader.if.end17.i.preheader_crit_edge ], [ 0, %while.cond3.preheader.i.thread.if.end17.i.preheader_crit_edge ]
  %s.0.lcssa.i1623 = phi i32 [ %shl.i, %while.body4.i.preheader.if.end17.i.preheader_crit_edge ], [ 16, %while.cond3.preheader.i.thread.if.end17.i.preheader_crit_edge ]
  br label %if.end17.i

if.then24.thread.i:                               ; preds = %while.cond3.preheader.i.thread.if.then24.thread.i_crit_edge, %while.cond3.preheader.i.if.then24.thread.i_crit_edge
  %4 = phi ptr [ %3, %while.cond3.preheader.i.thread.if.then24.thread.i_crit_edge ], [ %1, %while.cond3.preheader.i.if.then24.thread.i_crit_edge ]
  %arrayidx89.i17 = phi ptr [ %h1.i, %while.cond3.preheader.i.thread.if.then24.thread.i_crit_edge ], [ %arrayidx89.i, %while.cond3.preheader.i.if.then24.thread.i_crit_edge ]
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %7 = ptrtoint ptr %arrayidx89.i17 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %arrayidx89.i17, align 4
  br label %___sym_malloc.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %s.087.i = phi i32 [ %shl.i, %while.body.i.while.body.i_crit_edge ], [ 16, %while.cond.preheader.i.while.body.i_crit_edge ]
  %i.086.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %while.cond.preheader.i.while.body.i_crit_edge ]
  %shl.i = shl i32 %s.087.i, 1
  %inc.i = add i32 %i.086.i, 1
  %cmp2.i = icmp slt i32 %shl.i, %size
  br i1 %cmp2.i, label %while.body.i.while.body.i_crit_edge, label %while.cond3.preheader.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.body4.i:                                    ; preds = %if.end17.i
  %cmp5.i = icmp eq i32 %shl19.i, 4096
  br i1 %cmp5.i, label %while.body4.i.if.then6.i_crit_edge, label %while.body4.i.if.end17.i_crit_edge

while.body4.i.if.end17.i_crit_edge:               ; preds = %while.body4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i

while.body4.i.if.then6.i_crit_edge:               ; preds = %while.body4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then6.i

if.then6.i:                                       ; preds = %while.body4.i.if.then6.i_crit_edge, %while.body4.i.preheader.if.then6.i_crit_edge
  %i.0.lcssa.i1525 = phi i32 [ %inc.i, %while.body4.i.preheader.if.then6.i_crit_edge ], [ %i.0.lcssa.i1526, %while.body4.i.if.then6.i_crit_edge ]
  %arrayidx93.i.lcssa = phi ptr [ %arrayidx89.i, %while.body4.i.preheader.if.then6.i_crit_edge ], [ %arrayidx.i, %while.body4.i.if.then6.i_crit_edge ]
  %j.092.i.lcssa = phi i32 [ %inc.i, %while.body4.i.preheader.if.then6.i_crit_edge ], [ %inc18.i, %while.body4.i.if.then6.i_crit_edge ]
  %get_mem_cluster.i = getelementptr inbounds %struct.sym_m_pool, ptr %mp, i32 0, i32 1
  %8 = ptrtoint ptr %get_mem_cluster.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_mem_cluster.i, align 4
  %call.i = tail call ptr %9(ptr noundef %mp) #5
  %10 = ptrtoint ptr %arrayidx93.i.lcssa to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %arrayidx93.i.lcssa, align 4
  %tobool11.not.i = icmp eq ptr %call.i, null
  br i1 %tobool11.not.i, label %if.then6.i.___sym_malloc.exit_crit_edge, label %while.end20.i

if.then6.i.___sym_malloc.exit_crit_edge:          ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %___sym_malloc.exit

if.end17.i:                                       ; preds = %while.body4.i.if.end17.i_crit_edge, %if.end17.i.preheader
  %s.191.i5 = phi i32 [ %shl19.i, %while.body4.i.if.end17.i_crit_edge ], [ %s.0.lcssa.i1623, %if.end17.i.preheader ]
  %j.092.i4 = phi i32 [ %inc18.i, %while.body4.i.if.end17.i_crit_edge ], [ %i.0.lcssa.i1526, %if.end17.i.preheader ]
  %inc18.i = add i32 %j.092.i4, 1
  %shl19.i = shl i32 %s.191.i5, 1
  %arrayidx.i = getelementptr %struct.sym_m_link, ptr %h1.i, i32 %inc18.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %while.body4.i, label %if.end17.i.if.then24.i_crit_edge

if.end17.i.if.then24.i_crit_edge:                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24.i

while.end20.i:                                    ; preds = %if.then6.i
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %call.i, align 4
  %14 = ptrtoint ptr %arrayidx93.i.lcssa to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr.i = load ptr, ptr %arrayidx93.i.lcssa, align 4
  %tobool23.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool23.not.i, label %while.end20.i.___sym_malloc.exit_crit_edge, label %while.end20.i.if.then24.i_crit_edge

while.end20.i.if.then24.i_crit_edge:              ; preds = %while.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then24.i

while.end20.i.___sym_malloc.exit_crit_edge:       ; preds = %while.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %___sym_malloc.exit

if.then24.i:                                      ; preds = %while.end20.i.if.then24.i_crit_edge, %if.end17.i.if.then24.i_crit_edge
  %i.0.lcssa.i1524 = phi i32 [ %i.0.lcssa.i1525, %while.end20.i.if.then24.i_crit_edge ], [ %i.0.lcssa.i1526, %if.end17.i.if.then24.i_crit_edge ]
  %s.184.i = phi i32 [ 4096, %while.end20.i.if.then24.i_crit_edge ], [ %shl19.i, %if.end17.i.if.then24.i_crit_edge ]
  %j.082.i = phi i32 [ %j.092.i.lcssa, %while.end20.i.if.then24.i_crit_edge ], [ %inc18.i, %if.end17.i.if.then24.i_crit_edge ]
  %arrayidx80.i = phi ptr [ %arrayidx93.i.lcssa, %while.end20.i.if.then24.i_crit_edge ], [ %arrayidx.i, %if.end17.i.if.then24.i_crit_edge ]
  %15 = phi ptr [ %.pr.i, %while.end20.i.if.then24.i_crit_edge ], [ %12, %if.end17.i.if.then24.i_crit_edge ]
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %18 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %arrayidx80.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %j.082.i, i32 %i.0.lcssa.i1524)
  %cmp3198.i = icmp sgt i32 %j.082.i, %i.0.lcssa.i1524
  br i1 %cmp3198.i, label %if.then24.i.while.body32.i_crit_edge, label %if.then24.i.___sym_malloc.exit_crit_edge

if.then24.i.___sym_malloc.exit_crit_edge:         ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %___sym_malloc.exit

if.then24.i.while.body32.i_crit_edge:             ; preds = %if.then24.i
  br label %while.body32.i

while.body32.i:                                   ; preds = %while.body32.i.while.body32.i_crit_edge, %if.then24.i.while.body32.i_crit_edge
  %j.1100.i = phi i32 [ %sub.i, %while.body32.i.while.body32.i_crit_edge ], [ %j.082.i, %if.then24.i.while.body32.i_crit_edge ]
  %s.299.i = phi i32 [ %shr.i, %while.body32.i.while.body32.i_crit_edge ], [ %s.184.i, %if.then24.i.while.body32.i_crit_edge ]
  %sub.i = add nsw i32 %j.1100.i, -1
  %shr.i = ashr i32 %s.299.i, 1
  %add.ptr.i = getelementptr i8, ptr %15, i32 %shr.i
  %arrayidx33.i = getelementptr %struct.sym_m_link, ptr %h1.i, i32 %sub.i
  %19 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr.i, ptr %arrayidx33.i, align 4
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %add.ptr.i, align 4
  %cmp31.i = icmp sgt i32 %sub.i, %i.0.lcssa.i1524
  br i1 %cmp31.i, label %while.body32.i.while.body32.i_crit_edge, label %while.body32.i.___sym_malloc.exit_crit_edge

while.body32.i.___sym_malloc.exit_crit_edge:      ; preds = %while.body32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %___sym_malloc.exit

while.body32.i.while.body32.i_crit_edge:          ; preds = %while.body32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body32.i

___sym_malloc.exit:                               ; preds = %while.body32.i.___sym_malloc.exit_crit_edge, %if.then24.i.___sym_malloc.exit_crit_edge, %while.end20.i.___sym_malloc.exit_crit_edge, %if.then6.i.___sym_malloc.exit_crit_edge, %if.then24.thread.i, %entry.___sym_malloc.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.___sym_malloc.exit_crit_edge ], [ null, %while.end20.i.___sym_malloc.exit_crit_edge ], [ null, %if.then6.i.___sym_malloc.exit_crit_edge ], [ %15, %if.then24.i.___sym_malloc.exit_crit_edge ], [ %4, %if.then24.thread.i ], [ %15, %while.body32.i.___sym_malloc.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sym_debug_flags to i32))
  %21 = load i32, ptr @sym_debug_flags, align 4
  %and = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %___sym_malloc.exit.if.end_crit_edge, label %do.end

___sym_malloc.exit.if.end_crit_edge:              ; preds = %___sym_malloc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %___sym_malloc.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name, i32 noundef %size, ptr noundef %retval.0.i) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %___sym_malloc.exit.if.end_crit_edge
  %tobool2.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool2.not, label %do.end9, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %22 = call ptr @memset(ptr %retval.0.i, i32 0, i32 %size)
  br label %if.end13

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name, i32 noundef %size) #8
  br label %if.end13

if.end13:                                         ; preds = %do.end9, %if.then3
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @___del_dma_pool(ptr noundef %p) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %pp.0 = phi ptr [ getelementptr inbounds (%struct.sym_m_pool, ptr @mp0, i32 0, i32 5), %entry ], [ %next, %while.cond.while.cond_crit_edge ]
  %0 = ptrtoint ptr %pp.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pp.0, align 4
  %tobool.not = icmp eq ptr %1, null
  %cmp.not = icmp eq ptr %1, %p
  %or.cond = or i1 %tobool.not, %cmp.not
  %next = getelementptr inbounds %struct.sym_m_pool, ptr %1, i32 0, i32 5
  br i1 %or.cond, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br i1 %tobool.not, label %while.end.if.end_crit_edge, label %if.then

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %while.end
  %2 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next, align 4
  %4 = ptrtoint ptr %pp.0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %pp.0, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sym_debug_flags to i32))
  %5 = load i32, ptr @sym_debug_flags, align 4
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.if.end7.i.i.preheader_crit_edge, label %do.end.i

if.then.if.end7.i.i.preheader_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i.i.preheader

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.2, i32 noundef 184, ptr noundef %p) #8
  br label %if.end7.i.i.preheader

if.end7.i.i.preheader:                            ; preds = %do.end.i, %if.then.if.end7.i.i.preheader_crit_edge
  %6 = ptrtoint ptr %p to i32
  %xor.i.i = xor i32 %6, 256
  %7 = inttoptr i32 %xor.i.i to ptr
  br label %while.cond8.i.i

if.then6.i.i:                                     ; preds = %while.end13.i.i.3
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %35, align 4
  %10 = ptrtoint ptr %q.0.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %q.0.i.i.3, align 4
  %and.i.i.3 = and i32 %xor.i.i.3, %and.i.i.2
  %phi.cast = inttoptr i32 %and.i.i.3 to ptr
  %11 = load ptr, ptr getelementptr inbounds (%struct.sym_m_pool, ptr @mp0, i32 0, i32 2), align 4
  tail call void %11(ptr noundef nonnull @mp0, ptr noundef %phi.cast) #5
  br label %if.end

while.cond8.i.i:                                  ; preds = %while.cond8.i.i.while.cond8.i.i_crit_edge, %if.end7.i.i.preheader
  %q.0.i.i = phi ptr [ getelementptr inbounds (%struct.sym_m_pool, ptr @mp0, i32 0, i32 6, i32 4), %if.end7.i.i.preheader ], [ %13, %while.cond8.i.i.while.cond8.i.i_crit_edge ]
  %12 = ptrtoint ptr %q.0.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %q.0.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  %cmp10.not.i.i = icmp eq ptr %13, %7
  %or.cond.i.i = or i1 %tobool.not.i.i, %cmp10.not.i.i
  br i1 %or.cond.i.i, label %while.end13.i.i, label %while.cond8.i.i.while.cond8.i.i_crit_edge

while.cond8.i.i.while.cond8.i.i_crit_edge:        ; preds = %while.cond8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond8.i.i

while.end13.i.i:                                  ; preds = %while.cond8.i.i
  br i1 %tobool.not.i.i, label %while.end13.i.i.if.then16.i.i_crit_edge, label %if.end22.i.i

while.end13.i.i.if.then16.i.i_crit_edge:          ; preds = %while.end13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16.i.i

if.then16.i.i:                                    ; preds = %while.end13.i.i.3.if.then16.i.i_crit_edge, %while.end13.i.i.2.if.then16.i.i_crit_edge, %while.end13.i.i.1.if.then16.i.i_crit_edge, %while.end13.i.i.if.then16.i.i_crit_edge
  %a.066.i.i.lcssa = phi i32 [ %6, %while.end13.i.i.if.then16.i.i_crit_edge ], [ %and.i.i, %while.end13.i.i.1.if.then16.i.i_crit_edge ], [ %and.i.i.1, %while.end13.i.i.2.if.then16.i.i_crit_edge ], [ %and.i.i.2, %while.end13.i.i.3.if.then16.i.i_crit_edge ]
  %arrayidx.i.i.lcssa = phi ptr [ getelementptr inbounds (%struct.sym_m_pool, ptr @mp0, i32 0, i32 6, i32 4), %while.end13.i.i.if.then16.i.i_crit_edge ], [ getelementptr inbounds (%struct.sym_m_pool, ptr @mp0, i32 0, i32 6, i32 5), %while.end13.i.i.1.if.then16.i.i_crit_edge ], [ getelementptr inbounds (%struct.sym_m_pool, ptr @mp0, i32 0, i32 6, i32 6), %while.end13.i.i.2.if.then16.i.i_crit_edge ], [ getelementptr inbounds (%struct.sym_m_pool, ptr @mp0, i32 0, i32 6, i32 7), %while.end13.i.i.3.if.then16.i.i_crit_edge ]
  %14 = ptrtoint ptr %arrayidx.i.i.lcssa to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i.lcssa, align 4
  %16 = inttoptr i32 %a.066.i.i.lcssa to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %16, align 4
  store ptr %16, ptr %arrayidx.i.i.lcssa, align 4
  br label %if.end

if.end22.i.i:                                     ; preds = %while.end13.i.i
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %13, align 4
  %20 = ptrtoint ptr %q.0.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %q.0.i.i, align 4
  %and.i.i = and i32 %xor.i.i, %6
  %xor.i.i.1 = xor i32 %and.i.i, 512
  %21 = inttoptr i32 %xor.i.i.1 to ptr
  br label %while.cond8.i.i.1

while.cond8.i.i.1:                                ; preds = %while.cond8.i.i.1.while.cond8.i.i.1_crit_edge, %if.end22.i.i
  %q.0.i.i.1 = phi ptr [ getelementptr inbounds (%struct.sym_m_pool, ptr @mp0, i32 0, i32 6, i32 5), %if.end22.i.i ], [ %23, %while.cond8.i.i.1.while.cond8.i.i.1_crit_edge ]
  %22 = ptrtoint ptr %q.0.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %q.0.i.i.1, align 4
  %tobool.not.i.i.1 = icmp eq ptr %23, null
  %cmp10.not.i.i.1 = icmp eq ptr %23, %21
  %or.cond.i.i.1 = or i1 %tobool.not.i.i.1, %cmp10.not.i.i.1
  br i1 %or.cond.i.i.1, label %while.end13.i.i.1, label %while.cond8.i.i.1.while.cond8.i.i.1_crit_edge

while.cond8.i.i.1.while.cond8.i.i.1_crit_edge:    ; preds = %while.cond8.i.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond8.i.i.1

while.end13.i.i.1:                                ; preds = %while.cond8.i.i.1
  br i1 %tobool.not.i.i.1, label %while.end13.i.i.1.if.then16.i.i_crit_edge, label %if.end22.i.i.1

while.end13.i.i.1.if.then16.i.i_crit_edge:        ; preds = %while.end13.i.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16.i.i

if.end22.i.i.1:                                   ; preds = %while.end13.i.i.1
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %26 = ptrtoint ptr %q.0.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %q.0.i.i.1, align 4
  %and.i.i.1 = and i32 %xor.i.i.1, %and.i.i
  %xor.i.i.2 = xor i32 %and.i.i.1, 1024
  %27 = inttoptr i32 %xor.i.i.2 to ptr
  br label %while.cond8.i.i.2

while.cond8.i.i.2:                                ; preds = %while.cond8.i.i.2.while.cond8.i.i.2_crit_edge, %if.end22.i.i.1
  %q.0.i.i.2 = phi ptr [ getelementptr inbounds (%struct.sym_m_pool, ptr @mp0, i32 0, i32 6, i32 6), %if.end22.i.i.1 ], [ %29, %while.cond8.i.i.2.while.cond8.i.i.2_crit_edge ]
  %28 = ptrtoint ptr %q.0.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %q.0.i.i.2, align 4
  %tobool.not.i.i.2 = icmp eq ptr %29, null
  %cmp10.not.i.i.2 = icmp eq ptr %29, %27
  %or.cond.i.i.2 = select i1 %tobool.not.i.i.2, i1 true, i1 %cmp10.not.i.i.2
  br i1 %or.cond.i.i.2, label %while.end13.i.i.2, label %while.cond8.i.i.2.while.cond8.i.i.2_crit_edge

while.cond8.i.i.2.while.cond8.i.i.2_crit_edge:    ; preds = %while.cond8.i.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond8.i.i.2

while.end13.i.i.2:                                ; preds = %while.cond8.i.i.2
  br i1 %tobool.not.i.i.2, label %while.end13.i.i.2.if.then16.i.i_crit_edge, label %if.end22.i.i.2

while.end13.i.i.2.if.then16.i.i_crit_edge:        ; preds = %while.end13.i.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16.i.i

if.end22.i.i.2:                                   ; preds = %while.end13.i.i.2
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %32 = ptrtoint ptr %q.0.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %q.0.i.i.2, align 4
  %and.i.i.2 = and i32 %xor.i.i.2, %and.i.i.1
  %xor.i.i.3 = xor i32 %and.i.i.2, 2048
  %33 = inttoptr i32 %xor.i.i.3 to ptr
  br label %while.cond8.i.i.3

while.cond8.i.i.3:                                ; preds = %while.cond8.i.i.3.while.cond8.i.i.3_crit_edge, %if.end22.i.i.2
  %q.0.i.i.3 = phi ptr [ getelementptr inbounds (%struct.sym_m_pool, ptr @mp0, i32 0, i32 6, i32 7), %if.end22.i.i.2 ], [ %35, %while.cond8.i.i.3.while.cond8.i.i.3_crit_edge ]
  %34 = ptrtoint ptr %q.0.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %q.0.i.i.3, align 4
  %tobool.not.i.i.3 = icmp eq ptr %35, null
  %cmp10.not.i.i.3 = icmp eq ptr %35, %33
  %or.cond.i.i.3 = select i1 %tobool.not.i.i.3, i1 true, i1 %cmp10.not.i.i.3
  br i1 %or.cond.i.i.3, label %while.end13.i.i.3, label %while.cond8.i.i.3.while.cond8.i.i.3_crit_edge

while.cond8.i.i.3.while.cond8.i.i.3_crit_edge:    ; preds = %while.cond8.i.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond8.i.i.3

while.end13.i.i.3:                                ; preds = %while.cond8.i.i.3
  br i1 %tobool.not.i.i.3, label %while.end13.i.i.3.if.then16.i.i_crit_edge, label %if.then6.i.i

while.end13.i.i.3.if.then16.i.i_crit_edge:        ; preds = %while.end13.i.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16.i.i

if.end:                                           ; preds = %if.then16.i.i, %if.then6.i.i, %while.end.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__sym_mfree_dma(ptr noundef readnone %dev_dmat, ptr noundef %m, i32 noundef %size, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @sym53c8xx_lock) #5
  %mp.05.i = load ptr, ptr getelementptr inbounds (%struct.sym_m_pool, ptr @mp0, i32 0, i32 5), align 4
  %tobool.not6.i = icmp eq ptr %mp.05.i, null
  br i1 %tobool.not6.i, label %entry.out_crit_edge, label %entry.land.rhs.i_crit_edge

entry.land.rhs.i_crit_edge:                       ; preds = %entry
  br label %land.rhs.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %entry.land.rhs.i_crit_edge
  %mp.07.i = phi ptr [ %mp.0.i, %for.inc.i.land.rhs.i_crit_edge ], [ %mp.05.i, %entry.land.rhs.i_crit_edge ]
  %0 = ptrtoint ptr %mp.07.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mp.07.i, align 4
  %cmp.not.i = icmp eq ptr %1, %dev_dmat
  br i1 %cmp.not.i, label %if.end, label %for.inc.i

for.inc.i:                                        ; preds = %land.rhs.i
  %next.i = getelementptr inbounds %struct.sym_m_pool, ptr %mp.07.i, i32 0, i32 5
  %2 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %mp.0.i = load ptr, ptr %next.i, align 4
  %tobool.not.i = icmp eq ptr %mp.0.i, null
  br i1 %tobool.not.i, label %for.inc.i.out_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

for.inc.i.out_crit_edge:                          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sym_debug_flags to i32))
  %3 = load i32, ptr @sym_debug_flags, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i12 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i12, label %if.end.if.end.i_crit_edge, label %do.end.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name, i32 noundef %size, ptr noundef %m) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end.if.end.i_crit_edge
  %h1.i.i = getelementptr inbounds %struct.sym_m_pool, ptr %mp.07.i, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %size)
  %cmp.i.i = icmp ugt i32 %size, 4096
  br i1 %cmp.i.i, label %if.end.i.__sym_mfree.exit_crit_edge, label %while.cond.preheader.i.i

if.end.i.__sym_mfree.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__sym_mfree.exit

while.cond.preheader.i.i:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %size)
  %cmp259.i.i = icmp ugt i32 %size, 16
  br i1 %cmp259.i.i, label %while.cond.preheader.i.i.while.body.i.i_crit_edge, label %while.end.thread.i.i

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.end.thread.i.i:                             ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %m to i32
  br label %if.end7.i.i.preheader

if.end7.i.i.preheader:                            ; preds = %while.end.i.i.if.end7.i.i.preheader_crit_edge, %while.end.thread.i.i
  %a.066.i.i.ph = phi i32 [ %5, %while.end.i.i.if.end7.i.i.preheader_crit_edge ], [ %4, %while.end.thread.i.i ]
  %s.165.i.i.ph = phi i32 [ %shl.i.i, %while.end.i.i.if.end7.i.i.preheader_crit_edge ], [ 16, %while.end.thread.i.i ]
  %i.164.i.i.ph = phi i32 [ %inc.i.i, %while.end.i.i.if.end7.i.i.preheader_crit_edge ], [ 0, %while.end.thread.i.i ]
  br label %if.end7.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %s.061.i.i = phi i32 [ %shl.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 16, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %i.060.i.i = phi i32 [ %inc.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %shl.i.i = shl i32 %s.061.i.i, 1
  %inc.i.i = add i32 %i.060.i.i, 1
  %cmp2.i.i = icmp slt i32 %shl.i.i, %size
  br i1 %cmp2.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.end.i.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %while.body.i.i
  %5 = ptrtoint ptr %m to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %shl.i.i)
  %cmp563.i.i = icmp eq i32 %shl.i.i, 4096
  br i1 %cmp563.i.i, label %while.end.i.i.if.then6.i.i_crit_edge, label %while.end.i.i.if.end7.i.i.preheader_crit_edge

while.end.i.i.if.end7.i.i.preheader_crit_edge:    ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i.i.preheader

while.end.i.i.if.then6.i.i_crit_edge:             ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then6.i.i

if.then6.i.i:                                     ; preds = %if.end22.i.i.if.then6.i.i_crit_edge, %while.end.i.i.if.then6.i.i_crit_edge
  %a.0.lcssa.i.i = phi i32 [ %5, %while.end.i.i.if.then6.i.i_crit_edge ], [ %and.i.i, %if.end22.i.i.if.then6.i.i_crit_edge ]
  %free_mem_cluster.i.i = getelementptr inbounds %struct.sym_m_pool, ptr %mp.07.i, i32 0, i32 2
  %6 = ptrtoint ptr %free_mem_cluster.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %free_mem_cluster.i.i, align 4
  %8 = inttoptr i32 %a.0.lcssa.i.i to ptr
  tail call void %7(ptr noundef %mp.07.i, ptr noundef %8) #5
  br label %__sym_mfree.exit

if.end7.i.i:                                      ; preds = %if.end22.i.i.if.end7.i.i_crit_edge, %if.end7.i.i.preheader
  %a.066.i.i = phi i32 [ %and.i.i, %if.end22.i.i.if.end7.i.i_crit_edge ], [ %a.066.i.i.ph, %if.end7.i.i.preheader ]
  %s.165.i.i = phi i32 [ %shl26.i.i, %if.end22.i.i.if.end7.i.i_crit_edge ], [ %s.165.i.i.ph, %if.end7.i.i.preheader ]
  %i.164.i.i = phi i32 [ %inc27.i.i, %if.end22.i.i.if.end7.i.i_crit_edge ], [ %i.164.i.i.ph, %if.end7.i.i.preheader ]
  %xor.i.i = xor i32 %s.165.i.i, %a.066.i.i
  %arrayidx.i.i = getelementptr %struct.sym_m_link, ptr %h1.i.i, i32 %i.164.i.i
  %9 = inttoptr i32 %xor.i.i to ptr
  br label %while.cond8.i.i

while.cond8.i.i:                                  ; preds = %while.cond8.i.i.while.cond8.i.i_crit_edge, %if.end7.i.i
  %q.0.i.i = phi ptr [ %arrayidx.i.i, %if.end7.i.i ], [ %11, %while.cond8.i.i.while.cond8.i.i_crit_edge ]
  %10 = ptrtoint ptr %q.0.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %q.0.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  %cmp10.not.i.i = icmp eq ptr %11, %9
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 true, i1 %cmp10.not.i.i
  br i1 %or.cond.i.i, label %while.end13.i.i, label %while.cond8.i.i.while.cond8.i.i_crit_edge

while.cond8.i.i.while.cond8.i.i_crit_edge:        ; preds = %while.cond8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond8.i.i

while.end13.i.i:                                  ; preds = %while.cond8.i.i
  br i1 %tobool.not.i.i, label %if.then16.i.i, label %if.end22.i.i

if.then16.i.i:                                    ; preds = %while.end13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i, align 4
  %14 = inttoptr i32 %a.066.i.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %14, align 4
  store ptr %14, ptr %arrayidx.i.i, align 4
  br label %__sym_mfree.exit

if.end22.i.i:                                     ; preds = %while.end13.i.i
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %11, align 4
  %18 = ptrtoint ptr %q.0.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %q.0.i.i, align 4
  %and.i.i = and i32 %xor.i.i, %a.066.i.i
  %shl26.i.i = shl i32 %s.165.i.i, 1
  %inc27.i.i = add i32 %i.164.i.i, 1
  %cmp5.i.i = icmp eq i32 %shl26.i.i, 4096
  br i1 %cmp5.i.i, label %if.end22.i.i.if.then6.i.i_crit_edge, label %if.end22.i.i.if.end7.i.i_crit_edge

if.end22.i.i.if.end7.i.i_crit_edge:               ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i.i

if.end22.i.i.if.then6.i.i_crit_edge:              ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then6.i.i

__sym_mfree.exit:                                 ; preds = %if.then16.i.i, %if.then6.i.i, %if.end.i.__sym_mfree.exit_crit_edge
  %nump = getelementptr inbounds %struct.sym_m_pool, ptr %mp.07.i, i32 0, i32 3
  %19 = ptrtoint ptr %nump to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nump, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool6.not = icmp eq i32 %20, 0
  br i1 %tobool6.not, label %if.then7, label %__sym_mfree.exit.out_crit_edge

__sym_mfree.exit.out_crit_edge:                   ; preds = %__sym_mfree.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then7:                                         ; preds = %__sym_mfree.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @___del_dma_pool(ptr noundef nonnull %mp.07.i)
  br label %out

out:                                              ; preds = %if.then7, %__sym_mfree.exit.out_crit_edge, %for.inc.i.out_crit_edge, %entry.out_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @sym53c8xx_lock, i32 noundef %call2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__vtobus(ptr noundef readnone %dev_dmat, ptr noundef %m) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %m to i32
  %and1 = and i32 %0, -4096
  %1 = inttoptr i32 %and1 to ptr
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @sym53c8xx_lock) #5
  %mp.05.i = load ptr, ptr getelementptr inbounds (%struct.sym_m_pool, ptr @mp0, i32 0, i32 5), align 4
  %tobool.not6.i = icmp eq ptr %mp.05.i, null
  br i1 %tobool.not6.i, label %entry.if.then11_crit_edge, label %entry.land.rhs.i_crit_edge

entry.land.rhs.i_crit_edge:                       ; preds = %entry
  br label %land.rhs.i

entry.if.then11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %entry.land.rhs.i_crit_edge
  %mp.07.i = phi ptr [ %mp.0.i, %for.inc.i.land.rhs.i_crit_edge ], [ %mp.05.i, %entry.land.rhs.i_crit_edge ]
  %2 = ptrtoint ptr %mp.07.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mp.07.i, align 4
  %cmp.not.i = icmp eq ptr %3, %dev_dmat
  br i1 %cmp.not.i, label %if.then, label %for.inc.i

for.inc.i:                                        ; preds = %land.rhs.i
  %next.i = getelementptr inbounds %struct.sym_m_pool, ptr %mp.07.i, i32 0, i32 5
  %4 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %mp.0.i = load ptr, ptr %next.i, align 4
  %tobool.not.i = icmp eq ptr %mp.0.i, null
  br i1 %tobool.not.i, label %for.inc.i.if.then11_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

for.inc.i.if.then11_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11

if.then:                                          ; preds = %land.rhs.i
  %shr = lshr i32 %0, 12
  %and = and i32 %shr, 31
  %arrayidx = getelementptr %struct.sym_m_pool, ptr %mp.07.i, i32 0, i32 4, i32 %and
  br label %while.cond

while.cond:                                       ; preds = %land.rhs.while.cond_crit_edge, %if.then
  %vp.0.in = phi ptr [ %arrayidx, %if.then ], [ %vp.0, %land.rhs.while.cond_crit_edge ]
  %5 = ptrtoint ptr %vp.0.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %vp.0 = load ptr, ptr %vp.0.in, align 4
  %tobool7.not = icmp eq ptr %vp.0, null
  br i1 %tobool7.not, label %while.cond.if.then11_crit_edge, label %land.rhs

while.cond.if.then11_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11

land.rhs:                                         ; preds = %while.cond
  %vaddr = getelementptr inbounds %struct.sym_m_vtob, ptr %vp.0, i32 0, i32 1
  %6 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vaddr, align 4
  %cmp8.not = icmp eq ptr %7, %1
  br i1 %cmp8.not, label %if.end12, label %land.rhs.while.cond_crit_edge

land.rhs.while.cond_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

if.then11:                                        ; preds = %while.cond.if.then11_crit_edge, %for.inc.i.if.then11_crit_edge, %entry.if.then11_crit_edge
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str) #9
  unreachable

if.end12:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  %baddr = getelementptr inbounds %struct.sym_m_vtob, ptr %vp.0, i32 0, i32 2
  %8 = ptrtoint ptr %baddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %baddr, align 4
  %sub.ptr.sub = and i32 %0, 4095
  %add = add i32 %9, %sub.ptr.sub
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @sym53c8xx_lock, i32 noundef %call3) #5
  ret i32 %add
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @___mp0_get_mem_cluster(ptr nocapture noundef %mp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__get_free_pages(i32 noundef 2592, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %nump = getelementptr inbounds %struct.sym_m_pool, ptr %mp, i32 0, i32 3
  %0 = ptrtoint ptr %nump to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nump, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %nump, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = inttoptr i32 %call to ptr
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @___mp0_free_mem_cluster(ptr nocapture noundef %mp, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %m to i32
  tail call void @free_pages(i32 noundef %0, i32 noundef 0) #5
  %nump = getelementptr inbounds %struct.sym_m_pool, ptr %mp, i32 0, i32 3
  %1 = ptrtoint ptr %nump to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nump, align 4
  %dec = add i32 %2, -1
  store i32 %dec, ptr %nump, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @___get_dma_mem_cluster(ptr nocapture noundef %mp) #0 align 64 {
entry:
  %baddr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @__sym_calloc2(ptr noundef nonnull @mp0, i32 noundef 12, ptr noundef nonnull @.str.3)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %baddr.i) #5
  %0 = ptrtoint ptr %baddr.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %baddr.i, align 4
  %1 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mp, align 4
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %2, i32 noundef 4096, ptr noundef nonnull %baddr.i, i32 noundef 2592, i32 noundef 0) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %sym_m_get_dma_mem_cluster.exit.thread, label %if.then3

sym_m_get_dma_mem_cluster.exit.thread:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %baddr.i) #5
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %vaddr1.i = getelementptr inbounds %struct.sym_m_vtob, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %vaddr1.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i.i, ptr %vaddr1.i, align 4
  %4 = ptrtoint ptr %baddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %baddr.i, align 4
  %baddr2.i = getelementptr inbounds %struct.sym_m_vtob, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %baddr2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %baddr2.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %baddr.i) #5
  %7 = ptrtoint ptr %call.i.i to i32
  %shr = lshr i32 %7, 12
  %and = and i32 %shr, 31
  %arrayidx = getelementptr %struct.sym_m_pool, ptr %mp, i32 0, i32 4, i32 %and
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %call, align 4
  store ptr %call, ptr %arrayidx, align 4
  %nump = getelementptr inbounds %struct.sym_m_pool, ptr %mp, i32 0, i32 3
  %11 = ptrtoint ptr %nump to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nump, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %nump, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %sym_m_get_dma_mem_cluster.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i.i, %if.then3 ], [ null, %entry.cleanup_crit_edge ], [ null, %sym_m_get_dma_mem_cluster.exit.thread ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @___free_dma_mem_cluster(ptr nocapture noundef %mp, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %m to i32
  %shr = lshr i32 %0, 12
  %and = and i32 %shr, 31
  %arrayidx = getelementptr %struct.sym_m_pool, ptr %mp, i32 0, i32 4, i32 %and
  br label %while.cond

while.cond:                                       ; preds = %land.rhs.while.cond_crit_edge, %entry
  %vbpp.0 = phi ptr [ %arrayidx, %entry ], [ %2, %land.rhs.while.cond_crit_edge ]
  %1 = ptrtoint ptr %vbpp.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vbpp.0, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %while.cond.if.end_crit_edge, label %land.rhs

while.cond.if.end_crit_edge:                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.rhs:                                         ; preds = %while.cond
  %vaddr = getelementptr inbounds %struct.sym_m_vtob, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vaddr, align 4
  %cmp.not = icmp eq ptr %4, %m
  br i1 %cmp.not, label %if.then, label %land.rhs.while.cond_crit_edge

land.rhs.while.cond_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

if.then:                                          ; preds = %land.rhs
  %vaddr.le = getelementptr inbounds %struct.sym_m_vtob, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %7 = ptrtoint ptr %vbpp.0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %vbpp.0, align 4
  %8 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mp, align 4
  %10 = ptrtoint ptr %vaddr.le to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vaddr.le, align 4
  %baddr.i = getelementptr inbounds %struct.sym_m_vtob, ptr %2, i32 0, i32 2
  %12 = ptrtoint ptr %baddr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %baddr.i, align 4
  tail call void @dma_free_attrs(ptr noundef %9, i32 noundef 4096, ptr noundef %11, i32 noundef %13, i32 noundef 0) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sym_debug_flags to i32))
  %14 = load i32, ptr @sym_debug_flags, align 4
  %and.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %do.end.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3, i32 noundef 12, ptr noundef nonnull %2) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.if.end.i_crit_edge
  %15 = ptrtoint ptr %2 to i32
  %xor.i.i = xor i32 %15, 16
  %16 = inttoptr i32 %xor.i.i to ptr
  br label %while.cond8.i.i

while.cond8.i.i:                                  ; preds = %while.cond8.i.i.while.cond8.i.i_crit_edge, %if.end.i
  %q.0.i.i = phi ptr [ getelementptr inbounds (%struct.sym_m_pool, ptr @mp0, i32 0, i32 6), %if.end.i ], [ %18, %while.cond8.i.i.while.cond8.i.i_crit_edge ]
  %17 = ptrtoint ptr %q.0.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %q.0.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %18, null
  %cmp10.not.i.i = icmp eq ptr %18, %16
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 true, i1 %cmp10.not.i.i
  br i1 %or.cond.i.i, label %while.end13.i.i, label %while.cond8.i.i.while.cond8.i.i_crit_edge

while.cond8.i.i.while.cond8.i.i_crit_edge:        ; preds = %while.cond8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond8.i.i

while.end13.i.i:                                  ; preds = %while.cond8.i.i
  br i1 %tobool.not.i.i, label %while.end13.i.i.if.then16.i.i_crit_edge, label %if.end22.i.i

while.end13.i.i.if.then16.i.i_crit_edge:          ; preds = %while.end13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16.i.i

if.then16.i.i:                                    ; preds = %while.end13.i.i.7.if.then16.i.i_crit_edge, %while.end13.i.i.6.if.then16.i.i_crit_edge, %while.end13.i.i.5.if.then16.i.i_crit_edge, %while.end13.i.i.4.if.then16.i.i_crit_edge, %while.end13.i.i.3.if.then16.i.i_crit_edge, %while.end13.i.i.2.if.then16.i.i_crit_edge, %while.end13.i.i.1.if.then16.i.i_crit_edge, %while.end13.i.i.if.then16.i.i_crit_edge
  %a.066.i.i.lcssa = phi i32 [ %15, %while.end13.i.i.if.then16.i.i_crit_edge ], [ %and.i.i, %while.end13.i.i.1.if.then16.i.i_crit_edge ], [ %and.i.i.1, %while.end13.i.i.2.if.then16.i.i_crit_edge ], [ %and.i.i.2, %while.end13.i.i.3.if.then16.i.i_crit_edge ], [ %and.i.i.3, %while.end13.i.i.4.if.then16.i.i_crit_edge ], [ %and.i.i.4, %while.end13.i.i.5.if.then16.i.i_crit_edge ], [ %and.i.i.5, %while.end13.i.i.6.if.then16.i.i_crit_edge ], [ %and.i.i.6, %while.end13.i.i.7.if.then16.i.i_crit_edge ]
  %arrayidx.i.i.lcssa = phi ptr [ getelementptr inbounds (%struct.sym_m_pool, ptr @mp0, i32 0, i32 6), %while.end13.i.i.if.then16.i.i_crit_edge ], [ getelementptr inbounds (%struct.sym_m_pool, ptr @mp0, i32 0, i32 6, i32 1), %while.end13.i.i.1.if.then16.i.i_crit_edge ], [ getelementptr inbounds (%struct.sym_m_pool, ptr @mp0, i32 0, i32 6, i32 2), %while.end13.i.i.2.if.then16.i.i_crit_edge ], [ getelementptr inbounds (%struct.sym_m_pool, ptr @mp0, i32 0, i32 6, i32 3), %while.end13.i.i.3.if.then16.i.i_crit_edge ], [ getelementptr inbounds (%struct.sym_m_pool, ptr @mp0, i32 0, i32 6, i32 4), %while.end13.i.i.4.if.then16.i.i_crit_edge ], [ getelementptr inbounds (%struct.sym_m_pool, ptr @mp0, i32 0, i32 6, i32 5), %while.end13.i.i.5.if.then16.i.i_crit_edge ], [ getelementptr inbounds (%struct.sym_m_pool, ptr @mp0, i32 0, i32 6, i32 6), %while.end13.i.i.6.if.then16.i.i_crit_edge ], [ getelementptr inbounds (%struct.sym_m_pool, ptr @mp0, i32 0, i32 6, i32 7), %while.end13.i.i.7.if.then16.i.i_crit_edge ]
  %19 = ptrtoint ptr %arrayidx.i.i.lcssa to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i.lcssa, align 4
  %21 = inttoptr i32 %a.066.i.i.lcssa to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %20, ptr %21, align 4
  store ptr %21, ptr %arrayidx.i.i.lcssa, align 4
  br label %__sym_mfree.exit

if.end22.i.i:                                     ; preds = %while.end13.i.i
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %18, align 4
  %25 = ptrtoint ptr %q.0.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %q.0.i.i, align 4
  %and.i.i = and i32 %xor.i.i, %15
  %xor.i.i.1 = xor i32 %and.i.i, 32
  %26 = inttoptr i32 %xor.i.i.1 to ptr
  br label %while.cond8.i.i.1

while.cond8.i.i.1:                                ; preds = %while.cond8.i.i.1.while.cond8.i.i.1_crit_edge, %if.end22.i.i
  %q.0.i.i.1 = phi ptr [ getelementptr inbounds (%struct.sym_m_pool, ptr @mp0, i32 0, i32 6, i32 1), %if.end22.i.i ], [ %28, %while.cond8.i.i.1.while.cond8.i.i.1_crit_edge ]
  %27 = ptrtoint ptr %q.0.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %q.0.i.i.1, align 4
  %tobool.not.i.i.1 = icmp eq ptr %28, null
  %cmp10.not.i.i.1 = icmp eq ptr %28, %26
  %or.cond.i.i.1 = select i1 %tobool.not.i.i.1, i1 true, i1 %cmp10.not.i.i.1
  br i1 %or.cond.i.i.1, label %while.end13.i.i.1, label %while.cond8.i.i.1.while.cond8.i.i.1_crit_edge

while.cond8.i.i.1.while.cond8.i.i.1_crit_edge:    ; preds = %while.cond8.i.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond8.i.i.1

while.end13.i.i.1:                                ; preds = %while.cond8.i.i.1
  br i1 %tobool.not.i.i.1, label %while.end13.i.i.1.if.then16.i.i_crit_edge, label %if.end22.i.i.1

while.end13.i.i.1.if.then16.i.i_crit_edge:        ; preds = %while.end13.i.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16.i.i

if.end22.i.i.1:                                   ; preds = %while.end13.i.i.1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %31 = ptrtoint ptr %q.0.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %q.0.i.i.1, align 4
  %and.i.i.1 = and i32 %xor.i.i.1, %and.i.i
  %xor.i.i.2 = xor i32 %and.i.i.1, 64
  %32 = inttoptr i32 %xor.i.i.2 to ptr
  br label %while.cond8.i.i.2

while.cond8.i.i.2:                                ; preds = %while.cond8.i.i.2.while.cond8.i.i.2_crit_edge, %if.end22.i.i.1
  %q.0.i.i.2 = phi ptr [ getelementptr inbounds (%struct.sym_m_pool, ptr @mp0, i32 0, i32 6, i32 2), %if.end22.i.i.1 ], [ %34, %while.cond8.i.i.2.while.cond8.i.i.2_crit_edge ]
  %33 = ptrtoint ptr %q.0.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %q.0.i.i.2, align 4
  %tobool.not.i.i.2 = icmp eq ptr %34, null
  %cmp10.not.i.i.2 = icmp eq ptr %34, %32
  %or.cond.i.i.2 = select i1 %tobool.not.i.i.2, i1 true, i1 %cmp10.not.i.i.2
  br i1 %or.cond.i.i.2, label %while.end13.i.i.2, label %while.cond8.i.i.2.while.cond8.i.i.2_crit_edge

while.cond8.i.i.2.while.cond8.i.i.2_crit_edge:    ; preds = %while.cond8.i.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond8.i.i.2

while.end13.i.i.2:                                ; preds = %while.cond8.i.i.2
  br i1 %tobool.not.i.i.2, label %while.end13.i.i.2.if.then16.i.i_crit_edge, label %if.end22.i.i.2

while.end13.i.i.2.if.then16.i.i_crit_edge:        ; preds = %while.end13.i.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16.i.i

if.end22.i.i.2:                                   ; preds = %while.end13.i.i.2
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %37 = ptrtoint ptr %q.0.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %q.0.i.i.2, align 4
  %and.i.i.2 = and i32 %xor.i.i.2, %and.i.i.1
  %xor.i.i.3 = xor i32 %and.i.i.2, 128
  %38 = inttoptr i32 %xor.i.i.3 to ptr
  br label %while.cond8.i.i.3

while.cond8.i.i.3:                                ; preds = %while.cond8.i.i.3.while.cond8.i.i.3_crit_edge, %if.end22.i.i.2
  %q.0.i.i.3 = phi ptr [ getelementptr inbounds (%struct.sym_m_pool, ptr @mp0, i32 0, i32 6, i32 3), %if.end22.i.i.2 ], [ %40, %while.cond8.i.i.3.while.cond8.i.i.3_crit_edge ]
  %39 = ptrtoint ptr %q.0.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %q.0.i.i.3, align 4
  %tobool.not.i.i.3 = icmp eq ptr %40, null
  %cmp10.not.i.i.3 = icmp eq ptr %40, %38
  %or.cond.i.i.3 = select i1 %tobool.not.i.i.3, i1 true, i1 %cmp10.not.i.i.3
  br i1 %or.cond.i.i.3, label %while.end13.i.i.3, label %while.cond8.i.i.3.while.cond8.i.i.3_crit_edge

while.cond8.i.i.3.while.cond8.i.i.3_crit_edge:    ; preds = %while.cond8.i.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond8.i.i.3

while.end13.i.i.3:                                ; preds = %while.cond8.i.i.3
  br i1 %tobool.not.i.i.3, label %while.end13.i.i.3.if.then16.i.i_crit_edge, label %if.end22.i.i.3

while.end13.i.i.3.if.then16.i.i_crit_edge:        ; preds = %while.end13.i.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16.i.i

if.end22.i.i.3:                                   ; preds = %while.end13.i.i.3
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %43 = ptrtoint ptr %q.0.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %q.0.i.i.3, align 4
  %and.i.i.3 = and i32 %xor.i.i.3, %and.i.i.2
  %xor.i.i.4 = xor i32 %and.i.i.3, 256
  %44 = inttoptr i32 %xor.i.i.4 to ptr
  br label %while.cond8.i.i.4

while.cond8.i.i.4:                                ; preds = %while.cond8.i.i.4.while.cond8.i.i.4_crit_edge, %if.end22.i.i.3
  %q.0.i.i.4 = phi ptr [ getelementptr inbounds (%struct.sym_m_pool, ptr @mp0, i32 0, i32 6, i32 4), %if.end22.i.i.3 ], [ %46, %while.cond8.i.i.4.while.cond8.i.i.4_crit_edge ]
  %45 = ptrtoint ptr %q.0.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %q.0.i.i.4, align 4
  %tobool.not.i.i.4 = icmp eq ptr %46, null
  %cmp10.not.i.i.4 = icmp eq ptr %46, %44
  %or.cond.i.i.4 = select i1 %tobool.not.i.i.4, i1 true, i1 %cmp10.not.i.i.4
  br i1 %or.cond.i.i.4, label %while.end13.i.i.4, label %while.cond8.i.i.4.while.cond8.i.i.4_crit_edge

while.cond8.i.i.4.while.cond8.i.i.4_crit_edge:    ; preds = %while.cond8.i.i.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond8.i.i.4

while.end13.i.i.4:                                ; preds = %while.cond8.i.i.4
  br i1 %tobool.not.i.i.4, label %while.end13.i.i.4.if.then16.i.i_crit_edge, label %if.end22.i.i.4

while.end13.i.i.4.if.then16.i.i_crit_edge:        ; preds = %while.end13.i.i.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16.i.i

if.end22.i.i.4:                                   ; preds = %while.end13.i.i.4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %49 = ptrtoint ptr %q.0.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %q.0.i.i.4, align 4
  %and.i.i.4 = and i32 %xor.i.i.4, %and.i.i.3
  %xor.i.i.5 = xor i32 %and.i.i.4, 512
  %50 = inttoptr i32 %xor.i.i.5 to ptr
  br label %while.cond8.i.i.5

while.cond8.i.i.5:                                ; preds = %while.cond8.i.i.5.while.cond8.i.i.5_crit_edge, %if.end22.i.i.4
  %q.0.i.i.5 = phi ptr [ getelementptr inbounds (%struct.sym_m_pool, ptr @mp0, i32 0, i32 6, i32 5), %if.end22.i.i.4 ], [ %52, %while.cond8.i.i.5.while.cond8.i.i.5_crit_edge ]
  %51 = ptrtoint ptr %q.0.i.i.5 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %q.0.i.i.5, align 4
  %tobool.not.i.i.5 = icmp eq ptr %52, null
  %cmp10.not.i.i.5 = icmp eq ptr %52, %50
  %or.cond.i.i.5 = select i1 %tobool.not.i.i.5, i1 true, i1 %cmp10.not.i.i.5
  br i1 %or.cond.i.i.5, label %while.end13.i.i.5, label %while.cond8.i.i.5.while.cond8.i.i.5_crit_edge

while.cond8.i.i.5.while.cond8.i.i.5_crit_edge:    ; preds = %while.cond8.i.i.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond8.i.i.5

while.end13.i.i.5:                                ; preds = %while.cond8.i.i.5
  br i1 %tobool.not.i.i.5, label %while.end13.i.i.5.if.then16.i.i_crit_edge, label %if.end22.i.i.5

while.end13.i.i.5.if.then16.i.i_crit_edge:        ; preds = %while.end13.i.i.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16.i.i

if.end22.i.i.5:                                   ; preds = %while.end13.i.i.5
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %55 = ptrtoint ptr %q.0.i.i.5 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %q.0.i.i.5, align 4
  %and.i.i.5 = and i32 %xor.i.i.5, %and.i.i.4
  %xor.i.i.6 = xor i32 %and.i.i.5, 1024
  %56 = inttoptr i32 %xor.i.i.6 to ptr
  br label %while.cond8.i.i.6

while.cond8.i.i.6:                                ; preds = %while.cond8.i.i.6.while.cond8.i.i.6_crit_edge, %if.end22.i.i.5
  %q.0.i.i.6 = phi ptr [ getelementptr inbounds (%struct.sym_m_pool, ptr @mp0, i32 0, i32 6, i32 6), %if.end22.i.i.5 ], [ %58, %while.cond8.i.i.6.while.cond8.i.i.6_crit_edge ]
  %57 = ptrtoint ptr %q.0.i.i.6 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %q.0.i.i.6, align 4
  %tobool.not.i.i.6 = icmp eq ptr %58, null
  %cmp10.not.i.i.6 = icmp eq ptr %58, %56
  %or.cond.i.i.6 = select i1 %tobool.not.i.i.6, i1 true, i1 %cmp10.not.i.i.6
  br i1 %or.cond.i.i.6, label %while.end13.i.i.6, label %while.cond8.i.i.6.while.cond8.i.i.6_crit_edge

while.cond8.i.i.6.while.cond8.i.i.6_crit_edge:    ; preds = %while.cond8.i.i.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond8.i.i.6

while.end13.i.i.6:                                ; preds = %while.cond8.i.i.6
  br i1 %tobool.not.i.i.6, label %while.end13.i.i.6.if.then16.i.i_crit_edge, label %if.end22.i.i.6

while.end13.i.i.6.if.then16.i.i_crit_edge:        ; preds = %while.end13.i.i.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16.i.i

if.end22.i.i.6:                                   ; preds = %while.end13.i.i.6
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %61 = ptrtoint ptr %q.0.i.i.6 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %q.0.i.i.6, align 4
  %and.i.i.6 = and i32 %xor.i.i.6, %and.i.i.5
  %xor.i.i.7 = xor i32 %and.i.i.6, 2048
  %62 = inttoptr i32 %xor.i.i.7 to ptr
  br label %while.cond8.i.i.7

while.cond8.i.i.7:                                ; preds = %while.cond8.i.i.7.while.cond8.i.i.7_crit_edge, %if.end22.i.i.6
  %q.0.i.i.7 = phi ptr [ getelementptr inbounds (%struct.sym_m_pool, ptr @mp0, i32 0, i32 6, i32 7), %if.end22.i.i.6 ], [ %64, %while.cond8.i.i.7.while.cond8.i.i.7_crit_edge ]
  %63 = ptrtoint ptr %q.0.i.i.7 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %q.0.i.i.7, align 4
  %tobool.not.i.i.7 = icmp eq ptr %64, null
  %cmp10.not.i.i.7 = icmp eq ptr %64, %62
  %or.cond.i.i.7 = select i1 %tobool.not.i.i.7, i1 true, i1 %cmp10.not.i.i.7
  br i1 %or.cond.i.i.7, label %while.end13.i.i.7, label %while.cond8.i.i.7.while.cond8.i.i.7_crit_edge

while.cond8.i.i.7.while.cond8.i.i.7_crit_edge:    ; preds = %while.cond8.i.i.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond8.i.i.7

while.end13.i.i.7:                                ; preds = %while.cond8.i.i.7
  br i1 %tobool.not.i.i.7, label %while.end13.i.i.7.if.then16.i.i_crit_edge, label %if.end22.i.i.7

while.end13.i.i.7.if.then16.i.i_crit_edge:        ; preds = %while.end13.i.i.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16.i.i

if.end22.i.i.7:                                   ; preds = %while.end13.i.i.7
  call void @__sanitizer_cov_trace_pc() #7
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %67 = ptrtoint ptr %q.0.i.i.7 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %q.0.i.i.7, align 4
  %and.i.i.7 = and i32 %xor.i.i.7, %and.i.i.6
  %68 = load ptr, ptr getelementptr inbounds (%struct.sym_m_pool, ptr @mp0, i32 0, i32 2), align 4
  %69 = inttoptr i32 %and.i.i.7 to ptr
  tail call void %68(ptr noundef nonnull @mp0, ptr noundef %69) #5
  br label %__sym_mfree.exit

__sym_mfree.exit:                                 ; preds = %if.end22.i.i.7, %if.then16.i.i
  %nump = getelementptr inbounds %struct.sym_m_pool, ptr %mp, i32 0, i32 3
  %70 = ptrtoint ptr %nump to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %nump, align 4
  %dec = add i32 %71, -1
  store i32 %dec, ptr %nump, align 4
  br label %if.end

if.end:                                           ; preds = %__sym_mfree.exit, %while.cond.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/sym53c8xx_2/sym_malloc.c", i32 361, i32 9}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/sym53c8xx_2/sym_malloc.c", i32 294, i32 8}
!4 = !{ptr @sym53c8xx_lock, !3, !"sym53c8xx_lock", i1 false, i1 false}
!5 = !{ptr @mp0, !6, !"mp0", i1 false, i1 false}
!6 = !{!"../drivers/scsi/sym53c8xx_2/sym_malloc.c", i32 198, i32 26}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/scsi/sym53c8xx_2/sym_malloc.c", i32 264, i32 16}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/scsi/sym53c8xx_2/sym_malloc.c", i32 215, i32 8}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/scsi/sym53c8xx_2/sym_malloc.c", i32 152, i32 3}
!13 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__sym_calloc2._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @__sym_calloc2._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/scsi/sym53c8xx_2/sym_malloc.c", i32 158, i32 3}
!19 = !{ptr @__sym_calloc2._entry.7, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @__sym_calloc2._entry_ptr.9, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/scsi/sym53c8xx_2/sym_malloc.c", i32 169, i32 3}
!23 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @__sym_mfree._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @__sym_mfree._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
