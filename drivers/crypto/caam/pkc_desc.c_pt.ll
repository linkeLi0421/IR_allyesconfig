; ModuleID = '/llk/IR_all_yes/drivers/crypto/caam/pkc_desc.c_pt.bc'
source_filename = "../drivers/crypto/caam/pkc_desc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rsa_pub_pdb = type { i32, i32, i32, i32, i32, i32 }
%struct.rsa_priv_f1_pdb = type { i32, i32, i32, i32, i32 }
%struct.rsa_priv_f2_pdb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rsa_priv_f3_pdb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@caam_ptr_sz = external dso_local local_unnamed_addr global i32, align 4
@caam_little_end = external dso_local local_unnamed_addr global i8, align 1
@append_operation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\017%02d: %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"append_operation\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/crypto/caam/desc_constr.h\00", [62 x i8] zeroinitializer }, align 32
@append_operation._entry_ptr = internal global ptr @append_operation._entry, section ".printk_index", align 4
@___asan_gen_ = private constant [34 x i8] c"../drivers/crypto/caam/pkc_desc.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private unnamed_addr constant [37 x i8] c"../drivers/crypto/caam/desc_constr.h\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 265, i32 1 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @append_operation._entry, ptr @append_operation._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @append_operation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @init_rsa_pub_desc(ptr noundef %desc, ptr nocapture noundef readonly %pdb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %0 = load i32, ptr @caam_ptr_sz, align 4
  %mul = shl i32 %0, 16
  %1 = add i32 %mul, 245760
  %shl.i = and i32 %1, 1333723136
  %add.i.i.i = or i32 %shl.i, -1333788671
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %2 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i.i.i.i = icmp eq i8 %2, 0
  %3 = tail call i32 @llvm.bswap.i32(i32 %add.i.i.i) #3
  %retval.0.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %add.i.i.i, i32 %3
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %retval.0.i.i.i.i, ptr %desc, align 4
  %5 = ptrtoint ptr %pdb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pdb, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %7 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i.i.i.i13 = icmp eq i8 %7, 0
  %8 = lshr i32 %retval.0.i.i.i.i, 24
  %retval.0.i.i.i.i14 = select i1 %tobool.not.i.i.i.i13, i32 %retval.0.i.i.i.i, i32 %8
  %and.i.i.i = and i32 %retval.0.i.i.i.i14, 127
  %add.ptr.i.i = getelementptr i32, ptr %desc, i32 %and.i.i.i
  %9 = tail call i32 @llvm.bswap.i32(i32 %6) #3
  %retval.0.i.i = select i1 %tobool.not.i.i.i.i13, i32 %6, i32 %9
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %retval.0.i.i, ptr %add.ptr.i.i, align 4
  %11 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %13 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i6.i = icmp eq i8 %13, 0
  %14 = tail call i32 @llvm.bswap.i32(i32 %12) #3
  %retval.0.i7.i = select i1 %tobool.not.i6.i, i32 %12, i32 %14
  %add.i = add i32 %retval.0.i7.i, 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %add.i) #3
  %retval.0.i9.i = select i1 %tobool.not.i6.i, i32 %add.i, i32 %15
  %16 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %retval.0.i9.i, ptr %desc, align 4
  %f_dma = getelementptr inbounds %struct.rsa_pub_pdb, ptr %pdb, i32 0, i32 1
  %17 = ptrtoint ptr %f_dma to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %f_dma, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %19 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i.i.i.i15 = icmp eq i8 %19, 0
  %20 = lshr i32 %retval.0.i9.i, 24
  %retval.0.i.i.i.i16 = select i1 %tobool.not.i.i.i.i15, i32 %retval.0.i9.i, i32 %20
  %and.i.i.i17 = and i32 %retval.0.i.i.i.i16, 127
  %add.ptr.i.i18 = getelementptr i32, ptr %desc, i32 %and.i.i.i17
  %21 = tail call i32 @llvm.bswap.i32(i32 %18) #3
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i.i15, i32 %18, i32 %21
  %22 = ptrtoint ptr %add.ptr.i.i18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %retval.0.i.i.i, ptr %add.ptr.i.i18, align 4
  %23 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %25 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i.i = icmp eq i8 %25, 0
  %26 = tail call i32 @llvm.bswap.i32(i32 %24) #3
  %retval.0.i.i19 = select i1 %tobool.not.i.i, i32 %24, i32 %26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %27 = load i32, ptr @caam_ptr_sz, align 4
  %div14.i = lshr i32 %27, 2
  %add.i20 = add i32 %retval.0.i.i19, %div14.i
  %28 = tail call i32 @llvm.bswap.i32(i32 %add.i20) #3
  %retval.0.i23.i = select i1 %tobool.not.i.i, i32 %add.i20, i32 %28
  %29 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %retval.0.i23.i, ptr %desc, align 4
  %g_dma = getelementptr inbounds %struct.rsa_pub_pdb, ptr %pdb, i32 0, i32 2
  %30 = ptrtoint ptr %g_dma to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %g_dma, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %32 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i.i.i.i21 = icmp eq i8 %32, 0
  %33 = lshr i32 %retval.0.i23.i, 24
  %retval.0.i.i.i.i22 = select i1 %tobool.not.i.i.i.i21, i32 %retval.0.i23.i, i32 %33
  %and.i.i.i23 = and i32 %retval.0.i.i.i.i22, 127
  %add.ptr.i.i24 = getelementptr i32, ptr %desc, i32 %and.i.i.i23
  %34 = tail call i32 @llvm.bswap.i32(i32 %31) #3
  %retval.0.i.i.i25 = select i1 %tobool.not.i.i.i.i21, i32 %31, i32 %34
  %35 = ptrtoint ptr %add.ptr.i.i24 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %retval.0.i.i.i25, ptr %add.ptr.i.i24, align 4
  %36 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %38 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i.i26 = icmp eq i8 %38, 0
  %39 = tail call i32 @llvm.bswap.i32(i32 %37) #3
  %retval.0.i.i27 = select i1 %tobool.not.i.i26, i32 %37, i32 %39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %40 = load i32, ptr @caam_ptr_sz, align 4
  %div14.i28 = lshr i32 %40, 2
  %add.i29 = add i32 %retval.0.i.i27, %div14.i28
  %41 = tail call i32 @llvm.bswap.i32(i32 %add.i29) #3
  %retval.0.i23.i30 = select i1 %tobool.not.i.i26, i32 %add.i29, i32 %41
  %42 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %retval.0.i23.i30, ptr %desc, align 4
  %n_dma = getelementptr inbounds %struct.rsa_pub_pdb, ptr %pdb, i32 0, i32 3
  %43 = ptrtoint ptr %n_dma to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %n_dma, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %45 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i.i.i.i31 = icmp eq i8 %45, 0
  %46 = lshr i32 %retval.0.i23.i30, 24
  %retval.0.i.i.i.i32 = select i1 %tobool.not.i.i.i.i31, i32 %retval.0.i23.i30, i32 %46
  %and.i.i.i33 = and i32 %retval.0.i.i.i.i32, 127
  %add.ptr.i.i34 = getelementptr i32, ptr %desc, i32 %and.i.i.i33
  %47 = tail call i32 @llvm.bswap.i32(i32 %44) #3
  %retval.0.i.i.i35 = select i1 %tobool.not.i.i.i.i31, i32 %44, i32 %47
  %48 = ptrtoint ptr %add.ptr.i.i34 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %retval.0.i.i.i35, ptr %add.ptr.i.i34, align 4
  %49 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %51 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i.i36 = icmp eq i8 %51, 0
  %52 = tail call i32 @llvm.bswap.i32(i32 %50) #3
  %retval.0.i.i37 = select i1 %tobool.not.i.i36, i32 %50, i32 %52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %53 = load i32, ptr @caam_ptr_sz, align 4
  %div14.i38 = lshr i32 %53, 2
  %add.i39 = add i32 %retval.0.i.i37, %div14.i38
  %54 = tail call i32 @llvm.bswap.i32(i32 %add.i39) #3
  %retval.0.i23.i40 = select i1 %tobool.not.i.i36, i32 %add.i39, i32 %54
  %55 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %retval.0.i23.i40, ptr %desc, align 4
  %e_dma = getelementptr inbounds %struct.rsa_pub_pdb, ptr %pdb, i32 0, i32 4
  %56 = ptrtoint ptr %e_dma to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %e_dma, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %58 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i.i.i.i41 = icmp eq i8 %58, 0
  %59 = lshr i32 %retval.0.i23.i40, 24
  %retval.0.i.i.i.i42 = select i1 %tobool.not.i.i.i.i41, i32 %retval.0.i23.i40, i32 %59
  %and.i.i.i43 = and i32 %retval.0.i.i.i.i42, 127
  %add.ptr.i.i44 = getelementptr i32, ptr %desc, i32 %and.i.i.i43
  %60 = tail call i32 @llvm.bswap.i32(i32 %57) #3
  %retval.0.i.i.i45 = select i1 %tobool.not.i.i.i.i41, i32 %57, i32 %60
  %61 = ptrtoint ptr %add.ptr.i.i44 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %retval.0.i.i.i45, ptr %add.ptr.i.i44, align 4
  %62 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %64 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i.i46 = icmp eq i8 %64, 0
  %65 = tail call i32 @llvm.bswap.i32(i32 %63) #3
  %retval.0.i.i47 = select i1 %tobool.not.i.i46, i32 %63, i32 %65
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %66 = load i32, ptr @caam_ptr_sz, align 4
  %div14.i48 = lshr i32 %66, 2
  %add.i49 = add i32 %retval.0.i.i47, %div14.i48
  %67 = tail call i32 @llvm.bswap.i32(i32 %add.i49) #3
  %retval.0.i23.i50 = select i1 %tobool.not.i.i46, i32 %add.i49, i32 %67
  %68 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %retval.0.i23.i50, ptr %desc, align 4
  %f_len = getelementptr inbounds %struct.rsa_pub_pdb, ptr %pdb, i32 0, i32 5
  %69 = ptrtoint ptr %f_len to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %f_len, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %71 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not.i.i.i.i51 = icmp eq i8 %71, 0
  %72 = lshr i32 %retval.0.i23.i50, 24
  %retval.0.i.i.i.i52 = select i1 %tobool.not.i.i.i.i51, i32 %retval.0.i23.i50, i32 %72
  %and.i.i.i53 = and i32 %retval.0.i.i.i.i52, 127
  %add.ptr.i.i54 = getelementptr i32, ptr %desc, i32 %and.i.i.i53
  %73 = tail call i32 @llvm.bswap.i32(i32 %70) #3
  %retval.0.i.i55 = select i1 %tobool.not.i.i.i.i51, i32 %70, i32 %73
  %74 = ptrtoint ptr %add.ptr.i.i54 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %retval.0.i.i55, ptr %add.ptr.i.i54, align 4
  %75 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %77 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool.not.i6.i56 = icmp eq i8 %77, 0
  %78 = tail call i32 @llvm.bswap.i32(i32 %76) #3
  %retval.0.i7.i57 = select i1 %tobool.not.i6.i56, i32 %76, i32 %78
  %add.i58 = add i32 %retval.0.i7.i57, 1
  %79 = tail call i32 @llvm.bswap.i32(i32 %add.i58) #3
  %retval.0.i9.i59 = select i1 %tobool.not.i6.i56, i32 %add.i58, i32 %79
  %80 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %retval.0.i9.i59, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %81 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.not.i.i.i = icmp eq i8 %81, 0
  %82 = lshr i32 %retval.0.i9.i59, 24
  %retval.0.i.i.i60 = select i1 %tobool.not.i.i.i, i32 %retval.0.i9.i59, i32 %82
  %and.i.i = and i32 %retval.0.i.i.i60, 127
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %and.i.i, ptr noundef getelementptr inbounds ([17 x i8], ptr @.str.1, i32 0, i32 7)) #6
  %83 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %85 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool.not.i.i.i.i.i = icmp eq i8 %85, 0
  %86 = lshr i32 %84, 24
  %retval.0.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %84, i32 %86
  %and.i.i.i.i = and i32 %retval.0.i.i.i.i.i, 127
  %add.ptr.i.i.i = getelementptr i32, ptr %desc, i32 %and.i.i.i.i
  %retval.0.i.i5.i = select i1 %tobool.not.i.i.i.i.i, i32 -2145910784, i32 6272
  %87 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %retval.0.i.i5.i, ptr %add.ptr.i.i.i, align 4
  %88 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %90 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool.not.i6.i.i = icmp eq i8 %90, 0
  %91 = tail call i32 @llvm.bswap.i32(i32 %89) #3
  %retval.0.i7.i.i = select i1 %tobool.not.i6.i.i, i32 %89, i32 %91
  %add.i.i = add i32 %retval.0.i7.i.i, 1
  %92 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #3
  %retval.0.i9.i.i = select i1 %tobool.not.i6.i.i, i32 %add.i.i, i32 %92
  %93 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %retval.0.i9.i.i, ptr %desc, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @init_rsa_priv_f1_desc(ptr noundef %desc, ptr nocapture noundef readonly %pdb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %0 = load i32, ptr @caam_ptr_sz, align 4
  %mul = shl i32 %0, 16
  %1 = add i32 %mul, 180224
  %shl.i = and i32 %1, 1333723136
  %add.i.i.i = or i32 %shl.i, -1333788671
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %2 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i.i.i.i = icmp eq i8 %2, 0
  %3 = tail call i32 @llvm.bswap.i32(i32 %add.i.i.i) #3
  %retval.0.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %add.i.i.i, i32 %3
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %retval.0.i.i.i.i, ptr %desc, align 4
  %5 = ptrtoint ptr %pdb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pdb, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %7 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i.i.i.i11 = icmp eq i8 %7, 0
  %8 = lshr i32 %retval.0.i.i.i.i, 24
  %retval.0.i.i.i.i12 = select i1 %tobool.not.i.i.i.i11, i32 %retval.0.i.i.i.i, i32 %8
  %and.i.i.i = and i32 %retval.0.i.i.i.i12, 127
  %add.ptr.i.i = getelementptr i32, ptr %desc, i32 %and.i.i.i
  %9 = tail call i32 @llvm.bswap.i32(i32 %6) #3
  %retval.0.i.i = select i1 %tobool.not.i.i.i.i11, i32 %6, i32 %9
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %retval.0.i.i, ptr %add.ptr.i.i, align 4
  %11 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %13 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i6.i = icmp eq i8 %13, 0
  %14 = tail call i32 @llvm.bswap.i32(i32 %12) #3
  %retval.0.i7.i = select i1 %tobool.not.i6.i, i32 %12, i32 %14
  %add.i = add i32 %retval.0.i7.i, 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %add.i) #3
  %retval.0.i9.i = select i1 %tobool.not.i6.i, i32 %add.i, i32 %15
  %16 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %retval.0.i9.i, ptr %desc, align 4
  %g_dma = getelementptr inbounds %struct.rsa_priv_f1_pdb, ptr %pdb, i32 0, i32 1
  %17 = ptrtoint ptr %g_dma to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %g_dma, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %19 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i.i.i.i13 = icmp eq i8 %19, 0
  %20 = lshr i32 %retval.0.i9.i, 24
  %retval.0.i.i.i.i14 = select i1 %tobool.not.i.i.i.i13, i32 %retval.0.i9.i, i32 %20
  %and.i.i.i15 = and i32 %retval.0.i.i.i.i14, 127
  %add.ptr.i.i16 = getelementptr i32, ptr %desc, i32 %and.i.i.i15
  %21 = tail call i32 @llvm.bswap.i32(i32 %18) #3
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i.i13, i32 %18, i32 %21
  %22 = ptrtoint ptr %add.ptr.i.i16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %retval.0.i.i.i, ptr %add.ptr.i.i16, align 4
  %23 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %25 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i.i = icmp eq i8 %25, 0
  %26 = tail call i32 @llvm.bswap.i32(i32 %24) #3
  %retval.0.i.i17 = select i1 %tobool.not.i.i, i32 %24, i32 %26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %27 = load i32, ptr @caam_ptr_sz, align 4
  %div14.i = lshr i32 %27, 2
  %add.i18 = add i32 %retval.0.i.i17, %div14.i
  %28 = tail call i32 @llvm.bswap.i32(i32 %add.i18) #3
  %retval.0.i23.i = select i1 %tobool.not.i.i, i32 %add.i18, i32 %28
  %29 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %retval.0.i23.i, ptr %desc, align 4
  %f_dma = getelementptr inbounds %struct.rsa_priv_f1_pdb, ptr %pdb, i32 0, i32 2
  %30 = ptrtoint ptr %f_dma to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %f_dma, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %32 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i.i.i.i19 = icmp eq i8 %32, 0
  %33 = lshr i32 %retval.0.i23.i, 24
  %retval.0.i.i.i.i20 = select i1 %tobool.not.i.i.i.i19, i32 %retval.0.i23.i, i32 %33
  %and.i.i.i21 = and i32 %retval.0.i.i.i.i20, 127
  %add.ptr.i.i22 = getelementptr i32, ptr %desc, i32 %and.i.i.i21
  %34 = tail call i32 @llvm.bswap.i32(i32 %31) #3
  %retval.0.i.i.i23 = select i1 %tobool.not.i.i.i.i19, i32 %31, i32 %34
  %35 = ptrtoint ptr %add.ptr.i.i22 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %retval.0.i.i.i23, ptr %add.ptr.i.i22, align 4
  %36 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %38 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i.i24 = icmp eq i8 %38, 0
  %39 = tail call i32 @llvm.bswap.i32(i32 %37) #3
  %retval.0.i.i25 = select i1 %tobool.not.i.i24, i32 %37, i32 %39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %40 = load i32, ptr @caam_ptr_sz, align 4
  %div14.i26 = lshr i32 %40, 2
  %add.i27 = add i32 %retval.0.i.i25, %div14.i26
  %41 = tail call i32 @llvm.bswap.i32(i32 %add.i27) #3
  %retval.0.i23.i28 = select i1 %tobool.not.i.i24, i32 %add.i27, i32 %41
  %42 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %retval.0.i23.i28, ptr %desc, align 4
  %n_dma = getelementptr inbounds %struct.rsa_priv_f1_pdb, ptr %pdb, i32 0, i32 3
  %43 = ptrtoint ptr %n_dma to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %n_dma, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %45 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i.i.i.i29 = icmp eq i8 %45, 0
  %46 = lshr i32 %retval.0.i23.i28, 24
  %retval.0.i.i.i.i30 = select i1 %tobool.not.i.i.i.i29, i32 %retval.0.i23.i28, i32 %46
  %and.i.i.i31 = and i32 %retval.0.i.i.i.i30, 127
  %add.ptr.i.i32 = getelementptr i32, ptr %desc, i32 %and.i.i.i31
  %47 = tail call i32 @llvm.bswap.i32(i32 %44) #3
  %retval.0.i.i.i33 = select i1 %tobool.not.i.i.i.i29, i32 %44, i32 %47
  %48 = ptrtoint ptr %add.ptr.i.i32 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %retval.0.i.i.i33, ptr %add.ptr.i.i32, align 4
  %49 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %51 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i.i34 = icmp eq i8 %51, 0
  %52 = tail call i32 @llvm.bswap.i32(i32 %50) #3
  %retval.0.i.i35 = select i1 %tobool.not.i.i34, i32 %50, i32 %52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %53 = load i32, ptr @caam_ptr_sz, align 4
  %div14.i36 = lshr i32 %53, 2
  %add.i37 = add i32 %retval.0.i.i35, %div14.i36
  %54 = tail call i32 @llvm.bswap.i32(i32 %add.i37) #3
  %retval.0.i23.i38 = select i1 %tobool.not.i.i34, i32 %add.i37, i32 %54
  %55 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %retval.0.i23.i38, ptr %desc, align 4
  %d_dma = getelementptr inbounds %struct.rsa_priv_f1_pdb, ptr %pdb, i32 0, i32 4
  %56 = ptrtoint ptr %d_dma to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %d_dma, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %58 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i.i.i.i39 = icmp eq i8 %58, 0
  %59 = lshr i32 %retval.0.i23.i38, 24
  %retval.0.i.i.i.i40 = select i1 %tobool.not.i.i.i.i39, i32 %retval.0.i23.i38, i32 %59
  %and.i.i.i41 = and i32 %retval.0.i.i.i.i40, 127
  %add.ptr.i.i42 = getelementptr i32, ptr %desc, i32 %and.i.i.i41
  %60 = tail call i32 @llvm.bswap.i32(i32 %57) #3
  %retval.0.i.i.i43 = select i1 %tobool.not.i.i.i.i39, i32 %57, i32 %60
  %61 = ptrtoint ptr %add.ptr.i.i42 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %retval.0.i.i.i43, ptr %add.ptr.i.i42, align 4
  %62 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %64 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i.i44 = icmp eq i8 %64, 0
  %65 = tail call i32 @llvm.bswap.i32(i32 %63) #3
  %retval.0.i.i45 = select i1 %tobool.not.i.i44, i32 %63, i32 %65
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %66 = load i32, ptr @caam_ptr_sz, align 4
  %div14.i46 = lshr i32 %66, 2
  %add.i47 = add i32 %retval.0.i.i45, %div14.i46
  %67 = tail call i32 @llvm.bswap.i32(i32 %add.i47) #3
  %retval.0.i23.i48 = select i1 %tobool.not.i.i44, i32 %add.i47, i32 %67
  %68 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %retval.0.i23.i48, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %69 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i.i.i = icmp eq i8 %69, 0
  %70 = lshr i32 %retval.0.i23.i48, 24
  %retval.0.i.i.i49 = select i1 %tobool.not.i.i.i, i32 %retval.0.i23.i48, i32 %70
  %and.i.i = and i32 %retval.0.i.i.i49, 127
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %and.i.i, ptr noundef getelementptr inbounds ([17 x i8], ptr @.str.1, i32 0, i32 7)) #6
  %71 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %73 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool.not.i.i.i.i.i = icmp eq i8 %73, 0
  %74 = lshr i32 %72, 24
  %retval.0.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %72, i32 %74
  %and.i.i.i.i = and i32 %retval.0.i.i.i.i.i, 127
  %add.ptr.i.i.i = getelementptr i32, ptr %desc, i32 %and.i.i.i.i
  %retval.0.i.i5.i = select i1 %tobool.not.i.i.i.i.i, i32 -2145845248, i32 6528
  %75 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %retval.0.i.i5.i, ptr %add.ptr.i.i.i, align 4
  %76 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %78 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.not.i6.i.i = icmp eq i8 %78, 0
  %79 = tail call i32 @llvm.bswap.i32(i32 %77) #3
  %retval.0.i7.i.i = select i1 %tobool.not.i6.i.i, i32 %77, i32 %79
  %add.i.i = add i32 %retval.0.i7.i.i, 1
  %80 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #3
  %retval.0.i9.i.i = select i1 %tobool.not.i6.i.i, i32 %add.i.i, i32 %80
  %81 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %retval.0.i9.i.i, ptr %desc, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @init_rsa_priv_f2_desc(ptr noundef %desc, ptr nocapture noundef readonly %pdb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %0 = load i32, ptr @caam_ptr_sz, align 4
  %add = mul i32 %0, 114688
  %1 = add i32 %add, 245760
  %shl.i = and i32 %1, 1333723136
  %add.i.i.i = or i32 %shl.i, -1333788671
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %2 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i.i.i.i = icmp eq i8 %2, 0
  %3 = tail call i32 @llvm.bswap.i32(i32 %add.i.i.i) #3
  %retval.0.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %add.i.i.i, i32 %3
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %retval.0.i.i.i.i, ptr %desc, align 4
  %5 = ptrtoint ptr %pdb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pdb, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %7 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i.i.i.i19 = icmp eq i8 %7, 0
  %8 = lshr i32 %retval.0.i.i.i.i, 24
  %retval.0.i.i.i.i20 = select i1 %tobool.not.i.i.i.i19, i32 %retval.0.i.i.i.i, i32 %8
  %and.i.i.i = and i32 %retval.0.i.i.i.i20, 127
  %add.ptr.i.i = getelementptr i32, ptr %desc, i32 %and.i.i.i
  %9 = tail call i32 @llvm.bswap.i32(i32 %6) #3
  %retval.0.i.i = select i1 %tobool.not.i.i.i.i19, i32 %6, i32 %9
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %retval.0.i.i, ptr %add.ptr.i.i, align 4
  %11 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %13 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i6.i = icmp eq i8 %13, 0
  %14 = tail call i32 @llvm.bswap.i32(i32 %12) #3
  %retval.0.i7.i = select i1 %tobool.not.i6.i, i32 %12, i32 %14
  %add.i = add i32 %retval.0.i7.i, 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %add.i) #3
  %retval.0.i9.i = select i1 %tobool.not.i6.i, i32 %add.i, i32 %15
  %16 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %retval.0.i9.i, ptr %desc, align 4
  %g_dma = getelementptr inbounds %struct.rsa_priv_f2_pdb, ptr %pdb, i32 0, i32 1
  %17 = ptrtoint ptr %g_dma to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %g_dma, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %19 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i.i.i.i21 = icmp eq i8 %19, 0
  %20 = lshr i32 %retval.0.i9.i, 24
  %retval.0.i.i.i.i22 = select i1 %tobool.not.i.i.i.i21, i32 %retval.0.i9.i, i32 %20
  %and.i.i.i23 = and i32 %retval.0.i.i.i.i22, 127
  %add.ptr.i.i24 = getelementptr i32, ptr %desc, i32 %and.i.i.i23
  %21 = tail call i32 @llvm.bswap.i32(i32 %18) #3
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i.i21, i32 %18, i32 %21
  %22 = ptrtoint ptr %add.ptr.i.i24 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %retval.0.i.i.i, ptr %add.ptr.i.i24, align 4
  %23 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %25 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i.i = icmp eq i8 %25, 0
  %26 = tail call i32 @llvm.bswap.i32(i32 %24) #3
  %retval.0.i.i25 = select i1 %tobool.not.i.i, i32 %24, i32 %26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %27 = load i32, ptr @caam_ptr_sz, align 4
  %div14.i = lshr i32 %27, 2
  %add.i26 = add i32 %retval.0.i.i25, %div14.i
  %28 = tail call i32 @llvm.bswap.i32(i32 %add.i26) #3
  %retval.0.i23.i = select i1 %tobool.not.i.i, i32 %add.i26, i32 %28
  %29 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %retval.0.i23.i, ptr %desc, align 4
  %f_dma = getelementptr inbounds %struct.rsa_priv_f2_pdb, ptr %pdb, i32 0, i32 2
  %30 = ptrtoint ptr %f_dma to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %f_dma, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %32 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i.i.i.i27 = icmp eq i8 %32, 0
  %33 = lshr i32 %retval.0.i23.i, 24
  %retval.0.i.i.i.i28 = select i1 %tobool.not.i.i.i.i27, i32 %retval.0.i23.i, i32 %33
  %and.i.i.i29 = and i32 %retval.0.i.i.i.i28, 127
  %add.ptr.i.i30 = getelementptr i32, ptr %desc, i32 %and.i.i.i29
  %34 = tail call i32 @llvm.bswap.i32(i32 %31) #3
  %retval.0.i.i.i31 = select i1 %tobool.not.i.i.i.i27, i32 %31, i32 %34
  %35 = ptrtoint ptr %add.ptr.i.i30 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %retval.0.i.i.i31, ptr %add.ptr.i.i30, align 4
  %36 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %38 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i.i32 = icmp eq i8 %38, 0
  %39 = tail call i32 @llvm.bswap.i32(i32 %37) #3
  %retval.0.i.i33 = select i1 %tobool.not.i.i32, i32 %37, i32 %39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %40 = load i32, ptr @caam_ptr_sz, align 4
  %div14.i34 = lshr i32 %40, 2
  %add.i35 = add i32 %retval.0.i.i33, %div14.i34
  %41 = tail call i32 @llvm.bswap.i32(i32 %add.i35) #3
  %retval.0.i23.i36 = select i1 %tobool.not.i.i32, i32 %add.i35, i32 %41
  %42 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %retval.0.i23.i36, ptr %desc, align 4
  %d_dma = getelementptr inbounds %struct.rsa_priv_f2_pdb, ptr %pdb, i32 0, i32 3
  %43 = ptrtoint ptr %d_dma to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %d_dma, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %45 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i.i.i.i37 = icmp eq i8 %45, 0
  %46 = lshr i32 %retval.0.i23.i36, 24
  %retval.0.i.i.i.i38 = select i1 %tobool.not.i.i.i.i37, i32 %retval.0.i23.i36, i32 %46
  %and.i.i.i39 = and i32 %retval.0.i.i.i.i38, 127
  %add.ptr.i.i40 = getelementptr i32, ptr %desc, i32 %and.i.i.i39
  %47 = tail call i32 @llvm.bswap.i32(i32 %44) #3
  %retval.0.i.i.i41 = select i1 %tobool.not.i.i.i.i37, i32 %44, i32 %47
  %48 = ptrtoint ptr %add.ptr.i.i40 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %retval.0.i.i.i41, ptr %add.ptr.i.i40, align 4
  %49 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %51 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i.i42 = icmp eq i8 %51, 0
  %52 = tail call i32 @llvm.bswap.i32(i32 %50) #3
  %retval.0.i.i43 = select i1 %tobool.not.i.i42, i32 %50, i32 %52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %53 = load i32, ptr @caam_ptr_sz, align 4
  %div14.i44 = lshr i32 %53, 2
  %add.i45 = add i32 %retval.0.i.i43, %div14.i44
  %54 = tail call i32 @llvm.bswap.i32(i32 %add.i45) #3
  %retval.0.i23.i46 = select i1 %tobool.not.i.i42, i32 %add.i45, i32 %54
  %55 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %retval.0.i23.i46, ptr %desc, align 4
  %p_dma = getelementptr inbounds %struct.rsa_priv_f2_pdb, ptr %pdb, i32 0, i32 4
  %56 = ptrtoint ptr %p_dma to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %p_dma, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %58 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i.i.i.i47 = icmp eq i8 %58, 0
  %59 = lshr i32 %retval.0.i23.i46, 24
  %retval.0.i.i.i.i48 = select i1 %tobool.not.i.i.i.i47, i32 %retval.0.i23.i46, i32 %59
  %and.i.i.i49 = and i32 %retval.0.i.i.i.i48, 127
  %add.ptr.i.i50 = getelementptr i32, ptr %desc, i32 %and.i.i.i49
  %60 = tail call i32 @llvm.bswap.i32(i32 %57) #3
  %retval.0.i.i.i51 = select i1 %tobool.not.i.i.i.i47, i32 %57, i32 %60
  %61 = ptrtoint ptr %add.ptr.i.i50 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %retval.0.i.i.i51, ptr %add.ptr.i.i50, align 4
  %62 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %64 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i.i52 = icmp eq i8 %64, 0
  %65 = tail call i32 @llvm.bswap.i32(i32 %63) #3
  %retval.0.i.i53 = select i1 %tobool.not.i.i52, i32 %63, i32 %65
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %66 = load i32, ptr @caam_ptr_sz, align 4
  %div14.i54 = lshr i32 %66, 2
  %add.i55 = add i32 %retval.0.i.i53, %div14.i54
  %67 = tail call i32 @llvm.bswap.i32(i32 %add.i55) #3
  %retval.0.i23.i56 = select i1 %tobool.not.i.i52, i32 %add.i55, i32 %67
  %68 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %retval.0.i23.i56, ptr %desc, align 4
  %q_dma = getelementptr inbounds %struct.rsa_priv_f2_pdb, ptr %pdb, i32 0, i32 5
  %69 = ptrtoint ptr %q_dma to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %q_dma, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %71 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not.i.i.i.i57 = icmp eq i8 %71, 0
  %72 = lshr i32 %retval.0.i23.i56, 24
  %retval.0.i.i.i.i58 = select i1 %tobool.not.i.i.i.i57, i32 %retval.0.i23.i56, i32 %72
  %and.i.i.i59 = and i32 %retval.0.i.i.i.i58, 127
  %add.ptr.i.i60 = getelementptr i32, ptr %desc, i32 %and.i.i.i59
  %73 = tail call i32 @llvm.bswap.i32(i32 %70) #3
  %retval.0.i.i.i61 = select i1 %tobool.not.i.i.i.i57, i32 %70, i32 %73
  %74 = ptrtoint ptr %add.ptr.i.i60 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %retval.0.i.i.i61, ptr %add.ptr.i.i60, align 4
  %75 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %77 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool.not.i.i62 = icmp eq i8 %77, 0
  %78 = tail call i32 @llvm.bswap.i32(i32 %76) #3
  %retval.0.i.i63 = select i1 %tobool.not.i.i62, i32 %76, i32 %78
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %79 = load i32, ptr @caam_ptr_sz, align 4
  %div14.i64 = lshr i32 %79, 2
  %add.i65 = add i32 %retval.0.i.i63, %div14.i64
  %80 = tail call i32 @llvm.bswap.i32(i32 %add.i65) #3
  %retval.0.i23.i66 = select i1 %tobool.not.i.i62, i32 %add.i65, i32 %80
  %81 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %retval.0.i23.i66, ptr %desc, align 4
  %tmp1_dma = getelementptr inbounds %struct.rsa_priv_f2_pdb, ptr %pdb, i32 0, i32 6
  %82 = ptrtoint ptr %tmp1_dma to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %tmp1_dma, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %84 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool.not.i.i.i.i67 = icmp eq i8 %84, 0
  %85 = lshr i32 %retval.0.i23.i66, 24
  %retval.0.i.i.i.i68 = select i1 %tobool.not.i.i.i.i67, i32 %retval.0.i23.i66, i32 %85
  %and.i.i.i69 = and i32 %retval.0.i.i.i.i68, 127
  %add.ptr.i.i70 = getelementptr i32, ptr %desc, i32 %and.i.i.i69
  %86 = tail call i32 @llvm.bswap.i32(i32 %83) #3
  %retval.0.i.i.i71 = select i1 %tobool.not.i.i.i.i67, i32 %83, i32 %86
  %87 = ptrtoint ptr %add.ptr.i.i70 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %retval.0.i.i.i71, ptr %add.ptr.i.i70, align 4
  %88 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %90 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool.not.i.i72 = icmp eq i8 %90, 0
  %91 = tail call i32 @llvm.bswap.i32(i32 %89) #3
  %retval.0.i.i73 = select i1 %tobool.not.i.i72, i32 %89, i32 %91
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %92 = load i32, ptr @caam_ptr_sz, align 4
  %div14.i74 = lshr i32 %92, 2
  %add.i75 = add i32 %retval.0.i.i73, %div14.i74
  %93 = tail call i32 @llvm.bswap.i32(i32 %add.i75) #3
  %retval.0.i23.i76 = select i1 %tobool.not.i.i72, i32 %add.i75, i32 %93
  %94 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %retval.0.i23.i76, ptr %desc, align 4
  %tmp2_dma = getelementptr inbounds %struct.rsa_priv_f2_pdb, ptr %pdb, i32 0, i32 7
  %95 = ptrtoint ptr %tmp2_dma to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %tmp2_dma, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %97 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool.not.i.i.i.i77 = icmp eq i8 %97, 0
  %98 = lshr i32 %retval.0.i23.i76, 24
  %retval.0.i.i.i.i78 = select i1 %tobool.not.i.i.i.i77, i32 %retval.0.i23.i76, i32 %98
  %and.i.i.i79 = and i32 %retval.0.i.i.i.i78, 127
  %add.ptr.i.i80 = getelementptr i32, ptr %desc, i32 %and.i.i.i79
  %99 = tail call i32 @llvm.bswap.i32(i32 %96) #3
  %retval.0.i.i.i81 = select i1 %tobool.not.i.i.i.i77, i32 %96, i32 %99
  %100 = ptrtoint ptr %add.ptr.i.i80 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %retval.0.i.i.i81, ptr %add.ptr.i.i80, align 4
  %101 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %103 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool.not.i.i82 = icmp eq i8 %103, 0
  %104 = tail call i32 @llvm.bswap.i32(i32 %102) #3
  %retval.0.i.i83 = select i1 %tobool.not.i.i82, i32 %102, i32 %104
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %105 = load i32, ptr @caam_ptr_sz, align 4
  %div14.i84 = lshr i32 %105, 2
  %add.i85 = add i32 %retval.0.i.i83, %div14.i84
  %106 = tail call i32 @llvm.bswap.i32(i32 %add.i85) #3
  %retval.0.i23.i86 = select i1 %tobool.not.i.i82, i32 %add.i85, i32 %106
  %107 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %retval.0.i23.i86, ptr %desc, align 4
  %p_q_len = getelementptr inbounds %struct.rsa_priv_f2_pdb, ptr %pdb, i32 0, i32 8
  %108 = ptrtoint ptr %p_q_len to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %p_q_len, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %110 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool.not.i.i.i.i87 = icmp eq i8 %110, 0
  %111 = lshr i32 %retval.0.i23.i86, 24
  %retval.0.i.i.i.i88 = select i1 %tobool.not.i.i.i.i87, i32 %retval.0.i23.i86, i32 %111
  %and.i.i.i89 = and i32 %retval.0.i.i.i.i88, 127
  %add.ptr.i.i90 = getelementptr i32, ptr %desc, i32 %and.i.i.i89
  %112 = tail call i32 @llvm.bswap.i32(i32 %109) #3
  %retval.0.i.i91 = select i1 %tobool.not.i.i.i.i87, i32 %109, i32 %112
  %113 = ptrtoint ptr %add.ptr.i.i90 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %retval.0.i.i91, ptr %add.ptr.i.i90, align 4
  %114 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %116 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool.not.i6.i92 = icmp eq i8 %116, 0
  %117 = tail call i32 @llvm.bswap.i32(i32 %115) #3
  %retval.0.i7.i93 = select i1 %tobool.not.i6.i92, i32 %115, i32 %117
  %add.i94 = add i32 %retval.0.i7.i93, 1
  %118 = tail call i32 @llvm.bswap.i32(i32 %add.i94) #3
  %retval.0.i9.i95 = select i1 %tobool.not.i6.i92, i32 %add.i94, i32 %118
  %119 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %retval.0.i9.i95, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %120 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool.not.i.i.i = icmp eq i8 %120, 0
  %121 = lshr i32 %retval.0.i9.i95, 24
  %retval.0.i.i.i96 = select i1 %tobool.not.i.i.i, i32 %retval.0.i9.i95, i32 %121
  %and.i.i = and i32 %retval.0.i.i.i96, 127
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %and.i.i, ptr noundef getelementptr inbounds ([17 x i8], ptr @.str.1, i32 0, i32 7)) #6
  %122 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %124 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool.not.i.i.i.i.i = icmp eq i8 %124, 0
  %125 = lshr i32 %123, 24
  %retval.0.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %123, i32 %125
  %and.i.i.i.i = and i32 %retval.0.i.i.i.i.i, 127
  %add.ptr.i.i.i = getelementptr i32, ptr %desc, i32 %and.i.i.i.i
  %retval.0.i.i5.i = select i1 %tobool.not.i.i.i.i.i, i32 -2145845247, i32 16783744
  %126 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %retval.0.i.i5.i, ptr %add.ptr.i.i.i, align 4
  %127 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %129 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool.not.i6.i.i = icmp eq i8 %129, 0
  %130 = tail call i32 @llvm.bswap.i32(i32 %128) #3
  %retval.0.i7.i.i = select i1 %tobool.not.i6.i.i, i32 %128, i32 %130
  %add.i.i = add i32 %retval.0.i7.i.i, 1
  %131 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #3
  %retval.0.i9.i.i = select i1 %tobool.not.i6.i.i, i32 %add.i.i, i32 %131
  %132 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %retval.0.i9.i.i, ptr %desc, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @init_rsa_priv_f3_desc(ptr noundef %desc, ptr nocapture noundef readonly %pdb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %0 = load i32, ptr @caam_ptr_sz, align 4
  %add = mul i32 %0, 147456
  %1 = add i32 %add, 245760
  %shl.i = and i32 %1, 1333723136
  %add.i.i.i = or i32 %shl.i, -1333788671
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %2 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i.i.i.i = icmp eq i8 %2, 0
  %3 = tail call i32 @llvm.bswap.i32(i32 %add.i.i.i) #3
  %retval.0.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %add.i.i.i, i32 %3
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %retval.0.i.i.i.i, ptr %desc, align 4
  %5 = ptrtoint ptr %pdb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pdb, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %7 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i.i.i.i23 = icmp eq i8 %7, 0
  %8 = lshr i32 %retval.0.i.i.i.i, 24
  %retval.0.i.i.i.i24 = select i1 %tobool.not.i.i.i.i23, i32 %retval.0.i.i.i.i, i32 %8
  %and.i.i.i = and i32 %retval.0.i.i.i.i24, 127
  %add.ptr.i.i = getelementptr i32, ptr %desc, i32 %and.i.i.i
  %9 = tail call i32 @llvm.bswap.i32(i32 %6) #3
  %retval.0.i.i = select i1 %tobool.not.i.i.i.i23, i32 %6, i32 %9
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %retval.0.i.i, ptr %add.ptr.i.i, align 4
  %11 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %13 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i6.i = icmp eq i8 %13, 0
  %14 = tail call i32 @llvm.bswap.i32(i32 %12) #3
  %retval.0.i7.i = select i1 %tobool.not.i6.i, i32 %12, i32 %14
  %add.i = add i32 %retval.0.i7.i, 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %add.i) #3
  %retval.0.i9.i = select i1 %tobool.not.i6.i, i32 %add.i, i32 %15
  %16 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %retval.0.i9.i, ptr %desc, align 4
  %g_dma = getelementptr inbounds %struct.rsa_priv_f3_pdb, ptr %pdb, i32 0, i32 1
  %17 = ptrtoint ptr %g_dma to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %g_dma, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %19 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i.i.i.i25 = icmp eq i8 %19, 0
  %20 = lshr i32 %retval.0.i9.i, 24
  %retval.0.i.i.i.i26 = select i1 %tobool.not.i.i.i.i25, i32 %retval.0.i9.i, i32 %20
  %and.i.i.i27 = and i32 %retval.0.i.i.i.i26, 127
  %add.ptr.i.i28 = getelementptr i32, ptr %desc, i32 %and.i.i.i27
  %21 = tail call i32 @llvm.bswap.i32(i32 %18) #3
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i.i25, i32 %18, i32 %21
  %22 = ptrtoint ptr %add.ptr.i.i28 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %retval.0.i.i.i, ptr %add.ptr.i.i28, align 4
  %23 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %25 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i.i = icmp eq i8 %25, 0
  %26 = tail call i32 @llvm.bswap.i32(i32 %24) #3
  %retval.0.i.i29 = select i1 %tobool.not.i.i, i32 %24, i32 %26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %27 = load i32, ptr @caam_ptr_sz, align 4
  %div14.i = lshr i32 %27, 2
  %add.i30 = add i32 %retval.0.i.i29, %div14.i
  %28 = tail call i32 @llvm.bswap.i32(i32 %add.i30) #3
  %retval.0.i23.i = select i1 %tobool.not.i.i, i32 %add.i30, i32 %28
  %29 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %retval.0.i23.i, ptr %desc, align 4
  %f_dma = getelementptr inbounds %struct.rsa_priv_f3_pdb, ptr %pdb, i32 0, i32 2
  %30 = ptrtoint ptr %f_dma to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %f_dma, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %32 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i.i.i.i31 = icmp eq i8 %32, 0
  %33 = lshr i32 %retval.0.i23.i, 24
  %retval.0.i.i.i.i32 = select i1 %tobool.not.i.i.i.i31, i32 %retval.0.i23.i, i32 %33
  %and.i.i.i33 = and i32 %retval.0.i.i.i.i32, 127
  %add.ptr.i.i34 = getelementptr i32, ptr %desc, i32 %and.i.i.i33
  %34 = tail call i32 @llvm.bswap.i32(i32 %31) #3
  %retval.0.i.i.i35 = select i1 %tobool.not.i.i.i.i31, i32 %31, i32 %34
  %35 = ptrtoint ptr %add.ptr.i.i34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %retval.0.i.i.i35, ptr %add.ptr.i.i34, align 4
  %36 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %38 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i.i36 = icmp eq i8 %38, 0
  %39 = tail call i32 @llvm.bswap.i32(i32 %37) #3
  %retval.0.i.i37 = select i1 %tobool.not.i.i36, i32 %37, i32 %39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %40 = load i32, ptr @caam_ptr_sz, align 4
  %div14.i38 = lshr i32 %40, 2
  %add.i39 = add i32 %retval.0.i.i37, %div14.i38
  %41 = tail call i32 @llvm.bswap.i32(i32 %add.i39) #3
  %retval.0.i23.i40 = select i1 %tobool.not.i.i36, i32 %add.i39, i32 %41
  %42 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %retval.0.i23.i40, ptr %desc, align 4
  %c_dma = getelementptr inbounds %struct.rsa_priv_f3_pdb, ptr %pdb, i32 0, i32 3
  %43 = ptrtoint ptr %c_dma to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %c_dma, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %45 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i.i.i.i41 = icmp eq i8 %45, 0
  %46 = lshr i32 %retval.0.i23.i40, 24
  %retval.0.i.i.i.i42 = select i1 %tobool.not.i.i.i.i41, i32 %retval.0.i23.i40, i32 %46
  %and.i.i.i43 = and i32 %retval.0.i.i.i.i42, 127
  %add.ptr.i.i44 = getelementptr i32, ptr %desc, i32 %and.i.i.i43
  %47 = tail call i32 @llvm.bswap.i32(i32 %44) #3
  %retval.0.i.i.i45 = select i1 %tobool.not.i.i.i.i41, i32 %44, i32 %47
  %48 = ptrtoint ptr %add.ptr.i.i44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %retval.0.i.i.i45, ptr %add.ptr.i.i44, align 4
  %49 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %51 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i.i46 = icmp eq i8 %51, 0
  %52 = tail call i32 @llvm.bswap.i32(i32 %50) #3
  %retval.0.i.i47 = select i1 %tobool.not.i.i46, i32 %50, i32 %52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %53 = load i32, ptr @caam_ptr_sz, align 4
  %div14.i48 = lshr i32 %53, 2
  %add.i49 = add i32 %retval.0.i.i47, %div14.i48
  %54 = tail call i32 @llvm.bswap.i32(i32 %add.i49) #3
  %retval.0.i23.i50 = select i1 %tobool.not.i.i46, i32 %add.i49, i32 %54
  %55 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %retval.0.i23.i50, ptr %desc, align 4
  %p_dma = getelementptr inbounds %struct.rsa_priv_f3_pdb, ptr %pdb, i32 0, i32 4
  %56 = ptrtoint ptr %p_dma to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %p_dma, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %58 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i.i.i.i51 = icmp eq i8 %58, 0
  %59 = lshr i32 %retval.0.i23.i50, 24
  %retval.0.i.i.i.i52 = select i1 %tobool.not.i.i.i.i51, i32 %retval.0.i23.i50, i32 %59
  %and.i.i.i53 = and i32 %retval.0.i.i.i.i52, 127
  %add.ptr.i.i54 = getelementptr i32, ptr %desc, i32 %and.i.i.i53
  %60 = tail call i32 @llvm.bswap.i32(i32 %57) #3
  %retval.0.i.i.i55 = select i1 %tobool.not.i.i.i.i51, i32 %57, i32 %60
  %61 = ptrtoint ptr %add.ptr.i.i54 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %retval.0.i.i.i55, ptr %add.ptr.i.i54, align 4
  %62 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %64 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i.i56 = icmp eq i8 %64, 0
  %65 = tail call i32 @llvm.bswap.i32(i32 %63) #3
  %retval.0.i.i57 = select i1 %tobool.not.i.i56, i32 %63, i32 %65
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %66 = load i32, ptr @caam_ptr_sz, align 4
  %div14.i58 = lshr i32 %66, 2
  %add.i59 = add i32 %retval.0.i.i57, %div14.i58
  %67 = tail call i32 @llvm.bswap.i32(i32 %add.i59) #3
  %retval.0.i23.i60 = select i1 %tobool.not.i.i56, i32 %add.i59, i32 %67
  %68 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %retval.0.i23.i60, ptr %desc, align 4
  %q_dma = getelementptr inbounds %struct.rsa_priv_f3_pdb, ptr %pdb, i32 0, i32 5
  %69 = ptrtoint ptr %q_dma to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %q_dma, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %71 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not.i.i.i.i61 = icmp eq i8 %71, 0
  %72 = lshr i32 %retval.0.i23.i60, 24
  %retval.0.i.i.i.i62 = select i1 %tobool.not.i.i.i.i61, i32 %retval.0.i23.i60, i32 %72
  %and.i.i.i63 = and i32 %retval.0.i.i.i.i62, 127
  %add.ptr.i.i64 = getelementptr i32, ptr %desc, i32 %and.i.i.i63
  %73 = tail call i32 @llvm.bswap.i32(i32 %70) #3
  %retval.0.i.i.i65 = select i1 %tobool.not.i.i.i.i61, i32 %70, i32 %73
  %74 = ptrtoint ptr %add.ptr.i.i64 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %retval.0.i.i.i65, ptr %add.ptr.i.i64, align 4
  %75 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %77 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool.not.i.i66 = icmp eq i8 %77, 0
  %78 = tail call i32 @llvm.bswap.i32(i32 %76) #3
  %retval.0.i.i67 = select i1 %tobool.not.i.i66, i32 %76, i32 %78
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %79 = load i32, ptr @caam_ptr_sz, align 4
  %div14.i68 = lshr i32 %79, 2
  %add.i69 = add i32 %retval.0.i.i67, %div14.i68
  %80 = tail call i32 @llvm.bswap.i32(i32 %add.i69) #3
  %retval.0.i23.i70 = select i1 %tobool.not.i.i66, i32 %add.i69, i32 %80
  %81 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %retval.0.i23.i70, ptr %desc, align 4
  %dp_dma = getelementptr inbounds %struct.rsa_priv_f3_pdb, ptr %pdb, i32 0, i32 6
  %82 = ptrtoint ptr %dp_dma to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %dp_dma, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %84 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool.not.i.i.i.i71 = icmp eq i8 %84, 0
  %85 = lshr i32 %retval.0.i23.i70, 24
  %retval.0.i.i.i.i72 = select i1 %tobool.not.i.i.i.i71, i32 %retval.0.i23.i70, i32 %85
  %and.i.i.i73 = and i32 %retval.0.i.i.i.i72, 127
  %add.ptr.i.i74 = getelementptr i32, ptr %desc, i32 %and.i.i.i73
  %86 = tail call i32 @llvm.bswap.i32(i32 %83) #3
  %retval.0.i.i.i75 = select i1 %tobool.not.i.i.i.i71, i32 %83, i32 %86
  %87 = ptrtoint ptr %add.ptr.i.i74 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %retval.0.i.i.i75, ptr %add.ptr.i.i74, align 4
  %88 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %90 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool.not.i.i76 = icmp eq i8 %90, 0
  %91 = tail call i32 @llvm.bswap.i32(i32 %89) #3
  %retval.0.i.i77 = select i1 %tobool.not.i.i76, i32 %89, i32 %91
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %92 = load i32, ptr @caam_ptr_sz, align 4
  %div14.i78 = lshr i32 %92, 2
  %add.i79 = add i32 %retval.0.i.i77, %div14.i78
  %93 = tail call i32 @llvm.bswap.i32(i32 %add.i79) #3
  %retval.0.i23.i80 = select i1 %tobool.not.i.i76, i32 %add.i79, i32 %93
  %94 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %retval.0.i23.i80, ptr %desc, align 4
  %dq_dma = getelementptr inbounds %struct.rsa_priv_f3_pdb, ptr %pdb, i32 0, i32 7
  %95 = ptrtoint ptr %dq_dma to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %dq_dma, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %97 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool.not.i.i.i.i81 = icmp eq i8 %97, 0
  %98 = lshr i32 %retval.0.i23.i80, 24
  %retval.0.i.i.i.i82 = select i1 %tobool.not.i.i.i.i81, i32 %retval.0.i23.i80, i32 %98
  %and.i.i.i83 = and i32 %retval.0.i.i.i.i82, 127
  %add.ptr.i.i84 = getelementptr i32, ptr %desc, i32 %and.i.i.i83
  %99 = tail call i32 @llvm.bswap.i32(i32 %96) #3
  %retval.0.i.i.i85 = select i1 %tobool.not.i.i.i.i81, i32 %96, i32 %99
  %100 = ptrtoint ptr %add.ptr.i.i84 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %retval.0.i.i.i85, ptr %add.ptr.i.i84, align 4
  %101 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %103 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool.not.i.i86 = icmp eq i8 %103, 0
  %104 = tail call i32 @llvm.bswap.i32(i32 %102) #3
  %retval.0.i.i87 = select i1 %tobool.not.i.i86, i32 %102, i32 %104
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %105 = load i32, ptr @caam_ptr_sz, align 4
  %div14.i88 = lshr i32 %105, 2
  %add.i89 = add i32 %retval.0.i.i87, %div14.i88
  %106 = tail call i32 @llvm.bswap.i32(i32 %add.i89) #3
  %retval.0.i23.i90 = select i1 %tobool.not.i.i86, i32 %add.i89, i32 %106
  %107 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %retval.0.i23.i90, ptr %desc, align 4
  %tmp1_dma = getelementptr inbounds %struct.rsa_priv_f3_pdb, ptr %pdb, i32 0, i32 8
  %108 = ptrtoint ptr %tmp1_dma to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %tmp1_dma, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %110 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool.not.i.i.i.i91 = icmp eq i8 %110, 0
  %111 = lshr i32 %retval.0.i23.i90, 24
  %retval.0.i.i.i.i92 = select i1 %tobool.not.i.i.i.i91, i32 %retval.0.i23.i90, i32 %111
  %and.i.i.i93 = and i32 %retval.0.i.i.i.i92, 127
  %add.ptr.i.i94 = getelementptr i32, ptr %desc, i32 %and.i.i.i93
  %112 = tail call i32 @llvm.bswap.i32(i32 %109) #3
  %retval.0.i.i.i95 = select i1 %tobool.not.i.i.i.i91, i32 %109, i32 %112
  %113 = ptrtoint ptr %add.ptr.i.i94 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %retval.0.i.i.i95, ptr %add.ptr.i.i94, align 4
  %114 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %116 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool.not.i.i96 = icmp eq i8 %116, 0
  %117 = tail call i32 @llvm.bswap.i32(i32 %115) #3
  %retval.0.i.i97 = select i1 %tobool.not.i.i96, i32 %115, i32 %117
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %118 = load i32, ptr @caam_ptr_sz, align 4
  %div14.i98 = lshr i32 %118, 2
  %add.i99 = add i32 %retval.0.i.i97, %div14.i98
  %119 = tail call i32 @llvm.bswap.i32(i32 %add.i99) #3
  %retval.0.i23.i100 = select i1 %tobool.not.i.i96, i32 %add.i99, i32 %119
  %120 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %retval.0.i23.i100, ptr %desc, align 4
  %tmp2_dma = getelementptr inbounds %struct.rsa_priv_f3_pdb, ptr %pdb, i32 0, i32 9
  %121 = ptrtoint ptr %tmp2_dma to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %tmp2_dma, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %123 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool.not.i.i.i.i101 = icmp eq i8 %123, 0
  %124 = lshr i32 %retval.0.i23.i100, 24
  %retval.0.i.i.i.i102 = select i1 %tobool.not.i.i.i.i101, i32 %retval.0.i23.i100, i32 %124
  %and.i.i.i103 = and i32 %retval.0.i.i.i.i102, 127
  %add.ptr.i.i104 = getelementptr i32, ptr %desc, i32 %and.i.i.i103
  %125 = tail call i32 @llvm.bswap.i32(i32 %122) #3
  %retval.0.i.i.i105 = select i1 %tobool.not.i.i.i.i101, i32 %122, i32 %125
  %126 = ptrtoint ptr %add.ptr.i.i104 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %retval.0.i.i.i105, ptr %add.ptr.i.i104, align 4
  %127 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %129 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool.not.i.i106 = icmp eq i8 %129, 0
  %130 = tail call i32 @llvm.bswap.i32(i32 %128) #3
  %retval.0.i.i107 = select i1 %tobool.not.i.i106, i32 %128, i32 %130
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %131 = load i32, ptr @caam_ptr_sz, align 4
  %div14.i108 = lshr i32 %131, 2
  %add.i109 = add i32 %retval.0.i.i107, %div14.i108
  %132 = tail call i32 @llvm.bswap.i32(i32 %add.i109) #3
  %retval.0.i23.i110 = select i1 %tobool.not.i.i106, i32 %add.i109, i32 %132
  %133 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %retval.0.i23.i110, ptr %desc, align 4
  %p_q_len = getelementptr inbounds %struct.rsa_priv_f3_pdb, ptr %pdb, i32 0, i32 10
  %134 = ptrtoint ptr %p_q_len to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %p_q_len, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %136 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool.not.i.i.i.i111 = icmp eq i8 %136, 0
  %137 = lshr i32 %retval.0.i23.i110, 24
  %retval.0.i.i.i.i112 = select i1 %tobool.not.i.i.i.i111, i32 %retval.0.i23.i110, i32 %137
  %and.i.i.i113 = and i32 %retval.0.i.i.i.i112, 127
  %add.ptr.i.i114 = getelementptr i32, ptr %desc, i32 %and.i.i.i113
  %138 = tail call i32 @llvm.bswap.i32(i32 %135) #3
  %retval.0.i.i115 = select i1 %tobool.not.i.i.i.i111, i32 %135, i32 %138
  %139 = ptrtoint ptr %add.ptr.i.i114 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %retval.0.i.i115, ptr %add.ptr.i.i114, align 4
  %140 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %142 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool.not.i6.i116 = icmp eq i8 %142, 0
  %143 = tail call i32 @llvm.bswap.i32(i32 %141) #3
  %retval.0.i7.i117 = select i1 %tobool.not.i6.i116, i32 %141, i32 %143
  %add.i118 = add i32 %retval.0.i7.i117, 1
  %144 = tail call i32 @llvm.bswap.i32(i32 %add.i118) #3
  %retval.0.i9.i119 = select i1 %tobool.not.i6.i116, i32 %add.i118, i32 %144
  %145 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %retval.0.i9.i119, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %146 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool.not.i.i.i = icmp eq i8 %146, 0
  %147 = lshr i32 %retval.0.i9.i119, 24
  %retval.0.i.i.i120 = select i1 %tobool.not.i.i.i, i32 %retval.0.i9.i119, i32 %147
  %and.i.i = and i32 %retval.0.i.i.i120, 127
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %and.i.i, ptr noundef getelementptr inbounds ([17 x i8], ptr @.str.1, i32 0, i32 7)) #6
  %148 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %150 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool.not.i.i.i.i.i = icmp eq i8 %150, 0
  %151 = lshr i32 %149, 24
  %retval.0.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %149, i32 %151
  %and.i.i.i.i = and i32 %retval.0.i.i.i.i.i, 127
  %add.ptr.i.i.i = getelementptr i32, ptr %desc, i32 %and.i.i.i.i
  %retval.0.i.i5.i = select i1 %tobool.not.i.i.i.i.i, i32 -2145845246, i32 33560960
  %152 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %retval.0.i.i5.i, ptr %add.ptr.i.i.i, align 4
  %153 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %155 = load i8, ptr @caam_little_end, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool.not.i6.i.i = icmp eq i8 %155, 0
  %156 = tail call i32 @llvm.bswap.i32(i32 %154) #3
  %retval.0.i7.i.i = select i1 %tobool.not.i6.i.i, i32 %154, i32 %156
  %add.i.i = add i32 %retval.0.i7.i.i, 1
  %157 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #3
  %retval.0.i9.i.i = select i1 %tobool.not.i6.i.i, i32 %add.i.i, i32 %157
  %158 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %retval.0.i9.i.i, ptr %desc, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/crypto/caam/desc_constr.h", i32 265, i32 1}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @append_operation._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @append_operation._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i8 0, i8 2}
