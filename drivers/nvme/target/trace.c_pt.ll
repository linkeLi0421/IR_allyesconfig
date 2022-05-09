; ModuleID = '/llk/IR_all_yes/drivers/nvme/target/trace.c_pt.bc'
source_filename = "../drivers/nvme/target/trace.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.nvmet_ctrl = type { ptr, ptr, i8, %struct.mutex, i64, i32, i32, %struct.uuid_t, i16, i32, ptr, i32, i32, [4 x ptr], i32, %struct.list_head, %struct.work_struct, %struct.list_head, %struct.kref, %struct.delayed_work, %struct.work_struct, ptr, ptr, i32, [256 x i8], [256 x i8], ptr, %struct.xarray, %struct.spinlock, i64, [128 x %struct.nvme_error_slot], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.uuid_t = type { [16 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.nvme_error_slot = type { i64, i16, i16, i16, i16, i64, i32, i8, [3 x i8], i64, [24 x i8] }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"disk=%s, \00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"_\00", [30 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cns=%u, ctrlid=%u\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fid=0x%x, sv=0x%x, cdw11=0x%x\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"fid=0x%x, sel=0x%x, cdw11=0x%x\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"slba=0x%llx, mndw=0x%x, rl=0x%x, atype=%u\00", [54 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cdw10=%*ph\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"slba=%llu, len=%u, ctrl=0x%x, dsmgmt=%u, reftag=%u\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nr=%u, attributes=%u\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"attrib=%u, ofst=0x%x, value=0x%llx\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"recfmt=%u, qid=%u, sqsize=%u, cattr=%u, kato=%u\00", [48 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"attrib=%u, ofst=0x%x\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"specific=%*ph\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 6, i64 9, i64 10, i64 134]
@__sancov_gen_cov_switch_values.14 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 8, i64 9]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 4]
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 208, i32 23 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 228, i32 23 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 230, i32 23 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 16, i32 22 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 60, i32 22 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 30, i32 22 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 45, i32 22 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 99, i32 22 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 76, i32 5 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 87, i32 22 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 145, i32 22 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 161, i32 22 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 174, i32 22 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private constant [31 x i8] c"../drivers/nvme/target/trace.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 183, i32 22 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nvmet_trace_parse_admin_cmd(ptr noundef %p, i8 noundef zeroext %opcode, ptr noundef %cdw10) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %opcode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %opcode, label %sw.default [
    i8 6, label %sw.bb
    i8 9, label %sw.bb1
    i8 10, label %sw.bb3
    i8 -122, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %len.i.i.i = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 2
  %1 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len.i.i.i, align 8
  %size.i.i.i = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size.i.i.i, align 4
  %5 = tail call i32 @llvm.umin.i32(i32 %2, i32 %4) #3
  %add.ptr.i.i = getelementptr i8, ptr %p, i32 %5
  %6 = ptrtoint ptr %cdw10 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cdw10, align 1
  %add.ptr.i = getelementptr i8, ptr %cdw10, i32 2
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %add.ptr.i, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #3
  %conv.i = zext i8 %7 to i32
  %conv2.i = zext i16 %10 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str.3, i32 noundef %conv.i, i32 noundef %conv2.i) #3
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %len.i.i.i16 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %len.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i.i.i16, align 8
  %size.i.i.i17 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %size.i.i.i17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size.i.i.i17, align 4
  %15 = tail call i32 @llvm.umin.i32(i32 %12, i32 %14) #3
  %add.ptr.i.i18 = getelementptr i8, ptr %p, i32 %15
  %16 = ptrtoint ptr %cdw10 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cdw10, align 1
  %arrayidx1.i = getelementptr i8, ptr %cdw10, i32 3
  %18 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx1.i, align 1
  %20 = and i8 %19, 8
  %add.ptr.i19 = getelementptr i8, ptr %cdw10, i32 4
  %21 = ptrtoint ptr %add.ptr.i19 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %add.ptr.i19, align 1
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #3
  %conv4.i = zext i8 %17 to i32
  %conv5.i = zext i8 %20 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str.4, i32 noundef %conv4.i, i32 noundef %conv5.i, i32 noundef %23) #3
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %len.i.i.i20 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %len.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len.i.i.i20, align 8
  %size.i.i.i21 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %size.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size.i.i.i21, align 4
  %28 = tail call i32 @llvm.umin.i32(i32 %25, i32 %27) #3
  %add.ptr.i.i22 = getelementptr i8, ptr %p, i32 %28
  %29 = ptrtoint ptr %cdw10 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %cdw10, align 1
  %arrayidx1.i23 = getelementptr i8, ptr %cdw10, i32 1
  %31 = ptrtoint ptr %arrayidx1.i23 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx1.i23, align 1
  %33 = and i8 %32, 7
  %add.ptr.i24 = getelementptr i8, ptr %cdw10, i32 4
  %34 = ptrtoint ptr %add.ptr.i24 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %add.ptr.i24, align 1
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #3
  %conv4.i25 = zext i8 %30 to i32
  %conv5.i26 = zext i8 %33 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str.5, i32 noundef %conv4.i25, i32 noundef %conv5.i26, i32 noundef %36) #3
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %len.i.i.i27 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 2
  %37 = ptrtoint ptr %len.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len.i.i.i27, align 8
  %size.i.i.i28 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %size.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %size.i.i.i28, align 4
  %41 = tail call i32 @llvm.umin.i32(i32 %38, i32 %40) #3
  %add.ptr.i.i29 = getelementptr i8, ptr %p, i32 %41
  %42 = ptrtoint ptr %cdw10 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 8)
  %43 = load i64, ptr %cdw10, align 1
  %44 = tail call i64 @llvm.bswap.i64(i64 %43) #3
  %add.ptr.i30 = getelementptr i8, ptr %cdw10, i32 8
  %45 = ptrtoint ptr %add.ptr.i30 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %add.ptr.i30, align 1
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #3
  %add.ptr3.i = getelementptr i8, ptr %cdw10, i32 12
  %48 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %add.ptr3.i, align 1
  %50 = tail call i16 @llvm.bswap.i16(i16 %49) #3
  %arrayidx.i = getelementptr i8, ptr %cdw10, i32 15
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.i, align 1
  %conv.i31 = zext i16 %50 to i32
  %conv5.i32 = zext i8 %52 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str.6, i64 noundef %44, i32 noundef %47, i32 noundef %conv.i31, i32 noundef %conv5.i32) #3
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %len.i.i.i33 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 2
  %53 = ptrtoint ptr %len.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len.i.i.i33, align 8
  %size.i.i.i34 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 1
  %55 = ptrtoint ptr %size.i.i.i34 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %size.i.i.i34, align 4
  %57 = tail call i32 @llvm.umin.i32(i32 %54, i32 %56) #3
  %add.ptr.i.i35 = getelementptr i8, ptr %p, i32 %57
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str.7, i32 noundef 24, ptr noundef %cdw10) #3
  br label %return

return:                                           ; preds = %sw.default, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  %retval.0 = phi ptr [ %add.ptr.i.i35, %sw.default ], [ %add.ptr.i.i29, %sw.bb5 ], [ %add.ptr.i.i22, %sw.bb3 ], [ %add.ptr.i.i18, %sw.bb1 ], [ %add.ptr.i.i, %sw.bb ]
  tail call void @trace_seq_putc(ptr noundef %p, i8 noundef zeroext 0) #3
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nvmet_trace_parse_nvm_cmd(ptr noundef %p, i8 noundef zeroext %opcode, ptr noundef %cdw10) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %opcode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.14)
  switch i8 %opcode, label %sw.default [
    i8 2, label %entry.sw.bb_crit_edge
    i8 1, label %entry.sw.bb_crit_edge15
    i8 8, label %entry.sw.bb_crit_edge16
    i8 9, label %sw.bb1
  ]

entry.sw.bb_crit_edge16:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

entry.sw.bb_crit_edge15:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge15, %entry.sw.bb_crit_edge16
  %len.i.i.i = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 2
  %1 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len.i.i.i, align 8
  %size.i.i.i = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size.i.i.i, align 4
  %5 = tail call i32 @llvm.umin.i32(i32 %2, i32 %4) #3
  %add.ptr.i.i = getelementptr i8, ptr %p, i32 %5
  %6 = ptrtoint ptr %cdw10 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %cdw10, align 1
  %8 = tail call i64 @llvm.bswap.i64(i64 %7) #3
  %add.ptr.i = getelementptr i8, ptr %cdw10, i32 8
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %add.ptr.i, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #3
  %add.ptr3.i = getelementptr i8, ptr %cdw10, i32 10
  %12 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %add.ptr3.i, align 1
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #3
  %add.ptr5.i = getelementptr i8, ptr %cdw10, i32 12
  %15 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %add.ptr5.i, align 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #3
  %add.ptr7.i = getelementptr i8, ptr %cdw10, i32 16
  %18 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %add.ptr7.i, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #3
  %conv.i = zext i16 %11 to i32
  %conv9.i = zext i16 %14 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str.8, i64 noundef %8, i32 noundef %conv.i, i32 noundef %conv9.i, i32 noundef %17, i32 noundef %20) #3
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %len.i.i.i8 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %len.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len.i.i.i8, align 8
  %size.i.i.i9 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %size.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size.i.i.i9, align 4
  %25 = tail call i32 @llvm.umin.i32(i32 %22, i32 %24) #3
  %add.ptr.i.i10 = getelementptr i8, ptr %p, i32 %25
  %26 = ptrtoint ptr %cdw10 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %cdw10, align 1
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #3
  %add.ptr.i11 = getelementptr i8, ptr %cdw10, i32 4
  %29 = ptrtoint ptr %add.ptr.i11 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %add.ptr.i11, align 1
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #3
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str.9, i32 noundef %28, i32 noundef %31) #3
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %len.i.i.i12 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 2
  %32 = ptrtoint ptr %len.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len.i.i.i12, align 8
  %size.i.i.i13 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %size.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size.i.i.i13, align 4
  %36 = tail call i32 @llvm.umin.i32(i32 %33, i32 %35) #3
  %add.ptr.i.i14 = getelementptr i8, ptr %p, i32 %36
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str.7, i32 noundef 24, ptr noundef %cdw10) #3
  br label %return

return:                                           ; preds = %sw.default, %sw.bb1, %sw.bb
  %retval.0 = phi ptr [ %add.ptr.i.i14, %sw.default ], [ %add.ptr.i.i10, %sw.bb1 ], [ %add.ptr.i.i, %sw.bb ]
  tail call void @trace_seq_putc(ptr noundef %p, i8 noundef zeroext 0) #3
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nvmet_trace_parse_fabrics_cmd(ptr noundef %p, i8 noundef zeroext %fctype, ptr noundef %spc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %fctype to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %fctype, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb1
    i8 4, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %len.i.i.i = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 2
  %1 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len.i.i.i, align 8
  %size.i.i.i = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size.i.i.i, align 4
  %5 = tail call i32 @llvm.umin.i32(i32 %2, i32 %4) #3
  %add.ptr.i.i = getelementptr i8, ptr %p, i32 %5
  %6 = ptrtoint ptr %spc to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %spc, align 1
  %add.ptr.i = getelementptr i8, ptr %spc, i32 4
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %add.ptr.i, align 1
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #3
  %add.ptr2.i = getelementptr i8, ptr %spc, i32 8
  %11 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %add.ptr2.i, align 1
  %13 = tail call i64 @llvm.bswap.i64(i64 %12) #3
  %conv.i = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str.10, i32 noundef %conv.i, i32 noundef %10, i64 noundef %13) #3
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %len.i.i.i12 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %len.i.i.i12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i.i.i12, align 8
  %size.i.i.i13 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %size.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size.i.i.i13, align 4
  %18 = tail call i32 @llvm.umin.i32(i32 %15, i32 %17) #3
  %add.ptr.i.i14 = getelementptr i8, ptr %p, i32 %18
  %19 = ptrtoint ptr %spc to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %spc, align 1
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #3
  %add.ptr.i15 = getelementptr i8, ptr %spc, i32 2
  %22 = ptrtoint ptr %add.ptr.i15 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %add.ptr.i15, align 1
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #3
  %add.ptr3.i = getelementptr i8, ptr %spc, i32 4
  %25 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %add.ptr3.i, align 1
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #3
  %arrayidx.i = getelementptr i8, ptr %spc, i32 6
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i, align 1
  %add.ptr5.i = getelementptr i8, ptr %spc, i32 8
  %30 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %add.ptr5.i, align 1
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #3
  %conv.i16 = zext i16 %21 to i32
  %conv7.i = zext i16 %24 to i32
  %conv8.i = zext i16 %27 to i32
  %conv9.i = zext i8 %29 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str.11, i32 noundef %conv.i16, i32 noundef %conv7.i, i32 noundef %conv8.i, i32 noundef %conv9.i, i32 noundef %32) #3
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %len.i.i.i17 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 2
  %33 = ptrtoint ptr %len.i.i.i17 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len.i.i.i17, align 8
  %size.i.i.i18 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %size.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %size.i.i.i18, align 4
  %37 = tail call i32 @llvm.umin.i32(i32 %34, i32 %36) #3
  %add.ptr.i.i19 = getelementptr i8, ptr %p, i32 %37
  %38 = ptrtoint ptr %spc to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %spc, align 1
  %add.ptr.i20 = getelementptr i8, ptr %spc, i32 4
  %40 = ptrtoint ptr %add.ptr.i20 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %add.ptr.i20, align 1
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #3
  %conv.i21 = zext i8 %39 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str.12, i32 noundef %conv.i21, i32 noundef %42) #3
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %len.i.i.i22 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 2
  %43 = ptrtoint ptr %len.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len.i.i.i22, align 8
  %size.i.i.i23 = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 1
  %45 = ptrtoint ptr %size.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %size.i.i.i23, align 4
  %47 = tail call i32 @llvm.umin.i32(i32 %44, i32 %46) #3
  %add.ptr.i.i24 = getelementptr i8, ptr %p, i32 %47
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str.13, i32 noundef 24, ptr noundef %spc) #3
  br label %return

return:                                           ; preds = %sw.default, %sw.bb3, %sw.bb1, %sw.bb
  %retval.0 = phi ptr [ %add.ptr.i.i24, %sw.default ], [ %add.ptr.i.i19, %sw.bb3 ], [ %add.ptr.i.i14, %sw.bb1 ], [ %add.ptr.i.i, %sw.bb ]
  tail call void @trace_seq_putc(ptr noundef %p, i8 noundef zeroext 0) #3
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nvmet_trace_disk_name(ptr noundef %p, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i.i = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i.i, align 8
  %size.i.i = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i.i, align 4
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str, ptr noundef %name) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = tail call i32 @llvm.umin.i32(i32 %1, i32 %3) #3
  %add.ptr.i = getelementptr i8, ptr %p, i32 %6
  tail call void @trace_seq_putc(ptr noundef %p, i8 noundef zeroext 0) #3
  ret ptr %add.ptr.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nvmet_trace_ctrl_name(ptr noundef %p, ptr noundef readonly %ctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i.i = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i.i, align 8
  %size.i.i = getelementptr inbounds %struct.trace_seq, ptr %p, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i.i, align 4
  %tobool.not = icmp eq ptr %ctrl, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %cntlid = getelementptr inbounds %struct.nvmet_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %cntlid to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %cntlid, align 8
  %conv = zext i16 %5 to i32
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str.1, i32 noundef %conv) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @trace_seq_printf(ptr noundef %p, ptr noundef nonnull @.str.2) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = tail call i32 @llvm.umin.i32(i32 %1, i32 %3) #3
  %add.ptr.i = getelementptr i8, ptr %p, i32 %6
  tail call void @trace_seq_putc(ptr noundef %p, i8 noundef zeroext 0) #3
  ret ptr %add.ptr.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/nvme/target/trace.c", i32 208, i32 23}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/nvme/target/trace.c", i32 228, i32 23}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/nvme/target/trace.c", i32 230, i32 23}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/nvme/target/trace.c", i32 16, i32 22}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/nvme/target/trace.c", i32 60, i32 22}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/nvme/target/trace.c", i32 30, i32 22}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/nvme/target/trace.c", i32 45, i32 22}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/nvme/target/trace.c", i32 99, i32 22}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/nvme/target/trace.c", i32 76, i32 5}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/nvme/target/trace.c", i32 87, i32 22}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/nvme/target/trace.c", i32 145, i32 22}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/nvme/target/trace.c", i32 161, i32 22}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/nvme/target/trace.c", i32 174, i32 22}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/nvme/target/trace.c", i32 183, i32 22}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
