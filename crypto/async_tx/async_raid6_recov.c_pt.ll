; ModuleID = '/llk/IR_all_yes/crypto/async_tx/async_raid6_recov.c_pt.bc'
source_filename = "../crypto/async_tx/async_raid6_recov.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+async_raid6_2data_recov\22, \22a\22\09"
module asm "\09.weak\09__crc_async_raid6_2data_recov\09\09\09\09"
module asm "\09.long\09__crc_async_raid6_2data_recov\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_async_raid6_2data_recov:\09\09\09\09\09"
module asm "\09.asciz \09\22async_raid6_2data_recov\22\09\09\09\09\09"
module asm "__kstrtabns_async_raid6_2data_recov:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+async_raid6_datap_recov\22, \22a\22\09"
module asm "\09.weak\09__crc_async_raid6_datap_recov\09\09\09\09"
module asm "\09.long\09__crc_async_raid6_datap_recov\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_async_raid6_datap_recov:\09\09\09\09\09"
module asm "\09.asciz \09\22async_raid6_datap_recov\22\09\09\09\09\09"
module asm "__kstrtabns_async_raid6_datap_recov:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.async_submit_ctl = type { i32, ptr, ptr, ptr, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dmaengine_unmap_data = type { i16, i8, i8, i8, ptr, %struct.kref, i32, [0 x i32] }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@async_raid6_2data_recov.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"async_raid6_recov\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"async_raid6_2data_recov\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"crypto/async_tx/async_raid6_recov.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: disks: %d len: %zu\0A\00", [40 x i8] zeroinitializer }, align 32
@raid6_empty_zero_page = external dso_local constant [4096 x i8], align 1
@raid6_2data_recov = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_async_raid6_2data_recov = external dso_local constant [0 x i8], align 1
@__kstrtabns_async_raid6_2data_recov = external dso_local constant [0 x i8], align 1
@__ksymtab_async_raid6_2data_recov = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @async_raid6_2data_recov to i32), ptr @__kstrtab_async_raid6_2data_recov, ptr @__kstrtabns_async_raid6_2data_recov }, section "___ksymtab_gpl+async_raid6_2data_recov", align 4
@async_raid6_datap_recov.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.3, i8 0, i8 121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"async_raid6_datap_recov\00", [40 x i8] zeroinitializer }, align 32
@raid6_datap_recov = external dso_local local_unnamed_addr global ptr, align 4
@raid6_gfexp = external dso_local local_unnamed_addr constant [256 x i8], align 256
@raid6_gfinv = external dso_local local_unnamed_addr constant [256 x i8], align 256
@__kstrtab_async_raid6_datap_recov = external dso_local constant [0 x i8], align 1
@__kstrtabns_async_raid6_datap_recov = external dso_local constant [0 x i8], align 1
@__ksymtab_async_raid6_datap_recov = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @async_raid6_datap_recov to i32), ptr @__kstrtab_async_raid6_datap_recov, ptr @__kstrtabns_async_raid6_datap_recov }, section "___ksymtab_gpl+async_raid6_datap_recov", align 4
@__UNIQUE_ID_author275 = internal constant [65 x i8] c"async_raid6_recov.author=Dan Williams <dan.j.williams@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description276 = internal constant [63 x i8] c"async_raid6_recov.description=asynchronous RAID-6 recovery api\00", section ".modinfo", align 1
@__UNIQUE_ID_file277 = internal constant [57 x i8] c"async_raid6_recov.file=crypto/async_tx/async_raid6_recov\00", section ".modinfo", align 1
@__UNIQUE_ID_license278 = internal constant [30 x i8] c"async_raid6_recov.license=GPL\00", section ".modinfo", align 1
@raid6_gfexi = external dso_local local_unnamed_addr constant [256 x i8], align 256
@raid6_gfmul = external dso_local local_unnamed_addr constant [256 x [256 x i8]], align 256
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 404, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private constant [39 x i8] c"../crypto/async_tx/async_raid6_recov.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 487, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_author275, ptr @__UNIQUE_ID_description276, ptr @__UNIQUE_ID_file277, ptr @__UNIQUE_ID_license278, ptr @__ksymtab_async_raid6_2data_recov, ptr @__ksymtab_async_raid6_datap_recov, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @async_raid6_2data_recov(i32 noundef %disks, i32 noundef %bytes, i32 noundef %faila, i32 noundef %failb, ptr noundef %blocks, ptr noundef %offs, ptr noundef %submit) #0 align 64 {
entry:
  %srcs.i135 = alloca [2 x ptr], align 4
  %src_offs.i136 = alloca [2 x i32], align 4
  %coef.i137 = alloca [2 x i8], align 1
  %srcs.i122 = alloca [2 x ptr], align 4
  %src_offs.i123 = alloca [2 x i32], align 4
  %coef.i124 = alloca [2 x i8], align 1
  %srcs.i = alloca [2 x ptr], align 4
  %src_offs.i = alloca [2 x i32], align 4
  %coef.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %scribble1 = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 4
  %0 = ptrtoint ptr %scribble1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %scribble1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %faila, i32 %failb)
  %cmp = icmp eq i32 %faila, %failb
  br i1 %cmp, label %do.body3, label %do.end8, !prof !29

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/async_tx/async_raid6_recov.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 400, 0\0A.popsection", ""() #5, !srcloc !30
  unreachable

do.end8:                                          ; preds = %entry
  %2 = tail call i32 @llvm.smax.i32(i32 %failb, i32 %faila)
  %3 = tail call i32 @llvm.smin.i32(i32 %failb, i32 %faila)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @async_raid6_2data_recov.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@async_raid6_2data_recov, %if.then23)) #5
          to label %do.end26 [label %if.then23], !srcloc !31

if.then23:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @async_raid6_2data_recov.__UNIQUE_ID_ddebug273, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %disks, i32 noundef %bytes) #5
  br label %do.end26

do.end26:                                         ; preds = %if.then23, %do.end8
  %call27 = tail call ptr @dma_find_channel(i32 noundef 3) #5
  %tobool28.not = icmp eq ptr %call27, null
  %tobool29.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool28.not, i1 true, i1 %tobool29.not
  br i1 %or.cond, label %if.then30, label %for.cond42.preheader

for.cond42.preheader:                             ; preds = %do.end26
  %sub = add i32 %disks, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp43163 = icmp sgt i32 %sub, 0
  br i1 %cmp43163, label %for.cond42.preheader.for.body45_crit_edge, label %for.cond42.preheader.do.body54_crit_edge

for.cond42.preheader.do.body54_crit_edge:         ; preds = %for.cond42.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body54

for.cond42.preheader.for.body45_crit_edge:        ; preds = %for.cond42.preheader
  br label %for.body45

if.then30:                                        ; preds = %do.end26
  %blocks. = select i1 %tobool29.not, ptr %blocks, ptr %1
  %depend_tx = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 1
  tail call void @async_tx_quiesce(ptr noundef %depend_tx) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %disks)
  %cmp32167 = icmp sgt i32 %disks, 0
  br i1 %cmp32167, label %if.then30.for.body_crit_edge, label %if.then30.for.end_crit_edge

if.then30.for.end_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.then30.for.body_crit_edge:                     ; preds = %if.then30
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then30.for.body_crit_edge
  %i.0168 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.then30.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %blocks, i32 %i.0168
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %cmp33 = icmp eq ptr %5, null
  br i1 %cmp33, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call37 = tail call ptr @page_address(ptr noundef nonnull %5) #5
  %arrayidx38 = getelementptr i32, ptr %offs, i32 %i.0168
  %6 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx38, align 4
  %add.ptr = getelementptr i8, ptr %call37, i32 %7
  br label %for.inc

for.inc:                                          ; preds = %if.else, %for.body.for.inc_crit_edge
  %add.ptr.sink = phi ptr [ %add.ptr, %if.else ], [ @raid6_empty_zero_page, %for.body.for.inc_crit_edge ]
  %8 = getelementptr ptr, ptr %blocks., i32 %i.0168
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr.sink, ptr %8, align 4
  %inc = add nuw nsw i32 %i.0168, 1
  %exitcond.not = icmp eq i32 %inc, %disks
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then30.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @raid6_2data_recov to i32))
  %10 = load ptr, ptr @raid6_2data_recov, align 4
  tail call void %10(i32 noundef %disks, i32 noundef %bytes, i32 noundef %3, i32 noundef %2, ptr noundef %blocks.) #5
  %cb_fn.i = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 2
  %11 = ptrtoint ptr %cb_fn.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cb_fn.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %for.end.cleanup_crit_edge, label %if.then.i

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %cb_param.i = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 3
  %13 = ptrtoint ptr %cb_param.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cb_param.i, align 4
  tail call void %12(ptr noundef %14) #5
  br label %cleanup

for.body45:                                       ; preds = %for.body45.for.body45_crit_edge, %for.cond42.preheader.for.body45_crit_edge
  %i.1165 = phi i32 [ %inc52, %for.body45.for.body45_crit_edge ], [ 0, %for.cond42.preheader.for.body45_crit_edge ]
  %non_zero_srcs.0164 = phi i32 [ %spec.select121, %for.body45.for.body45_crit_edge ], [ 0, %for.cond42.preheader.for.body45_crit_edge ]
  %arrayidx46 = getelementptr ptr, ptr %blocks, i32 %i.1165
  %15 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx46, align 4
  %tobool47.not = icmp ne ptr %16, null
  %inc49 = zext i1 %tobool47.not to i32
  %spec.select121 = add nuw nsw i32 %non_zero_srcs.0164, %inc49
  %inc52 = add nuw nsw i32 %i.1165, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc52, i32 %sub)
  %cmp43 = icmp slt i32 %inc52, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %spec.select121)
  %cmp44 = icmp ult i32 %spec.select121, 4
  %or.cond120 = select i1 %cmp43, i1 %cmp44, i1 false
  br i1 %or.cond120, label %for.body45.for.body45_crit_edge, label %for.end53

for.body45.for.body45_crit_edge:                  ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body45

for.end53:                                        ; preds = %for.body45
  %17 = zext i32 %spec.select121 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %spec.select121, label %sw.default [
    i32 0, label %for.end53.do.body54_crit_edge
    i32 1, label %for.end53.do.body54_crit_edge171
    i32 2, label %sw.bb60
    i32 3, label %sw.bb62
  ]

for.end53.do.body54_crit_edge171:                 ; preds = %for.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body54

for.end53.do.body54_crit_edge:                    ; preds = %for.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body54

do.body54:                                        ; preds = %for.end53.do.body54_crit_edge, %for.end53.do.body54_crit_edge171, %for.cond42.preheader.do.body54_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/async_tx/async_raid6_recov.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 436, 0\0A.popsection", ""() #5, !srcloc !32
  unreachable

sw.bb60:                                          ; preds = %for.end53
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %srcs.i) #5
  %18 = getelementptr inbounds [2 x ptr], ptr %srcs.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %src_offs.i) #5
  %19 = getelementptr inbounds [2 x i32], ptr %src_offs.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %coef.i) #5
  %20 = getelementptr inbounds [2 x i8], ptr %coef.i, i32 0, i32 1
  %21 = ptrtoint ptr %submit to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %submit, align 4
  %cb_fn2.i = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 2
  %23 = ptrtoint ptr %cb_fn2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cb_fn2.i, align 4
  %cb_param3.i = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 3
  %25 = ptrtoint ptr %cb_param3.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cb_param3.i, align 4
  %27 = ptrtoint ptr %scribble1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %scribble1, align 4
  %arrayidx.i = getelementptr ptr, ptr %blocks, i32 %sub
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx6.i = getelementptr i32, ptr %offs, i32 %sub
  %31 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx6.i, align 4
  %sub7.i = add i32 %disks, -1
  %arrayidx8.i = getelementptr ptr, ptr %blocks, i32 %sub7.i
  %33 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx8.i, align 4
  %arrayidx10.i = getelementptr i32, ptr %offs, i32 %sub7.i
  %35 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx10.i, align 4
  %arrayidx11.i = getelementptr ptr, ptr %blocks, i32 %3
  %37 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx11.i, align 4
  %arrayidx12.i = getelementptr i32, ptr %offs, i32 %3
  %39 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx12.i, align 4
  %arrayidx13.i = getelementptr ptr, ptr %blocks, i32 %2
  %41 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx13.i, align 4
  %arrayidx14.i = getelementptr i32, ptr %offs, i32 %2
  %43 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx14.i, align 4
  %45 = ptrtoint ptr %srcs.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %30, ptr %srcs.i, align 4
  %46 = ptrtoint ptr %src_offs.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %32, ptr %src_offs.i, align 4
  %47 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %34, ptr %18, align 4
  %48 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %36, ptr %19, align 4
  %sub19.i = sub i32 %2, %3
  %arrayidx20.i = getelementptr [256 x i8], ptr @raid6_gfexi, i32 0, i32 %sub19.i
  %49 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx20.i, align 1
  %51 = ptrtoint ptr %coef.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %coef.i, align 1
  %arrayidx22.i = getelementptr [256 x i8], ptr @raid6_gfexp, i32 0, i32 %3
  %52 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx22.i, align 1
  %arrayidx23.i = getelementptr [256 x i8], ptr @raid6_gfexp, i32 0, i32 %2
  %54 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx23.i, align 1
  %xor66.i = xor i8 %55, %53
  %xor.i = zext i8 %xor66.i to i32
  %arrayidx25.i = getelementptr [256 x i8], ptr @raid6_gfinv, i32 0, i32 %xor.i
  %56 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx25.i, align 1
  %58 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %20, align 1
  store i32 8, ptr %submit, align 4
  %depend_tx.i.i = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 1
  %59 = ptrtoint ptr %depend_tx.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %depend_tx.i.i, align 4
  store ptr null, ptr %cb_fn2.i, align 4
  store ptr null, ptr %cb_param3.i, align 4
  %call.i = call fastcc ptr @async_sum_product(ptr noundef %42, i32 noundef %44, ptr noundef nonnull %srcs.i, ptr noundef nonnull %src_offs.i, ptr noundef nonnull %coef.i, i32 noundef %bytes, ptr noundef %submit) #5
  %60 = ptrtoint ptr %srcs.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %30, ptr %srcs.i, align 4
  %61 = ptrtoint ptr %src_offs.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %32, ptr %src_offs.i, align 4
  %62 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %42, ptr %18, align 4
  %63 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %44, ptr %19, align 4
  %or.i = or i32 %22, 1
  %64 = ptrtoint ptr %submit to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %or.i, ptr %submit, align 4
  %65 = ptrtoint ptr %depend_tx.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call.i, ptr %depend_tx.i.i, align 4
  %66 = ptrtoint ptr %cb_fn2.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %24, ptr %cb_fn2.i, align 4
  %67 = ptrtoint ptr %cb_param3.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %26, ptr %cb_param3.i, align 4
  %68 = ptrtoint ptr %scribble1 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %28, ptr %scribble1, align 4
  %call35.i = call ptr @async_xor_offs(ptr noundef %38, i32 noundef %40, ptr noundef nonnull %srcs.i, ptr noundef nonnull %src_offs.i, i32 noundef 2, i32 noundef %bytes, ptr noundef %submit) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %coef.i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %src_offs.i) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %srcs.i) #5
  br label %cleanup

sw.bb62:                                          ; preds = %for.end53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %srcs.i122) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %src_offs.i123) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %coef.i124) #5
  %69 = ptrtoint ptr %submit to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %submit, align 4
  %cb_fn2.i125 = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 2
  %71 = ptrtoint ptr %cb_fn2.i125 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cb_fn2.i125, align 4
  %cb_param3.i126 = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 3
  %73 = ptrtoint ptr %cb_param3.i126 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cb_param3.i126, align 4
  %75 = ptrtoint ptr %scribble1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %scribble1, align 4
  br i1 %cmp43163, label %sw.bb62.for.body.i_crit_edge, label %sw.bb62.__2data_recov_5.exit_crit_edge

sw.bb62.__2data_recov_5.exit_crit_edge:           ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #7
  br label %__2data_recov_5.exit

sw.bb62.for.body.i_crit_edge:                     ; preds = %sw.bb62
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb62.for.body.i_crit_edge
  %i.0180.i = phi i32 [ %inc10.i, %for.body.i.for.body.i_crit_edge ], [ 0, %sw.bb62.for.body.i_crit_edge ]
  %good.0179.i = phi i32 [ %good.1.i, %for.body.i.for.body.i_crit_edge ], [ -1, %sw.bb62.for.body.i_crit_edge ]
  %good_srcs.0178.i = phi i32 [ %good_srcs.1.i, %for.body.i.for.body.i_crit_edge ], [ 0, %sw.bb62.for.body.i_crit_edge ]
  %arrayidx.i129 = getelementptr ptr, ptr %blocks, i32 %i.0180.i
  %77 = ptrtoint ptr %arrayidx.i129 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx.i129, align 4
  %cmp5.i = icmp eq ptr %78, null
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0180.i, i32 %3)
  %cmp6.i = icmp eq i32 %i.0180.i, %3
  %or.cond.i = select i1 %cmp5.i, i1 true, i1 %cmp6.i
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0180.i, i32 %2)
  %cmp7.i = icmp eq i32 %i.0180.i, %2
  %or.cond156.i = select i1 %or.cond.i, i1 true, i1 %cmp7.i
  %not.or.cond156.i = xor i1 %or.cond156.i, true
  %inc.i = zext i1 %not.or.cond156.i to i32
  %good_srcs.1.i = add i32 %good_srcs.0178.i, %inc.i
  %good.1.i = select i1 %or.cond156.i, i32 %good.0179.i, i32 %i.0180.i
  %inc10.i = add nuw nsw i32 %i.0180.i, 1
  %exitcond.not.i = icmp eq i32 %inc10.i, %sub
  br i1 %exitcond.not.i, label %do.body.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

do.body.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %good_srcs.1.i)
  %phi.cmp.i = icmp sgt i32 %good_srcs.1.i, 1
  br i1 %phi.cmp.i, label %do.body14.i, label %do.body.i.__2data_recov_5.exit_crit_edge, !prof !29

do.body.i.__2data_recov_5.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__2data_recov_5.exit

do.body14.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/async_tx/async_raid6_recov.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 229, 0\0A.popsection", ""() #5, !srcloc !33
  unreachable

__2data_recov_5.exit:                             ; preds = %do.body.i.__2data_recov_5.exit_crit_edge, %sw.bb62.__2data_recov_5.exit_crit_edge
  %good.0.lcssa185.i = phi i32 [ %good.1.i, %do.body.i.__2data_recov_5.exit_crit_edge ], [ -1, %sw.bb62.__2data_recov_5.exit_crit_edge ]
  %79 = getelementptr inbounds [2 x i8], ptr %coef.i124, i32 0, i32 1
  %80 = getelementptr inbounds [2 x i32], ptr %src_offs.i123, i32 0, i32 1
  %81 = getelementptr inbounds [2 x ptr], ptr %srcs.i122, i32 0, i32 1
  %arrayidx22.i130 = getelementptr ptr, ptr %blocks, i32 %sub
  %82 = ptrtoint ptr %arrayidx22.i130 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx22.i130, align 4
  %arrayidx24.i = getelementptr i32, ptr %offs, i32 %sub
  %84 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx24.i, align 4
  %sub25.i = add i32 %disks, -1
  %arrayidx26.i = getelementptr ptr, ptr %blocks, i32 %sub25.i
  %86 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx26.i, align 4
  %arrayidx28.i = getelementptr i32, ptr %offs, i32 %sub25.i
  %88 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx28.i, align 4
  %arrayidx29.i = getelementptr ptr, ptr %blocks, i32 %good.0.lcssa185.i
  %90 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx29.i, align 4
  %arrayidx30.i = getelementptr i32, ptr %offs, i32 %good.0.lcssa185.i
  %92 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx30.i, align 4
  %arrayidx31.i = getelementptr ptr, ptr %blocks, i32 %3
  %94 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx31.i, align 4
  %arrayidx32.i = getelementptr i32, ptr %offs, i32 %3
  %96 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx32.i, align 4
  %arrayidx33.i = getelementptr ptr, ptr %blocks, i32 %2
  %98 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx33.i, align 4
  %arrayidx34.i = getelementptr i32, ptr %offs, i32 %2
  %100 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx34.i, align 4
  %102 = ptrtoint ptr %submit to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 8, ptr %submit, align 4
  %depend_tx.i.i131 = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 1
  %103 = ptrtoint ptr %depend_tx.i.i131 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %depend_tx.i.i131, align 4
  %104 = ptrtoint ptr %cb_fn2.i125 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %cb_fn2.i125, align 4
  %105 = ptrtoint ptr %cb_param3.i126 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr null, ptr %cb_param3.i126, align 4
  %call.i132 = tail call ptr @async_memcpy(ptr noundef %95, ptr noundef %91, i32 noundef %97, i32 noundef %93, i32 noundef %bytes, ptr noundef %submit) #5
  %106 = ptrtoint ptr %submit to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 8, ptr %submit, align 4
  %107 = ptrtoint ptr %depend_tx.i.i131 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call.i132, ptr %depend_tx.i.i131, align 4
  %108 = ptrtoint ptr %cb_fn2.i125 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr null, ptr %cb_fn2.i125, align 4
  %109 = ptrtoint ptr %cb_param3.i126 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr null, ptr %cb_param3.i126, align 4
  %110 = ptrtoint ptr %scribble1 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %76, ptr %scribble1, align 4
  %arrayidx35.i = getelementptr [256 x i8], ptr @raid6_gfexp, i32 0, i32 %good.0.lcssa185.i
  %111 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx35.i, align 1
  %call36.i = tail call fastcc ptr @async_mult(ptr noundef %99, i32 noundef %101, ptr noundef %91, i32 noundef %93, i8 noundef zeroext %112, i32 noundef %bytes, ptr noundef %submit) #5
  %113 = ptrtoint ptr %srcs.i122 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %95, ptr %srcs.i122, align 4
  %114 = ptrtoint ptr %src_offs.i123 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %97, ptr %src_offs.i123, align 4
  %115 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %83, ptr %81, align 4
  %116 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %85, ptr %80, align 4
  %117 = ptrtoint ptr %submit to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 10, ptr %submit, align 4
  %118 = ptrtoint ptr %depend_tx.i.i131 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call36.i, ptr %depend_tx.i.i131, align 4
  %119 = ptrtoint ptr %cb_fn2.i125 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr null, ptr %cb_fn2.i125, align 4
  %120 = ptrtoint ptr %cb_param3.i126 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr null, ptr %cb_param3.i126, align 4
  %121 = ptrtoint ptr %scribble1 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %76, ptr %scribble1, align 4
  %call42.i = call ptr @async_xor_offs(ptr noundef %95, i32 noundef %97, ptr noundef nonnull %srcs.i122, ptr noundef nonnull %src_offs.i123, i32 noundef 2, i32 noundef %bytes, ptr noundef %submit) #5
  %122 = ptrtoint ptr %srcs.i122 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %99, ptr %srcs.i122, align 4
  %123 = ptrtoint ptr %src_offs.i123 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %101, ptr %src_offs.i123, align 4
  %124 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %87, ptr %81, align 4
  %125 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %89, ptr %80, align 4
  %126 = ptrtoint ptr %submit to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 10, ptr %submit, align 4
  %127 = ptrtoint ptr %depend_tx.i.i131 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call42.i, ptr %depend_tx.i.i131, align 4
  %128 = ptrtoint ptr %cb_fn2.i125 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr null, ptr %cb_fn2.i125, align 4
  %129 = ptrtoint ptr %cb_param3.i126 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr null, ptr %cb_param3.i126, align 4
  %130 = ptrtoint ptr %scribble1 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %76, ptr %scribble1, align 4
  %call49.i = call ptr @async_xor_offs(ptr noundef %99, i32 noundef %101, ptr noundef nonnull %srcs.i122, ptr noundef nonnull %src_offs.i123, i32 noundef 2, i32 noundef %bytes, ptr noundef %submit) #5
  %131 = ptrtoint ptr %srcs.i122 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %95, ptr %srcs.i122, align 4
  %132 = ptrtoint ptr %src_offs.i123 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %97, ptr %src_offs.i123, align 4
  %133 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %99, ptr %81, align 4
  %134 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %101, ptr %80, align 4
  %sub54.i = sub i32 %2, %3
  %arrayidx55.i = getelementptr [256 x i8], ptr @raid6_gfexi, i32 0, i32 %sub54.i
  %135 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx55.i, align 1
  %137 = ptrtoint ptr %coef.i124 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %136, ptr %coef.i124, align 1
  %arrayidx57.i = getelementptr [256 x i8], ptr @raid6_gfexp, i32 0, i32 %3
  %138 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx57.i, align 1
  %arrayidx58.i = getelementptr [256 x i8], ptr @raid6_gfexp, i32 0, i32 %2
  %140 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx58.i, align 1
  %xor155.i = xor i8 %141, %139
  %xor.i133 = zext i8 %xor155.i to i32
  %arrayidx60.i = getelementptr [256 x i8], ptr @raid6_gfinv, i32 0, i32 %xor.i133
  %142 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx60.i, align 1
  %144 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %143, ptr %79, align 1
  %145 = ptrtoint ptr %submit to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 8, ptr %submit, align 4
  %146 = ptrtoint ptr %depend_tx.i.i131 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %call49.i, ptr %depend_tx.i.i131, align 4
  %147 = ptrtoint ptr %cb_fn2.i125 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr null, ptr %cb_fn2.i125, align 4
  %148 = ptrtoint ptr %cb_param3.i126 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr null, ptr %cb_param3.i126, align 4
  %149 = ptrtoint ptr %scribble1 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %76, ptr %scribble1, align 4
  %call65.i = call fastcc ptr @async_sum_product(ptr noundef %99, i32 noundef %101, ptr noundef nonnull %srcs.i122, ptr noundef nonnull %src_offs.i123, ptr noundef nonnull %coef.i124, i32 noundef %bytes, ptr noundef %submit) #5
  %150 = ptrtoint ptr %srcs.i122 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %95, ptr %srcs.i122, align 4
  %151 = ptrtoint ptr %src_offs.i123 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %97, ptr %src_offs.i123, align 4
  %152 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %99, ptr %81, align 4
  %153 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %101, ptr %80, align 4
  %or.i134 = or i32 %70, 2
  %154 = ptrtoint ptr %submit to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %or.i134, ptr %submit, align 4
  %155 = ptrtoint ptr %depend_tx.i.i131 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %call65.i, ptr %depend_tx.i.i131, align 4
  %156 = ptrtoint ptr %cb_fn2.i125 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %72, ptr %cb_fn2.i125, align 4
  %157 = ptrtoint ptr %cb_param3.i126 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %74, ptr %cb_param3.i126, align 4
  %158 = ptrtoint ptr %scribble1 to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %76, ptr %scribble1, align 4
  %call72.i = call ptr @async_xor_offs(ptr noundef %95, i32 noundef %97, ptr noundef nonnull %srcs.i122, ptr noundef nonnull %src_offs.i123, i32 noundef 2, i32 noundef %bytes, ptr noundef %submit) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %coef.i124) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %src_offs.i123) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %srcs.i122) #5
  br label %cleanup

sw.default:                                       ; preds = %for.end53
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %srcs.i135) #5
  %159 = getelementptr inbounds [2 x ptr], ptr %srcs.i135, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %src_offs.i136) #5
  %160 = getelementptr inbounds [2 x i32], ptr %src_offs.i136, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %coef.i137) #5
  %161 = getelementptr inbounds [2 x i8], ptr %coef.i137, i32 0, i32 1
  %162 = ptrtoint ptr %submit to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %submit, align 4
  %cb_fn2.i138 = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 2
  %164 = ptrtoint ptr %cb_fn2.i138 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %cb_fn2.i138, align 4
  %cb_param3.i139 = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 3
  %166 = ptrtoint ptr %cb_param3.i139 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %cb_param3.i139, align 4
  %168 = ptrtoint ptr %scribble1 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %scribble1, align 4
  %arrayidx.i142 = getelementptr ptr, ptr %blocks, i32 %sub
  %170 = ptrtoint ptr %arrayidx.i142 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %arrayidx.i142, align 4
  %arrayidx6.i143 = getelementptr i32, ptr %offs, i32 %sub
  %172 = ptrtoint ptr %arrayidx6.i143 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx6.i143, align 4
  %sub7.i144 = add i32 %disks, -1
  %arrayidx8.i145 = getelementptr ptr, ptr %blocks, i32 %sub7.i144
  %174 = ptrtoint ptr %arrayidx8.i145 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %arrayidx8.i145, align 4
  %arrayidx10.i146 = getelementptr i32, ptr %offs, i32 %sub7.i144
  %176 = ptrtoint ptr %arrayidx10.i146 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx10.i146, align 4
  %arrayidx11.i147 = getelementptr ptr, ptr %blocks, i32 %3
  %178 = ptrtoint ptr %arrayidx11.i147 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %arrayidx11.i147, align 4
  %arrayidx12.i148 = getelementptr i32, ptr %offs, i32 %3
  %180 = ptrtoint ptr %arrayidx12.i148 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %arrayidx12.i148, align 4
  store ptr null, ptr %arrayidx11.i147, align 4
  store ptr %179, ptr %arrayidx.i142, align 4
  store i32 %181, ptr %arrayidx6.i143, align 4
  %arrayidx18.i = getelementptr ptr, ptr %blocks, i32 %2
  %182 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %arrayidx18.i, align 4
  %arrayidx19.i = getelementptr i32, ptr %offs, i32 %2
  %184 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %arrayidx19.i, align 4
  store ptr null, ptr %arrayidx18.i, align 4
  store ptr %183, ptr %arrayidx8.i145, align 4
  store i32 %185, ptr %arrayidx10.i146, align 4
  store i32 8, ptr %submit, align 4
  %depend_tx.i.i149 = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 1
  %186 = ptrtoint ptr %depend_tx.i.i149 to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr null, ptr %depend_tx.i.i149, align 4
  store ptr null, ptr %cb_fn2.i138, align 4
  store ptr null, ptr %cb_param3.i139, align 4
  store ptr %169, ptr %scribble1, align 4
  %call.i150 = tail call ptr @async_gen_syndrome(ptr noundef %blocks, ptr noundef %offs, i32 noundef %disks, i32 noundef %bytes, ptr noundef %submit) #5
  %187 = ptrtoint ptr %arrayidx11.i147 to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr %179, ptr %arrayidx11.i147, align 4
  %188 = ptrtoint ptr %arrayidx12.i148 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %181, ptr %arrayidx12.i148, align 4
  %189 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %183, ptr %arrayidx18.i, align 4
  %190 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %185, ptr %arrayidx19.i, align 4
  %191 = ptrtoint ptr %arrayidx.i142 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %171, ptr %arrayidx.i142, align 4
  %192 = ptrtoint ptr %arrayidx6.i143 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %173, ptr %arrayidx6.i143, align 4
  %193 = ptrtoint ptr %arrayidx8.i145 to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %175, ptr %arrayidx8.i145, align 4
  %194 = ptrtoint ptr %arrayidx10.i146 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %177, ptr %arrayidx10.i146, align 4
  %195 = ptrtoint ptr %srcs.i135 to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %179, ptr %srcs.i135, align 4
  %196 = ptrtoint ptr %src_offs.i136 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %181, ptr %src_offs.i136, align 4
  %197 = ptrtoint ptr %159 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %171, ptr %159, align 4
  %198 = ptrtoint ptr %160 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %173, ptr %160, align 4
  %199 = ptrtoint ptr %submit to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 10, ptr %submit, align 4
  %200 = ptrtoint ptr %depend_tx.i.i149 to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %call.i150, ptr %depend_tx.i.i149, align 4
  %201 = ptrtoint ptr %cb_fn2.i138 to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr null, ptr %cb_fn2.i138, align 4
  %202 = ptrtoint ptr %cb_param3.i139 to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr null, ptr %cb_param3.i139, align 4
  %203 = ptrtoint ptr %scribble1 to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %169, ptr %scribble1, align 4
  %call42.i151 = call ptr @async_xor_offs(ptr noundef %179, i32 noundef %181, ptr noundef nonnull %srcs.i135, ptr noundef nonnull %src_offs.i136, i32 noundef 2, i32 noundef %bytes, ptr noundef %submit) #5
  %204 = ptrtoint ptr %srcs.i135 to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %183, ptr %srcs.i135, align 4
  %205 = ptrtoint ptr %src_offs.i136 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %185, ptr %src_offs.i136, align 4
  %206 = ptrtoint ptr %159 to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr %175, ptr %159, align 4
  %207 = ptrtoint ptr %160 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %177, ptr %160, align 4
  %208 = ptrtoint ptr %submit to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 10, ptr %submit, align 4
  %209 = ptrtoint ptr %depend_tx.i.i149 to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr %call42.i151, ptr %depend_tx.i.i149, align 4
  %210 = ptrtoint ptr %cb_fn2.i138 to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr null, ptr %cb_fn2.i138, align 4
  %211 = ptrtoint ptr %cb_param3.i139 to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr null, ptr %cb_param3.i139, align 4
  %212 = ptrtoint ptr %scribble1 to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %169, ptr %scribble1, align 4
  %call49.i152 = call ptr @async_xor_offs(ptr noundef %183, i32 noundef %185, ptr noundef nonnull %srcs.i135, ptr noundef nonnull %src_offs.i136, i32 noundef 2, i32 noundef %bytes, ptr noundef %submit) #5
  %213 = ptrtoint ptr %srcs.i135 to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %179, ptr %srcs.i135, align 4
  %214 = ptrtoint ptr %src_offs.i136 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %181, ptr %src_offs.i136, align 4
  %215 = ptrtoint ptr %159 to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr %183, ptr %159, align 4
  %216 = ptrtoint ptr %160 to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 %185, ptr %160, align 4
  %sub54.i153 = sub i32 %2, %3
  %arrayidx55.i154 = getelementptr [256 x i8], ptr @raid6_gfexi, i32 0, i32 %sub54.i153
  %217 = ptrtoint ptr %arrayidx55.i154 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %arrayidx55.i154, align 1
  %219 = ptrtoint ptr %coef.i137 to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %218, ptr %coef.i137, align 1
  %arrayidx57.i155 = getelementptr [256 x i8], ptr @raid6_gfexp, i32 0, i32 %3
  %220 = ptrtoint ptr %arrayidx57.i155 to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %arrayidx57.i155, align 1
  %arrayidx58.i156 = getelementptr [256 x i8], ptr @raid6_gfexp, i32 0, i32 %2
  %222 = ptrtoint ptr %arrayidx58.i156 to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %arrayidx58.i156, align 1
  %xor173.i = xor i8 %223, %221
  %xor.i157 = zext i8 %xor173.i to i32
  %arrayidx60.i158 = getelementptr [256 x i8], ptr @raid6_gfinv, i32 0, i32 %xor.i157
  %224 = ptrtoint ptr %arrayidx60.i158 to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %arrayidx60.i158, align 1
  %226 = ptrtoint ptr %161 to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 %225, ptr %161, align 1
  %227 = ptrtoint ptr %submit to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 8, ptr %submit, align 4
  %228 = ptrtoint ptr %depend_tx.i.i149 to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr %call49.i152, ptr %depend_tx.i.i149, align 4
  %229 = ptrtoint ptr %cb_fn2.i138 to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr null, ptr %cb_fn2.i138, align 4
  %230 = ptrtoint ptr %cb_param3.i139 to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr null, ptr %cb_param3.i139, align 4
  %231 = ptrtoint ptr %scribble1 to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr %169, ptr %scribble1, align 4
  %call65.i159 = call fastcc ptr @async_sum_product(ptr noundef %183, i32 noundef %185, ptr noundef nonnull %srcs.i135, ptr noundef nonnull %src_offs.i136, ptr noundef nonnull %coef.i137, i32 noundef %bytes, ptr noundef %submit) #5
  %232 = ptrtoint ptr %srcs.i135 to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr %179, ptr %srcs.i135, align 4
  %233 = ptrtoint ptr %src_offs.i136 to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %181, ptr %src_offs.i136, align 4
  %234 = ptrtoint ptr %159 to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr %183, ptr %159, align 4
  %235 = ptrtoint ptr %160 to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 %185, ptr %160, align 4
  %or.i160 = or i32 %163, 2
  %236 = ptrtoint ptr %submit to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %or.i160, ptr %submit, align 4
  %237 = ptrtoint ptr %depend_tx.i.i149 to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr %call65.i159, ptr %depend_tx.i.i149, align 4
  %238 = ptrtoint ptr %cb_fn2.i138 to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr %165, ptr %cb_fn2.i138, align 4
  %239 = ptrtoint ptr %cb_param3.i139 to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr %167, ptr %cb_param3.i139, align 4
  %240 = ptrtoint ptr %scribble1 to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr %169, ptr %scribble1, align 4
  %call72.i161 = call ptr @async_xor_offs(ptr noundef %179, i32 noundef %181, ptr noundef nonnull %srcs.i135, ptr noundef nonnull %src_offs.i136, i32 noundef 2, i32 noundef %bytes, ptr noundef %submit) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %coef.i137) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %src_offs.i136) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %srcs.i135) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %__2data_recov_5.exit, %sw.bb60, %if.then.i, %for.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %call72.i161, %sw.default ], [ %call72.i, %__2data_recov_5.exit ], [ %call35.i, %sw.bb60 ], [ null, %for.end.cleanup_crit_edge ], [ null, %if.then.i ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_find_channel(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @async_tx_quiesce(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @async_raid6_datap_recov(i32 noundef %disks, i32 noundef %bytes, i32 noundef %faila, ptr noundef %blocks, ptr noundef %offs, ptr noundef %submit) #0 align 64 {
entry:
  %srcs = alloca [2 x ptr], align 4
  %src_offs = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %submit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %submit, align 4
  %cb_fn2 = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 2
  %2 = ptrtoint ptr %cb_fn2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cb_fn2, align 4
  %cb_param3 = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 3
  %4 = ptrtoint ptr %cb_param3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cb_param3, align 4
  %scribble4 = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 4
  %6 = ptrtoint ptr %scribble4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %scribble4, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %srcs) #5
  %8 = ptrtoint ptr %srcs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %srcs, align 4, !annotation !34
  %9 = getelementptr inbounds [2 x ptr], ptr %srcs, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %src_offs) #5
  %10 = getelementptr inbounds [2 x i32], ptr %src_offs, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @async_raid6_datap_recov.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@async_raid6_datap_recov, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !31

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @async_raid6_datap_recov.__UNIQUE_ID_ddebug274, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %disks, i32 noundef %bytes) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call7 = tail call ptr @dma_find_channel(i32 noundef 3) #5
  %tobool8.not = icmp eq ptr %call7, null
  %tobool9.not = icmp eq ptr %7, null
  %or.cond = select i1 %tobool8.not, i1 true, i1 %tobool9.not
  br i1 %or.cond, label %if.then10, label %for.cond21.preheader

for.cond21.preheader:                             ; preds = %do.end
  %sub = add i32 %disks, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp22268 = icmp sgt i32 %sub, 0
  br i1 %cmp22268, label %for.cond21.preheader.for.body23_crit_edge, label %for.cond21.preheader.do.body47_crit_edge

for.cond21.preheader.do.body47_crit_edge:         ; preds = %for.cond21.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body47

for.cond21.preheader.for.body23_crit_edge:        ; preds = %for.cond21.preheader
  br label %for.body23

if.then10:                                        ; preds = %do.end
  %blocks. = select i1 %tobool9.not, ptr %blocks, ptr %7
  %depend_tx = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 1
  tail call void @async_tx_quiesce(ptr noundef %depend_tx) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %disks)
  %cmp275 = icmp sgt i32 %disks, 0
  br i1 %cmp275, label %if.then10.for.body_crit_edge, label %if.then10.for.end_crit_edge

if.then10.for.end_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.then10.for.body_crit_edge:                     ; preds = %if.then10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then10.for.body_crit_edge
  %i.0276 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.then10.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %blocks, i32 %i.0276
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %cmp12 = icmp eq ptr %12, null
  br i1 %cmp12, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call16 = tail call ptr @page_address(ptr noundef nonnull %12) #5
  %arrayidx17 = getelementptr i32, ptr %offs, i32 %i.0276
  %13 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx17, align 4
  %add.ptr = getelementptr i8, ptr %call16, i32 %14
  br label %for.inc

for.inc:                                          ; preds = %if.else, %for.body.for.inc_crit_edge
  %add.ptr.sink = phi ptr [ %add.ptr, %if.else ], [ @raid6_empty_zero_page, %for.body.for.inc_crit_edge ]
  %15 = getelementptr ptr, ptr %blocks., i32 %i.0276
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr.sink, ptr %15, align 4
  %inc = add nuw nsw i32 %i.0276, 1
  %exitcond279.not = icmp eq i32 %inc, %disks
  br i1 %exitcond279.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then10.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @raid6_datap_recov to i32))
  %17 = load ptr, ptr @raid6_datap_recov, align 4
  tail call void %17(i32 noundef %disks, i32 noundef %bytes, i32 noundef %faila, ptr noundef %blocks.) #5
  %18 = ptrtoint ptr %cb_fn2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cb_fn2, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %for.end.cleanup_crit_edge, label %if.then.i

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %cb_param3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cb_param3, align 4
  tail call void %19(ptr noundef %21) #5
  br label %cleanup

for.body23:                                       ; preds = %for.inc35.for.body23_crit_edge, %for.cond21.preheader.for.body23_crit_edge
  %i.1271 = phi i32 [ %inc36, %for.inc35.for.body23_crit_edge ], [ 0, %for.cond21.preheader.for.body23_crit_edge ]
  %good.0270 = phi i32 [ %good.1, %for.inc35.for.body23_crit_edge ], [ -1, %for.cond21.preheader.for.body23_crit_edge ]
  %good_srcs.0269 = phi i32 [ %good_srcs.1, %for.inc35.for.body23_crit_edge ], [ 0, %for.cond21.preheader.for.body23_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1271, i32 %faila)
  %cmp24 = icmp eq i32 %i.1271, %faila
  br i1 %cmp24, label %for.body23.for.inc35_crit_edge, label %if.end26

for.body23.for.inc35_crit_edge:                   ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc35

if.end26:                                         ; preds = %for.body23
  %arrayidx27 = getelementptr ptr, ptr %blocks, i32 %i.1271
  %22 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx27, align 4
  %tobool28.not = icmp eq ptr %23, null
  br i1 %tobool28.not, label %if.end26.for.inc35_crit_edge, label %if.then29

if.end26.for.inc35_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc35

if.then29:                                        ; preds = %if.end26
  %inc30 = add i32 %good_srcs.0269, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc30)
  %cmp31 = icmp sgt i32 %inc30, 1
  br i1 %cmp31, label %if.then29.do.end55_crit_edge, label %if.then29.for.inc35_crit_edge

if.then29.for.inc35_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc35

if.then29.do.end55_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end55

for.inc35:                                        ; preds = %if.then29.for.inc35_crit_edge, %if.end26.for.inc35_crit_edge, %for.body23.for.inc35_crit_edge
  %good_srcs.1 = phi i32 [ %good_srcs.0269, %for.body23.for.inc35_crit_edge ], [ 1, %if.then29.for.inc35_crit_edge ], [ %good_srcs.0269, %if.end26.for.inc35_crit_edge ]
  %good.1 = phi i32 [ %good.0270, %for.body23.for.inc35_crit_edge ], [ %i.1271, %if.then29.for.inc35_crit_edge ], [ %good.0270, %if.end26.for.inc35_crit_edge ]
  %inc36 = add nuw nsw i32 %i.1271, 1
  %exitcond.not = icmp eq i32 %inc36, %sub
  br i1 %exitcond.not, label %do.body38, label %for.inc35.for.body23_crit_edge

for.inc35.for.body23_crit_edge:                   ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body23

do.body38:                                        ; preds = %for.inc35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %good_srcs.1)
  %cmp39 = icmp eq i32 %good_srcs.1, 0
  br i1 %cmp39, label %do.body38.do.body47_crit_edge, label %do.body38.do.end55_crit_edge, !prof !29

do.body38.do.end55_crit_edge:                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end55

do.body38.do.body47_crit_edge:                    ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body47

do.body47:                                        ; preds = %do.body38.do.body47_crit_edge, %for.cond21.preheader.do.body47_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/async_tx/async_raid6_recov.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 523, 0\0A.popsection", ""() #5, !srcloc !35
  unreachable

do.end55:                                         ; preds = %do.body38.do.end55_crit_edge, %if.then29.do.end55_crit_edge
  %good.2262 = phi i32 [ %good.1, %do.body38.do.end55_crit_edge ], [ %i.1271, %if.then29.do.end55_crit_edge ]
  %good_srcs.2261 = phi i32 [ %good_srcs.1, %do.body38.do.end55_crit_edge ], [ 2, %if.then29.do.end55_crit_edge ]
  %arrayidx57 = getelementptr ptr, ptr %blocks, i32 %sub
  %24 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx57, align 4
  %arrayidx59 = getelementptr i32, ptr %offs, i32 %sub
  %26 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx59, align 4
  %sub60 = add i32 %disks, -1
  %arrayidx61 = getelementptr ptr, ptr %blocks, i32 %sub60
  %28 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx61, align 4
  %arrayidx63 = getelementptr i32, ptr %offs, i32 %sub60
  %30 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx63, align 4
  %arrayidx64 = getelementptr ptr, ptr %blocks, i32 %faila
  %32 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx64, align 4
  %arrayidx65 = getelementptr i32, ptr %offs, i32 %faila
  %34 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx65, align 4
  store ptr null, ptr %arrayidx64, align 4
  store ptr %33, ptr %arrayidx61, align 4
  store i32 %35, ptr %arrayidx63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %good_srcs.2261)
  %cmp71 = icmp eq i32 %good_srcs.2261, 1
  br i1 %cmp71, label %if.then72, label %if.else78

if.then72:                                        ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx73 = getelementptr ptr, ptr %blocks, i32 %good.2262
  %36 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx73, align 4
  %arrayidx74 = getelementptr i32, ptr %offs, i32 %good.2262
  %38 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx74, align 4
  %40 = ptrtoint ptr %submit to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 8, ptr %submit, align 4
  %depend_tx.i = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 1
  %41 = ptrtoint ptr %depend_tx.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %depend_tx.i, align 4
  %42 = ptrtoint ptr %cb_fn2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %cb_fn2, align 4
  %43 = ptrtoint ptr %cb_param3 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %cb_param3, align 4
  %44 = ptrtoint ptr %scribble4 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %7, ptr %scribble4, align 4
  %call75 = tail call ptr @async_memcpy(ptr noundef %25, ptr noundef %37, i32 noundef %27, i32 noundef %39, i32 noundef %bytes, ptr noundef %submit) #5
  %45 = ptrtoint ptr %submit to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 8, ptr %submit, align 4
  %46 = ptrtoint ptr %depend_tx.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call75, ptr %depend_tx.i, align 4
  %47 = ptrtoint ptr %cb_fn2 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %cb_fn2, align 4
  %48 = ptrtoint ptr %cb_param3 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %cb_param3, align 4
  %49 = ptrtoint ptr %scribble4 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %7, ptr %scribble4, align 4
  %arrayidx76 = getelementptr [256 x i8], ptr @raid6_gfexp, i32 0, i32 %good.2262
  %50 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx76, align 1
  %call77 = tail call fastcc ptr @async_mult(ptr noundef %33, i32 noundef %35, ptr noundef %37, i32 noundef %39, i8 noundef zeroext %51, i32 noundef %bytes, ptr noundef %submit)
  br label %if.end80

if.else78:                                        ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %submit to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 8, ptr %submit, align 4
  %depend_tx.i241 = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 1
  %53 = ptrtoint ptr %depend_tx.i241 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %depend_tx.i241, align 4
  %54 = ptrtoint ptr %cb_fn2 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %cb_fn2, align 4
  %55 = ptrtoint ptr %cb_param3 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %cb_param3, align 4
  %56 = ptrtoint ptr %scribble4 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %7, ptr %scribble4, align 4
  %call79 = tail call ptr @async_gen_syndrome(ptr noundef %blocks, ptr noundef %offs, i32 noundef %disks, i32 noundef %bytes, ptr noundef %submit) #5
  br label %if.end80

if.end80:                                         ; preds = %if.else78, %if.then72
  %tx.0 = phi ptr [ %call77, %if.then72 ], [ %call79, %if.else78 ]
  %57 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %33, ptr %arrayidx64, align 4
  %58 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %35, ptr %arrayidx65, align 4
  %59 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %29, ptr %arrayidx61, align 4
  %60 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %31, ptr %arrayidx63, align 4
  %arrayidx87 = getelementptr [256 x i8], ptr @raid6_gfexp, i32 0, i32 %faila
  %61 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx87, align 1
  %idxprom = zext i8 %62 to i32
  %arrayidx88 = getelementptr [256 x i8], ptr @raid6_gfinv, i32 0, i32 %idxprom
  %63 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx88, align 1
  %65 = ptrtoint ptr %srcs to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %33, ptr %srcs, align 4
  %66 = ptrtoint ptr %src_offs to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %35, ptr %src_offs, align 4
  %67 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %29, ptr %9, align 4
  %68 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %31, ptr %10, align 4
  %69 = ptrtoint ptr %submit to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 10, ptr %submit, align 4
  %depend_tx.i245 = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 1
  %70 = ptrtoint ptr %depend_tx.i245 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %tx.0, ptr %depend_tx.i245, align 4
  %71 = ptrtoint ptr %cb_fn2 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %cb_fn2, align 4
  %72 = ptrtoint ptr %cb_param3 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %cb_param3, align 4
  %73 = ptrtoint ptr %scribble4 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %7, ptr %scribble4, align 4
  %call94 = call ptr @async_xor_offs(ptr noundef %33, i32 noundef %35, ptr noundef nonnull %srcs, ptr noundef nonnull %src_offs, i32 noundef 2, i32 noundef %bytes, ptr noundef %submit) #5
  %74 = ptrtoint ptr %submit to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 8, ptr %submit, align 4
  %75 = ptrtoint ptr %depend_tx.i245 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call94, ptr %depend_tx.i245, align 4
  %76 = ptrtoint ptr %cb_fn2 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %cb_fn2, align 4
  %77 = ptrtoint ptr %cb_param3 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %cb_param3, align 4
  %78 = ptrtoint ptr %scribble4 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %7, ptr %scribble4, align 4
  %call95 = call fastcc ptr @async_mult(ptr noundef %33, i32 noundef %35, ptr noundef %33, i32 noundef %35, i8 noundef zeroext %64, i32 noundef %bytes, ptr noundef %submit)
  %79 = ptrtoint ptr %srcs to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %25, ptr %srcs, align 4
  %80 = ptrtoint ptr %src_offs to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %27, ptr %src_offs, align 4
  %81 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %33, ptr %9, align 4
  %82 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %35, ptr %10, align 4
  %or = or i32 %1, 2
  %83 = ptrtoint ptr %submit to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %or, ptr %submit, align 4
  %84 = ptrtoint ptr %depend_tx.i245 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call95, ptr %depend_tx.i245, align 4
  %85 = ptrtoint ptr %cb_fn2 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %3, ptr %cb_fn2, align 4
  %86 = ptrtoint ptr %cb_param3 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %5, ptr %cb_param3, align 4
  %87 = ptrtoint ptr %scribble4 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %7, ptr %scribble4, align 4
  %call102 = call ptr @async_xor_offs(ptr noundef %25, i32 noundef %27, ptr noundef nonnull %srcs, ptr noundef nonnull %src_offs, i32 noundef 2, i32 noundef %bytes, ptr noundef %submit) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %if.then.i, %for.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %call102, %if.end80 ], [ null, %for.end.cleanup_crit_edge ], [ null, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %src_offs) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %srcs) #5
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @async_memcpy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @async_mult(ptr noundef %dest, i32 noundef %d_off, ptr noundef %src, i32 noundef %s_off, i8 noundef zeroext %coef, i32 noundef %len, ptr noundef %submit) unnamed_addr #0 align 64 {
entry:
  %coef.addr = alloca i8, align 1
  %dma_dest = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %coef.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %coef, ptr %coef.addr, align 1
  %call = tail call ptr @__async_tx_find_channel(ptr noundef %submit, i32 noundef 3) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end28_crit_edge, label %cond.end

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

cond.end:                                         ; preds = %entry
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %cond.end.if.end28_crit_edge, label %if.end

cond.end.if.end28_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.end:                                           ; preds = %cond.end
  %dev = getelementptr inbounds %struct.dma_device, ptr %2, i32 0, i32 15
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %call2 = tail call ptr @dmaengine_get_unmap_data(ptr noundef %4, i32 noundef 3, i32 noundef 2048) #5
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.if.end28_crit_edge, label %if.then4

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dma_dest) #5
  %5 = ptrtoint ptr %dma_dest to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %dma_dest, align 4, !annotation !34
  %6 = getelementptr inbounds [2 x i32], ptr %dma_dest, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = ptrtoint ptr %submit to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %submit, align 4
  %and = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool7.not, i32 4, i32 36
  %call10 = tail call i32 @dma_map_page_attrs(ptr noundef %8, ptr noundef %src, i32 noundef %s_off, i32 noundef %len, i32 noundef 1, i32 noundef 0) #5
  %addr = getelementptr inbounds %struct.dmaengine_unmap_data, ptr %call2, i32 0, i32 7
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call10, ptr %addr, align 4
  %to_cnt = getelementptr inbounds %struct.dmaengine_unmap_data, ptr %call2, i32 0, i32 1
  %12 = ptrtoint ptr %to_cnt to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %to_cnt, align 2
  %inc = add i8 %13, 1
  store i8 %inc, ptr %to_cnt, align 2
  %call11 = tail call i32 @dma_map_page_attrs(ptr noundef %8, ptr noundef %dest, i32 noundef %d_off, i32 noundef %len, i32 noundef 0, i32 noundef 0) #5
  %arrayidx13 = getelementptr %struct.dmaengine_unmap_data, ptr %call2, i32 1, i32 3
  %14 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call11, ptr %arrayidx13, align 4
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call11, ptr %6, align 4
  %bidi_cnt = getelementptr inbounds %struct.dmaengine_unmap_data, ptr %call2, i32 0, i32 3
  %16 = ptrtoint ptr %bidi_cnt to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bidi_cnt, align 4
  %inc17 = add i8 %17, 1
  store i8 %inc17, ptr %bidi_cnt, align 4
  %len18 = getelementptr inbounds %struct.dmaengine_unmap_data, ptr %call2, i32 0, i32 6
  %18 = ptrtoint ptr %len18 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %len, ptr %len18, align 4
  %device_prep_dma_pq = getelementptr inbounds %struct.dma_device, ptr %2, i32 0, i32 34
  %19 = ptrtoint ptr %device_prep_dma_pq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device_prep_dma_pq, align 4
  %call21 = call ptr %20(ptr noundef nonnull %call, ptr noundef nonnull %dma_dest, ptr noundef %addr, i32 noundef 1, ptr noundef nonnull %coef.addr, i32 noundef %len, i32 noundef %spec.select) #5
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.then4
  %kref.i = getelementptr inbounds %struct.dmaengine_unmap_data, ptr %call2, i32 0, i32 5
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #5
  call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #5
  %21 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #5, !srcloc !36
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then23.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !29

if.then23.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then23
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %22 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %.not.i.i.i.i.i = icmp sgt i32 %22, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.dma_set_unmap.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !37

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dma_set_unmap.exit_crit_edge:   ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_set_unmap.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then23.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then23.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #5
  br label %dma_set_unmap.exit

dma_set_unmap.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dma_set_unmap.exit_crit_edge
  %unmap1.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call21, i32 0, i32 9
  %23 = ptrtoint ptr %unmap1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call2, ptr %unmap1.i, align 4
  call void @dmaengine_unmap_put(ptr noundef nonnull %call2) #5
  call void @async_tx_submit(ptr noundef nonnull %call, ptr noundef nonnull %call21, ptr noundef %submit) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dma_dest) #5
  br label %cleanup38

if.end24:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  call void @dmaengine_unmap_put(ptr noundef nonnull %call2) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dma_dest) #5
  br label %if.end28

if.end28:                                         ; preds = %if.end24, %if.end.if.end28_crit_edge, %cond.end.if.end28_crit_edge, %entry.if.end28_crit_edge
  %depend_tx = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 1
  call void @async_tx_quiesce(ptr noundef %depend_tx) #5
  %24 = ptrtoint ptr %coef.addr to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %coef.addr, align 1
  %idxprom = zext i8 %25 to i32
  %arrayidx29 = getelementptr [256 x [256 x i8]], ptr @raid6_gfmul, i32 0, i32 %idxprom
  %call31 = call ptr @page_address(ptr noundef %dest) #5
  %call32 = call ptr @page_address(ptr noundef %src) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool34.not83 = icmp eq i32 %len, 0
  br i1 %tobool34.not83, label %if.end28.cleanup38_crit_edge, label %while.body.preheader

if.end28.cleanup38_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup38

while.body.preheader:                             ; preds = %if.end28
  %add.ptr33 = getelementptr i8, ptr %call32, i32 %s_off
  %add.ptr = getelementptr i8, ptr %call31, i32 %d_off
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %s.086 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %add.ptr33, %while.body.preheader ]
  %d.085 = phi ptr [ %incdec.ptr37, %while.body.while.body_crit_edge ], [ %add.ptr, %while.body.preheader ]
  %len.addr.084 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %len, %while.body.preheader ]
  %dec = add i32 %len.addr.084, -1
  %incdec.ptr = getelementptr i8, ptr %s.086, i32 1
  %26 = ptrtoint ptr %s.086 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %s.086, align 1
  %idxprom35 = zext i8 %27 to i32
  %arrayidx36 = getelementptr i8, ptr %arrayidx29, i32 %idxprom35
  %28 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx36, align 1
  %incdec.ptr37 = getelementptr i8, ptr %d.085, i32 1
  %30 = ptrtoint ptr %d.085 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %d.085, align 1
  %tobool34.not = icmp eq i32 %dec, 0
  br i1 %tobool34.not, label %while.body.cleanup38_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body.cleanup38_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup38

cleanup38:                                        ; preds = %while.body.cleanup38_crit_edge, %if.end28.cleanup38_crit_edge, %dma_set_unmap.exit
  %retval.1 = phi ptr [ %call21, %dma_set_unmap.exit ], [ null, %if.end28.cleanup38_crit_edge ], [ null, %while.body.cleanup38_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @async_gen_syndrome(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @async_xor_offs(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @async_sum_product(ptr noundef %dest, i32 noundef %d_off, ptr nocapture noundef readonly %srcs, ptr nocapture noundef readonly %src_offs, ptr noundef %coef, i32 noundef %len, ptr noundef %submit) unnamed_addr #0 align 64 {
entry:
  %pq = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__async_tx_find_channel(ptr noundef %submit, i32 noundef 3) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end34_crit_edge, label %cond.end

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

cond.end:                                         ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %cond.end.if.end34_crit_edge, label %if.end

cond.end.if.end34_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.end:                                           ; preds = %cond.end
  %dev = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call2 = tail call ptr @dmaengine_get_unmap_data(ptr noundef %3, i32 noundef 3, i32 noundef 2048) #5
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.if.end34_crit_edge, label %if.then4

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then4:                                         ; preds = %if.end
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pq) #5
  %6 = ptrtoint ptr %pq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %pq, align 4, !annotation !34
  %7 = getelementptr inbounds [2 x i32], ptr %pq, i32 0, i32 1
  %8 = ptrtoint ptr %submit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %submit, align 4
  %and = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool7.not, i32 4, i32 36
  %10 = ptrtoint ptr %srcs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %srcs, align 4
  %12 = ptrtoint ptr %src_offs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %src_offs, align 4
  %call11 = tail call i32 @dma_map_page_attrs(ptr noundef %5, ptr noundef %11, i32 noundef %13, i32 noundef %len, i32 noundef 1, i32 noundef 0) #5
  %addr = getelementptr inbounds %struct.dmaengine_unmap_data, ptr %call2, i32 0, i32 7
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call11, ptr %addr, align 4
  %arrayidx13 = getelementptr ptr, ptr %srcs, i32 1
  %15 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx13, align 4
  %arrayidx14 = getelementptr i32, ptr %src_offs, i32 1
  %17 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx14, align 4
  %call15 = tail call i32 @dma_map_page_attrs(ptr noundef %5, ptr noundef %16, i32 noundef %18, i32 noundef %len, i32 noundef 1, i32 noundef 0) #5
  %arrayidx17 = getelementptr %struct.dmaengine_unmap_data, ptr %call2, i32 1, i32 3
  %19 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call15, ptr %arrayidx17, align 4
  %to_cnt = getelementptr inbounds %struct.dmaengine_unmap_data, ptr %call2, i32 0, i32 1
  %20 = ptrtoint ptr %to_cnt to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %to_cnt, align 2
  %call18 = tail call i32 @dma_map_page_attrs(ptr noundef %5, ptr noundef %dest, i32 noundef %d_off, i32 noundef %len, i32 noundef 0, i32 noundef 0) #5
  %arrayidx20 = getelementptr %struct.dmaengine_unmap_data, ptr %call2, i32 1, i32 4
  %21 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call18, ptr %arrayidx20, align 4
  %bidi_cnt = getelementptr inbounds %struct.dmaengine_unmap_data, ptr %call2, i32 0, i32 3
  %22 = ptrtoint ptr %bidi_cnt to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %bidi_cnt, align 4
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call18, ptr %7, align 4
  %len24 = getelementptr inbounds %struct.dmaengine_unmap_data, ptr %call2, i32 0, i32 6
  %24 = ptrtoint ptr %len24 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %len, ptr %len24, align 4
  %device_prep_dma_pq = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 34
  %25 = ptrtoint ptr %device_prep_dma_pq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device_prep_dma_pq, align 4
  %call27 = call ptr %26(ptr noundef nonnull %call, ptr noundef nonnull %pq, ptr noundef %addr, i32 noundef 2, ptr noundef %coef, i32 noundef %len, i32 noundef %spec.select) #5
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.end30, label %if.then29

if.then29:                                        ; preds = %if.then4
  %kref.i = getelementptr inbounds %struct.dmaengine_unmap_data, ptr %call2, i32 0, i32 5
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #5
  call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #5
  %27 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #5, !srcloc !36
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then29.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !29

if.then29.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then29
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %28 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %.not.i.i.i.i.i = icmp sgt i32 %28, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.dma_set_unmap.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !37

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dma_set_unmap.exit_crit_edge:   ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_set_unmap.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then29.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then29.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #5
  br label %dma_set_unmap.exit

dma_set_unmap.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dma_set_unmap.exit_crit_edge
  %unmap1.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call27, i32 0, i32 9
  %29 = ptrtoint ptr %unmap1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call2, ptr %unmap1.i, align 4
  call void @async_tx_submit(ptr noundef nonnull %call, ptr noundef nonnull %call27, ptr noundef %submit) #5
  call void @dmaengine_unmap_put(ptr noundef nonnull %call2) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pq) #5
  br label %cleanup60

if.end30:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  call void @dmaengine_unmap_put(ptr noundef nonnull %call2) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pq) #5
  br label %if.end34

if.end34:                                         ; preds = %if.end30, %if.end.if.end34_crit_edge, %cond.end.if.end34_crit_edge, %entry.if.end34_crit_edge
  %depend_tx = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 1
  call void @async_tx_quiesce(ptr noundef %depend_tx) #5
  %30 = ptrtoint ptr %coef to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %coef, align 1
  %idxprom = zext i8 %31 to i32
  %arrayidx36 = getelementptr [256 x [256 x i8]], ptr @raid6_gfmul, i32 0, i32 %idxprom
  %arrayidx38 = getelementptr i8, ptr %coef, i32 1
  %32 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx38, align 1
  %idxprom39 = zext i8 %33 to i32
  %arrayidx40 = getelementptr [256 x [256 x i8]], ptr @raid6_gfmul, i32 0, i32 %idxprom39
  %34 = ptrtoint ptr %srcs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %srcs, align 4
  %call43 = call ptr @page_address(ptr noundef %35) #5
  %36 = ptrtoint ptr %src_offs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %src_offs, align 4
  %arrayidx45 = getelementptr ptr, ptr %srcs, i32 1
  %38 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx45, align 4
  %call46 = call ptr @page_address(ptr noundef %39) #5
  %arrayidx47 = getelementptr i32, ptr %src_offs, i32 1
  %40 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx47, align 4
  %call49 = call ptr @page_address(ptr noundef %dest) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool51.not119 = icmp eq i32 %len, 0
  br i1 %tobool51.not119, label %if.end34.cleanup60_crit_edge, label %while.body.preheader

if.end34.cleanup60_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup60

while.body.preheader:                             ; preds = %if.end34
  %add.ptr50 = getelementptr i8, ptr %call49, i32 %d_off
  %add.ptr48 = getelementptr i8, ptr %call46, i32 %41
  %add.ptr = getelementptr i8, ptr %call43, i32 %37
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %c.0123 = phi ptr [ %incdec.ptr59, %while.body.while.body_crit_edge ], [ %add.ptr50, %while.body.preheader ]
  %b.0122 = phi ptr [ %incdec.ptr54, %while.body.while.body_crit_edge ], [ %add.ptr48, %while.body.preheader ]
  %a.0121 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %add.ptr, %while.body.preheader ]
  %len.addr.0120 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %len, %while.body.preheader ]
  %dec = add i32 %len.addr.0120, -1
  %incdec.ptr = getelementptr i8, ptr %a.0121, i32 1
  %42 = ptrtoint ptr %a.0121 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %a.0121, align 1
  %idxprom52 = zext i8 %43 to i32
  %arrayidx53 = getelementptr i8, ptr %arrayidx36, i32 %idxprom52
  %44 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx53, align 1
  %incdec.ptr54 = getelementptr i8, ptr %b.0122, i32 1
  %46 = ptrtoint ptr %b.0122 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %b.0122, align 1
  %idxprom55 = zext i8 %47 to i32
  %arrayidx56 = getelementptr i8, ptr %arrayidx40, i32 %idxprom55
  %48 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx56, align 1
  %xor112 = xor i8 %49, %45
  %incdec.ptr59 = getelementptr i8, ptr %c.0123, i32 1
  %50 = ptrtoint ptr %c.0123 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %xor112, ptr %c.0123, align 1
  %tobool51.not = icmp eq i32 %dec, 0
  br i1 %tobool51.not, label %while.body.cleanup60_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body.cleanup60_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup60

cleanup60:                                        ; preds = %while.body.cleanup60_crit_edge, %if.end34.cleanup60_crit_edge, %dma_set_unmap.exit
  %retval.1 = phi ptr [ %call27, %dma_set_unmap.exit ], [ null, %if.end34.cleanup60_crit_edge ], [ null, %while.body.cleanup60_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__async_tx_find_channel(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmaengine_get_unmap_data(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @async_tx_submit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmaengine_unmap_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !13, !15, !17, !19}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../crypto/async_tx/async_raid6_recov.c", i32 404, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @async_raid6_2data_recov.__UNIQUE_ID_ddebug273, !1, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!6 = !{ptr @__ksymtab_async_raid6_2data_recov, !7, !"__ksymtab_async_raid6_2data_recov", i1 false, i1 false}
!7 = !{!"../crypto/async_tx/async_raid6_recov.c", i32 459, i32 1}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../crypto/async_tx/async_raid6_recov.c", i32 487, i32 2}
!10 = !{ptr @async_raid6_datap_recov.__UNIQUE_ID_ddebug274, !9, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!11 = !{ptr @__ksymtab_async_raid6_datap_recov, !12, !"__ksymtab_async_raid6_datap_recov", i1 false, i1 false}
!12 = !{!"../crypto/async_tx/async_raid6_recov.c", i32 590, i32 1}
!13 = !{ptr @__UNIQUE_ID_author275, !14, !"__UNIQUE_ID_author275", i1 false, i1 false}
!14 = !{!"../crypto/async_tx/async_raid6_recov.c", i32 592, i32 1}
!15 = !{ptr @__UNIQUE_ID_description276, !16, !"__UNIQUE_ID_description276", i1 false, i1 false}
!16 = !{!"../crypto/async_tx/async_raid6_recov.c", i32 593, i32 1}
!17 = !{ptr @__UNIQUE_ID_file277, !18, !"__UNIQUE_ID_file277", i1 false, i1 false}
!18 = !{!"../crypto/async_tx/async_raid6_recov.c", i32 594, i32 1}
!19 = !{ptr @__UNIQUE_ID_license278, !18, !"__UNIQUE_ID_license278", i1 false, i1 false}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"branch_weights", i32 1, i32 2000}
!30 = !{i64 2154531701, i64 2154532201, i64 2154531738, i64 2154531794, i64 2154531828, i64 2154531852, i64 2154531893, i64 2154531914, i64 2154531942, i64 2154531976}
!31 = !{i64 2148706403, i64 2148706408, i64 2148706421, i64 2148706465, i64 2148706499, i64 2148706520}
!32 = !{i64 2154535706, i64 2154536206, i64 2154535743, i64 2154535799, i64 2154535833, i64 2154535857, i64 2154535898, i64 2154535919, i64 2154535947, i64 2154535981}
!33 = !{i64 2154529817, i64 2154530317, i64 2154529854, i64 2154529910, i64 2154529944, i64 2154529968, i64 2154530009, i64 2154530030, i64 2154530058, i64 2154530092}
!34 = !{!"auto-init"}
!35 = !{i64 2154541380, i64 2154541880, i64 2154541417, i64 2154541473, i64 2154541507, i64 2154541531, i64 2154541572, i64 2154541593, i64 2154541621, i64 2154541655}
!36 = !{i64 2148226118, i64 2148226150, i64 2148226179, i64 2148226213, i64 2148226244, i64 2148226267}
!37 = !{!"branch_weights", i32 2000, i32 1}
