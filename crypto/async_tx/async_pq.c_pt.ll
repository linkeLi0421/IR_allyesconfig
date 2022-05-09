; ModuleID = '/llk/IR_all_yes/crypto/async_tx/async_pq.c_pt.bc'
source_filename = "../crypto/async_tx/async_pq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+async_gen_syndrome\22, \22a\22\09"
module asm "\09.weak\09__crc_async_gen_syndrome\09\09\09\09"
module asm "\09.long\09__crc_async_gen_syndrome\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_async_gen_syndrome:\09\09\09\09\09"
module asm "\09.asciz \09\22async_gen_syndrome\22\09\09\09\09\09"
module asm "__kstrtabns_async_gen_syndrome:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+async_syndrome_val\22, \22a\22\09"
module asm "\09.weak\09__crc_async_syndrome_val\09\09\09\09"
module asm "\09.long\09__crc_async_syndrome_val\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_async_syndrome_val:\09\09\09\09\09"
module asm "\09.asciz \09\22async_syndrome_val\22\09\09\09\09\09"
module asm "__kstrtabns_async_syndrome_val:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.raid6_calls = type { ptr, ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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

@async_gen_syndrome.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"async_pq\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"async_gen_syndrome\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"crypto/async_tx/async_pq.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: (async) disks: %d len: %zu\0A\00", [32 x i8] zeroinitializer }, align 32
@raid6_gfexp = external dso_local local_unnamed_addr constant [256 x i8], align 256
@async_gen_syndrome.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: (sync) disks: %d len: %zu\0A\00", [33 x i8] zeroinitializer }, align 32
@pq_scribble_page = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_async_gen_syndrome = external dso_local constant [0 x i8], align 1
@__kstrtabns_async_gen_syndrome = external dso_local constant [0 x i8], align 1
@__ksymtab_async_gen_syndrome = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @async_gen_syndrome to i32), ptr @__kstrtab_async_gen_syndrome, ptr @__kstrtabns_async_gen_syndrome }, section "___ksymtab_gpl+async_gen_syndrome", align 4
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"async_syndrome_val\00", [45 x i8] zeroinitializer }, align 32
@async_syndrome_val.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.4, i8 0, i8 96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__kstrtab_async_syndrome_val = external dso_local constant [0 x i8], align 1
@__kstrtabns_async_syndrome_val = external dso_local constant [0 x i8], align 1
@__ksymtab_async_syndrome_val = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @async_syndrome_val to i32), ptr @__kstrtab_async_syndrome_val, ptr @__kstrtabns_async_syndrome_val }, section "___ksymtab_gpl+async_syndrome_val", align 4
@__initcall__kmod_async_pq__279_459_async_pq_init6 = internal global ptr @async_pq_init, section ".initcall6.init", align 4
@__exitcall_async_pq_exit = internal global ptr @async_pq_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description280 = internal constant [71 x i8] c"async_pq.description=asynchronous raid6 syndrome generation/validation\00", section ".modinfo", align 1
@__UNIQUE_ID_file281 = internal constant [39 x i8] c"async_pq.file=crypto/async_tx/async_pq\00", section ".modinfo", align 1
@__UNIQUE_ID_license282 = internal constant [21 x i8] c"async_pq.license=GPL\00", section ".modinfo", align 1
@raid6_empty_zero_page = external dso_local constant [4096 x i8], align 1
@raid6_call = external dso_local local_unnamed_addr global %struct.raid6_calls, align 4
@async_pq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: failed to allocate required spare page\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"async_pq_init\00", [18 x i8] zeroinitializer }, align 32
@async_pq_init._entry_ptr = internal global ptr @async_pq_init._entry, section ".printk_index", align 4
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 203, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 252, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"pq_scribble_page\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 18, i32 21 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 320, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private constant [30 x i8] c"../crypto/async_tx/async_pq.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 449, i32 2 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_description280, ptr @__UNIQUE_ID_file281, ptr @__UNIQUE_ID_license282, ptr @__exitcall_async_pq_exit, ptr @__initcall__kmod_async_pq__279_459_async_pq_init6, ptr @__ksymtab_async_gen_syndrome, ptr @__ksymtab_async_syndrome_val, ptr @async_pq_exit, ptr @async_pq_init._entry, ptr @async_pq_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @pq_scribble_page, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pq_scribble_page to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @async_pq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @async_gen_syndrome(ptr noundef %blocks, ptr nocapture noundef %offsets, i32 noundef %disks, i32 noundef %len, ptr noundef %submit) #0 align 64 {
entry:
  %dma_dest.i = alloca [2 x i32], align 4
  %coefs = alloca [255 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %disks, -2
  %call = tail call ptr @__async_tx_find_channel(ptr noundef %submit, i32 noundef 3) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %1, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %disks)
  %cmp = icmp sgt i32 %disks, 255
  br i1 %cmp, label %cond.end.do.body12_crit_edge, label %lor.rhs, !prof !46

cond.end.do.body12_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body12

lor.rhs:                                          ; preds = %cond.end
  %arrayidx = getelementptr ptr, ptr %blocks, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %lor.end, label %lor.rhs.do.end17_crit_edge

lor.rhs.do.end17_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17

lor.end:                                          ; preds = %lor.rhs
  %sub5 = add i32 %disks, -1
  %arrayidx6 = getelementptr ptr, ptr %blocks, i32 %sub5
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx6, align 4
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %lor.end.do.body12_crit_edge, label %lor.end.do.end17_crit_edge, !prof !46

lor.end.do.end17_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17

lor.end.do.body12_crit_edge:                      ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body12

do.body12:                                        ; preds = %lor.end.do.body12_crit_edge, %cond.end.do.body12_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/async_tx/async_pq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 187, 0\0A.popsection", ""() #8, !srcloc !47
  unreachable

do.end17:                                         ; preds = %lor.end.do.end17_crit_edge, %lor.rhs.do.end17_crit_edge
  %tobool18.not = icmp eq ptr %cond, null
  br i1 %tobool18.not, label %do.end17.if.end100_crit_edge, label %if.end21

do.end17.if.end100_crit_edge:                     ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

if.end21:                                         ; preds = %do.end17
  %dev = getelementptr inbounds %struct.dma_device, ptr %cond, i32 0, i32 15
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call20 = tail call ptr @dmaengine_get_unmap_data(ptr noundef %7, i32 noundef %disks, i32 noundef 2048) #8
  %tobool22.not = icmp eq ptr %call20, null
  br i1 %tobool22.not, label %if.end21.if.end100_crit_edge, label %land.lhs.true

if.end21.if.end100_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

land.lhs.true:                                    ; preds = %if.end21
  %8 = ptrtoint ptr %submit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %submit, align 4
  %and = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %land.lhs.true24, label %land.lhs.true.if.end100_crit_edge

land.lhs.true.if.end100_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

land.lhs.true24:                                  ; preds = %land.lhs.true
  %max_pq.i.i = getelementptr inbounds %struct.dma_device, ptr %cond, i32 0, i32 9
  %10 = ptrtoint ptr %max_pq.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %max_pq.i.i, align 2
  %12 = and i16 %11, 32767
  %conv.i = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv.i)
  %cmp26.not = icmp sgt i32 %sub, %conv.i
  br i1 %cmp26.not, label %lor.lhs.false, label %land.lhs.true24.land.lhs.true29_crit_edge

land.lhs.true24.land.lhs.true29_crit_edge:        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true29

lor.lhs.false:                                    ; preds = %land.lhs.true24
  %conv6.i = zext i16 %11 to i32
  %sub12.i = add nsw i32 %conv6.i, -3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp.i.i230256 = icmp slt i16 %11, 0
  %retval.0.i232 = select i1 %cmp.i.i230256, i32 %conv.i, i32 %sub12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i232)
  %cmp28 = icmp sgt i32 %retval.0.i232, 0
  br i1 %cmp28, label %lor.lhs.false.land.lhs.true29_crit_edge, label %lor.lhs.false.if.end100_crit_edge

lor.lhs.false.if.end100_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

lor.lhs.false.land.lhs.true29_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true29

land.lhs.true29:                                  ; preds = %lor.lhs.false.land.lhs.true29_crit_edge, %land.lhs.true24.land.lhs.true29_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %disks)
  %cmp3.i = icmp sgt i32 %disks, 0
  br i1 %cmp3.i, label %for.body.lr.ph.i, label %land.lhs.true29.if.then31_crit_edge

land.lhs.true29.if.then31_crit_edge:              ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31

for.body.lr.ph.i:                                 ; preds = %land.lhs.true29
  %pq_align.i.i = getelementptr inbounds %struct.dma_device, ptr %cond, i32 0, i32 12
  %13 = ptrtoint ptr %pq_align.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pq_align.i.i, align 4
  %notmask.i.i.i = shl nsw i32 -1, %14
  %sub.i.i.i = xor i32 %notmask.i.i.i, -1
  %15 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offsets, align 4
  %or1.i.i.i257 = or i32 %16, %len
  %and.i.i.i258 = and i32 %or1.i.i.i257, %sub.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i258)
  %tobool.not.i.i.i259 = icmp eq i32 %and.i.i.i258, 0
  br i1 %tobool.not.i.i.i259, label %for.body.lr.ph.i.for.cond.i_crit_edge, label %for.body.lr.ph.i.if.end100_crit_edge

for.body.lr.ph.i.if.end100_crit_edge:             ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

for.body.lr.ph.i.for.cond.i_crit_edge:            ; preds = %for.body.lr.ph.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.lr.ph.i.for.cond.i_crit_edge
  %i.04.i260 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %for.body.lr.ph.i.for.cond.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.04.i260, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %disks)
  %exitcond.not.i = icmp eq i32 %inc.i, %disks
  br i1 %exitcond.not.i, label %for.cond.i.is_dma_pq_aligned_offs.exit_crit_edge, label %for.body.i

for.cond.i.is_dma_pq_aligned_offs.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %is_dma_pq_aligned_offs.exit

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr i32, ptr %offsets, i32 %inc.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %or1.i.i.i = or i32 %18, %len
  %and.i.i.i = and i32 %or1.i.i.i, %sub.i.i.i
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.is_dma_pq_aligned_offs.exit_crit_edge

for.body.i.is_dma_pq_aligned_offs.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %is_dma_pq_aligned_offs.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

is_dma_pq_aligned_offs.exit:                      ; preds = %for.body.i.is_dma_pq_aligned_offs.exit_crit_edge, %for.cond.i.is_dma_pq_aligned_offs.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %disks)
  %cmp.i.le = icmp slt i32 %inc.i, %disks
  br i1 %cmp.i.le, label %is_dma_pq_aligned_offs.exit.if.end100_crit_edge, label %is_dma_pq_aligned_offs.exit.if.then31_crit_edge

is_dma_pq_aligned_offs.exit.if.then31_crit_edge:  ; preds = %is_dma_pq_aligned_offs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then31

is_dma_pq_aligned_offs.exit.if.end100_crit_edge:  ; preds = %is_dma_pq_aligned_offs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end100

if.then31:                                        ; preds = %is_dma_pq_aligned_offs.exit.if.then31_crit_edge, %land.lhs.true29.if.then31_crit_edge
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %coefs) #8
  %19 = call ptr @memset(ptr %coefs, i32 255, i32 255)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @async_gen_syndrome.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@async_gen_syndrome, %if.then41)) #8
          to label %do.end44 [label %if.then41], !srcloc !48

if.then41:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @async_gen_syndrome.__UNIQUE_ID_ddebug275, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %disks, i32 noundef %len) #8
  br label %do.end44

do.end44:                                         ; preds = %if.then41, %if.then31
  %len45 = getelementptr inbounds %struct.dmaengine_unmap_data, ptr %call20, i32 0, i32 6
  %20 = ptrtoint ptr %len45 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %len, ptr %len45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp46262 = icmp sgt i32 %sub, 0
  br i1 %cmp46262, label %for.body.lr.ph, label %do.end44.for.end_crit_edge

do.end44.for.end_crit_edge:                       ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end44
  %to_cnt = getelementptr inbounds %struct.dmaengine_unmap_data, ptr %call20, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %j.0264 = phi i32 [ 0, %for.body.lr.ph ], [ %j.1, %for.inc.for.body_crit_edge ]
  %i.0263 = phi i32 [ 0, %for.body.lr.ph ], [ %inc59, %for.inc.for.body_crit_edge ]
  %arrayidx47 = getelementptr ptr, ptr %blocks, i32 %i.0263
  %21 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx47, align 4
  %cmp48 = icmp eq ptr %22, null
  br i1 %cmp48, label %for.body.for.inc_crit_edge, label %if.end50

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end50:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %arrayidx53 = getelementptr i32, ptr %offsets, i32 %i.0263
  %25 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx53, align 4
  %call54 = tail call i32 @dma_map_page_attrs(ptr noundef %24, ptr noundef nonnull %22, i32 noundef %26, i32 noundef %len, i32 noundef 1, i32 noundef 0) #8
  %arrayidx55 = getelementptr %struct.dmaengine_unmap_data, ptr %call20, i32 0, i32 7, i32 %j.0264
  %27 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call54, ptr %arrayidx55, align 4
  %arrayidx56 = getelementptr [256 x i8], ptr @raid6_gfexp, i32 0, i32 %i.0263
  %28 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx56, align 1
  %arrayidx57 = getelementptr [255 x i8], ptr %coefs, i32 0, i32 %j.0264
  %30 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx57, align 1
  %31 = ptrtoint ptr %to_cnt to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %to_cnt, align 2
  %inc = add i8 %32, 1
  store i8 %inc, ptr %to_cnt, align 2
  %inc58 = add i32 %j.0264, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end50, %for.body.for.inc_crit_edge
  %j.1 = phi i32 [ %j.0264, %for.body.for.inc_crit_edge ], [ %inc58, %if.end50 ]
  %inc59 = add nuw nsw i32 %i.0263, 1
  %exitcond.not = icmp eq i32 %inc59, %sub
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end44.for.end_crit_edge
  %j.0.lcssa = phi i32 [ 0, %do.end44.for.end_crit_edge ], [ %j.1, %for.inc.for.end_crit_edge ]
  %bidi_cnt = getelementptr inbounds %struct.dmaengine_unmap_data, ptr %call20, i32 0, i32 3
  %33 = ptrtoint ptr %bidi_cnt to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bidi_cnt, align 4
  %inc60 = add i8 %34, 1
  store i8 %inc60, ptr %bidi_cnt, align 4
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx, align 4
  %tobool63.not = icmp eq ptr %36, null
  br i1 %tobool63.not, label %for.end.if.end77_crit_edge, label %if.then64

for.end.if.end77_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then64:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  %arrayidx69 = getelementptr i32, ptr %offsets, i32 %sub
  %39 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx69, align 4
  %call70 = tail call i32 @dma_map_page_attrs(ptr noundef %38, ptr noundef nonnull %36, i32 noundef %40, i32 noundef %len, i32 noundef 0, i32 noundef 0) #8
  br label %if.end77

if.end77:                                         ; preds = %if.then64, %for.end.if.end77_crit_edge
  %call70.sink = phi i32 [ %call70, %if.then64 ], [ 0, %for.end.if.end77_crit_edge ]
  %dma_flags.0 = phi i32 [ 0, %if.then64 ], [ 4, %for.end.if.end77_crit_edge ]
  %41 = getelementptr %struct.dmaengine_unmap_data, ptr %call20, i32 0, i32 7, i32 %j.0.lcssa
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call70.sink, ptr %41, align 4
  %j.2 = add i32 %j.0.lcssa, 1
  %43 = ptrtoint ptr %bidi_cnt to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %bidi_cnt, align 4
  %inc79 = add i8 %44, 1
  store i8 %inc79, ptr %bidi_cnt, align 4
  %sub80 = add i32 %disks, -1
  %arrayidx81 = getelementptr ptr, ptr %blocks, i32 %sub80
  %45 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx81, align 4
  %tobool82.not = icmp eq ptr %46, null
  br i1 %tobool82.not, label %if.else93, label %if.then83

if.then83:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 4
  %arrayidx88 = getelementptr i32, ptr %offsets, i32 %sub80
  %49 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx88, align 4
  %call89 = tail call i32 @dma_map_page_attrs(ptr noundef %48, ptr noundef nonnull %46, i32 noundef %50, i32 noundef %len, i32 noundef 0, i32 noundef 0) #8
  br label %if.end98

if.else93:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  %or97 = or i32 %dma_flags.0, 8
  br label %if.end98

if.end98:                                         ; preds = %if.else93, %if.then83
  %call89.sink = phi i32 [ 0, %if.else93 ], [ %call89, %if.then83 ]
  %dma_flags.1 = phi i32 [ %or97, %if.else93 ], [ %dma_flags.0, %if.then83 ]
  %51 = getelementptr %struct.dmaengine_unmap_data, ptr %call20, i32 0, i32 7, i32 %j.2
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call89.sink, ptr %51, align 4
  %53 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call, align 4
  %55 = ptrtoint ptr %submit to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %submit, align 4
  %cb_fn.i = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 2
  %57 = ptrtoint ptr %cb_fn.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cb_fn.i, align 4
  %cb_param.i = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 3
  %59 = ptrtoint ptr %cb_param.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cb_param.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dma_dest.i) #8
  %61 = getelementptr inbounds [2 x i32], ptr %dma_dest.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.0.lcssa)
  %cmp87.i = icmp sgt i32 %j.0.lcssa, 0
  br i1 %cmp87.i, label %while.body.lr.ph.i, label %if.end98.do_async_gen_syndrome.exit_crit_edge

if.end98.do_async_gen_syndrome.exit_crit_edge:    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_async_gen_syndrome.exit

while.body.lr.ph.i:                               ; preds = %if.end98
  %max_pq.i.i.i = getelementptr inbounds %struct.dma_device, ptr %54, i32 0, i32 9
  %tobool.not.i = icmp ne ptr %58, null
  %or13.i = zext i1 %tobool.not.i to i32
  %and.i = and i32 %56, -13
  %or.i = or i32 %and.i, 8
  %device_prep_dma_pq.i = getelementptr inbounds %struct.dma_device, ptr %54, i32 0, i32 34
  %depend_tx.i = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 1
  %kref.i.i = getelementptr inbounds %struct.dmaengine_unmap_data, ptr %call20, i32 0, i32 5
  br label %while.body.i

while.body.i:                                     ; preds = %dma_set_unmap.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %dma_flags.addr.090.i = phi i32 [ %dma_flags.1, %while.body.lr.ph.i ], [ %or41.i, %dma_set_unmap.exit.i.while.body.i_crit_edge ]
  %src_off.089.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add.i, %dma_set_unmap.exit.i.while.body.i_crit_edge ]
  %src_cnt.088.i = phi i32 [ %j.0.lcssa, %while.body.lr.ph.i ], [ %sub39.i, %dma_set_unmap.exit.i.while.body.i_crit_edge ]
  %62 = ptrtoint ptr %submit to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %56, ptr %submit, align 4
  %63 = ptrtoint ptr %max_pq.i.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %max_pq.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %64)
  %cmp.i.i.i = icmp sgt i16 %64, -1
  %and.i.i.i234 = and i32 %dma_flags.addr.090.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i234)
  %cmp.i21.i.i = icmp ne i32 %and.i.i.i234, 0
  %or.cond.i.i = and i1 %cmp.i21.i.i, %cmp.i.i.i
  br i1 %or.cond.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %65 = and i16 %64, 32767
  %conv.i.i = zext i16 %65 to i32
  br label %dma_maxpq.exit.i

if.end.i.i:                                       ; preds = %while.body.i
  %and.i23.i.i = and i32 %dma_flags.addr.090.i, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %and.i23.i.i)
  %cmp.i24.i.i = icmp eq i32 %and.i23.i.i, 20
  %conv6.i.i = zext i16 %64 to i32
  br i1 %cmp.i24.i.i, label %if.then4.i.i, label %if.then9.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add nsw i32 %conv6.i.i, -1
  br label %dma_maxpq.exit.i

if.then9.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub12.i.i = add nsw i32 %conv6.i.i, -3
  br label %dma_maxpq.exit.i

dma_maxpq.exit.i:                                 ; preds = %if.then9.i.i, %if.then4.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %conv.i.i, %if.then.i.i ], [ %sub.i.i, %if.then4.i.i ], [ %sub12.i.i, %if.then9.i.i ]
  %66 = call i32 @llvm.smin.i32(i32 %src_cnt.088.i, i32 %retval.0.i.i) #8
  %conv3.i = and i32 %66, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %src_cnt.088.i, i32 %conv3.i)
  %cmp4.i = icmp ugt i32 %src_cnt.088.i, %conv3.i
  br i1 %cmp4.i, label %if.then.i235, label %if.else.i

if.then.i235:                                     ; preds = %dma_maxpq.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %submit to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %or.i, ptr %submit, align 4
  %68 = ptrtoint ptr %cb_fn.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %cb_fn.i, align 4
  %69 = ptrtoint ptr %cb_param.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %cb_param.i, align 4
  br label %if.end14.i

if.else.i:                                        ; preds = %dma_maxpq.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %cb_fn.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %58, ptr %cb_fn.i, align 4
  %71 = ptrtoint ptr %cb_param.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %60, ptr %cb_param.i, align 4
  %spec.select.i = or i32 %dma_flags.addr.090.i, %or13.i
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.else.i, %if.then.i235
  %dma_flags.addr.1.i = phi i32 [ %dma_flags.addr.090.i, %if.then.i235 ], [ %spec.select.i, %if.else.i ]
  %72 = ptrtoint ptr %submit to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %submit, align 4
  %and16.i = shl i32 %73, 2
  %74 = and i32 %and16.i, 32
  %75 = or i32 %74, %dma_flags.addr.1.i
  %arrayidx28.i = getelementptr %struct.dmaengine_unmap_data, ptr %call20, i32 0, i32 7, i32 %src_off.089.i
  %arrayidx30.i = getelementptr i8, ptr %coefs, i32 %src_off.089.i
  %76 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %41, align 4
  %78 = ptrtoint ptr %dma_dest.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %dma_dest.i, align 4
  %79 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %51, align 4
  %81 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %61, align 4
  %82 = ptrtoint ptr %device_prep_dma_pq.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %device_prep_dma_pq.i, align 4
  %84 = ptrtoint ptr %len45 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %len45, align 4
  %call3185.i = call ptr %83(ptr noundef %call, ptr noundef nonnull %dma_dest.i, ptr noundef %arrayidx28.i, i32 noundef %conv3.i, ptr noundef %arrayidx30.i, i32 noundef %85, i32 noundef %75) #8
  %tobool32.not86.i = icmp eq ptr %call3185.i, null
  br i1 %tobool32.not86.i, label %if.end14.i.if.end36.i_crit_edge, label %if.end14.i.for.end.i_crit_edge, !prof !46

if.end14.i.for.end.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end14.i.if.end36.i_crit_edge:                  ; preds = %if.end14.i
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.end36.i.if.end36.i_crit_edge, %if.end14.i.if.end36.i_crit_edge
  call void @async_tx_quiesce(ptr noundef %depend_tx.i) #8
  %86 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %call, align 4
  %device_issue_pending.i.i = getelementptr inbounds %struct.dma_device, ptr %87, i32 0, i32 50
  %88 = ptrtoint ptr %device_issue_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %device_issue_pending.i.i, align 4
  call void %89(ptr noundef %call) #8
  %90 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %41, align 4
  %92 = ptrtoint ptr %dma_dest.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %dma_dest.i, align 4
  %93 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %51, align 4
  %95 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %61, align 4
  %96 = ptrtoint ptr %device_prep_dma_pq.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %device_prep_dma_pq.i, align 4
  %98 = ptrtoint ptr %len45 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %len45, align 4
  %call31.i = call ptr %97(ptr noundef %call, ptr noundef nonnull %dma_dest.i, ptr noundef %arrayidx28.i, i32 noundef %conv3.i, ptr noundef %arrayidx30.i, i32 noundef %99, i32 noundef %75) #8
  %tobool32.not.i = icmp eq ptr %call31.i, null
  br i1 %tobool32.not.i, label %if.end36.i.if.end36.i_crit_edge, label %if.end36.i.for.end.i_crit_edge, !prof !46

if.end36.i.for.end.i_crit_edge:                   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end36.i.if.end36.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36.i

for.end.i:                                        ; preds = %if.end36.i.for.end.i_crit_edge, %if.end14.i.for.end.i_crit_edge
  %call31.lcssa.i = phi ptr [ %call3185.i, %if.end14.i.for.end.i_crit_edge ], [ %call31.i, %if.end36.i.for.end.i_crit_edge ]
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %kref.i.i, i32 1, i32 3, i32 1) #8
  %100 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i, ptr %kref.i.i, i32 1, ptr elementtype(i32) %kref.i.i) #8, !srcloc !49
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %100, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %for.end.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !46

for.end.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %for.end.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %101 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %101)
  %.not.i.i.i.i.i.i = icmp sgt i32 %101, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.dma_set_unmap.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !50

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.dma_set_unmap.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_set_unmap.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %for.end.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %for.end.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %kref.i.i, i32 noundef %.sink.i.i.i.i.i.i) #8
  br label %dma_set_unmap.exit.i

dma_set_unmap.exit.i:                             ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.dma_set_unmap.exit.i_crit_edge
  %unmap1.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call31.lcssa.i, i32 0, i32 9
  %102 = ptrtoint ptr %unmap1.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call20, ptr %unmap1.i.i, align 4
  call void @async_tx_submit(ptr noundef %call, ptr noundef nonnull %call31.lcssa.i, ptr noundef %submit) #8
  %103 = ptrtoint ptr %depend_tx.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call31.lcssa.i, ptr %depend_tx.i, align 4
  %sub39.i = sub i32 %src_cnt.088.i, %conv3.i
  %add.i = add i32 %conv3.i, %src_off.089.i
  %or41.i = or i32 %75, 16
  %cmp.i236 = icmp sgt i32 %sub39.i, 0
  br i1 %cmp.i236, label %dma_set_unmap.exit.i.while.body.i_crit_edge, label %dma_set_unmap.exit.i.do_async_gen_syndrome.exit_crit_edge

dma_set_unmap.exit.i.do_async_gen_syndrome.exit_crit_edge: ; preds = %dma_set_unmap.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do_async_gen_syndrome.exit

dma_set_unmap.exit.i.while.body.i_crit_edge:      ; preds = %dma_set_unmap.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

do_async_gen_syndrome.exit:                       ; preds = %dma_set_unmap.exit.i.do_async_gen_syndrome.exit_crit_edge, %if.end98.do_async_gen_syndrome.exit_crit_edge
  %tx.0.lcssa.i = phi ptr [ null, %if.end98.do_async_gen_syndrome.exit_crit_edge ], [ %call31.lcssa.i, %dma_set_unmap.exit.i.do_async_gen_syndrome.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dma_dest.i) #8
  call void @dmaengine_unmap_put(ptr noundef nonnull %call20) #8
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %coefs) #8
  br label %cleanup

if.end100:                                        ; preds = %is_dma_pq_aligned_offs.exit.if.end100_crit_edge, %for.body.lr.ph.i.if.end100_crit_edge, %lor.lhs.false.if.end100_crit_edge, %land.lhs.true.if.end100_crit_edge, %if.end21.if.end100_crit_edge, %do.end17.if.end100_crit_edge
  %unmap.0252 = phi ptr [ %call20, %is_dma_pq_aligned_offs.exit.if.end100_crit_edge ], [ %call20, %lor.lhs.false.if.end100_crit_edge ], [ %call20, %land.lhs.true.if.end100_crit_edge ], [ null, %if.end21.if.end100_crit_edge ], [ null, %do.end17.if.end100_crit_edge ], [ %call20, %for.body.lr.ph.i.if.end100_crit_edge ]
  tail call void @dmaengine_unmap_put(ptr noundef %unmap.0252) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @async_gen_syndrome.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@async_gen_syndrome, %if.then113)) #8
          to label %do.end116 [label %if.then113], !srcloc !48

if.then113:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @async_gen_syndrome.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %disks, i32 noundef %len) #8
  br label %do.end116

do.end116:                                        ; preds = %if.then113, %if.end100
  %depend_tx = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 1
  tail call void @async_tx_quiesce(ptr noundef %depend_tx) #8
  %104 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx, align 4
  %tobool119.not = icmp eq ptr %105, null
  br i1 %tobool119.not, label %if.then120, label %do.end116.if.end125_crit_edge

do.end116.if.end125_crit_edge:                    ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end125

if.then120:                                       ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #10
  %106 = load ptr, ptr @pq_scribble_page, align 4
  %107 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %106, ptr %arrayidx, align 4
  %arrayidx124 = getelementptr i32, ptr %offsets, i32 %sub
  %108 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %arrayidx124, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.then120, %do.end116.if.end125_crit_edge
  %sub126 = add i32 %disks, -1
  %arrayidx127 = getelementptr ptr, ptr %blocks, i32 %sub126
  %109 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx127, align 4
  %tobool128.not = icmp eq ptr %110, null
  br i1 %tobool128.not, label %if.then129, label %if.end125.if.end134_crit_edge

if.end125.if.end134_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end134

if.then129:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #10
  %111 = load ptr, ptr @pq_scribble_page, align 4
  %112 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %111, ptr %arrayidx127, align 4
  %arrayidx133 = getelementptr i32, ptr %offsets, i32 %sub126
  %113 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %arrayidx133, align 4
  br label %if.end134

if.end134:                                        ; preds = %if.then129, %if.end125.if.end134_crit_edge
  %sub.i = add i32 %disks, -3
  %scribble.i = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 4
  %114 = ptrtoint ptr %scribble.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %scribble.i, align 4
  %tobool.not.i237 = icmp eq ptr %115, null
  %blocks..i = select i1 %tobool.not.i237, ptr %blocks, ptr %115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %disks)
  %cmp85.i = icmp sgt i32 %disks, 0
  br i1 %cmp85.i, label %if.end134.for.body.i240_crit_edge, label %if.end134.for.end.i246_crit_edge

if.end134.for.end.i246_crit_edge:                 ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i246

if.end134.for.body.i240_crit_edge:                ; preds = %if.end134
  br label %for.body.i240

for.body.i240:                                    ; preds = %for.inc.i.for.body.i240_crit_edge, %if.end134.for.body.i240_crit_edge
  %stop.089.i = phi i32 [ %stop.1.i, %for.inc.i.for.body.i240_crit_edge ], [ %sub.i, %if.end134.for.body.i240_crit_edge ]
  %start.088.i = phi i32 [ %start.1.i, %for.inc.i.for.body.i240_crit_edge ], [ -1, %if.end134.for.body.i240_crit_edge ]
  %i.086.i = phi i32 [ %inc.i243, %for.inc.i.for.body.i240_crit_edge ], [ 0, %if.end134.for.body.i240_crit_edge ]
  %arrayidx.i239 = getelementptr ptr, ptr %blocks, i32 %i.086.i
  %116 = ptrtoint ptr %arrayidx.i239 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx.i239, align 4
  %cmp2.i = icmp eq ptr %117, null
  br i1 %cmp2.i, label %do.body.i, label %if.else17.i

do.body.i:                                        ; preds = %for.body.i240
  call void @__sanitizer_cov_trace_cmp4(i32 %i.086.i, i32 %sub.i)
  %cmp5.i241 = icmp sgt i32 %i.086.i, %sub.i
  br i1 %cmp5.i241, label %do.body9.i, label %do.end15.i, !prof !46

do.body9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/async_tx/async_pq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 121, 0\0A.popsection", ""() #8, !srcloc !51
  unreachable

do.end15.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx16.i = getelementptr ptr, ptr %blocks..i, i32 %i.086.i
  %118 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @raid6_empty_zero_page, ptr %arrayidx16.i, align 4
  br label %for.inc.i

if.else17.i:                                      ; preds = %for.body.i240
  %call.i = tail call ptr @page_address(ptr noundef nonnull %117) #8
  %arrayidx19.i = getelementptr i32, ptr %offsets, i32 %i.086.i
  %119 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx19.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 %120
  %arrayidx20.i = getelementptr ptr, ptr %blocks..i, i32 %i.086.i
  %121 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %add.ptr.i, ptr %arrayidx20.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.086.i, i32 %sub)
  %cmp22.i = icmp slt i32 %i.086.i, %sub
  br i1 %cmp22.i, label %if.then23.i, label %if.else17.i.for.inc.i_crit_edge

if.else17.i.for.inc.i_crit_edge:                  ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then23.i:                                      ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %start.088.i)
  %cmp24.i = icmp eq i32 %start.088.i, -1
  %spec.select.i242 = select i1 %cmp24.i, i32 %i.086.i, i32 %start.088.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then23.i, %if.else17.i.for.inc.i_crit_edge, %do.end15.i
  %start.1.i = phi i32 [ %start.088.i, %do.end15.i ], [ %start.088.i, %if.else17.i.for.inc.i_crit_edge ], [ %spec.select.i242, %if.then23.i ]
  %stop.1.i = phi i32 [ %stop.089.i, %do.end15.i ], [ %stop.089.i, %if.else17.i.for.inc.i_crit_edge ], [ %i.086.i, %if.then23.i ]
  %inc.i243 = add nuw nsw i32 %i.086.i, 1
  %exitcond.not.i244 = icmp eq i32 %inc.i243, %disks
  br i1 %exitcond.not.i244, label %for.inc.i.for.end.i246_crit_edge, label %for.inc.i.for.body.i240_crit_edge

for.inc.i.for.body.i240_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i240

for.inc.i.for.end.i246_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i246

for.end.i246:                                     ; preds = %for.inc.i.for.end.i246_crit_edge, %if.end134.for.end.i246_crit_edge
  %start.0.lcssa.i = phi i32 [ -1, %if.end134.for.end.i246_crit_edge ], [ %start.1.i, %for.inc.i.for.end.i246_crit_edge ]
  %stop.0.lcssa.i = phi i32 [ %sub.i, %if.end134.for.end.i246_crit_edge ], [ %stop.1.i, %for.inc.i.for.end.i246_crit_edge ]
  %122 = ptrtoint ptr %submit to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %submit, align 4
  %and.i245 = and i32 %123, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i245)
  %tobool29.not.i = icmp eq i32 %and.i245, 0
  br i1 %tobool29.not.i, label %if.else54.i, label %do.body31.i

do.body31.i:                                      ; preds = %for.end.i246
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.raid6_calls, ptr @raid6_call, i32 0, i32 1) to i32))
  %124 = load ptr, ptr getelementptr inbounds (%struct.raid6_calls, ptr @raid6_call, i32 0, i32 1), align 4
  %tobool32.not.i247 = icmp eq ptr %124, null
  br i1 %tobool32.not.i247, label %do.body42.i, label %do.end50.i, !prof !46

do.body42.i:                                      ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/async_tx/async_pq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 134, 0\0A.popsection", ""() #8, !srcloc !52
  unreachable

do.end50.i:                                       ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %start.0.lcssa.i)
  %cmp51.i = icmp sgt i32 %start.0.lcssa.i, -1
  br i1 %cmp51.i, label %if.then52.i, label %do.end50.i.if.end55.i_crit_edge

do.end50.i.if.end55.i_crit_edge:                  ; preds = %do.end50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i

if.then52.i:                                      ; preds = %do.end50.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %124(i32 noundef %disks, i32 noundef %start.0.lcssa.i, i32 noundef %stop.0.lcssa.i, i32 noundef %len, ptr noundef %blocks..i) #8
  br label %if.end55.i

if.else54.i:                                      ; preds = %for.end.i246
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @raid6_call to i32))
  %125 = load ptr, ptr @raid6_call, align 4
  tail call void %125(i32 noundef %disks, i32 noundef %len, ptr noundef %blocks..i) #8
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.else54.i, %if.then52.i, %do.end50.i.if.end55.i_crit_edge
  %cb_fn.i.i = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 2
  %126 = ptrtoint ptr %cb_fn.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %cb_fn.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %127, null
  br i1 %tobool.not.i.i, label %if.end55.i.cleanup_crit_edge, label %if.then.i.i248

if.end55.i.cleanup_crit_edge:                     ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i.i248:                                   ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #10
  %cb_param.i.i = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 3
  %128 = ptrtoint ptr %cb_param.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %cb_param.i.i, align 4
  tail call void %127(ptr noundef %129) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i248, %if.end55.i.cleanup_crit_edge, %do_async_gen_syndrome.exit
  %retval.0 = phi ptr [ %tx.0.lcssa.i, %do_async_gen_syndrome.exit ], [ null, %if.end55.i.cleanup_crit_edge ], [ null, %if.then.i.i248 ]
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
declare dso_local void @async_tx_quiesce(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @async_syndrome_val(ptr noundef %blocks, ptr noundef %offsets, i32 noundef %disks, i32 noundef %len, ptr nocapture noundef %pqres, ptr noundef %spare, i32 noundef %s_off, ptr noundef %submit) #0 align 64 {
entry:
  %tx = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tx) #8
  %cb_fn = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 2
  %0 = add i32 %disks, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -252, i32 %0)
  %1 = icmp ult i32 %0, -252
  br i1 %1, label %do.body7, label %if.else115, !prof !46

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/async_tx/async_pq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 309, 0\0A.popsection", ""() #8, !srcloc !53
  unreachable

if.else115:                                       ; preds = %entry
  %sub116 = add nsw i32 %disks, -2
  %arrayidx117 = getelementptr ptr, ptr %blocks, i32 %sub116
  %2 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx117, align 4
  %arrayidx119 = getelementptr i32, ptr %offsets, i32 %sub116
  %4 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx119, align 4
  %sub120 = add nsw i32 %disks, -1
  %arrayidx121 = getelementptr ptr, ptr %blocks, i32 %sub120
  %6 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx121, align 4
  %arrayidx123 = getelementptr i32, ptr %offsets, i32 %sub120
  %8 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx123, align 4
  %10 = ptrtoint ptr %submit to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %submit, align 4
  %12 = ptrtoint ptr %cb_fn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cb_fn, align 4
  %scribble126 = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 4
  %14 = ptrtoint ptr %scribble126 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %scribble126, align 4
  %cb_param = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 3
  %16 = ptrtoint ptr %cb_param to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cb_param, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @async_syndrome_val.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@async_syndrome_val, %if.then139)) #8
          to label %do.body143 [label %if.then139], !srcloc !48

if.then139:                                       ; preds = %if.else115
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @async_syndrome_val.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %disks, i32 noundef %len) #8
  br label %do.body143

do.body143:                                       ; preds = %if.then139, %if.else115
  %tobool144.not = icmp eq ptr %spare, null
  %tobool146.not = icmp eq ptr %15, null
  %spec.select = select i1 %tobool144.not, i1 true, i1 %tobool146.not, !prof !46
  br i1 %spec.select, label %do.body157, label %do.end165, !prof !46

do.body157:                                       ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/async_tx/async_pq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 390, 0\0A.popsection", ""() #8, !srcloc !54
  unreachable

do.end165:                                        ; preds = %do.body143
  %depend_tx166 = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 1
  tail call void @async_tx_quiesce(ptr noundef %depend_tx166) #8
  %18 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %tx, align 4
  %19 = ptrtoint ptr %pqres to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %pqres, align 4
  %tobool167.not = icmp eq ptr %3, null
  br i1 %tobool167.not, label %do.end165.if.end181_crit_edge, label %if.then168

do.end165.if.end181_crit_edge:                    ; preds = %do.end165
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end181

if.then168:                                       ; preds = %do.end165
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %submit to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %submit, align 4
  %21 = ptrtoint ptr %depend_tx166 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %depend_tx166, align 4
  %22 = ptrtoint ptr %cb_fn to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %cb_fn, align 4
  %23 = ptrtoint ptr %cb_param to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %cb_param, align 4
  %24 = ptrtoint ptr %scribble126 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %15, ptr %scribble126, align 4
  %call170 = tail call ptr @async_xor_offs(ptr noundef nonnull %spare, i32 noundef %s_off, ptr noundef %blocks, ptr noundef %offsets, i32 noundef %sub116, i32 noundef %len, ptr noundef %submit) #8
  %25 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call170, ptr %tx, align 4
  call void @async_tx_quiesce(ptr noundef nonnull %tx) #8
  %call171 = call ptr @page_address(ptr noundef nonnull %3) #8
  %add.ptr = getelementptr i8, ptr %call171, i32 %5
  %call172 = call ptr @page_address(ptr noundef nonnull %spare) #8
  %add.ptr173 = getelementptr i8, ptr %call172, i32 %s_off
  %bcmp353 = call i32 @bcmp(ptr %add.ptr, ptr %add.ptr173, i32 %len) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp353)
  %tobool175 = icmp ne i32 %bcmp353, 0
  %lnot.ext179 = zext i1 %tobool175 to i32
  %26 = ptrtoint ptr %pqres to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pqres, align 4
  %or180 = or i32 %27, %lnot.ext179
  store i32 %or180, ptr %pqres, align 4
  br label %if.end181

if.end181:                                        ; preds = %if.then168, %do.end165.if.end181_crit_edge
  %tobool182.not = icmp eq ptr %7, null
  br i1 %tobool182.not, label %if.end181.if.end203_crit_edge, label %if.then183

if.end181.if.end203_crit_edge:                    ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end203

if.then183:                                       ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %arrayidx117, align 4
  %29 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %spare, ptr %arrayidx121, align 4
  %30 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %s_off, ptr %arrayidx123, align 4
  %31 = call ptr @memset(ptr %submit, i32 0, i32 16)
  %32 = ptrtoint ptr %scribble126 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %15, ptr %scribble126, align 4
  %call190 = call ptr @async_gen_syndrome(ptr noundef %blocks, ptr noundef %offsets, i32 noundef %disks, i32 noundef %len, ptr noundef %submit)
  %33 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call190, ptr %tx, align 4
  call void @async_tx_quiesce(ptr noundef nonnull %tx) #8
  %call191 = call ptr @page_address(ptr noundef nonnull %7) #8
  %add.ptr192 = getelementptr i8, ptr %call191, i32 %9
  %call193 = call ptr @page_address(ptr noundef nonnull %spare) #8
  %add.ptr194 = getelementptr i8, ptr %call193, i32 %s_off
  %bcmp = call i32 @bcmp(ptr %add.ptr192, ptr %add.ptr194, i32 %len) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool196.not = icmp eq i32 %bcmp, 0
  %shl201 = select i1 %tobool196.not, i32 0, i32 2
  %34 = ptrtoint ptr %pqres to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pqres, align 4
  %or202 = or i32 %shl201, %35
  store i32 %or202, ptr %pqres, align 4
  br label %if.end203

if.end203:                                        ; preds = %if.then183, %if.end181.if.end203_crit_edge
  %36 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %3, ptr %arrayidx117, align 4
  %37 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %5, ptr %arrayidx119, align 4
  %38 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %7, ptr %arrayidx121, align 4
  %39 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %9, ptr %arrayidx123, align 4
  %40 = ptrtoint ptr %cb_fn to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %13, ptr %cb_fn, align 4
  %41 = ptrtoint ptr %cb_param to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %17, ptr %cb_param, align 4
  %42 = ptrtoint ptr %submit to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %11, ptr %submit, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end203.async_tx_sync_epilog.exit_crit_edge, label %if.then.i

if.end203.async_tx_sync_epilog.exit_crit_edge:    ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #10
  br label %async_tx_sync_epilog.exit

if.then.i:                                        ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #10
  call void %13(ptr noundef %17) #8
  br label %async_tx_sync_epilog.exit

async_tx_sync_epilog.exit:                        ; preds = %if.then.i, %if.end203.async_tx_sync_epilog.exit_crit_edge
  %43 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %tx, align 4
  call void @dmaengine_unmap_put(ptr noundef null) #8
  %44 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tx, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tx) #8
  ret ptr %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @async_tx_submit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @async_xor_offs(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @async_pq_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @pq_scribble_page, align 4
  tail call void @__free_pages(ptr noundef %0, i32 noundef 0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @async_pq_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #8
  store ptr %call38.i.i.i, ptr @pq_scribble_page, align 4
  %tobool.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool.not, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #12
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !13, !14, !16, !18, !20, !22, !24, !26, !27, !29, !31, !32, !33, !34}
!llvm.named.register.sp = !{!36}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../crypto/async_tx/async_pq.c", i32 203, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @async_gen_syndrome.__UNIQUE_ID_ddebug275, !1, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../crypto/async_tx/async_pq.c", i32 252, i32 2}
!8 = !{ptr @async_gen_syndrome.__UNIQUE_ID_ddebug276, !7, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!9 = !{ptr @__ksymtab_async_gen_syndrome, !10, !"__ksymtab_async_gen_syndrome", i1 false, i1 false}
!10 = !{!"../crypto/async_tx/async_pq.c", i32 269, i32 1}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../crypto/async_tx/async_pq.c", i32 320, i32 3}
!13 = distinct !{null, !12, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!14 = !{ptr @async_syndrome_val.__UNIQUE_ID_ddebug278, !15, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!15 = !{!"../crypto/async_tx/async_pq.c", i32 384, i32 3}
!16 = !{ptr @__ksymtab_async_syndrome_val, !17, !"__ksymtab_async_syndrome_val", i1 false, i1 false}
!17 = !{!"../crypto/async_tx/async_pq.c", i32 440, i32 1}
!18 = !{ptr @__initcall__kmod_async_pq__279_459_async_pq_init6, !19, !"__initcall__kmod_async_pq__279_459_async_pq_init6", i1 false, i1 false}
!19 = !{!"../crypto/async_tx/async_pq.c", i32 459, i32 1}
!20 = !{ptr @__exitcall_async_pq_exit, !21, !"__exitcall_async_pq_exit", i1 false, i1 false}
!21 = !{!"../crypto/async_tx/async_pq.c", i32 460, i32 1}
!22 = !{ptr @__UNIQUE_ID_description280, !23, !"__UNIQUE_ID_description280", i1 false, i1 false}
!23 = !{!"../crypto/async_tx/async_pq.c", i32 462, i32 1}
!24 = !{ptr @__UNIQUE_ID_file281, !25, !"__UNIQUE_ID_file281", i1 false, i1 false}
!25 = !{!"../crypto/async_tx/async_pq.c", i32 463, i32 1}
!26 = !{ptr @__UNIQUE_ID_license282, !25, !"__UNIQUE_ID_license282", i1 false, i1 false}
!27 = !{ptr @pq_scribble_page, !28, !"pq_scribble_page", i1 false, i1 false}
!28 = !{!"../crypto/async_tx/async_pq.c", i32 18, i32 21}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../crypto/async_tx/async_pq.c", i32 449, i32 2}
!31 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @async_pq_init._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @async_pq_init._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = distinct !{null, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!36 = !{!"sp"}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{!"branch_weights", i32 1, i32 2000}
!47 = !{i64 2154530752, i64 2154531243, i64 2154530789, i64 2154530845, i64 2154530879, i64 2154530903, i64 2154530944, i64 2154530965, i64 2154530993, i64 2154531027}
!48 = !{i64 2148702805, i64 2148702810, i64 2148702823, i64 2148702867, i64 2148702901, i64 2148702922}
!49 = !{i64 2148222520, i64 2148222552, i64 2148222581, i64 2148222615, i64 2148222646, i64 2148222669}
!50 = !{!"branch_weights", i32 2000, i32 1}
!51 = !{i64 2154527128, i64 2154527619, i64 2154527165, i64 2154527221, i64 2154527255, i64 2154527279, i64 2154527320, i64 2154527341, i64 2154527369, i64 2154527403}
!52 = !{i64 2154528753, i64 2154529244, i64 2154528790, i64 2154528846, i64 2154528880, i64 2154528904, i64 2154528945, i64 2154528966, i64 2154528994, i64 2154529028}
!53 = !{i64 2154539593, i64 2154540084, i64 2154539630, i64 2154539686, i64 2154539720, i64 2154539744, i64 2154539785, i64 2154539806, i64 2154539834, i64 2154539868}
!54 = !{i64 2154546601, i64 2154547092, i64 2154546638, i64 2154546694, i64 2154546728, i64 2154546752, i64 2154546793, i64 2154546814, i64 2154546842, i64 2154546876}
