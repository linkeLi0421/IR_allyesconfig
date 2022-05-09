; ModuleID = '/llk/IR_all_yes/drivers/infiniband/core/uverbs_marshall.c_pt.bc'
source_filename = "../drivers/infiniband/core/uverbs_marshall.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ib_copy_ah_attr_to_user\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_copy_ah_attr_to_user\09\09\09\09"
module asm "\09.long\09__crc_ib_copy_ah_attr_to_user\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_copy_ah_attr_to_user:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_copy_ah_attr_to_user\22\09\09\09\09\09"
module asm "__kstrtabns_ib_copy_ah_attr_to_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_copy_qp_attr_to_user\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_copy_qp_attr_to_user\09\09\09\09"
module asm "\09.long\09__crc_ib_copy_qp_attr_to_user\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_copy_qp_attr_to_user:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_copy_qp_attr_to_user\22\09\09\09\09\09"
module asm "__kstrtabns_ib_copy_qp_attr_to_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_copy_path_rec_to_user\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_copy_path_rec_to_user\09\09\09\09"
module asm "\09.long\09__crc_ib_copy_path_rec_to_user\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_copy_path_rec_to_user:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_copy_path_rec_to_user\22\09\09\09\09\09"
module asm "__kstrtabns_ib_copy_path_rec_to_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_copy_path_rec_from_user\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_copy_path_rec_from_user\09\09\09\09"
module asm "\09.long\09__crc_ib_copy_path_rec_from_user\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_copy_path_rec_from_user:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_copy_path_rec_from_user\22\09\09\09\09\09"
module asm "__kstrtabns_ib_copy_path_rec_from_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ib_port_attr = type { i64, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i8, i8, i8, i8, i8, i8, i16, i8, i16 }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.163 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.ib_gid = type { %struct.anon.158 }
%struct.anon.158 = type { i64, i64 }
%union.anon.163 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.ib_uverbs_ah_attr = type { %struct.ib_uverbs_global_route, i16, i8, i8, i8, i8, i8, i8 }
%struct.ib_uverbs_global_route = type { [16 x i8], i32, i8, i8, i8, i8 }
%struct.ib_ah_attr = type { i16, i8 }
%struct.ib_uverbs_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ib_uverbs_ah_attr, %struct.ib_uverbs_ah_attr, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [5 x i8] }
%struct.ib_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ib_qp_cap, %struct.rdma_ah_attr, %struct.rdma_ah_attr, i16, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, i32, i8, i32, ptr }
%struct.ib_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.sa_path_rec = type { %union.ib_gid, %union.ib_gid, i64, i32, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.172, i32 }
%union.anon.172 = type { %struct.sa_path_rec_opa }
%struct.sa_path_rec_opa = type { i32, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.ib_user_path_rec = type { [16 x i8], [16 x i8], i16, i16, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.sa_path_rec_ib = type { i16, i16, i8 }
%struct.sa_path_rec_roce = type { i8, [6 x i8] }

@__kstrtab_ib_copy_ah_attr_to_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_copy_ah_attr_to_user = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_copy_ah_attr_to_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_copy_ah_attr_to_user to i32), ptr @__kstrtab_ib_copy_ah_attr_to_user, ptr @__kstrtabns_ib_copy_ah_attr_to_user }, section "___ksymtab+ib_copy_ah_attr_to_user", align 4
@__kstrtab_ib_copy_qp_attr_to_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_copy_qp_attr_to_user = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_copy_qp_attr_to_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_copy_qp_attr_to_user to i32), ptr @__kstrtab_ib_copy_qp_attr_to_user, ptr @__kstrtabns_ib_copy_qp_attr_to_user }, section "___ksymtab+ib_copy_qp_attr_to_user", align 4
@__kstrtab_ib_copy_path_rec_to_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_copy_path_rec_to_user = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_copy_path_rec_to_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_copy_path_rec_to_user to i32), ptr @__kstrtab_ib_copy_path_rec_to_user, ptr @__kstrtabns_ib_copy_path_rec_to_user }, section "___ksymtab+ib_copy_path_rec_to_user", align 4
@__kstrtab_ib_copy_path_rec_from_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_copy_path_rec_from_user = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_copy_path_rec_from_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_copy_path_rec_from_user to i32), ptr @__kstrtab_ib_copy_path_rec_from_user, ptr @__kstrtabns_ib_copy_path_rec_from_user }, section "___ksymtab+ib_copy_path_rec_from_user", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_ib_copy_ah_attr_to_user, ptr @__ksymtab_ib_copy_path_rec_from_user, ptr @__ksymtab_ib_copy_path_rec_to_user, ptr @__ksymtab_ib_copy_qp_attr_to_user], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ib_copy_ah_attr_to_user(ptr noundef %device, ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %ah_attr) #0 align 64 {
entry:
  %port_attr.i = alloca %struct.ib_port_attr, align 8
  %conv_ah = alloca %struct.rdma_ah_attr, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %conv_ah) #4
  %0 = call ptr @memset(ptr %conv_ah, i32 255, i32 56)
  %1 = call ptr @memset(ptr %dst, i32 0, i32 24)
  %type = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 5
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %rdma_ah_get_dlid.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

rdma_ah_get_dlid.exit:                            ; preds = %entry
  %4 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 6
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %6)
  %cmp1 = icmp ugt i32 %6, 65535
  br i1 %cmp1, label %land.lhs.true2, label %rdma_ah_get_dlid.exit.if.end_crit_edge

rdma_ah_get_dlid.exit.if.end_crit_edge:           ; preds = %rdma_ah_get_dlid.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true2:                                   ; preds = %rdma_ah_get_dlid.exit
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %port_attr.i) #4
  %7 = call ptr @memset(ptr %port_attr.i, i32 255, i32 72)
  %8 = call ptr @memcpy(ptr %conv_ah, ptr %ah_attr, i32 56)
  %type.i56 = getelementptr inbounds %struct.rdma_ah_attr, ptr %conv_ah, i32 0, i32 5
  %9 = ptrtoint ptr %type.i56 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %type.i56, align 4
  %ah_flags.i.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %conv_ah, i32 0, i32 4
  %10 = ptrtoint ptr %ah_flags.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %ah_flags.i.i, align 8
  %flow_label2.i.i = getelementptr inbounds %struct.ib_global_route, ptr %conv_ah, i32 0, i32 2
  %11 = ptrtoint ptr %flow_label2.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %flow_label2.i.i, align 8
  %sgid_index3.i.i = getelementptr inbounds %struct.ib_global_route, ptr %conv_ah, i32 0, i32 3
  %12 = ptrtoint ptr %sgid_index3.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %sgid_index3.i.i, align 4
  %hop_limit4.i.i = getelementptr inbounds %struct.ib_global_route, ptr %conv_ah, i32 0, i32 4
  %13 = ptrtoint ptr %hop_limit4.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %hop_limit4.i.i, align 1
  %traffic_class5.i.i = getelementptr inbounds %struct.ib_global_route, ptr %conv_ah, i32 0, i32 5
  %14 = ptrtoint ptr %traffic_class5.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %traffic_class5.i.i, align 2
  %15 = ptrtoint ptr %conv_ah to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %conv_ah, align 8
  %port_num.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr, i32 0, i32 3
  %16 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port_num.i, align 4
  %call.i = call i32 @ib_query_port(ptr noundef %device, i32 noundef %17, ptr noundef nonnull %port_attr.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %land.lhs.true2.if.end.i_crit_edge

land.lhs.true2.if.end.i_crit_edge:                ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %port_attr.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %port_attr.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %land.lhs.true2.if.end.i_crit_edge
  %.sink.i = phi i64 [ %19, %if.else.i ], [ -108086391056891904, %land.lhs.true2.if.end.i_crit_edge ]
  %20 = getelementptr inbounds %struct.ib_global_route, ptr %conv_ah, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %.sink.i, ptr %20, align 8
  %22 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %type, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %23, label %if.end.i.rdma_ah_conv_opa_to_ib.exit_crit_edge [
    i32 1, label %if.then.i.i
    i32 3, label %if.then4.i.i
  ]

if.end.i.rdma_ah_conv_opa_to_ib.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rdma_ah_conv_opa_to_ib.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %4, align 8
  %conv.i.i = zext i16 %26 to i32
  br label %rdma_ah_conv_opa_to_ib.exit

if.then4.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %4, align 8
  br label %rdma_ah_conv_opa_to_ib.exit

rdma_ah_conv_opa_to_ib.exit:                      ; preds = %if.then4.i.i, %if.then.i.i, %if.end.i.rdma_ah_conv_opa_to_ib.exit_crit_edge
  %retval.0.i.i = phi i32 [ %conv.i.i, %if.then.i.i ], [ %28, %if.then4.i.i ], [ 0, %if.end.i.rdma_ah_conv_opa_to_ib.exit_crit_edge ]
  %conv.i57 = zext i32 %retval.0.i.i to i64
  %or.i = or i64 %conv.i57, 1805398092808192
  %interface_id.i.i = getelementptr inbounds %struct.ib_global_route, ptr %conv_ah, i32 0, i32 1, i32 0, i32 1
  %29 = ptrtoint ptr %interface_id.i.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %or.i, ptr %interface_id.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %port_attr.i) #4
  %spec.select = select i1 %tobool.not.i, ptr %conv_ah, ptr %ah_attr
  br label %if.end

if.end:                                           ; preds = %rdma_ah_conv_opa_to_ib.exit, %rdma_ah_get_dlid.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %src.0 = phi ptr [ %ah_attr, %rdma_ah_get_dlid.exit.if.end_crit_edge ], [ %ah_attr, %entry.if.end_crit_edge ], [ %spec.select, %rdma_ah_conv_opa_to_ib.exit ]
  %type.i58 = getelementptr inbounds %struct.rdma_ah_attr, ptr %src.0, i32 0, i32 5
  %30 = ptrtoint ptr %type.i58 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %type.i58, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %31, label %if.end.rdma_ah_get_dlid.exit63_crit_edge [
    i32 1, label %if.then.i60
    i32 3, label %if.then4.i61
  ]

if.end.rdma_ah_get_dlid.exit63_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %rdma_ah_get_dlid.exit63

if.then.i60:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %33 = getelementptr inbounds %struct.rdma_ah_attr, ptr %src.0, i32 0, i32 6
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %33, align 8
  %conv.i59 = zext i16 %35 to i32
  br label %rdma_ah_get_dlid.exit63

if.then4.i61:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %36 = getelementptr inbounds %struct.rdma_ah_attr, ptr %src.0, i32 0, i32 6
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 8
  br label %rdma_ah_get_dlid.exit63

rdma_ah_get_dlid.exit63:                          ; preds = %if.then4.i61, %if.then.i60, %if.end.rdma_ah_get_dlid.exit63_crit_edge
  %retval.0.i62 = phi i32 [ %conv.i59, %if.then.i60 ], [ %38, %if.then4.i61 ], [ 0, %if.end.rdma_ah_get_dlid.exit63_crit_edge ]
  %conv = trunc i32 %retval.0.i62 to i16
  %dlid = getelementptr inbounds %struct.ib_uverbs_ah_attr, ptr %dst, i32 0, i32 1
  %39 = ptrtoint ptr %dlid to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv, ptr %dlid, align 4
  %sl.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %src.0, i32 0, i32 1
  %40 = ptrtoint ptr %sl.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %sl.i, align 8
  %sl = getelementptr inbounds %struct.ib_uverbs_ah_attr, ptr %dst, i32 0, i32 2
  %42 = ptrtoint ptr %sl to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %sl, align 2
  %43 = ptrtoint ptr %type.i58 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %type.i58, align 4
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %44, label %rdma_ah_get_dlid.exit63.rdma_ah_get_path_bits.exit_crit_edge [
    i32 1, label %if.then.i65
    i32 3, label %if.then3.i
  ]

rdma_ah_get_dlid.exit63.rdma_ah_get_path_bits.exit_crit_edge: ; preds = %rdma_ah_get_dlid.exit63
  call void @__sanitizer_cov_trace_pc() #6
  br label %rdma_ah_get_path_bits.exit

if.then.i65:                                      ; preds = %rdma_ah_get_dlid.exit63
  call void @__sanitizer_cov_trace_pc() #6
  %46 = getelementptr inbounds %struct.rdma_ah_attr, ptr %src.0, i32 0, i32 6
  %src_path_bits.i = getelementptr inbounds %struct.ib_ah_attr, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %src_path_bits.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %src_path_bits.i, align 2
  br label %rdma_ah_get_path_bits.exit

if.then3.i:                                       ; preds = %rdma_ah_get_dlid.exit63
  call void @__sanitizer_cov_trace_pc() #6
  %src_path_bits4.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %src.0, i32 0, i32 6, i32 0, i32 1
  %49 = ptrtoint ptr %src_path_bits4.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %src_path_bits4.i, align 4
  br label %rdma_ah_get_path_bits.exit

rdma_ah_get_path_bits.exit:                       ; preds = %if.then3.i, %if.then.i65, %rdma_ah_get_dlid.exit63.rdma_ah_get_path_bits.exit_crit_edge
  %retval.0.i66 = phi i8 [ %48, %if.then.i65 ], [ %50, %if.then3.i ], [ 0, %rdma_ah_get_dlid.exit63.rdma_ah_get_path_bits.exit_crit_edge ]
  %src_path_bits = getelementptr inbounds %struct.ib_uverbs_ah_attr, ptr %dst, i32 0, i32 3
  %51 = ptrtoint ptr %src_path_bits to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %retval.0.i66, ptr %src_path_bits, align 1
  %static_rate.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %src.0, i32 0, i32 2
  %52 = ptrtoint ptr %static_rate.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %static_rate.i, align 1
  %static_rate = getelementptr inbounds %struct.ib_uverbs_ah_attr, ptr %dst, i32 0, i32 4
  %54 = ptrtoint ptr %static_rate to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %static_rate, align 4
  %ah_flags.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %src.0, i32 0, i32 4
  %55 = ptrtoint ptr %ah_flags.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %ah_flags.i, align 8
  %57 = and i8 %56, 1
  %is_global = getelementptr inbounds %struct.ib_uverbs_ah_attr, ptr %dst, i32 0, i32 5
  %58 = ptrtoint ptr %is_global to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %is_global, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool12.not = icmp eq i8 %57, 0
  br i1 %tobool12.not, label %rdma_ah_get_path_bits.exit.if.end27_crit_edge, label %if.then13

rdma_ah_get_path_bits.exit.if.end27_crit_edge:    ; preds = %rdma_ah_get_path_bits.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end27

if.then13:                                        ; preds = %rdma_ah_get_path_bits.exit
  call void @__sanitizer_cov_trace_pc() #6
  %dgid17 = getelementptr inbounds %struct.ib_global_route, ptr %src.0, i32 0, i32 1
  %59 = call ptr @memcpy(ptr %dst, ptr %dgid17, i32 16)
  %flow_label = getelementptr inbounds %struct.ib_global_route, ptr %src.0, i32 0, i32 2
  %60 = ptrtoint ptr %flow_label to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flow_label, align 8
  %flow_label20 = getelementptr inbounds %struct.ib_uverbs_global_route, ptr %dst, i32 0, i32 1
  %62 = ptrtoint ptr %flow_label20 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %flow_label20, align 4
  %sgid_index = getelementptr inbounds %struct.ib_global_route, ptr %src.0, i32 0, i32 3
  %63 = ptrtoint ptr %sgid_index to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %sgid_index, align 4
  %sgid_index22 = getelementptr inbounds %struct.ib_uverbs_global_route, ptr %dst, i32 0, i32 2
  %65 = ptrtoint ptr %sgid_index22 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %sgid_index22, align 4
  %hop_limit = getelementptr inbounds %struct.ib_global_route, ptr %src.0, i32 0, i32 4
  %66 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %hop_limit, align 1
  %hop_limit24 = getelementptr inbounds %struct.ib_uverbs_global_route, ptr %dst, i32 0, i32 3
  %68 = ptrtoint ptr %hop_limit24 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %hop_limit24, align 1
  %traffic_class = getelementptr inbounds %struct.ib_global_route, ptr %src.0, i32 0, i32 5
  %69 = ptrtoint ptr %traffic_class to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %traffic_class, align 2
  %traffic_class26 = getelementptr inbounds %struct.ib_uverbs_global_route, ptr %dst, i32 0, i32 4
  %71 = ptrtoint ptr %traffic_class26 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %traffic_class26, align 2
  br label %if.end27

if.end27:                                         ; preds = %if.then13, %rdma_ah_get_path_bits.exit.if.end27_crit_edge
  %port_num.i68 = getelementptr inbounds %struct.rdma_ah_attr, ptr %src.0, i32 0, i32 3
  %72 = ptrtoint ptr %port_num.i68 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %port_num.i68, align 4
  %conv29 = trunc i32 %73 to i8
  %port_num = getelementptr inbounds %struct.ib_uverbs_ah_attr, ptr %dst, i32 0, i32 6
  %74 = ptrtoint ptr %port_num to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv29, ptr %port_num, align 2
  %reserved = getelementptr inbounds %struct.ib_uverbs_ah_attr, ptr %dst, i32 0, i32 7
  %75 = ptrtoint ptr %reserved to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %reserved, align 1
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %conv_ah) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ib_copy_qp_attr_to_user(ptr noundef %device, ptr noundef writeonly %dst, ptr noundef readonly %src) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src, align 8
  %qp_state1 = getelementptr inbounds %struct.ib_uverbs_qp_attr, ptr %dst, i32 0, i32 1
  %2 = ptrtoint ptr %qp_state1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %qp_state1, align 4
  %cur_qp_state = getelementptr inbounds %struct.ib_qp_attr, ptr %src, i32 0, i32 1
  %3 = ptrtoint ptr %cur_qp_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cur_qp_state, align 4
  %cur_qp_state2 = getelementptr inbounds %struct.ib_uverbs_qp_attr, ptr %dst, i32 0, i32 2
  %5 = ptrtoint ptr %cur_qp_state2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %cur_qp_state2, align 4
  %path_mtu = getelementptr inbounds %struct.ib_qp_attr, ptr %src, i32 0, i32 2
  %6 = ptrtoint ptr %path_mtu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %path_mtu, align 8
  %path_mtu3 = getelementptr inbounds %struct.ib_uverbs_qp_attr, ptr %dst, i32 0, i32 3
  %8 = ptrtoint ptr %path_mtu3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %path_mtu3, align 4
  %path_mig_state = getelementptr inbounds %struct.ib_qp_attr, ptr %src, i32 0, i32 3
  %9 = ptrtoint ptr %path_mig_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %path_mig_state, align 4
  %path_mig_state4 = getelementptr inbounds %struct.ib_uverbs_qp_attr, ptr %dst, i32 0, i32 4
  %11 = ptrtoint ptr %path_mig_state4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %path_mig_state4, align 4
  %qkey = getelementptr inbounds %struct.ib_qp_attr, ptr %src, i32 0, i32 4
  %12 = ptrtoint ptr %qkey to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qkey, align 8
  %qkey5 = getelementptr inbounds %struct.ib_uverbs_qp_attr, ptr %dst, i32 0, i32 5
  %14 = ptrtoint ptr %qkey5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %qkey5, align 4
  %rq_psn = getelementptr inbounds %struct.ib_qp_attr, ptr %src, i32 0, i32 5
  %15 = ptrtoint ptr %rq_psn to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rq_psn, align 4
  %rq_psn6 = getelementptr inbounds %struct.ib_uverbs_qp_attr, ptr %dst, i32 0, i32 6
  %17 = ptrtoint ptr %rq_psn6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %rq_psn6, align 4
  %sq_psn = getelementptr inbounds %struct.ib_qp_attr, ptr %src, i32 0, i32 6
  %18 = ptrtoint ptr %sq_psn to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sq_psn, align 8
  %sq_psn7 = getelementptr inbounds %struct.ib_uverbs_qp_attr, ptr %dst, i32 0, i32 7
  %20 = ptrtoint ptr %sq_psn7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %sq_psn7, align 4
  %dest_qp_num = getelementptr inbounds %struct.ib_qp_attr, ptr %src, i32 0, i32 7
  %21 = ptrtoint ptr %dest_qp_num to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dest_qp_num, align 4
  %dest_qp_num8 = getelementptr inbounds %struct.ib_uverbs_qp_attr, ptr %dst, i32 0, i32 8
  %23 = ptrtoint ptr %dest_qp_num8 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %dest_qp_num8, align 4
  %qp_access_flags = getelementptr inbounds %struct.ib_qp_attr, ptr %src, i32 0, i32 8
  %24 = ptrtoint ptr %qp_access_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %qp_access_flags, align 8
  %qp_access_flags9 = getelementptr inbounds %struct.ib_uverbs_qp_attr, ptr %dst, i32 0, i32 9
  %26 = ptrtoint ptr %qp_access_flags9 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %qp_access_flags9, align 4
  %cap = getelementptr inbounds %struct.ib_qp_attr, ptr %src, i32 0, i32 9
  %27 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cap, align 4
  %max_send_wr10 = getelementptr inbounds %struct.ib_uverbs_qp_attr, ptr %dst, i32 0, i32 12
  %29 = ptrtoint ptr %max_send_wr10 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %max_send_wr10, align 4
  %max_recv_wr = getelementptr inbounds %struct.ib_qp_attr, ptr %src, i32 0, i32 9, i32 1
  %30 = ptrtoint ptr %max_recv_wr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_recv_wr, align 4
  %max_recv_wr12 = getelementptr inbounds %struct.ib_uverbs_qp_attr, ptr %dst, i32 0, i32 13
  %32 = ptrtoint ptr %max_recv_wr12 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %max_recv_wr12, align 4
  %max_send_sge = getelementptr inbounds %struct.ib_qp_attr, ptr %src, i32 0, i32 9, i32 2
  %33 = ptrtoint ptr %max_send_sge to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %max_send_sge, align 4
  %max_send_sge14 = getelementptr inbounds %struct.ib_uverbs_qp_attr, ptr %dst, i32 0, i32 14
  %35 = ptrtoint ptr %max_send_sge14 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %max_send_sge14, align 4
  %max_recv_sge = getelementptr inbounds %struct.ib_qp_attr, ptr %src, i32 0, i32 9, i32 3
  %36 = ptrtoint ptr %max_recv_sge to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_recv_sge, align 4
  %max_recv_sge16 = getelementptr inbounds %struct.ib_uverbs_qp_attr, ptr %dst, i32 0, i32 15
  %38 = ptrtoint ptr %max_recv_sge16 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %max_recv_sge16, align 4
  %max_inline_data = getelementptr inbounds %struct.ib_qp_attr, ptr %src, i32 0, i32 9, i32 4
  %39 = ptrtoint ptr %max_inline_data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_inline_data, align 4
  %max_inline_data18 = getelementptr inbounds %struct.ib_uverbs_qp_attr, ptr %dst, i32 0, i32 16
  %41 = ptrtoint ptr %max_inline_data18 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %max_inline_data18, align 4
  %ah_attr = getelementptr inbounds %struct.ib_uverbs_qp_attr, ptr %dst, i32 0, i32 10
  %ah_attr19 = getelementptr inbounds %struct.ib_qp_attr, ptr %src, i32 0, i32 10
  tail call void @ib_copy_ah_attr_to_user(ptr noundef %device, ptr noundef %ah_attr, ptr noundef %ah_attr19)
  %alt_ah_attr = getelementptr inbounds %struct.ib_uverbs_qp_attr, ptr %dst, i32 0, i32 11
  %alt_ah_attr20 = getelementptr inbounds %struct.ib_qp_attr, ptr %src, i32 0, i32 11
  tail call void @ib_copy_ah_attr_to_user(ptr noundef %device, ptr noundef %alt_ah_attr, ptr noundef %alt_ah_attr20)
  %pkey_index = getelementptr inbounds %struct.ib_qp_attr, ptr %src, i32 0, i32 12
  %42 = ptrtoint ptr %pkey_index to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %pkey_index, align 8
  %pkey_index21 = getelementptr inbounds %struct.ib_uverbs_qp_attr, ptr %dst, i32 0, i32 17
  %44 = ptrtoint ptr %pkey_index21 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %pkey_index21, align 4
  %alt_pkey_index = getelementptr inbounds %struct.ib_qp_attr, ptr %src, i32 0, i32 13
  %45 = ptrtoint ptr %alt_pkey_index to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %alt_pkey_index, align 2
  %alt_pkey_index22 = getelementptr inbounds %struct.ib_uverbs_qp_attr, ptr %dst, i32 0, i32 18
  %47 = ptrtoint ptr %alt_pkey_index22 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %alt_pkey_index22, align 2
  %en_sqd_async_notify = getelementptr inbounds %struct.ib_qp_attr, ptr %src, i32 0, i32 14
  %48 = ptrtoint ptr %en_sqd_async_notify to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %en_sqd_async_notify, align 4
  %en_sqd_async_notify23 = getelementptr inbounds %struct.ib_uverbs_qp_attr, ptr %dst, i32 0, i32 19
  %50 = ptrtoint ptr %en_sqd_async_notify23 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %en_sqd_async_notify23, align 4
  %sq_draining = getelementptr inbounds %struct.ib_qp_attr, ptr %src, i32 0, i32 15
  %51 = ptrtoint ptr %sq_draining to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %sq_draining, align 1
  %sq_draining24 = getelementptr inbounds %struct.ib_uverbs_qp_attr, ptr %dst, i32 0, i32 20
  %53 = ptrtoint ptr %sq_draining24 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %sq_draining24, align 1
  %max_rd_atomic = getelementptr inbounds %struct.ib_qp_attr, ptr %src, i32 0, i32 16
  %54 = ptrtoint ptr %max_rd_atomic to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %max_rd_atomic, align 2
  %max_rd_atomic25 = getelementptr inbounds %struct.ib_uverbs_qp_attr, ptr %dst, i32 0, i32 21
  %56 = ptrtoint ptr %max_rd_atomic25 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %max_rd_atomic25, align 2
  %max_dest_rd_atomic = getelementptr inbounds %struct.ib_qp_attr, ptr %src, i32 0, i32 17
  %57 = ptrtoint ptr %max_dest_rd_atomic to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %max_dest_rd_atomic, align 1
  %max_dest_rd_atomic26 = getelementptr inbounds %struct.ib_uverbs_qp_attr, ptr %dst, i32 0, i32 22
  %59 = ptrtoint ptr %max_dest_rd_atomic26 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %max_dest_rd_atomic26, align 1
  %min_rnr_timer = getelementptr inbounds %struct.ib_qp_attr, ptr %src, i32 0, i32 18
  %60 = ptrtoint ptr %min_rnr_timer to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %min_rnr_timer, align 8
  %min_rnr_timer27 = getelementptr inbounds %struct.ib_uverbs_qp_attr, ptr %dst, i32 0, i32 23
  %62 = ptrtoint ptr %min_rnr_timer27 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %min_rnr_timer27, align 4
  %port_num = getelementptr inbounds %struct.ib_qp_attr, ptr %src, i32 0, i32 19
  %63 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %port_num, align 4
  %conv = trunc i32 %64 to i8
  %port_num28 = getelementptr inbounds %struct.ib_uverbs_qp_attr, ptr %dst, i32 0, i32 24
  %65 = ptrtoint ptr %port_num28 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv, ptr %port_num28, align 1
  %timeout = getelementptr inbounds %struct.ib_qp_attr, ptr %src, i32 0, i32 20
  %66 = ptrtoint ptr %timeout to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %timeout, align 8
  %timeout29 = getelementptr inbounds %struct.ib_uverbs_qp_attr, ptr %dst, i32 0, i32 25
  %68 = ptrtoint ptr %timeout29 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %timeout29, align 2
  %retry_cnt = getelementptr inbounds %struct.ib_qp_attr, ptr %src, i32 0, i32 21
  %69 = ptrtoint ptr %retry_cnt to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %retry_cnt, align 1
  %retry_cnt30 = getelementptr inbounds %struct.ib_uverbs_qp_attr, ptr %dst, i32 0, i32 26
  %71 = ptrtoint ptr %retry_cnt30 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %retry_cnt30, align 1
  %rnr_retry = getelementptr inbounds %struct.ib_qp_attr, ptr %src, i32 0, i32 22
  %72 = ptrtoint ptr %rnr_retry to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %rnr_retry, align 2
  %rnr_retry31 = getelementptr inbounds %struct.ib_uverbs_qp_attr, ptr %dst, i32 0, i32 27
  %74 = ptrtoint ptr %rnr_retry31 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %rnr_retry31, align 4
  %alt_port_num = getelementptr inbounds %struct.ib_qp_attr, ptr %src, i32 0, i32 23
  %75 = ptrtoint ptr %alt_port_num to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %alt_port_num, align 4
  %conv32 = trunc i32 %76 to i8
  %alt_port_num33 = getelementptr inbounds %struct.ib_uverbs_qp_attr, ptr %dst, i32 0, i32 28
  %77 = ptrtoint ptr %alt_port_num33 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv32, ptr %alt_port_num33, align 1
  %alt_timeout = getelementptr inbounds %struct.ib_qp_attr, ptr %src, i32 0, i32 24
  %78 = ptrtoint ptr %alt_timeout to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %alt_timeout, align 8
  %alt_timeout34 = getelementptr inbounds %struct.ib_uverbs_qp_attr, ptr %dst, i32 0, i32 29
  %80 = ptrtoint ptr %alt_timeout34 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %alt_timeout34, align 2
  %reserved = getelementptr inbounds %struct.ib_uverbs_qp_attr, ptr %dst, i32 0, i32 30
  %81 = call ptr @memset(ptr %reserved, i32 0, i32 5)
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ib_copy_path_rec_to_user(ptr noundef writeonly %dst, ptr noundef readonly %src) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rec_type = getelementptr inbounds %struct.sa_path_rec, ptr %src, i32 0, i32 19
  %0 = ptrtoint ptr %rec_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rec_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %if.end.i, label %if.end

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %src to i32
  call void @__asan_load8_noabort(i32 %2)
  %rec.sroa.0.0.copyload = load i64, ptr %src, align 8
  %rec.sroa.7.0.src.sroa_idx = getelementptr inbounds i8, ptr %src, i32 8
  %3 = ptrtoint ptr %rec.sroa.7.0.src.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %3)
  %rec.sroa.7.0.copyload = load i64, ptr %rec.sroa.7.0.src.sroa_idx, align 8
  %rec.sroa.8.0.src.sroa_idx = getelementptr inbounds i8, ptr %src, i32 16
  %4 = ptrtoint ptr %rec.sroa.8.0.src.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %4)
  %rec.sroa.8.0.copyload = load i64, ptr %rec.sroa.8.0.src.sroa_idx, align 8
  %rec.sroa.9.0.src.sroa_idx = getelementptr inbounds i8, ptr %src, i32 24
  %5 = ptrtoint ptr %rec.sroa.9.0.src.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %5)
  %rec.sroa.9.0.copyload = load i64, ptr %rec.sroa.9.0.src.sroa_idx, align 8
  %rec.sroa.11.0.src.sroa_idx = getelementptr inbounds i8, ptr %src, i32 40
  %6 = ptrtoint ptr %rec.sroa.11.0.src.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %rec.sroa.11.0.copyload = load i32, ptr %rec.sroa.11.0.src.sroa_idx, align 8
  %rec.sroa.12.0.src.sroa_idx = getelementptr inbounds i8, ptr %src, i32 44
  %7 = ptrtoint ptr %rec.sroa.12.0.src.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %7)
  %rec.sroa.12.0.copyload = load i8, ptr %rec.sroa.12.0.src.sroa_idx, align 4
  %rec.sroa.13.0.src.sroa_idx = getelementptr inbounds i8, ptr %src, i32 45
  %8 = ptrtoint ptr %rec.sroa.13.0.src.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %rec.sroa.13.0.copyload = load i8, ptr %rec.sroa.13.0.src.sroa_idx, align 1
  %rec.sroa.14.0.src.sroa_idx = getelementptr inbounds i8, ptr %src, i32 46
  %9 = ptrtoint ptr %rec.sroa.14.0.src.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %9)
  %rec.sroa.14.0.copyload = load i8, ptr %rec.sroa.14.0.src.sroa_idx, align 2
  %rec.sroa.15.0.src.sroa_idx = getelementptr inbounds i8, ptr %src, i32 47
  %10 = ptrtoint ptr %rec.sroa.15.0.src.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %10)
  %rec.sroa.15.0.copyload = load i8, ptr %rec.sroa.15.0.src.sroa_idx, align 1
  %rec.sroa.16.0.src.sroa_idx = getelementptr inbounds i8, ptr %src, i32 48
  %11 = ptrtoint ptr %rec.sroa.16.0.src.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %11)
  %rec.sroa.16.0.copyload = load i16, ptr %rec.sroa.16.0.src.sroa_idx, align 8
  %rec.sroa.1769.0.src.sroa_idx = getelementptr inbounds i8, ptr %src, i32 52
  %12 = ptrtoint ptr %rec.sroa.1769.0.src.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %12)
  %rec.sroa.1769.0.copyload = load i8, ptr %rec.sroa.1769.0.src.sroa_idx, align 4
  %rec.sroa.18.0.src.sroa_idx = getelementptr inbounds i8, ptr %src, i32 53
  %13 = ptrtoint ptr %rec.sroa.18.0.src.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %13)
  %rec.sroa.18.0.copyload = load i8, ptr %rec.sroa.18.0.src.sroa_idx, align 1
  %rec.sroa.19.0.src.sroa_idx = getelementptr inbounds i8, ptr %src, i32 54
  %14 = ptrtoint ptr %rec.sroa.19.0.src.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %14)
  %rec.sroa.19.0.copyload = load i8, ptr %rec.sroa.19.0.src.sroa_idx, align 2
  %rec.sroa.20.0.src.sroa_idx = getelementptr inbounds i8, ptr %src, i32 55
  %15 = ptrtoint ptr %rec.sroa.20.0.src.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %15)
  %rec.sroa.20.0.copyload = load i8, ptr %rec.sroa.20.0.src.sroa_idx, align 1
  %rec.sroa.21.0.src.sroa_idx = getelementptr inbounds i8, ptr %src, i32 56
  %16 = ptrtoint ptr %rec.sroa.21.0.src.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %16)
  %rec.sroa.21.0.copyload = load i8, ptr %rec.sroa.21.0.src.sroa_idx, align 8
  %rec.sroa.22.0.src.sroa_idx = getelementptr inbounds i8, ptr %src, i32 57
  %17 = ptrtoint ptr %rec.sroa.22.0.src.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %17)
  %rec.sroa.22.0.copyload = load i8, ptr %rec.sroa.22.0.src.sroa_idx, align 1
  %rec.sroa.23.0.src.sroa_idx = getelementptr inbounds i8, ptr %src, i32 58
  %18 = ptrtoint ptr %rec.sroa.23.0.src.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %18)
  %rec.sroa.23.0.copyload = load i8, ptr %rec.sroa.23.0.src.sroa_idx, align 2
  %rec.sroa.24.0.src.sroa_idx = getelementptr inbounds i8, ptr %src, i32 59
  %19 = ptrtoint ptr %rec.sroa.24.0.src.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %19)
  %rec.sroa.24.0.copyload = load i8, ptr %rec.sroa.24.0.src.sroa_idx, align 1
  %rec.sroa.31.0.src.sroa_idx = getelementptr inbounds i8, ptr %src, i32 64
  %20 = getelementptr inbounds %struct.sa_path_rec, ptr %src, i32 0, i32 18
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 49151, i32 %22)
  %cmp.i.i = icmp ugt i32 %22, 49151
  br i1 %cmp.i.i, label %if.end.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i

if.end.i.if.then.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %23 = ptrtoint ptr %rec.sroa.31.0.src.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rec.sroa.31.0.src.sroa_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 49151, i32 %24)
  %cmp1.i.i = icmp ugt i32 %24, 49151
  br i1 %cmp1.i.i, label %lor.lhs.false.i.i.if.then.i.i_crit_edge, label %if.else.i.i

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %if.end.i.if.then.i.i_crit_edge
  %conv.i.i = zext i32 %22 to i64
  %or.i.i = or i64 %conv.i.i, 1805398092808192
  %25 = ptrtoint ptr %rec.sroa.31.0.src.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rec.sroa.31.0.src.sroa_idx, align 4
  %conv7.i.i = zext i32 %26 to i64
  %or8.i.i = or i64 %conv7.i.i, 1805398092808192
  br label %__ib_copy_path_rec_to_user.exit

if.else.i.i:                                      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv17.i.i = trunc i32 %22 to i16
  %conv20.i.i = trunc i32 %24 to i16
  br label %__ib_copy_path_rec_to_user.exit

__ib_copy_path_rec_to_user.exit:                  ; preds = %if.else.i.i, %if.then.i.i
  %rec.sroa.7.0 = phi i64 [ %or.i.i, %if.then.i.i ], [ %rec.sroa.7.0.copyload, %if.else.i.i ]
  %rec.sroa.9.0 = phi i64 [ %or8.i.i, %if.then.i.i ], [ %rec.sroa.9.0.copyload, %if.else.i.i ]
  %rec.sroa.25.sroa.0.0 = phi i16 [ 0, %if.then.i.i ], [ %conv17.i.i, %if.else.i.i ]
  %conv20.sink.i.i = phi i16 [ 0, %if.then.i.i ], [ %conv20.i.i, %if.else.i.i ]
  %raw_traffic.i.i = getelementptr inbounds %struct.sa_path_rec, ptr %src, i32 0, i32 18, i32 0, i32 2
  %27 = ptrtoint ptr %raw_traffic.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %raw_traffic.i.i, align 4
  %29 = ptrtoint ptr %dst to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 %rec.sroa.0.0.copyload, ptr %dst, align 4
  %rec.sroa.7.0.dst.sroa_idx = getelementptr inbounds i8, ptr %dst, i32 8
  %30 = ptrtoint ptr %rec.sroa.7.0.dst.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 %rec.sroa.7.0, ptr %rec.sroa.7.0.dst.sroa_idx, align 4
  %sgid.i = getelementptr inbounds %struct.ib_user_path_rec, ptr %dst, i32 0, i32 1
  %31 = ptrtoint ptr %sgid.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 8)
  store i64 %rec.sroa.8.0.copyload, ptr %sgid.i, align 4
  %rec.sroa.9.16.sgid.i.sroa_idx = getelementptr inbounds %struct.ib_user_path_rec, ptr %dst, i32 0, i32 1, i32 8
  %32 = ptrtoint ptr %rec.sroa.9.16.sgid.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %32, i32 8)
  store i64 %rec.sroa.9.0, ptr %rec.sroa.9.16.sgid.i.sroa_idx, align 4
  %dlid.i = getelementptr inbounds %struct.ib_user_path_rec, ptr %dst, i32 0, i32 2
  %33 = ptrtoint ptr %dlid.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %rec.sroa.25.sroa.0.0, ptr %dlid.i, align 4
  %slid.i = getelementptr inbounds %struct.ib_user_path_rec, ptr %dst, i32 0, i32 3
  %34 = ptrtoint ptr %slid.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv20.sink.i.i, ptr %slid.i, align 2
  %phi.cast.i = zext i8 %28 to i32
  %raw_traffic.i = getelementptr inbounds %struct.ib_user_path_rec, ptr %dst, i32 0, i32 4
  %35 = ptrtoint ptr %raw_traffic.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %phi.cast.i, ptr %raw_traffic.i, align 4
  %flow_label10.i = getelementptr inbounds %struct.ib_user_path_rec, ptr %dst, i32 0, i32 5
  %36 = ptrtoint ptr %flow_label10.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %rec.sroa.11.0.copyload, ptr %flow_label10.i, align 4
  %hop_limit11.i = getelementptr inbounds %struct.ib_user_path_rec, ptr %dst, i32 0, i32 9
  %37 = ptrtoint ptr %hop_limit11.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %rec.sroa.12.0.copyload, ptr %hop_limit11.i, align 2
  %traffic_class12.i = getelementptr inbounds %struct.ib_user_path_rec, ptr %dst, i32 0, i32 10
  %38 = ptrtoint ptr %traffic_class12.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %rec.sroa.13.0.copyload, ptr %traffic_class12.i, align 1
  %conv13.i = zext i8 %rec.sroa.14.0.copyload to i32
  %reversible14.i = getelementptr inbounds %struct.ib_user_path_rec, ptr %dst, i32 0, i32 6
  %39 = ptrtoint ptr %reversible14.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv13.i, ptr %reversible14.i, align 4
  %numb_path15.i = getelementptr inbounds %struct.ib_user_path_rec, ptr %dst, i32 0, i32 11
  %40 = ptrtoint ptr %numb_path15.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %rec.sroa.15.0.copyload, ptr %numb_path15.i, align 4
  %pkey16.i = getelementptr inbounds %struct.ib_user_path_rec, ptr %dst, i32 0, i32 8
  %41 = ptrtoint ptr %pkey16.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %rec.sroa.16.0.copyload, ptr %pkey16.i, align 4
  %sl17.i = getelementptr inbounds %struct.ib_user_path_rec, ptr %dst, i32 0, i32 12
  %42 = ptrtoint ptr %sl17.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %rec.sroa.1769.0.copyload, ptr %sl17.i, align 1
  %mtu_selector18.i = getelementptr inbounds %struct.ib_user_path_rec, ptr %dst, i32 0, i32 13
  %43 = ptrtoint ptr %mtu_selector18.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %rec.sroa.18.0.copyload, ptr %mtu_selector18.i, align 2
  %conv19.i = zext i8 %rec.sroa.19.0.copyload to i32
  %mtu20.i = getelementptr inbounds %struct.ib_user_path_rec, ptr %dst, i32 0, i32 7
  %44 = ptrtoint ptr %mtu20.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv19.i, ptr %mtu20.i, align 4
  %rate_selector21.i = getelementptr inbounds %struct.ib_user_path_rec, ptr %dst, i32 0, i32 14
  %45 = ptrtoint ptr %rate_selector21.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %rec.sroa.20.0.copyload, ptr %rate_selector21.i, align 1
  %rate22.i = getelementptr inbounds %struct.ib_user_path_rec, ptr %dst, i32 0, i32 15
  %46 = ptrtoint ptr %rate22.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %rec.sroa.21.0.copyload, ptr %rate22.i, align 4
  %packet_life_time23.i = getelementptr inbounds %struct.ib_user_path_rec, ptr %dst, i32 0, i32 17
  %47 = ptrtoint ptr %packet_life_time23.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %rec.sroa.23.0.copyload, ptr %packet_life_time23.i, align 2
  %preference24.i = getelementptr inbounds %struct.ib_user_path_rec, ptr %dst, i32 0, i32 18
  %48 = ptrtoint ptr %preference24.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %rec.sroa.24.0.copyload, ptr %preference24.i, align 1
  br label %cleanup

if.end:                                           ; preds = %entry
  %49 = call ptr @memcpy(ptr %dst, ptr %src, i32 16)
  %sgid.i8 = getelementptr inbounds %struct.ib_user_path_rec, ptr %dst, i32 0, i32 1
  %sgid4.i9 = getelementptr inbounds %struct.sa_path_rec, ptr %src, i32 0, i32 1
  %50 = call ptr @memcpy(ptr %sgid.i8, ptr %sgid4.i9, i32 16)
  %51 = ptrtoint ptr %rec_type to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rec_type, align 4
  %53 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %52, label %if.end.sa_path_get_dlid.exit.i17_crit_edge [
    i32 0, label %if.then.i.i12
    i32 3, label %if.then4.i.i13
  ]

if.end.sa_path_get_dlid.exit.i17_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sa_path_get_dlid.exit.i17

if.then.i.i12:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %54 = getelementptr inbounds %struct.sa_path_rec, ptr %src, i32 0, i32 18
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %54, align 4
  %conv.i.i11 = zext i16 %56 to i32
  br label %sa_path_get_dlid.exit.i17

if.then4.i.i13:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %57 = getelementptr inbounds %struct.sa_path_rec, ptr %src, i32 0, i32 18
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  br label %sa_path_get_dlid.exit.i17

sa_path_get_dlid.exit.i17:                        ; preds = %if.then4.i.i13, %if.then.i.i12, %if.end.sa_path_get_dlid.exit.i17_crit_edge
  %retval.0.i.i14 = phi i32 [ %conv.i.i11, %if.then.i.i12 ], [ %59, %if.then4.i.i13 ], [ 0, %if.end.sa_path_get_dlid.exit.i17_crit_edge ]
  %conv.i15 = trunc i32 %retval.0.i.i14 to i16
  %dlid.i16 = getelementptr inbounds %struct.ib_user_path_rec, ptr %dst, i32 0, i32 2
  %60 = ptrtoint ptr %dlid.i16 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv.i15, ptr %dlid.i16, align 4
  %61 = ptrtoint ptr %rec_type to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rec_type, align 4
  %63 = zext i32 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %62, label %sa_path_get_dlid.exit.i17.sa_path_get_slid.exit.i26_crit_edge [
    i32 0, label %if.then.i64.i20
    i32 3, label %if.then4.i65.i22
  ]

sa_path_get_dlid.exit.i17.sa_path_get_slid.exit.i26_crit_edge: ; preds = %sa_path_get_dlid.exit.i17
  call void @__sanitizer_cov_trace_pc() #6
  br label %sa_path_get_slid.exit.i26

if.then.i64.i20:                                  ; preds = %sa_path_get_dlid.exit.i17
  call void @__sanitizer_cov_trace_pc() #6
  %64 = getelementptr inbounds %struct.sa_path_rec, ptr %src, i32 0, i32 18
  %slid.i.i18 = getelementptr inbounds %struct.sa_path_rec_ib, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %slid.i.i18 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %slid.i.i18, align 2
  %conv.i63.i19 = zext i16 %66 to i32
  br label %sa_path_get_slid.exit.i26

if.then4.i65.i22:                                 ; preds = %sa_path_get_dlid.exit.i17
  call void @__sanitizer_cov_trace_pc() #6
  %slid5.i.i21 = getelementptr inbounds %struct.sa_path_rec, ptr %src, i32 0, i32 18, i32 0, i32 1
  %67 = ptrtoint ptr %slid5.i.i21 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %slid5.i.i21, align 4
  br label %sa_path_get_slid.exit.i26

sa_path_get_slid.exit.i26:                        ; preds = %if.then4.i65.i22, %if.then.i64.i20, %sa_path_get_dlid.exit.i17.sa_path_get_slid.exit.i26_crit_edge
  %retval.0.i66.i23 = phi i32 [ %conv.i63.i19, %if.then.i64.i20 ], [ %68, %if.then4.i65.i22 ], [ 0, %sa_path_get_dlid.exit.i17.sa_path_get_slid.exit.i26_crit_edge ]
  %conv7.i24 = trunc i32 %retval.0.i66.i23 to i16
  %slid.i25 = getelementptr inbounds %struct.ib_user_path_rec, ptr %dst, i32 0, i32 3
  %69 = ptrtoint ptr %slid.i25 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv7.i24, ptr %slid.i25, align 2
  %70 = ptrtoint ptr %rec_type to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rec_type, align 4
  %72 = zext i32 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %71, label %sa_path_get_slid.exit.i26.__ib_copy_path_rec_to_user.exit66_crit_edge [
    i32 0, label %if.then.i68.i28
    i32 3, label %if.then3.i.i30
  ]

sa_path_get_slid.exit.i26.__ib_copy_path_rec_to_user.exit66_crit_edge: ; preds = %sa_path_get_slid.exit.i26
  call void @__sanitizer_cov_trace_pc() #6
  br label %__ib_copy_path_rec_to_user.exit66

if.then.i68.i28:                                  ; preds = %sa_path_get_slid.exit.i26
  call void @__sanitizer_cov_trace_pc() #6
  %raw_traffic.i.i27 = getelementptr inbounds %struct.sa_path_rec, ptr %src, i32 0, i32 18, i32 0, i32 1
  br label %return.sink.split.i.i33

if.then3.i.i30:                                   ; preds = %sa_path_get_slid.exit.i26
  call void @__sanitizer_cov_trace_pc() #6
  %raw_traffic4.i.i29 = getelementptr inbounds %struct.sa_path_rec, ptr %src, i32 0, i32 18, i32 0, i32 2
  br label %return.sink.split.i.i33

return.sink.split.i.i33:                          ; preds = %if.then3.i.i30, %if.then.i68.i28
  %raw_traffic4.sink.i.i31 = phi ptr [ %raw_traffic4.i.i29, %if.then3.i.i30 ], [ %raw_traffic.i.i27, %if.then.i68.i28 ]
  %73 = ptrtoint ptr %raw_traffic4.sink.i.i31 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %raw_traffic4.sink.i.i31, align 4
  %phi.cast.i32 = zext i8 %74 to i32
  br label %__ib_copy_path_rec_to_user.exit66

__ib_copy_path_rec_to_user.exit66:                ; preds = %return.sink.split.i.i33, %sa_path_get_slid.exit.i26.__ib_copy_path_rec_to_user.exit66_crit_edge
  %retval.0.i69.i34 = phi i32 [ 0, %sa_path_get_slid.exit.i26.__ib_copy_path_rec_to_user.exit66_crit_edge ], [ %phi.cast.i32, %return.sink.split.i.i33 ]
  %raw_traffic.i35 = getelementptr inbounds %struct.ib_user_path_rec, ptr %dst, i32 0, i32 4
  %75 = ptrtoint ptr %raw_traffic.i35 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %retval.0.i69.i34, ptr %raw_traffic.i35, align 4
  %flow_label.i36 = getelementptr inbounds %struct.sa_path_rec, ptr %src, i32 0, i32 3
  %76 = ptrtoint ptr %flow_label.i36 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %flow_label.i36, align 8
  %flow_label10.i37 = getelementptr inbounds %struct.ib_user_path_rec, ptr %dst, i32 0, i32 5
  %78 = ptrtoint ptr %flow_label10.i37 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %flow_label10.i37, align 4
  %hop_limit.i38 = getelementptr inbounds %struct.sa_path_rec, ptr %src, i32 0, i32 4
  %79 = ptrtoint ptr %hop_limit.i38 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %hop_limit.i38, align 4
  %hop_limit11.i39 = getelementptr inbounds %struct.ib_user_path_rec, ptr %dst, i32 0, i32 9
  %81 = ptrtoint ptr %hop_limit11.i39 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %hop_limit11.i39, align 2
  %traffic_class.i40 = getelementptr inbounds %struct.sa_path_rec, ptr %src, i32 0, i32 5
  %82 = ptrtoint ptr %traffic_class.i40 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %traffic_class.i40, align 1
  %traffic_class12.i41 = getelementptr inbounds %struct.ib_user_path_rec, ptr %dst, i32 0, i32 10
  %84 = ptrtoint ptr %traffic_class12.i41 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %traffic_class12.i41, align 1
  %reversible.i42 = getelementptr inbounds %struct.sa_path_rec, ptr %src, i32 0, i32 6
  %85 = ptrtoint ptr %reversible.i42 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %reversible.i42, align 2
  %conv13.i43 = zext i8 %86 to i32
  %reversible14.i44 = getelementptr inbounds %struct.ib_user_path_rec, ptr %dst, i32 0, i32 6
  %87 = ptrtoint ptr %reversible14.i44 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %conv13.i43, ptr %reversible14.i44, align 4
  %numb_path.i45 = getelementptr inbounds %struct.sa_path_rec, ptr %src, i32 0, i32 7
  %88 = ptrtoint ptr %numb_path.i45 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %numb_path.i45, align 1
  %numb_path15.i46 = getelementptr inbounds %struct.ib_user_path_rec, ptr %dst, i32 0, i32 11
  %90 = ptrtoint ptr %numb_path15.i46 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %numb_path15.i46, align 4
  %pkey.i47 = getelementptr inbounds %struct.sa_path_rec, ptr %src, i32 0, i32 8
  %91 = ptrtoint ptr %pkey.i47 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %pkey.i47, align 8
  %pkey16.i48 = getelementptr inbounds %struct.ib_user_path_rec, ptr %dst, i32 0, i32 8
  %93 = ptrtoint ptr %pkey16.i48 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %92, ptr %pkey16.i48, align 4
  %sl.i49 = getelementptr inbounds %struct.sa_path_rec, ptr %src, i32 0, i32 10
  %94 = ptrtoint ptr %sl.i49 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %sl.i49, align 4
  %sl17.i50 = getelementptr inbounds %struct.ib_user_path_rec, ptr %dst, i32 0, i32 12
  %96 = ptrtoint ptr %sl17.i50 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %sl17.i50, align 1
  %mtu_selector.i51 = getelementptr inbounds %struct.sa_path_rec, ptr %src, i32 0, i32 11
  %97 = ptrtoint ptr %mtu_selector.i51 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %mtu_selector.i51, align 1
  %mtu_selector18.i52 = getelementptr inbounds %struct.ib_user_path_rec, ptr %dst, i32 0, i32 13
  %99 = ptrtoint ptr %mtu_selector18.i52 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %mtu_selector18.i52, align 2
  %mtu.i53 = getelementptr inbounds %struct.sa_path_rec, ptr %src, i32 0, i32 12
  %100 = ptrtoint ptr %mtu.i53 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %mtu.i53, align 2
  %conv19.i54 = zext i8 %101 to i32
  %mtu20.i55 = getelementptr inbounds %struct.ib_user_path_rec, ptr %dst, i32 0, i32 7
  %102 = ptrtoint ptr %mtu20.i55 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %conv19.i54, ptr %mtu20.i55, align 4
  %rate_selector.i56 = getelementptr inbounds %struct.sa_path_rec, ptr %src, i32 0, i32 13
  %103 = ptrtoint ptr %rate_selector.i56 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %rate_selector.i56, align 1
  %rate_selector21.i57 = getelementptr inbounds %struct.ib_user_path_rec, ptr %dst, i32 0, i32 14
  %105 = ptrtoint ptr %rate_selector21.i57 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %104, ptr %rate_selector21.i57, align 1
  %rate.i58 = getelementptr inbounds %struct.sa_path_rec, ptr %src, i32 0, i32 14
  %106 = ptrtoint ptr %rate.i58 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %rate.i58, align 8
  %rate22.i59 = getelementptr inbounds %struct.ib_user_path_rec, ptr %dst, i32 0, i32 15
  %108 = ptrtoint ptr %rate22.i59 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %107, ptr %rate22.i59, align 4
  %packet_life_time.i60 = getelementptr inbounds %struct.sa_path_rec, ptr %src, i32 0, i32 16
  %109 = ptrtoint ptr %packet_life_time.i60 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %packet_life_time.i60, align 2
  %packet_life_time23.i61 = getelementptr inbounds %struct.ib_user_path_rec, ptr %dst, i32 0, i32 17
  %111 = ptrtoint ptr %packet_life_time23.i61 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %110, ptr %packet_life_time23.i61, align 2
  %preference.i62 = getelementptr inbounds %struct.sa_path_rec, ptr %src, i32 0, i32 17
  %112 = ptrtoint ptr %preference.i62 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %preference.i62, align 1
  %preference24.i63 = getelementptr inbounds %struct.ib_user_path_rec, ptr %dst, i32 0, i32 18
  %114 = ptrtoint ptr %preference24.i63 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %113, ptr %preference24.i63, align 1
  %packet_life_time_selector.i64 = getelementptr inbounds %struct.sa_path_rec, ptr %src, i32 0, i32 15
  %115 = ptrtoint ptr %packet_life_time_selector.i64 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %packet_life_time_selector.i64, align 1
  br label %cleanup

cleanup:                                          ; preds = %__ib_copy_path_rec_to_user.exit66, %__ib_copy_path_rec_to_user.exit
  %.sink = phi i8 [ %116, %__ib_copy_path_rec_to_user.exit66 ], [ %rec.sroa.22.0.copyload, %__ib_copy_path_rec_to_user.exit ]
  %packet_life_time_selector25.i65 = getelementptr inbounds %struct.ib_user_path_rec, ptr %dst, i32 0, i32 16
  %117 = ptrtoint ptr %packet_life_time_selector25.i65 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %.sink, ptr %packet_life_time_selector25.i65, align 1
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ib_copy_path_rec_from_user(ptr noundef %dst, ptr noundef readonly %src) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %dst, i32 0, i32 80)
  %sgid = getelementptr inbounds %struct.ib_user_path_rec, ptr %src, i32 0, i32 1
  %interface_id.i = getelementptr inbounds %struct.ib_user_path_rec, ptr %src, i32 0, i32 1, i32 8
  %1 = ptrtoint ptr %interface_id.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %interface_id.i, align 8
  %shr.mask.i = and i64 %2, -1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 1805398092808192, i64 %shr.mask.i)
  %cmp.i = icmp eq i64 %shr.mask.i, 1805398092808192
  br i1 %cmp.i, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %interface_id.i82 = getelementptr inbounds %struct.anon.158, ptr %src, i32 0, i32 1
  %3 = ptrtoint ptr %interface_id.i82 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %interface_id.i82, align 8
  %shr.mask.i83 = and i64 %4, -1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 1805398092808192, i64 %shr.mask.i83)
  %cmp.i84 = icmp eq i64 %shr.mask.i83, 1805398092808192
  br i1 %cmp.i84, label %lor.lhs.false.if.then_crit_edge, label %if.else

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %rec_type = getelementptr inbounds %struct.sa_path_rec, ptr %dst, i32 0, i32 19
  %5 = ptrtoint ptr %rec_type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %rec_type, align 4
  %6 = ptrtoint ptr %interface_id.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %interface_id.i, align 8
  %conv.i = trunc i64 %7 to i32
  %interface_id.i86 = getelementptr inbounds %struct.anon.158, ptr %src, i32 0, i32 1
  %8 = ptrtoint ptr %interface_id.i86 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %interface_id.i86, align 8
  %conv.i87 = trunc i64 %9 to i32
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  %slid10 = getelementptr inbounds %struct.ib_user_path_rec, ptr %src, i32 0, i32 3
  %10 = ptrtoint ptr %slid10 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %slid10, align 2
  %conv = zext i16 %11 to i32
  %dlid11 = getelementptr inbounds %struct.ib_user_path_rec, ptr %src, i32 0, i32 2
  %12 = ptrtoint ptr %dlid11 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %dlid11, align 4
  %conv12 = zext i16 %13 to i32
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %slid.0 = phi i32 [ %conv.i, %if.then ], [ %conv, %if.else ]
  %dlid.0 = phi i32 [ %conv.i87, %if.then ], [ %conv12, %if.else ]
  %14 = call ptr @memcpy(ptr %dst, ptr %src, i32 16)
  %sgid17 = getelementptr inbounds %struct.sa_path_rec, ptr %dst, i32 0, i32 1
  %15 = call ptr @memcpy(ptr %sgid17, ptr %sgid, i32 16)
  %rec_type.i = getelementptr inbounds %struct.sa_path_rec, ptr %dst, i32 0, i32 19
  %16 = ptrtoint ptr %rec_type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rec_type.i, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %17, label %if.end.sa_path_set_raw_traffic.exit_crit_edge [
    i32 0, label %sa_path_set_dlid.exit.thread
    i32 3, label %sa_path_set_dlid.exit.thread96
  ]

if.end.sa_path_set_raw_traffic.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sa_path_set_raw_traffic.exit

sa_path_set_dlid.exit.thread:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i88 = trunc i32 %dlid.0 to i16
  %19 = getelementptr inbounds %struct.sa_path_rec, ptr %dst, i32 0, i32 18
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i88, ptr %19, align 4
  %conv.i90 = trunc i32 %slid.0 to i16
  %slid1.i = getelementptr inbounds %struct.sa_path_rec_ib, ptr %19, i32 0, i32 1
  %21 = ptrtoint ptr %slid1.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i90, ptr %slid1.i, align 2
  %raw_traffic1.i = getelementptr inbounds %struct.sa_path_rec, ptr %dst, i32 0, i32 18, i32 0, i32 1
  br label %if.end6.sink.split.i

sa_path_set_dlid.exit.thread96:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %22 = getelementptr inbounds %struct.sa_path_rec, ptr %dst, i32 0, i32 18
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %dlid.0, ptr %22, align 4
  %slid6.i = getelementptr inbounds %struct.sa_path_rec, ptr %dst, i32 0, i32 18, i32 0, i32 1
  %24 = ptrtoint ptr %slid6.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %slid.0, ptr %slid6.i, align 4
  %raw_traffic5.i = getelementptr inbounds %struct.sa_path_rec, ptr %dst, i32 0, i32 18, i32 0, i32 2
  br label %if.end6.sink.split.i

if.end6.sink.split.i:                             ; preds = %sa_path_set_dlid.exit.thread96, %sa_path_set_dlid.exit.thread
  %raw_traffic5.sink.i = phi ptr [ %raw_traffic5.i, %sa_path_set_dlid.exit.thread96 ], [ %raw_traffic1.i, %sa_path_set_dlid.exit.thread ]
  %conv2199.in.in = getelementptr inbounds %struct.ib_user_path_rec, ptr %src, i32 0, i32 4
  %25 = ptrtoint ptr %conv2199.in.in to i32
  call void @__asan_load4_noabort(i32 %25)
  %conv2199.in = load i32, ptr %conv2199.in.in, align 4
  %conv2199 = trunc i32 %conv2199.in to i8
  %26 = ptrtoint ptr %raw_traffic5.sink.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv2199, ptr %raw_traffic5.sink.i, align 4
  br label %sa_path_set_raw_traffic.exit

sa_path_set_raw_traffic.exit:                     ; preds = %if.end6.sink.split.i, %if.end.sa_path_set_raw_traffic.exit_crit_edge
  %flow_label = getelementptr inbounds %struct.ib_user_path_rec, ptr %src, i32 0, i32 5
  %27 = ptrtoint ptr %flow_label to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flow_label, align 4
  %flow_label22 = getelementptr inbounds %struct.sa_path_rec, ptr %dst, i32 0, i32 3
  %29 = ptrtoint ptr %flow_label22 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %flow_label22, align 8
  %hop_limit = getelementptr inbounds %struct.ib_user_path_rec, ptr %src, i32 0, i32 9
  %30 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %hop_limit, align 2
  %hop_limit23 = getelementptr inbounds %struct.sa_path_rec, ptr %dst, i32 0, i32 4
  %32 = ptrtoint ptr %hop_limit23 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %hop_limit23, align 4
  %traffic_class = getelementptr inbounds %struct.ib_user_path_rec, ptr %src, i32 0, i32 10
  %33 = ptrtoint ptr %traffic_class to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %traffic_class, align 1
  %traffic_class24 = getelementptr inbounds %struct.sa_path_rec, ptr %dst, i32 0, i32 5
  %35 = ptrtoint ptr %traffic_class24 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %traffic_class24, align 1
  %reversible = getelementptr inbounds %struct.ib_user_path_rec, ptr %src, i32 0, i32 6
  %36 = ptrtoint ptr %reversible to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %reversible, align 4
  %conv25 = trunc i32 %37 to i8
  %reversible26 = getelementptr inbounds %struct.sa_path_rec, ptr %dst, i32 0, i32 6
  %38 = ptrtoint ptr %reversible26 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv25, ptr %reversible26, align 2
  %numb_path = getelementptr inbounds %struct.ib_user_path_rec, ptr %src, i32 0, i32 11
  %39 = ptrtoint ptr %numb_path to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %numb_path, align 4
  %numb_path27 = getelementptr inbounds %struct.sa_path_rec, ptr %dst, i32 0, i32 7
  %41 = ptrtoint ptr %numb_path27 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %numb_path27, align 1
  %pkey = getelementptr inbounds %struct.ib_user_path_rec, ptr %src, i32 0, i32 8
  %42 = ptrtoint ptr %pkey to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %pkey, align 4
  %pkey28 = getelementptr inbounds %struct.sa_path_rec, ptr %dst, i32 0, i32 8
  %44 = ptrtoint ptr %pkey28 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %pkey28, align 8
  %sl = getelementptr inbounds %struct.ib_user_path_rec, ptr %src, i32 0, i32 12
  %45 = ptrtoint ptr %sl to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %sl, align 1
  %sl29 = getelementptr inbounds %struct.sa_path_rec, ptr %dst, i32 0, i32 10
  %47 = ptrtoint ptr %sl29 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %sl29, align 4
  %mtu_selector = getelementptr inbounds %struct.ib_user_path_rec, ptr %src, i32 0, i32 13
  %48 = ptrtoint ptr %mtu_selector to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %mtu_selector, align 2
  %mtu_selector30 = getelementptr inbounds %struct.sa_path_rec, ptr %dst, i32 0, i32 11
  %50 = ptrtoint ptr %mtu_selector30 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %mtu_selector30, align 1
  %mtu = getelementptr inbounds %struct.ib_user_path_rec, ptr %src, i32 0, i32 7
  %51 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mtu, align 4
  %conv31 = trunc i32 %52 to i8
  %mtu32 = getelementptr inbounds %struct.sa_path_rec, ptr %dst, i32 0, i32 12
  %53 = ptrtoint ptr %mtu32 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv31, ptr %mtu32, align 2
  %rate_selector = getelementptr inbounds %struct.ib_user_path_rec, ptr %src, i32 0, i32 14
  %54 = ptrtoint ptr %rate_selector to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %rate_selector, align 1
  %rate_selector33 = getelementptr inbounds %struct.sa_path_rec, ptr %dst, i32 0, i32 13
  %56 = ptrtoint ptr %rate_selector33 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %rate_selector33, align 1
  %rate = getelementptr inbounds %struct.ib_user_path_rec, ptr %src, i32 0, i32 15
  %57 = ptrtoint ptr %rate to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %rate, align 4
  %rate34 = getelementptr inbounds %struct.sa_path_rec, ptr %dst, i32 0, i32 14
  %59 = ptrtoint ptr %rate34 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %rate34, align 8
  %packet_life_time = getelementptr inbounds %struct.ib_user_path_rec, ptr %src, i32 0, i32 17
  %60 = ptrtoint ptr %packet_life_time to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %packet_life_time, align 2
  %packet_life_time35 = getelementptr inbounds %struct.sa_path_rec, ptr %dst, i32 0, i32 16
  %62 = ptrtoint ptr %packet_life_time35 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %packet_life_time35, align 2
  %preference = getelementptr inbounds %struct.ib_user_path_rec, ptr %src, i32 0, i32 18
  %63 = ptrtoint ptr %preference to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %preference, align 1
  %preference36 = getelementptr inbounds %struct.sa_path_rec, ptr %dst, i32 0, i32 17
  %65 = ptrtoint ptr %preference36 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %preference36, align 1
  %packet_life_time_selector = getelementptr inbounds %struct.ib_user_path_rec, ptr %src, i32 0, i32 16
  %66 = ptrtoint ptr %packet_life_time_selector to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %packet_life_time_selector, align 1
  %packet_life_time_selector37 = getelementptr inbounds %struct.sa_path_rec, ptr %dst, i32 0, i32 15
  %68 = ptrtoint ptr %packet_life_time_selector37 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %packet_life_time_selector37, align 1
  %69 = add i32 %17, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %69)
  %70 = icmp ult i32 %69, 2
  br i1 %70, label %if.then.i95, label %sa_path_set_raw_traffic.exit.sa_path_set_dmac_zero.exit_crit_edge

sa_path_set_raw_traffic.exit.sa_path_set_dmac_zero.exit_crit_edge: ; preds = %sa_path_set_raw_traffic.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %sa_path_set_dmac_zero.exit

if.then.i95:                                      ; preds = %sa_path_set_raw_traffic.exit
  call void @__sanitizer_cov_trace_pc() #6
  %71 = getelementptr inbounds %struct.sa_path_rec, ptr %dst, i32 0, i32 18
  %dmac.i = getelementptr inbounds %struct.sa_path_rec_roce, ptr %71, i32 0, i32 1
  %72 = call ptr @memset(ptr %dmac.i, i32 0, i32 6)
  br label %sa_path_set_dmac_zero.exit

sa_path_set_dmac_zero.exit:                       ; preds = %if.then.i95, %sa_path_set_raw_traffic.exit.sa_path_set_dmac_zero.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_query_port(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @__ksymtab_ib_copy_ah_attr_to_user, !1, !"__ksymtab_ib_copy_ah_attr_to_user", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/core/uverbs_marshall.c", i32 94, i32 1}
!2 = !{ptr @__ksymtab_ib_copy_qp_attr_to_user, !3, !"__ksymtab_ib_copy_qp_attr_to_user", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/core/uverbs_marshall.c", i32 134, i32 1}
!4 = !{ptr @__ksymtab_ib_copy_path_rec_to_user, !5, !"__ksymtab_ib_copy_path_rec_to_user", i1 false, i1 false}
!5 = !{!"../drivers/infiniband/core/uverbs_marshall.c", i32 173, i32 1}
!6 = !{ptr @__ksymtab_ib_copy_path_rec_from_user, !7, !"__ksymtab_ib_copy_path_rec_from_user", i1 false, i1 false}
!7 = !{!"../drivers/infiniband/core/uverbs_marshall.c", i32 215, i32 1}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
