; ModuleID = '/llk/IR_all_yes/fs/crypto/bio.c_pt.bc'
source_filename = "../fs/crypto/bio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+fscrypt_decrypt_bio\22, \22a\22\09"
module asm "\09.weak\09__crc_fscrypt_decrypt_bio\09\09\09\09"
module asm "\09.long\09__crc_fscrypt_decrypt_bio\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fscrypt_decrypt_bio:\09\09\09\09\09"
module asm "\09.asciz \09\22fscrypt_decrypt_bio\22\09\09\09\09\09"
module asm "__kstrtabns_fscrypt_decrypt_bio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fscrypt_zeroout_range\22, \22a\22\09"
module asm "\09.weak\09__crc_fscrypt_zeroout_range\09\09\09\09"
module asm "\09.long\09__crc_fscrypt_zeroout_range\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fscrypt_zeroout_range:\09\09\09\09\09"
module asm "\09.asciz \09\22fscrypt_zeroout_range\22\09\09\09\09\09"
module asm "__kstrtabns_fscrypt_zeroout_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.74, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.74 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.6, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.70, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.71, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.72, ptr, %struct.address_space, %struct.list_head, %union.anon.73, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.70 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.71 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.73 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }

@__kstrtab_fscrypt_decrypt_bio = external dso_local constant [0 x i8], align 1
@__kstrtabns_fscrypt_decrypt_bio = external dso_local constant [0 x i8], align 1
@__ksymtab_fscrypt_decrypt_bio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fscrypt_decrypt_bio to i32), ptr @__kstrtab_fscrypt_decrypt_bio, ptr @__kstrtabns_fscrypt_decrypt_bio }, section "___ksymtab+fscrypt_decrypt_bio", align 4
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/crypto/bio.c\00", [16 x i8] zeroinitializer }, align 32
@empty_zero_page = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_fscrypt_zeroout_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_fscrypt_zeroout_range = external dso_local constant [0 x i8], align 1
@__ksymtab_fscrypt_zeroout_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fscrypt_zeroout_range to i32), ptr @__kstrtab_fscrypt_zeroout_range, ptr @__kstrtabns_fscrypt_zeroout_range }, section "___ksymtab+fscrypt_zeroout_range", align 4
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"VM_BUG_ON_PAGE(1 && PageTail(page))\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(((typeof(page))_compound_head(page))))\00", [61 x i8] zeroinitializer }, align 32
@fs_bio_set = external dso_local global %struct.bio_set, align 4
@___asan_gen_.4 = private constant [19 x i8] c"../fs/crypto/bio.c\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.4, i32 149, i32 6 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 416, i32 1 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_fscrypt_decrypt_bio, ptr @__ksymtab_fscrypt_zeroout_range, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fscrypt_decrypt_bio(ptr nocapture noundef readonly %bio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_vcnt.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 17
  %0 = ptrtoint ptr %bi_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %bi_vcnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.not.i28.not = icmp eq i16 %1, 0
  br i1 %cmp.not.i28.not, label %entry.for.end_crit_edge, label %if.end.i.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end.i.lr.ph:                                   ; preds = %entry
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 20
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.if.end.i_crit_edge, %if.end.i.lr.ph
  %iter_all.sroa.0.031 = phi ptr [ inttoptr (i32 -1 to ptr), %if.end.i.lr.ph ], [ %iter_all.sroa.0.1, %if.end.if.end.i_crit_edge ]
  %iter_all.sroa.13.030 = phi i32 [ 0, %if.end.i.lr.ph ], [ %spec.select25, %if.end.if.end.i_crit_edge ]
  %iter_all.sroa.17.029 = phi i32 [ 0, %if.end.i.lr.ph ], [ %spec.select, %if.end.if.end.i_crit_edge ]
  %2 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bi_io_vec.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter_all.sroa.17.029)
  %tobool.not.i.i7 = icmp eq i32 %iter_all.sroa.17.029, 0
  br i1 %tobool.not.i.i7, label %if.else.i.i, label %if.then.i.i8

if.then.i.i8:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %incdec.ptr.i.i = getelementptr %struct.page, ptr %iter_all.sroa.0.031, i32 1
  br label %if.end.i.i11

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i = getelementptr %struct.bio_vec, ptr %3, i32 %iter_all.sroa.13.030
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %bv_offset3.i.i = getelementptr %struct.bio_vec, ptr %3, i32 %iter_all.sroa.13.030, i32 2
  %6 = ptrtoint ptr %bv_offset3.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bv_offset3.i.i, align 4
  %shr.i.i = lshr i32 %7, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %5, i32 %shr.i.i
  %and.i.i9 = and i32 %7, 4095
  br label %if.end.i.i11

if.end.i.i11:                                     ; preds = %if.else.i.i, %if.then.i.i8
  %iter_all.sroa.0.1 = phi ptr [ %add.ptr.i.i, %if.else.i.i ], [ %incdec.ptr.i.i, %if.then.i.i8 ]
  %.sink.i.i = phi i32 [ %and.i.i9, %if.else.i.i ], [ 0, %if.then.i.i8 ]
  %sub.i.i10 = sub nuw nsw i32 4096, %.sink.i.i
  %bv_len.i.i = getelementptr %struct.bio_vec, ptr %3, i32 %iter_all.sroa.13.030, i32 1
  %8 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bv_len.i.i, align 4
  %sub9.i.i = sub i32 %9, %iter_all.sroa.17.029
  %10 = tail call i32 @llvm.umin.i32(i32 %sub.i.i10, i32 %sub9.i.i) #4
  %add.i.i = add i32 %10, %iter_all.sroa.17.029
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %9)
  %cmp15.i.i = icmp eq i32 %add.i.i, %9
  %spec.select = select i1 %cmp15.i.i, i32 0, i32 %add.i.i
  %inc.i.i = zext i1 %cmp15.i.i to i32
  %spec.select25 = add nuw nsw i32 %iter_all.sroa.13.030, %inc.i.i
  %call2 = tail call i32 @fscrypt_decrypt_pagecache_blocks(ptr noundef %iter_all.sroa.0.1, i32 noundef %10, i32 noundef %.sink.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end.i.i11.if.end_crit_edge, label %if.then

if.end.i.i11.if.end_crit_edge:                    ; preds = %if.end.i.i11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %if.end.i.i11
  %11 = getelementptr inbounds %struct.page, ptr %iter_all.sroa.0.1, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  %and.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %do.body7.i, label %if.then.i, !prof !18

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @dump_page(ptr noundef %iter_all.sroa.0.1, ptr noundef nonnull @.str.1) #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #4, !srcloc !19
  unreachable

do.body7.i:                                       ; preds = %if.then
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %11, align 4
  %and.i31.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31.i)
  %tobool.not.i.i = icmp eq i32 %and.i31.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !18

if.then.i.i:                                      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i.i = add i32 %15, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %iter_all.sroa.0.1 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %16, %if.end.i.i ]
  %17 = inttoptr i32 %retval.0.i.i to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp.i.not.i = icmp eq i32 %19, -1
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %11, align 4
  %and.i32.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32.i)
  %tobool.not.i33.i = icmp eq i32 %and.i32.i, 0
  br i1 %cmp.i.not.i, label %if.then17.i, label %do.end24.i, !prof !20

if.then17.i:                                      ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i36.i, label %if.then.i35.i, !prof !18

if.then.i35.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i34.i = add i32 %21, -1
  br label %_compound_head.exit38.i

if.end.i36.i:                                     ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %iter_all.sroa.0.1 to i32
  br label %_compound_head.exit38.i

_compound_head.exit38.i:                          ; preds = %if.end.i36.i, %if.then.i35.i
  %retval.0.i37.i = phi i32 [ %sub.i34.i, %if.then.i35.i ], [ %22, %if.end.i36.i ]
  %23 = inttoptr i32 %retval.0.i37.i to ptr
  tail call void @dump_page(ptr noundef %23, ptr noundef nonnull @.str.2) #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 416, 0\0A.popsection", ""() #4, !srcloc !21
  unreachable

do.end24.i:                                       ; preds = %_compound_head.exit.i
  br i1 %tobool.not.i33.i, label %if.end.i43.i, label %if.then.i42.i, !prof !18

if.then.i42.i:                                    ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #6
  %sub.i41.i = add i32 %21, -1
  br label %SetPageError.exit

if.end.i43.i:                                     ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %iter_all.sroa.0.1 to i32
  br label %SetPageError.exit

SetPageError.exit:                                ; preds = %if.end.i43.i, %if.then.i42.i
  %retval.0.i44.i = phi i32 [ %sub.i41.i, %if.then.i42.i ], [ %24, %if.end.i43.i ]
  %25 = inttoptr i32 %retval.0.i44.i to ptr
  tail call void @_set_bit(i32 noundef 8, ptr noundef %25) #4
  br label %if.end

if.end:                                           ; preds = %SetPageError.exit, %if.end.i.i11.if.end_crit_edge
  %26 = ptrtoint ptr %bi_vcnt.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %bi_vcnt.i, align 8
  %conv.i = zext i16 %27 to i32
  %cmp.not.i = icmp ult i32 %spec.select25, %conv.i
  br i1 %cmp.not.i, label %if.end.if.end.i_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_decrypt_pagecache_blocks(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fscrypt_zeroout_range(ptr noundef %inode, i32 noundef %lblk, i64 noundef %pblk, i32 noundef %len) #0 align 64 {
entry:
  %pages = alloca [16 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %i_blkbits = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 20
  %0 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %i_blkbits, align 2
  %conv = zext i8 %1 to i32
  %shl = shl nuw i32 1, %conv
  %sub = sub nsw i32 12, %conv
  %shl1 = shl nuw nsw i32 1, %sub
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pages) #4
  %2 = call ptr @memset(ptr %pages, i32 255, i32 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp eq i32 %len, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_flags.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %3 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i_flags.i.i, align 4
  %and.i.i = and i32 %4, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.do.end_crit_edge, label %fscrypt_needs_contents_encryption.exit.i

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

fscrypt_needs_contents_encryption.exit.i:         ; preds = %if.end
  %5 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %inode, align 8
  %7 = and i16 %6, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %7)
  %cmp.i.i = icmp eq i16 %7, -32768
  br i1 %cmp.i.i, label %fscrypt_inode_uses_inline_crypto.exit, label %fscrypt_needs_contents_encryption.exit.i.do.end_crit_edge

fscrypt_needs_contents_encryption.exit.i.do.end_crit_edge: ; preds = %fscrypt_needs_contents_encryption.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

fscrypt_inode_uses_inline_crypto.exit:            ; preds = %fscrypt_needs_contents_encryption.exit.i
  %call1.i = tail call zeroext i1 @__fscrypt_inode_uses_inline_crypto(ptr noundef %inode) #4
  br i1 %call1.i, label %while.body.lr.ph.i, label %fscrypt_inode_uses_inline_crypto.exit.do.end_crit_edge

fscrypt_inode_uses_inline_crypto.exit.do.end_crit_edge: ; preds = %fscrypt_inode_uses_inline_crypto.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

while.body.lr.ph.i:                               ; preds = %fscrypt_inode_uses_inline_crypto.exit
  %8 = ptrtoint ptr %i_blkbits to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %i_blkbits, align 2
  %conv.i = zext i8 %9 to i32
  %sub.i = sub nsw i32 12, %conv.i
  %shl.i = shl nuw nsw i32 1, %sub.i
  %call.i.i = tail call ptr @bio_alloc_bioset(i32 noundef 3136, i16 noundef zeroext 256, ptr noundef nonnull @fs_bio_set) #4
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 3
  %bi_bdev.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 1
  %sub6.i = add nsw i32 %conv.i, -9
  %sh_prom.i = zext i32 %sub6.i to i64
  %bi_iter.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 8
  %bi_opf.i.i = getelementptr inbounds %struct.bio, ptr %call.i.i, i32 0, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %lblk.addr.097.i = phi i32 [ %lblk, %while.body.lr.ph.i ], [ %add.i, %cleanup.i.while.body.i_crit_edge ]
  %num_pages.096.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %num_pages.2.i, %cleanup.i.while.body.i_crit_edge ]
  %len.addr.095.i = phi i32 [ %len, %while.body.lr.ph.i ], [ %sub36.i, %cleanup.i.while.body.i_crit_edge ]
  %pblk.addr.094.i = phi i64 [ %pblk, %while.body.lr.ph.i ], [ %add38.i, %cleanup.i.while.body.i_crit_edge ]
  %10 = tail call i32 @llvm.umin.i32(i32 %len.addr.095.i, i32 %shl.i) #4
  %shl2.i = shl i32 %10, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_pages.096.i)
  %cmp3.i = icmp eq i32 %num_pages.096.i, 0
  br i1 %cmp3.i, label %if.then.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  %conv5.i = zext i32 %lblk.addr.097.i to i64
  tail call void @fscrypt_set_bio_crypt_ctx(ptr noundef %call.i.i, ptr noundef %inode, i64 noundef %conv5.i, i32 noundef 3136) #4
  %11 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_sb.i, align 4
  %s_bdev.i = getelementptr inbounds %struct.super_block, ptr %12, i32 0, i32 26
  %13 = ptrtoint ptr %s_bdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_bdev.i, align 4
  %15 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %bi_flags.i.i.i, align 4
  %conv1.i.i.i = and i16 %16, -2049
  store i16 %conv1.i.i.i, ptr %bi_flags.i.i.i, align 4
  %17 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bi_bdev.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %18, %14
  br i1 %cmp.not.i.i, label %if.then.i.bio_set_dev.exit.i_crit_edge, label %if.then.i.i

if.then.i.bio_set_dev.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %bio_set_dev.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv1.i8.i.i = and i16 %16, -2177
  %19 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv1.i8.i.i, ptr %bi_flags.i.i.i, align 4
  br label %bio_set_dev.exit.i

bio_set_dev.exit.i:                               ; preds = %if.then.i.i, %if.then.i.bio_set_dev.exit.i_crit_edge
  %20 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %14, ptr %bi_bdev.i.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %call.i.i) #4
  %shl7.i = shl i64 %pblk.addr.094.i, %sh_prom.i
  %21 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %shl7.i, ptr %bi_iter.i, align 8
  %22 = ptrtoint ptr %bi_opf.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %bi_opf.i.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %bio_set_dev.exit.i, %while.body.i.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @empty_zero_page to i32))
  %23 = load ptr, ptr @empty_zero_page, align 4
  %call8.i = tail call i32 @bio_add_page(ptr noundef %call.i.i, ptr noundef %23, i32 noundef %shl2.i, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %call8.i, i32 %shl2.i)
  %cmp9.not.i = icmp eq i32 %call8.i, %shl2.i
  br i1 %cmp9.not.i, label %if.end35.i, label %do.end.i, !prof !18

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 71, i32 noundef 9, ptr noundef null) #4
  br label %fscrypt_zeroout_range_inline_crypt.exit

if.end35.i:                                       ; preds = %if.end.i
  %inc.i = add i32 %num_pages.096.i, 1
  %sub36.i = sub i32 %len.addr.095.i, %10
  %add.i = add i32 %10, %lblk.addr.097.i
  %conv37.i = zext i32 %10 to i64
  %add38.i = add i64 %pblk.addr.094.i, %conv37.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %inc.i)
  %cmp39.i = icmp eq i32 %inc.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub36.i)
  %tobool41.not.i = icmp eq i32 %sub36.i, 0
  %or.cond.i = select i1 %cmp39.i, i1 true, i1 %tobool41.not.i
  br i1 %or.cond.i, label %if.end35.i.if.then45.i_crit_edge, label %lor.lhs.false42.i

if.end35.i.if.then45.i_crit_edge:                 ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then45.i

lor.lhs.false42.i:                                ; preds = %if.end35.i
  %conv43.i = zext i32 %add.i to i64
  %call44.i = tail call zeroext i1 @fscrypt_mergeable_bio(ptr noundef %call.i.i, ptr noundef %inode, i64 noundef %conv43.i) #4
  br i1 %call44.i, label %lor.lhs.false42.i.cleanup.i_crit_edge, label %lor.lhs.false42.i.if.then45.i_crit_edge

lor.lhs.false42.i.if.then45.i_crit_edge:          ; preds = %lor.lhs.false42.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then45.i

lor.lhs.false42.i.cleanup.i_crit_edge:            ; preds = %lor.lhs.false42.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

if.then45.i:                                      ; preds = %lor.lhs.false42.i.if.then45.i_crit_edge, %if.end35.i.if.then45.i_crit_edge
  %call46.i = tail call i32 @submit_bio_wait(ptr noundef %call.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %if.end49.i, label %if.then45.i.fscrypt_zeroout_range_inline_crypt.exit_crit_edge

if.then45.i.fscrypt_zeroout_range_inline_crypt.exit_crit_edge: ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %fscrypt_zeroout_range_inline_crypt.exit

if.end49.i:                                       ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @bio_reset(ptr noundef %call.i.i) #4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end49.i, %lor.lhs.false42.i.cleanup.i_crit_edge
  %num_pages.2.i = phi i32 [ 0, %if.end49.i ], [ %inc.i, %lor.lhs.false42.i.cleanup.i_crit_edge ]
  br i1 %tobool41.not.i, label %cleanup.i.fscrypt_zeroout_range_inline_crypt.exit_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

cleanup.i.fscrypt_zeroout_range_inline_crypt.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %fscrypt_zeroout_range_inline_crypt.exit

fscrypt_zeroout_range_inline_crypt.exit:          ; preds = %cleanup.i.fscrypt_zeroout_range_inline_crypt.exit_crit_edge, %if.then45.i.fscrypt_zeroout_range_inline_crypt.exit_crit_edge, %do.end.i
  %err.3.i = phi i32 [ -5, %do.end.i ], [ %call46.i, %if.then45.i.fscrypt_zeroout_range_inline_crypt.exit_crit_edge ], [ 0, %cleanup.i.fscrypt_zeroout_range_inline_crypt.exit_crit_edge ]
  tail call void @bio_put(ptr noundef %call.i.i) #4
  br label %cleanup

do.end:                                           ; preds = %fscrypt_inode_uses_inline_crypto.exit.do.end_crit_edge, %fscrypt_needs_contents_encryption.exit.i.do.end_crit_edge, %if.end.do.end_crit_edge
  %add = add i32 %len, -1
  %sub6 = add i32 %add, %shl1
  %shr = lshr i32 %sub6, %sub
  %24 = tail call i32 @llvm.umin.i32(i32 %shr, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp9198.not = icmp eq i32 %24, 0
  br i1 %cmp9198.not, label %do.end.do.end31_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.do.end31_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end31

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %i.0199 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0199)
  %cmp11 = icmp eq i32 %i.0199, 0
  %cond13 = select i1 %cmp11, i32 3136, i32 10240
  %call14 = tail call ptr @fscrypt_alloc_bounce_page(i32 noundef %cond13) #4
  %arrayidx = getelementptr [16 x ptr], ptr %pages, i32 0, i32 %i.0199
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call14, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %call14, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0199, 1
  %exitcond.not = icmp eq i32 %inc, %24
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %24, %for.inc.for.end_crit_edge ], [ %i.0199, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa)
  %cmp18 = icmp eq i32 %i.0.lcssa, 0
  br i1 %cmp18, label %for.end.do.end31_crit_edge, label %if.end47, !prof !20

for.end.do.end31_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end31

do.end31:                                         ; preds = %for.end.do.end31_crit_edge, %do.end.do.end31_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 149, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end47:                                         ; preds = %for.end
  %conv48 = trunc i32 %i.0.lcssa to i16
  %call.i = tail call ptr @bio_alloc_bioset(i32 noundef 3136, i16 noundef zeroext %conv48, ptr noundef nonnull @fs_bio_set) #4
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 3
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 1
  %sub51 = add nsw i32 %conv, -9
  %sh_prom = zext i32 %sub51 to i64
  %bi_iter = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 8
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 2
  br label %do.body50

do.body50:                                        ; preds = %if.end116.do.body50_crit_edge, %if.end47
  %len.addr.0 = phi i32 [ %len, %if.end47 ], [ %dec, %if.end116.do.body50_crit_edge ]
  %pblk.addr.0 = phi i64 [ %pblk, %if.end47 ], [ %inc61, %if.end116.do.body50_crit_edge ]
  %lblk.addr.0 = phi i32 [ %lblk, %if.end47 ], [ %inc60, %if.end116.do.body50_crit_edge ]
  %26 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_sb, align 4
  %s_bdev = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 26
  %28 = ptrtoint ptr %s_bdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %s_bdev, align 4
  %30 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %31, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %32 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %33, %29
  br i1 %cmp.not.i, label %do.body50.bio_set_dev.exit_crit_edge, label %if.then.i189

do.body50.bio_set_dev.exit_crit_edge:             ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #6
  br label %bio_set_dev.exit

if.then.i189:                                     ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #6
  %conv1.i8.i = and i16 %31, -2177
  %34 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i189, %do.body50.bio_set_dev.exit_crit_edge
  %35 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %29, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %call.i) #4
  %shl52 = shl i64 %pblk.addr.0, %sh_prom
  %36 = ptrtoint ptr %bi_iter to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %shl52, ptr %bi_iter, align 8
  %37 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %bi_opf.i, align 8
  br label %do.body53

do.body53:                                        ; preds = %do.cond107.do.body53_crit_edge, %bio_set_dev.exit
  %len.addr.1 = phi i32 [ %len.addr.0, %bio_set_dev.exit ], [ %dec, %do.cond107.do.body53_crit_edge ]
  %i.1 = phi i32 [ 0, %bio_set_dev.exit ], [ %i.2, %do.cond107.do.body53_crit_edge ]
  %offset.0 = phi i32 [ 0, %bio_set_dev.exit ], [ %offset.1, %do.cond107.do.body53_crit_edge ]
  %pblk.addr.1 = phi i64 [ %pblk.addr.0, %bio_set_dev.exit ], [ %inc61, %do.cond107.do.body53_crit_edge ]
  %lblk.addr.1 = phi i32 [ %lblk.addr.0, %bio_set_dev.exit ], [ %inc60, %do.cond107.do.body53_crit_edge ]
  %conv54 = zext i32 %lblk.addr.1 to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @empty_zero_page to i32))
  %38 = load ptr, ptr @empty_zero_page, align 4
  %arrayidx55 = getelementptr [16 x ptr], ptr %pages, i32 0, i32 %i.1
  %39 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx55, align 4
  %call56 = tail call i32 @fscrypt_crypt_block(ptr noundef %inode, i32 noundef 1, i64 noundef %conv54, ptr noundef %38, ptr noundef %40, i32 noundef %shl, i32 noundef %offset.0, i32 noundef 3136) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %do.body53.for.body124.preheader_crit_edge

do.body53.for.body124.preheader_crit_edge:        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body124.preheader

if.end59:                                         ; preds = %do.body53
  %inc60 = add i32 %lblk.addr.1, 1
  %inc61 = add i64 %pblk.addr.1, 1
  %dec = add i32 %len.addr.1, -1
  %add62 = add i32 %offset.0, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add62)
  %cmp63 = icmp eq i32 %add62, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp65 = icmp eq i32 %dec, 0
  %or.cond = select i1 %cmp63, i1 true, i1 %cmp65
  br i1 %or.cond, label %if.then67, label %if.end59.do.cond107_crit_edge

if.end59.do.cond107_crit_edge:                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.cond107

if.then67:                                        ; preds = %if.end59
  %inc68 = add i32 %i.1, 1
  %call70 = tail call i32 @bio_add_page(ptr noundef %call.i, ptr noundef %40, i32 noundef %add62, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %call70, i32 %add62)
  %cmp72.not = icmp eq i32 %call70, %add62
  br i1 %cmp72.not, label %if.then67.do.cond107_crit_edge, label %do.end89, !prof !18

if.then67.do.cond107_crit_edge:                   ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.cond107

do.end89:                                         ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 174, i32 noundef 9, ptr noundef null) #4
  br label %for.body124.preheader

do.cond107:                                       ; preds = %if.then67.do.cond107_crit_edge, %if.end59.do.cond107_crit_edge
  %i.2 = phi i32 [ %i.1, %if.end59.do.cond107_crit_edge ], [ %inc68, %if.then67.do.cond107_crit_edge ]
  %offset.1 = phi i32 [ %add62, %if.end59.do.cond107_crit_edge ], [ 0, %if.then67.do.cond107_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2, i32 %i.0.lcssa)
  %cmp108.not = icmp eq i32 %i.2, %i.0.lcssa
  %or.cond188 = select i1 %cmp108.not, i1 true, i1 %cmp65
  br i1 %or.cond188, label %do.end112, label %do.cond107.do.body53_crit_edge

do.cond107.do.body53_crit_edge:                   ; preds = %do.cond107
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body53

do.end112:                                        ; preds = %do.cond107
  %call113 = tail call i32 @submit_bio_wait(ptr noundef %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.end116, label %do.end112.for.body124.preheader_crit_edge

do.end112.for.body124.preheader_crit_edge:        ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body124.preheader

if.end116:                                        ; preds = %do.end112
  tail call void @bio_reset(ptr noundef %call.i) #4
  br i1 %cmp65, label %if.end116.for.body124.preheader_crit_edge, label %if.end116.do.body50_crit_edge

if.end116.do.body50_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body50

if.end116.for.body124.preheader_crit_edge:        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body124.preheader

for.body124.preheader:                            ; preds = %if.end116.for.body124.preheader_crit_edge, %do.end112.for.body124.preheader_crit_edge, %do.end89, %do.body53.for.body124.preheader_crit_edge
  %err.0 = phi i32 [ -5, %do.end89 ], [ %call56, %do.body53.for.body124.preheader_crit_edge ], [ 0, %if.end116.for.body124.preheader_crit_edge ], [ %call113, %do.end112.for.body124.preheader_crit_edge ]
  tail call void @bio_put(ptr noundef %call.i) #4
  %umax = call i32 @llvm.umax.i32(i32 %i.0.lcssa, i32 1)
  br label %for.body124

for.body124:                                      ; preds = %for.body124.for.body124_crit_edge, %for.body124.preheader
  %i.3202 = phi i32 [ %inc127, %for.body124.for.body124_crit_edge ], [ 0, %for.body124.preheader ]
  %arrayidx125 = getelementptr [16 x ptr], ptr %pages, i32 0, i32 %i.3202
  %41 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx125, align 4
  tail call void @fscrypt_free_bounce_page(ptr noundef %42) #4
  %inc127 = add nuw nsw i32 %i.3202, 1
  %exitcond210.not = icmp eq i32 %inc127, %umax
  br i1 %exitcond210.not, label %for.body124.cleanup_crit_edge, label %for.body124.for.body124_crit_edge

for.body124.for.body124_crit_edge:                ; preds = %for.body124
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body124

for.body124.cleanup_crit_edge:                    ; preds = %for.body124
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.body124.cleanup_crit_edge, %do.end31, %fscrypt_zeroout_range_inline_crypt.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.3.i, %fscrypt_zeroout_range_inline_crypt.exit ], [ -22, %do.end31 ], [ 0, %entry.cleanup_crit_edge ], [ %err.0, %for.body124.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pages) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fscrypt_alloc_bounce_page(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_crypt_block(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @submit_bio_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fscrypt_free_bounce_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__fscrypt_inode_uses_inline_crypto(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fscrypt_set_bio_crypt_ctx(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fscrypt_mergeable_bio(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @__ksymtab_fscrypt_decrypt_bio, !1, !"__ksymtab_fscrypt_decrypt_bio", i1 false, i1 false}
!1 = !{!"../fs/crypto/bio.c", i32 44, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/crypto/bio.c", i32 149, i32 6}
!4 = !{ptr @__ksymtab_fscrypt_zeroout_range, !5, !"__ksymtab_fscrypt_zeroout_range", i1 false, i1 false}
!5 = !{!"../fs/crypto/bio.c", i32 194, i32 1}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../include/linux/page-flags.h", i32 416, i32 1}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{i64 2150328506, i64 2150328679, i64 2150328694, i64 2150328746, i64 2150328805, i64 2150328829, i64 2150328870, i64 2150328891, i64 2150328919, i64 2150328951}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{i64 2150329381, i64 2150329554, i64 2150329569, i64 2150329621, i64 2150329680, i64 2150329704, i64 2150329745, i64 2150329766, i64 2150329794, i64 2150329826}
