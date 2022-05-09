; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/core/mm.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/core/mm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_mm_node = type { %struct.list_head, %struct.list_head, ptr, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }

@nvkm_mm_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 34, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\013nvkm: %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nvkm_mm_dump\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/nouveau/nvkm/core/mm.c\00", [57 x i8] zeroinitializer }, align 32
@nvkm_mm_dump._entry_ptr = internal global ptr @nvkm_mm_dump._entry, section ".printk_index", align 4
@nvkm_mm_dump._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 35, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\013nvkm: node list:\0A\00", [44 x i8] zeroinitializer }, align 32
@nvkm_mm_dump._entry_ptr.5 = internal global ptr @nvkm_mm_dump._entry.3, section ".printk_index", align 4
@nvkm_mm_dump._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 38, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013nvkm: \09%08x %08x %d\0A\00", [41 x i8] zeroinitializer }, align 32
@nvkm_mm_dump._entry_ptr.8 = internal global ptr @nvkm_mm_dump._entry.6, section ".printk_index", align 4
@nvkm_mm_dump._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 40, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\013nvkm: free list:\0A\00", [44 x i8] zeroinitializer }, align 32
@nvkm_mm_dump._entry_ptr.11 = internal global ptr @nvkm_mm_dump._entry.9, section ".printk_index", align 4
@nvkm_mm_dump._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 43, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nvkm_mm_dump._entry_ptr.13 = internal global ptr @nvkm_mm_dump._entry.12, section ".printk_index", align 4
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mm not clean!\00", [18 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 34, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 35, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 37, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 40, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 42, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private constant [42 x i8] c"../drivers/gpu/drm/nouveau/nvkm/core/mm.c\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 294, i32 22 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @nvkm_mm_dump._entry, ptr @nvkm_mm_dump._entry.12, ptr @nvkm_mm_dump._entry.3, ptr @nvkm_mm_dump._entry.6, ptr @nvkm_mm_dump._entry.9, ptr @nvkm_mm_dump._entry_ptr, ptr @nvkm_mm_dump._entry_ptr.11, ptr @nvkm_mm_dump._entry_ptr.13, ptr @nvkm_mm_dump._entry_ptr.5, ptr @nvkm_mm_dump._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.14], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_mm_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_mm_dump._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_mm_dump._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_mm_dump._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_mm_dump._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_mm_dump(ptr noundef readonly %mm, ptr noundef %header) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %header) #8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  %0 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %0)
  %node.061 = load ptr, ptr %mm, align 4
  %cmp.not62 = icmp eq ptr %node.061, %mm
  br i1 %cmp.not62, label %entry.do.end20_crit_edge, label %entry.do.end10_crit_edge

entry.do.end10_crit_edge:                         ; preds = %entry
  br label %do.end10

entry.do.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end20

do.end10:                                         ; preds = %do.end10.do.end10_crit_edge, %entry.do.end10_crit_edge
  %node.063 = phi ptr [ %node.0, %do.end10.do.end10_crit_edge ], [ %node.061, %entry.do.end10_crit_edge ]
  %offset = getelementptr inbounds %struct.nvkm_mm_node, ptr %node.063, i32 0, i32 5
  %1 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %offset, align 4
  %length = getelementptr inbounds %struct.nvkm_mm_node, ptr %node.063, i32 0, i32 6
  %3 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %length, align 4
  %type = getelementptr inbounds %struct.nvkm_mm_node, ptr %node.063, i32 0, i32 4
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %type, align 1
  %conv = zext i8 %6 to i32
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %2, i32 noundef %4, i32 noundef %conv) #8
  %7 = ptrtoint ptr %node.063 to i32
  call void @__asan_load4_noabort(i32 %7)
  %node.0 = load ptr, ptr %node.063, align 4
  %cmp.not = icmp eq ptr %node.0, %mm
  br i1 %cmp.not, label %do.end10.do.end20_crit_edge, label %do.end10.do.end10_crit_edge

do.end10.do.end10_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10

do.end10.do.end20_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end20

do.end20:                                         ; preds = %do.end10.do.end20_crit_edge, %entry.do.end20_crit_edge
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #8
  %free = getelementptr inbounds %struct.nvkm_mm, ptr %mm, i32 0, i32 1
  %8 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn64 = load ptr, ptr %free, align 4
  %cmp29.not65 = icmp eq ptr %.pn64, %free
  br i1 %cmp29.not65, label %do.end20.for.end48_crit_edge, label %do.end20.do.end35_crit_edge

do.end20.do.end35_crit_edge:                      ; preds = %do.end20
  br label %do.end35

do.end20.for.end48_crit_edge:                     ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end48

do.end35:                                         ; preds = %do.end35.do.end35_crit_edge, %do.end20.do.end35_crit_edge
  %.pn66 = phi ptr [ %.pn, %do.end35.do.end35_crit_edge ], [ %.pn64, %do.end20.do.end35_crit_edge ]
  %offset37 = getelementptr i8, ptr %.pn66, i32 16
  %9 = ptrtoint ptr %offset37 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset37, align 4
  %length38 = getelementptr i8, ptr %.pn66, i32 20
  %11 = ptrtoint ptr %length38 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length38, align 4
  %type39 = getelementptr i8, ptr %.pn66, i32 13
  %13 = ptrtoint ptr %type39 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %type39, align 1
  %conv40 = zext i8 %14 to i32
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %10, i32 noundef %12, i32 noundef %conv40) #8
  %15 = ptrtoint ptr %.pn66 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %.pn66, align 4
  %cmp29.not = icmp eq ptr %.pn, %free
  br i1 %cmp29.not, label %do.end35.for.end48_crit_edge, label %do.end35.do.end35_crit_edge

do.end35.do.end35_crit_edge:                      ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end35

do.end35.for.end48_crit_edge:                     ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end48

for.end48:                                        ; preds = %do.end35.for.end48_crit_edge, %do.end20.for.end48_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_mm_free(ptr noundef readonly %mm, ptr nocapture noundef %pthis) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pthis to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pthis, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end72_crit_edge, label %if.then

entry.if.end72_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

if.then:                                          ; preds = %entry
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev1, align 4
  %cmp = icmp eq ptr %3, %mm
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %cmp7 = icmp eq ptr %5, %mm
  %cond16 = select i1 %cmp7, ptr null, ptr %5
  %tobool17.not125 = icmp eq ptr %3, null
  %tobool17.not = or i1 %cmp, %tobool17.not125
  br i1 %tobool17.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %type = getelementptr inbounds %struct.nvkm_mm_node, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp18 = icmp eq i8 %7, 0
  br i1 %cmp18, label %if.then20, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then20:                                        ; preds = %land.lhs.true
  %length = getelementptr inbounds %struct.nvkm_mm_node, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length, align 4
  %length21 = getelementptr inbounds %struct.nvkm_mm_node, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %length21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length21, align 4
  %add = add i32 %11, %9
  store i32 %add, ptr %length21, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %1) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then20.list_del.exit_crit_edge

if.then20.list_del.exit_crit_edge:                ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %prev1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev1, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then20.list_del.exit_crit_edge
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %19 = ptrtoint ptr %prev1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev1, align 4
  tail call void @kfree(ptr noundef nonnull %1) #5
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %this.0 = phi ptr [ %3, %list_del.exit ], [ %1, %land.lhs.true.if.end_crit_edge ], [ %1, %if.then.if.end_crit_edge ]
  %tobool23.not = icmp eq ptr %cond16, null
  br i1 %tobool23.not, label %if.end.land.lhs.true43_crit_edge, label %land.lhs.true24

if.end.land.lhs.true43_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true43

land.lhs.true24:                                  ; preds = %if.end
  %type25 = getelementptr inbounds %struct.nvkm_mm_node, ptr %cond16, i32 0, i32 4
  %20 = ptrtoint ptr %type25 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %type25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp27 = icmp eq i8 %21, 0
  br i1 %cmp27, label %if.then29, label %land.lhs.true24.land.lhs.true43_crit_edge

land.lhs.true24.land.lhs.true43_crit_edge:        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true43

if.then29:                                        ; preds = %land.lhs.true24
  %offset = getelementptr inbounds %struct.nvkm_mm_node, ptr %this.0, i32 0, i32 5
  %22 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset, align 4
  %offset30 = getelementptr inbounds %struct.nvkm_mm_node, ptr %cond16, i32 0, i32 5
  %24 = ptrtoint ptr %offset30 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %offset30, align 4
  %length31 = getelementptr inbounds %struct.nvkm_mm_node, ptr %this.0, i32 0, i32 6
  %25 = ptrtoint ptr %length31 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %length31, align 4
  %length32 = getelementptr inbounds %struct.nvkm_mm_node, ptr %cond16, i32 0, i32 6
  %27 = ptrtoint ptr %length32 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %length32, align 4
  %add33 = add i32 %28, %26
  store i32 %add33, ptr %length32, align 4
  %type34 = getelementptr inbounds %struct.nvkm_mm_node, ptr %this.0, i32 0, i32 4
  %29 = ptrtoint ptr %type34 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %type34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp36 = icmp eq i8 %30, 0
  br i1 %cmp36, label %if.then38, label %if.then29.if.end39_crit_edge

if.then29.if.end39_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.then38:                                        ; preds = %if.then29
  %fl_entry = getelementptr inbounds %struct.nvkm_mm_node, ptr %this.0, i32 0, i32 1
  %call.i.i107 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %fl_entry) #5
  br i1 %call.i.i107, label %if.end.i.i110, label %if.then38.list_del.exit112_crit_edge

if.then38.list_del.exit112_crit_edge:             ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit112

if.end.i.i110:                                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i108 = getelementptr inbounds %struct.nvkm_mm_node, ptr %this.0, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %prev.i.i108 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i108, align 4
  %33 = ptrtoint ptr %fl_entry to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fl_entry, align 4
  %prev1.i.i.i109 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev1.i.i.i109 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev1.i.i.i109, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %34, ptr %32, align 4
  br label %list_del.exit112

list_del.exit112:                                 ; preds = %if.end.i.i110, %if.then38.list_del.exit112_crit_edge
  %37 = ptrtoint ptr %fl_entry to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 256 to ptr), ptr %fl_entry, align 4
  %prev.i111 = getelementptr inbounds %struct.nvkm_mm_node, ptr %this.0, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %prev.i111 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i111, align 4
  br label %if.end39

if.end39:                                         ; preds = %list_del.exit112, %if.then29.if.end39_crit_edge
  %call.i.i113 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %this.0) #5
  br i1 %call.i.i113, label %if.end.i.i116, label %if.end39.if.end41_crit_edge

if.end39.if.end41_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.end.i.i116:                                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i114 = getelementptr inbounds %struct.list_head, ptr %this.0, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i114 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i.i114, align 4
  %41 = ptrtoint ptr %this.0 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %this.0, align 4
  %prev1.i.i.i115 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev1.i.i.i115 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev1.i.i.i115, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %42, ptr %40, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.end.i.i116, %if.end39.if.end41_crit_edge
  %45 = ptrtoint ptr %this.0 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 256 to ptr), ptr %this.0, align 4
  %prev.i117 = getelementptr inbounds %struct.list_head, ptr %this.0, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i117 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i117, align 4
  tail call void @kfree(ptr noundef nonnull %this.0) #5
  br label %if.end72

land.lhs.true43:                                  ; preds = %land.lhs.true24.land.lhs.true43_crit_edge, %if.end.land.lhs.true43_crit_edge
  %type44 = getelementptr inbounds %struct.nvkm_mm_node, ptr %this.0, i32 0, i32 4
  %47 = ptrtoint ptr %type44 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %type44, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp46.not = icmp eq i8 %48, 0
  br i1 %cmp46.not, label %land.lhs.true43.if.end72_crit_edge, label %if.then48

land.lhs.true43.if.end72_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

if.then48:                                        ; preds = %land.lhs.true43
  %free = getelementptr inbounds %struct.nvkm_mm, ptr %mm, i32 0, i32 1
  %offset57 = getelementptr inbounds %struct.nvkm_mm_node, ptr %this.0, i32 0, i32 5
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.then48
  %.pn.in = phi ptr [ %free, %if.then48 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %49 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp55.not = icmp eq ptr %.pn, %free
  br i1 %cmp55.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.cond
  %50 = ptrtoint ptr %offset57 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %offset57, align 4
  %offset58 = getelementptr i8, ptr %.pn, i32 16
  %52 = ptrtoint ptr %offset58 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %offset58, align 4
  %cmp59 = icmp ult i32 %51, %53
  br i1 %cmp59, label %for.body.for.end_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %.pn.lcssa = phi ptr [ %.pn, %for.body.for.end_crit_edge ], [ %free, %for.cond.for.end_crit_edge ]
  %fl_entry68 = getelementptr inbounds %struct.nvkm_mm_node, ptr %this.0, i32 0, i32 1
  %prev.i119 = getelementptr inbounds %struct.list_head, ptr %.pn.lcssa, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i119 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i119, align 4
  %call.i.i120 = tail call zeroext i1 @__list_add_valid(ptr noundef %fl_entry68, ptr noundef %55, ptr noundef %.pn.lcssa) #5
  br i1 %call.i.i120, label %if.end.i.i121, label %for.end.list_add_tail.exit_crit_edge

for.end.list_add_tail.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i121:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %prev.i119 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %fl_entry68, ptr %prev.i119, align 4
  %57 = ptrtoint ptr %fl_entry68 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %.pn.lcssa, ptr %fl_entry68, align 4
  %prev3.i.i = getelementptr inbounds %struct.nvkm_mm_node, ptr %this.0, i32 0, i32 1, i32 1
  %58 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev3.i.i, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %fl_entry68, ptr %55, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i121, %for.end.list_add_tail.exit_crit_edge
  %60 = ptrtoint ptr %type44 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %type44, align 1
  br label %if.end72

if.end72:                                         ; preds = %list_add_tail.exit, %land.lhs.true43.if.end72_crit_edge, %if.end41, %entry.if.end72_crit_edge
  %61 = ptrtoint ptr %pthis to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %pthis, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_mm_head(ptr noundef readonly %mm, i8 noundef zeroext %heap, i8 noundef zeroext %type, i32 noundef %size_max, i32 noundef %size_min, i32 noundef %align, ptr nocapture noundef writeonly %pnode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %align, -1
  %0 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %type, label %do.end11 [
    i8 -1, label %entry.do.body6_crit_edge
    i8 0, label %entry.do.body6_crit_edge190
  ]

entry.do.body6_crit_edge190:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body6

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body6

do.body6:                                         ; preds = %entry.do.body6_crit_edge, %entry.do.body6_crit_edge190
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/core/mm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 119, 0\0A.popsection", ""() #5, !srcloc !32
  unreachable

do.end11:                                         ; preds = %entry
  %free = getelementptr inbounds %struct.nvkm_mm, ptr %mm, i32 0, i32 1
  %1 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn179 = load ptr, ptr %free, align 4
  %cmp14.not181 = icmp eq ptr %.pn179, %free
  br i1 %cmp14.not181, label %do.end11.cleanup_crit_edge, label %for.body.lr.ph

do.end11.cleanup_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %heap)
  %cmp19.not = icmp eq i8 %heap, 0
  %block_size = getelementptr inbounds %struct.nvkm_mm, ptr %mm, i32 0, i32 2
  %neg = sub i32 0, %align
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn182 = phi ptr [ %.pn179, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %this.0183 = getelementptr i8, ptr %.pn182, i32 -8
  br i1 %cmp19.not, label %for.body.if.end35_crit_edge, label %if.then27, !prof !33

for.body.if.end35_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then27:                                        ; preds = %for.body
  %heap28 = getelementptr i8, ptr %.pn182, i32 12
  %2 = ptrtoint ptr %heap28 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %heap28, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %heap)
  %cmp31.not = icmp eq i8 %3, %heap
  br i1 %cmp31.not, label %if.then27.if.end35_crit_edge, label %if.then27.for.inc_crit_edge

if.then27.for.inc_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then27.if.end35_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.end35:                                         ; preds = %if.then27.if.end35_crit_edge, %for.body.if.end35_crit_edge
  %offset = getelementptr i8, ptr %.pn182, i32 16
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 4
  %length = getelementptr i8, ptr %.pn182, i32 20
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 4
  %add = add i32 %7, %5
  %prev37 = getelementptr i8, ptr %.pn182, i32 -4
  %8 = ptrtoint ptr %prev37 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev37, align 4
  %cmp38 = icmp eq ptr %9, %mm
  %tobool45.not176 = icmp eq ptr %9, null
  %tobool45.not = or i1 %cmp38, %tobool45.not176
  br i1 %tobool45.not, label %if.end35.if.end55_crit_edge, label %land.lhs.true

if.end35.if.end55_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

land.lhs.true:                                    ; preds = %if.end35
  %type46 = getelementptr inbounds %struct.nvkm_mm_node, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %type46 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %type46, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %type)
  %cmp49.not = icmp eq i8 %11, %type
  br i1 %cmp49.not, label %land.lhs.true.if.end55_crit_edge, label %if.then51

land.lhs.true.if.end55_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

if.then51:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %block_size, align 4
  %sub53 = add i32 %5, -1
  %add54 = add i32 %sub53, %13
  %14 = urem i32 %add54, %13
  %mul = sub i32 %add54, %14
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %land.lhs.true.if.end55_crit_edge, %if.end35.if.end55_crit_edge
  %s.0 = phi i32 [ %mul, %if.then51 ], [ %5, %land.lhs.true.if.end55_crit_edge ], [ %5, %if.end35.if.end55_crit_edge ]
  %15 = ptrtoint ptr %this.0183 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %this.0183, align 4
  %cmp59 = icmp eq ptr %16, %mm
  %tobool70.not177 = icmp eq ptr %16, null
  %tobool70.not = or i1 %cmp59, %tobool70.not177
  br i1 %tobool70.not, label %if.end55.if.end81_crit_edge, label %land.lhs.true71

if.end55.if.end81_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end81

land.lhs.true71:                                  ; preds = %if.end55
  %type72 = getelementptr inbounds %struct.nvkm_mm_node, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %type72 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %type72, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %type)
  %cmp75.not = icmp eq i8 %18, %type
  br i1 %cmp75.not, label %land.lhs.true71.if.end81_crit_edge, label %if.then77

land.lhs.true71.if.end81_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end81

if.then77:                                        ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %block_size, align 4
  %rem = urem i32 %add, %20
  %sub80 = sub i32 %add, %rem
  br label %if.end81

if.end81:                                         ; preds = %if.then77, %land.lhs.true71.if.end81_crit_edge, %if.end55.if.end81_crit_edge
  %e.0 = phi i32 [ %sub80, %if.then77 ], [ %add, %land.lhs.true71.if.end81_crit_edge ], [ %add, %if.end55.if.end81_crit_edge ]
  %add82 = add i32 %sub, %s.0
  %and = and i32 %add82, %neg
  %and84 = and i32 %e.0, %neg
  call void @__sanitizer_cov_trace_cmp4(i32 %and84, i32 %and)
  %cmp85 = icmp ult i32 %and84, %and
  %sub87 = sub i32 %and84, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %sub87, i32 %size_min)
  %cmp88 = icmp ult i32 %sub87, %size_min
  %or.cond = or i1 %cmp85, %cmp88
  br i1 %or.cond, label %if.end81.for.inc_crit_edge, label %if.end91

if.end81.for.inc_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end91:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %5)
  %tobool94.not = icmp eq i32 %and, %5
  br i1 %tobool94.not, label %if.end91.if.end98_crit_edge, label %land.lhs.true95

if.end91.if.end98_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end98

land.lhs.true95:                                  ; preds = %if.end91
  %sub93 = sub i32 %and, %5
  %call = tail call fastcc ptr @region_head(ptr noundef %this.0183, i32 noundef %sub93)
  %tobool96.not = icmp eq ptr %call, null
  br i1 %tobool96.not, label %land.lhs.true95.cleanup_crit_edge, label %land.lhs.true95.if.end98_crit_edge

land.lhs.true95.if.end98_crit_edge:               ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end98

land.lhs.true95.cleanup_crit_edge:                ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end98:                                         ; preds = %land.lhs.true95.if.end98_crit_edge, %if.end91.if.end98_crit_edge
  %21 = tail call i32 @llvm.umin.i32(i32 %sub87, i32 %size_max)
  %call107 = tail call fastcc ptr @region_head(ptr noundef %this.0183, i32 noundef %21)
  %tobool108.not = icmp eq ptr %call107, null
  br i1 %tobool108.not, label %if.end98.cleanup_crit_edge, label %if.end110

if.end98.cleanup_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end110:                                        ; preds = %if.end98
  %next111 = getelementptr inbounds %struct.nvkm_mm_node, ptr %call107, i32 0, i32 2
  %22 = ptrtoint ptr %next111 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %next111, align 4
  %type112 = getelementptr inbounds %struct.nvkm_mm_node, ptr %call107, i32 0, i32 4
  %23 = ptrtoint ptr %type112 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %type, ptr %type112, align 1
  %fl_entry113 = getelementptr inbounds %struct.nvkm_mm_node, ptr %call107, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %fl_entry113) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end110.list_del.exit_crit_edge

if.end110.list_del.exit_crit_edge:                ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.nvkm_mm_node, ptr %call107, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %fl_entry113 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fl_entry113, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end110.list_del.exit_crit_edge
  %30 = ptrtoint ptr %fl_entry113 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %fl_entry113, align 4
  %prev.i = getelementptr inbounds %struct.nvkm_mm_node, ptr %call107, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %32 = ptrtoint ptr %pnode to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call107, ptr %pnode, align 4
  br label %cleanup

for.inc:                                          ; preds = %if.end81.for.inc_crit_edge, %if.then27.for.inc_crit_edge
  %33 = ptrtoint ptr %.pn182 to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn = load ptr, ptr %.pn182, align 4
  %cmp14.not = icmp eq ptr %.pn, %free
  br i1 %cmp14.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %list_del.exit, %if.end98.cleanup_crit_edge, %land.lhs.true95.cleanup_crit_edge, %do.end11.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_del.exit ], [ -12, %land.lhs.true95.cleanup_crit_edge ], [ -12, %if.end98.cleanup_crit_edge ], [ -28, %do.end11.cleanup_crit_edge ], [ -28, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @region_head(ptr noundef %a, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.nvkm_mm_node, ptr %a, i32 0, i32 6
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %size)
  %cmp = icmp eq i32 %1, %size
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 32) #9
  %cmp1 = icmp eq ptr %call7.i, null
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end4, !prof !34

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %offset = getelementptr inbounds %struct.nvkm_mm_node, ptr %a, i32 0, i32 5
  %3 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %offset, align 4
  %offset5 = getelementptr inbounds %struct.nvkm_mm_node, ptr %call7.i, i32 0, i32 5
  %5 = ptrtoint ptr %offset5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %offset5, align 8
  %length6 = getelementptr inbounds %struct.nvkm_mm_node, ptr %call7.i, i32 0, i32 6
  %6 = ptrtoint ptr %length6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %size, ptr %length6, align 4
  %heap = getelementptr inbounds %struct.nvkm_mm_node, ptr %a, i32 0, i32 3
  %7 = ptrtoint ptr %heap to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %heap, align 4
  %heap7 = getelementptr inbounds %struct.nvkm_mm_node, ptr %call7.i, i32 0, i32 3
  %9 = ptrtoint ptr %heap7 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %heap7, align 4
  %type = getelementptr inbounds %struct.nvkm_mm_node, ptr %a, i32 0, i32 4
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %type, align 1
  %type8 = getelementptr inbounds %struct.nvkm_mm_node, ptr %call7.i, i32 0, i32 4
  %12 = ptrtoint ptr %type8 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %type8, align 1
  %add = add i32 %4, %size
  store i32 %add, ptr %offset, align 4
  %13 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length, align 4
  %sub = sub i32 %14, %size
  store i32 %sub, ptr %length, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %a, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %16, ptr noundef %a) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end4.list_add_tail.exit_crit_edge

if.end4.list_add_tail.exit_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i, ptr %prev.i, align 4
  %18 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %a, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %call7.i, ptr %16, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end4.list_add_tail.exit_crit_edge
  %21 = ptrtoint ptr %type8 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %type8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp13 = icmp eq i8 %22, 0
  br i1 %cmp13, label %if.then15, label %list_add_tail.exit.cleanup_crit_edge

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then15:                                        ; preds = %list_add_tail.exit
  %fl_entry = getelementptr inbounds %struct.nvkm_mm_node, ptr %call7.i, i32 0, i32 1
  %fl_entry16 = getelementptr inbounds %struct.nvkm_mm_node, ptr %a, i32 0, i32 1
  %prev.i1 = getelementptr inbounds %struct.nvkm_mm_node, ptr %a, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %prev.i1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i1, align 4
  %call.i.i2 = tail call zeroext i1 @__list_add_valid(ptr noundef %fl_entry, ptr noundef %24, ptr noundef %fl_entry16) #5
  br i1 %call.i.i2, label %if.end.i.i4, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i4:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %prev.i1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %fl_entry, ptr %prev.i1, align 4
  %26 = ptrtoint ptr %fl_entry to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %fl_entry16, ptr %fl_entry, align 8
  %prev3.i.i3 = getelementptr inbounds %struct.nvkm_mm_node, ptr %call7.i, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %prev3.i.i3 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i3, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %fl_entry, ptr %24, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i4, %if.then15.cleanup_crit_edge, %list_add_tail.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %a, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %call7.i, %list_add_tail.exit.cleanup_crit_edge ], [ %call7.i, %if.then15.cleanup_crit_edge ], [ %call7.i, %if.end.i.i4 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_mm_tail(ptr noundef readonly %mm, i8 noundef zeroext %heap, i8 noundef zeroext %type, i32 noundef %size_max, i32 noundef %size_min, i32 noundef %align, ptr nocapture noundef writeonly %pnode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %align, -1
  %0 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %type, label %do.end11 [
    i8 -1, label %entry.do.body6_crit_edge
    i8 0, label %entry.do.body6_crit_edge203
  ]

entry.do.body6_crit_edge203:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body6

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body6

do.body6:                                         ; preds = %entry.do.body6_crit_edge, %entry.do.body6_crit_edge203
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/core/mm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 192, 0\0A.popsection", ""() #5, !srcloc !35
  unreachable

do.end11:                                         ; preds = %entry
  %free = getelementptr inbounds %struct.nvkm_mm, ptr %mm, i32 0, i32 1
  %prev12 = getelementptr inbounds %struct.nvkm_mm, ptr %mm, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %prev12 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn193 = load ptr, ptr %prev12, align 4
  %cmp14.not195 = icmp eq ptr %.pn193, %free
  br i1 %cmp14.not195, label %do.end11.cleanup125_crit_edge, label %for.body.lr.ph

do.end11.cleanup125_crit_edge:                    ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup125

for.body.lr.ph:                                   ; preds = %do.end11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %heap)
  %cmp20.not = icmp eq i8 %heap, 0
  %block_size = getelementptr inbounds %struct.nvkm_mm, ptr %mm, i32 0, i32 2
  %neg = sub i32 0, %align
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn196 = phi ptr [ %.pn193, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %this.0197 = getelementptr i8, ptr %.pn196, i32 -8
  %offset = getelementptr i8, ptr %.pn196, i32 16
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %length = getelementptr i8, ptr %.pn196, i32 20
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length, align 4
  %add = add i32 %5, %3
  br i1 %cmp20.not, label %for.body.if.end36_crit_edge, label %if.then28, !prof !33

for.body.if.end36_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then28:                                        ; preds = %for.body
  %heap29 = getelementptr i8, ptr %.pn196, i32 12
  %6 = ptrtoint ptr %heap29 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %heap29, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %heap)
  %cmp32.not = icmp eq i8 %7, %heap
  br i1 %cmp32.not, label %if.then28.if.end36_crit_edge, label %if.then28.for.inc_crit_edge

if.then28.for.inc_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then28.if.end36_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.end36:                                         ; preds = %if.then28.if.end36_crit_edge, %for.body.if.end36_crit_edge
  %prev37 = getelementptr i8, ptr %.pn196, i32 -4
  %8 = ptrtoint ptr %prev37 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev37, align 4
  %cmp38 = icmp eq ptr %9, %mm
  %tobool45.not189 = icmp eq ptr %9, null
  %tobool45.not = or i1 %cmp38, %tobool45.not189
  br i1 %tobool45.not, label %if.end36.if.end55_crit_edge, label %land.lhs.true

if.end36.if.end55_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

land.lhs.true:                                    ; preds = %if.end36
  %type46 = getelementptr inbounds %struct.nvkm_mm_node, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %type46 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %type46, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %type)
  %cmp49.not = icmp eq i8 %11, %type
  br i1 %cmp49.not, label %land.lhs.true.if.end55_crit_edge, label %if.then51

land.lhs.true.if.end55_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

if.then51:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %block_size, align 4
  %sub53 = add i32 %3, -1
  %add54 = add i32 %sub53, %13
  %14 = urem i32 %add54, %13
  %mul = sub i32 %add54, %14
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %land.lhs.true.if.end55_crit_edge, %if.end36.if.end55_crit_edge
  %s.0 = phi i32 [ %mul, %if.then51 ], [ %3, %land.lhs.true.if.end55_crit_edge ], [ %3, %if.end36.if.end55_crit_edge ]
  %15 = ptrtoint ptr %this.0197 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %this.0197, align 4
  %cmp59 = icmp eq ptr %16, %mm
  %tobool70.not190 = icmp eq ptr %16, null
  %tobool70.not = or i1 %cmp59, %tobool70.not190
  br i1 %tobool70.not, label %if.end55.if.end83_crit_edge, label %land.lhs.true71

if.end55.if.end83_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end83

land.lhs.true71:                                  ; preds = %if.end55
  %type72 = getelementptr inbounds %struct.nvkm_mm_node, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %type72 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %type72, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %type)
  %cmp75.not = icmp eq i8 %18, %type
  br i1 %cmp75.not, label %land.lhs.true71.if.end83_crit_edge, label %if.then77

land.lhs.true71.if.end83_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end83

if.then77:                                        ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %block_size, align 4
  %rem = urem i32 %add, %20
  %sub80 = sub i32 %add, %rem
  %offset81 = getelementptr inbounds %struct.nvkm_mm_node, ptr %16, i32 0, i32 5
  %21 = ptrtoint ptr %offset81 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offset81, align 4
  %sub82 = sub i32 %22, %sub80
  br label %if.end83

if.end83:                                         ; preds = %if.then77, %land.lhs.true71.if.end83_crit_edge, %if.end55.if.end83_crit_edge
  %c.0 = phi i32 [ %sub82, %if.then77 ], [ 0, %land.lhs.true71.if.end83_crit_edge ], [ 0, %if.end55.if.end83_crit_edge ]
  %e.0 = phi i32 [ %sub80, %if.then77 ], [ %add, %land.lhs.true71.if.end83_crit_edge ], [ %add, %if.end55.if.end83_crit_edge ]
  %add84 = add i32 %sub, %s.0
  %and = and i32 %add84, %neg
  %sub85 = sub i32 %e.0, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %e.0, i32 %and)
  %cmp86 = icmp ult i32 %e.0, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %sub85, i32 %size_min)
  %cmp88 = icmp ult i32 %sub85, %size_min
  %or.cond = or i1 %cmp86, %cmp88
  br i1 %or.cond, label %if.end83.for.inc_crit_edge, label %if.end91

if.end83.for.inc_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end91:                                         ; preds = %if.end83
  %23 = tail call i32 @llvm.umin.i32(i32 %sub85, i32 %size_max)
  %sub99 = sub i32 %e.0, %23
  %and101 = and i32 %sub99, %neg
  %.neg191 = add i32 %e.0, %c.0
  %24 = add i32 %23, %and101
  call void @__sanitizer_cov_trace_cmp4(i32 %.neg191, i32 %24)
  %tobool105.not = icmp eq i32 %.neg191, %24
  br i1 %tobool105.not, label %if.end91.if.end109_crit_edge, label %land.lhs.true106

if.end91.if.end109_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end109

land.lhs.true106:                                 ; preds = %if.end91
  %add104 = sub i32 %.neg191, %24
  %call = tail call fastcc ptr @region_tail(ptr noundef %this.0197, i32 noundef %add104)
  %tobool107.not = icmp eq ptr %call, null
  br i1 %tobool107.not, label %land.lhs.true106.cleanup125_crit_edge, label %land.lhs.true106.if.end109_crit_edge

land.lhs.true106.if.end109_crit_edge:             ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end109

land.lhs.true106.cleanup125_crit_edge:            ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup125

if.end109:                                        ; preds = %land.lhs.true106.if.end109_crit_edge, %if.end91.if.end109_crit_edge
  %call110 = tail call fastcc ptr @region_tail(ptr noundef %this.0197, i32 noundef %23)
  %tobool111.not = icmp eq ptr %call110, null
  br i1 %tobool111.not, label %if.end109.cleanup125_crit_edge, label %if.end113

if.end109.cleanup125_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup125

if.end113:                                        ; preds = %if.end109
  %next114 = getelementptr inbounds %struct.nvkm_mm_node, ptr %call110, i32 0, i32 2
  %25 = ptrtoint ptr %next114 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %next114, align 4
  %type115 = getelementptr inbounds %struct.nvkm_mm_node, ptr %call110, i32 0, i32 4
  %26 = ptrtoint ptr %type115 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %type, ptr %type115, align 1
  %fl_entry116 = getelementptr inbounds %struct.nvkm_mm_node, ptr %call110, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %fl_entry116) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end113.list_del.exit_crit_edge

if.end113.list_del.exit_crit_edge:                ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.nvkm_mm_node, ptr %call110, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i, align 4
  %29 = ptrtoint ptr %fl_entry116 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fl_entry116, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end113.list_del.exit_crit_edge
  %33 = ptrtoint ptr %fl_entry116 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 256 to ptr), ptr %fl_entry116, align 4
  %prev.i = getelementptr inbounds %struct.nvkm_mm_node, ptr %call110, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %35 = ptrtoint ptr %pnode to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call110, ptr %pnode, align 4
  br label %cleanup125

for.inc:                                          ; preds = %if.end83.for.inc_crit_edge, %if.then28.for.inc_crit_edge
  %prev122 = getelementptr i8, ptr %.pn196, i32 4
  %36 = ptrtoint ptr %prev122 to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn = load ptr, ptr %prev122, align 4
  %cmp14.not = icmp eq ptr %.pn, %free
  br i1 %cmp14.not, label %for.inc.cleanup125_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup125_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup125

cleanup125:                                       ; preds = %for.inc.cleanup125_crit_edge, %list_del.exit, %if.end109.cleanup125_crit_edge, %land.lhs.true106.cleanup125_crit_edge, %do.end11.cleanup125_crit_edge
  %retval.2 = phi i32 [ -12, %if.end109.cleanup125_crit_edge ], [ -12, %land.lhs.true106.cleanup125_crit_edge ], [ 0, %list_del.exit ], [ -28, %do.end11.cleanup125_crit_edge ], [ -28, %for.inc.cleanup125_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @region_tail(ptr noundef %a, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.nvkm_mm_node, ptr %a, i32 0, i32 6
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %size)
  %cmp = icmp eq i32 %1, %size
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 32) #9
  %cmp1 = icmp eq ptr %call7.i, null
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end4, !prof !34

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %length, align 4
  %sub = sub i32 %4, %size
  store i32 %sub, ptr %length, align 4
  %offset = getelementptr inbounds %struct.nvkm_mm_node, ptr %a, i32 0, i32 5
  %5 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %offset, align 4
  %add = add i32 %6, %sub
  %offset7 = getelementptr inbounds %struct.nvkm_mm_node, ptr %call7.i, i32 0, i32 5
  %7 = ptrtoint ptr %offset7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %offset7, align 8
  %length8 = getelementptr inbounds %struct.nvkm_mm_node, ptr %call7.i, i32 0, i32 6
  %8 = ptrtoint ptr %length8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %size, ptr %length8, align 4
  %heap = getelementptr inbounds %struct.nvkm_mm_node, ptr %a, i32 0, i32 3
  %9 = ptrtoint ptr %heap to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %heap, align 4
  %heap9 = getelementptr inbounds %struct.nvkm_mm_node, ptr %call7.i, i32 0, i32 3
  %11 = ptrtoint ptr %heap9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %heap9, align 4
  %type = getelementptr inbounds %struct.nvkm_mm_node, ptr %a, i32 0, i32 4
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %type, align 1
  %type10 = getelementptr inbounds %struct.nvkm_mm_node, ptr %call7.i, i32 0, i32 4
  %14 = ptrtoint ptr %type10 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %type10, align 1
  %15 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %a, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %a, ptr noundef %16) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end4.list_add.exit_crit_edge

if.end4.list_add.exit_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i, ptr %prev1.i.i, align 4
  %18 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %16, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %a, ptr %prev3.i.i, align 4
  %20 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %call7.i, ptr %a, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end4.list_add.exit_crit_edge
  %21 = ptrtoint ptr %type10 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %type10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp13 = icmp eq i8 %22, 0
  br i1 %cmp13, label %if.then15, label %list_add.exit.cleanup_crit_edge

list_add.exit.cleanup_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then15:                                        ; preds = %list_add.exit
  %fl_entry = getelementptr inbounds %struct.nvkm_mm_node, ptr %call7.i, i32 0, i32 1
  %fl_entry16 = getelementptr inbounds %struct.nvkm_mm_node, ptr %a, i32 0, i32 1
  %23 = ptrtoint ptr %fl_entry16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fl_entry16, align 4
  %call.i.i1 = tail call zeroext i1 @__list_add_valid(ptr noundef %fl_entry, ptr noundef %fl_entry16, ptr noundef %24) #5
  br i1 %call.i.i1, label %if.end.i.i4, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i4:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i2 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %fl_entry, ptr %prev1.i.i2, align 4
  %26 = ptrtoint ptr %fl_entry to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %fl_entry, align 8
  %prev3.i.i3 = getelementptr inbounds %struct.nvkm_mm_node, ptr %call7.i, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %prev3.i.i3 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %fl_entry16, ptr %prev3.i.i3, align 4
  %28 = ptrtoint ptr %fl_entry16 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %fl_entry, ptr %fl_entry16, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i4, %if.then15.cleanup_crit_edge, %list_add.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %a, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %call7.i, %list_add.exit.cleanup_crit_edge ], [ %call7.i, %if.then15.cleanup_crit_edge ], [ %call7.i, %if.end.i.i4 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_mm_init(ptr noundef %mm, i8 noundef zeroext %heap, i32 noundef %offset, i32 noundef %length, i32 noundef %block) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %heap_nodes.i = getelementptr inbounds %struct.nvkm_mm, ptr %mm, i32 0, i32 3
  %0 = ptrtoint ptr %heap_nodes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %heap_nodes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not = icmp eq i32 %1, 0
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %prev1 = getelementptr inbounds %struct.list_head, ptr %mm, i32 0, i32 1
  %2 = ptrtoint ptr %prev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev1, align 4
  %offset2 = getelementptr inbounds %struct.nvkm_mm_node, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %offset2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset2, align 4
  %length3 = getelementptr inbounds %struct.nvkm_mm_node, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %length3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length3, align 4
  %add = add i32 %7, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %offset)
  %cmp.not = icmp eq i32 %add, %offset
  br i1 %cmp.not, label %if.then.do.body22_crit_edge, label %do.body

if.then.do.body22_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body22

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %offset)
  %cmp5 = icmp ugt i32 %add, %offset
  br i1 %cmp5, label %do.body8, label %do.end13, !prof !34

do.body8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/core/mm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 249, 0\0A.popsection", ""() #5, !srcloc !36
  unreachable

do.end13:                                         ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 32) #9
  %tobool15.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool15.not, label %do.end13.cleanup_crit_edge, label %if.end17

do.end13.cleanup_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17:                                         ; preds = %do.end13
  %type = getelementptr inbounds %struct.nvkm_mm_node, ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %type, align 1
  %offset18 = getelementptr inbounds %struct.nvkm_mm_node, ptr %call7.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %offset18 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add, ptr %offset18, align 8
  %sub = sub i32 %offset, %add
  %length19 = getelementptr inbounds %struct.nvkm_mm_node, ptr %call7.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %length19 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub, ptr %length19, align 4
  %12 = ptrtoint ptr %prev1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev1, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %13, ptr noundef %mm) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end17.do.body22_crit_edge

if.end17.do.body22_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body22

if.end.i.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %prev1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %prev1, align 4
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %mm, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %call7.i.i, ptr %13, align 4
  br label %do.body22

do.body22:                                        ; preds = %if.end.i.i, %if.end17.do.body22_crit_edge, %if.then.do.body22_crit_edge
  %block_size = getelementptr inbounds %struct.nvkm_mm, ptr %mm, i32 0, i32 2
  %18 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %block_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %block)
  %cmp23.not = icmp eq i32 %19, %block
  br i1 %cmp23.not, label %do.body22.if.end42_crit_edge, label %do.body31, !prof !33

do.body22.if.end42_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

do.body31:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/core/mm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 257, 0\0A.popsection", ""() #5, !srcloc !37
  unreachable

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %mm to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %mm, ptr %mm, align 4
  %prev.i106 = getelementptr inbounds %struct.list_head, ptr %mm, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i106 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %mm, ptr %prev.i106, align 4
  %free = getelementptr inbounds %struct.nvkm_mm, ptr %mm, i32 0, i32 1
  %22 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %free, ptr %free, align 4
  %prev.i107 = getelementptr inbounds %struct.nvkm_mm, ptr %mm, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %prev.i107 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %free, ptr %prev.i107, align 4
  %block_size41 = getelementptr inbounds %struct.nvkm_mm, ptr %mm, i32 0, i32 2
  %24 = ptrtoint ptr %block_size41 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %block, ptr %block_size41, align 4
  %25 = ptrtoint ptr %heap_nodes.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %heap_nodes.i, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.else, %do.body22.if.end42_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i108 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 32) #9
  %tobool44.not = icmp eq ptr %call7.i.i108, null
  br i1 %tobool44.not, label %if.end42.cleanup_crit_edge, label %if.end46

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end46:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %tobool47.not = icmp eq i32 %length, 0
  br i1 %tobool47.not, label %if.end46.if.end62_crit_edge, label %if.then48

if.end46.if.end62_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62

if.then48:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  %block_size49 = getelementptr inbounds %struct.nvkm_mm, ptr %mm, i32 0, i32 2
  %27 = ptrtoint ptr %block_size49 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %block_size49, align 4
  %sub51 = add i32 %offset, -1
  %add52 = add i32 %sub51, %28
  %29 = urem i32 %add52, %28
  %mul = sub i32 %add52, %29
  %offset53 = getelementptr inbounds %struct.nvkm_mm_node, ptr %call7.i.i108, i32 0, i32 5
  %30 = ptrtoint ptr %offset53 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %mul, ptr %offset53, align 8
  %add54 = add i32 %length, %offset
  %rem = urem i32 %add54, %28
  %length58 = getelementptr inbounds %struct.nvkm_mm_node, ptr %call7.i.i108, i32 0, i32 6
  %31 = add i32 %mul, %rem
  %sub61 = sub i32 %add54, %31
  %32 = ptrtoint ptr %length58 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub61, ptr %length58, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then48, %if.end46.if.end62_crit_edge
  %prev.i109 = getelementptr inbounds %struct.list_head, ptr %mm, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i109 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i109, align 4
  %call.i.i110 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i108, ptr noundef %34, ptr noundef %mm) #5
  br i1 %call.i.i110, label %if.end.i.i112, label %if.end62.list_add_tail.exit113_crit_edge

if.end62.list_add_tail.exit113_crit_edge:         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit113

if.end.i.i112:                                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %prev.i109 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i.i108, ptr %prev.i109, align 4
  %36 = ptrtoint ptr %call7.i.i108 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %mm, ptr %call7.i.i108, align 8
  %prev3.i.i111 = getelementptr inbounds %struct.list_head, ptr %call7.i.i108, i32 0, i32 1
  %37 = ptrtoint ptr %prev3.i.i111 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev3.i.i111, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %call7.i.i108, ptr %34, align 4
  br label %list_add_tail.exit113

list_add_tail.exit113:                            ; preds = %if.end.i.i112, %if.end62.list_add_tail.exit113_crit_edge
  %fl_entry = getelementptr inbounds %struct.nvkm_mm_node, ptr %call7.i.i108, i32 0, i32 1
  %free65 = getelementptr inbounds %struct.nvkm_mm, ptr %mm, i32 0, i32 1
  %prev.i114 = getelementptr inbounds %struct.nvkm_mm, ptr %mm, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %prev.i114 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i114, align 4
  %call.i.i115 = tail call zeroext i1 @__list_add_valid(ptr noundef %fl_entry, ptr noundef %40, ptr noundef %free65) #5
  br i1 %call.i.i115, label %if.end.i.i117, label %list_add_tail.exit113.list_add_tail.exit118_crit_edge

list_add_tail.exit113.list_add_tail.exit118_crit_edge: ; preds = %list_add_tail.exit113
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit118

if.end.i.i117:                                    ; preds = %list_add_tail.exit113
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %prev.i114 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %fl_entry, ptr %prev.i114, align 4
  %42 = ptrtoint ptr %fl_entry to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %free65, ptr %fl_entry, align 8
  %prev3.i.i116 = getelementptr inbounds %struct.nvkm_mm_node, ptr %call7.i.i108, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %prev3.i.i116 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev3.i.i116, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %fl_entry, ptr %40, align 4
  br label %list_add_tail.exit118

list_add_tail.exit118:                            ; preds = %if.end.i.i117, %list_add_tail.exit113.list_add_tail.exit118_crit_edge
  %heap66 = getelementptr inbounds %struct.nvkm_mm_node, ptr %call7.i.i108, i32 0, i32 3
  %45 = ptrtoint ptr %heap66 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %heap, ptr %heap66, align 4
  %46 = ptrtoint ptr %heap_nodes.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %heap_nodes.i, align 4
  %inc = add i32 %47, 1
  store i32 %inc, ptr %heap_nodes.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit118, %if.end42.cleanup_crit_edge, %do.end13.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit118 ], [ -12, %do.end13.cleanup_crit_edge ], [ -12, %if.end42.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_mm_fini(ptr noundef %mm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %heap_nodes.i = getelementptr inbounds %struct.nvkm_mm, ptr %mm, i32 0, i32 3
  %0 = ptrtoint ptr %heap_nodes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %heap_nodes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not = icmp eq i32 %1, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %2)
  %node.058 = load ptr, ptr %mm, align 4
  %cmp.not59 = icmp eq ptr %node.058, %mm
  br i1 %cmp.not59, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %node.061 = phi ptr [ %node.0, %for.inc.for.body_crit_edge ], [ %node.058, %for.cond.preheader.for.body_crit_edge ]
  %nodes.060 = phi i32 [ %nodes.1, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %type = getelementptr inbounds %struct.nvkm_mm_node, ptr %node.061, i32 0, i32 4
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %4)
  %cmp3.not = icmp eq i8 %4, -1
  br i1 %cmp3.not, label %for.body.for.inc_crit_edge, label %if.then5

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then5:                                         ; preds = %for.body
  %inc = add i32 %nodes.060, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %1)
  %cmp6 = icmp sgt i32 %inc, %1
  br i1 %cmp6, label %if.then8, label %if.then5.for.inc_crit_edge

if.then5.for.inc_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @nvkm_mm_dump(ptr noundef %mm, ptr noundef nonnull @.str.14)
  br label %cleanup

for.inc:                                          ; preds = %if.then5.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %nodes.1 = phi i32 [ %inc, %if.then5.for.inc_crit_edge ], [ %nodes.060, %for.body.for.inc_crit_edge ]
  %5 = ptrtoint ptr %node.061 to i32
  call void @__asan_load4_noabort(i32 %5)
  %node.0 = load ptr, ptr %node.061, align 4
  %cmp.not = icmp eq ptr %node.0, %mm
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %6 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mm, align 4
  %cmp29.not62 = icmp eq ptr %7, %mm
  br i1 %cmp29.not62, label %for.end.for.end40_crit_edge, label %for.end.for.body32_crit_edge

for.end.for.body32_crit_edge:                     ; preds = %for.end
  br label %for.body32

for.end.for.end40_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end40

for.body32:                                       ; preds = %list_del.exit.for.body32_crit_edge, %for.end.for.body32_crit_edge
  %node.163 = phi ptr [ %temp.0, %list_del.exit.for.body32_crit_edge ], [ %7, %for.end.for.body32_crit_edge ]
  %8 = ptrtoint ptr %node.163 to i32
  call void @__asan_load4_noabort(i32 %8)
  %temp.0 = load ptr, ptr %node.163, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.163) #5
  br i1 %call.i.i, label %if.end.i.i, label %for.body32.list_del.exit_crit_edge

for.body32.list_del.exit_crit_edge:               ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %node.163, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %node.163 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %node.163, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body32.list_del.exit_crit_edge
  %15 = ptrtoint ptr %node.163 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %node.163, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %node.163, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %node.163) #5
  %cmp29.not = icmp eq ptr %temp.0, %mm
  br i1 %cmp29.not, label %list_del.exit.for.end40_crit_edge, label %list_del.exit.for.body32_crit_edge

list_del.exit.for.body32_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body32

list_del.exit.for.end40_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end40

for.end40:                                        ; preds = %list_del.exit.for.end40_crit_edge, %for.end.for.end40_crit_edge
  %17 = ptrtoint ptr %heap_nodes.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %heap_nodes.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end40, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then8 ], [ 0, %for.end40 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/mm.c", i32 34, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @nvkm_mm_dump._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @nvkm_mm_dump._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/mm.c", i32 35, i32 2}
!8 = !{ptr @nvkm_mm_dump._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @nvkm_mm_dump._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/mm.c", i32 37, i32 3}
!12 = !{ptr @nvkm_mm_dump._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @nvkm_mm_dump._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/mm.c", i32 40, i32 2}
!16 = !{ptr @nvkm_mm_dump._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @nvkm_mm_dump._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @nvkm_mm_dump._entry.12, !19, !"_entry", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/mm.c", i32 42, i32 3}
!20 = !{ptr @nvkm_mm_dump._entry_ptr.13, !19, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/nouveau/nvkm/core/mm.c", i32 294, i32 22}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{i64 2156213243, i64 2156213746, i64 2156213280, i64 2156213336, i64 2156213370, i64 2156213394, i64 2156213435, i64 2156213456, i64 2156213484, i64 2156213518}
!33 = !{!"branch_weights", i32 2000, i32 1}
!34 = !{!"branch_weights", i32 1, i32 2000}
!35 = !{i64 2156227524, i64 2156228027, i64 2156227561, i64 2156227617, i64 2156227651, i64 2156227675, i64 2156227716, i64 2156227737, i64 2156227765, i64 2156227799}
!36 = !{i64 2156238872, i64 2156239375, i64 2156238909, i64 2156238965, i64 2156238999, i64 2156239023, i64 2156239064, i64 2156239085, i64 2156239113, i64 2156239147}
!37 = !{i64 2156240720, i64 2156241223, i64 2156240757, i64 2156240813, i64 2156240847, i64 2156240871, i64 2156240912, i64 2156240933, i64 2156240961, i64 2156240995}
