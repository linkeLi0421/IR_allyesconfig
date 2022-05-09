; ModuleID = '/llk/IR_all_yes/fs/dlm/util.c_pt.bc'
source_filename = "../fs/dlm/util.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dlm_header = type { i32, %union.anon, i32, i16, i8, i8 }
%union.anon = type { i32 }
%struct.dlm_message = type { %struct.dlm_header, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.dlm_rcom = type { %struct.dlm_header, i32, i32, i64, i64, i64, [0 x i8] }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @header_out(ptr nocapture noundef %hd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hd, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %hd to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %hd, align 4
  %u = getelementptr inbounds %struct.dlm_header, ptr %hd, i32 0, i32 1
  %4 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %u, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %u, align 4
  %h_nodeid = getelementptr inbounds %struct.dlm_header, ptr %hd, i32 0, i32 2
  %8 = ptrtoint ptr %h_nodeid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %h_nodeid, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %h_nodeid to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %h_nodeid, align 4
  %h_length = getelementptr inbounds %struct.dlm_header, ptr %hd, i32 0, i32 3
  %12 = ptrtoint ptr %h_length to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %h_length, align 4
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %15 = ptrtoint ptr %h_length to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %h_length, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @header_in(ptr nocapture noundef %hd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hd, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %3 = ptrtoint ptr %hd to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %hd, align 4
  %u = getelementptr inbounds %struct.dlm_header, ptr %hd, i32 0, i32 1
  %4 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %u, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %u, align 4
  %h_nodeid = getelementptr inbounds %struct.dlm_header, ptr %hd, i32 0, i32 2
  %8 = ptrtoint ptr %h_nodeid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %h_nodeid, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %h_nodeid to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %h_nodeid, align 4
  %h_length = getelementptr inbounds %struct.dlm_header, ptr %hd, i32 0, i32 3
  %12 = ptrtoint ptr %h_length to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %h_length, align 4
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %15 = ptrtoint ptr %h_length to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %h_length, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dlm_message_out(ptr noundef %ms) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ms, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #2
  %3 = ptrtoint ptr %ms to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %ms, align 4
  %u.i = getelementptr inbounds %struct.dlm_header, ptr %ms, i32 0, i32 1
  %4 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %u.i, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #2
  %7 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %u.i, align 4
  %h_nodeid.i = getelementptr inbounds %struct.dlm_header, ptr %ms, i32 0, i32 2
  %8 = ptrtoint ptr %h_nodeid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %h_nodeid.i, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #2
  %11 = ptrtoint ptr %h_nodeid.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %h_nodeid.i, align 4
  %h_length.i = getelementptr inbounds %struct.dlm_header, ptr %ms, i32 0, i32 3
  %12 = ptrtoint ptr %h_length.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %h_length.i, align 4
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #2
  %15 = ptrtoint ptr %h_length.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %h_length.i, align 4
  %m_type = getelementptr inbounds %struct.dlm_message, ptr %ms, i32 0, i32 1
  %16 = ptrtoint ptr %m_type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %m_type, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = ptrtoint ptr %m_type to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %m_type, align 4
  %m_nodeid = getelementptr inbounds %struct.dlm_message, ptr %ms, i32 0, i32 2
  %20 = ptrtoint ptr %m_nodeid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %m_nodeid, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %23 = ptrtoint ptr %m_nodeid to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %m_nodeid, align 4
  %m_pid = getelementptr inbounds %struct.dlm_message, ptr %ms, i32 0, i32 3
  %24 = ptrtoint ptr %m_pid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %m_pid, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %27 = ptrtoint ptr %m_pid to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %m_pid, align 4
  %m_lkid = getelementptr inbounds %struct.dlm_message, ptr %ms, i32 0, i32 4
  %28 = ptrtoint ptr %m_lkid to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %m_lkid, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %31 = ptrtoint ptr %m_lkid to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %m_lkid, align 4
  %m_remid = getelementptr inbounds %struct.dlm_message, ptr %ms, i32 0, i32 5
  %32 = ptrtoint ptr %m_remid to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %m_remid, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %35 = ptrtoint ptr %m_remid to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %m_remid, align 4
  %m_parent_lkid = getelementptr inbounds %struct.dlm_message, ptr %ms, i32 0, i32 6
  %36 = ptrtoint ptr %m_parent_lkid to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %m_parent_lkid, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  %39 = ptrtoint ptr %m_parent_lkid to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %m_parent_lkid, align 4
  %m_parent_remid = getelementptr inbounds %struct.dlm_message, ptr %ms, i32 0, i32 7
  %40 = ptrtoint ptr %m_parent_remid to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %m_parent_remid, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %43 = ptrtoint ptr %m_parent_remid to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %m_parent_remid, align 4
  %m_exflags = getelementptr inbounds %struct.dlm_message, ptr %ms, i32 0, i32 8
  %44 = ptrtoint ptr %m_exflags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %m_exflags, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %47 = ptrtoint ptr %m_exflags to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %m_exflags, align 4
  %m_sbflags = getelementptr inbounds %struct.dlm_message, ptr %ms, i32 0, i32 9
  %48 = ptrtoint ptr %m_sbflags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %m_sbflags, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  %51 = ptrtoint ptr %m_sbflags to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %m_sbflags, align 4
  %m_flags = getelementptr inbounds %struct.dlm_message, ptr %ms, i32 0, i32 10
  %52 = ptrtoint ptr %m_flags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %m_flags, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  %55 = ptrtoint ptr %m_flags to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %m_flags, align 4
  %m_lvbseq = getelementptr inbounds %struct.dlm_message, ptr %ms, i32 0, i32 11
  %56 = ptrtoint ptr %m_lvbseq to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %m_lvbseq, align 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  %59 = ptrtoint ptr %m_lvbseq to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %m_lvbseq, align 4
  %m_hash = getelementptr inbounds %struct.dlm_message, ptr %ms, i32 0, i32 12
  %60 = ptrtoint ptr %m_hash to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %m_hash, align 4
  %62 = tail call i32 @llvm.bswap.i32(i32 %61)
  %63 = ptrtoint ptr %m_hash to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %m_hash, align 4
  %m_status = getelementptr inbounds %struct.dlm_message, ptr %ms, i32 0, i32 13
  %64 = ptrtoint ptr %m_status to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %m_status, align 4
  %66 = tail call i32 @llvm.bswap.i32(i32 %65)
  %67 = ptrtoint ptr %m_status to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %m_status, align 4
  %m_grmode = getelementptr inbounds %struct.dlm_message, ptr %ms, i32 0, i32 14
  %68 = ptrtoint ptr %m_grmode to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %m_grmode, align 4
  %70 = tail call i32 @llvm.bswap.i32(i32 %69)
  %71 = ptrtoint ptr %m_grmode to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %m_grmode, align 4
  %m_rqmode = getelementptr inbounds %struct.dlm_message, ptr %ms, i32 0, i32 15
  %72 = ptrtoint ptr %m_rqmode to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %m_rqmode, align 4
  %74 = tail call i32 @llvm.bswap.i32(i32 %73)
  %75 = ptrtoint ptr %m_rqmode to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %m_rqmode, align 4
  %m_bastmode = getelementptr inbounds %struct.dlm_message, ptr %ms, i32 0, i32 16
  %76 = ptrtoint ptr %m_bastmode to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %m_bastmode, align 4
  %78 = tail call i32 @llvm.bswap.i32(i32 %77)
  %79 = ptrtoint ptr %m_bastmode to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %m_bastmode, align 4
  %m_asts = getelementptr inbounds %struct.dlm_message, ptr %ms, i32 0, i32 17
  %80 = ptrtoint ptr %m_asts to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %m_asts, align 4
  %82 = tail call i32 @llvm.bswap.i32(i32 %81)
  %83 = ptrtoint ptr %m_asts to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %m_asts, align 4
  %m_result = getelementptr inbounds %struct.dlm_message, ptr %ms, i32 0, i32 18
  %84 = ptrtoint ptr %m_result to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %m_result, align 4
  %86 = tail call i32 @llvm.bswap.i32(i32 %85)
  %87 = ptrtoint ptr %m_result to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %m_result, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dlm_message_in(ptr noundef %ms) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ms, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #2
  %3 = ptrtoint ptr %ms to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %ms, align 4
  %u.i = getelementptr inbounds %struct.dlm_header, ptr %ms, i32 0, i32 1
  %4 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %u.i, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #2
  %7 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %u.i, align 4
  %h_nodeid.i = getelementptr inbounds %struct.dlm_header, ptr %ms, i32 0, i32 2
  %8 = ptrtoint ptr %h_nodeid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %h_nodeid.i, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #2
  %11 = ptrtoint ptr %h_nodeid.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %h_nodeid.i, align 4
  %h_length.i = getelementptr inbounds %struct.dlm_header, ptr %ms, i32 0, i32 3
  %12 = ptrtoint ptr %h_length.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %h_length.i, align 4
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #2
  %15 = ptrtoint ptr %h_length.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %h_length.i, align 4
  %m_type = getelementptr inbounds %struct.dlm_message, ptr %ms, i32 0, i32 1
  %16 = ptrtoint ptr %m_type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %m_type, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = ptrtoint ptr %m_type to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %m_type, align 4
  %m_nodeid = getelementptr inbounds %struct.dlm_message, ptr %ms, i32 0, i32 2
  %20 = ptrtoint ptr %m_nodeid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %m_nodeid, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %23 = ptrtoint ptr %m_nodeid to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %m_nodeid, align 4
  %m_pid = getelementptr inbounds %struct.dlm_message, ptr %ms, i32 0, i32 3
  %24 = ptrtoint ptr %m_pid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %m_pid, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %27 = ptrtoint ptr %m_pid to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %m_pid, align 4
  %m_lkid = getelementptr inbounds %struct.dlm_message, ptr %ms, i32 0, i32 4
  %28 = ptrtoint ptr %m_lkid to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %m_lkid, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %31 = ptrtoint ptr %m_lkid to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %m_lkid, align 4
  %m_remid = getelementptr inbounds %struct.dlm_message, ptr %ms, i32 0, i32 5
  %32 = ptrtoint ptr %m_remid to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %m_remid, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %35 = ptrtoint ptr %m_remid to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %m_remid, align 4
  %m_parent_lkid = getelementptr inbounds %struct.dlm_message, ptr %ms, i32 0, i32 6
  %36 = ptrtoint ptr %m_parent_lkid to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %m_parent_lkid, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  %39 = ptrtoint ptr %m_parent_lkid to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %m_parent_lkid, align 4
  %m_parent_remid = getelementptr inbounds %struct.dlm_message, ptr %ms, i32 0, i32 7
  %40 = ptrtoint ptr %m_parent_remid to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %m_parent_remid, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %43 = ptrtoint ptr %m_parent_remid to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %m_parent_remid, align 4
  %m_exflags = getelementptr inbounds %struct.dlm_message, ptr %ms, i32 0, i32 8
  %44 = ptrtoint ptr %m_exflags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %m_exflags, align 4
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  %47 = ptrtoint ptr %m_exflags to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %m_exflags, align 4
  %m_sbflags = getelementptr inbounds %struct.dlm_message, ptr %ms, i32 0, i32 9
  %48 = ptrtoint ptr %m_sbflags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %m_sbflags, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  %51 = ptrtoint ptr %m_sbflags to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %m_sbflags, align 4
  %m_flags = getelementptr inbounds %struct.dlm_message, ptr %ms, i32 0, i32 10
  %52 = ptrtoint ptr %m_flags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %m_flags, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  %55 = ptrtoint ptr %m_flags to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %m_flags, align 4
  %m_lvbseq = getelementptr inbounds %struct.dlm_message, ptr %ms, i32 0, i32 11
  %56 = ptrtoint ptr %m_lvbseq to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %m_lvbseq, align 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  %59 = ptrtoint ptr %m_lvbseq to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %m_lvbseq, align 4
  %m_hash = getelementptr inbounds %struct.dlm_message, ptr %ms, i32 0, i32 12
  %60 = ptrtoint ptr %m_hash to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %m_hash, align 4
  %62 = tail call i32 @llvm.bswap.i32(i32 %61)
  %63 = ptrtoint ptr %m_hash to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %m_hash, align 4
  %m_status = getelementptr inbounds %struct.dlm_message, ptr %ms, i32 0, i32 13
  %64 = ptrtoint ptr %m_status to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %m_status, align 4
  %66 = tail call i32 @llvm.bswap.i32(i32 %65)
  %67 = ptrtoint ptr %m_status to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %m_status, align 4
  %m_grmode = getelementptr inbounds %struct.dlm_message, ptr %ms, i32 0, i32 14
  %68 = ptrtoint ptr %m_grmode to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %m_grmode, align 4
  %70 = tail call i32 @llvm.bswap.i32(i32 %69)
  %71 = ptrtoint ptr %m_grmode to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %m_grmode, align 4
  %m_rqmode = getelementptr inbounds %struct.dlm_message, ptr %ms, i32 0, i32 15
  %72 = ptrtoint ptr %m_rqmode to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %m_rqmode, align 4
  %74 = tail call i32 @llvm.bswap.i32(i32 %73)
  %75 = ptrtoint ptr %m_rqmode to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %m_rqmode, align 4
  %m_bastmode = getelementptr inbounds %struct.dlm_message, ptr %ms, i32 0, i32 16
  %76 = ptrtoint ptr %m_bastmode to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %m_bastmode, align 4
  %78 = tail call i32 @llvm.bswap.i32(i32 %77)
  %79 = ptrtoint ptr %m_bastmode to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %m_bastmode, align 4
  %m_asts = getelementptr inbounds %struct.dlm_message, ptr %ms, i32 0, i32 17
  %80 = ptrtoint ptr %m_asts to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %m_asts, align 4
  %82 = tail call i32 @llvm.bswap.i32(i32 %81)
  %83 = ptrtoint ptr %m_asts to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %m_asts, align 4
  %m_result = getelementptr inbounds %struct.dlm_message, ptr %ms, i32 0, i32 18
  %84 = ptrtoint ptr %m_result to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %m_result, align 4
  %86 = tail call i32 @llvm.bswap.i32(i32 %85)
  %87 = ptrtoint ptr %m_result to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %m_result, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dlm_rcom_out(ptr nocapture noundef %rc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rc, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #2
  %3 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %rc, align 4
  %u.i = getelementptr inbounds %struct.dlm_header, ptr %rc, i32 0, i32 1
  %4 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %u.i, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #2
  %7 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %u.i, align 4
  %h_nodeid.i = getelementptr inbounds %struct.dlm_header, ptr %rc, i32 0, i32 2
  %8 = ptrtoint ptr %h_nodeid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %h_nodeid.i, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #2
  %11 = ptrtoint ptr %h_nodeid.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %h_nodeid.i, align 4
  %h_length.i = getelementptr inbounds %struct.dlm_header, ptr %rc, i32 0, i32 3
  %12 = ptrtoint ptr %h_length.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %h_length.i, align 4
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #2
  %15 = ptrtoint ptr %h_length.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %h_length.i, align 4
  %rc_type = getelementptr inbounds %struct.dlm_rcom, ptr %rc, i32 0, i32 1
  %16 = ptrtoint ptr %rc_type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rc_type, align 8
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = ptrtoint ptr %rc_type to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %rc_type, align 8
  %rc_result = getelementptr inbounds %struct.dlm_rcom, ptr %rc, i32 0, i32 2
  %20 = ptrtoint ptr %rc_result to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rc_result, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %23 = ptrtoint ptr %rc_result to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %rc_result, align 4
  %rc_id = getelementptr inbounds %struct.dlm_rcom, ptr %rc, i32 0, i32 3
  %24 = ptrtoint ptr %rc_id to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %rc_id, align 8
  %26 = tail call i64 @llvm.bswap.i64(i64 %25)
  %27 = ptrtoint ptr %rc_id to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %rc_id, align 8
  %rc_seq = getelementptr inbounds %struct.dlm_rcom, ptr %rc, i32 0, i32 4
  %28 = ptrtoint ptr %rc_seq to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %rc_seq, align 8
  %30 = tail call i64 @llvm.bswap.i64(i64 %29)
  %31 = ptrtoint ptr %rc_seq to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %rc_seq, align 8
  %rc_seq_reply = getelementptr inbounds %struct.dlm_rcom, ptr %rc, i32 0, i32 5
  %32 = ptrtoint ptr %rc_seq_reply to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %rc_seq_reply, align 8
  %34 = tail call i64 @llvm.bswap.i64(i64 %33)
  %35 = ptrtoint ptr %rc_seq_reply to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %rc_seq_reply, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dlm_rcom_in(ptr nocapture noundef %rc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rc, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #2
  %3 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %rc, align 4
  %u.i = getelementptr inbounds %struct.dlm_header, ptr %rc, i32 0, i32 1
  %4 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %u.i, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #2
  %7 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %u.i, align 4
  %h_nodeid.i = getelementptr inbounds %struct.dlm_header, ptr %rc, i32 0, i32 2
  %8 = ptrtoint ptr %h_nodeid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %h_nodeid.i, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #2
  %11 = ptrtoint ptr %h_nodeid.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %h_nodeid.i, align 4
  %h_length.i = getelementptr inbounds %struct.dlm_header, ptr %rc, i32 0, i32 3
  %12 = ptrtoint ptr %h_length.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %h_length.i, align 4
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #2
  %15 = ptrtoint ptr %h_length.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %h_length.i, align 4
  %rc_type = getelementptr inbounds %struct.dlm_rcom, ptr %rc, i32 0, i32 1
  %16 = ptrtoint ptr %rc_type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rc_type, align 8
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = ptrtoint ptr %rc_type to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %rc_type, align 8
  %rc_result = getelementptr inbounds %struct.dlm_rcom, ptr %rc, i32 0, i32 2
  %20 = ptrtoint ptr %rc_result to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rc_result, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %23 = ptrtoint ptr %rc_result to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %rc_result, align 4
  %rc_id = getelementptr inbounds %struct.dlm_rcom, ptr %rc, i32 0, i32 3
  %24 = ptrtoint ptr %rc_id to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %rc_id, align 8
  %26 = tail call i64 @llvm.bswap.i64(i64 %25)
  %27 = ptrtoint ptr %rc_id to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %rc_id, align 8
  %rc_seq = getelementptr inbounds %struct.dlm_rcom, ptr %rc, i32 0, i32 4
  %28 = ptrtoint ptr %rc_seq to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %rc_seq, align 8
  %30 = tail call i64 @llvm.bswap.i64(i64 %29)
  %31 = ptrtoint ptr %rc_seq to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %rc_seq, align 8
  %rc_seq_reply = getelementptr inbounds %struct.dlm_rcom, ptr %rc, i32 0, i32 5
  %32 = ptrtoint ptr %rc_seq_reply to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %rc_seq_reply, align 8
  %34 = tail call i64 @llvm.bswap.i64(i64 %33)
  %35 = ptrtoint ptr %rc_seq_reply to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %rc_seq_reply, align 8
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
