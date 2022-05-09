; ModuleID = '/llk/IR_all_yes/crypto/async_tx/async_xor.c_pt.bc'
source_filename = "../crypto/async_tx/async_xor.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+async_xor_offs\22, \22a\22\09"
module asm "\09.weak\09__crc_async_xor_offs\09\09\09\09"
module asm "\09.long\09__crc_async_xor_offs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_async_xor_offs:\09\09\09\09\09"
module asm "\09.asciz \09\22async_xor_offs\22\09\09\09\09\09"
module asm "__kstrtabns_async_xor_offs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+async_xor\22, \22a\22\09"
module asm "\09.weak\09__crc_async_xor\09\09\09\09"
module asm "\09.long\09__crc_async_xor\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_async_xor:\09\09\09\09\09"
module asm "\09.asciz \09\22async_xor\22\09\09\09\09\09"
module asm "__kstrtabns_async_xor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+async_xor_val_offs\22, \22a\22\09"
module asm "\09.weak\09__crc_async_xor_val_offs\09\09\09\09"
module asm "\09.long\09__crc_async_xor_val_offs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_async_xor_val_offs:\09\09\09\09\09"
module asm "\09.asciz \09\22async_xor_val_offs\22\09\09\09\09\09"
module asm "__kstrtabns_async_xor_val_offs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+async_xor_val\22, \22a\22\09"
module asm "\09.weak\09__crc_async_xor_val\09\09\09\09"
module asm "\09.long\09__crc_async_xor_val\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_async_xor_val:\09\09\09\09\09"
module asm "\09.asciz \09\22async_xor_val\22\09\09\09\09\09"
module asm "__kstrtabns_async_xor_val:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.async_submit_ctl = type { i32, ptr, ptr, ptr, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@async_xor_offs.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"async_xor\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"async_xor_offs\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"crypto/async_tx/async_xor.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s (async): len: %zu\0A\00", [42 x i8] zeroinitializer }, align 32
@async_xor_offs.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s (sync): len: %zu\0A\00", [43 x i8] zeroinitializer }, align 32
@async_xor_offs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: no space for dma address conversion\0A\00", [55 x i8] zeroinitializer }, align 32
@__kstrtab_async_xor_offs = external dso_local constant [0 x i8], align 1
@__kstrtabns_async_xor_offs = external dso_local constant [0 x i8], align 1
@__ksymtab_async_xor_offs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @async_xor_offs to i32), ptr @__kstrtab_async_xor_offs, ptr @__kstrtabns_async_xor_offs }, section "___ksymtab_gpl+async_xor_offs", align 4
@__kstrtab_async_xor = external dso_local constant [0 x i8], align 1
@__kstrtabns_async_xor = external dso_local constant [0 x i8], align 1
@__ksymtab_async_xor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @async_xor to i32), ptr @__kstrtab_async_xor, ptr @__kstrtabns_async_xor }, section "___ksymtab_gpl+async_xor", align 4
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"async_xor_val_offs\00", [45 x i8] zeroinitializer }, align 32
@async_xor_val_offs.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.8, i8 0, i8 92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: (sync) len: %zu\0A\00", [43 x i8] zeroinitializer }, align 32
@__kstrtab_async_xor_val_offs = external dso_local constant [0 x i8], align 1
@__kstrtabns_async_xor_val_offs = external dso_local constant [0 x i8], align 1
@__ksymtab_async_xor_val_offs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @async_xor_val_offs to i32), ptr @__kstrtab_async_xor_val_offs, ptr @__kstrtabns_async_xor_val_offs }, section "___ksymtab_gpl+async_xor_val_offs", align 4
@__kstrtab_async_xor_val = external dso_local constant [0 x i8], align 1
@__kstrtabns_async_xor_val = external dso_local constant [0 x i8], align 1
@__ksymtab_async_xor_val = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @async_xor_val to i32), ptr @__kstrtab_async_xor_val, ptr @__kstrtabns_async_xor_val }, section "___ksymtab_gpl+async_xor_val", align 4
@__UNIQUE_ID_author244 = internal constant [35 x i8] c"async_xor.author=Intel Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_description245 = internal constant [56 x i8] c"async_xor.description=asynchronous xor/xor-zero-sum api\00", section ".modinfo", align 1
@__UNIQUE_ID_file246 = internal constant [41 x i8] c"async_xor.file=crypto/async_tx/async_xor\00", section ".modinfo", align 1
@__UNIQUE_ID_license247 = internal constant [22 x i8] c"async_xor.license=GPL\00", section ".modinfo", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 203, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 226, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 227, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 335, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private constant [31 x i8] c"../crypto/async_tx/async_xor.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 368, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_author244, ptr @__UNIQUE_ID_description245, ptr @__UNIQUE_ID_file246, ptr @__UNIQUE_ID_license247, ptr @__ksymtab_async_xor, ptr @__ksymtab_async_xor_offs, ptr @__ksymtab_async_xor_val, ptr @__ksymtab_async_xor_val_offs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @async_xor_offs(ptr noundef %dest, i32 noundef %offset, ptr noundef %src_list, ptr noundef readonly %src_offs, i32 noundef %src_cnt, i32 noundef %len, ptr noundef %submit) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__async_tx_find_channel(ptr noundef %submit, i32 noundef 2) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end.thread, label %cond.end

cond.end:                                         ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %src_cnt)
  %cmp = icmp slt i32 %src_cnt, 2
  br i1 %cmp, label %cond.end.do.body4_crit_edge, label %do.end9, !prof !45

cond.end.do.body4_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body4

cond.end.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %src_cnt)
  %cmp197 = icmp slt i32 %src_cnt, 2
  br i1 %cmp197, label %cond.end.thread.do.body4_crit_edge, label %cond.end.thread.if.else_crit_edge, !prof !45

cond.end.thread.if.else_crit_edge:                ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

cond.end.thread.do.body4_crit_edge:               ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body4

do.body4:                                         ; preds = %cond.end.thread.do.body4_crit_edge, %cond.end.do.body4_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/async_tx/async_xor.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 192, 0\0A.popsection", ""() #5, !srcloc !46
  unreachable

do.end9:                                          ; preds = %cond.end
  %tobool10.not = icmp eq ptr %1, null
  br i1 %tobool10.not, label %do.end9.if.else_crit_edge, label %if.end13

do.end9.if.else_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.end13:                                         ; preds = %do.end9
  %dev = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %add = add nuw i32 %src_cnt, 1
  %call12 = tail call ptr @dmaengine_get_unmap_data(ptr noundef %3, i32 noundef %add, i32 noundef 2048) #5
  %tobool14.not = icmp eq ptr %call12, null
  br i1 %tobool14.not, label %if.end13.if.else_crit_edge, label %land.lhs.true

if.end13.if.else_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %if.end13
  %xor_align.i.i = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %xor_align.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xor_align.i.i, align 4
  %notmask.i.i.i = shl nsw i32 -1, %5
  %sub.i.i.i = xor i32 %notmask.i.i.i, -1
  %or1.i.i.i = or i32 %len, %offset
  %and.i.i.i = and i32 %or1.i.i.i, %sub.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.end.i:                                         ; preds = %land.lhs.true
  %tobool.not.i.not = icmp eq ptr %src_offs, null
  br i1 %tobool.not.i.not, label %if.end.i.if.then16_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.if.then16_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %src_cnt
  br i1 %exitcond.not.i, label %for.cond.i.if.then16_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.cond.i.if.then16_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.018.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %src_offs, i32 %i.018.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %or1.i.i14.i = or i32 %7, %len
  %and.i.i15.i = and i32 %or1.i.i14.i, %sub.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i15.i)
  %tobool.not.i.i16.i = icmp eq i32 %and.i.i15.i, 0
  br i1 %tobool.not.i.i16.i, label %for.cond.i, label %for.body.i.if.else_crit_edge

for.body.i.if.else_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then16:                                        ; preds = %for.cond.i.if.then16_crit_edge, %if.end.i.if.then16_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @async_xor_offs.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@async_xor_offs, %if.then26)) #5
          to label %do.end29 [label %if.then26], !srcloc !47

if.then26:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @async_xor_offs.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %len) #5
  br label %do.end29

do.end29:                                         ; preds = %if.then26, %if.then16
  %len30 = getelementptr inbounds %struct.dmaengine_unmap_data, ptr %call12, i32 0, i32 6
  %8 = ptrtoint ptr %len30 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %len, ptr %len30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_cnt)
  %cmp31210 = icmp sgt i32 %src_cnt, 0
  br i1 %cmp31210, label %for.body.lr.ph, label %do.end29.for.end_crit_edge

do.end29.for.end_crit_edge:                       ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end29
  %to_cnt = getelementptr inbounds %struct.dmaengine_unmap_data, ptr %call12, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %j.0214 = phi i32 [ 0, %for.body.lr.ph ], [ %j.1, %for.inc.for.body_crit_edge ]
  %i.0211 = phi i32 [ 0, %for.body.lr.ph ], [ %inc46, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %src_list, i32 %i.0211
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool32.not = icmp eq ptr %10, null
  br i1 %tobool32.not, label %for.body.for.inc_crit_edge, label %if.end34

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end34:                                         ; preds = %for.body
  %11 = ptrtoint ptr %to_cnt to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %to_cnt, align 2
  %inc = add i8 %12, 1
  store i8 %inc, ptr %to_cnt, align 2
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  br i1 %tobool.not.i.not, label %if.end34.cond.end41_crit_edge, label %cond.true38

if.end34.cond.end41_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end41

cond.true38:                                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx39 = getelementptr i32, ptr %src_offs, i32 %i.0211
  %17 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx39, align 4
  br label %cond.end41

cond.end41:                                       ; preds = %cond.true38, %if.end34.cond.end41_crit_edge
  %cond42 = phi i32 [ %18, %cond.true38 ], [ %offset, %if.end34.cond.end41_crit_edge ]
  %call43 = tail call i32 @dma_map_page_attrs(ptr noundef %14, ptr noundef %16, i32 noundef %cond42, i32 noundef %len, i32 noundef 1, i32 noundef 0) #5
  %inc44 = add i32 %j.0214, 1
  %arrayidx45 = getelementptr %struct.dmaengine_unmap_data, ptr %call12, i32 0, i32 7, i32 %j.0214
  %19 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call43, ptr %arrayidx45, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end41, %for.body.for.inc_crit_edge
  %j.1 = phi i32 [ %inc44, %cond.end41 ], [ %j.0214, %for.body.for.inc_crit_edge ]
  %inc46 = add nuw nsw i32 %i.0211, 1
  %exitcond.not = icmp eq i32 %inc46, %src_cnt
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end29.for.end_crit_edge
  %j.0.lcssa = phi i32 [ 0, %do.end29.for.end_crit_edge ], [ %j.1, %for.inc.for.end_crit_edge ]
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %call48 = tail call i32 @dma_map_page_attrs(ptr noundef %21, ptr noundef %dest, i32 noundef %offset, i32 noundef %len, i32 noundef 0, i32 noundef 0) #5
  %arrayidx50 = getelementptr %struct.dmaengine_unmap_data, ptr %call12, i32 0, i32 7, i32 %j.0.lcssa
  %22 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call48, ptr %arrayidx50, align 4
  %bidi_cnt = getelementptr inbounds %struct.dmaengine_unmap_data, ptr %call12, i32 0, i32 3
  %23 = ptrtoint ptr %bidi_cnt to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %bidi_cnt, align 4
  %cb_fn.i = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 2
  %24 = ptrtoint ptr %cb_fn.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cb_fn.i, align 4
  %cb_param.i = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 3
  %26 = ptrtoint ptr %cb_param.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cb_param.i, align 4
  %28 = ptrtoint ptr %submit to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %submit, align 4
  %to_cnt.i = getelementptr inbounds %struct.dmaengine_unmap_data, ptr %call12, i32 0, i32 1
  %30 = ptrtoint ptr %to_cnt.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %to_cnt.i, align 2
  %conv.i = zext i8 %31 to i32
  %addr.i = getelementptr inbounds %struct.dmaengine_unmap_data, ptr %call12, i32 0, i32 7
  %arrayidx.i181 = getelementptr %struct.dmaengine_unmap_data, ptr %call12, i32 0, i32 7, i32 %conv.i
  %32 = ptrtoint ptr %arrayidx.i181 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i181, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not130.i = icmp eq i8 %31, 0
  br i1 %tobool.not130.i, label %for.end.do_async_xor.exit_crit_edge, label %while.body.lr.ph.i

for.end.do_async_xor.exit_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do_async_xor.exit

while.body.lr.ph.i:                               ; preds = %for.end
  %34 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call, align 4
  %max_xor.i = getelementptr inbounds %struct.dma_device, ptr %35, i32 0, i32 8
  %and.i = and i32 %29, -13
  %or.i = or i32 %and.i, 8
  %device_prep_dma_xor.i = getelementptr inbounds %struct.dma_device, ptr %35, i32 0, i32 32
  %depend_tx.i = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 1
  %kref.i.i = getelementptr inbounds %struct.dmaengine_unmap_data, ptr %call12, i32 0, i32 5
  br label %while.body.i

while.cond.i:                                     ; preds = %dma_set_unmap.exit.i
  %sub59.i = add i32 %39, -1
  %add.ptr.i = getelementptr i32, ptr %src_list.0133.i, i32 %sub59.i
  %sub.i = add i32 %src_cnt.0132.i, 1
  %inc.i182 = sub i32 %sub.i, %39
  %tobool.not.i183 = icmp eq i32 %inc.i182, 0
  br i1 %tobool.not.i183, label %while.cond.i.do_async_xor.exit_crit_edge, label %while.cond.i.while.body.i_crit_edge

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.cond.i.do_async_xor.exit_crit_edge:         ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do_async_xor.exit

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %src_list.0133.i = phi ptr [ %addr.i, %while.body.lr.ph.i ], [ %add.ptr.i, %while.cond.i.while.body.i_crit_edge ]
  %src_cnt.0132.i = phi i32 [ %conv.i, %while.body.lr.ph.i ], [ %inc.i182, %while.cond.i.while.body.i_crit_edge ]
  %dma_flags.0131.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %44, %while.cond.i.while.body.i_crit_edge ]
  %36 = ptrtoint ptr %submit to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %29, ptr %submit, align 4
  %37 = ptrtoint ptr %max_xor.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %max_xor.i, align 4
  %conv4.i = zext i16 %38 to i32
  %39 = tail call i32 @llvm.smin.i32(i32 %src_cnt.0132.i, i32 %conv4.i) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %src_cnt.0132.i, i32 %conv4.i)
  %cmp7.i = icmp sgt i32 %src_cnt.0132.i, %conv4.i
  %spec.store.select.i = select i1 %cmp7.i, i32 %or.i, i32 %29
  %40 = ptrtoint ptr %submit to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %spec.store.select.i, ptr %submit, align 4
  %spec.select137.i = select i1 %cmp7.i, ptr null, ptr %25
  %spec.select138.i = select i1 %cmp7.i, ptr null, ptr %27
  %41 = ptrtoint ptr %cb_fn.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %spec.select137.i, ptr %cb_fn.i, align 4
  %42 = ptrtoint ptr %cb_param.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %spec.select138.i, ptr %cb_param.i, align 4
  %tobool16.not.i = icmp ne ptr %spec.select137.i, null
  %or18.i = zext i1 %tobool16.not.i to i32
  %spec.select.i = or i32 %dma_flags.0131.i, %or18.i
  %and21.i = shl i32 %spec.store.select.i, 2
  %43 = and i32 %and21.i, 32
  %44 = or i32 %spec.select.i, %43
  %45 = ptrtoint ptr %src_list.0133.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %src_list.0133.i, align 4
  %cmp29.i = icmp ugt ptr %src_list.0133.i, %addr.i
  br i1 %cmp29.i, label %if.then31.i, label %while.body.i.if.end33.i_crit_edge

while.body.i.if.end33.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33.i

if.then31.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %src_list.0133.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %33, ptr %src_list.0133.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then31.i, %while.body.i.if.end33.i_crit_edge
  %48 = ptrtoint ptr %device_prep_dma_xor.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %device_prep_dma_xor.i, align 4
  %50 = ptrtoint ptr %len30 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len30, align 4
  %call.i = tail call ptr %49(ptr noundef nonnull %call, i32 noundef %33, ptr noundef %src_list.0133.i, i32 noundef %39, i32 noundef %51, i32 noundef %44) #5
  %cond.i = icmp eq ptr %call.i, null
  br i1 %cond.i, label %if.then38.i, label %if.end33.i.while.end.i_crit_edge, !prof !48

if.end33.i.while.end.i_crit_edge:                 ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

if.then38.i:                                      ; preds = %if.end33.i
  tail call void @async_tx_quiesce(ptr noundef %depend_tx.i) #5
  br label %while.body50.i

while.body50.i:                                   ; preds = %while.body50.i.while.body50.i_crit_edge, %if.then38.i
  %52 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call, align 4
  %device_issue_pending.i.i = getelementptr inbounds %struct.dma_device, ptr %53, i32 0, i32 50
  %54 = ptrtoint ptr %device_issue_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %device_issue_pending.i.i, align 4
  tail call void %55(ptr noundef nonnull %call) #5
  %56 = ptrtoint ptr %device_prep_dma_xor.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %device_prep_dma_xor.i, align 4
  %58 = ptrtoint ptr %len30 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len30, align 4
  %call53.i = tail call ptr %57(ptr noundef nonnull %call, i32 noundef %33, ptr noundef %src_list.0133.i, i32 noundef %39, i32 noundef %59, i32 noundef %44) #5
  %tobool41.not.i = icmp eq ptr %call53.i, null
  br i1 %tobool41.not.i, label %while.body50.i.while.body50.i_crit_edge, label %while.body50.i.while.end.i_crit_edge, !prof !45

while.body50.i.while.end.i_crit_edge:             ; preds = %while.body50.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.body50.i.while.body50.i_crit_edge:          ; preds = %while.body50.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body50.i

while.end.i:                                      ; preds = %while.body50.i.while.end.i_crit_edge, %if.end33.i.while.end.i_crit_edge
  %tx.1.lcssa.i = phi ptr [ %call.i, %if.end33.i.while.end.i_crit_edge ], [ %call53.i, %while.body50.i.while.end.i_crit_edge ]
  %60 = ptrtoint ptr %src_list.0133.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %46, ptr %src_list.0133.i, align 4
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %kref.i.i, i32 1, i32 3, i32 1) #5
  %61 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i, ptr %kref.i.i, i32 1, ptr elementtype(i32) %kref.i.i) #5, !srcloc !49
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %61, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %while.end.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !45

while.end.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %while.end.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %62 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %62)
  %.not.i.i.i.i.i.i = icmp sgt i32 %62, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.dma_set_unmap.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !50

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.dma_set_unmap.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_set_unmap.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %while.end.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %while.end.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i.i, i32 noundef %.sink.i.i.i.i.i.i) #5
  br label %dma_set_unmap.exit.i

dma_set_unmap.exit.i:                             ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.dma_set_unmap.exit.i_crit_edge
  %unmap1.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx.1.lcssa.i, i32 0, i32 9
  %63 = ptrtoint ptr %unmap1.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call12, ptr %unmap1.i.i, align 4
  tail call void @async_tx_submit(ptr noundef nonnull %call, ptr noundef nonnull %tx.1.lcssa.i, ptr noundef %submit) #5
  %64 = ptrtoint ptr %depend_tx.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %tx.1.lcssa.i, ptr %depend_tx.i, align 4
  br i1 %cmp7.i, label %while.cond.i, label %dma_set_unmap.exit.i.do_async_xor.exit_crit_edge

dma_set_unmap.exit.i.do_async_xor.exit_crit_edge: ; preds = %dma_set_unmap.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do_async_xor.exit

do_async_xor.exit:                                ; preds = %dma_set_unmap.exit.i.do_async_xor.exit_crit_edge, %while.cond.i.do_async_xor.exit_crit_edge, %for.end.do_async_xor.exit_crit_edge
  %tx.2.i = phi ptr [ null, %for.end.do_async_xor.exit_crit_edge ], [ %tx.1.lcssa.i, %dma_set_unmap.exit.i.do_async_xor.exit_crit_edge ], [ %tx.1.lcssa.i, %while.cond.i.do_async_xor.exit_crit_edge ]
  tail call void @dmaengine_unmap_put(ptr noundef nonnull %call12) #5
  br label %cleanup

if.else:                                          ; preds = %for.body.i.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.end13.if.else_crit_edge, %do.end9.if.else_crit_edge, %cond.end.thread.if.else_crit_edge
  %unmap.0205 = phi ptr [ null, %if.end13.if.else_crit_edge ], [ %call12, %land.lhs.true.if.else_crit_edge ], [ null, %do.end9.if.else_crit_edge ], [ null, %cond.end.thread.if.else_crit_edge ], [ %call12, %for.body.i.if.else_crit_edge ]
  tail call void @dmaengine_unmap_put(ptr noundef %unmap.0205) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @async_xor_offs.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@async_xor_offs, %if.then64)) #5
          to label %do.end67 [label %if.then64], !srcloc !47

if.then64:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @async_xor_offs.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %len) #5
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %if.else
  br i1 %tobool.not, label %do.end67.if.end110_crit_edge, label %land.rhs

do.end67.if.end110_crit_edge:                     ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end110

land.rhs:                                         ; preds = %do.end67
  %.b176 = load i1, ptr @async_xor_offs.__already_done, align 1
  br i1 %.b176, label %land.rhs.if.end110_crit_edge, label %if.then84, !prof !50

land.rhs.if.end110_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end110

if.then84:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @async_xor_offs.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 228, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1) #5
  br label %if.end110

if.end110:                                        ; preds = %if.then84, %land.rhs.if.end110_crit_edge, %do.end67.if.end110_crit_edge
  %65 = ptrtoint ptr %submit to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %submit, align 4
  %and = and i32 %66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool118.not = icmp eq i32 %and, 0
  %tobool120.not = icmp eq ptr %src_offs, null
  %incdec.ptr122 = getelementptr i32, ptr %src_offs, i32 1
  %spec.select = select i1 %tobool120.not, ptr null, ptr %incdec.ptr122
  %not.tobool118.not = xor i1 %tobool118.not, true
  %dec = sext i1 %not.tobool118.not to i32
  %src_cnt.addr.0 = add i32 %dec, %src_cnt
  %src_offs.addr.0 = select i1 %tobool118.not, ptr %src_offs, ptr %spec.select
  %src_list.addr.0.idx = zext i1 %not.tobool118.not to i32
  %src_list.addr.0 = getelementptr ptr, ptr %src_list, i32 %src_list.addr.0.idx
  %depend_tx = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 1
  tail call void @async_tx_quiesce(ptr noundef %depend_tx) #5
  %scribble.i = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 4
  %67 = ptrtoint ptr %scribble.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %scribble.i, align 4
  %tobool.not.i184 = icmp eq ptr %68, null
  %src_list..i = select i1 %tobool.not.i184, ptr %src_list.addr.0, ptr %68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_cnt.addr.0)
  %cmp47.i = icmp sgt i32 %src_cnt.addr.0, 0
  br i1 %cmp47.i, label %for.body.lr.ph.i, label %if.end110.for.end.i_crit_edge

if.end110.for.end.i_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end110
  %tobool5.not.i = icmp eq ptr %src_offs.addr.0, null
  br label %for.body.i186

for.body.i186:                                    ; preds = %for.inc.i.for.body.i186_crit_edge, %for.body.lr.ph.i
  %xor_src_cnt.051.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %xor_src_cnt.1.i, %for.inc.i.for.body.i186_crit_edge ]
  %i.048.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc9.i, %for.inc.i.for.body.i186_crit_edge ]
  %arrayidx.i185 = getelementptr ptr, ptr %src_list.addr.0, i32 %i.048.i
  %69 = ptrtoint ptr %arrayidx.i185 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx.i185, align 4
  %tobool2.not.i = icmp eq ptr %70, null
  br i1 %tobool2.not.i, label %for.body.i186.for.inc.i_crit_edge, label %if.then3.i

for.body.i186.for.inc.i_crit_edge:                ; preds = %for.body.i186
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then3.i:                                       ; preds = %for.body.i186
  %call.i187 = tail call ptr @page_address(ptr noundef nonnull %70) #5
  br i1 %tobool5.not.i, label %if.then3.i.cond.end.i_crit_edge, label %cond.true.i

if.then3.i.cond.end.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx6.i = getelementptr i32, ptr %src_offs.addr.0, i32 %i.048.i
  %71 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx6.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then3.i.cond.end.i_crit_edge
  %cond.i188 = phi i32 [ %72, %cond.true.i ], [ %offset, %if.then3.i.cond.end.i_crit_edge ]
  %add.ptr.i189 = getelementptr i8, ptr %call.i187, i32 %cond.i188
  %inc.i190 = add i32 %xor_src_cnt.051.i, 1
  %arrayidx7.i = getelementptr ptr, ptr %src_list..i, i32 %xor_src_cnt.051.i
  %73 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %add.ptr.i189, ptr %arrayidx7.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %cond.end.i, %for.body.i186.for.inc.i_crit_edge
  %xor_src_cnt.1.i = phi i32 [ %inc.i190, %cond.end.i ], [ %xor_src_cnt.051.i, %for.body.i186.for.inc.i_crit_edge ]
  %inc9.i = add nuw nsw i32 %i.048.i, 1
  %exitcond.not.i191 = icmp eq i32 %inc9.i, %src_cnt.addr.0
  br i1 %exitcond.not.i191, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i186_crit_edge

for.inc.i.for.body.i186_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i186

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end110.for.end.i_crit_edge
  %xor_src_cnt.0.lcssa.i = phi i32 [ 0, %if.end110.for.end.i_crit_edge ], [ %xor_src_cnt.1.i, %for.inc.i.for.end.i_crit_edge ]
  %call10.i = tail call ptr @page_address(ptr noundef %dest) #5
  %add.ptr11.i = getelementptr i8, ptr %call10.i, i32 %offset
  %74 = ptrtoint ptr %submit to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %submit, align 4
  %and.i192 = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i192)
  %tobool12.not.i = icmp eq i32 %and.i192, 0
  br i1 %tobool12.not.i, label %for.end.i.if.end14.i_crit_edge, label %if.then13.i

for.end.i.if.end14.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

if.then13.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %76 = call ptr @memset(ptr %add.ptr11.i, i32 0, i32 %len)
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then13.i, %for.end.i.if.end14.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor_src_cnt.0.lcssa.i)
  %cmp1552.i = icmp sgt i32 %xor_src_cnt.0.lcssa.i, 0
  br i1 %cmp1552.i, label %if.end14.i.while.body.i194_crit_edge, label %if.end14.i.while.end.i195_crit_edge

if.end14.i.while.end.i195_crit_edge:              ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i195

if.end14.i.while.body.i194_crit_edge:             ; preds = %if.end14.i
  br label %while.body.i194

while.body.i194:                                  ; preds = %while.body.i194.while.body.i194_crit_edge, %if.end14.i.while.body.i194_crit_edge
  %src_cnt.addr.054.i = phi i32 [ %sub.i193, %while.body.i194.while.body.i194_crit_edge ], [ %xor_src_cnt.0.lcssa.i, %if.end14.i.while.body.i194_crit_edge ]
  %src_off.053.i = phi i32 [ %add.i, %while.body.i194.while.body.i194_crit_edge ], [ 0, %if.end14.i.while.body.i194_crit_edge ]
  %77 = tail call i32 @llvm.umin.i32(i32 %src_cnt.addr.054.i, i32 4) #5
  %arrayidx21.i = getelementptr ptr, ptr %src_list..i, i32 %src_off.053.i
  tail call void @xor_blocks(i32 noundef %77, i32 noundef %len, ptr noundef %add.ptr11.i, ptr noundef %arrayidx21.i) #5
  %sub.i193 = sub nsw i32 %src_cnt.addr.054.i, %77
  %add.i = add i32 %77, %src_off.053.i
  %cmp15.i = icmp sgt i32 %sub.i193, 0
  br i1 %cmp15.i, label %while.body.i194.while.body.i194_crit_edge, label %while.body.i194.while.end.i195_crit_edge

while.body.i194.while.end.i195_crit_edge:         ; preds = %while.body.i194
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i195

while.body.i194.while.body.i194_crit_edge:        ; preds = %while.body.i194
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i194

while.end.i195:                                   ; preds = %while.body.i194.while.end.i195_crit_edge, %if.end14.i.while.end.i195_crit_edge
  %cb_fn.i.i = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 2
  %78 = ptrtoint ptr %cb_fn.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cb_fn.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %79, null
  br i1 %tobool.not.i.i, label %while.end.i195.cleanup_crit_edge, label %if.then.i.i

while.end.i195.cleanup_crit_edge:                 ; preds = %while.end.i195
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i.i:                                      ; preds = %while.end.i195
  call void @__sanitizer_cov_trace_pc() #7
  %cb_param.i.i = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 3
  %80 = ptrtoint ptr %cb_param.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cb_param.i.i, align 4
  tail call void %79(ptr noundef %81) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %while.end.i195.cleanup_crit_edge, %do_async_xor.exit
  %retval.0 = phi ptr [ %tx.2.i, %do_async_xor.exit ], [ null, %while.end.i195.cleanup_crit_edge ], [ null, %if.then.i.i ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__async_tx_find_channel(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmaengine_get_unmap_data(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmaengine_unmap_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @async_tx_quiesce(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @async_xor(ptr noundef %dest, ptr noundef %src_list, i32 noundef %offset, i32 noundef %src_cnt, i32 noundef %len, ptr noundef %submit) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @async_xor_offs(ptr noundef %dest, i32 noundef %offset, ptr noundef %src_list, ptr noundef null, i32 noundef %src_cnt, i32 noundef %len, ptr noundef %submit)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @async_xor_val_offs(ptr noundef %dest, i32 noundef %offset, ptr noundef %src_list, ptr noundef %src_offs, i32 noundef %src_cnt, i32 noundef %len, ptr nocapture noundef writeonly %result, ptr noundef %submit) #0 align 64 {
entry:
  %tx = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %src_cnt)
  %cmp = icmp slt i32 %src_cnt, 2
  br i1 %cmp, label %do.body4, label %if.else, !prof !45

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/async_tx/async_xor.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 325, 0\0A.popsection", ""() #5, !srcloc !51
  unreachable

if.else:                                          ; preds = %entry
  %0 = ptrtoint ptr %submit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %submit, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @async_xor_val_offs.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@async_xor_val_offs, %if.then87)) #5
          to label %if.end140 [label %if.then87], !srcloc !47

if.then87:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @async_xor_val_offs.__UNIQUE_ID_ddebug243, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, i32 noundef %len) #5
  br label %if.end140

if.end140:                                        ; preds = %if.then87, %if.else
  %2 = ptrtoint ptr %submit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %submit, align 4
  %or149 = and i32 %3, -7
  %and151 = or i32 %or149, 2
  store i32 %and151, ptr %submit, align 4
  %call152 = tail call ptr @async_xor_offs(ptr noundef %dest, i32 noundef %offset, ptr noundef %src_list, ptr noundef %src_offs, i32 noundef %src_cnt, i32 noundef %len, ptr noundef %submit)
  %4 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call152, ptr %tx, align 4
  call void @async_tx_quiesce(ptr noundef nonnull %tx) #5
  %call.i = call ptr @page_address(ptr noundef %dest) #5
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %offset
  %call1.i = call ptr @memchr_inv(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef %len) #5
  %tobool.not.i = icmp ne ptr %call1.i, null
  %lnot.ext156 = zext i1 %tobool.not.i to i32
  %5 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %lnot.ext156, ptr %result, align 4
  %cb_fn.i = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 2
  %6 = ptrtoint ptr %cb_fn.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cb_fn.i, align 4
  %tobool.not.i228 = icmp eq ptr %7, null
  br i1 %tobool.not.i228, label %if.end140.async_tx_sync_epilog.exit_crit_edge, label %if.then.i

if.end140.async_tx_sync_epilog.exit_crit_edge:    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #7
  br label %async_tx_sync_epilog.exit

if.then.i:                                        ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #7
  %cb_param.i = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 3
  %8 = ptrtoint ptr %cb_param.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cb_param.i, align 4
  call void %7(ptr noundef %9) #5
  br label %async_tx_sync_epilog.exit

async_tx_sync_epilog.exit:                        ; preds = %if.then.i, %if.end140.async_tx_sync_epilog.exit_crit_edge
  %10 = ptrtoint ptr %submit to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %1, ptr %submit, align 4
  call void @dmaengine_unmap_put(ptr noundef null) #5
  %11 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx) #5
  ret ptr %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @async_tx_submit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @async_xor_val(ptr noundef %dest, ptr noundef %src_list, i32 noundef %offset, i32 noundef %src_cnt, i32 noundef %len, ptr nocapture noundef writeonly %result, ptr noundef %submit) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @async_xor_val_offs(ptr noundef %dest, i32 noundef %offset, ptr noundef %src_list, ptr noundef null, i32 noundef %src_cnt, i32 noundef %len, ptr noundef %result, ptr noundef %submit)
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xor_blocks(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !16, !18, !19, !20, !22, !23, !25, !27, !29, !31, !33, !35}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../crypto/async_tx/async_xor.c", i32 203, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @async_xor_offs.__UNIQUE_ID_ddebug240, !1, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../crypto/async_tx/async_xor.c", i32 226, i32 3}
!8 = !{ptr @async_xor_offs.__UNIQUE_ID_ddebug241, !7, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../crypto/async_tx/async_xor.c", i32 227, i32 3}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__ksymtab_async_xor_offs, !13, !"__ksymtab_async_xor_offs", i1 false, i1 false}
!13 = !{!"../crypto/async_tx/async_xor.c", i32 249, i32 1}
!14 = !{ptr @__ksymtab_async_xor, !15, !"__ksymtab_async_xor", i1 false, i1 false}
!15 = !{!"../crypto/async_tx/async_xor.c", i32 279, i32 1}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../crypto/async_tx/async_xor.c", i32 335, i32 3}
!18 = distinct !{null, !17, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !17, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../crypto/async_tx/async_xor.c", i32 368, i32 3}
!22 = !{ptr @async_xor_val_offs.__UNIQUE_ID_ddebug243, !21, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../crypto/async_tx/async_xor.c", i32 369, i32 3}
!25 = !{ptr @__ksymtab_async_xor_val_offs, !26, !"__ksymtab_async_xor_val_offs", i1 false, i1 false}
!26 = !{!"../crypto/async_tx/async_xor.c", i32 390, i32 1}
!27 = !{ptr @__ksymtab_async_xor_val, !28, !"__ksymtab_async_xor_val", i1 false, i1 false}
!28 = !{!"../crypto/async_tx/async_xor.c", i32 416, i32 1}
!29 = !{ptr @__UNIQUE_ID_author244, !30, !"__UNIQUE_ID_author244", i1 false, i1 false}
!30 = !{!"../crypto/async_tx/async_xor.c", i32 418, i32 1}
!31 = !{ptr @__UNIQUE_ID_description245, !32, !"__UNIQUE_ID_description245", i1 false, i1 false}
!32 = !{!"../crypto/async_tx/async_xor.c", i32 419, i32 1}
!33 = !{ptr @__UNIQUE_ID_file246, !34, !"__UNIQUE_ID_file246", i1 false, i1 false}
!34 = !{!"../crypto/async_tx/async_xor.c", i32 420, i32 1}
!35 = !{ptr @__UNIQUE_ID_license247, !34, !"__UNIQUE_ID_license247", i1 false, i1 false}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{!"branch_weights", i32 1, i32 2000}
!46 = !{i64 2154186266, i64 2154186758, i64 2154186303, i64 2154186359, i64 2154186393, i64 2154186417, i64 2154186458, i64 2154186479, i64 2154186507, i64 2154186541}
!47 = !{i64 2148701882, i64 2148701887, i64 2148701900, i64 2148701944, i64 2148701978, i64 2148701999}
!48 = !{!"branch_weights", i32 2000, i32 4000000}
!49 = !{i64 2148221597, i64 2148221629, i64 2148221658, i64 2148221692, i64 2148221723, i64 2148221746}
!50 = !{!"branch_weights", i32 2000, i32 1}
!51 = !{i64 2154196844, i64 2154197336, i64 2154196881, i64 2154196937, i64 2154196971, i64 2154196995, i64 2154197036, i64 2154197057, i64 2154197085, i64 2154197119}
