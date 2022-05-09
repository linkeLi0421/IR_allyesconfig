; ModuleID = '/llk/IR_all_yes/lib/assoc_array.c_pt.bc'
source_filename = "../lib/assoc_array.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.assoc_array_shortcut = type { ptr, i32, i32, ptr, [0 x i32] }
%struct.assoc_array_node = type { ptr, i8, [16 x ptr], i32 }
%struct.assoc_array_walk_result = type { %struct.anon, %struct.anon.0 }
%struct.anon = type { ptr, i32, i32 }
%struct.anon.0 = type { ptr, i32, i32, i32, i32 }
%struct.assoc_array_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.assoc_array_edit = type { %struct.callback_head, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], [1 x ptr], ptr, [16 x ptr], ptr, ptr, i32, [2 x %struct.anon.1], [1 x %struct.anon.2], [17 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.anon.1 = type { ptr, ptr }
%struct.anon.2 = type { ptr, i8 }
%struct.assoc_array_delete_collapse_context = type { ptr, ptr, i32 }
%struct.assoc_array = type { ptr, i32 }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @assoc_array_iterate(ptr noundef %array, ptr nocapture noundef readonly %iterator, ptr noundef %iterator_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %array to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %array, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.begin_node.i_crit_edge

entry.begin_node.i_crit_edge:                     ; preds = %entry
  br label %begin_node.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

begin_node.i:                                     ; preds = %do.end24.i.begin_node.i_crit_edge, %entry.begin_node.i_crit_edge
  %cursor.0.i = phi ptr [ %1, %entry.begin_node.i_crit_edge ], [ %12, %do.end24.i.begin_node.i_crit_edge ]
  %2 = ptrtoint ptr %cursor.0.i to i32
  %and.i.i = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %begin_node.i.if.end.i_crit_edge, label %if.then.i

begin_node.i.if.end.i_crit_edge:                  ; preds = %begin_node.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %begin_node.i
  call void @__sanitizer_cov_trace_pc() #7
  %and.i.i.i = and i32 %2, -4
  %3 = inttoptr i32 %and.i.i.i to ptr
  %next_node.i = getelementptr inbounds %struct.assoc_array_shortcut, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %next_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %next_node.i, align 4
  %.pre.i = ptrtoint ptr %5 to i32
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %begin_node.i.if.end.i_crit_edge
  %.pre-phi.i = phi i32 [ %.pre.i, %if.then.i ], [ %2, %begin_node.i.if.end.i_crit_edge ]
  %and.i.i93.i = and i32 %.pre-phi.i, -4
  %6 = inttoptr i32 %and.i.i93.i to ptr
  br label %do.end5.i

do.end5.i:                                        ; preds = %for.inc.i.do.end5.i_crit_edge, %if.end.i
  %slot.0105.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %for.inc.i.do.end5.i_crit_edge ]
  %has_meta.0104.i = phi i32 [ 0, %if.end.i ], [ %or.i, %for.inc.i.do.end5.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.assoc_array_node, ptr %6, i32 0, i32 2, i32 %slot.0105.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %arrayidx.i, align 4
  %9 = ptrtoint ptr %8 to i32
  %or.i = or i32 %has_meta.0104.i, %9
  %tobool.not.i = icmp ne ptr %8, null
  %and.i.i94.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i94.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i94.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 %tobool.i.not.i.i, i1 false
  br i1 %or.cond.i, label %if.then8.i, label %do.end5.i.for.inc.i_crit_edge

do.end5.i.for.inc.i_crit_edge:                    ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then8.i:                                       ; preds = %do.end5.i
  %and.i95.i = and i32 %9, -2
  %10 = inttoptr i32 %and.i95.i to ptr
  %call10.i = tail call i32 %iterator(ptr noundef %10, ptr noundef %iterator_data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.then8.i.for.inc.i_crit_edge, label %if.then8.i.cleanup_crit_edge

if.then8.i.cleanup_crit_edge:                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then8.i.for.inc.i_crit_edge:                   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then8.i.for.inc.i_crit_edge, %do.end5.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %slot.0105.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.do.end5.i_crit_edge

for.inc.i.do.end5.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5.i

for.end.i:                                        ; preds = %for.inc.i
  %and.i = and i32 %or.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool15.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool15.not.i, label %for.end.i.do.end36.i.preheader_crit_edge, label %for.end.i.do.end24.preheader.i_crit_edge

for.end.i.do.end24.preheader.i_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end24.preheader.i

for.end.i.do.end36.i.preheader_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end36.i.preheader

continue_node.i:                                  ; preds = %if.then43.if.end55_crit_edge.i, %if.end41.i.continue_node.i_crit_edge
  %.pre112.pre-phi.i = phi i32 [ %.pre117.i, %if.then43.if.end55_crit_edge.i ], [ %18, %if.end41.i.continue_node.i_crit_edge ]
  %slot.3.i = phi i32 [ %23, %if.then43.if.end55_crit_edge.i ], [ %conv.i, %if.end41.i.continue_node.i_crit_edge ]
  %inc56.i = add i32 %slot.3.i, 1
  %.pre114.i = and i32 %.pre112.pre-phi.i, -4
  %.pre115.i = inttoptr i32 %.pre114.i to ptr
  %cmp20106.i = icmp slt i32 %inc56.i, 16
  br i1 %cmp20106.i, label %do.end24.preheader.i.loopexit, label %continue_node.i.do.end36.i_crit_edge

continue_node.i.do.end36.i_crit_edge:             ; preds = %continue_node.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end36.i

do.end24.preheader.i.loopexit:                    ; preds = %continue_node.i
  call void @__sanitizer_cov_trace_pc() #7
  %.pre115.i.le = inttoptr i32 %.pre114.i to ptr
  br label %do.end24.preheader.i

do.end24.preheader.i:                             ; preds = %do.end24.preheader.i.loopexit, %for.end.i.do.end24.preheader.i_crit_edge
  %slot.1123.i = phi i32 [ 0, %for.end.i.do.end24.preheader.i_crit_edge ], [ %inc56.i, %do.end24.preheader.i.loopexit ]
  %.pre-phi116122.i = phi ptr [ %6, %for.end.i.do.end24.preheader.i_crit_edge ], [ %.pre115.i.le, %do.end24.preheader.i.loopexit ]
  br label %do.end24.i

for.cond19.i:                                     ; preds = %do.end24.i
  %inc32.i = add i32 %slot.2107.i, 1
  %exitcond111.not.i = icmp eq i32 %inc32.i, 16
  br i1 %exitcond111.not.i, label %for.cond19.i.do.end36.i.preheader_crit_edge, label %for.cond19.i.do.end24.i_crit_edge

for.cond19.i.do.end24.i_crit_edge:                ; preds = %for.cond19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end24.i

for.cond19.i.do.end36.i.preheader_crit_edge:      ; preds = %for.cond19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end36.i.preheader

do.end24.i:                                       ; preds = %for.cond19.i.do.end24.i_crit_edge, %do.end24.preheader.i
  %slot.2107.i = phi i32 [ %inc32.i, %for.cond19.i.do.end24.i_crit_edge ], [ %slot.1123.i, %do.end24.preheader.i ]
  %arrayidx27.i = getelementptr %struct.assoc_array_node, ptr %.pre-phi116122.i, i32 0, i32 2, i32 %slot.2107.i
  %11 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %arrayidx27.i, align 4
  %13 = ptrtoint ptr %12 to i32
  %and.i97.i = and i32 %13, 1
  %tobool.i98.not.i = icmp eq i32 %and.i97.i, 0
  br i1 %tobool.i98.not.i, label %for.cond19.i, label %do.end24.i.begin_node.i_crit_edge

do.end24.i.begin_node.i_crit_edge:                ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %begin_node.i

do.end36.i.preheader:                             ; preds = %for.cond19.i.do.end36.i.preheader_crit_edge, %for.end.i.do.end36.i.preheader_crit_edge
  %node.0.i.ph = phi ptr [ %6, %for.end.i.do.end36.i.preheader_crit_edge ], [ %.pre-phi116122.i, %for.cond19.i.do.end36.i.preheader_crit_edge ]
  br label %do.end36.i

do.end36.i:                                       ; preds = %do.end36.i.preheader, %continue_node.i.do.end36.i_crit_edge
  %node.0.i = phi ptr [ %.pre115.i, %continue_node.i.do.end36.i_crit_edge ], [ %node.0.i.ph, %do.end36.i.preheader ]
  %14 = ptrtoint ptr %node.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %node.0.i, align 4
  %cmp38.i = icmp eq ptr %15, null
  br i1 %cmp38.i, label %do.end36.i.cleanup_crit_edge, label %if.end41.i

do.end36.i.cleanup_crit_edge:                     ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end41.i:                                       ; preds = %do.end36.i
  %parent_slot.i = getelementptr inbounds %struct.assoc_array_node, ptr %node.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %parent_slot.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %parent_slot.i, align 4
  %conv.i = zext i8 %17 to i32
  %18 = ptrtoint ptr %15 to i32
  %and.i99.i = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i99.i)
  %tobool.i100.not.i = icmp eq i32 %and.i99.i, 0
  br i1 %tobool.i100.not.i, label %if.end41.i.continue_node.i_crit_edge, label %if.then43.i

if.end41.i.continue_node.i_crit_edge:             ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %continue_node.i

if.then43.i:                                      ; preds = %if.end41.i
  %and.i.i101.i = and i32 %18, -4
  %19 = inttoptr i32 %and.i.i101.i to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %19, align 4
  %cmp51.i = icmp eq ptr %21, null
  br i1 %cmp51.i, label %if.then43.i.cleanup_crit_edge, label %if.then43.if.end55_crit_edge.i

if.then43.i.cleanup_crit_edge:                    ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then43.if.end55_crit_edge.i:                   ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #7
  %parent_slot50.i = getelementptr inbounds %struct.assoc_array_shortcut, ptr %19, i32 0, i32 1
  %22 = ptrtoint ptr %parent_slot50.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %parent_slot50.i, align 4
  %.pre117.i = ptrtoint ptr %21 to i32
  br label %continue_node.i

cleanup:                                          ; preds = %if.then43.i.cleanup_crit_edge, %do.end36.i.cleanup_crit_edge, %if.then8.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %do.end36.i.cleanup_crit_edge ], [ 0, %if.then43.i.cleanup_crit_edge ], [ %call10.i, %if.then8.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @assoc_array_subtree_iterate(ptr noundef %root, ptr noundef readnone %stop, ptr nocapture noundef readonly %iterator, ptr noundef %iterator_data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  br label %begin_node

begin_node:                                       ; preds = %do.end24.begin_node_crit_edge, %entry
  %cursor.0 = phi ptr [ %root, %entry ], [ %10, %do.end24.begin_node_crit_edge ]
  %0 = ptrtoint ptr %cursor.0 to i32
  %and.i = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %begin_node.if.end_crit_edge, label %if.then

begin_node.if.end_crit_edge:                      ; preds = %begin_node
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %begin_node
  call void @__sanitizer_cov_trace_pc() #7
  %and.i.i = and i32 %0, -4
  %1 = inttoptr i32 %and.i.i to ptr
  %next_node = getelementptr inbounds %struct.assoc_array_shortcut, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %next_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %next_node, align 4
  %.pre = ptrtoint ptr %3 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %begin_node.if.end_crit_edge
  %.pre-phi = phi i32 [ %.pre, %if.then ], [ %0, %begin_node.if.end_crit_edge ]
  %and.i.i93 = and i32 %.pre-phi, -4
  %4 = inttoptr i32 %and.i.i93 to ptr
  br label %do.end5

do.end5:                                          ; preds = %for.inc.do.end5_crit_edge, %if.end
  %slot.0105 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.do.end5_crit_edge ]
  %has_meta.0104 = phi i32 [ 0, %if.end ], [ %or, %for.inc.do.end5_crit_edge ]
  %arrayidx = getelementptr %struct.assoc_array_node, ptr %4, i32 0, i32 2, i32 %slot.0105
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %arrayidx, align 4
  %7 = ptrtoint ptr %6 to i32
  %or = or i32 %has_meta.0104, %7
  %tobool.not = icmp ne ptr %6, null
  %and.i.i94 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i94)
  %tobool.i.not.i = icmp eq i32 %and.i.i94, 0
  %or.cond = select i1 %tobool.not, i1 %tobool.i.not.i, i1 false
  br i1 %or.cond, label %if.then8, label %do.end5.for.inc_crit_edge

do.end5.for.inc_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then8:                                         ; preds = %do.end5
  %and.i95 = and i32 %7, -2
  %8 = inttoptr i32 %and.i95 to ptr
  %call10 = tail call i32 %iterator(ptr noundef %8, ptr noundef %iterator_data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then8.for.inc_crit_edge, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then8.for.inc_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %if.then8.for.inc_crit_edge, %do.end5.for.inc_crit_edge
  %inc = add nuw nsw i32 %slot.0105, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.do.end5_crit_edge

for.inc.do.end5_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end5

for.end:                                          ; preds = %for.inc
  %and = and i32 %or, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %for.end.do.end36.preheader_crit_edge, label %for.end.do.end24.preheader_crit_edge

for.end.do.end24.preheader_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end24.preheader

for.end.do.end36.preheader_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end36.preheader

continue_node:                                    ; preds = %if.then43.if.end55_crit_edge, %if.end41.continue_node_crit_edge
  %.pre112.pre-phi = phi i32 [ %.pre117, %if.then43.if.end55_crit_edge ], [ %16, %if.end41.continue_node_crit_edge ]
  %slot.3 = phi i32 [ %21, %if.then43.if.end55_crit_edge ], [ %conv, %if.end41.continue_node_crit_edge ]
  %inc56 = add i32 %slot.3, 1
  %.pre114 = and i32 %.pre112.pre-phi, -4
  %.pre115 = inttoptr i32 %.pre114 to ptr
  %cmp20106 = icmp slt i32 %inc56, 16
  br i1 %cmp20106, label %do.end24.preheader.loopexit, label %continue_node.do.end36_crit_edge

continue_node.do.end36_crit_edge:                 ; preds = %continue_node
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end36

do.end24.preheader.loopexit:                      ; preds = %continue_node
  call void @__sanitizer_cov_trace_pc() #7
  %.pre115.le = inttoptr i32 %.pre114 to ptr
  br label %do.end24.preheader

do.end24.preheader:                               ; preds = %do.end24.preheader.loopexit, %for.end.do.end24.preheader_crit_edge
  %slot.1123 = phi i32 [ 0, %for.end.do.end24.preheader_crit_edge ], [ %inc56, %do.end24.preheader.loopexit ]
  %.pre-phi116122 = phi ptr [ %4, %for.end.do.end24.preheader_crit_edge ], [ %.pre115.le, %do.end24.preheader.loopexit ]
  br label %do.end24

for.cond19:                                       ; preds = %do.end24
  %inc32 = add i32 %slot.2107, 1
  %exitcond111.not = icmp eq i32 %inc32, 16
  br i1 %exitcond111.not, label %for.cond19.do.end36.preheader_crit_edge, label %for.cond19.do.end24_crit_edge

for.cond19.do.end24_crit_edge:                    ; preds = %for.cond19
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end24

for.cond19.do.end36.preheader_crit_edge:          ; preds = %for.cond19
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end36.preheader

do.end24:                                         ; preds = %for.cond19.do.end24_crit_edge, %do.end24.preheader
  %slot.2107 = phi i32 [ %inc32, %for.cond19.do.end24_crit_edge ], [ %slot.1123, %do.end24.preheader ]
  %arrayidx27 = getelementptr %struct.assoc_array_node, ptr %.pre-phi116122, i32 0, i32 2, i32 %slot.2107
  %9 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %arrayidx27, align 4
  %11 = ptrtoint ptr %10 to i32
  %and.i97 = and i32 %11, 1
  %tobool.i98.not = icmp eq i32 %and.i97, 0
  br i1 %tobool.i98.not, label %for.cond19, label %do.end24.begin_node_crit_edge

do.end24.begin_node_crit_edge:                    ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %begin_node

do.end36.preheader:                               ; preds = %for.cond19.do.end36.preheader_crit_edge, %for.end.do.end36.preheader_crit_edge
  %node.0.ph = phi ptr [ %4, %for.end.do.end36.preheader_crit_edge ], [ %.pre-phi116122, %for.cond19.do.end36.preheader_crit_edge ]
  br label %do.end36

do.end36:                                         ; preds = %do.end36.preheader, %continue_node.do.end36_crit_edge
  %node.0 = phi ptr [ %.pre115, %continue_node.do.end36_crit_edge ], [ %node.0.ph, %do.end36.preheader ]
  %12 = ptrtoint ptr %node.0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %node.0, align 4
  %cmp38 = icmp eq ptr %13, %stop
  br i1 %cmp38, label %do.end36.cleanup_crit_edge, label %if.end41

do.end36.cleanup_crit_edge:                       ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end41:                                         ; preds = %do.end36
  %parent_slot = getelementptr inbounds %struct.assoc_array_node, ptr %node.0, i32 0, i32 1
  %14 = ptrtoint ptr %parent_slot to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %parent_slot, align 4
  %conv = zext i8 %15 to i32
  %16 = ptrtoint ptr %13 to i32
  %and.i99 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i99)
  %tobool.i100.not = icmp eq i32 %and.i99, 0
  br i1 %tobool.i100.not, label %if.end41.continue_node_crit_edge, label %if.then43

if.end41.continue_node_crit_edge:                 ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %continue_node

if.then43:                                        ; preds = %if.end41
  %and.i.i101 = and i32 %16, -4
  %17 = inttoptr i32 %and.i.i101 to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %17, align 4
  %cmp51 = icmp eq ptr %19, %stop
  br i1 %cmp51, label %if.then43.cleanup_crit_edge, label %if.then43.if.end55_crit_edge

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then43.if.end55_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  %parent_slot50 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %parent_slot50 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %parent_slot50, align 4
  %.pre117 = ptrtoint ptr %19 to i32
  br label %continue_node

cleanup:                                          ; preds = %if.then43.cleanup_crit_edge, %do.end36.cleanup_crit_edge, %if.then8.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end36.cleanup_crit_edge ], [ 0, %if.then43.cleanup_crit_edge ], [ %call10, %if.then8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @assoc_array_find(ptr noundef %array, ptr nocapture noundef readonly %ops, ptr noundef %index_key) local_unnamed_addr #0 align 64 {
entry:
  %result = alloca %struct.assoc_array_walk_result, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %result) #8
  %0 = call ptr @memset(ptr %result, i32 255, i32 32)
  %call = call fastcc i32 @assoc_array_walk(ptr noundef %array, ptr noundef %ops, ptr noundef %index_key, ptr noundef nonnull %result)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %result, align 4
  %compare_object = getelementptr inbounds %struct.assoc_array_ops, ptr %ops, i32 0, i32 2
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %if.end
  %slot.023 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.do.end_crit_edge ]
  %arrayidx = getelementptr %struct.assoc_array_node, ptr %2, i32 0, i32 2, i32 %slot.023
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %do.end.for.inc_crit_edge, label %land.lhs.true

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %do.end
  %5 = ptrtoint ptr %4 to i32
  %and.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then4, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then4:                                         ; preds = %land.lhs.true
  %and.i = and i32 %5, -2
  %6 = inttoptr i32 %and.i to ptr
  %7 = ptrtoint ptr %compare_object to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %compare_object, align 4
  %call6 = tail call zeroext i1 %8(ptr noundef %6, ptr noundef %index_key) #8
  br i1 %call6, label %cleanup.loopexit.split.loop.exit, label %if.then4.for.inc_crit_edge

if.then4.for.inc_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %if.then4.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %do.end.for.inc_crit_edge
  %inc = add nuw nsw i32 %slot.023, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.do.end_crit_edge

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.loopexit.split.loop.exit:                 ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  %9 = inttoptr i32 %and.i to ptr
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split.loop.exit, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %9, %cleanup.loopexit.split.loop.exit ], [ null, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %result) #8
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @assoc_array_walk(ptr noundef %array, ptr nocapture noundef readonly %ops, ptr noundef %index_key, ptr nocapture noundef writeonly %result) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %array to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %array, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.jumped_crit_edge

entry.jumped_crit_edge:                           ; preds = %entry
  br label %jumped

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

jumped:                                           ; preds = %jumped.backedge, %entry.jumped_crit_edge
  %level.0 = phi i32 [ %level.0.be, %jumped.backedge ], [ 0, %entry.jumped_crit_edge ]
  %cursor.0 = phi ptr [ %cursor.0.be, %jumped.backedge ], [ %1, %entry.jumped_crit_edge ]
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %call = tail call i32 %3(ptr noundef %index_key, i32 noundef %level.0) #8
  %4 = ptrtoint ptr %cursor.0 to i32
  %and.i = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %jumped.consider_node.preheader_crit_edge, label %jumped.follow_shortcut_crit_edge

jumped.follow_shortcut_crit_edge:                 ; preds = %jumped
  call void @__sanitizer_cov_trace_pc() #7
  br label %follow_shortcut

jumped.consider_node.preheader_crit_edge:         ; preds = %jumped
  call void @__sanitizer_cov_trace_pc() #7
  br label %consider_node.preheader

consider_node.preheader:                          ; preds = %do.end84.consider_node.preheader_crit_edge, %jumped.consider_node.preheader_crit_edge
  %level.1.ph = phi i32 [ %next_sc_level.0, %do.end84.consider_node.preheader_crit_edge ], [ %level.0, %jumped.consider_node.preheader_crit_edge ]
  %segments.0.ph = phi i32 [ %segments.3, %do.end84.consider_node.preheader_crit_edge ], [ %call, %jumped.consider_node.preheader_crit_edge ]
  %cursor.1.ph = phi ptr [ %31, %do.end84.consider_node.preheader_crit_edge ], [ %cursor.0, %jumped.consider_node.preheader_crit_edge ]
  br label %consider_node

consider_node:                                    ; preds = %if.then23.consider_node_crit_edge, %consider_node.preheader
  %level.1 = phi i32 [ %add, %if.then23.consider_node_crit_edge ], [ %level.1.ph, %consider_node.preheader ]
  %cursor.1 = phi ptr [ %8, %if.then23.consider_node_crit_edge ], [ %cursor.1.ph, %consider_node.preheader ]
  %5 = ptrtoint ptr %cursor.1 to i32
  %and.i.i = and i32 %5, -4
  %6 = inttoptr i32 %and.i.i to ptr
  %and = and i32 %level.1, 31
  %shr = lshr i32 %segments.0.ph, %and
  %and7 = and i32 %shr, 15
  %arrayidx = getelementptr %struct.assoc_array_node, ptr %6, i32 0, i32 2, i32 %and7
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %arrayidx, align 4
  %9 = ptrtoint ptr %8 to i32
  %and.i149 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i149)
  %tobool.i150.not = icmp eq i32 %and.i149, 0
  br i1 %tobool.i150.not, label %if.then14, label %if.end21

if.then14:                                        ; preds = %consider_node
  call void @__sanitizer_cov_trace_pc() #7
  %10 = inttoptr i32 %and.i.i to ptr
  %11 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %result, align 4
  %level17 = getelementptr inbounds %struct.anon, ptr %result, i32 0, i32 1
  %12 = ptrtoint ptr %level17 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %level.1, ptr %level17, align 4
  %slot19 = getelementptr inbounds %struct.anon, ptr %result, i32 0, i32 2
  %13 = ptrtoint ptr %slot19 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and7, ptr %slot19, align 4
  br label %cleanup

if.end21:                                         ; preds = %consider_node
  %and.i.i151 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i151)
  %tobool.i.not.i = icmp eq i32 %and.i.i151, 0
  br i1 %tobool.i.not.i, label %if.then23, label %follow_shortcut.loopexit

if.then23:                                        ; preds = %if.end21
  %add = add i32 %level.1, 4
  %and24 = and i32 %add, 31
  %cmp.not = icmp eq i32 %and24, 0
  br i1 %cmp.not, label %if.then23.jumped.backedge_crit_edge, label %if.then23.consider_node_crit_edge

if.then23.consider_node_crit_edge:                ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  br label %consider_node

if.then23.jumped.backedge_crit_edge:              ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  br label %jumped.backedge

follow_shortcut.loopexit:                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %8 to i32
  br label %follow_shortcut

follow_shortcut:                                  ; preds = %follow_shortcut.loopexit, %jumped.follow_shortcut_crit_edge
  %.pre-phi = phi i32 [ %4, %jumped.follow_shortcut_crit_edge ], [ %14, %follow_shortcut.loopexit ]
  %level.2 = phi i32 [ %level.0, %jumped.follow_shortcut_crit_edge ], [ %level.1, %follow_shortcut.loopexit ]
  %segments.1 = phi i32 [ %call, %jumped.follow_shortcut_crit_edge ], [ %segments.0.ph, %follow_shortcut.loopexit ]
  %and.i.i152 = and i32 %.pre-phi, -4
  %15 = inttoptr i32 %and.i.i152 to ptr
  %add30 = add i32 %level.2, 4
  %skip_to_level = getelementptr inbounds %struct.assoc_array_shortcut, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %skip_to_level to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %skip_to_level, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add30, i32 %17)
  %cmp32 = icmp sgt i32 %add30, %17
  br i1 %cmp32, label %do.body36, label %follow_shortcut.do.body45_crit_edge, !prof !8

follow_shortcut.do.body45_crit_edge:              ; preds = %follow_shortcut
  br label %do.body45

do.body36:                                        ; preds = %follow_shortcut
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 245, 0\0A.popsection", ""() #8, !srcloc !9
  unreachable

do.body45:                                        ; preds = %if.end77.do.body45_crit_edge, %follow_shortcut.do.body45_crit_edge
  %sc_level.0 = phi i32 [ %next_sc_level.0, %if.end77.do.body45_crit_edge ], [ %add30, %follow_shortcut.do.body45_crit_edge ]
  %segments.2 = phi i32 [ %segments.3, %if.end77.do.body45_crit_edge ], [ %segments.1, %follow_shortcut.do.body45_crit_edge ]
  %and46 = and i32 %sc_level.0, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %cmp47 = icmp eq i32 %and46, 0
  br i1 %cmp47, label %if.then48, label %do.body45.if.end51_crit_edge

do.body45.if.end51_crit_edge:                     ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

if.then48:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops, align 4
  %call50 = tail call i32 %19(ptr noundef %index_key, i32 noundef %sc_level.0) #8
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %do.body45.if.end51_crit_edge
  %segments.3 = phi i32 [ %call50, %if.then48 ], [ %segments.2, %do.body45.if.end51_crit_edge ]
  %shr53 = ashr i32 %sc_level.0, 5
  %arrayidx54 = getelementptr %struct.assoc_array_shortcut, ptr %15, i32 0, i32 4, i32 %shr53
  %20 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx54, align 4
  %xor = xor i32 %21, %segments.3
  %sub = add i32 %sc_level.0, -1
  %or = or i32 %sub, 31
  %add55 = add i32 %or, 1
  %22 = ptrtoint ptr %skip_to_level to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %skip_to_level, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add55, i32 %23)
  %cmp57 = icmp sgt i32 %add55, %23
  br i1 %cmp57, label %if.then58, label %if.else

if.then58:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  %and60 = and i32 %23, 31
  %shl = shl nsw i32 -1, %and60
  %neg = xor i32 %shl, -1
  %and61 = and i32 %xor, %neg
  br label %if.end65

if.else:                                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  %add63 = add i32 %sc_level.0, 32
  %and64 = and i32 %add63, -32
  br label %if.end65

if.end65:                                         ; preds = %if.else, %if.then58
  %next_sc_level.0 = phi i32 [ %23, %if.then58 ], [ %and64, %if.else ]
  %dissimilarity.0 = phi i32 [ %and61, %if.then58 ], [ %xor, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dissimilarity.0)
  %cmp66.not = icmp eq i32 %dissimilarity.0, 0
  br i1 %cmp66.not, label %if.end77, label %if.then67

if.then67:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  %24 = inttoptr i32 %and.i.i152 to ptr
  %wrong_shortcut = getelementptr inbounds %struct.assoc_array_walk_result, ptr %result, i32 0, i32 1
  %25 = ptrtoint ptr %wrong_shortcut to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %wrong_shortcut, align 4
  %level70 = getelementptr inbounds %struct.assoc_array_walk_result, ptr %result, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %level70 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %level.2, ptr %level70, align 4
  %sc_level72 = getelementptr inbounds %struct.assoc_array_walk_result, ptr %result, i32 0, i32 1, i32 2
  %27 = ptrtoint ptr %sc_level72 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sc_level.0, ptr %sc_level72, align 4
  %sc_segments74 = getelementptr inbounds %struct.assoc_array_walk_result, ptr %result, i32 0, i32 1, i32 3
  %28 = ptrtoint ptr %sc_segments74 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %21, ptr %sc_segments74, align 4
  %dissimilarity76 = getelementptr inbounds %struct.assoc_array_walk_result, ptr %result, i32 0, i32 1, i32 4
  %29 = ptrtoint ptr %dissimilarity76 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %dissimilarity.0, ptr %dissimilarity76, align 4
  br label %cleanup

if.end77:                                         ; preds = %if.end65
  %cmp80 = icmp slt i32 %next_sc_level.0, %23
  br i1 %cmp80, label %if.end77.do.body45_crit_edge, label %do.end84

if.end77.do.body45_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body45

do.end84:                                         ; preds = %if.end77
  %next_node = getelementptr inbounds %struct.assoc_array_shortcut, ptr %15, i32 0, i32 3
  %30 = ptrtoint ptr %next_node to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %next_node, align 4
  %xor86 = xor i32 %next_sc_level.0, %level.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %xor86)
  %cmp88.not = icmp ult i32 %xor86, 32
  br i1 %cmp88.not, label %do.end84.consider_node.preheader_crit_edge, label %do.end84.jumped.backedge_crit_edge

do.end84.jumped.backedge_crit_edge:               ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %jumped.backedge

do.end84.consider_node.preheader_crit_edge:       ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %consider_node.preheader

jumped.backedge:                                  ; preds = %do.end84.jumped.backedge_crit_edge, %if.then23.jumped.backedge_crit_edge
  %level.0.be = phi i32 [ %next_sc_level.0, %do.end84.jumped.backedge_crit_edge ], [ %add, %if.then23.jumped.backedge_crit_edge ]
  %cursor.0.be = phi ptr [ %31, %do.end84.jumped.backedge_crit_edge ], [ %8, %if.then23.jumped.backedge_crit_edge ]
  br label %jumped

cleanup:                                          ; preds = %if.then67, %if.then14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.then67 ], [ 1, %if.then14 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @assoc_array_destroy(ptr nocapture noundef %array, ptr noundef %ops) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %array to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %array, align 4
  tail call fastcc void @assoc_array_destroy_subtree(ptr noundef %1, ptr noundef %ops)
  %2 = ptrtoint ptr %array to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %array, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @assoc_array_destroy_subtree(ptr noundef %root, ptr noundef readonly %ops) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %tobool.not = icmp eq ptr %root, null
  br i1 %tobool.not, label %entry.cleanup192_crit_edge, label %move_to_meta.preheader

entry.cleanup192_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup192

move_to_meta.preheader:                           ; preds = %entry
  %tobool127.not = icmp eq ptr %ops, null
  %free_object = getelementptr inbounds %struct.assoc_array_ops, ptr %ops, i32 0, i32 4
  br label %move_to_meta

move_to_meta:                                     ; preds = %if.end123.move_to_meta_crit_edge, %move_to_meta.preheader
  %slot.0 = phi i32 [ -1, %move_to_meta.preheader ], [ %slot.3277, %if.end123.move_to_meta_crit_edge ]
  %parent.0 = phi ptr [ null, %move_to_meta.preheader ], [ %cursor.2, %if.end123.move_to_meta_crit_edge ]
  %cursor.0 = phi ptr [ %root, %move_to_meta.preheader ], [ %15, %if.end123.move_to_meta_crit_edge ]
  %0 = ptrtoint ptr %cursor.0 to i32
  %and.i = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %and.i.i241 = and i32 %0, -4
  %1 = inttoptr i32 %and.i.i241 to ptr
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cmp78.not = icmp eq ptr %3, %parent.0
  br i1 %tobool.i.not, label %if.end73, label %do.end15

do.end15:                                         ; preds = %move_to_meta
  br i1 %cmp78.not, label %do.body34, label %do.body25, !prof !10

do.body25:                                        ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 365, 0\0A.popsection", ""() #8, !srcloc !11
  unreachable

do.body34:                                        ; preds = %do.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %slot.0)
  %cmp35.not = icmp eq i32 %slot.0, -1
  br i1 %cmp35.not, label %do.body34.do.end52_crit_edge, label %land.rhs

do.body34.do.end52_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end52

land.rhs:                                         ; preds = %do.body34
  %parent_slot = getelementptr inbounds %struct.assoc_array_shortcut, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %parent_slot to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %parent_slot, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %slot.0)
  %cmp36.not = icmp eq i32 %5, %slot.0
  br i1 %cmp36.not, label %land.rhs.do.end52_crit_edge, label %do.body44, !prof !10

land.rhs.do.end52_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end52

do.body44:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 366, 0\0A.popsection", ""() #8, !srcloc !12
  unreachable

do.end52:                                         ; preds = %land.rhs.do.end52_crit_edge, %do.body34.do.end52_crit_edge
  %next_node = getelementptr inbounds %struct.assoc_array_shortcut, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %next_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %next_node, align 4
  %8 = ptrtoint ptr %7 to i32
  %and.i.i240 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i240)
  %tobool.i.not.i = icmp eq i32 %and.i.i240, 0
  br i1 %tobool.i.not.i, label %if.end73.thread, label %do.body64, !prof !10

do.body64:                                        ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 370, 0\0A.popsection", ""() #8, !srcloc !13
  unreachable

if.end73:                                         ; preds = %move_to_meta
  br i1 %cmp78.not, label %do.body95, label %if.end73.do.body86_crit_edge, !prof !10

if.end73.do.body86_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body86

if.end73.thread:                                  ; preds = %do.end52
  %and.i.i241254 = and i32 %8, -4
  %9 = inttoptr i32 %and.i.i241254 to ptr
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %cmp78.not255 = icmp eq ptr %11, %cursor.0
  br i1 %cmp78.not255, label %if.end73.thread.continue_node.preheader_crit_edge, label %if.end73.thread.do.body86_crit_edge, !prof !10

if.end73.thread.do.body86_crit_edge:              ; preds = %if.end73.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body86

if.end73.thread.continue_node.preheader_crit_edge: ; preds = %if.end73.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %continue_node.preheader

do.body86:                                        ; preds = %if.end73.thread.do.body86_crit_edge, %if.end73.do.body86_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 375, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

do.body95:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %slot.0)
  %cmp96.not = icmp eq i32 %slot.0, -1
  br i1 %cmp96.not, label %do.body95.continue_node.preheader_crit_edge, label %land.rhs97

do.body95.continue_node.preheader_crit_edge:      ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #7
  br label %continue_node.preheader

land.rhs97:                                       ; preds = %do.body95
  %parent_slot98 = getelementptr inbounds %struct.assoc_array_node, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %parent_slot98 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %parent_slot98, align 4
  %conv = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %slot.0, i32 %conv)
  %cmp99.not = icmp eq i32 %slot.0, %conv
  br i1 %cmp99.not, label %land.rhs97.continue_node.preheader_crit_edge, label %do.body109, !prof !10

land.rhs97.continue_node.preheader_crit_edge:     ; preds = %land.rhs97
  call void @__sanitizer_cov_trace_pc() #7
  br label %continue_node.preheader

continue_node.preheader:                          ; preds = %land.rhs97.continue_node.preheader_crit_edge, %do.body95.continue_node.preheader_crit_edge, %if.end73.thread.continue_node.preheader_crit_edge
  %cursor.2.ph = phi ptr [ %cursor.0, %land.rhs97.continue_node.preheader_crit_edge ], [ %cursor.0, %do.body95.continue_node.preheader_crit_edge ], [ %7, %if.end73.thread.continue_node.preheader_crit_edge ]
  %node.0.ph = phi ptr [ %1, %land.rhs97.continue_node.preheader_crit_edge ], [ %1, %do.body95.continue_node.preheader_crit_edge ], [ %9, %if.end73.thread.continue_node.preheader_crit_edge ]
  br label %continue_node

do.body109:                                       ; preds = %land.rhs97
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 376, 0\0A.popsection", ""() #8, !srcloc !15
  unreachable

continue_node:                                    ; preds = %if.end188, %continue_node.preheader
  %slot.2 = phi i32 [ %inc191, %if.end188 ], [ 0, %continue_node.preheader ]
  %cursor.2 = phi ptr [ %parent.5, %if.end188 ], [ %cursor.2.ph, %continue_node.preheader ]
  %node.0 = phi ptr [ %33, %if.end188 ], [ %node.0.ph, %continue_node.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %slot.2)
  %cmp119276 = icmp slt i32 %slot.2, 16
  br i1 %cmp119276, label %continue_node.for.body_crit_edge, label %continue_node.for.end_crit_edge

continue_node.for.end_crit_edge:                  ; preds = %continue_node
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

continue_node.for.body_crit_edge:                 ; preds = %continue_node
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %continue_node.for.body_crit_edge
  %slot.3277 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %slot.2, %continue_node.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.assoc_array_node, ptr %node.0, i32 0, i32 2, i32 %slot.3277
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %tobool121.not = icmp eq ptr %15, null
  br i1 %tobool121.not, label %for.body.for.inc_crit_edge, label %if.end123

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end123:                                        ; preds = %for.body
  %16 = ptrtoint ptr %15 to i32
  %and.i242 = and i32 %16, 1
  %tobool.i243.not = icmp eq i32 %and.i242, 0
  br i1 %tobool.i243.not, label %if.end126, label %if.end123.move_to_meta_crit_edge

if.end123.move_to_meta_crit_edge:                 ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #7
  br label %move_to_meta

if.end126:                                        ; preds = %if.end123
  br i1 %tobool127.not, label %if.end126.for.inc_crit_edge, label %if.then128

if.end126.for.inc_crit_edge:                      ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then128:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %free_object to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %free_object, align 4
  %and.i244 = and i32 %16, -2
  %19 = inttoptr i32 %and.i244 to ptr
  tail call void %18(ptr noundef %19) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then128, %if.end126.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add i32 %slot.3277, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %continue_node.for.end_crit_edge
  %20 = ptrtoint ptr %node.0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %node.0, align 4
  %parent_slot133 = getelementptr inbounds %struct.assoc_array_node, ptr %node.0, i32 0, i32 1
  %22 = ptrtoint ptr %parent_slot133 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %parent_slot133, align 4
  tail call void @kfree(ptr noundef %node.0) #8
  %tobool136.not = icmp eq ptr %21, null
  br i1 %tobool136.not, label %for.end.cleanup192_crit_edge, label %if.end138

for.end.cleanup192_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup192

if.end138:                                        ; preds = %for.end
  %conv134 = zext i8 %23 to i32
  %24 = ptrtoint ptr %21 to i32
  %and.i245 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i245)
  %tobool.i246.not = icmp eq i32 %and.i245, 0
  br i1 %tobool.i246.not, label %if.end138.if.end188_crit_edge, label %if.then140

if.end138.if.end188_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end188

if.then140:                                       ; preds = %if.end138
  %and.i.i247 = and i32 %24, -4
  %25 = inttoptr i32 %and.i.i247 to ptr
  %next_node143 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %next_node143 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %next_node143, align 4
  %cmp144.not = icmp eq ptr %27, %cursor.2
  br i1 %cmp144.not, label %do.end161, label %do.body153, !prof !10

do.body153:                                       ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 408, 0\0A.popsection", ""() #8, !srcloc !16
  unreachable

do.end161:                                        ; preds = %if.then140
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %25, align 4
  %parent_slot163 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %25, i32 0, i32 1
  %30 = ptrtoint ptr %parent_slot163 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %parent_slot163, align 4
  tail call void @kfree(ptr noundef %25) #8
  %tobool165.not = icmp eq ptr %29, null
  br i1 %tobool165.not, label %do.end161.cleanup192_crit_edge, label %do.body168

do.end161.cleanup192_crit_edge:                   ; preds = %do.end161
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup192

do.body168:                                       ; preds = %do.end161
  %32 = ptrtoint ptr %29 to i32
  %and.i.i248 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i248)
  %tobool.i.not.i249 = icmp eq i32 %and.i.i248, 0
  br i1 %tobool.i.not.i249, label %do.body168.if.end188_crit_edge, label %do.body179, !prof !10

do.body168.if.end188_crit_edge:                   ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end188

do.body179:                                       ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 417, 0\0A.popsection", ""() #8, !srcloc !17
  unreachable

if.end188:                                        ; preds = %do.body168.if.end188_crit_edge, %if.end138.if.end188_crit_edge
  %.pre-phi = phi i32 [ %32, %do.body168.if.end188_crit_edge ], [ %24, %if.end138.if.end188_crit_edge ]
  %slot.4 = phi i32 [ %31, %do.body168.if.end188_crit_edge ], [ %conv134, %if.end138.if.end188_crit_edge ]
  %parent.5 = phi ptr [ %29, %do.body168.if.end188_crit_edge ], [ %21, %if.end138.if.end188_crit_edge ]
  %and.i.i250 = and i32 %.pre-phi, -4
  %33 = inttoptr i32 %and.i.i250 to ptr
  %inc191 = add i32 %slot.4, 1
  br label %continue_node

cleanup192:                                       ; preds = %do.end161.cleanup192_crit_edge, %for.end.cleanup192_crit_edge, %entry.cleanup192_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @assoc_array_insert(ptr noundef %array, ptr noundef %ops, ptr noundef %index_key, ptr noundef %object) local_unnamed_addr #0 align 64 {
entry:
  %result = alloca %struct.assoc_array_walk_result, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %result) #8
  %0 = getelementptr inbounds %struct.anon, ptr %result, i32 0, i32 1
  %1 = getelementptr inbounds %struct.anon, ptr %result, i32 0, i32 2
  %2 = getelementptr inbounds %struct.assoc_array_walk_result, ptr %result, i32 0, i32 1
  %3 = getelementptr inbounds %struct.assoc_array_walk_result, ptr %result, i32 0, i32 1, i32 1
  %4 = getelementptr inbounds %struct.assoc_array_walk_result, ptr %result, i32 0, i32 1, i32 2
  %5 = getelementptr inbounds %struct.assoc_array_walk_result, ptr %result, i32 0, i32 1, i32 3
  %6 = getelementptr inbounds %struct.assoc_array_walk_result, ptr %result, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %object to i32
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %8 = call ptr @memset(ptr %result, i32 255, i32 32)
  br i1 %tobool.i.not, label %do.end7, label %do.body2, !prof !10

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 978, 0\0A.popsection", ""() #8, !srcloc !18
  unreachable

do.end7:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 172) #9
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %do.end7.cleanup_crit_edge, label %if.end12

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %do.end7
  %array13 = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %array13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %array, ptr %array13, align 8
  %ops14 = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %ops14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %ops, ptr %ops14, align 4
  %leaf = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %leaf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %object, ptr %leaf, align 4
  %adjust_count_by = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 13
  %13 = ptrtoint ptr %adjust_count_by to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %adjust_count_by, align 4
  %call16 = call fastcc i32 @assoc_array_walk(ptr noundef %array, ptr noundef %ops, ptr noundef %index_key, ptr noundef nonnull %result)
  %14 = zext i32 %call16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call16, label %if.end12.enomem_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb20
    i32 2, label %sw.bb24
  ]

if.end12.enomem_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %enomem

sw.bb:                                            ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 76) #9
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %sw.bb.enomem_crit_edge, label %assoc_array_insert_in_empty_tree.exit.thread

sw.bb.enomem_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %enomem

assoc_array_insert_in_empty_tree.exit.thread:     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %call7.i.i.i to i32
  %or.i.i.i = or i32 %16, 1
  %17 = inttoptr i32 %or.i.i.i to ptr
  %new_meta.i = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 7
  %18 = ptrtoint ptr %new_meta.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %new_meta.i, align 8
  %slots.i = getelementptr inbounds %struct.assoc_array_node, ptr %call7.i.i.i, i32 0, i32 2
  %leaf_p.i = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 5
  %19 = ptrtoint ptr %leaf_p.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %slots.i, ptr %leaf_p.i, align 8
  %adjust_count_on.i = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 12
  %20 = ptrtoint ptr %adjust_count_on.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i.i, ptr %adjust_count_on.i, align 8
  %21 = ptrtoint ptr %array13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %array13, align 8
  %set.i = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 14
  %23 = ptrtoint ptr %set.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %set.i, align 8
  %to.i = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 14, i32 0, i32 1
  %24 = ptrtoint ptr %to.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %17, ptr %to.i, align 4
  br label %cleanup

sw.bb20:                                          ; preds = %if.end12
  %25 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %result, align 4
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %0, align 4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %1, align 4
  %conv.i = trunc i32 %30 to i8
  %segment_cache.i = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 16
  %arrayidx.i = getelementptr %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 16, i32 16
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv.i, ptr %arrayidx.i, align 8
  %compare_object.i = getelementptr inbounds %struct.assoc_array_ops, ptr %ops, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.bb20
  %i.0825.i = phi i32 [ 0, %sw.bb20 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %free_slot.0824.i = phi i32 [ -1, %sw.bb20 ], [ %free_slot.1.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx7.i = getelementptr %struct.assoc_array_node, ptr %26, i32 0, i32 2, i32 %i.0825.i
  %32 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx7.i, align 4
  %tobool.not.i48 = icmp eq ptr %33, null
  br i1 %tobool.not.i48, label %for.body.i.for.inc.i_crit_edge, label %if.end.i49

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end.i49:                                       ; preds = %for.body.i
  %34 = ptrtoint ptr %33 to i32
  %and.i.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %land.lhs.true.i, label %if.end.i49.for.inc.i_crit_edge

if.end.i49.for.inc.i_crit_edge:                   ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end.i49
  %35 = ptrtoint ptr %compare_object.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %compare_object.i, align 4
  %and.i.i = and i32 %34, -2
  %37 = inttoptr i32 %and.i.i to ptr
  %call10.i = tail call zeroext i1 %36(ptr noundef %37, ptr noundef %index_key) #8
  br i1 %call10.i, label %if.then12.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then12.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %leaf_p.i50 = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 5
  %38 = ptrtoint ptr %leaf_p.i50 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %arrayidx7.i, ptr %leaf_p.i50, align 8
  %39 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx7.i, align 4
  %dead_leaf.i = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 6
  %41 = ptrtoint ptr %dead_leaf.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %dead_leaf.i, align 4
  br label %cleanup

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %if.end.i49.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %free_slot.1.i = phi i32 [ %free_slot.0824.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %free_slot.0824.i, %if.end.i49.for.inc.i_crit_edge ], [ %i.0825.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.0825.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %free_slot.1.i)
  %cmp20.i = icmp sgt i32 %free_slot.1.i, -1
  br i1 %cmp20.i, label %if.then22.i, label %if.end28.i

if.then22.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx25.i = getelementptr %struct.assoc_array_node, ptr %26, i32 0, i32 2, i32 %free_slot.1.i
  %leaf_p26.i = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 5
  %42 = ptrtoint ptr %leaf_p26.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %arrayidx25.i, ptr %leaf_p26.i, align 8
  %adjust_count_on.i51 = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 12
  %43 = ptrtoint ptr %adjust_count_on.i51 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %26, ptr %adjust_count_on.i51, align 8
  br label %cleanup

if.end28.i:                                       ; preds = %for.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %44 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i52 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %44, i32 noundef 3520, i32 noundef 76) #9
  %tobool30.not.i = icmp eq ptr %call7.i.i.i52, null
  br i1 %tobool30.not.i, label %if.end28.i.enomem_crit_edge, label %if.end32.i

if.end28.i.enomem_crit_edge:                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %enomem

if.end32.i:                                       ; preds = %if.end28.i
  %45 = ptrtoint ptr %call7.i.i.i52 to i32
  %or.i.i.i53 = or i32 %45, 1
  %46 = inttoptr i32 %or.i.i.i53 to ptr
  %new_meta.i54 = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 7
  %47 = ptrtoint ptr %new_meta.i54 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %new_meta.i54, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %48 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i786.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %48, i32 noundef 3520, i32 noundef 76) #9
  %tobool36.not.i = icmp eq ptr %call7.i.i786.i, null
  br i1 %tobool36.not.i, label %if.end32.i.enomem_crit_edge, label %if.end38.i

if.end32.i.enomem_crit_edge:                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %enomem

if.end38.i:                                       ; preds = %if.end32.i
  %49 = ptrtoint ptr %call7.i.i786.i to i32
  %or.i.i787.i = or i32 %49, 1
  %50 = inttoptr i32 %or.i.i787.i to ptr
  %arrayidx41.i = getelementptr %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 7, i32 1
  %51 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %arrayidx41.i, align 4
  %get_object_key_chunk.i = getelementptr inbounds %struct.assoc_array_ops, ptr %ops, i32 0, i32 1
  %and.i55 = and i32 %28, 31
  br label %for.body46.outer.i

for.body46.outer.i:                               ; preds = %for.inc60.thread.i.for.body46.outer.i_crit_edge, %if.end38.i
  %have_meta.0.off0828.ph.i = phi i1 [ true, %for.inc60.thread.i.for.body46.outer.i_crit_edge ], [ false, %if.end38.i ]
  %i.1826.ph.i = phi i32 [ %inc61877.i, %for.inc60.thread.i.for.body46.outer.i_crit_edge ], [ 0, %if.end38.i ]
  br label %for.body46.i

for.body46.i:                                     ; preds = %for.inc60.i.for.body46.i_crit_edge, %for.body46.outer.i
  %i.1826.i = phi i32 [ %inc61.i, %for.inc60.i.for.body46.i_crit_edge ], [ %i.1826.ph.i, %for.body46.outer.i ]
  %arrayidx48.i = getelementptr %struct.assoc_array_node, ptr %26, i32 0, i32 2, i32 %i.1826.i
  %52 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx48.i, align 4
  %54 = ptrtoint ptr %53 to i32
  %and.i788.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i788.i)
  %tobool.i.not.i = icmp eq i32 %and.i788.i, 0
  br i1 %tobool.i.not.i, label %for.inc60.i, label %for.inc60.thread.i

for.inc60.i:                                      ; preds = %for.body46.i
  %55 = ptrtoint ptr %get_object_key_chunk.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %get_object_key_chunk.i, align 4
  %and.i789.i = and i32 %54, -2
  %57 = inttoptr i32 %and.i789.i to ptr
  %call55.i = tail call i32 %56(ptr noundef %57, i32 noundef %28) #8
  %shr.i = lshr i32 %call55.i, %and.i55
  %58 = trunc i32 %shr.i to i8
  %conv57.i = and i8 %58, 15
  %59 = getelementptr %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 16, i32 %i.1826.i
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv57.i, ptr %59, align 1
  %inc61.i = add nuw nsw i32 %i.1826.i, 1
  %exitcond850.not.i = icmp eq i32 %inc61.i, 16
  br i1 %exitcond850.not.i, label %for.end62.i, label %for.inc60.i.for.body46.i_crit_edge

for.inc60.i.for.body46.i_crit_edge:               ; preds = %for.inc60.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body46.i

for.inc60.thread.i:                               ; preds = %for.body46.i
  %61 = getelementptr %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 16, i32 %i.1826.i
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 -1, ptr %61, align 1
  %inc61877.i = add nuw nsw i32 %i.1826.i, 1
  %exitcond850.not878.i = icmp eq i32 %inc61877.i, 16
  br i1 %exitcond850.not878.i, label %for.inc60.thread.i.split_node.i_crit_edge, label %for.inc60.thread.i.for.body46.outer.i_crit_edge

for.inc60.thread.i.for.body46.outer.i_crit_edge:  ; preds = %for.inc60.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body46.outer.i

for.inc60.thread.i.split_node.i_crit_edge:        ; preds = %for.inc60.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %split_node.i

for.end62.i:                                      ; preds = %for.inc60.i
  br i1 %have_meta.0.off0828.ph.i, label %for.end62.i.split_node.i_crit_edge, label %if.end66.i

for.end62.i.split_node.i_crit_edge:               ; preds = %for.end62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %split_node.i

if.end66.i:                                       ; preds = %for.end62.i
  %63 = ptrtoint ptr %segment_cache.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %segment_cache.i, align 8
  %arrayidx75.i = getelementptr %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 16, i32 1
  %65 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx75.i, align 1
  %xor785.i = xor i8 %66, %64
  %arrayidx75.1.i = getelementptr %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 16, i32 2
  %67 = ptrtoint ptr %arrayidx75.1.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx75.1.i, align 2
  %xor785.1.i = xor i8 %68, %64
  %or.1861.i = or i8 %xor785.1.i, %xor785.i
  %arrayidx75.2.i = getelementptr %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 16, i32 3
  %69 = ptrtoint ptr %arrayidx75.2.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx75.2.i, align 1
  %xor785.2.i = xor i8 %70, %64
  %or.2862.i = or i8 %or.1861.i, %xor785.2.i
  %arrayidx75.3.i = getelementptr %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 16, i32 4
  %71 = ptrtoint ptr %arrayidx75.3.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx75.3.i, align 4
  %xor785.3.i = xor i8 %72, %64
  %or.3863.i = or i8 %or.2862.i, %xor785.3.i
  %arrayidx75.4.i = getelementptr %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 16, i32 5
  %73 = ptrtoint ptr %arrayidx75.4.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx75.4.i, align 1
  %xor785.4.i = xor i8 %74, %64
  %or.4864.i = or i8 %or.3863.i, %xor785.4.i
  %arrayidx75.5.i = getelementptr %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 16, i32 6
  %75 = ptrtoint ptr %arrayidx75.5.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx75.5.i, align 2
  %xor785.5.i = xor i8 %76, %64
  %or.5865.i = or i8 %or.4864.i, %xor785.5.i
  %arrayidx75.6.i = getelementptr %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 16, i32 7
  %77 = ptrtoint ptr %arrayidx75.6.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx75.6.i, align 1
  %xor785.6.i = xor i8 %78, %64
  %or.6866.i = or i8 %or.5865.i, %xor785.6.i
  %arrayidx75.7.i = getelementptr %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 16, i32 8
  %79 = ptrtoint ptr %arrayidx75.7.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx75.7.i, align 8
  %xor785.7.i = xor i8 %80, %64
  %or.7867.i = or i8 %or.6866.i, %xor785.7.i
  %arrayidx75.8.i = getelementptr %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 16, i32 9
  %81 = ptrtoint ptr %arrayidx75.8.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx75.8.i, align 1
  %xor785.8.i = xor i8 %82, %64
  %or.8868.i = or i8 %or.7867.i, %xor785.8.i
  %arrayidx75.9.i = getelementptr %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 16, i32 10
  %83 = ptrtoint ptr %arrayidx75.9.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx75.9.i, align 2
  %xor785.9.i = xor i8 %84, %64
  %or.9869.i = or i8 %or.8868.i, %xor785.9.i
  %arrayidx75.10.i = getelementptr %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 16, i32 11
  %85 = ptrtoint ptr %arrayidx75.10.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx75.10.i, align 1
  %xor785.10.i = xor i8 %86, %64
  %or.10870.i = or i8 %or.9869.i, %xor785.10.i
  %arrayidx75.11.i = getelementptr %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 16, i32 12
  %87 = ptrtoint ptr %arrayidx75.11.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx75.11.i, align 4
  %xor785.11.i = xor i8 %88, %64
  %or.11871.i = or i8 %or.10870.i, %xor785.11.i
  %arrayidx75.12.i = getelementptr %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 16, i32 13
  %89 = ptrtoint ptr %arrayidx75.12.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx75.12.i, align 1
  %xor785.12.i = xor i8 %90, %64
  %or.12872.i = or i8 %or.11871.i, %xor785.12.i
  %arrayidx75.13.i = getelementptr %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 16, i32 14
  %91 = ptrtoint ptr %arrayidx75.13.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx75.13.i, align 2
  %xor785.13.i = xor i8 %92, %64
  %or.13873.i = or i8 %or.12872.i, %xor785.13.i
  %arrayidx75.14.i = getelementptr %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 16, i32 15
  %93 = ptrtoint ptr %arrayidx75.14.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx75.14.i, align 1
  %xor785.14.i = xor i8 %94, %64
  %or.14874.i = or i8 %or.13873.i, %xor785.14.i
  %95 = and i8 %or.14874.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %cmp82.i = icmp eq i8 %95, 0
  br i1 %cmp82.i, label %if.then84.i, label %if.end66.i.split_node.i_crit_edge

if.end66.i.split_node.i_crit_edge:                ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %split_node.i

if.then84.i:                                      ; preds = %if.end66.i
  %96 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %97, i8 %64)
  %cmp89.i = icmp eq i8 %97, %64
  br i1 %cmp89.i, label %for.cond386.preheader.i, label %if.then84.i.split_node.i_crit_edge

if.then84.i.split_node.i_crit_edge:               ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %split_node.i

for.cond386.preheader.i:                          ; preds = %if.then84.i
  %diff_objects.i = getelementptr inbounds %struct.assoc_array_ops, ptr %ops, i32 0, i32 3
  br label %for.body389.i

split_node.i:                                     ; preds = %if.then84.i.split_node.i_crit_edge, %if.end66.i.split_node.i_crit_edge, %for.end62.i.split_node.i_crit_edge, %for.inc60.thread.i.split_node.i_crit_edge
  %to.i56 = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 14, i32 0, i32 1
  %98 = ptrtoint ptr %to.i56 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %46, ptr %to.i56, align 4
  %99 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %26, align 4
  %101 = ptrtoint ptr %call7.i.i.i52 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %100, ptr %call7.i.i.i52, align 8
  %parent_slot.i = getelementptr inbounds %struct.assoc_array_node, ptr %26, i32 0, i32 1
  %102 = ptrtoint ptr %parent_slot.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %parent_slot.i, align 4
  %parent_slot99.i = getelementptr inbounds %struct.assoc_array_node, ptr %call7.i.i.i52, i32 0, i32 1
  %104 = ptrtoint ptr %parent_slot99.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %103, ptr %parent_slot99.i, align 4
  %105 = ptrtoint ptr %call7.i.i786.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %46, ptr %call7.i.i786.i, align 8
  %parent_slot102.i = getelementptr inbounds %struct.assoc_array_node, ptr %call7.i.i786.i, i32 0, i32 1
  %106 = ptrtoint ptr %parent_slot102.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 -1, ptr %parent_slot102.i, align 4
  br label %do_split_node.i

do_split_node.i:                                  ; preds = %for.end545.i, %split_node.i
  %nr_leaves_on_branch.i = getelementptr inbounds %struct.assoc_array_node, ptr %26, i32 0, i32 3
  %107 = ptrtoint ptr %nr_leaves_on_branch.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %nr_leaves_on_branch.i, align 4
  %nr_leaves_on_branch104.i = getelementptr inbounds %struct.assoc_array_node, ptr %call7.i.i.i52, i32 0, i32 3
  %109 = ptrtoint ptr %nr_leaves_on_branch104.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %nr_leaves_on_branch104.i, align 8
  %nr_leaves_on_branch105.i = getelementptr inbounds %struct.assoc_array_node, ptr %call7.i.i786.i, i32 0, i32 3
  %110 = ptrtoint ptr %nr_leaves_on_branch105.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %nr_leaves_on_branch105.i, align 8
  br label %for.body109.i

for.body109.i:                                    ; preds = %for.inc131.i.for.body109.i_crit_edge, %do_split_node.i
  %i.3837.i = phi i32 [ 0, %do_split_node.i ], [ %inc132.i, %for.inc131.i.for.body109.i_crit_edge ]
  %arrayidx111.i = getelementptr %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 16, i32 %i.3837.i
  %111 = ptrtoint ptr %arrayidx111.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx111.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %112)
  %cmp113.not.i = icmp eq i8 %112, -1
  br i1 %cmp113.not.i, label %for.body109.i.for.inc131.i_crit_edge, label %for.body109.i.for.cond116.i_crit_edge

for.body109.i.for.cond116.i_crit_edge:            ; preds = %for.body109.i
  br label %for.cond116.i

for.body109.i.for.inc131.i_crit_edge:             ; preds = %for.body109.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc131.i

for.cond116.i:                                    ; preds = %for.body119.i.for.cond116.i_crit_edge, %for.body109.i.for.cond116.i_crit_edge
  %j.1.in.i = phi i32 [ %j.1.i, %for.body119.i.for.cond116.i_crit_edge ], [ %i.3837.i, %for.body109.i.for.cond116.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %j.1.in.i)
  %exitcond855.not.i = icmp eq i32 %j.1.in.i, 16
  br i1 %exitcond855.not.i, label %for.cond116.i.for.inc131.i_crit_edge, label %for.body119.i

for.cond116.i.for.inc131.i_crit_edge:             ; preds = %for.cond116.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc131.i

for.body119.i:                                    ; preds = %for.cond116.i
  %j.1.i = add nuw nsw i32 %j.1.in.i, 1
  %arrayidx121.i = getelementptr %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 16, i32 %j.1.i
  %113 = ptrtoint ptr %arrayidx121.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx121.i, align 1
  %cmp123.i = icmp eq i8 %114, %112
  br i1 %cmp123.i, label %found_slot_for_multiple_occupancy.i, label %for.body119.i.for.cond116.i_crit_edge

for.body119.i.for.cond116.i_crit_edge:            ; preds = %for.body119.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond116.i

for.inc131.i:                                     ; preds = %for.cond116.i.for.inc131.i_crit_edge, %for.body109.i.for.inc131.i_crit_edge
  %inc132.i = add nuw nsw i32 %i.3837.i, 1
  %exitcond856.not.i = icmp eq i32 %inc132.i, 16
  br i1 %exitcond856.not.i, label %for.inc131.i.do.body140.i_crit_edge, label %for.inc131.i.for.body109.i_crit_edge

for.inc131.i.for.body109.i_crit_edge:             ; preds = %for.inc131.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body109.i

for.inc131.i.do.body140.i_crit_edge:              ; preds = %for.inc131.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body140.i

found_slot_for_multiple_occupancy.i:              ; preds = %for.body119.i
  %conv112.le.i = zext i8 %112 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %i.3837.i)
  %cmp135.i = icmp ugt i32 %i.3837.i, 15
  br i1 %cmp135.i, label %found_slot_for_multiple_occupancy.i.do.body140.i_crit_edge, label %do.body166.i, !prof !8

found_slot_for_multiple_occupancy.i.do.body140.i_crit_edge: ; preds = %found_slot_for_multiple_occupancy.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body140.i

do.body140.i:                                     ; preds = %found_slot_for_multiple_occupancy.i.do.body140.i_crit_edge, %for.inc131.i.do.body140.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 640, 0\0A.popsection", ""() #8, !srcloc !19
  unreachable

do.body166.i:                                     ; preds = %found_slot_for_multiple_occupancy.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %112)
  %cmp167.i = icmp ugt i8 %112, 15
  br i1 %cmp167.i, label %do.body176.i, label %do.end184.i, !prof !8

do.body176.i:                                     ; preds = %do.body166.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 642, 0\0A.popsection", ""() #8, !srcloc !20
  unreachable

do.end184.i:                                      ; preds = %do.body166.i
  %parent_slot186.i = getelementptr inbounds %struct.assoc_array_node, ptr %call7.i.i786.i, i32 0, i32 1
  %115 = ptrtoint ptr %parent_slot186.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %112, ptr %parent_slot186.i, align 4
  %arrayidx192.i = getelementptr %struct.assoc_array_node, ptr %26, i32 0, i32 2, i32 0
  %116 = ptrtoint ptr %arrayidx192.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx192.i, align 4
  %118 = ptrtoint ptr %117 to i32
  %and.i792.i = and i32 %118, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i792.i)
  %tobool.i793.not.i = icmp eq i32 %and.i792.i, 0
  %spec.select.i = select i1 %tobool.i793.not.i, ptr null, ptr %117
  %119 = getelementptr %struct.assoc_array_node, ptr %call7.i.i.i52, i32 0, i32 2, i32 0
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %spec.select.i, ptr %119, align 8
  %arrayidx192.i.1 = getelementptr %struct.assoc_array_node, ptr %26, i32 0, i32 2, i32 1
  %121 = ptrtoint ptr %arrayidx192.i.1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx192.i.1, align 4
  %123 = ptrtoint ptr %122 to i32
  %and.i792.i.1 = and i32 %123, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i792.i.1)
  %tobool.i793.not.i.1 = icmp eq i32 %and.i792.i.1, 0
  %spec.select.i.1 = select i1 %tobool.i793.not.i.1, ptr null, ptr %122
  %124 = getelementptr %struct.assoc_array_node, ptr %call7.i.i.i52, i32 0, i32 2, i32 1
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %spec.select.i.1, ptr %124, align 4
  %arrayidx192.i.2 = getelementptr %struct.assoc_array_node, ptr %26, i32 0, i32 2, i32 2
  %126 = ptrtoint ptr %arrayidx192.i.2 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx192.i.2, align 4
  %128 = ptrtoint ptr %127 to i32
  %and.i792.i.2 = and i32 %128, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i792.i.2)
  %tobool.i793.not.i.2 = icmp eq i32 %and.i792.i.2, 0
  %spec.select.i.2 = select i1 %tobool.i793.not.i.2, ptr null, ptr %127
  %129 = getelementptr %struct.assoc_array_node, ptr %call7.i.i.i52, i32 0, i32 2, i32 2
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %spec.select.i.2, ptr %129, align 8
  %arrayidx192.i.3 = getelementptr %struct.assoc_array_node, ptr %26, i32 0, i32 2, i32 3
  %131 = ptrtoint ptr %arrayidx192.i.3 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx192.i.3, align 4
  %133 = ptrtoint ptr %132 to i32
  %and.i792.i.3 = and i32 %133, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i792.i.3)
  %tobool.i793.not.i.3 = icmp eq i32 %and.i792.i.3, 0
  %spec.select.i.3 = select i1 %tobool.i793.not.i.3, ptr null, ptr %132
  %134 = getelementptr %struct.assoc_array_node, ptr %call7.i.i.i52, i32 0, i32 2, i32 3
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %spec.select.i.3, ptr %134, align 4
  %arrayidx192.i.4 = getelementptr %struct.assoc_array_node, ptr %26, i32 0, i32 2, i32 4
  %136 = ptrtoint ptr %arrayidx192.i.4 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %arrayidx192.i.4, align 4
  %138 = ptrtoint ptr %137 to i32
  %and.i792.i.4 = and i32 %138, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i792.i.4)
  %tobool.i793.not.i.4 = icmp eq i32 %and.i792.i.4, 0
  %spec.select.i.4 = select i1 %tobool.i793.not.i.4, ptr null, ptr %137
  %139 = getelementptr %struct.assoc_array_node, ptr %call7.i.i.i52, i32 0, i32 2, i32 4
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %spec.select.i.4, ptr %139, align 8
  %arrayidx192.i.5 = getelementptr %struct.assoc_array_node, ptr %26, i32 0, i32 2, i32 5
  %141 = ptrtoint ptr %arrayidx192.i.5 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %arrayidx192.i.5, align 4
  %143 = ptrtoint ptr %142 to i32
  %and.i792.i.5 = and i32 %143, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i792.i.5)
  %tobool.i793.not.i.5 = icmp eq i32 %and.i792.i.5, 0
  %spec.select.i.5 = select i1 %tobool.i793.not.i.5, ptr null, ptr %142
  %144 = getelementptr %struct.assoc_array_node, ptr %call7.i.i.i52, i32 0, i32 2, i32 5
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %spec.select.i.5, ptr %144, align 4
  %arrayidx192.i.6 = getelementptr %struct.assoc_array_node, ptr %26, i32 0, i32 2, i32 6
  %146 = ptrtoint ptr %arrayidx192.i.6 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %arrayidx192.i.6, align 4
  %148 = ptrtoint ptr %147 to i32
  %and.i792.i.6 = and i32 %148, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i792.i.6)
  %tobool.i793.not.i.6 = icmp eq i32 %and.i792.i.6, 0
  %spec.select.i.6 = select i1 %tobool.i793.not.i.6, ptr null, ptr %147
  %149 = getelementptr %struct.assoc_array_node, ptr %call7.i.i.i52, i32 0, i32 2, i32 6
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %spec.select.i.6, ptr %149, align 8
  %arrayidx192.i.7 = getelementptr %struct.assoc_array_node, ptr %26, i32 0, i32 2, i32 7
  %151 = ptrtoint ptr %arrayidx192.i.7 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %arrayidx192.i.7, align 4
  %153 = ptrtoint ptr %152 to i32
  %and.i792.i.7 = and i32 %153, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i792.i.7)
  %tobool.i793.not.i.7 = icmp eq i32 %and.i792.i.7, 0
  %spec.select.i.7 = select i1 %tobool.i793.not.i.7, ptr null, ptr %152
  %154 = getelementptr %struct.assoc_array_node, ptr %call7.i.i.i52, i32 0, i32 2, i32 7
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %spec.select.i.7, ptr %154, align 4
  %arrayidx192.i.8 = getelementptr %struct.assoc_array_node, ptr %26, i32 0, i32 2, i32 8
  %156 = ptrtoint ptr %arrayidx192.i.8 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %arrayidx192.i.8, align 4
  %158 = ptrtoint ptr %157 to i32
  %and.i792.i.8 = and i32 %158, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i792.i.8)
  %tobool.i793.not.i.8 = icmp eq i32 %and.i792.i.8, 0
  %spec.select.i.8 = select i1 %tobool.i793.not.i.8, ptr null, ptr %157
  %159 = getelementptr %struct.assoc_array_node, ptr %call7.i.i.i52, i32 0, i32 2, i32 8
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %spec.select.i.8, ptr %159, align 8
  %arrayidx192.i.9 = getelementptr %struct.assoc_array_node, ptr %26, i32 0, i32 2, i32 9
  %161 = ptrtoint ptr %arrayidx192.i.9 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %arrayidx192.i.9, align 4
  %163 = ptrtoint ptr %162 to i32
  %and.i792.i.9 = and i32 %163, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i792.i.9)
  %tobool.i793.not.i.9 = icmp eq i32 %and.i792.i.9, 0
  %spec.select.i.9 = select i1 %tobool.i793.not.i.9, ptr null, ptr %162
  %164 = getelementptr %struct.assoc_array_node, ptr %call7.i.i.i52, i32 0, i32 2, i32 9
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %spec.select.i.9, ptr %164, align 4
  %arrayidx192.i.10 = getelementptr %struct.assoc_array_node, ptr %26, i32 0, i32 2, i32 10
  %166 = ptrtoint ptr %arrayidx192.i.10 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %arrayidx192.i.10, align 4
  %168 = ptrtoint ptr %167 to i32
  %and.i792.i.10 = and i32 %168, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i792.i.10)
  %tobool.i793.not.i.10 = icmp eq i32 %and.i792.i.10, 0
  %spec.select.i.10 = select i1 %tobool.i793.not.i.10, ptr null, ptr %167
  %169 = getelementptr %struct.assoc_array_node, ptr %call7.i.i.i52, i32 0, i32 2, i32 10
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %spec.select.i.10, ptr %169, align 8
  %arrayidx192.i.11 = getelementptr %struct.assoc_array_node, ptr %26, i32 0, i32 2, i32 11
  %171 = ptrtoint ptr %arrayidx192.i.11 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %arrayidx192.i.11, align 4
  %173 = ptrtoint ptr %172 to i32
  %and.i792.i.11 = and i32 %173, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i792.i.11)
  %tobool.i793.not.i.11 = icmp eq i32 %and.i792.i.11, 0
  %spec.select.i.11 = select i1 %tobool.i793.not.i.11, ptr null, ptr %172
  %174 = getelementptr %struct.assoc_array_node, ptr %call7.i.i.i52, i32 0, i32 2, i32 11
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %spec.select.i.11, ptr %174, align 4
  %arrayidx192.i.12 = getelementptr %struct.assoc_array_node, ptr %26, i32 0, i32 2, i32 12
  %176 = ptrtoint ptr %arrayidx192.i.12 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %arrayidx192.i.12, align 4
  %178 = ptrtoint ptr %177 to i32
  %and.i792.i.12 = and i32 %178, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i792.i.12)
  %tobool.i793.not.i.12 = icmp eq i32 %and.i792.i.12, 0
  %spec.select.i.12 = select i1 %tobool.i793.not.i.12, ptr null, ptr %177
  %179 = getelementptr %struct.assoc_array_node, ptr %call7.i.i.i52, i32 0, i32 2, i32 12
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %spec.select.i.12, ptr %179, align 8
  %arrayidx192.i.13 = getelementptr %struct.assoc_array_node, ptr %26, i32 0, i32 2, i32 13
  %181 = ptrtoint ptr %arrayidx192.i.13 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %arrayidx192.i.13, align 4
  %183 = ptrtoint ptr %182 to i32
  %and.i792.i.13 = and i32 %183, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i792.i.13)
  %tobool.i793.not.i.13 = icmp eq i32 %and.i792.i.13, 0
  %spec.select.i.13 = select i1 %tobool.i793.not.i.13, ptr null, ptr %182
  %184 = getelementptr %struct.assoc_array_node, ptr %call7.i.i.i52, i32 0, i32 2, i32 13
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %spec.select.i.13, ptr %184, align 4
  %arrayidx192.i.14 = getelementptr %struct.assoc_array_node, ptr %26, i32 0, i32 2, i32 14
  %186 = ptrtoint ptr %arrayidx192.i.14 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %arrayidx192.i.14, align 4
  %188 = ptrtoint ptr %187 to i32
  %and.i792.i.14 = and i32 %188, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i792.i.14)
  %tobool.i793.not.i.14 = icmp eq i32 %and.i792.i.14, 0
  %spec.select.i.14 = select i1 %tobool.i793.not.i.14, ptr null, ptr %187
  %189 = getelementptr %struct.assoc_array_node, ptr %call7.i.i.i52, i32 0, i32 2, i32 14
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %spec.select.i.14, ptr %189, align 8
  %arrayidx192.i.15 = getelementptr %struct.assoc_array_node, ptr %26, i32 0, i32 2, i32 15
  %191 = ptrtoint ptr %arrayidx192.i.15 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %arrayidx192.i.15, align 4
  %193 = ptrtoint ptr %192 to i32
  %and.i792.i.15 = and i32 %193, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i792.i.15)
  %tobool.i793.not.i.15 = icmp eq i32 %and.i792.i.15, 0
  %spec.select.i.15 = select i1 %tobool.i793.not.i.15, ptr null, ptr %192
  %194 = getelementptr %struct.assoc_array_node, ptr %call7.i.i.i52, i32 0, i32 2, i32 15
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %spec.select.i.15, ptr %194, align 4
  %arrayidx207.i = getelementptr %struct.assoc_array_node, ptr %call7.i.i.i52, i32 0, i32 2, i32 %conv112.le.i
  %196 = ptrtoint ptr %arrayidx207.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %arrayidx207.i, align 4
  %cmp208.not.i = icmp eq ptr %197, null
  br i1 %cmp208.not.i, label %do.end225.i, label %do.body217.i, !prof !10

do.body217.i:                                     ; preds = %do.end184.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 652, 0\0A.popsection", ""() #8, !srcloc !21
  unreachable

do.end225.i:                                      ; preds = %do.end184.i
  %198 = ptrtoint ptr %arrayidx207.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %50, ptr %arrayidx207.i, align 4
  br label %for.body232.i

for.body232.i:                                    ; preds = %for.inc265.i.for.body232.i_crit_edge, %do.end225.i
  %next_slot.0844.i = phi i32 [ 0, %do.end225.i ], [ %next_slot.1.i, %for.inc265.i.for.body232.i_crit_edge ]
  %i.5842.i = phi i32 [ 0, %do.end225.i ], [ %inc266.i, %for.inc265.i.for.body232.i_crit_edge ]
  %free_slot.2841.i = phi i32 [ -1, %do.end225.i ], [ %free_slot.4.i, %for.inc265.i.for.body232.i_crit_edge ]
  %arrayidx234.i = getelementptr %struct.assoc_array_node, ptr %26, i32 0, i32 2, i32 %i.5842.i
  %199 = ptrtoint ptr %arrayidx234.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %arrayidx234.i, align 4
  %201 = ptrtoint ptr %200 to i32
  %and.i795.i = and i32 %201, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i795.i)
  %tobool.i796.not.i = icmp eq i32 %and.i795.i, 0
  br i1 %tobool.i796.not.i, label %if.end237.i, label %for.body232.i.for.inc265.i_crit_edge

for.body232.i.for.inc265.i_crit_edge:             ; preds = %for.body232.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc265.i

if.end237.i:                                      ; preds = %for.body232.i
  %arrayidx239.i = getelementptr %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 16, i32 %i.5842.i
  %202 = ptrtoint ptr %arrayidx239.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %arrayidx239.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %112, i8 %203)
  %cmp241.i = icmp eq i8 %112, %203
  br i1 %cmp241.i, label %if.then243.i, label %if.end237.i.do.body252.i_crit_edge

if.end237.i.do.body252.i_crit_edge:               ; preds = %if.end237.i
  br label %do.body252.i

if.then243.i:                                     ; preds = %if.end237.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc247.i = add i32 %next_slot.0844.i, 1
  %arrayidx248.i = getelementptr %struct.assoc_array_node, ptr %call7.i.i786.i, i32 0, i32 2, i32 %next_slot.0844.i
  %204 = ptrtoint ptr %arrayidx248.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %200, ptr %arrayidx248.i, align 4
  %205 = ptrtoint ptr %nr_leaves_on_branch105.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %nr_leaves_on_branch105.i, align 8
  %inc250.i = add i32 %206, 1
  store i32 %inc250.i, ptr %nr_leaves_on_branch105.i, align 8
  br label %for.inc265.i

do.body252.i:                                     ; preds = %do.body252.i.do.body252.i_crit_edge, %if.end237.i.do.body252.i_crit_edge
  %free_slot.3.i = phi i32 [ %inc253.i, %do.body252.i.do.body252.i_crit_edge ], [ %free_slot.2841.i, %if.end237.i.do.body252.i_crit_edge ]
  %inc253.i = add i32 %free_slot.3.i, 1
  %arrayidx256.i = getelementptr %struct.assoc_array_node, ptr %call7.i.i.i52, i32 0, i32 2, i32 %inc253.i
  %207 = ptrtoint ptr %arrayidx256.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %arrayidx256.i, align 4
  %cmp257.not.i = icmp eq ptr %208, null
  br i1 %cmp257.not.i, label %do.end259.i, label %do.body252.i.do.body252.i_crit_edge

do.body252.i.do.body252.i_crit_edge:              ; preds = %do.body252.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body252.i

do.end259.i:                                      ; preds = %do.body252.i
  call void @__sanitizer_cov_trace_pc() #7
  %209 = ptrtoint ptr %arrayidx256.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr %200, ptr %arrayidx256.i, align 4
  br label %for.inc265.i

for.inc265.i:                                     ; preds = %do.end259.i, %if.then243.i, %for.body232.i.for.inc265.i_crit_edge
  %free_slot.4.i = phi i32 [ %free_slot.2841.i, %for.body232.i.for.inc265.i_crit_edge ], [ %free_slot.2841.i, %if.then243.i ], [ %inc253.i, %do.end259.i ]
  %next_slot.1.i = phi i32 [ %next_slot.0844.i, %for.body232.i.for.inc265.i_crit_edge ], [ %inc247.i, %if.then243.i ], [ %next_slot.0844.i, %do.end259.i ]
  %inc266.i = add nuw nsw i32 %i.5842.i, 1
  %exitcond858.not.i = icmp eq i32 %inc266.i, 16
  br i1 %exitcond858.not.i, label %for.end267.i, label %for.inc265.i.for.body232.i_crit_edge

for.inc265.i.for.body232.i_crit_edge:             ; preds = %for.inc265.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body232.i

for.end267.i:                                     ; preds = %for.inc265.i
  %210 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %112, i8 %211)
  %cmp272.not.i = icmp eq i8 %112, %211
  br i1 %cmp272.not.i, label %if.else287.i, label %for.end267.i.do.body275.i_crit_edge

for.end267.i.do.body275.i_crit_edge:              ; preds = %for.end267.i
  br label %do.body275.i

do.body275.i:                                     ; preds = %do.body275.i.do.body275.i_crit_edge, %for.end267.i.do.body275.i_crit_edge
  %free_slot.5.i = phi i32 [ %inc276.i, %do.body275.i.do.body275.i_crit_edge ], [ %free_slot.4.i, %for.end267.i.do.body275.i_crit_edge ]
  %inc276.i = add i32 %free_slot.5.i, 1
  %arrayidx279.i = getelementptr %struct.assoc_array_node, ptr %call7.i.i.i52, i32 0, i32 2, i32 %inc276.i
  %212 = ptrtoint ptr %arrayidx279.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %arrayidx279.i, align 4
  %cmp280.not.i = icmp eq ptr %213, null
  br i1 %cmp280.not.i, label %do.body275.i.do.body294.i_crit_edge, label %do.body275.i.do.body275.i_crit_edge

do.body275.i.do.body275.i_crit_edge:              ; preds = %do.body275.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body275.i

do.body275.i.do.body294.i_crit_edge:              ; preds = %do.body275.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body294.i

if.else287.i:                                     ; preds = %for.end267.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc289.i = add i32 %next_slot.1.i, 1
  %arrayidx290.i = getelementptr %struct.assoc_array_node, ptr %call7.i.i786.i, i32 0, i32 2, i32 %next_slot.1.i
  br label %do.body294.i

do.body294.i:                                     ; preds = %if.else287.i, %do.body275.i.do.body294.i_crit_edge
  %arrayidx279.lcssa.sink.i = phi ptr [ %arrayidx290.i, %if.else287.i ], [ %arrayidx279.i, %do.body275.i.do.body294.i_crit_edge ]
  %call7.i.i.sink.i = phi ptr [ %call7.i.i786.i, %if.else287.i ], [ %call7.i.i.i52, %do.body275.i.do.body294.i_crit_edge ]
  %next_slot.2.i = phi i32 [ %inc289.i, %if.else287.i ], [ %next_slot.1.i, %do.body275.i.do.body294.i_crit_edge ]
  %leaf_p285.i = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 5
  %214 = ptrtoint ptr %leaf_p285.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr %arrayidx279.lcssa.sink.i, ptr %leaf_p285.i, align 8
  %adjust_count_on286.i = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 12
  %215 = ptrtoint ptr %adjust_count_on286.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr %call7.i.i.sink.i, ptr %adjust_count_on286.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %next_slot.2.i)
  %cmp295.i = icmp slt i32 %next_slot.2.i, 2
  br i1 %cmp295.i, label %do.body304.i, label %do.end312.i, !prof !8

do.body304.i:                                     ; preds = %do.body294.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 685, 0\0A.popsection", ""() #8, !srcloc !22
  unreachable

do.end312.i:                                      ; preds = %do.body294.i
  %set_backpointers_to.i = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 11
  %216 = ptrtoint ptr %set_backpointers_to.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %46, ptr %set_backpointers_to.i, align 4
  br label %for.body317.i

for.body317.i:                                    ; preds = %for.inc356.i.for.body317.i_crit_edge, %do.end312.i
  %i.6845.i = phi i32 [ 0, %do.end312.i ], [ %inc357.i, %for.inc356.i.for.body317.i_crit_edge ]
  %arrayidx319.i = getelementptr %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 16, i32 %i.6845.i
  %217 = ptrtoint ptr %arrayidx319.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %arrayidx319.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %218)
  %cmp321.i = icmp eq i8 %218, -1
  br i1 %cmp321.i, label %if.then323.i, label %for.body317.i.for.inc356.i_crit_edge

for.body317.i.for.inc356.i_crit_edge:             ; preds = %for.body317.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc356.i

if.then323.i:                                     ; preds = %for.body317.i
  %arrayidx325.i = getelementptr %struct.assoc_array_node, ptr %26, i32 0, i32 2, i32 %i.6845.i
  %219 = ptrtoint ptr %arrayidx325.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %arrayidx325.i, align 4
  %221 = ptrtoint ptr %220 to i32
  %and.i.i798.i = and i32 %221, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i798.i)
  %tobool.i.not.i799.i = icmp eq i32 %and.i.i798.i, 0
  br i1 %tobool.i.not.i799.i, label %do.body335.i, label %do.end343.i, !prof !8

do.body335.i:                                     ; preds = %if.then323.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 691, 0\0A.popsection", ""() #8, !srcloc !23
  unreachable

do.end343.i:                                      ; preds = %if.then323.i
  call void @__sanitizer_cov_trace_pc() #7
  %and.i.i802.i = and i32 %221, -4
  %222 = inttoptr i32 %and.i.i802.i to ptr
  %arrayidx348.i = getelementptr %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 10, i32 %i.6845.i
  %223 = ptrtoint ptr %arrayidx348.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr %222, ptr %arrayidx348.i, align 4
  br label %for.inc356.i

for.inc356.i:                                     ; preds = %do.end343.i, %for.body317.i.for.inc356.i_crit_edge
  %inc357.i = add nuw nsw i32 %i.6845.i, 1
  %exitcond859.not.i = icmp eq i32 %inc357.i, 16
  br i1 %exitcond859.not.i, label %for.end358.i, label %for.inc356.i.for.body317.i_crit_edge

for.inc356.i.for.body317.i_crit_edge:             ; preds = %for.inc356.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body317.i

for.end358.i:                                     ; preds = %for.inc356.i
  %224 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %26, align 4
  %tobool360.not.i = icmp eq ptr %225, null
  br i1 %tobool360.not.i, label %if.then361.i, label %if.else365.i

if.then361.i:                                     ; preds = %for.end358.i
  call void @__sanitizer_cov_trace_pc() #7
  %226 = ptrtoint ptr %array13 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %array13, align 8
  br label %if.end381.i

if.else365.i:                                     ; preds = %for.end358.i
  %228 = ptrtoint ptr %225 to i32
  %and.i.i804.i = and i32 %228, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i804.i)
  %tobool.i.not.i805.i = icmp eq i32 %and.i.i804.i, 0
  %and.i.i806.i = and i32 %228, -4
  %229 = inttoptr i32 %and.i.i806.i to ptr
  br i1 %tobool.i.not.i805.i, label %if.then367.i, label %if.else375.i

if.then367.i:                                     ; preds = %if.else365.i
  call void @__sanitizer_cov_trace_pc() #7
  %parent_slot370.i = getelementptr inbounds %struct.assoc_array_node, ptr %26, i32 0, i32 1
  %230 = ptrtoint ptr %parent_slot370.i to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %parent_slot370.i, align 4
  %idxprom.i = zext i8 %231 to i32
  %arrayidx371.i = getelementptr %struct.assoc_array_node, ptr %229, i32 0, i32 2, i32 %idxprom.i
  br label %if.end381.i

if.else375.i:                                     ; preds = %if.else365.i
  call void @__sanitizer_cov_trace_pc() #7
  %next_node.i = getelementptr inbounds %struct.assoc_array_shortcut, ptr %229, i32 0, i32 3
  br label %if.end381.i

if.end381.i:                                      ; preds = %if.else375.i, %if.then367.i, %if.then361.i
  %arrayidx371.sink.i = phi ptr [ %arrayidx371.i, %if.then367.i ], [ %next_node.i, %if.else375.i ], [ %227, %if.then361.i ]
  %set372.i = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 14
  %232 = ptrtoint ptr %set372.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr %arrayidx371.sink.i, ptr %set372.i, align 8
  %233 = ptrtoint ptr %26 to i32
  %or.i.i808.i = or i32 %233, 1
  %234 = inttoptr i32 %or.i.i808.i to ptr
  %excised_meta.i = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 8
  %235 = ptrtoint ptr %excised_meta.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr %234, ptr %excised_meta.i, align 4
  br label %cleanup

for.body389.i:                                    ; preds = %if.end416.i.for.body389.i_crit_edge, %for.cond386.preheader.i
  %diff.0832.i = phi i32 [ 2147483647, %for.cond386.preheader.i ], [ %diff.1.i, %if.end416.i.for.body389.i_crit_edge ]
  %i.7831.i = phi i32 [ 0, %for.cond386.preheader.i ], [ %inc418.i, %if.end416.i.for.body389.i_crit_edge ]
  %236 = ptrtoint ptr %diff_objects.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %diff_objects.i, align 4
  %arrayidx391.i = getelementptr %struct.assoc_array_node, ptr %26, i32 0, i32 2, i32 %i.7831.i
  %238 = ptrtoint ptr %arrayidx391.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %arrayidx391.i, align 4
  %240 = ptrtoint ptr %239 to i32
  %and.i809.i = and i32 %240, -2
  %241 = inttoptr i32 %and.i809.i to ptr
  %call393.i = tail call i32 %237(ptr noundef %241, ptr noundef %index_key) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call393.i, i32 %diff.0832.i)
  %cmp394.i = icmp slt i32 %call393.i, %diff.0832.i
  br i1 %cmp394.i, label %do.body397.i, label %for.body389.i.if.end416.i_crit_edge

for.body389.i.if.end416.i_crit_edge:              ; preds = %for.body389.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end416.i

do.body397.i:                                     ; preds = %for.body389.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call393.i)
  %cmp398.i = icmp slt i32 %call393.i, 0
  br i1 %cmp398.i, label %do.body407.i, label %do.body397.i.if.end416.i_crit_edge, !prof !8

do.body397.i.if.end416.i_crit_edge:               ; preds = %do.body397.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end416.i

do.body407.i:                                     ; preds = %do.body397.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 734, 0\0A.popsection", ""() #8, !srcloc !24
  unreachable

if.end416.i:                                      ; preds = %do.body397.i.if.end416.i_crit_edge, %for.body389.i.if.end416.i_crit_edge
  %diff.1.i = phi i32 [ %diff.0832.i, %for.body389.i.if.end416.i_crit_edge ], [ %call393.i, %do.body397.i.if.end416.i_crit_edge ]
  %inc418.i = add nuw nsw i32 %i.7831.i, 1
  %exitcond852.not.i = icmp eq i32 %inc418.i, 16
  br i1 %exitcond852.not.i, label %do.body420.i, label %if.end416.i.for.body389.i_crit_edge

if.end416.i.for.body389.i_crit_edge:              ; preds = %if.end416.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body389.i

do.body420.i:                                     ; preds = %if.end416.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %diff.1.i)
  %cmp421.i = icmp eq i32 %diff.1.i, 2147483647
  br i1 %cmp421.i, label %do.body430.i, label %do.body439.i, !prof !8

do.body430.i:                                     ; preds = %do.body420.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 738, 0\0A.popsection", ""() #8, !srcloc !25
  unreachable

do.body439.i:                                     ; preds = %do.body420.i
  %add440.i = add i32 %28, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %diff.1.i, i32 %add440.i)
  %cmp441.i = icmp slt i32 %diff.1.i, %add440.i
  br i1 %cmp441.i, label %do.body450.i, label %do.end458.i, !prof !8

do.body450.i:                                     ; preds = %do.body439.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 739, 0\0A.popsection", ""() #8, !srcloc !26
  unreachable

do.end458.i:                                      ; preds = %do.body439.i
  %sub.i = add i32 %diff.1.i, -1
  %or459.i = or i32 %sub.i, 31
  %add460.i = add i32 %or459.i, 1
  %shr461.i = lshr exact i32 %add460.i, 5
  %242 = lshr exact i32 %add460.i, 3
  %spec.select.i820.i = add nuw nsw i32 %242, 16
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i820.i, i32 noundef 3520) #10
  %tobool464.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool464.not.i, label %do.end458.i.enomem_crit_edge, label %if.end466.i

do.end458.i.enomem_crit_edge:                     ; preds = %do.end458.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %enomem

if.end466.i:                                      ; preds = %do.end458.i
  %243 = ptrtoint ptr %call9.i.i.i to i32
  %or.i.i811.i = or i32 %243, 3
  %244 = inttoptr i32 %or.i.i811.i to ptr
  %arrayidx469.i = getelementptr %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 7, i32 2
  %245 = ptrtoint ptr %arrayidx469.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr %244, ptr %arrayidx469.i, align 8
  %to473.i = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 14, i32 0, i32 1
  %246 = ptrtoint ptr %to473.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr %244, ptr %to473.i, align 4
  %247 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %26, align 4
  %249 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr %248, ptr %call9.i.i.i, align 128
  %parent_slot476.i = getelementptr inbounds %struct.assoc_array_node, ptr %26, i32 0, i32 1
  %250 = ptrtoint ptr %parent_slot476.i to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %parent_slot476.i, align 4
  %conv477.i = zext i8 %251 to i32
  %parent_slot478.i = getelementptr inbounds %struct.assoc_array_shortcut, ptr %call9.i.i.i, i32 0, i32 1
  %252 = ptrtoint ptr %parent_slot478.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %conv477.i, ptr %parent_slot478.i, align 4
  %next_node480.i = getelementptr inbounds %struct.assoc_array_shortcut, ptr %call9.i.i.i, i32 0, i32 3
  %253 = ptrtoint ptr %next_node480.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr %46, ptr %next_node480.i, align 4
  %254 = ptrtoint ptr %call7.i.i.i52 to i32
  call void @__asan_store4_noabort(i32 %254)
  store ptr %244, ptr %call7.i.i.i52, align 8
  %parent_slot483.i = getelementptr inbounds %struct.assoc_array_node, ptr %call7.i.i.i52, i32 0, i32 1
  %255 = ptrtoint ptr %parent_slot483.i to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 0, ptr %parent_slot483.i, align 4
  %256 = ptrtoint ptr %call7.i.i786.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr %46, ptr %call7.i.i786.i, align 8
  %parent_slot486.i = getelementptr inbounds %struct.assoc_array_node, ptr %call7.i.i786.i, i32 0, i32 1
  %257 = ptrtoint ptr %parent_slot486.i to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 -1, ptr %parent_slot486.i, align 4
  %and487.i = and i32 %diff.1.i, -4
  %skip_to_level.i = getelementptr inbounds %struct.assoc_array_shortcut, ptr %call9.i.i.i, i32 0, i32 2
  %258 = ptrtoint ptr %skip_to_level.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %and487.i, ptr %skip_to_level.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and487.i)
  %cmp490.i = icmp slt i32 %and487.i, 1
  br i1 %cmp490.i, label %do.body499.i, label %for.cond508.preheader.i, !prof !8

for.cond508.preheader.i:                          ; preds = %if.end466.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add460.i)
  %cmp509833.not.i = icmp eq i32 %add460.i, 0
  br i1 %cmp509833.not.i, label %for.cond508.preheader.i.for.end517.i_crit_edge, label %for.body511.preheader.i

for.cond508.preheader.i.for.end517.i_crit_edge:   ; preds = %for.cond508.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end517.i

for.body511.preheader.i:                          ; preds = %for.cond508.preheader.i
  %umax.i = tail call i32 @llvm.umax.i32(i32 %shr461.i, i32 1) #8
  br label %for.body511.i

do.body499.i:                                     ; preds = %if.end466.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 760, 0\0A.popsection", ""() #8, !srcloc !27
  unreachable

for.body511.i:                                    ; preds = %for.body511.i.for.body511.i_crit_edge, %for.body511.preheader.i
  %i.8834.i = phi i32 [ %inc516.i, %for.body511.i.for.body511.i_crit_edge ], [ 0, %for.body511.preheader.i ]
  %259 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %ops, align 4
  %mul.i = shl i32 %i.8834.i, 5
  %call512.i = tail call i32 %260(ptr noundef %index_key, i32 noundef %mul.i) #8
  %arrayidx514.i = getelementptr %struct.assoc_array_shortcut, ptr %call9.i.i.i, i32 0, i32 4, i32 %i.8834.i
  %261 = ptrtoint ptr %arrayidx514.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 %call512.i, ptr %arrayidx514.i, align 4
  %inc516.i = add nuw nsw i32 %i.8834.i, 1
  %exitcond853.not.i = icmp eq i32 %inc516.i, %umax.i
  br i1 %exitcond853.not.i, label %for.body511.i.for.end517.i_crit_edge, label %for.body511.i.for.body511.i_crit_edge

for.body511.i.for.body511.i_crit_edge:            ; preds = %for.body511.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body511.i

for.body511.i.for.end517.i_crit_edge:             ; preds = %for.body511.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end517.i

for.end517.i:                                     ; preds = %for.body511.i.for.end517.i_crit_edge, %for.cond508.preheader.i.for.end517.i_crit_edge
  %and518.i = and i32 %diff.1.i, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and518.i)
  %tobool519.not.i = icmp eq i32 %and518.i, 0
  br i1 %tobool519.not.i, label %for.end517.i.for.body531.i.preheader_crit_edge, label %if.then520.i

for.end517.i.for.body531.i.preheader_crit_edge:   ; preds = %for.end517.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body531.i.preheader

if.then520.i:                                     ; preds = %for.end517.i
  call void @__sanitizer_cov_trace_pc() #7
  %shl.i = shl nsw i32 -1, %and518.i
  %neg.i = xor i32 %shl.i, -1
  %sub524.i = add nsw i32 %shr461.i, -1
  %arrayidx525.i = getelementptr %struct.assoc_array_shortcut, ptr %call9.i.i.i, i32 0, i32 4, i32 %sub524.i
  %262 = ptrtoint ptr %arrayidx525.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %arrayidx525.i, align 4
  %and526.i = and i32 %263, %neg.i
  store i32 %and526.i, ptr %arrayidx525.i, align 4
  br label %for.body531.i.preheader

for.body531.i.preheader:                          ; preds = %if.then520.i, %for.end517.i.for.body531.i.preheader_crit_edge
  br label %for.body531.i

for.body531.i:                                    ; preds = %for.body531.i.for.body531.i_crit_edge, %for.body531.i.preheader
  %i.9835.i = phi i32 [ %inc544.i, %for.body531.i.for.body531.i_crit_edge ], [ 0, %for.body531.i.preheader ]
  %arrayidx533.i = getelementptr %struct.assoc_array_node, ptr %26, i32 0, i32 2, i32 %i.9835.i
  %264 = ptrtoint ptr %arrayidx533.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %arrayidx533.i, align 4
  %266 = ptrtoint ptr %get_object_key_chunk.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %get_object_key_chunk.i, align 4
  %268 = ptrtoint ptr %265 to i32
  %and.i816.i = and i32 %268, -2
  %269 = inttoptr i32 %and.i816.i to ptr
  %call536.i = tail call i32 %267(ptr noundef %269, i32 noundef %and487.i) #8
  %shr538.i = lshr i32 %call536.i, %and518.i
  %270 = trunc i32 %shr538.i to i8
  %conv540.i = and i8 %270, 15
  %arrayidx542.i = getelementptr %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 16, i32 %i.9835.i
  %271 = ptrtoint ptr %arrayidx542.i to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 %conv540.i, ptr %arrayidx542.i, align 1
  %inc544.i = add nuw nsw i32 %i.9835.i, 1
  %exitcond854.not.i = icmp eq i32 %inc544.i, 16
  br i1 %exitcond854.not.i, label %for.end545.i, label %for.body531.i.for.body531.i_crit_edge

for.body531.i.for.body531.i_crit_edge:            ; preds = %for.body531.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body531.i

for.end545.i:                                     ; preds = %for.body531.i
  call void @__sanitizer_cov_trace_pc() #7
  %272 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %ops, align 4
  %call547.i = tail call i32 %273(ptr noundef %index_key, i32 noundef %and487.i) #8
  %shr549.i = lshr i32 %call547.i, %and518.i
  %274 = trunc i32 %shr549.i to i8
  %conv551.i = and i8 %274, 15
  %275 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %275)
  store i8 %conv551.i, ptr %arrayidx.i, align 8
  br label %do_split_node.i

sw.bb24:                                          ; preds = %if.end12
  %276 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %2, align 4
  %278 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %3, align 4
  %280 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %4, align 4
  %282 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %5, align 4
  %284 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %6, align 4
  %286 = tail call i32 @llvm.cttz.i32(i32 %285, i1 false) #8, !range !28
  %and.i59 = and i32 %286, 60
  %and10.i = and i32 %281, -32
  %add.i = add i32 %and.i59, %and10.i
  %287 = ptrtoint ptr %277 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %277, align 4
  %tobool.not.i60 = icmp eq ptr %288, null
  br i1 %tobool.not.i60, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #7
  %289 = ptrtoint ptr %array13 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %array13, align 8
  br label %if.end25.i

if.else.i:                                        ; preds = %sw.bb24
  %291 = ptrtoint ptr %288 to i32
  %and.i.i.i62 = and i32 %291, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i62)
  %tobool.i.not.i.i63 = icmp eq i32 %and.i.i.i62, 0
  br i1 %tobool.i.not.i.i63, label %if.then14.i, label %do.body.i

if.then14.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %and.i.i1.i = and i32 %291, -4
  %292 = inttoptr i32 %and.i.i1.i to ptr
  %parent_slot.i64 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %277, i32 0, i32 1
  %293 = ptrtoint ptr %parent_slot.i64 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %parent_slot.i64, align 4
  %arrayidx17.i = getelementptr %struct.assoc_array_node, ptr %292, i32 0, i32 2, i32 %294
  br label %if.end25.i

do.body.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 829, 0\0A.popsection", ""() #8, !srcloc !29
  unreachable

if.end25.i:                                       ; preds = %if.then14.i, %if.then.i
  %arrayidx17.sink.i = phi ptr [ %arrayidx17.i, %if.then14.i ], [ %290, %if.then.i ]
  %set18.i = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 14
  %295 = ptrtoint ptr %set18.i to i32
  call void @__asan_store4_noabort(i32 %295)
  store ptr %arrayidx17.sink.i, ptr %set18.i, align 8
  %296 = ptrtoint ptr %277 to i32
  %or.i.i.i65 = or i32 %296, 3
  %297 = inttoptr i32 %or.i.i.i65 to ptr
  %excised_meta.i66 = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 8
  %298 = ptrtoint ptr %excised_meta.i66 to i32
  call void @__asan_store4_noabort(i32 %298)
  store ptr %297, ptr %excised_meta.i66, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %299 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i67 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %299, i32 noundef 3520, i32 noundef 76) #9
  %tobool29.not.i = icmp eq ptr %call7.i.i.i67, null
  br i1 %tobool29.not.i, label %if.end25.i.enomem_crit_edge, label %if.end31.i

if.end25.i.enomem_crit_edge:                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %enomem

if.end31.i:                                       ; preds = %if.end25.i
  %300 = ptrtoint ptr %call7.i.i.i67 to i32
  %or.i.i2.i = or i32 %300, 1
  %301 = inttoptr i32 %or.i.i2.i to ptr
  %new_meta.i68 = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 7
  %302 = ptrtoint ptr %new_meta.i68 to i32
  call void @__asan_store4_noabort(i32 %302)
  store ptr %301, ptr %new_meta.i68, align 8
  %adjust_count_on.i69 = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 12
  %303 = ptrtoint ptr %adjust_count_on.i69 to i32
  call void @__asan_store4_noabort(i32 %303)
  store ptr %call7.i.i.i67, ptr %adjust_count_on.i69, align 8
  %add34.i = add i32 %279, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %add34.i)
  %cmp.i = icmp sgt i32 %add.i, %add34.i
  br i1 %cmp.i, label %if.then35.i, label %if.else66.i

if.then35.i:                                      ; preds = %if.end31.i
  %sub.i70 = add nsw i32 %add.i, -1
  %or.i = or i32 %sub.i70, 31
  %add37.i = add i32 %or.i, 1
  %304 = lshr exact i32 %add37.i, 3
  %spec.select.i46.i = add nuw nsw i32 %304, 16
  %call9.i.i.i94 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i46.i, i32 noundef 3520) #10
  %tobool40.not.i = icmp eq ptr %call9.i.i.i94, null
  br i1 %tobool40.not.i, label %if.then35.i.enomem_crit_edge, label %if.end42.i

if.then35.i.enomem_crit_edge:                     ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %enomem

if.end42.i:                                       ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #7
  %shr.i71 = lshr exact i32 %add37.i, 5
  %305 = ptrtoint ptr %call9.i.i.i94 to i32
  %or.i.i4.i = or i32 %305, 3
  %306 = inttoptr i32 %or.i.i4.i to ptr
  %arrayidx45.i = getelementptr %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 7, i32 1
  %307 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store4_noabort(i32 %307)
  store ptr %306, ptr %arrayidx45.i, align 4
  %to.i98 = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 14, i32 0, i32 1
  %308 = ptrtoint ptr %to.i98 to i32
  call void @__asan_store4_noabort(i32 %308)
  store ptr %306, ptr %to.i98, align 4
  %309 = ptrtoint ptr %277 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %277, align 4
  %311 = ptrtoint ptr %call9.i.i.i94 to i32
  call void @__asan_store4_noabort(i32 %311)
  store ptr %310, ptr %call9.i.i.i94, align 128
  %parent_slot51.i = getelementptr inbounds %struct.assoc_array_shortcut, ptr %277, i32 0, i32 1
  %312 = ptrtoint ptr %parent_slot51.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %parent_slot51.i, align 4
  %parent_slot52.i = getelementptr inbounds %struct.assoc_array_shortcut, ptr %call9.i.i.i94, i32 0, i32 1
  %314 = ptrtoint ptr %parent_slot52.i to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 %313, ptr %parent_slot52.i, align 4
  %next_node.i99 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %call9.i.i.i94, i32 0, i32 3
  %315 = ptrtoint ptr %next_node.i99 to i32
  call void @__asan_store4_noabort(i32 %315)
  store ptr %301, ptr %next_node.i99, align 4
  %skip_to_level.i100 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %call9.i.i.i94, i32 0, i32 2
  %316 = ptrtoint ptr %skip_to_level.i100 to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 %add.i, ptr %skip_to_level.i100, align 8
  %317 = ptrtoint ptr %call7.i.i.i67 to i32
  call void @__asan_store4_noabort(i32 %317)
  store ptr %306, ptr %call7.i.i.i67, align 8
  %parent_slot56.i = getelementptr inbounds %struct.assoc_array_node, ptr %call7.i.i.i67, i32 0, i32 1
  %318 = ptrtoint ptr %parent_slot56.i to i32
  call void @__asan_store1_noabort(i32 %318)
  store i8 0, ptr %parent_slot56.i, align 4
  %index_key.i = getelementptr inbounds %struct.assoc_array_shortcut, ptr %call9.i.i.i94, i32 0, i32 4
  %index_key57.i = getelementptr inbounds %struct.assoc_array_shortcut, ptr %277, i32 0, i32 4
  %319 = call ptr @memcpy(ptr %index_key.i, ptr %index_key57.i, i32 %304)
  %and60.i = and i32 %add.i, 28
  %shl.i101 = shl nsw i32 -1, %and60.i
  %neg.i102 = xor i32 %shl.i101, -1
  %sub63.i = add nsw i32 %shr.i71, -1
  %arrayidx64.i = getelementptr %struct.assoc_array_shortcut, ptr %call9.i.i.i94, i32 0, i32 4, i32 %sub63.i
  %320 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %arrayidx64.i, align 4
  %and65.i = and i32 %321, %neg.i102
  store i32 %and65.i, ptr %arrayidx64.i, align 4
  br label %if.end76.i

if.else66.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #7
  %to71.i = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 14, i32 0, i32 1
  %322 = ptrtoint ptr %to71.i to i32
  call void @__asan_store4_noabort(i32 %322)
  store ptr %301, ptr %to71.i, align 4
  %323 = ptrtoint ptr %277 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %277, align 4
  %325 = ptrtoint ptr %call7.i.i.i67 to i32
  call void @__asan_store4_noabort(i32 %325)
  store ptr %324, ptr %call7.i.i.i67, align 8
  %parent_slot74.i = getelementptr inbounds %struct.assoc_array_shortcut, ptr %277, i32 0, i32 1
  %326 = ptrtoint ptr %parent_slot74.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %parent_slot74.i, align 4
  %conv.i103 = trunc i32 %327 to i8
  %parent_slot75.i = getelementptr inbounds %struct.assoc_array_node, ptr %call7.i.i.i67, i32 0, i32 1
  %328 = ptrtoint ptr %parent_slot75.i to i32
  call void @__asan_store1_noabort(i32 %328)
  store i8 %conv.i103, ptr %parent_slot75.i, align 4
  %.pre.i = and i32 %add.i, 28
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.else66.i, %if.end42.i
  %and80.pre-phi.i = phi i32 [ %.pre.i, %if.else66.i ], [ %and60.i, %if.end42.i ]
  %next_node77.i = getelementptr inbounds %struct.assoc_array_shortcut, ptr %277, i32 0, i32 3
  %329 = ptrtoint ptr %next_node77.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %next_node77.i, align 4
  %331 = ptrtoint ptr %330 to i32
  %and.i.i10.i = and i32 %331, -4
  %332 = inttoptr i32 %and.i.i10.i to ptr
  %nr_leaves_on_branch.i104 = getelementptr inbounds %struct.assoc_array_node, ptr %332, i32 0, i32 3
  %333 = ptrtoint ptr %nr_leaves_on_branch.i104 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %nr_leaves_on_branch.i104, align 4
  %nr_leaves_on_branch79.i = getelementptr inbounds %struct.assoc_array_node, ptr %call7.i.i.i67, i32 0, i32 3
  %335 = ptrtoint ptr %nr_leaves_on_branch79.i to i32
  call void @__asan_store4_noabort(i32 %335)
  store i32 %334, ptr %nr_leaves_on_branch79.i, align 8
  %shr81.i = lshr i32 %283, %and80.pre-phi.i
  %and82.i = and i32 %shr81.i, 15
  %add84.i = add i32 %add.i, 4
  %skip_to_level85.i = getelementptr inbounds %struct.assoc_array_shortcut, ptr %277, i32 0, i32 2
  %336 = ptrtoint ptr %skip_to_level85.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %skip_to_level85.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add84.i, i32 %337)
  %cmp86.i = icmp slt i32 %add84.i, %337
  br i1 %cmp86.i, label %if.then88.i, label %if.else126.i

if.then88.i:                                      ; preds = %if.end76.i
  %sub91.i = add nsw i32 %337, -1
  %or92.i = or i32 %sub91.i, 31
  %add93.i = add i32 %or92.i, 1
  %shr94.i = lshr exact i32 %add93.i, 3
  %spec.select.i1147.i = add nuw nsw i32 %shr94.i, 16
  %call9.i.i36.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i1147.i, i32 noundef 3520) #10
  %tobool97.not.i = icmp eq ptr %call9.i.i36.i, null
  br i1 %tobool97.not.i, label %if.then88.i.enomem_crit_edge, label %if.end99.i

if.then88.i.enomem_crit_edge:                     ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %enomem

if.end99.i:                                       ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #7
  %338 = ptrtoint ptr %call9.i.i36.i to i32
  %or.i.i40.i = or i32 %338, 3
  %339 = inttoptr i32 %or.i.i40.i to ptr
  %arrayidx102.i = getelementptr %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 7, i32 2
  %340 = ptrtoint ptr %arrayidx102.i to i32
  call void @__asan_store4_noabort(i32 %340)
  store ptr %339, ptr %arrayidx102.i, align 8
  %341 = ptrtoint ptr %call9.i.i36.i to i32
  call void @__asan_store4_noabort(i32 %341)
  store ptr %301, ptr %call9.i.i36.i, align 128
  %parent_slot105.i = getelementptr inbounds %struct.assoc_array_shortcut, ptr %call9.i.i36.i, i32 0, i32 1
  %342 = ptrtoint ptr %parent_slot105.i to i32
  call void @__asan_store4_noabort(i32 %342)
  store i32 %and82.i, ptr %parent_slot105.i, align 4
  %343 = ptrtoint ptr %next_node77.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %next_node77.i, align 4
  %next_node107.i = getelementptr inbounds %struct.assoc_array_shortcut, ptr %call9.i.i36.i, i32 0, i32 3
  %345 = ptrtoint ptr %next_node107.i to i32
  call void @__asan_store4_noabort(i32 %345)
  store ptr %344, ptr %next_node107.i, align 4
  %346 = ptrtoint ptr %skip_to_level85.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %skip_to_level85.i, align 4
  %skip_to_level109.i = getelementptr inbounds %struct.assoc_array_shortcut, ptr %call9.i.i36.i, i32 0, i32 2
  %348 = ptrtoint ptr %skip_to_level109.i to i32
  call void @__asan_store4_noabort(i32 %348)
  store i32 %347, ptr %skip_to_level109.i, align 8
  %arrayidx112.i = getelementptr %struct.assoc_array_node, ptr %call7.i.i.i67, i32 0, i32 2, i32 %and82.i
  %349 = ptrtoint ptr %arrayidx112.i to i32
  call void @__asan_store4_noabort(i32 %349)
  store ptr %339, ptr %arrayidx112.i, align 4
  %index_key113.i = getelementptr inbounds %struct.assoc_array_shortcut, ptr %call9.i.i36.i, i32 0, i32 4
  %index_key115.i = getelementptr inbounds %struct.assoc_array_shortcut, ptr %277, i32 0, i32 4
  %350 = call ptr @memcpy(ptr %index_key113.i, ptr %index_key115.i, i32 %shr94.i)
  br label %assoc_array_insert_mid_shortcut.exit

if.else126.i:                                     ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #7
  %351 = ptrtoint ptr %next_node77.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %next_node77.i, align 4
  %arrayidx130.i = getelementptr %struct.assoc_array_node, ptr %call7.i.i.i67, i32 0, i32 2, i32 %and82.i
  %353 = ptrtoint ptr %arrayidx130.i to i32
  call void @__asan_store4_noabort(i32 %353)
  store ptr %352, ptr %arrayidx130.i, align 4
  %parent_slot131.i = getelementptr inbounds %struct.assoc_array_node, ptr %332, i32 0, i32 1
  %set_parent_slot.i = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 15
  %354 = ptrtoint ptr %set_parent_slot.i to i32
  call void @__asan_store4_noabort(i32 %354)
  store ptr %parent_slot131.i, ptr %set_parent_slot.i, align 8
  %conv133.i = trunc i32 %and82.i to i8
  %to136.i = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 15, i32 0, i32 1
  %355 = ptrtoint ptr %to136.i to i32
  call void @__asan_store1_noabort(i32 %355)
  store i8 %conv133.i, ptr %to136.i, align 4
  br label %assoc_array_insert_mid_shortcut.exit

assoc_array_insert_mid_shortcut.exit:             ; preds = %if.else126.i, %if.end99.i
  %.sink.i = phi ptr [ %301, %if.else126.i ], [ %339, %if.end99.i ]
  %arrayidx139.i = getelementptr %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 14, i32 1
  %356 = ptrtoint ptr %arrayidx139.i to i32
  call void @__asan_store4_noabort(i32 %356)
  store ptr %332, ptr %arrayidx139.i, align 8
  %to144.i = getelementptr %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 14, i32 1, i32 1
  %357 = ptrtoint ptr %to144.i to i32
  call void @__asan_store4_noabort(i32 %357)
  store ptr %.sink.i, ptr %to144.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82.i)
  %cmp146.i = icmp eq i32 %and82.i, 0
  %arrayidx150.i = getelementptr %struct.assoc_array_node, ptr %call7.i.i.i67, i32 0, i32 2, i32 1
  %slots152.i = getelementptr inbounds %struct.assoc_array_node, ptr %call7.i.i.i67, i32 0, i32 2
  %slots152.sink.i = select i1 %cmp146.i, ptr %arrayidx150.i, ptr %slots152.i
  %358 = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 5
  %359 = ptrtoint ptr %358 to i32
  call void @__asan_store4_noabort(i32 %359)
  store ptr %slots152.sink.i, ptr %358, align 8
  br label %cleanup

enomem:                                           ; preds = %if.then88.i.enomem_crit_edge, %if.then35.i.enomem_crit_edge, %if.end25.i.enomem_crit_edge, %do.end458.i.enomem_crit_edge, %if.end32.i.enomem_crit_edge, %if.end28.i.enomem_crit_edge, %sw.bb.enomem_crit_edge, %if.end12.enomem_crit_edge
  %arrayidx.i106 = getelementptr %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 7, i32 0
  %360 = ptrtoint ptr %arrayidx.i106 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %arrayidx.i106, align 8
  %tobool.not.i107 = icmp eq ptr %361, null
  br i1 %tobool.not.i107, label %enomem.for.inc.i109_crit_edge, label %if.then.i108

enomem.for.inc.i109_crit_edge:                    ; preds = %enomem
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i109

if.then.i108:                                     ; preds = %enomem
  call void @__sanitizer_cov_trace_pc() #7
  %362 = ptrtoint ptr %361 to i32
  %and.i.i11.i = and i32 %362, -4
  %363 = inttoptr i32 %and.i.i11.i to ptr
  tail call void @kfree(ptr noundef %363) #8
  br label %for.inc.i109

for.inc.i109:                                     ; preds = %if.then.i108, %enomem.for.inc.i109_crit_edge
  %arrayidx.1.i = getelementptr %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 7, i32 1
  %364 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %365, null
  br i1 %tobool.not.1.i, label %for.inc.i109.for.inc.1.i_crit_edge, label %if.then.1.i

for.inc.i109.for.inc.1.i_crit_edge:               ; preds = %for.inc.i109
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i109
  call void @__sanitizer_cov_trace_pc() #7
  %366 = ptrtoint ptr %365 to i32
  %and.i.i11.1.i = and i32 %366, -4
  %367 = inttoptr i32 %and.i.i11.1.i to ptr
  tail call void @kfree(ptr noundef %367) #8
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i, %for.inc.i109.for.inc.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 7, i32 2
  %368 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %arrayidx.2.i, align 8
  %tobool.not.2.i = icmp eq ptr %369, null
  br i1 %tobool.not.2.i, label %for.inc.1.i.assoc_array_cancel_edit.exit_crit_edge, label %if.then.2.i

for.inc.1.i.assoc_array_cancel_edit.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %assoc_array_cancel_edit.exit

if.then.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %370 = ptrtoint ptr %369 to i32
  %and.i.i11.2.i = and i32 %370, -4
  %371 = inttoptr i32 %and.i.i11.2.i to ptr
  tail call void @kfree(ptr noundef %371) #8
  br label %assoc_array_cancel_edit.exit

assoc_array_cancel_edit.exit:                     ; preds = %if.then.2.i, %for.inc.1.i.assoc_array_cancel_edit.exit_crit_edge
  tail call void @kfree(ptr noundef %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %assoc_array_cancel_edit.exit, %assoc_array_insert_mid_shortcut.exit, %if.end381.i, %if.then22.i, %if.then12.i, %assoc_array_insert_in_empty_tree.exit.thread, %do.end7.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %assoc_array_cancel_edit.exit ], [ %call7.i.i, %assoc_array_insert_mid_shortcut.exit ], [ inttoptr (i32 -12 to ptr), %do.end7.cleanup_crit_edge ], [ %call7.i.i, %assoc_array_insert_in_empty_tree.exit.thread ], [ %call7.i.i, %if.then12.i ], [ %call7.i.i, %if.then22.i ], [ %call7.i.i, %if.end381.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %result) #8
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @assoc_array_cancel_edit(ptr noundef %edit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.assoc_array_edit, ptr %edit, i32 0, i32 7, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %1 to i32
  %and.i.i11 = and i32 %2, -4
  %3 = inttoptr i32 %and.i.i11 to ptr
  tail call void @kfree(ptr noundef %3) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.assoc_array_edit, ptr %edit, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %5, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %5 to i32
  %and.i.i11.1 = and i32 %6, -4
  %7 = inttoptr i32 %and.i.i11.1 to ptr
  tail call void @kfree(ptr noundef %7) #8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.assoc_array_edit, ptr %edit, i32 0, i32 7, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %9, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %9 to i32
  %and.i.i11.2 = and i32 %10, -4
  %11 = inttoptr i32 %and.i.i11.2 to ptr
  tail call void @kfree(ptr noundef %11) #8
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  tail call void @kfree(ptr noundef %edit) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @assoc_array_insert_set_object(ptr nocapture noundef writeonly %edit, ptr noundef %object) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %tobool.not = icmp eq ptr %object, null
  br i1 %tobool.not, label %do.body4, label %do.end7, !prof !8

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1032, 0\0A.popsection", ""() #8, !srcloc !30
  unreachable

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %leaf = getelementptr inbounds %struct.assoc_array_edit, ptr %edit, i32 0, i32 4
  %0 = ptrtoint ptr %leaf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %object, ptr %leaf, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @assoc_array_delete(ptr noundef %array, ptr noundef %ops, ptr noundef %index_key) local_unnamed_addr #0 align 64 {
entry:
  %collapse = alloca %struct.assoc_array_delete_collapse_context, align 4
  %result = alloca %struct.assoc_array_walk_result, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %collapse) #8
  %0 = getelementptr inbounds %struct.assoc_array_delete_collapse_context, ptr %collapse, i32 0, i32 1
  %1 = getelementptr inbounds %struct.assoc_array_delete_collapse_context, ptr %collapse, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %result) #8
  %2 = call ptr @memset(ptr %result, i32 255, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 172) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup180_crit_edge, label %if.end

entry.cleanup180_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup180

if.end:                                           ; preds = %entry
  %array2 = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %array2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %array, ptr %array2, align 8
  %ops3 = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %ops3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ops, ptr %ops3, align 4
  %adjust_count_by = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 13
  %6 = ptrtoint ptr %adjust_count_by to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %adjust_count_by, align 4
  %call4 = call fastcc i32 @assoc_array_walk(ptr noundef %array, ptr noundef %ops, ptr noundef %index_key, ptr noundef nonnull %result)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4)
  %cond = icmp eq i32 %call4, 1
  br i1 %cond, label %sw.bb, label %if.end.sw.default_crit_edge

if.end.sw.default_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.default

sw.bb:                                            ; preds = %if.end
  %7 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %result, align 4
  %compare_object = getelementptr inbounds %struct.assoc_array_ops, ptr %ops, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sw.bb
  %slot.0289 = phi i32 [ 0, %sw.bb ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.assoc_array_node, ptr %8, i32 0, i32 2, i32 %slot.0289
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %11 = ptrtoint ptr %10 to i32
  %and.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %land.lhs.true9, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true9:                                   ; preds = %land.lhs.true
  %12 = ptrtoint ptr %compare_object to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %compare_object, align 4
  %and.i = and i32 %11, -2
  %14 = inttoptr i32 %and.i to ptr
  %call11 = tail call zeroext i1 %13(ptr noundef %14, ptr noundef %index_key) #8
  br i1 %call11, label %do.body, label %land.lhs.true9.for.inc_crit_edge

land.lhs.true9.for.inc_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true9.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %slot.0289, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.inc.sw.default_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.sw.default_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.default

sw.default:                                       ; preds = %for.inc.sw.default_crit_edge, %if.end.sw.default_crit_edge
  %arrayidx.i = getelementptr %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 7, i32 0
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 8
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %sw.default.for.inc.i_crit_edge, label %if.then.i

sw.default.for.inc.i_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then.i:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %16 to i32
  %and.i.i11.i = and i32 %17, -4
  %18 = inttoptr i32 %and.i.i11.i to ptr
  tail call void @kfree(ptr noundef %18) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %sw.default.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 7, i32 1
  %19 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %20, null
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %20 to i32
  %and.i.i11.1.i = and i32 %21, -4
  %22 = inttoptr i32 %and.i.i11.1.i to ptr
  tail call void @kfree(ptr noundef %22) #8
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 7, i32 2
  %23 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.2.i, align 8
  %tobool.not.2.i = icmp eq ptr %24, null
  br i1 %tobool.not.2.i, label %for.inc.1.i.assoc_array_cancel_edit.exit_crit_edge, label %if.then.2.i

for.inc.1.i.assoc_array_cancel_edit.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %assoc_array_cancel_edit.exit

if.then.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %24 to i32
  %and.i.i11.2.i = and i32 %25, -4
  %26 = inttoptr i32 %and.i.i11.2.i to ptr
  tail call void @kfree(ptr noundef %26) #8
  br label %assoc_array_cancel_edit.exit

assoc_array_cancel_edit.exit:                     ; preds = %if.then.2.i, %for.inc.1.i.assoc_array_cancel_edit.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup180

do.body:                                          ; preds = %land.lhs.true9
  %nr_leaves_on_tree = getelementptr inbounds %struct.assoc_array, ptr %array, i32 0, i32 1
  %27 = ptrtoint ptr %nr_leaves_on_tree to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nr_leaves_on_tree, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp16 = icmp eq i32 %28, 0
  br i1 %cmp16, label %do.body20, label %do.end26, !prof !8

do.body20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1125, 0\0A.popsection", ""() #8, !srcloc !31
  unreachable

do.end26:                                         ; preds = %do.body
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx, align 4
  %dead_leaf = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 6
  %31 = ptrtoint ptr %dead_leaf to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %dead_leaf, align 4
  %set = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 14
  %32 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %arrayidx, ptr %set, align 8
  %to = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 14, i32 0, i32 1
  %33 = ptrtoint ptr %to to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %to, align 4
  %adjust_count_on = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 12
  %34 = ptrtoint ptr %adjust_count_on to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %8, ptr %adjust_count_on, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp36 = icmp eq i32 %28, 1
  br i1 %cmp36, label %if.then37, label %if.end47

if.then37:                                        ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx39 = getelementptr %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 14, i32 1
  %35 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %array, ptr %arrayidx39, align 8
  %to43 = getelementptr %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 14, i32 1, i32 1
  %36 = ptrtoint ptr %to43 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %to43, align 4
  %37 = ptrtoint ptr %adjust_count_on to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %adjust_count_on, align 8
  %38 = ptrtoint ptr %array to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %array, align 4
  %excised_subtree = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 9
  %40 = ptrtoint ptr %excised_subtree to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %excised_subtree, align 8
  br label %cleanup180

if.end47:                                         ; preds = %do.end26
  %nr_leaves_on_branch = getelementptr inbounds %struct.assoc_array_node, ptr %8, i32 0, i32 3
  %41 = ptrtoint ptr %nr_leaves_on_branch to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nr_leaves_on_branch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %42)
  %cmp48 = icmp ult i32 %42, 18
  br i1 %cmp48, label %for.body53.preheader, label %if.end47.cleanup180_crit_edge

if.end47.cleanup180_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup180

for.body53.preheader:                             ; preds = %if.end47
  %arrayidx55 = getelementptr %struct.assoc_array_node, ptr %8, i32 0, i32 2, i32 0
  %43 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx55, align 4
  %45 = ptrtoint ptr %44 to i32
  %and.i269 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i269)
  %tobool.i.not = icmp eq i32 %and.i269, 0
  br i1 %tobool.i.not, label %for.cond51, label %for.body53.preheader.for.end61_crit_edge

for.body53.preheader.for.end61_crit_edge:         ; preds = %for.body53.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end61

for.cond51:                                       ; preds = %for.body53.preheader
  %arrayidx55.1 = getelementptr %struct.assoc_array_node, ptr %8, i32 0, i32 2, i32 1
  %46 = ptrtoint ptr %arrayidx55.1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx55.1, align 4
  %48 = ptrtoint ptr %47 to i32
  %and.i269.1 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i269.1)
  %tobool.i.not.1 = icmp eq i32 %and.i269.1, 0
  br i1 %tobool.i.not.1, label %for.cond51.1, label %for.cond51.for.end61_crit_edge

for.cond51.for.end61_crit_edge:                   ; preds = %for.cond51
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end61

for.cond51.1:                                     ; preds = %for.cond51
  %arrayidx55.2 = getelementptr %struct.assoc_array_node, ptr %8, i32 0, i32 2, i32 2
  %49 = ptrtoint ptr %arrayidx55.2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx55.2, align 4
  %51 = ptrtoint ptr %50 to i32
  %and.i269.2 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i269.2)
  %tobool.i.not.2 = icmp eq i32 %and.i269.2, 0
  br i1 %tobool.i.not.2, label %for.cond51.2, label %for.cond51.1.for.end61_crit_edge

for.cond51.1.for.end61_crit_edge:                 ; preds = %for.cond51.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end61

for.cond51.2:                                     ; preds = %for.cond51.1
  %arrayidx55.3 = getelementptr %struct.assoc_array_node, ptr %8, i32 0, i32 2, i32 3
  %52 = ptrtoint ptr %arrayidx55.3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx55.3, align 4
  %54 = ptrtoint ptr %53 to i32
  %and.i269.3 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i269.3)
  %tobool.i.not.3 = icmp eq i32 %and.i269.3, 0
  br i1 %tobool.i.not.3, label %for.cond51.3, label %for.cond51.2.for.end61_crit_edge

for.cond51.2.for.end61_crit_edge:                 ; preds = %for.cond51.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end61

for.cond51.3:                                     ; preds = %for.cond51.2
  %arrayidx55.4 = getelementptr %struct.assoc_array_node, ptr %8, i32 0, i32 2, i32 4
  %55 = ptrtoint ptr %arrayidx55.4 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx55.4, align 4
  %57 = ptrtoint ptr %56 to i32
  %and.i269.4 = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i269.4)
  %tobool.i.not.4 = icmp eq i32 %and.i269.4, 0
  br i1 %tobool.i.not.4, label %for.cond51.4, label %for.cond51.3.for.end61_crit_edge

for.cond51.3.for.end61_crit_edge:                 ; preds = %for.cond51.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end61

for.cond51.4:                                     ; preds = %for.cond51.3
  %arrayidx55.5 = getelementptr %struct.assoc_array_node, ptr %8, i32 0, i32 2, i32 5
  %58 = ptrtoint ptr %arrayidx55.5 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx55.5, align 4
  %60 = ptrtoint ptr %59 to i32
  %and.i269.5 = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i269.5)
  %tobool.i.not.5 = icmp eq i32 %and.i269.5, 0
  br i1 %tobool.i.not.5, label %for.cond51.5, label %for.cond51.4.for.end61_crit_edge

for.cond51.4.for.end61_crit_edge:                 ; preds = %for.cond51.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end61

for.cond51.5:                                     ; preds = %for.cond51.4
  %arrayidx55.6 = getelementptr %struct.assoc_array_node, ptr %8, i32 0, i32 2, i32 6
  %61 = ptrtoint ptr %arrayidx55.6 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx55.6, align 4
  %63 = ptrtoint ptr %62 to i32
  %and.i269.6 = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i269.6)
  %tobool.i.not.6 = icmp eq i32 %and.i269.6, 0
  br i1 %tobool.i.not.6, label %for.cond51.6, label %for.cond51.5.for.end61_crit_edge

for.cond51.5.for.end61_crit_edge:                 ; preds = %for.cond51.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end61

for.cond51.6:                                     ; preds = %for.cond51.5
  %arrayidx55.7 = getelementptr %struct.assoc_array_node, ptr %8, i32 0, i32 2, i32 7
  %64 = ptrtoint ptr %arrayidx55.7 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx55.7, align 4
  %66 = ptrtoint ptr %65 to i32
  %and.i269.7 = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i269.7)
  %tobool.i.not.7 = icmp eq i32 %and.i269.7, 0
  br i1 %tobool.i.not.7, label %for.cond51.7, label %for.cond51.6.for.end61_crit_edge

for.cond51.6.for.end61_crit_edge:                 ; preds = %for.cond51.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end61

for.cond51.7:                                     ; preds = %for.cond51.6
  %arrayidx55.8 = getelementptr %struct.assoc_array_node, ptr %8, i32 0, i32 2, i32 8
  %67 = ptrtoint ptr %arrayidx55.8 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx55.8, align 4
  %69 = ptrtoint ptr %68 to i32
  %and.i269.8 = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i269.8)
  %tobool.i.not.8 = icmp eq i32 %and.i269.8, 0
  br i1 %tobool.i.not.8, label %for.cond51.8, label %for.cond51.7.for.end61_crit_edge

for.cond51.7.for.end61_crit_edge:                 ; preds = %for.cond51.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end61

for.cond51.8:                                     ; preds = %for.cond51.7
  %arrayidx55.9 = getelementptr %struct.assoc_array_node, ptr %8, i32 0, i32 2, i32 9
  %70 = ptrtoint ptr %arrayidx55.9 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx55.9, align 4
  %72 = ptrtoint ptr %71 to i32
  %and.i269.9 = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i269.9)
  %tobool.i.not.9 = icmp eq i32 %and.i269.9, 0
  br i1 %tobool.i.not.9, label %for.cond51.9, label %for.cond51.8.for.end61_crit_edge

for.cond51.8.for.end61_crit_edge:                 ; preds = %for.cond51.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end61

for.cond51.9:                                     ; preds = %for.cond51.8
  %arrayidx55.10 = getelementptr %struct.assoc_array_node, ptr %8, i32 0, i32 2, i32 10
  %73 = ptrtoint ptr %arrayidx55.10 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx55.10, align 4
  %75 = ptrtoint ptr %74 to i32
  %and.i269.10 = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i269.10)
  %tobool.i.not.10 = icmp eq i32 %and.i269.10, 0
  br i1 %tobool.i.not.10, label %for.cond51.10, label %for.cond51.9.for.end61_crit_edge

for.cond51.9.for.end61_crit_edge:                 ; preds = %for.cond51.9
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end61

for.cond51.10:                                    ; preds = %for.cond51.9
  %arrayidx55.11 = getelementptr %struct.assoc_array_node, ptr %8, i32 0, i32 2, i32 11
  %76 = ptrtoint ptr %arrayidx55.11 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx55.11, align 4
  %78 = ptrtoint ptr %77 to i32
  %and.i269.11 = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i269.11)
  %tobool.i.not.11 = icmp eq i32 %and.i269.11, 0
  br i1 %tobool.i.not.11, label %for.cond51.11, label %for.cond51.10.for.end61_crit_edge

for.cond51.10.for.end61_crit_edge:                ; preds = %for.cond51.10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end61

for.cond51.11:                                    ; preds = %for.cond51.10
  %arrayidx55.12 = getelementptr %struct.assoc_array_node, ptr %8, i32 0, i32 2, i32 12
  %79 = ptrtoint ptr %arrayidx55.12 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx55.12, align 4
  %81 = ptrtoint ptr %80 to i32
  %and.i269.12 = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i269.12)
  %tobool.i.not.12 = icmp eq i32 %and.i269.12, 0
  br i1 %tobool.i.not.12, label %for.cond51.12, label %for.cond51.11.for.end61_crit_edge

for.cond51.11.for.end61_crit_edge:                ; preds = %for.cond51.11
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end61

for.cond51.12:                                    ; preds = %for.cond51.11
  %arrayidx55.13 = getelementptr %struct.assoc_array_node, ptr %8, i32 0, i32 2, i32 13
  %82 = ptrtoint ptr %arrayidx55.13 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx55.13, align 4
  %84 = ptrtoint ptr %83 to i32
  %and.i269.13 = and i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i269.13)
  %tobool.i.not.13 = icmp eq i32 %and.i269.13, 0
  br i1 %tobool.i.not.13, label %for.cond51.13, label %for.cond51.12.for.end61_crit_edge

for.cond51.12.for.end61_crit_edge:                ; preds = %for.cond51.12
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end61

for.cond51.13:                                    ; preds = %for.cond51.12
  %arrayidx55.14 = getelementptr %struct.assoc_array_node, ptr %8, i32 0, i32 2, i32 14
  %85 = ptrtoint ptr %arrayidx55.14 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx55.14, align 4
  %87 = ptrtoint ptr %86 to i32
  %and.i269.14 = and i32 %87, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i269.14)
  %tobool.i.not.14 = icmp eq i32 %and.i269.14, 0
  br i1 %tobool.i.not.14, label %for.cond51.14, label %for.cond51.13.for.end61_crit_edge

for.cond51.13.for.end61_crit_edge:                ; preds = %for.cond51.13
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end61

for.cond51.14:                                    ; preds = %for.cond51.13
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx55.15 = getelementptr %struct.assoc_array_node, ptr %8, i32 0, i32 2, i32 15
  %88 = ptrtoint ptr %arrayidx55.15 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx55.15, align 4
  %90 = ptrtoint ptr %89 to i32
  %and.i269.15 = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i269.15)
  %tobool.i.not.15 = icmp eq i32 %and.i269.15, 0
  br label %for.end61

for.end61:                                        ; preds = %for.cond51.14, %for.cond51.13.for.end61_crit_edge, %for.cond51.12.for.end61_crit_edge, %for.cond51.11.for.end61_crit_edge, %for.cond51.10.for.end61_crit_edge, %for.cond51.9.for.end61_crit_edge, %for.cond51.8.for.end61_crit_edge, %for.cond51.7.for.end61_crit_edge, %for.cond51.6.for.end61_crit_edge, %for.cond51.5.for.end61_crit_edge, %for.cond51.4.for.end61_crit_edge, %for.cond51.3.for.end61_crit_edge, %for.cond51.2.for.end61_crit_edge, %for.cond51.1.for.end61_crit_edge, %for.cond51.for.end61_crit_edge, %for.body53.preheader.for.end61_crit_edge
  %cmp52.lcssa = phi i1 [ false, %for.body53.preheader.for.end61_crit_edge ], [ false, %for.cond51.for.end61_crit_edge ], [ false, %for.cond51.1.for.end61_crit_edge ], [ false, %for.cond51.2.for.end61_crit_edge ], [ false, %for.cond51.3.for.end61_crit_edge ], [ false, %for.cond51.4.for.end61_crit_edge ], [ false, %for.cond51.5.for.end61_crit_edge ], [ false, %for.cond51.6.for.end61_crit_edge ], [ false, %for.cond51.7.for.end61_crit_edge ], [ false, %for.cond51.8.for.end61_crit_edge ], [ false, %for.cond51.9.for.end61_crit_edge ], [ false, %for.cond51.10.for.end61_crit_edge ], [ false, %for.cond51.11.for.end61_crit_edge ], [ false, %for.cond51.12.for.end61_crit_edge ], [ false, %for.cond51.13.for.end61_crit_edge ], [ %tobool.i.not.15, %for.cond51.14 ]
  br label %collapse_up

collapse_up:                                      ; preds = %if.end74.collapse_up_crit_edge, %for.end61
  %parent.0 = phi ptr [ %8, %for.end61 ], [ %97, %if.end74.collapse_up_crit_edge ]
  %91 = ptrtoint ptr %parent.0 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %parent.0, align 4
  %tobool64.not = icmp eq ptr %92, null
  br i1 %tobool64.not, label %collapse_up.do_collapse_crit_edge, label %if.end66

collapse_up.do_collapse_crit_edge:                ; preds = %collapse_up
  call void @__sanitizer_cov_trace_pc() #7
  br label %do_collapse

if.end66:                                         ; preds = %collapse_up
  %93 = ptrtoint ptr %92 to i32
  %and.i270 = and i32 %93, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i270)
  %tobool.i271.not = icmp eq i32 %and.i270, 0
  br i1 %tobool.i271.not, label %if.end66.if.end74_crit_edge, label %if.then68

if.end66.if.end74_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end74

if.then68:                                        ; preds = %if.end66
  %and.i.i272 = and i32 %93, -4
  %94 = inttoptr i32 %and.i.i272 to ptr
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 4
  %tobool71.not = icmp eq ptr %96, null
  br i1 %tobool71.not, label %if.then68.do_collapse_crit_edge, label %if.then68.if.end74_crit_edge

if.then68.do_collapse_crit_edge:                  ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #7
  br label %do_collapse

if.then68.if.end74_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #7
  %.pre = ptrtoint ptr %96 to i32
  br label %if.end74

if.end74:                                         ; preds = %if.then68.if.end74_crit_edge, %if.end66.if.end74_crit_edge
  %.pre-phi = phi i32 [ %.pre, %if.then68.if.end74_crit_edge ], [ %93, %if.end66.if.end74_crit_edge ]
  %and.i.i273 = and i32 %.pre-phi, -4
  %97 = inttoptr i32 %and.i.i273 to ptr
  %nr_leaves_on_branch76 = getelementptr inbounds %struct.assoc_array_node, ptr %97, i32 0, i32 3
  %98 = ptrtoint ptr %nr_leaves_on_branch76 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %nr_leaves_on_branch76, align 4
  %cmp77 = icmp ult i32 %99, 18
  br i1 %cmp77, label %if.end74.collapse_up_crit_edge, label %if.end74.do_collapse_crit_edge

if.end74.do_collapse_crit_edge:                   ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  br label %do_collapse

if.end74.collapse_up_crit_edge:                   ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  br label %collapse_up

do_collapse:                                      ; preds = %if.end74.do_collapse_crit_edge, %if.then68.do_collapse_crit_edge, %collapse_up.do_collapse_crit_edge
  %cmp81.not = icmp eq ptr %parent.0, %8
  %or.cond = select i1 %cmp52.lcssa, i1 %cmp81.not, i1 false
  br i1 %or.cond, label %do_collapse.cleanup180_crit_edge, label %if.then82

do_collapse.cleanup180_crit_edge:                 ; preds = %do_collapse
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup180

if.then82:                                        ; preds = %do_collapse
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %100 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i274 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %100, i32 noundef 3520, i32 noundef 76) #9
  %tobool84.not = icmp eq ptr %call7.i.i274, null
  br i1 %tobool84.not, label %enomem, label %if.end86

if.end86:                                         ; preds = %if.then82
  %101 = ptrtoint ptr %call7.i.i274 to i32
  %or.i.i = or i32 %101, 1
  %102 = inttoptr i32 %or.i.i to ptr
  %new_meta = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 7
  %103 = ptrtoint ptr %new_meta to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %102, ptr %new_meta, align 8
  %104 = ptrtoint ptr %parent.0 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %parent.0, align 4
  %106 = ptrtoint ptr %call7.i.i274 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %105, ptr %call7.i.i274, align 8
  %parent_slot = getelementptr inbounds %struct.assoc_array_node, ptr %parent.0, i32 0, i32 1
  %107 = ptrtoint ptr %parent_slot to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %parent_slot, align 4
  %parent_slot91 = getelementptr inbounds %struct.assoc_array_node, ptr %call7.i.i274, i32 0, i32 1
  %109 = ptrtoint ptr %parent_slot91 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %108, ptr %parent_slot91, align 4
  %nr_leaves_on_branch92 = getelementptr inbounds %struct.assoc_array_node, ptr %parent.0, i32 0, i32 3
  %110 = ptrtoint ptr %nr_leaves_on_branch92 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %nr_leaves_on_branch92, align 4
  %nr_leaves_on_branch93 = getelementptr inbounds %struct.assoc_array_node, ptr %call7.i.i274, i32 0, i32 3
  %112 = ptrtoint ptr %nr_leaves_on_branch93 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %nr_leaves_on_branch93, align 8
  %113 = ptrtoint ptr %adjust_count_on to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call7.i.i274, ptr %adjust_count_on, align 8
  %114 = ptrtoint ptr %collapse to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call7.i.i274, ptr %collapse, align 4
  %115 = ptrtoint ptr %dead_leaf to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dead_leaf, align 4
  %117 = ptrtoint ptr %116 to i32
  %and.i275 = and i32 %117, -2
  %118 = inttoptr i32 %and.i275 to ptr
  %119 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %118, ptr %0, align 4
  %120 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %1, align 4
  %121 = ptrtoint ptr %parent.0 to i32
  %or.i.i276 = or i32 %121, 1
  %122 = inttoptr i32 %or.i.i276 to ptr
  %123 = load ptr, ptr %parent.0, align 4
  %call101 = call fastcc i32 @assoc_array_subtree_iterate(ptr noundef nonnull %122, ptr noundef %123, ptr noundef nonnull @assoc_array_delete_collapse_iterator, ptr noundef nonnull %collapse)
  %124 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %1, align 4
  %126 = ptrtoint ptr %nr_leaves_on_branch93 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %nr_leaves_on_branch93, align 8
  %sub = add i32 %127, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %125, i32 %sub)
  %cmp106.not = icmp eq i32 %125, %sub
  br i1 %cmp106.not, label %do.end122, label %do.body114, !prof !10

do.body114:                                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1227, 0\0A.popsection", ""() #8, !srcloc !32
  unreachable

do.end122:                                        ; preds = %if.end86
  %128 = ptrtoint ptr %parent.0 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %parent.0, align 4
  %tobool124.not = icmp eq ptr %129, null
  br i1 %tobool124.not, label %do.end122.if.end164_crit_edge, label %if.else

do.end122.if.end164_crit_edge:                    ; preds = %do.end122
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end164

if.else:                                          ; preds = %do.end122
  %130 = ptrtoint ptr %129 to i32
  %and.i.i277 = and i32 %130, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i277)
  %tobool.i.not.i278 = icmp eq i32 %and.i.i277, 0
  br i1 %tobool.i.not.i278, label %do.body133, label %if.else139

do.body133:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1232, 0\0A.popsection", ""() #8, !srcloc !33
  unreachable

if.else139:                                       ; preds = %if.else
  %and.i.i279 = and i32 %130, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i279)
  %tobool.i.not.i280 = icmp eq i32 %and.i.i279, 0
  %and.i.i281 = and i32 %130, -4
  %131 = inttoptr i32 %and.i.i281 to ptr
  br i1 %tobool.i.not.i280, label %if.then142, label %if.then154

if.then142:                                       ; preds = %if.else139
  call void @__sanitizer_cov_trace_pc() #7
  %132 = ptrtoint ptr %parent_slot to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %parent_slot, align 4
  %idxprom = zext i8 %133 to i32
  %arrayidx147 = getelementptr %struct.assoc_array_node, ptr %131, i32 0, i32 2, i32 %idxprom
  br label %if.end164

if.then154:                                       ; preds = %if.else139
  call void @__sanitizer_cov_trace_pc() #7
  %next_node = getelementptr inbounds %struct.assoc_array_shortcut, ptr %131, i32 0, i32 3
  br label %if.end164

if.end164:                                        ; preds = %if.then154, %if.then142, %do.end122.if.end164_crit_edge
  %next_node.sink = phi ptr [ %next_node, %if.then154 ], [ %arrayidx147, %if.then142 ], [ %array, %do.end122.if.end164_crit_edge ]
  %arrayidx159 = getelementptr %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 14, i32 1
  %134 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %next_node.sink, ptr %arrayidx159, align 8
  %to168 = getelementptr %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 14, i32 1, i32 1
  %135 = ptrtoint ptr %to168 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %102, ptr %to168, align 4
  %excised_subtree170 = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 9
  %136 = ptrtoint ptr %excised_subtree170 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %122, ptr %excised_subtree170, align 8
  br label %cleanup180

enomem:                                           ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @assoc_array_cancel_edit(ptr noundef nonnull %call7.i.i)
  br label %cleanup180

cleanup180:                                       ; preds = %enomem, %if.end164, %do_collapse.cleanup180_crit_edge, %if.end47.cleanup180_crit_edge, %if.then37, %assoc_array_cancel_edit.exit, %entry.cleanup180_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.then37 ], [ inttoptr (i32 -12 to ptr), %enomem ], [ null, %assoc_array_cancel_edit.exit ], [ %call7.i.i, %if.end47.cleanup180_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup180_crit_edge ], [ %call7.i.i, %do_collapse.cleanup180_crit_edge ], [ %call7.i.i, %if.end164 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %result) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %collapse) #8
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @assoc_array_delete_collapse_iterator(ptr noundef %leaf, ptr nocapture noundef %iterator_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %skip_leaf = getelementptr inbounds %struct.assoc_array_delete_collapse_context, ptr %iterator_data, i32 0, i32 1
  %0 = ptrtoint ptr %skip_leaf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skip_leaf, align 4
  %cmp = icmp eq ptr %1, %leaf
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  %slot = getelementptr inbounds %struct.assoc_array_delete_collapse_context, ptr %iterator_data, i32 0, i32 2
  %2 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %slot, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %3)
  %cmp1 = icmp sgt i32 %3, 15
  br i1 %cmp1, label %do.body4, label %do.end10, !prof !8

do.body4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1053, 0\0A.popsection", ""() #8, !srcloc !34
  unreachable

do.end10:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %iterator_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iterator_data, align 4
  %inc = add nsw i32 %3, 1
  %6 = ptrtoint ptr %slot to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %inc, ptr %slot, align 4
  %arrayidx = getelementptr %struct.assoc_array_node, ptr %5, i32 0, i32 2, i32 %3
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %leaf, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @assoc_array_clear(ptr noundef %array, ptr noundef %ops) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %array to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %array, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 172) #9
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %array5 = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %array5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %array, ptr %array5, align 8
  %ops6 = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %ops6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ops, ptr %ops6, align 4
  %arrayidx = getelementptr %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 14, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %array, ptr %arrayidx, align 8
  %to = getelementptr %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 14, i32 1, i32 1
  %6 = ptrtoint ptr %to to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %to, align 4
  %7 = ptrtoint ptr %array to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %array, align 4
  %excised_subtree = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 9
  %9 = ptrtoint ptr %excised_subtree to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %excised_subtree, align 8
  %ops_for_excised_subtree = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %ops_for_excised_subtree to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %ops, ptr %ops_for_excised_subtree, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end4 ], [ null, %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @assoc_array_apply_edit(ptr noundef %edit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !35
  %leaf_p = getelementptr inbounds %struct.assoc_array_edit, ptr %edit, i32 0, i32 5
  %0 = ptrtoint ptr %leaf_p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %leaf_p, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %if.then

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %leaf = getelementptr inbounds %struct.assoc_array_edit, ptr %edit, i32 0, i32 4
  %2 = ptrtoint ptr %leaf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %leaf, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %1, align 4
  br label %do.end8

do.end8:                                          ; preds = %if.then, %entry.do.end8_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !36
  %set_parent_slot = getelementptr inbounds %struct.assoc_array_edit, ptr %edit, i32 0, i32 15
  %5 = ptrtoint ptr %set_parent_slot to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set_parent_slot, align 4
  %tobool11.not = icmp eq ptr %6, null
  br i1 %tobool11.not, label %do.end8.do.end22_crit_edge, label %if.then12

do.end8.do.end22_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end22

if.then12:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #7
  %to = getelementptr inbounds %struct.assoc_array_edit, ptr %edit, i32 0, i32 15, i32 0, i32 1
  %7 = ptrtoint ptr %to to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %to, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %6, align 1
  br label %do.end22

do.end22:                                         ; preds = %if.then12, %do.end8.do.end22_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !37
  %set_backpointers_to = getelementptr inbounds %struct.assoc_array_edit, ptr %edit, i32 0, i32 11
  %arrayidx28 = getelementptr %struct.assoc_array_edit, ptr %edit, i32 0, i32 10, i32 0
  %10 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx28, align 4
  %tobool29.not = icmp eq ptr %11, null
  br i1 %tobool29.not, label %do.end22.for.inc34_crit_edge, label %if.then30

do.end22.for.inc34_crit_edge:                     ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc34

if.then30:                                        ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %set_backpointers_to to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_backpointers_to, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %11, align 4
  br label %for.inc34

for.inc34:                                        ; preds = %if.then30, %do.end22.for.inc34_crit_edge
  %arrayidx28.1 = getelementptr %struct.assoc_array_edit, ptr %edit, i32 0, i32 10, i32 1
  %15 = ptrtoint ptr %arrayidx28.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx28.1, align 4
  %tobool29.not.1 = icmp eq ptr %16, null
  br i1 %tobool29.not.1, label %for.inc34.for.inc34.1_crit_edge, label %if.then30.1

for.inc34.for.inc34.1_crit_edge:                  ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc34.1

if.then30.1:                                      ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %set_backpointers_to to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_backpointers_to, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %16, align 4
  br label %for.inc34.1

for.inc34.1:                                      ; preds = %if.then30.1, %for.inc34.for.inc34.1_crit_edge
  %arrayidx28.2 = getelementptr %struct.assoc_array_edit, ptr %edit, i32 0, i32 10, i32 2
  %20 = ptrtoint ptr %arrayidx28.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx28.2, align 4
  %tobool29.not.2 = icmp eq ptr %21, null
  br i1 %tobool29.not.2, label %for.inc34.1.for.inc34.2_crit_edge, label %if.then30.2

for.inc34.1.for.inc34.2_crit_edge:                ; preds = %for.inc34.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc34.2

if.then30.2:                                      ; preds = %for.inc34.1
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %set_backpointers_to to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_backpointers_to, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %21, align 4
  br label %for.inc34.2

for.inc34.2:                                      ; preds = %if.then30.2, %for.inc34.1.for.inc34.2_crit_edge
  %arrayidx28.3 = getelementptr %struct.assoc_array_edit, ptr %edit, i32 0, i32 10, i32 3
  %25 = ptrtoint ptr %arrayidx28.3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx28.3, align 4
  %tobool29.not.3 = icmp eq ptr %26, null
  br i1 %tobool29.not.3, label %for.inc34.2.for.inc34.3_crit_edge, label %if.then30.3

for.inc34.2.for.inc34.3_crit_edge:                ; preds = %for.inc34.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc34.3

if.then30.3:                                      ; preds = %for.inc34.2
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %set_backpointers_to to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %set_backpointers_to, align 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %26, align 4
  br label %for.inc34.3

for.inc34.3:                                      ; preds = %if.then30.3, %for.inc34.2.for.inc34.3_crit_edge
  %arrayidx28.4 = getelementptr %struct.assoc_array_edit, ptr %edit, i32 0, i32 10, i32 4
  %30 = ptrtoint ptr %arrayidx28.4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx28.4, align 4
  %tobool29.not.4 = icmp eq ptr %31, null
  br i1 %tobool29.not.4, label %for.inc34.3.for.inc34.4_crit_edge, label %if.then30.4

for.inc34.3.for.inc34.4_crit_edge:                ; preds = %for.inc34.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc34.4

if.then30.4:                                      ; preds = %for.inc34.3
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %set_backpointers_to to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %set_backpointers_to, align 4
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %31, align 4
  br label %for.inc34.4

for.inc34.4:                                      ; preds = %if.then30.4, %for.inc34.3.for.inc34.4_crit_edge
  %arrayidx28.5 = getelementptr %struct.assoc_array_edit, ptr %edit, i32 0, i32 10, i32 5
  %35 = ptrtoint ptr %arrayidx28.5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx28.5, align 4
  %tobool29.not.5 = icmp eq ptr %36, null
  br i1 %tobool29.not.5, label %for.inc34.4.for.inc34.5_crit_edge, label %if.then30.5

for.inc34.4.for.inc34.5_crit_edge:                ; preds = %for.inc34.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc34.5

if.then30.5:                                      ; preds = %for.inc34.4
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %set_backpointers_to to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %set_backpointers_to, align 4
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %36, align 4
  br label %for.inc34.5

for.inc34.5:                                      ; preds = %if.then30.5, %for.inc34.4.for.inc34.5_crit_edge
  %arrayidx28.6 = getelementptr %struct.assoc_array_edit, ptr %edit, i32 0, i32 10, i32 6
  %40 = ptrtoint ptr %arrayidx28.6 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx28.6, align 4
  %tobool29.not.6 = icmp eq ptr %41, null
  br i1 %tobool29.not.6, label %for.inc34.5.for.inc34.6_crit_edge, label %if.then30.6

for.inc34.5.for.inc34.6_crit_edge:                ; preds = %for.inc34.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc34.6

if.then30.6:                                      ; preds = %for.inc34.5
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %set_backpointers_to to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %set_backpointers_to, align 4
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %41, align 4
  br label %for.inc34.6

for.inc34.6:                                      ; preds = %if.then30.6, %for.inc34.5.for.inc34.6_crit_edge
  %arrayidx28.7 = getelementptr %struct.assoc_array_edit, ptr %edit, i32 0, i32 10, i32 7
  %45 = ptrtoint ptr %arrayidx28.7 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx28.7, align 4
  %tobool29.not.7 = icmp eq ptr %46, null
  br i1 %tobool29.not.7, label %for.inc34.6.for.inc34.7_crit_edge, label %if.then30.7

for.inc34.6.for.inc34.7_crit_edge:                ; preds = %for.inc34.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc34.7

if.then30.7:                                      ; preds = %for.inc34.6
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %set_backpointers_to to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %set_backpointers_to, align 4
  %49 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %46, align 4
  br label %for.inc34.7

for.inc34.7:                                      ; preds = %if.then30.7, %for.inc34.6.for.inc34.7_crit_edge
  %arrayidx28.8 = getelementptr %struct.assoc_array_edit, ptr %edit, i32 0, i32 10, i32 8
  %50 = ptrtoint ptr %arrayidx28.8 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx28.8, align 4
  %tobool29.not.8 = icmp eq ptr %51, null
  br i1 %tobool29.not.8, label %for.inc34.7.for.inc34.8_crit_edge, label %if.then30.8

for.inc34.7.for.inc34.8_crit_edge:                ; preds = %for.inc34.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc34.8

if.then30.8:                                      ; preds = %for.inc34.7
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %set_backpointers_to to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %set_backpointers_to, align 4
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %51, align 4
  br label %for.inc34.8

for.inc34.8:                                      ; preds = %if.then30.8, %for.inc34.7.for.inc34.8_crit_edge
  %arrayidx28.9 = getelementptr %struct.assoc_array_edit, ptr %edit, i32 0, i32 10, i32 9
  %55 = ptrtoint ptr %arrayidx28.9 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx28.9, align 4
  %tobool29.not.9 = icmp eq ptr %56, null
  br i1 %tobool29.not.9, label %for.inc34.8.for.inc34.9_crit_edge, label %if.then30.9

for.inc34.8.for.inc34.9_crit_edge:                ; preds = %for.inc34.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc34.9

if.then30.9:                                      ; preds = %for.inc34.8
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %set_backpointers_to to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %set_backpointers_to, align 4
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %56, align 4
  br label %for.inc34.9

for.inc34.9:                                      ; preds = %if.then30.9, %for.inc34.8.for.inc34.9_crit_edge
  %arrayidx28.10 = getelementptr %struct.assoc_array_edit, ptr %edit, i32 0, i32 10, i32 10
  %60 = ptrtoint ptr %arrayidx28.10 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx28.10, align 4
  %tobool29.not.10 = icmp eq ptr %61, null
  br i1 %tobool29.not.10, label %for.inc34.9.for.inc34.10_crit_edge, label %if.then30.10

for.inc34.9.for.inc34.10_crit_edge:               ; preds = %for.inc34.9
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc34.10

if.then30.10:                                     ; preds = %for.inc34.9
  call void @__sanitizer_cov_trace_pc() #7
  %62 = ptrtoint ptr %set_backpointers_to to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %set_backpointers_to, align 4
  %64 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %63, ptr %61, align 4
  br label %for.inc34.10

for.inc34.10:                                     ; preds = %if.then30.10, %for.inc34.9.for.inc34.10_crit_edge
  %arrayidx28.11 = getelementptr %struct.assoc_array_edit, ptr %edit, i32 0, i32 10, i32 11
  %65 = ptrtoint ptr %arrayidx28.11 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx28.11, align 4
  %tobool29.not.11 = icmp eq ptr %66, null
  br i1 %tobool29.not.11, label %for.inc34.10.for.inc34.11_crit_edge, label %if.then30.11

for.inc34.10.for.inc34.11_crit_edge:              ; preds = %for.inc34.10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc34.11

if.then30.11:                                     ; preds = %for.inc34.10
  call void @__sanitizer_cov_trace_pc() #7
  %67 = ptrtoint ptr %set_backpointers_to to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %set_backpointers_to, align 4
  %69 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %68, ptr %66, align 4
  br label %for.inc34.11

for.inc34.11:                                     ; preds = %if.then30.11, %for.inc34.10.for.inc34.11_crit_edge
  %arrayidx28.12 = getelementptr %struct.assoc_array_edit, ptr %edit, i32 0, i32 10, i32 12
  %70 = ptrtoint ptr %arrayidx28.12 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx28.12, align 4
  %tobool29.not.12 = icmp eq ptr %71, null
  br i1 %tobool29.not.12, label %for.inc34.11.for.inc34.12_crit_edge, label %if.then30.12

for.inc34.11.for.inc34.12_crit_edge:              ; preds = %for.inc34.11
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc34.12

if.then30.12:                                     ; preds = %for.inc34.11
  call void @__sanitizer_cov_trace_pc() #7
  %72 = ptrtoint ptr %set_backpointers_to to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %set_backpointers_to, align 4
  %74 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %73, ptr %71, align 4
  br label %for.inc34.12

for.inc34.12:                                     ; preds = %if.then30.12, %for.inc34.11.for.inc34.12_crit_edge
  %arrayidx28.13 = getelementptr %struct.assoc_array_edit, ptr %edit, i32 0, i32 10, i32 13
  %75 = ptrtoint ptr %arrayidx28.13 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx28.13, align 4
  %tobool29.not.13 = icmp eq ptr %76, null
  br i1 %tobool29.not.13, label %for.inc34.12.for.inc34.13_crit_edge, label %if.then30.13

for.inc34.12.for.inc34.13_crit_edge:              ; preds = %for.inc34.12
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc34.13

if.then30.13:                                     ; preds = %for.inc34.12
  call void @__sanitizer_cov_trace_pc() #7
  %77 = ptrtoint ptr %set_backpointers_to to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %set_backpointers_to, align 4
  %79 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %78, ptr %76, align 4
  br label %for.inc34.13

for.inc34.13:                                     ; preds = %if.then30.13, %for.inc34.12.for.inc34.13_crit_edge
  %arrayidx28.14 = getelementptr %struct.assoc_array_edit, ptr %edit, i32 0, i32 10, i32 14
  %80 = ptrtoint ptr %arrayidx28.14 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx28.14, align 4
  %tobool29.not.14 = icmp eq ptr %81, null
  br i1 %tobool29.not.14, label %for.inc34.13.for.inc34.14_crit_edge, label %if.then30.14

for.inc34.13.for.inc34.14_crit_edge:              ; preds = %for.inc34.13
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc34.14

if.then30.14:                                     ; preds = %for.inc34.13
  call void @__sanitizer_cov_trace_pc() #7
  %82 = ptrtoint ptr %set_backpointers_to to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %set_backpointers_to, align 4
  %84 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %83, ptr %81, align 4
  br label %for.inc34.14

for.inc34.14:                                     ; preds = %if.then30.14, %for.inc34.13.for.inc34.14_crit_edge
  %arrayidx28.15 = getelementptr %struct.assoc_array_edit, ptr %edit, i32 0, i32 10, i32 15
  %85 = ptrtoint ptr %arrayidx28.15 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx28.15, align 4
  %tobool29.not.15 = icmp eq ptr %86, null
  br i1 %tobool29.not.15, label %for.inc34.14.for.inc34.15_crit_edge, label %if.then30.15

for.inc34.14.for.inc34.15_crit_edge:              ; preds = %for.inc34.14
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc34.15

if.then30.15:                                     ; preds = %for.inc34.14
  call void @__sanitizer_cov_trace_pc() #7
  %87 = ptrtoint ptr %set_backpointers_to to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %set_backpointers_to, align 4
  %89 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %88, ptr %86, align 4
  br label %for.inc34.15

for.inc34.15:                                     ; preds = %if.then30.15, %for.inc34.14.for.inc34.15_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !38
  %arrayidx46 = getelementptr %struct.assoc_array_edit, ptr %edit, i32 0, i32 14, i32 0
  %90 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx46, align 4
  %tobool48.not = icmp eq ptr %91, null
  br i1 %tobool48.not, label %for.inc34.15.for.inc57_crit_edge, label %if.then49

for.inc34.15.for.inc57_crit_edge:                 ; preds = %for.inc34.15
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc57

if.then49:                                        ; preds = %for.inc34.15
  call void @__sanitizer_cov_trace_pc() #7
  %to52 = getelementptr %struct.assoc_array_edit, ptr %edit, i32 0, i32 14, i32 0, i32 1
  %92 = ptrtoint ptr %to52 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %to52, align 4
  %94 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %93, ptr %91, align 4
  br label %for.inc57

for.inc57:                                        ; preds = %if.then49, %for.inc34.15.for.inc57_crit_edge
  %arrayidx46.1 = getelementptr %struct.assoc_array_edit, ptr %edit, i32 0, i32 14, i32 1
  %95 = ptrtoint ptr %arrayidx46.1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx46.1, align 4
  %tobool48.not.1 = icmp eq ptr %96, null
  br i1 %tobool48.not.1, label %for.inc57.for.inc57.1_crit_edge, label %if.then49.1

for.inc57.for.inc57.1_crit_edge:                  ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc57.1

if.then49.1:                                      ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #7
  %to52.1 = getelementptr %struct.assoc_array_edit, ptr %edit, i32 0, i32 14, i32 1, i32 1
  %97 = ptrtoint ptr %to52.1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %to52.1, align 4
  %99 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %98, ptr %96, align 4
  br label %for.inc57.1

for.inc57.1:                                      ; preds = %if.then49.1, %for.inc57.for.inc57.1_crit_edge
  %array = getelementptr inbounds %struct.assoc_array_edit, ptr %edit, i32 0, i32 1
  %100 = ptrtoint ptr %array to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %array, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 4
  %cmp60 = icmp eq ptr %103, null
  br i1 %cmp60, label %if.then61, label %if.else

if.then61:                                        ; preds = %for.inc57.1
  call void @__sanitizer_cov_trace_pc() #7
  %nr_leaves_on_tree = getelementptr inbounds %struct.assoc_array, ptr %101, i32 0, i32 1
  %104 = ptrtoint ptr %nr_leaves_on_tree to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %nr_leaves_on_tree, align 4
  br label %if.end99

if.else:                                          ; preds = %for.inc57.1
  %adjust_count_on = getelementptr inbounds %struct.assoc_array_edit, ptr %edit, i32 0, i32 12
  %105 = ptrtoint ptr %adjust_count_on to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %adjust_count_on, align 4
  %tobool63.not = icmp eq ptr %106, null
  br i1 %tobool63.not, label %if.else.if.end99_crit_edge, label %for.cond66.preheader

if.else.if.end99_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end99

for.cond66.preheader:                             ; preds = %if.else
  %adjust_count_by = getelementptr inbounds %struct.assoc_array_edit, ptr %edit, i32 0, i32 13
  %107 = ptrtoint ptr %adjust_count_by to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %adjust_count_by, align 4
  %nr_leaves_on_branch150 = getelementptr inbounds %struct.assoc_array_node, ptr %106, i32 0, i32 3
  %109 = ptrtoint ptr %nr_leaves_on_branch150 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %nr_leaves_on_branch150, align 4
  %add151 = add i32 %110, %108
  store i32 %add151, ptr %nr_leaves_on_branch150, align 4
  %111 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %106, align 4
  %tobool67.not152 = icmp eq ptr %112, null
  br i1 %tobool67.not152, label %for.cond66.preheader.for.end93_crit_edge, label %for.cond66.preheader.if.end69_crit_edge

for.cond66.preheader.if.end69_crit_edge:          ; preds = %for.cond66.preheader
  br label %if.end69

for.cond66.preheader.for.end93_crit_edge:         ; preds = %for.cond66.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end93

if.end69:                                         ; preds = %do.end91.if.end69_crit_edge, %for.cond66.preheader.if.end69_crit_edge
  %113 = phi ptr [ %124, %do.end91.if.end69_crit_edge ], [ %112, %for.cond66.preheader.if.end69_crit_edge ]
  %114 = ptrtoint ptr %113 to i32
  %and.i = and i32 %114, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end69.do.body77_crit_edge, label %if.then70

if.end69.do.body77_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body77

if.then70:                                        ; preds = %if.end69
  %and.i.i = and i32 %114, -4
  %115 = inttoptr i32 %and.i.i to ptr
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %115, align 4
  %tobool73.not = icmp eq ptr %117, null
  br i1 %tobool73.not, label %if.then70.for.end93_crit_edge, label %if.then70.do.body77_crit_edge

if.then70.for.end93_crit_edge:                    ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end93

if.then70.do.body77_crit_edge:                    ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #7
  %.pre = ptrtoint ptr %117 to i32
  br label %do.body77

do.body77:                                        ; preds = %if.then70.do.body77_crit_edge, %if.end69.do.body77_crit_edge
  %.pre-phi = phi i32 [ %.pre, %if.then70.do.body77_crit_edge ], [ %114, %if.end69.do.body77_crit_edge ]
  %and.i.i144 = and i32 %.pre-phi, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i144)
  %tobool.i.not.i = icmp eq i32 %and.i.i144, 0
  br i1 %tobool.i.not.i, label %do.end91, label %do.body83, !prof !10

do.body83:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1389, 0\0A.popsection", ""() #8, !srcloc !39
  unreachable

do.end91:                                         ; preds = %do.body77
  %and.i.i145 = and i32 %.pre-phi, -4
  %118 = inttoptr i32 %and.i.i145 to ptr
  %119 = ptrtoint ptr %adjust_count_by to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %adjust_count_by, align 4
  %nr_leaves_on_branch = getelementptr inbounds %struct.assoc_array_node, ptr %118, i32 0, i32 3
  %121 = ptrtoint ptr %nr_leaves_on_branch to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %nr_leaves_on_branch, align 4
  %add = add i32 %122, %120
  store i32 %add, ptr %nr_leaves_on_branch, align 4
  %123 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %118, align 4
  %tobool67.not = icmp eq ptr %124, null
  br i1 %tobool67.not, label %do.end91.for.end93_crit_edge, label %do.end91.if.end69_crit_edge

do.end91.if.end69_crit_edge:                      ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

do.end91.for.end93_crit_edge:                     ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end93

for.end93:                                        ; preds = %do.end91.for.end93_crit_edge, %if.then70.for.end93_crit_edge, %for.cond66.preheader.for.end93_crit_edge
  %125 = ptrtoint ptr %adjust_count_by to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %adjust_count_by, align 4
  %127 = ptrtoint ptr %array to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %array, align 4
  %nr_leaves_on_tree96 = getelementptr inbounds %struct.assoc_array, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %nr_leaves_on_tree96 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %nr_leaves_on_tree96, align 4
  %add97 = add i32 %130, %126
  store i32 %add97, ptr %nr_leaves_on_tree96, align 4
  br label %if.end99

if.end99:                                         ; preds = %for.end93, %if.else.if.end99_crit_edge, %if.then61
  tail call void @call_rcu(ptr noundef %edit, ptr noundef nonnull @assoc_array_rcu_cleanup) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @assoc_array_rcu_cleanup(ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %dead_leaf = getelementptr inbounds %struct.assoc_array_edit, ptr %head, i32 0, i32 6
  %0 = ptrtoint ptr %dead_leaf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dead_leaf, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ops = getelementptr inbounds %struct.assoc_array_edit, ptr %head, i32 0, i32 2
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %free_object = getelementptr inbounds %struct.assoc_array_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %free_object to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %free_object, align 4
  %6 = ptrtoint ptr %1 to i32
  %and.i = and i32 %6, -2
  %7 = inttoptr i32 %and.i to ptr
  tail call void %5(ptr noundef %7) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %excised_meta = getelementptr inbounds %struct.assoc_array_edit, ptr %head, i32 0, i32 8
  %8 = ptrtoint ptr %excised_meta to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %excised_meta, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %if.end.for.end_crit_edge, label %if.then4

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %9 to i32
  %and.i.i = and i32 %10, -4
  %11 = inttoptr i32 %and.i.i to ptr
  tail call void @kfree(ptr noundef %11) #8
  br label %for.end

for.end:                                          ; preds = %if.then4, %if.end.for.end_crit_edge
  %excised_subtree = getelementptr inbounds %struct.assoc_array_edit, ptr %head, i32 0, i32 9
  %12 = ptrtoint ptr %excised_subtree to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %excised_subtree, align 4
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %for.end.if.end33_crit_edge, label %do.body

for.end.if.end33_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

do.body:                                          ; preds = %for.end
  %14 = ptrtoint ptr %13 to i32
  %and.i.i51 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i51)
  %tobool.i.not.i = icmp eq i32 %and.i.i51, 0
  br i1 %tobool.i.not.i, label %do.body16, label %do.end22, !prof !8

do.body16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1315, 0\0A.popsection", ""() #8, !srcloc !40
  unreachable

do.end22:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %and.i.i54 = and i32 %14, -4
  %15 = inttoptr i32 %and.i.i54 to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %15, align 4
  %17 = ptrtoint ptr %excised_subtree to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %excised_subtree, align 4
  %ops_for_excised_subtree = getelementptr inbounds %struct.assoc_array_edit, ptr %head, i32 0, i32 3
  %19 = ptrtoint ptr %ops_for_excised_subtree to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops_for_excised_subtree, align 4
  tail call fastcc void @assoc_array_destroy_subtree(ptr noundef %18, ptr noundef %20)
  br label %if.end33

if.end33:                                         ; preds = %do.end22, %for.end.if.end33_crit_edge
  tail call void @kfree(ptr noundef %head) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @assoc_array_gc(ptr noundef %array, ptr noundef %ops, ptr nocapture noundef readonly %iterator, ptr noundef %iterator_data) local_unnamed_addr #0 align 64 {
entry:
  %new_root = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_root)
  %0 = ptrtoint ptr %array to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %array, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup296_crit_edge, label %if.end

entry.cleanup296_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup296

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 172) #9
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup296_crit_edge, label %if.end3

if.end.cleanup296_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup296

if.end3:                                          ; preds = %if.end
  %array4 = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %array4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %array, ptr %array4, align 8
  %ops5 = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %ops5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ops, ptr %ops5, align 4
  %ops_for_excised_subtree = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %ops_for_excised_subtree to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ops, ptr %ops_for_excised_subtree, align 8
  %set = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 14
  %6 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %array, ptr %set, align 8
  %7 = ptrtoint ptr %array to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %array, align 4
  %excised_subtree = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 9
  %9 = ptrtoint ptr %excised_subtree to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %excised_subtree, align 8
  %10 = ptrtoint ptr %new_root to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %new_root, align 4
  br label %descend

descend:                                          ; preds = %if.end46, %if.end3
  %new_ptr_pp.0 = phi ptr [ %new_root, %if.end3 ], [ %arrayidx48, %if.end46 ]
  %new_parent.0 = phi ptr [ null, %if.end3 ], [ %new_parent.2, %if.end46 ]
  %cursor.0 = phi ptr [ %8, %if.end3 ], [ %39, %if.end46 ]
  %11 = ptrtoint ptr %cursor.0 to i32
  %and.i = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %descend.if.end23_crit_edge, label %if.then11

descend.if.end23_crit_edge:                       ; preds = %descend
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then11:                                        ; preds = %descend
  %and.i.i = and i32 %11, -4
  %12 = inttoptr i32 %and.i.i to ptr
  %skip_to_level = getelementptr inbounds %struct.assoc_array_shortcut, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %skip_to_level to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %skip_to_level, align 4
  %sub = add i32 %14, -1
  %or = or i32 %sub, 31
  %add = add i32 %or, 1
  %shr = ashr exact i32 %add, 5
  %15 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %shr, i32 4) #8
  %16 = extractvalue { i32, i1 } %15, 1
  %17 = extractvalue { i32, i1 } %15, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %17, i32 16) #8
  %retval.0.i = select i1 %16, i32 -1, i32 %spec.select.i
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3264) #10
  %tobool15.not = icmp eq ptr %call9.i, null
  br i1 %tobool15.not, label %if.then11.enomem_crit_edge, label %if.end17

if.then11.enomem_crit_edge:                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %enomem

if.end17:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %18 = call ptr @memcpy(ptr %call9.i, ptr %12, i32 %retval.0.i)
  %19 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %new_parent.0, ptr %call9.i, align 128
  %parent_slot = getelementptr inbounds %struct.assoc_array_shortcut, ptr %12, i32 0, i32 1
  %20 = ptrtoint ptr %parent_slot to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %parent_slot, align 4
  %parent_slot20 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %call9.i, i32 0, i32 1
  %22 = ptrtoint ptr %parent_slot20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %parent_slot20, align 4
  %23 = ptrtoint ptr %call9.i to i32
  %or.i.i = or i32 %23, 3
  %24 = inttoptr i32 %or.i.i to ptr
  %25 = ptrtoint ptr %new_ptr_pp.0 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %new_ptr_pp.0, align 4
  %next_node = getelementptr inbounds %struct.assoc_array_shortcut, ptr %call9.i, i32 0, i32 3
  %next_node22 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %12, i32 0, i32 3
  %26 = ptrtoint ptr %next_node22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %next_node22, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end17, %descend.if.end23_crit_edge
  %new_ptr_pp.1 = phi ptr [ %next_node, %if.end17 ], [ %new_ptr_pp.0, %descend.if.end23_crit_edge ]
  %new_parent.1 = phi ptr [ %24, %if.end17 ], [ %new_parent.0, %descend.if.end23_crit_edge ]
  %cursor.1 = phi ptr [ %27, %if.end17 ], [ %cursor.0, %descend.if.end23_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i473 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 76) #9
  %tobool26.not = icmp eq ptr %call7.i.i473, null
  br i1 %tobool26.not, label %if.end23.enomem_crit_edge, label %if.end28

if.end23.enomem_crit_edge:                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %enomem

if.end28:                                         ; preds = %if.end23
  %29 = ptrtoint ptr %cursor.1 to i32
  %and.i.i471 = and i32 %29, -4
  %30 = inttoptr i32 %and.i.i471 to ptr
  %31 = ptrtoint ptr %call7.i.i473 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %new_parent.1, ptr %call7.i.i473, align 8
  %parent_slot31 = getelementptr inbounds %struct.assoc_array_node, ptr %30, i32 0, i32 1
  %32 = ptrtoint ptr %parent_slot31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %parent_slot31, align 4
  %parent_slot32 = getelementptr inbounds %struct.assoc_array_node, ptr %call7.i.i473, i32 0, i32 1
  %34 = ptrtoint ptr %parent_slot32 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %parent_slot32, align 4
  %35 = ptrtoint ptr %call7.i.i473 to i32
  %or.i.i474 = or i32 %35, 1
  %36 = inttoptr i32 %or.i.i474 to ptr
  %37 = ptrtoint ptr %new_ptr_pp.1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %new_ptr_pp.1, align 4
  br label %continue_node

continue_node:                                    ; preds = %do.end288, %if.end28
  %slot.0 = phi i32 [ 0, %if.end28 ], [ %inc290, %do.end288 ]
  %new_parent.2 = phi ptr [ %36, %if.end28 ], [ %new_parent.5, %do.end288 ]
  %new_n.0 = phi ptr [ %call7.i.i473, %if.end28 ], [ %new_n.1, %do.end288 ]
  %node.0 = phi ptr [ %30, %if.end28 ], [ %160, %do.end288 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %slot.0)
  %cmp550 = icmp slt i32 %slot.0, 16
  br i1 %cmp550, label %continue_node.for.body_crit_edge, label %continue_node.for.end_crit_edge

continue_node.for.end_crit_edge:                  ; preds = %continue_node
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

continue_node.for.body_crit_edge:                 ; preds = %continue_node
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %continue_node.for.body_crit_edge
  %slot.1551 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %slot.0, %continue_node.for.body_crit_edge ]
  %arrayidx34 = getelementptr %struct.assoc_array_node, ptr %node.0, i32 0, i32 2, i32 %slot.1551
  %38 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx34, align 4
  %tobool35.not = icmp eq ptr %39, null
  br i1 %tobool35.not, label %for.body.for.inc_crit_edge, label %if.end37

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end37:                                         ; preds = %for.body
  %40 = ptrtoint ptr %39 to i32
  %and.i.i475 = and i32 %40, 1
  %tobool.i.not.i = icmp eq i32 %and.i.i475, 0
  br i1 %tobool.i.not.i, label %if.then39, label %if.end46

if.then39:                                        ; preds = %if.end37
  %and.i476 = and i32 %40, -2
  %41 = inttoptr i32 %and.i476 to ptr
  %call41 = tail call zeroext i1 %iterator(ptr noundef %41, ptr noundef %iterator_data) #8
  br i1 %call41, label %if.then42, label %if.then39.for.inc_crit_edge

if.then39.for.inc_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then42:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx44 = getelementptr %struct.assoc_array_node, ptr %new_n.0, i32 0, i32 2, i32 %slot.1551
  %42 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %arrayidx44, align 4
  br label %for.inc

if.end46:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx48 = getelementptr %struct.assoc_array_node, ptr %new_n.0, i32 0, i32 2, i32 %slot.1551
  br label %descend

for.inc:                                          ; preds = %if.then42, %if.then39.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add i32 %slot.1551, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %continue_node.for.end_crit_edge
  %nr_leaves_on_branch = getelementptr inbounds %struct.assoc_array_node, ptr %new_n.0, i32 0, i32 3
  %43 = ptrtoint ptr %nr_leaves_on_branch to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %nr_leaves_on_branch, align 4
  br label %for.body52

for.body52:                                       ; preds = %for.inc64.for.body52_crit_edge, %for.end
  %slot.2554 = phi i32 [ 0, %for.end ], [ %inc65, %for.inc64.for.body52_crit_edge ]
  %nr_free.0553 = phi i32 [ 0, %for.end ], [ %nr_free.1, %for.inc64.for.body52_crit_edge ]
  %arrayidx54 = getelementptr %struct.assoc_array_node, ptr %new_n.0, i32 0, i32 2, i32 %slot.2554
  %44 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx54, align 4
  %tobool55.not = icmp eq ptr %45, null
  br i1 %tobool55.not, label %if.then56, label %if.else

if.then56:                                        ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #7
  %inc57 = add i32 %nr_free.0553, 1
  br label %for.inc64

if.else:                                          ; preds = %for.body52
  %46 = ptrtoint ptr %45 to i32
  %and.i.i477 = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i477)
  %tobool.i.not.i478 = icmp eq i32 %and.i.i477, 0
  br i1 %tobool.i.not.i478, label %if.then59, label %if.else.for.inc64_crit_edge

if.else.for.inc64_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc64

if.then59:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %nr_leaves_on_branch to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nr_leaves_on_branch, align 4
  %inc61 = add i32 %48, 1
  store i32 %inc61, ptr %nr_leaves_on_branch, align 4
  br label %for.inc64

for.inc64:                                        ; preds = %if.then59, %if.else.for.inc64_crit_edge, %if.then56
  %nr_free.1 = phi i32 [ %nr_free.0553, %if.then59 ], [ %nr_free.0553, %if.else.for.inc64_crit_edge ], [ %inc57, %if.then56 ]
  %inc65 = add nuw nsw i32 %slot.2554, 1
  %exitcond590.not = icmp eq i32 %inc65, 16
  br i1 %exitcond590.not, label %for.inc64.for.body70_crit_edge, label %for.inc64.for.body52_crit_edge

for.inc64.for.body52_crit_edge:                   ; preds = %for.inc64
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body52

for.inc64.for.body70_crit_edge:                   ; preds = %for.inc64
  br label %for.body70

for.body70:                                       ; preds = %cleanup165.for.body70_crit_edge, %for.inc64.for.body70_crit_edge
  %slot.3560 = phi i32 [ %inc170, %cleanup165.for.body70_crit_edge ], [ 0, %for.inc64.for.body70_crit_edge ]
  %next_slot.0559 = phi i32 [ %next_slot.6, %cleanup165.for.body70_crit_edge ], [ 0, %for.inc64.for.body70_crit_edge ]
  %nr_free.2558 = phi i32 [ %nr_free.6, %cleanup165.for.body70_crit_edge ], [ %nr_free.1, %for.inc64.for.body70_crit_edge ]
  %arrayidx72 = getelementptr %struct.assoc_array_node, ptr %new_n.0, i32 0, i32 2, i32 %slot.3560
  %49 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx72, align 4
  %tobool73.not = icmp eq ptr %50, null
  br i1 %tobool73.not, label %for.body70.cleanup165_crit_edge, label %lor.lhs.false

for.body70.cleanup165_crit_edge:                  ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup165

lor.lhs.false:                                    ; preds = %for.body70
  %51 = ptrtoint ptr %50 to i32
  %and.i.i479 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i479)
  %tobool.i.not.i480 = icmp eq i32 %and.i.i479, 0
  br i1 %tobool.i.not.i480, label %lor.lhs.false.cleanup165_crit_edge, label %if.end76

lor.lhs.false.cleanup165_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup165

if.end76:                                         ; preds = %lor.lhs.false
  %and.i481 = and i32 %51, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i481)
  %tobool.i482.not = icmp eq i32 %and.i481, 0
  br i1 %tobool.i482.not, label %if.end76.if.end81_crit_edge, label %if.then78

if.end76.if.end81_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end81

if.then78:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  %and.i.i483 = and i32 %51, -4
  %52 = inttoptr i32 %and.i.i483 to ptr
  %next_node80 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %next_node80 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %next_node80, align 4
  %.pre = ptrtoint ptr %54 to i32
  br label %if.end81

if.end81:                                         ; preds = %if.then78, %if.end76.if.end81_crit_edge
  %.pre-phi = phi i32 [ %.pre, %if.then78 ], [ %51, %if.end76.if.end81_crit_edge ]
  %s.0 = phi ptr [ %52, %if.then78 ], [ null, %if.end76.if.end81_crit_edge ]
  %and.i.i484 = and i32 %.pre-phi, -4
  %55 = inttoptr i32 %and.i.i484 to ptr
  %nr_leaves_on_branch83 = getelementptr inbounds %struct.assoc_array_node, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %nr_leaves_on_branch83 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nr_leaves_on_branch83, align 4
  %58 = ptrtoint ptr %nr_leaves_on_branch to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %nr_leaves_on_branch, align 4
  %add85 = add i32 %59, %57
  store i32 %add85, ptr %nr_leaves_on_branch, align 4
  %60 = load i32, ptr %nr_leaves_on_branch83, align 4
  %add87 = add i32 %nr_free.2558, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %add87)
  %cmp88.not = icmp ugt i32 %60, %add87
  br i1 %cmp88.not, label %if.end81.cleanup165_crit_edge, label %if.then89

if.end81.cleanup165_crit_edge:                    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup165

if.then89:                                        ; preds = %if.end81
  %tobool91.not = icmp eq ptr %s.0, null
  br i1 %tobool91.not, label %do.end101, label %do.body95, !prof !10

do.body95:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1583, 0\0A.popsection", ""() #8, !srcloc !41
  unreachable

do.end101:                                        ; preds = %if.then89
  %61 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %arrayidx72, align 4
  %62 = tail call i32 @llvm.smin.i32(i32 %slot.3560, i32 %next_slot.0559)
  br label %for.body110

for.body110:                                      ; preds = %cleanup.for.body110_crit_edge, %do.end101
  %i.0557 = phi i32 [ 0, %do.end101 ], [ %inc160, %cleanup.for.body110_crit_edge ]
  %next_slot.2556 = phi i32 [ %62, %do.end101 ], [ %next_slot.4, %cleanup.for.body110_crit_edge ]
  %nr_free.3555 = phi i32 [ %add87, %do.end101 ], [ %nr_free.4, %cleanup.for.body110_crit_edge ]
  %arrayidx112 = getelementptr %struct.assoc_array_node, ptr %55, i32 0, i32 2, i32 %i.0557
  %63 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx112, align 4
  %tobool113.not = icmp eq ptr %64, null
  br i1 %tobool113.not, label %for.body110.cleanup_crit_edge, label %do.body116

for.body110.cleanup_crit_edge:                    ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body116:                                       ; preds = %for.body110
  %65 = ptrtoint ptr %64 to i32
  %and.i485 = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i485)
  %tobool.i486.not = icmp eq i32 %and.i485, 0
  br i1 %tobool.i486.not, label %do.body116.while.cond_crit_edge, label %do.body125, !prof !10

do.body116.while.cond_crit_edge:                  ; preds = %do.body116
  br label %while.cond

do.body125:                                       ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1593, 0\0A.popsection", ""() #8, !srcloc !42
  unreachable

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %do.body116.while.cond_crit_edge
  %next_slot.3 = phi i32 [ %inc137, %while.cond.while.cond_crit_edge ], [ %next_slot.2556, %do.body116.while.cond_crit_edge ]
  %arrayidx135 = getelementptr %struct.assoc_array_node, ptr %new_n.0, i32 0, i32 2, i32 %next_slot.3
  %66 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx135, align 4
  %tobool136.not = icmp eq ptr %67, null
  %inc137 = add i32 %next_slot.3, 1
  br i1 %tobool136.not, label %do.body138, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

do.body138:                                       ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %next_slot.3)
  %cmp139 = icmp sgt i32 %next_slot.3, 15
  br i1 %cmp139, label %do.body147, label %do.end155, !prof !8

do.body147:                                       ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1596, 0\0A.popsection", ""() #8, !srcloc !43
  unreachable

do.end155:                                        ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #7
  %68 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %64, ptr %arrayidx135, align 4
  %dec = add i32 %nr_free.3555, -1
  br label %cleanup

cleanup:                                          ; preds = %do.end155, %for.body110.cleanup_crit_edge
  %nr_free.4 = phi i32 [ %dec, %do.end155 ], [ %nr_free.3555, %for.body110.cleanup_crit_edge ]
  %next_slot.4 = phi i32 [ %inc137, %do.end155 ], [ %next_slot.2556, %for.body110.cleanup_crit_edge ]
  %inc160 = add nuw nsw i32 %i.0557, 1
  %exitcond591.not = icmp eq i32 %inc160, 16
  br i1 %exitcond591.not, label %for.end161, label %cleanup.for.body110_crit_edge

cleanup.for.body110_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body110

for.end161:                                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef %55) #8
  br label %cleanup165

cleanup165:                                       ; preds = %for.end161, %if.end81.cleanup165_crit_edge, %lor.lhs.false.cleanup165_crit_edge, %for.body70.cleanup165_crit_edge
  %nr_free.6 = phi i32 [ %nr_free.2558, %lor.lhs.false.cleanup165_crit_edge ], [ %nr_free.2558, %for.body70.cleanup165_crit_edge ], [ %nr_free.4, %for.end161 ], [ %nr_free.2558, %if.end81.cleanup165_crit_edge ]
  %next_slot.6 = phi i32 [ %next_slot.0559, %lor.lhs.false.cleanup165_crit_edge ], [ %next_slot.0559, %for.body70.cleanup165_crit_edge ], [ %next_slot.4, %for.end161 ], [ %next_slot.0559, %if.end81.cleanup165_crit_edge ]
  %inc170 = add nuw nsw i32 %slot.3560, 1
  %exitcond592.not = icmp eq i32 %inc170, 16
  br i1 %exitcond592.not, label %for.end171, label %cleanup165.for.body70_crit_edge

cleanup165.for.body70_crit_edge:                  ; preds = %cleanup165
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body70

for.end171:                                       ; preds = %cleanup165
  %69 = ptrtoint ptr %nr_leaves_on_branch to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %nr_leaves_on_branch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %nr_free.6)
  %cmp174 = icmp eq i32 %nr_free.6, 15
  br i1 %cmp174, label %for.body178.preheader, label %for.end171.if.end223_crit_edge

for.end171.if.end223_crit_edge:                   ; preds = %for.end171
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end223

for.body178.preheader:                            ; preds = %for.end171
  %arrayidx180 = getelementptr %struct.assoc_array_node, ptr %new_n.0, i32 0, i32 2, i32 0
  %71 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx180, align 4
  %tobool181.not = icmp eq ptr %72, null
  br i1 %tobool181.not, label %for.cond176, label %for.body178.preheader.for.end186_crit_edge

for.body178.preheader.for.end186_crit_edge:       ; preds = %for.body178.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end186

for.cond176:                                      ; preds = %for.body178.preheader
  %arrayidx180.1 = getelementptr %struct.assoc_array_node, ptr %new_n.0, i32 0, i32 2, i32 1
  %73 = ptrtoint ptr %arrayidx180.1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx180.1, align 4
  %tobool181.not.1 = icmp eq ptr %74, null
  br i1 %tobool181.not.1, label %for.cond176.1, label %for.cond176.for.end186_crit_edge

for.cond176.for.end186_crit_edge:                 ; preds = %for.cond176
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end186

for.cond176.1:                                    ; preds = %for.cond176
  %arrayidx180.2 = getelementptr %struct.assoc_array_node, ptr %new_n.0, i32 0, i32 2, i32 2
  %75 = ptrtoint ptr %arrayidx180.2 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx180.2, align 4
  %tobool181.not.2 = icmp eq ptr %76, null
  br i1 %tobool181.not.2, label %for.cond176.2, label %for.cond176.1.for.end186_crit_edge

for.cond176.1.for.end186_crit_edge:               ; preds = %for.cond176.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end186

for.cond176.2:                                    ; preds = %for.cond176.1
  %arrayidx180.3 = getelementptr %struct.assoc_array_node, ptr %new_n.0, i32 0, i32 2, i32 3
  %77 = ptrtoint ptr %arrayidx180.3 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx180.3, align 4
  %tobool181.not.3 = icmp eq ptr %78, null
  br i1 %tobool181.not.3, label %for.cond176.3, label %for.cond176.2.for.end186_crit_edge

for.cond176.2.for.end186_crit_edge:               ; preds = %for.cond176.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end186

for.cond176.3:                                    ; preds = %for.cond176.2
  %arrayidx180.4 = getelementptr %struct.assoc_array_node, ptr %new_n.0, i32 0, i32 2, i32 4
  %79 = ptrtoint ptr %arrayidx180.4 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx180.4, align 4
  %tobool181.not.4 = icmp eq ptr %80, null
  br i1 %tobool181.not.4, label %for.cond176.4, label %for.cond176.3.for.end186_crit_edge

for.cond176.3.for.end186_crit_edge:               ; preds = %for.cond176.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end186

for.cond176.4:                                    ; preds = %for.cond176.3
  %arrayidx180.5 = getelementptr %struct.assoc_array_node, ptr %new_n.0, i32 0, i32 2, i32 5
  %81 = ptrtoint ptr %arrayidx180.5 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx180.5, align 4
  %tobool181.not.5 = icmp eq ptr %82, null
  br i1 %tobool181.not.5, label %for.cond176.5, label %for.cond176.4.for.end186_crit_edge

for.cond176.4.for.end186_crit_edge:               ; preds = %for.cond176.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end186

for.cond176.5:                                    ; preds = %for.cond176.4
  %arrayidx180.6 = getelementptr %struct.assoc_array_node, ptr %new_n.0, i32 0, i32 2, i32 6
  %83 = ptrtoint ptr %arrayidx180.6 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx180.6, align 4
  %tobool181.not.6 = icmp eq ptr %84, null
  br i1 %tobool181.not.6, label %for.cond176.6, label %for.cond176.5.for.end186_crit_edge

for.cond176.5.for.end186_crit_edge:               ; preds = %for.cond176.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end186

for.cond176.6:                                    ; preds = %for.cond176.5
  %arrayidx180.7 = getelementptr %struct.assoc_array_node, ptr %new_n.0, i32 0, i32 2, i32 7
  %85 = ptrtoint ptr %arrayidx180.7 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx180.7, align 4
  %tobool181.not.7 = icmp eq ptr %86, null
  br i1 %tobool181.not.7, label %for.cond176.7, label %for.cond176.6.for.end186_crit_edge

for.cond176.6.for.end186_crit_edge:               ; preds = %for.cond176.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end186

for.cond176.7:                                    ; preds = %for.cond176.6
  %arrayidx180.8 = getelementptr %struct.assoc_array_node, ptr %new_n.0, i32 0, i32 2, i32 8
  %87 = ptrtoint ptr %arrayidx180.8 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx180.8, align 4
  %tobool181.not.8 = icmp eq ptr %88, null
  br i1 %tobool181.not.8, label %for.cond176.8, label %for.cond176.7.for.end186_crit_edge

for.cond176.7.for.end186_crit_edge:               ; preds = %for.cond176.7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end186

for.cond176.8:                                    ; preds = %for.cond176.7
  %arrayidx180.9 = getelementptr %struct.assoc_array_node, ptr %new_n.0, i32 0, i32 2, i32 9
  %89 = ptrtoint ptr %arrayidx180.9 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx180.9, align 4
  %tobool181.not.9 = icmp eq ptr %90, null
  br i1 %tobool181.not.9, label %for.cond176.9, label %for.cond176.8.for.end186_crit_edge

for.cond176.8.for.end186_crit_edge:               ; preds = %for.cond176.8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end186

for.cond176.9:                                    ; preds = %for.cond176.8
  %arrayidx180.10 = getelementptr %struct.assoc_array_node, ptr %new_n.0, i32 0, i32 2, i32 10
  %91 = ptrtoint ptr %arrayidx180.10 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx180.10, align 4
  %tobool181.not.10 = icmp eq ptr %92, null
  br i1 %tobool181.not.10, label %for.cond176.10, label %for.cond176.9.for.end186_crit_edge

for.cond176.9.for.end186_crit_edge:               ; preds = %for.cond176.9
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end186

for.cond176.10:                                   ; preds = %for.cond176.9
  %arrayidx180.11 = getelementptr %struct.assoc_array_node, ptr %new_n.0, i32 0, i32 2, i32 11
  %93 = ptrtoint ptr %arrayidx180.11 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx180.11, align 4
  %tobool181.not.11 = icmp eq ptr %94, null
  br i1 %tobool181.not.11, label %for.cond176.11, label %for.cond176.10.for.end186_crit_edge

for.cond176.10.for.end186_crit_edge:              ; preds = %for.cond176.10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end186

for.cond176.11:                                   ; preds = %for.cond176.10
  %arrayidx180.12 = getelementptr %struct.assoc_array_node, ptr %new_n.0, i32 0, i32 2, i32 12
  %95 = ptrtoint ptr %arrayidx180.12 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx180.12, align 4
  %tobool181.not.12 = icmp eq ptr %96, null
  br i1 %tobool181.not.12, label %for.cond176.12, label %for.cond176.11.for.end186_crit_edge

for.cond176.11.for.end186_crit_edge:              ; preds = %for.cond176.11
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end186

for.cond176.12:                                   ; preds = %for.cond176.11
  %arrayidx180.13 = getelementptr %struct.assoc_array_node, ptr %new_n.0, i32 0, i32 2, i32 13
  %97 = ptrtoint ptr %arrayidx180.13 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx180.13, align 4
  %tobool181.not.13 = icmp eq ptr %98, null
  br i1 %tobool181.not.13, label %for.cond176.13, label %for.cond176.12.for.end186_crit_edge

for.cond176.12.for.end186_crit_edge:              ; preds = %for.cond176.12
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end186

for.cond176.13:                                   ; preds = %for.cond176.12
  %arrayidx180.14 = getelementptr %struct.assoc_array_node, ptr %new_n.0, i32 0, i32 2, i32 14
  %99 = ptrtoint ptr %arrayidx180.14 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx180.14, align 4
  %tobool181.not.14 = icmp eq ptr %100, null
  br i1 %tobool181.not.14, label %for.cond176.14, label %for.cond176.13.for.end186_crit_edge

for.cond176.13.for.end186_crit_edge:              ; preds = %for.cond176.13
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end186

for.cond176.14:                                   ; preds = %for.cond176.13
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx180.15 = getelementptr %struct.assoc_array_node, ptr %new_n.0, i32 0, i32 2, i32 15
  %101 = ptrtoint ptr %arrayidx180.15 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx180.15, align 4
  br label %for.end186

for.end186:                                       ; preds = %for.cond176.14, %for.cond176.13.for.end186_crit_edge, %for.cond176.12.for.end186_crit_edge, %for.cond176.11.for.end186_crit_edge, %for.cond176.10.for.end186_crit_edge, %for.cond176.9.for.end186_crit_edge, %for.cond176.8.for.end186_crit_edge, %for.cond176.7.for.end186_crit_edge, %for.cond176.6.for.end186_crit_edge, %for.cond176.5.for.end186_crit_edge, %for.cond176.4.for.end186_crit_edge, %for.cond176.3.for.end186_crit_edge, %for.cond176.2.for.end186_crit_edge, %for.cond176.1.for.end186_crit_edge, %for.cond176.for.end186_crit_edge, %for.body178.preheader.for.end186_crit_edge
  %ptr.8 = phi ptr [ %72, %for.body178.preheader.for.end186_crit_edge ], [ %74, %for.cond176.for.end186_crit_edge ], [ %76, %for.cond176.1.for.end186_crit_edge ], [ %78, %for.cond176.2.for.end186_crit_edge ], [ %80, %for.cond176.3.for.end186_crit_edge ], [ %82, %for.cond176.4.for.end186_crit_edge ], [ %84, %for.cond176.5.for.end186_crit_edge ], [ %86, %for.cond176.6.for.end186_crit_edge ], [ %88, %for.cond176.7.for.end186_crit_edge ], [ %90, %for.cond176.8.for.end186_crit_edge ], [ %92, %for.cond176.9.for.end186_crit_edge ], [ %94, %for.cond176.10.for.end186_crit_edge ], [ %96, %for.cond176.11.for.end186_crit_edge ], [ %98, %for.cond176.12.for.end186_crit_edge ], [ %100, %for.cond176.13.for.end186_crit_edge ], [ %102, %for.cond176.14 ]
  %103 = ptrtoint ptr %ptr.8 to i32
  %104 = and i32 %103, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %104)
  %105 = icmp eq i32 %104, 3
  br i1 %105, label %if.then189, label %for.end186.if.end223_crit_edge

for.end186.if.end223_crit_edge:                   ; preds = %for.end186
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end223

if.then189:                                       ; preds = %for.end186
  %and.i.i491 = and i32 %103, -4
  %106 = inttoptr i32 %and.i.i491 to ptr
  %107 = ptrtoint ptr %new_n.0 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %new_n.0, align 4
  %parent_slot193 = getelementptr inbounds %struct.assoc_array_node, ptr %new_n.0, i32 0, i32 1
  %109 = ptrtoint ptr %parent_slot193 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %parent_slot193, align 4
  tail call void @kfree(ptr noundef %new_n.0) #8
  %tobool194.not = icmp eq ptr %108, null
  br i1 %tobool194.not, label %if.then195, label %if.end198

if.then195:                                       ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #7
  %111 = inttoptr i32 %and.i.i491 to ptr
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr null, ptr %111, align 4
  %parent_slot197 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %111, i32 0, i32 1
  %113 = ptrtoint ptr %parent_slot197 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %parent_slot197, align 4
  %114 = ptrtoint ptr %new_root to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %ptr.8, ptr %new_root, align 4
  br label %gc_complete

if.end198:                                        ; preds = %if.then189
  %conv = zext i8 %110 to i32
  %115 = ptrtoint ptr %108 to i32
  %and.i492 = and i32 %115, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i492)
  %tobool.i493.not = icmp eq i32 %and.i492, 0
  br i1 %tobool.i493.not, label %if.end198.if.end216_crit_edge, label %if.then200

if.end198.if.end216_crit_edge:                    ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end216

if.then200:                                       ; preds = %if.end198
  %and.i.i494 = and i32 %115, -4
  %116 = inttoptr i32 %and.i.i494 to ptr
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %116, align 4
  %119 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %118, ptr %106, align 4
  %parent_slot206 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %116, i32 0, i32 1
  %120 = ptrtoint ptr %parent_slot206 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %parent_slot206, align 4
  %parent_slot207 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %106, i32 0, i32 1
  %122 = ptrtoint ptr %parent_slot207 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %parent_slot207, align 4
  tail call void @kfree(ptr noundef %116) #8
  %tobool208.not = icmp eq ptr %118, null
  br i1 %tobool208.not, label %cleanup213, label %if.then200.if.end216_crit_edge

if.then200.if.end216_crit_edge:                   ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #7
  %.pre594 = ptrtoint ptr %118 to i32
  br label %if.end216

cleanup213:                                       ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #7
  %123 = inttoptr i32 %and.i.i491 to ptr
  %parent_slot207.le = getelementptr inbounds %struct.assoc_array_shortcut, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr null, ptr %123, align 4
  %125 = ptrtoint ptr %parent_slot207.le to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %parent_slot207.le, align 4
  %126 = ptrtoint ptr %new_root to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %ptr.8, ptr %new_root, align 4
  br label %gc_complete

if.end216:                                        ; preds = %if.then200.if.end216_crit_edge, %if.end198.if.end216_crit_edge
  %.pre-phi595 = phi i32 [ %.pre594, %if.then200.if.end216_crit_edge ], [ %115, %if.end198.if.end216_crit_edge ]
  %slot.5 = phi i32 [ %121, %if.then200.if.end216_crit_edge ], [ %conv, %if.end198.if.end216_crit_edge ]
  %new_parent.3 = phi ptr [ %118, %if.then200.if.end216_crit_edge ], [ %108, %if.end198.if.end216_crit_edge ]
  %127 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %new_parent.3, ptr %106, align 4
  %parent_slot218 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %106, i32 0, i32 1
  %128 = ptrtoint ptr %parent_slot218 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %slot.5, ptr %parent_slot218, align 4
  %and.i.i495 = and i32 %.pre-phi595, -4
  %129 = inttoptr i32 %and.i.i495 to ptr
  %arrayidx221 = getelementptr %struct.assoc_array_node, ptr %129, i32 0, i32 2, i32 %slot.5
  %130 = ptrtoint ptr %arrayidx221 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %ptr.8, ptr %arrayidx221, align 4
  br label %ascend_old_tree

if.end223:                                        ; preds = %for.end186.if.end223_crit_edge, %for.end171.if.end223_crit_edge
  %131 = ptrtoint ptr %new_n.0 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %new_n.0, align 4
  %tobool225.not = icmp eq ptr %132, null
  br i1 %tobool225.not, label %if.end223.gc_complete_crit_edge, label %if.end227

if.end223.gc_complete_crit_edge:                  ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #7
  br label %gc_complete

if.end227:                                        ; preds = %if.end223
  %133 = ptrtoint ptr %132 to i32
  %and.i496 = and i32 %133, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i496)
  %tobool.i497.not = icmp eq i32 %and.i496, 0
  br i1 %tobool.i497.not, label %if.end227.if.end254_crit_edge, label %if.then229

if.end227.if.end254_crit_edge:                    ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end254

if.then229:                                       ; preds = %if.end227
  %and.i.i498 = and i32 %133, -4
  %134 = inttoptr i32 %and.i.i498 to ptr
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %134, align 4
  %parent_slot232 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %134, i32 0, i32 1
  %137 = ptrtoint ptr %parent_slot232 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %parent_slot232, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %70)
  %cmp234 = icmp ult i32 %70, 17
  br i1 %cmp234, label %if.then236, label %if.then229.if.end254_crit_edge

if.then229.if.end254_crit_edge:                   ; preds = %if.then229
  call void @__sanitizer_cov_trace_pc() #7
  %.pre598 = ptrtoint ptr %136 to i32
  br label %if.end254

if.then236:                                       ; preds = %if.then229
  %139 = ptrtoint ptr %new_n.0 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %136, ptr %new_n.0, align 4
  %conv239 = trunc i32 %138 to i8
  %parent_slot240 = getelementptr inbounds %struct.assoc_array_node, ptr %new_n.0, i32 0, i32 1
  %140 = ptrtoint ptr %parent_slot240 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %conv239, ptr %parent_slot240, align 4
  tail call void @kfree(ptr noundef %134) #8
  %tobool241.not = icmp eq ptr %136, null
  br i1 %tobool241.not, label %cleanup249, label %cleanup249.thread

cleanup249.thread:                                ; preds = %if.then236
  call void @__sanitizer_cov_trace_pc() #7
  %141 = ptrtoint ptr %136 to i32
  %and.i.i500 = and i32 %141, -4
  %142 = inttoptr i32 %and.i.i500 to ptr
  %143 = ptrtoint ptr %new_n.0 to i32
  %or.i.i501 = or i32 %143, 1
  %144 = inttoptr i32 %or.i.i501 to ptr
  %arrayidx248 = getelementptr %struct.assoc_array_node, ptr %142, i32 0, i32 2, i32 %138
  %145 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %144, ptr %arrayidx248, align 4
  br label %if.end254

cleanup249:                                       ; preds = %if.then236
  call void @__sanitizer_cov_trace_pc() #7
  %146 = ptrtoint ptr %new_n.0 to i32
  %or.i.i499 = or i32 %146, 1
  %147 = inttoptr i32 %or.i.i499 to ptr
  %148 = ptrtoint ptr %new_root to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %147, ptr %new_root, align 4
  br label %gc_complete

if.end254:                                        ; preds = %cleanup249.thread, %if.then229.if.end254_crit_edge, %if.end227.if.end254_crit_edge
  %.pre-phi599 = phi i32 [ %.pre598, %if.then229.if.end254_crit_edge ], [ %141, %cleanup249.thread ], [ %133, %if.end227.if.end254_crit_edge ]
  %new_parent.4 = phi ptr [ %136, %if.then229.if.end254_crit_edge ], [ %136, %cleanup249.thread ], [ %132, %if.end227.if.end254_crit_edge ]
  %and.i.i502 = and i32 %.pre-phi599, -4
  %149 = inttoptr i32 %and.i.i502 to ptr
  br label %ascend_old_tree

ascend_old_tree:                                  ; preds = %if.end254, %if.end216
  %new_parent.5 = phi ptr [ %new_parent.3, %if.end216 ], [ %new_parent.4, %if.end254 ]
  %new_n.1 = phi ptr [ %129, %if.end216 ], [ %149, %if.end254 ]
  %150 = ptrtoint ptr %node.0 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %node.0, align 4
  %152 = ptrtoint ptr %151 to i32
  %and.i503 = and i32 %152, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i503)
  %tobool.i504.not = icmp eq i32 %and.i503, 0
  br i1 %tobool.i504.not, label %do.body269, label %if.then258

if.then258:                                       ; preds = %ascend_old_tree
  %and.i.i505 = and i32 %152, -4
  %153 = inttoptr i32 %and.i.i505 to ptr
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %153, align 4
  %tobool262.not = icmp eq ptr %155, null
  br i1 %tobool262.not, label %if.then258.gc_complete_crit_edge, label %if.then258.do.end288_crit_edge

if.then258.gc_complete_crit_edge:                 ; preds = %if.then258
  call void @__sanitizer_cov_trace_pc() #7
  br label %gc_complete

if.then258.do.end288_crit_edge:                   ; preds = %if.then258
  call void @__sanitizer_cov_trace_pc() #7
  %parent_slot260 = getelementptr inbounds %struct.assoc_array_shortcut, ptr %153, i32 0, i32 1
  %156 = ptrtoint ptr %parent_slot260 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %parent_slot260, align 4
  %.pre596 = ptrtoint ptr %155 to i32
  br label %do.end288

do.body269:                                       ; preds = %ascend_old_tree
  %parent_slot266 = getelementptr inbounds %struct.assoc_array_node, ptr %node.0, i32 0, i32 1
  %158 = ptrtoint ptr %parent_slot266 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %parent_slot266, align 4
  %conv267 = zext i8 %159 to i32
  %tobool270.not = icmp eq ptr %151, null
  br i1 %tobool270.not, label %do.body280, label %do.body269.do.end288_crit_edge, !prof !8

do.body269.do.end288_crit_edge:                   ; preds = %do.body269
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end288

do.body280:                                       ; preds = %do.body269
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/assoc_array.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1702, 0\0A.popsection", ""() #8, !srcloc !44
  unreachable

do.end288:                                        ; preds = %do.body269.do.end288_crit_edge, %if.then258.do.end288_crit_edge
  %.pre-phi597 = phi i32 [ %.pre596, %if.then258.do.end288_crit_edge ], [ %152, %do.body269.do.end288_crit_edge ]
  %slot.6512 = phi i32 [ %157, %if.then258.do.end288_crit_edge ], [ %conv267, %do.body269.do.end288_crit_edge ]
  %and.i.i506 = and i32 %.pre-phi597, -4
  %160 = inttoptr i32 %and.i.i506 to ptr
  %inc290 = add i32 %slot.6512, 1
  br label %continue_node

gc_complete:                                      ; preds = %if.then258.gc_complete_crit_edge, %cleanup249, %if.end223.gc_complete_crit_edge, %cleanup213, %if.then195
  %161 = ptrtoint ptr %new_root to i32
  call void @__asan_load4_noabort(i32 %161)
  %new_root.0.new_root.0.new_root.0. = load ptr, ptr %new_root, align 4
  %to = getelementptr inbounds %struct.assoc_array_edit, ptr %call7.i.i, i32 0, i32 14, i32 0, i32 1
  %162 = ptrtoint ptr %to to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %new_root.0.new_root.0.new_root.0., ptr %to, align 4
  tail call void @assoc_array_apply_edit(ptr noundef nonnull %call7.i.i)
  %nr_leaves_on_tree293 = getelementptr inbounds %struct.assoc_array, ptr %array, i32 0, i32 1
  %163 = ptrtoint ptr %nr_leaves_on_tree293 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %70, ptr %nr_leaves_on_tree293, align 4
  br label %cleanup296

enomem:                                           ; preds = %if.end23.enomem_crit_edge, %if.then11.enomem_crit_edge
  %164 = ptrtoint ptr %new_root to i32
  call void @__asan_load4_noabort(i32 %164)
  %new_root.0.new_root.0.new_root.0.459 = load ptr, ptr %new_root, align 4
  %165 = ptrtoint ptr %ops5 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %ops5, align 4
  tail call fastcc void @assoc_array_destroy_subtree(ptr noundef %new_root.0.new_root.0.new_root.0.459, ptr noundef %166)
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup296

cleanup296:                                       ; preds = %enomem, %gc_complete, %if.end.cleanup296_crit_edge, %entry.cleanup296_crit_edge
  %retval.0 = phi i32 [ 0, %gc_complete ], [ -12, %enomem ], [ 0, %entry.cleanup296_crit_edge ], [ -12, %if.end.cleanup296_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_root)
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind uwtable(sync) }
attributes #7 = { nomerge }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2152128327, i64 2152128809, i64 2152128364, i64 2152128420, i64 2152128454, i64 2152128478, i64 2152128519, i64 2152128540, i64 2152128568, i64 2152128602}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2152146783, i64 2152147265, i64 2152146820, i64 2152146876, i64 2152146910, i64 2152146934, i64 2152146975, i64 2152146996, i64 2152147024, i64 2152147058}
!12 = !{i64 2152148419, i64 2152148901, i64 2152148456, i64 2152148512, i64 2152148546, i64 2152148570, i64 2152148611, i64 2152148632, i64 2152148660, i64 2152148694}
!13 = !{i64 2152150033, i64 2152150515, i64 2152150070, i64 2152150126, i64 2152150160, i64 2152150184, i64 2152150225, i64 2152150246, i64 2152150274, i64 2152150308}
!14 = !{i64 2152153164, i64 2152153646, i64 2152153201, i64 2152153257, i64 2152153291, i64 2152153315, i64 2152153356, i64 2152153377, i64 2152153405, i64 2152153439}
!15 = !{i64 2152154792, i64 2152155274, i64 2152154829, i64 2152154885, i64 2152154919, i64 2152154943, i64 2152154984, i64 2152155005, i64 2152155033, i64 2152155067}
!16 = !{i64 2152161155, i64 2152161637, i64 2152161192, i64 2152161248, i64 2152161282, i64 2152161306, i64 2152161347, i64 2152161368, i64 2152161396, i64 2152161430}
!17 = !{i64 2152164310, i64 2152164792, i64 2152164347, i64 2152164403, i64 2152164437, i64 2152164461, i64 2152164502, i64 2152164523, i64 2152164551, i64 2152164585}
!18 = !{i64 2152243524, i64 2152244006, i64 2152243561, i64 2152243617, i64 2152243651, i64 2152243675, i64 2152243716, i64 2152243737, i64 2152243765, i64 2152243799}
!19 = !{i64 2152190758, i64 2152191240, i64 2152190795, i64 2152190851, i64 2152190885, i64 2152190909, i64 2152190950, i64 2152190971, i64 2152190999, i64 2152191033}
!20 = !{i64 2152193906, i64 2152194388, i64 2152193943, i64 2152193999, i64 2152194033, i64 2152194057, i64 2152194098, i64 2152194119, i64 2152194147, i64 2152194181}
!21 = !{i64 2152195551, i64 2152196033, i64 2152195588, i64 2152195644, i64 2152195678, i64 2152195702, i64 2152195743, i64 2152195764, i64 2152195792, i64 2152195826}
!22 = !{i64 2152198838, i64 2152199320, i64 2152198875, i64 2152198931, i64 2152198965, i64 2152198989, i64 2152199030, i64 2152199051, i64 2152199079, i64 2152199113}
!23 = !{i64 2152200447, i64 2152200929, i64 2152200484, i64 2152200540, i64 2152200574, i64 2152200598, i64 2152200639, i64 2152200660, i64 2152200688, i64 2152200722}
!24 = !{i64 2152205380, i64 2152205862, i64 2152205417, i64 2152205473, i64 2152205507, i64 2152205531, i64 2152205572, i64 2152205593, i64 2152205621, i64 2152205655}
!25 = !{i64 2152206998, i64 2152207480, i64 2152207035, i64 2152207091, i64 2152207125, i64 2152207149, i64 2152207190, i64 2152207211, i64 2152207239, i64 2152207273}
!26 = !{i64 2152213190, i64 2152213672, i64 2152213227, i64 2152213283, i64 2152213317, i64 2152213341, i64 2152213382, i64 2152213403, i64 2152213431, i64 2152213465}
!27 = !{i64 2152217697, i64 2152218179, i64 2152217734, i64 2152217790, i64 2152217824, i64 2152217848, i64 2152217889, i64 2152217910, i64 2152217938, i64 2152217972}
!28 = !{i32 0, i32 33}
!29 = !{i64 2152224817, i64 2152225299, i64 2152224854, i64 2152224910, i64 2152224944, i64 2152224968, i64 2152225009, i64 2152225030, i64 2152225058, i64 2152225092}
!30 = !{i64 2152246756, i64 2152247239, i64 2152246793, i64 2152246849, i64 2152246883, i64 2152246907, i64 2152246948, i64 2152246969, i64 2152246997, i64 2152247031}
!31 = !{i64 2152254767, i64 2152255250, i64 2152254804, i64 2152254860, i64 2152254894, i64 2152254918, i64 2152254959, i64 2152254980, i64 2152255008, i64 2152255042}
!32 = !{i64 2152263353, i64 2152263836, i64 2152263390, i64 2152263446, i64 2152263480, i64 2152263504, i64 2152263545, i64 2152263566, i64 2152263594, i64 2152263628}
!33 = !{i64 2152264828, i64 2152265311, i64 2152264865, i64 2152264921, i64 2152264955, i64 2152264979, i64 2152265020, i64 2152265041, i64 2152265069, i64 2152265103}
!34 = !{i64 2152248352, i64 2152248835, i64 2152248389, i64 2152248445, i64 2152248479, i64 2152248503, i64 2152248544, i64 2152248565, i64 2152248593, i64 2152248627}
!35 = !{i64 2152277312}
!36 = !{i64 2152277468}
!37 = !{i64 2152278091}
!38 = !{i64 2152278723}
!39 = !{i64 2152279462, i64 2152279945, i64 2152279499, i64 2152279555, i64 2152279589, i64 2152279613, i64 2152279654, i64 2152279675, i64 2152279703, i64 2152279737}
!40 = !{i64 2152274365, i64 2152274848, i64 2152274402, i64 2152274458, i64 2152274492, i64 2152274516, i64 2152274557, i64 2152274578, i64 2152274606, i64 2152274640}
!41 = !{i64 2152295029, i64 2152295512, i64 2152295066, i64 2152295122, i64 2152295156, i64 2152295180, i64 2152295221, i64 2152295242, i64 2152295270, i64 2152295304}
!42 = !{i64 2152296649, i64 2152297132, i64 2152296686, i64 2152296742, i64 2152296776, i64 2152296800, i64 2152296841, i64 2152296862, i64 2152296890, i64 2152296924}
!43 = !{i64 2152298235, i64 2152298718, i64 2152298272, i64 2152298328, i64 2152298362, i64 2152298386, i64 2152298427, i64 2152298448, i64 2152298476, i64 2152298510}
!44 = !{i64 2152312400, i64 2152312883, i64 2152312437, i64 2152312493, i64 2152312527, i64 2152312551, i64 2152312592, i64 2152312613, i64 2152312641, i64 2152312675}
