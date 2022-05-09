; ModuleID = '/llk/IR_all_yes/drivers/misc/bcm-vk/bcm_vk_sg.c_pt.bc'
source_filename = "../drivers/misc/bcm-vk/bcm_vk_sg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.69 }
%union.anon.69 = type { i32 }
%struct._vk_data = type <{ i32, i64 }>
%struct.bcm_vk_dma = type { ptr, i32, i32, ptr, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.66, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.66 = type { %struct.atomic_t }

@bcm_vk_sg_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 202, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid vkdata %x 0x%x 0x%llx\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bcm_vk_sg_alloc\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/misc/bcm-vk/bcm_vk_sg.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcm_vk_sg_alloc._entry_ptr = internal global ptr @bcm_vk_sg_alloc._entry, section ".printk_index", align 4
@bcm_vk_dma_alloc.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 17, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bcm_vk\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bcm_vk_dma_alloc\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Alloc DMA Pages [0x%llx+0x%x => %d pages]\0A\00", [53 x i8] zeroinitializer }, align 32
@bcm_vk_dma_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 82, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"get_user_pages_fast, err=%d [%d]\0A\00", [62 x i8] zeroinitializer }, align 32
@bcm_vk_dma_alloc._entry_ptr = internal global ptr @bcm_vk_dma_alloc._entry, section ".printk_index", align 4
@bcm_vk_dma_free.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bcm_vk_dma_free\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"free sglist=%p sglen=0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 200, i32 4 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 69, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 81, i32 3 }
@___asan_gen_.49 = private constant [35 x i8] c"../drivers/misc/bcm-vk/bcm_vk_sg.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 234, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 717, i32 2 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @bcm_vk_dma_alloc._entry, ptr @bcm_vk_dma_alloc._entry_ptr, ptr @bcm_vk_sg_alloc._entry, ptr @bcm_vk_sg_alloc._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_sg_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm_vk_dma_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcm_vk_sg_alloc(ptr noundef %dev, ptr noundef %dma, i32 noundef %dir, ptr nocapture noundef %vkdata, i32 noundef %num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp60 = icmp sgt i32 %num, 0
  br i1 %cmp60, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.061 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct._vk_data, ptr %vkdata, i32 %i.061
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %address9 = getelementptr %struct._vk_data, ptr %vkdata, i32 %i.061, i32 1
  %2 = ptrtoint ptr %address9 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %address9, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool10.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  br i1 %tobool10.not, label %land.lhs.true.if.end17.thread_crit_edge, label %if.end17

land.lhs.true.if.end17.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.thread

lor.lhs.false:                                    ; preds = %for.body
  br i1 %tobool10.not, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false.if.end17.thread_crit_edge

lor.lhs.false.if.end17.thread_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.thread

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end17.thread:                                  ; preds = %lor.lhs.false.if.end17.thread_crit_edge, %land.lhs.true.if.end17.thread_crit_edge
  %address15 = getelementptr %struct._vk_data, ptr %vkdata, i32 %i.061, i32 1
  %4 = ptrtoint ptr %address15 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %address15, align 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %i.061, i32 noundef %1, i64 noundef %5) #9
  br label %while.cond.preheader

if.end17:                                         ; preds = %land.lhs.true
  %arrayidx3 = getelementptr %struct.bcm_vk_dma, ptr %dma, i32 %i.061
  %call = tail call fastcc i32 @bcm_vk_dma_alloc(ptr noundef %dev, ptr noundef %arrayidx3, i32 noundef %dir, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool18.not = icmp eq i32 %call, 0
  br i1 %tobool18.not, label %if.end17.for.inc_crit_edge, label %if.end17.while.cond.preheader_crit_edge

if.end17.while.cond.preheader_crit_edge:          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.preheader

if.end17.for.inc_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

while.cond.preheader:                             ; preds = %if.end17.while.cond.preheader_crit_edge, %if.end17.thread
  %rc.169 = phi i32 [ -22, %if.end17.thread ], [ %call, %if.end17.while.cond.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.061)
  %cmp2163.not = icmp eq i32 %i.061, 0
  br i1 %cmp2163.not, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc:                                          ; preds = %if.end17.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.061, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body:                                       ; preds = %if.end27.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %i.164 = phi i32 [ %dec, %if.end27.while.body_crit_edge ], [ %i.061, %while.cond.preheader.while.body_crit_edge ]
  %dec = add nsw i32 %i.164, -1
  %sglist = getelementptr %struct.bcm_vk_dma, ptr %dma, i32 %dec, i32 3
  %6 = ptrtoint ptr %sglist to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sglist, align 4
  %tobool23.not = icmp eq ptr %7, null
  br i1 %tobool23.not, label %while.body.if.end27_crit_edge, label %if.then24

while.body.if.end27_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then24:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx22 = getelementptr %struct.bcm_vk_dma, ptr %dma, i32 %dec
  tail call fastcc void @bcm_vk_dma_free(ptr noundef %dev, ptr noundef %arrayidx22)
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %while.body.if.end27_crit_edge
  %cmp21 = icmp sgt i32 %i.164, 1
  br i1 %cmp21, label %if.end27.while.body_crit_edge, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27.while.body_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

cleanup:                                          ; preds = %if.end27.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.169, %while.cond.preheader.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %rc.169, %if.end27.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm_vk_dma_alloc(ptr noundef %dev, ptr noundef %dma, i32 noundef %direction, ptr nocapture noundef %vkdata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %address = getelementptr inbounds %struct._vk_data, ptr %vkdata, i32 0, i32 1
  %0 = ptrtoint ptr %address to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %address, align 1
  %conv = trunc i64 %1 to i32
  %and = and i32 %conv, 4095
  %shr = lshr i64 %1, 12
  %conv2 = trunc i64 %shr to i32
  %2 = ptrtoint ptr %vkdata to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %vkdata, align 1
  %conv4 = zext i32 %3 to i64
  %add = add i64 %1, 17592186044415
  %sub = add i64 %add, %conv4
  %shr6 = lshr i64 %sub, 12
  %conv7 = trunc i64 %shr6 to i32
  %sub8 = sub i32 %conv7, %conv2
  %add9 = add i32 %sub8, 1
  %nr_pages = getelementptr inbounds %struct.bcm_vk_dma, ptr %dma, i32 0, i32 1
  %4 = ptrtoint ptr %nr_pages to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add9, ptr %nr_pages, align 4
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add9, i32 4) #6
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !32

kmalloc_array.exit.thread:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %dma, align 4
  br label %cleanup

if.end7.i:                                        ; preds = %entry
  %8 = extractvalue { i32, i1 } %5, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3264) #10
  %9 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call8.i, ptr %dma, align 4
  %tobool.not = icmp eq ptr %call8.i, null
  br i1 %tobool.not, label %if.end7.i.cleanup_crit_edge, label %do.body

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.end7.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_vk_dma_alloc.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_vk_dma_alloc, %if.then17)) #6
          to label %do.end [label %if.then17], !srcloc !33

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %vkdata to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %vkdata, align 1
  %12 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_pages, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_vk_dma_alloc.__UNIQUE_ID_ddebug250, ptr noundef %dev, ptr noundef nonnull @.str.7, i64 noundef %1, i32 noundef %11, i32 noundef %13) #6
  br label %do.end

do.end:                                           ; preds = %if.then17, %do.body
  %direction21 = getelementptr inbounds %struct.bcm_vk_dma, ptr %dma, i32 0, i32 5
  %14 = ptrtoint ptr %direction21 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %direction, ptr %direction21, align 4
  %conv23 = and i32 %conv, -4096
  %15 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %direction)
  %cmp = icmp eq i32 %direction, 2
  %conv25 = zext i1 %cmp to i32
  %17 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dma, align 4
  %call27 = tail call i32 @get_user_pages_fast(i32 noundef %conv23, i32 noundef %16, i32 noundef %conv25, ptr noundef %18) #6
  %19 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nr_pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call27, i32 %20)
  %cmp29.not = icmp eq i32 %call27, %20
  br i1 %cmp29.not, label %if.end45, label %if.then31

if.then31:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %21 = tail call i32 @llvm.smax.i32(i32 %call27, i32 0)
  %22 = ptrtoint ptr %nr_pages to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %nr_pages, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %call27, i32 noundef %21) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp39 = icmp slt i32 %call27, 0
  %cond44 = select i1 %cmp39, i32 %call27, i32 -22
  br label %cleanup

if.end45:                                         ; preds = %do.end
  %mul = mul i32 %call27, 12
  %add47 = add i32 %mul, 8
  %sglen = getelementptr inbounds %struct.bcm_vk_dma, ptr %dma, i32 0, i32 4
  %23 = ptrtoint ptr %sglen to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add47, ptr %sglen, align 4
  %handle = getelementptr inbounds %struct.bcm_vk_dma, ptr %dma, i32 0, i32 2
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %add47, ptr noundef %handle, i32 noundef 3264, i32 noundef 0) #6
  %sglist = getelementptr inbounds %struct.bcm_vk_dma, ptr %dma, i32 0, i32 3
  %24 = ptrtoint ptr %sglist to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %sglist, align 4
  %tobool51.not = icmp eq ptr %call.i, null
  br i1 %tobool51.not, label %if.end45.cleanup_crit_edge, label %if.end53

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end53:                                         ; preds = %if.end45
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %call.i, align 4
  %26 = ptrtoint ptr %vkdata to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %vkdata, align 1
  %28 = ptrtoint ptr %sglist to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sglist, align 4
  %arrayidx57 = getelementptr i32, ptr %29, i32 1
  %30 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %27, ptr %arrayidx57, align 4
  %31 = load i32, ptr %vkdata, align 1
  %32 = load ptr, ptr %sglist, align 4
  %sub61 = sub nuw nsw i32 4096, %and
  %33 = tail call i32 @llvm.umin.i32(i32 %sub61, i32 %31)
  %34 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dma, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %38 = ptrtoint ptr %direction21 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %direction21, align 4
  %call73 = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %37, i32 noundef %and, i32 noundef %33, i32 noundef %39, i32 noundef 0) #6
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef %call73) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call73)
  %cmp.i.not = icmp eq i32 %call73, -1
  br i1 %cmp.i.not, label %if.then82, label %if.end85, !prof !32

if.then82:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dma, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  tail call void @__free_pages(ptr noundef %43, i32 noundef 0) #6
  br label %cleanup

if.end85:                                         ; preds = %if.end53
  %arrayidx60 = getelementptr i32, ptr %32, i32 2
  %44 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nr_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp87265 = icmp sgt i32 %45, 1
  br i1 %cmp87265, label %for.body.preheader, label %if.end85.for.end_crit_edge

if.end85.for.end_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.preheader:                               ; preds = %if.end85
  %sub69 = sub i32 %31, %33
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %sg_addr.0270 = phi i32 [ %sg_addr.1, %for.inc.for.body_crit_edge ], [ %call73, %for.body.preheader ]
  %i.0269 = phi i32 [ %inc132, %for.inc.for.body_crit_edge ], [ 1, %for.body.preheader ]
  %remaining_size.0268 = phi i32 [ %sub96, %for.inc.for.body_crit_edge ], [ %sub69, %for.body.preheader ]
  %transfer_size.0267 = phi i32 [ %transfer_size.1, %for.inc.for.body_crit_edge ], [ %33, %for.body.preheader ]
  %sgdata.0266 = phi ptr [ %sgdata.1, %for.inc.for.body_crit_edge ], [ %arrayidx60, %for.body.preheader ]
  %46 = tail call i32 @llvm.umin.i32(i32 %remaining_size.0268, i32 4096)
  %sub96 = sub i32 %remaining_size.0268, %46
  %47 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dma, align 4
  %arrayidx98 = getelementptr ptr, ptr %48, i32 %i.0269
  %49 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx98, align 4
  %51 = ptrtoint ptr %direction21 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %direction21, align 4
  %call100 = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %50, i32 noundef 0, i32 noundef %46, i32 noundef %52, i32 noundef 0) #6
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef %call100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call100)
  %cmp.i253.not = icmp eq i32 %call100, -1
  br i1 %cmp.i253.not, label %if.then109, label %if.end112, !prof !32

if.then109:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dma, align 4
  %arrayidx111 = getelementptr ptr, ptr %54, i32 %i.0269
  %55 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx111, align 4
  tail call void @__free_pages(ptr noundef %56, i32 noundef 0) #6
  br label %cleanup

if.end112:                                        ; preds = %for.body
  %add113 = add i32 %sg_addr.0270, %transfer_size.0267
  call void @__sanitizer_cov_trace_cmp4(i32 %call100, i32 %add113)
  %cmp114 = icmp eq i32 %call100, %add113
  %add116 = add i32 %46, %transfer_size.0267
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777217, i32 %add116)
  %cmp117 = icmp ult i32 %add116, 16777217
  %or.cond = and i1 %cmp117, %cmp114
  br i1 %or.cond, label %if.end112.for.inc_crit_edge, label %if.else

if.end112.for.inc_crit_edge:                      ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.else:                                          ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %sgdata.0266 to i32
  call void @__asan_storeN_noabort(i32 %57, i32 4)
  store i32 %transfer_size.0267, ptr %sgdata.0266, align 1
  %address124 = getelementptr inbounds %struct._vk_data, ptr %sgdata.0266, i32 0, i32 1
  %conv125 = zext i32 %sg_addr.0270 to i64
  %58 = ptrtoint ptr %address124 to i32
  call void @__asan_storeN_noabort(i32 %58, i32 8)
  store i64 %conv125, ptr %address124, align 1
  %59 = ptrtoint ptr %sglist to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sglist, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 4
  %inc = add i32 %62, 1
  store i32 %inc, ptr %60, align 4
  %incdec.ptr = getelementptr %struct._vk_data, ptr %sgdata.0266, i32 1
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.end112.for.inc_crit_edge
  %sgdata.1 = phi ptr [ %incdec.ptr, %if.else ], [ %sgdata.0266, %if.end112.for.inc_crit_edge ]
  %transfer_size.1 = phi i32 [ %46, %if.else ], [ %add116, %if.end112.for.inc_crit_edge ]
  %sg_addr.1 = phi i32 [ %call100, %if.else ], [ %sg_addr.0270, %if.end112.for.inc_crit_edge ]
  %inc132 = add nuw nsw i32 %i.0269, 1
  %63 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %nr_pages, align 4
  %cmp87 = icmp slt i32 %inc132, %64
  br i1 %cmp87, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end85.for.end_crit_edge
  %sgdata.0.lcssa = phi ptr [ %arrayidx60, %if.end85.for.end_crit_edge ], [ %sgdata.1, %for.inc.for.end_crit_edge ]
  %transfer_size.0.lcssa = phi i32 [ %33, %if.end85.for.end_crit_edge ], [ %transfer_size.1, %for.inc.for.end_crit_edge ]
  %sg_addr.0.lcssa = phi i32 [ %call73, %if.end85.for.end_crit_edge ], [ %sg_addr.1, %for.inc.for.end_crit_edge ]
  %65 = ptrtoint ptr %sgdata.0.lcssa to i32
  call void @__asan_storeN_noabort(i32 %65, i32 4)
  store i32 %transfer_size.0.lcssa, ptr %sgdata.0.lcssa, align 1
  %address136 = getelementptr inbounds %struct._vk_data, ptr %sgdata.0.lcssa, i32 0, i32 1
  %conv137 = zext i32 %sg_addr.0.lcssa to i64
  %66 = ptrtoint ptr %address136 to i32
  call void @__asan_storeN_noabort(i32 %66, i32 8)
  store i64 %conv137, ptr %address136, align 1
  %67 = ptrtoint ptr %sglist to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %sglist, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 4
  %inc143 = add i32 %70, 1
  store i32 %inc143, ptr %68, align 4
  %71 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %handle, align 4
  %conv148 = zext i32 %72 to i64
  %73 = ptrtoint ptr %address to i32
  call void @__asan_storeN_noabort(i32 %73, i32 8)
  store i64 %conv148, ptr %address, align 1
  %74 = load ptr, ptr %sglist, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %74, align 4
  %mul154 = mul i32 %76, 12
  %add155 = add i32 %mul154, 8
  %77 = ptrtoint ptr %vkdata to i32
  call void @__asan_storeN_noabort(i32 %77, i32 4)
  store i32 %add155, ptr %vkdata, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then109, %if.then82, %if.end45.cleanup_crit_edge, %if.then31, %if.end7.i.cleanup_crit_edge, %kmalloc_array.exit.thread
  %retval.0 = phi i32 [ %cond44, %if.then31 ], [ -5, %if.then82 ], [ -5, %if.then109 ], [ 0, %for.end ], [ -12, %if.end7.i.cleanup_crit_edge ], [ -12, %if.end45.cleanup_crit_edge ], [ -12, %kmalloc_array.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm_vk_dma_free(ptr noundef %dev, ptr nocapture noundef %dma) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm_vk_dma_free.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@bcm_vk_dma_free, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !33

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sglist = getelementptr inbounds %struct.bcm_vk_dma, ptr %dma, i32 0, i32 3
  %0 = ptrtoint ptr %sglist to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sglist, align 4
  %sglen = getelementptr inbounds %struct.bcm_vk_dma, ptr %dma, i32 0, i32 4
  %2 = ptrtoint ptr %sglen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sglen, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm_vk_dma_free.__UNIQUE_ID_ddebug255, ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef %1, i32 noundef %3) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sglist3 = getelementptr inbounds %struct.bcm_vk_dma, ptr %dma, i32 0, i32 3
  %4 = ptrtoint ptr %sglist3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sglist3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %arrayidx5 = getelementptr i32, ptr %5, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2 = icmp sgt i32 %7, 0
  br i1 %cmp2, label %for.body.lr.ph, label %do.end.for.end_crit_edge

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %direction = getelementptr inbounds %struct.bcm_vk_dma, ptr %dma, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.03 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx6 = getelementptr %struct._vk_data, ptr %arrayidx5, i32 %i.03
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %arrayidx6, align 1
  %address = getelementptr inbounds %struct._vk_data, ptr %arrayidx6, i32 0, i32 1
  %10 = ptrtoint ptr %address to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %address, align 1
  %conv = trunc i64 %11 to i32
  %12 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %direction, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %conv, i32 noundef %9, i32 noundef %13, i32 noundef 0) #6
  %inc = add nuw nsw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  %sglen10 = getelementptr inbounds %struct.bcm_vk_dma, ptr %dma, i32 0, i32 4
  %14 = ptrtoint ptr %sglen10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sglen10, align 4
  %16 = ptrtoint ptr %sglist3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sglist3, align 4
  %handle = getelementptr inbounds %struct.bcm_vk_dma, ptr %dma, i32 0, i32 2
  %18 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %handle, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %15, ptr noundef %17, i32 noundef %19, i32 noundef 0) #6
  %nr_pages = getelementptr inbounds %struct.bcm_vk_dma, ptr %dma, i32 0, i32 1
  %20 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp134 = icmp sgt i32 %21, 0
  br i1 %cmp134, label %for.end.for.body15_crit_edge, label %for.end.for.end19_crit_edge

for.end.for.end19_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end19

for.end.for.body15_crit_edge:                     ; preds = %for.end
  br label %for.body15

for.body15:                                       ; preds = %put_page.exit.for.body15_crit_edge, %for.end.for.body15_crit_edge
  %i.15 = phi i32 [ %inc18, %put_page.exit.for.body15_crit_edge ], [ 0, %for.end.for.body15_crit_edge ]
  %22 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dma, align 4
  %arrayidx16 = getelementptr ptr, ptr %23, i32 %i.15
  %24 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx16, align 4
  %26 = getelementptr inbounds %struct.page, ptr %25, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  %and.i.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !34

if.then.i.i:                                      ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i = add i32 %28, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %25 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %29, %if.end.i.i ]
  %30 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %30, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #6
  %31 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i.i.i.i = icmp eq i32 %32, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !32

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %33 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %33, ptr noundef nonnull @.str.11) #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #6, !srcloc !35
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !36
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #6
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #6, !srcloc !37
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %34, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@bcm_vk_dma_free, %if.then.i.i.i.i.i)) #6
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !33

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %30, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #6
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__put_page(ptr noundef %30) #6
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %inc18 = add nuw nsw i32 %i.15, 1
  %35 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nr_pages, align 4
  %cmp13 = icmp slt i32 %inc18, %36
  br i1 %cmp13, label %put_page.exit.for.body15_crit_edge, label %put_page.exit.for.end19_crit_edge

put_page.exit.for.end19_crit_edge:                ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end19

put_page.exit.for.body15_crit_edge:               ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body15

for.end19:                                        ; preds = %put_page.exit.for.end19_crit_edge, %for.end.for.end19_crit_edge
  %37 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dma, align 4
  tail call void @kfree(ptr noundef %38) #6
  %39 = ptrtoint ptr %sglist3 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %sglist3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcm_vk_sg_free(ptr noundef %dev, ptr nocapture noundef %dma, i32 noundef %num, ptr nocapture noundef %proc_cnt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %proc_cnt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %proc_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp7 = icmp sgt i32 %num, 0
  br i1 %cmp7, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.08 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %sglist = getelementptr %struct.bcm_vk_dma, ptr %dma, i32 %i.08, i32 3
  %1 = ptrtoint ptr %sglist to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sglist, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.bcm_vk_dma, ptr %dma, i32 %i.08
  tail call fastcc void @bcm_vk_dma_free(ptr noundef %dev, ptr noundef %arrayidx)
  %3 = ptrtoint ptr %proc_cnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %proc_cnt, align 4
  %add = add i32 %4, 1
  store i32 %add, ptr %proc_cnt, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.08, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_user_pages_fast(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

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
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/misc/bcm-vk/bcm_vk_sg.c", i32 200, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @bcm_vk_sg_alloc._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @bcm_vk_sg_alloc._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/misc/bcm-vk/bcm_vk_sg.c", i32 69, i32 2}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @bcm_vk_dma_alloc.__UNIQUE_ID_ddebug250, !9, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/misc/bcm-vk/bcm_vk_sg.c", i32 81, i32 3}
!15 = !{ptr @bcm_vk_dma_alloc._entry, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @bcm_vk_dma_alloc._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/misc/bcm-vk/bcm_vk_sg.c", i32 234, i32 2}
!19 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @bcm_vk_dma_free.__UNIQUE_ID_ddebug255, !18, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../include/linux/mm.h", i32 717, i32 2}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{!"branch_weights", i32 1, i32 2000}
!33 = !{i64 2148326186, i64 2148326191, i64 2148326204, i64 2148326248, i64 2148326282, i64 2148326303}
!34 = !{!"branch_weights", i32 2000, i32 1}
!35 = !{i64 2153566475, i64 2153566958, i64 2153566512, i64 2153566568, i64 2153566602, i64 2153566626, i64 2153566667, i64 2153566688, i64 2153566716, i64 2153566750}
!36 = !{i64 2148601245}
!37 = !{i64 2148515978, i64 2148516010, i64 2148516039, i64 2148516073, i64 2148516104, i64 2148516127}
!38 = !{i64 2148601474}
