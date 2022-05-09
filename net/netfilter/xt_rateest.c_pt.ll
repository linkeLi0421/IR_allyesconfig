; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_rateest.c_pt.bc'
source_filename = "../net/netfilter/xt_rateest.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.gnet_stats_rate_est64 = type { i64, i64 }
%struct.xt_action_param = type { %union.anon.114, %union.anon.115, ptr, i32, i16, i8 }
%union.anon.114 = type { ptr }
%union.anon.115 = type { ptr }
%struct.xt_rateest_match_info = type { [16 x i8], [16 x i8], i16, i16, i32, i32, i32, i32, [4 x i8], ptr, [4 x i8], ptr, [4 x i8] }
%struct.xt_rateest = type { %struct.gnet_stats_basic_sync, %struct.spinlock, i32, %struct.hlist_node, [16 x i8], %struct.gnet_estimator, %struct.callback_head, ptr, [8 x i8] }
%struct.gnet_stats_basic_sync = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.gnet_estimator = type { i8, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.xt_mtdtor_param = type { ptr, ptr, ptr, i8 }

@xt_rateest_mt_reg = internal global %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"rateest\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @xt_rateest_mt, ptr @xt_rateest_mt_checkentry, ptr @xt_rateest_mt_destroy, ptr null, ptr null, i32 72, i32 56, i32 0, i16 0, i16 0 }, section ".data..read_mostly", align 4
@__UNIQUE_ID_author356 = internal constant [52 x i8] c"xt_rateest.author=Patrick McHardy <kaber@trash.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_file357 = internal constant [41 x i8] c"xt_rateest.file=net/netfilter/xt_rateest\00", section ".modinfo", align 1
@__UNIQUE_ID_license358 = internal constant [23 x i8] c"xt_rateest.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description359 = internal constant [52 x i8] c"xt_rateest.description=xtables rate estimator match\00", section ".modinfo", align 1
@__UNIQUE_ID_alias360 = internal constant [29 x i8] c"xt_rateest.alias=ipt_rateest\00", section ".modinfo", align 1
@__UNIQUE_ID_alias361 = internal constant [30 x i8] c"xt_rateest.alias=ip6t_rateest\00", section ".modinfo", align 1
@__initcall__kmod_xt_rateest__362_152_xt_rateest_mt_init6 = internal global ptr @xt_rateest_mt_init, section ".initcall6.init", align 4
@__exitcall_xt_rateest_mt_fini = internal global ptr @xt_rateest_mt_fini, section ".exitcall.exit", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 1, i64 2, i64 3]
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_alias360, ptr @__UNIQUE_ID_alias361, ptr @__UNIQUE_ID_author356, ptr @__UNIQUE_ID_description359, ptr @__UNIQUE_ID_file357, ptr @__UNIQUE_ID_license358, ptr @__exitcall_xt_rateest_mt_fini, ptr @__initcall__kmod_xt_rateest__362_152_xt_rateest_mt_init6, ptr @xt_rateest_mt_fini], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xt_rateest_mt_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xt_unregister_match(ptr noundef nonnull @xt_rateest_mt_reg) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xt_rateest_mt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_match(ptr noundef nonnull @xt_rateest_mt_reg) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @xt_rateest_mt(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  %sample = alloca %struct.gnet_stats_rate_est64, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sample) #4
  %3 = call ptr @memset(ptr %sample, i32 0, i32 16)
  %est1 = getelementptr inbounds %struct.xt_rateest_match_info, ptr %2, i32 0, i32 9
  %4 = ptrtoint ptr %est1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %est1, align 8
  %rate_est = getelementptr inbounds %struct.xt_rateest, ptr %5, i32 0, i32 7
  %call = call zeroext i1 @gen_estimator_read(ptr noundef %rate_est, ptr noundef nonnull %sample) #4
  %flags = getelementptr inbounds %struct.xt_rateest_match_info, ptr %2, i32 0, i32 2
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags, align 8
  %8 = and i16 %7, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %bps11 = getelementptr inbounds %struct.xt_rateest_match_info, ptr %2, i32 0, i32 4
  %9 = ptrtoint ptr %bps11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bps11, align 4
  %conv2 = zext i32 %10 to i64
  %11 = ptrtoint ptr %sample to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %sample, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %conv2)
  %cmp.not = icmp ugt i64 %12, %conv2
  %13 = trunc i64 %12 to i32
  %extract.t213 = sub i32 %10, %13
  %cond.off0 = select i1 %cmp.not, i32 0, i32 %extract.t213
  %pps18 = getelementptr inbounds %struct.xt_rateest_match_info, ptr %2, i32 0, i32 5
  %14 = ptrtoint ptr %pps18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pps18, align 8
  %conv9 = zext i32 %15 to i64
  %pps = getelementptr inbounds %struct.gnet_stats_rate_est64, ptr %sample, i32 0, i32 1
  %16 = ptrtoint ptr %pps to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %pps, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %conv9)
  %cmp10.not = icmp ugt i64 %17, %conv9
  %18 = trunc i64 %17 to i32
  %extract.t214 = sub i32 %15, %18
  %cond19.off0 = select i1 %cmp10.not, i32 0, i32 %extract.t214
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %sample to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %sample, align 8
  %conv22 = trunc i64 %20 to i32
  %pps23 = getelementptr inbounds %struct.gnet_stats_rate_est64, ptr %sample, i32 0, i32 1
  %21 = ptrtoint ptr %pps23 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %pps23, align 8
  %conv24 = trunc i64 %22 to i32
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %bps1.0 = phi i32 [ %cond.off0, %if.then ], [ %conv22, %if.else ]
  %pps1.0 = phi i32 [ %cond19.off0, %if.then ], [ %conv24, %if.else ]
  %23 = and i16 %7, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool28.not = icmp eq i16 %23, 0
  br i1 %tobool28.not, label %if.else32, label %if.then29

if.then29:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %bps230 = getelementptr inbounds %struct.xt_rateest_match_info, ptr %2, i32 0, i32 6
  %24 = ptrtoint ptr %bps230 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bps230, align 4
  %pps231 = getelementptr inbounds %struct.xt_rateest_match_info, ptr %2, i32 0, i32 7
  %26 = ptrtoint ptr %pps231 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pps231, align 8
  br label %if.end74

if.else32:                                        ; preds = %if.end
  %est2 = getelementptr inbounds %struct.xt_rateest_match_info, ptr %2, i32 0, i32 11
  %28 = ptrtoint ptr %est2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %est2, align 8
  %rate_est33 = getelementptr inbounds %struct.xt_rateest, ptr %29, i32 0, i32 7
  %call34 = call zeroext i1 @gen_estimator_read(ptr noundef %rate_est33, ptr noundef nonnull %sample) #4
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %flags, align 8
  %32 = and i16 %31, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool38.not = icmp eq i16 %32, 0
  br i1 %tobool38.not, label %if.else68, label %if.then39

if.then39:                                        ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #6
  %bps240 = getelementptr inbounds %struct.xt_rateest_match_info, ptr %2, i32 0, i32 6
  %33 = ptrtoint ptr %bps240 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bps240, align 4
  %conv41 = zext i32 %34 to i64
  %35 = ptrtoint ptr %sample to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %sample, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %36, i64 %conv41)
  %cmp43.not = icmp ugt i64 %36, %conv41
  %37 = trunc i64 %36 to i32
  %extract.t = sub i32 %34, %37
  %cond52.off0 = select i1 %cmp43.not, i32 0, i32 %extract.t
  %pps254 = getelementptr inbounds %struct.xt_rateest_match_info, ptr %2, i32 0, i32 7
  %38 = ptrtoint ptr %pps254 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pps254, align 8
  %conv55 = zext i32 %39 to i64
  %pps56 = getelementptr inbounds %struct.gnet_stats_rate_est64, ptr %sample, i32 0, i32 1
  %40 = ptrtoint ptr %pps56 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %pps56, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %41, i64 %conv55)
  %cmp57.not = icmp ugt i64 %41, %conv55
  %42 = trunc i64 %41 to i32
  %extract.t212 = sub i32 %39, %42
  %cond66.off0 = select i1 %cmp57.not, i32 0, i32 %extract.t212
  br label %if.end74

if.else68:                                        ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #6
  %43 = ptrtoint ptr %sample to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %sample, align 8
  %conv70 = trunc i64 %44 to i32
  %pps71 = getelementptr inbounds %struct.gnet_stats_rate_est64, ptr %sample, i32 0, i32 1
  %45 = ptrtoint ptr %pps71 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %pps71, align 8
  %conv72 = trunc i64 %46 to i32
  br label %if.end74

if.end74:                                         ; preds = %if.else68, %if.then39, %if.then29
  %bps2.0 = phi i32 [ %25, %if.then29 ], [ %cond52.off0, %if.then39 ], [ %conv70, %if.else68 ]
  %pps2.0 = phi i32 [ %27, %if.then29 ], [ %cond66.off0, %if.then39 ], [ %conv72, %if.else68 ]
  %mode = getelementptr inbounds %struct.xt_rateest_match_info, ptr %2, i32 0, i32 3
  %47 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %mode, align 2
  %49 = zext i16 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values)
  switch i16 %48, label %if.end74.sw.epilog_crit_edge [
    i16 2, label %sw.bb
    i16 3, label %sw.bb101
    i16 1, label %sw.bb128
  ]

if.end74.sw.epilog_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end74
  %50 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %flags, align 8
  %52 = and i16 %51, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %tobool79.not = icmp eq i16 %52, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %bps1.0, i32 %bps2.0)
  %cmp81 = icmp ult i32 %bps1.0, %bps2.0
  %narrow216 = select i1 %tobool79.not, i1 true, i1 %cmp81
  %53 = and i16 %51, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool91.not = icmp eq i16 %53, 0
  br i1 %tobool91.not, label %sw.bb.sw.epilog_crit_edge, label %if.then92

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then92:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_cmp4(i32 %pps1.0, i32 %pps2.0)
  %cmp93 = icmp ult i32 %pps1.0, %pps2.0
  %and97217 = and i1 %cmp93, %narrow216
  br label %sw.epilog

sw.bb101:                                         ; preds = %if.end74
  %54 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %flags, align 8
  %56 = and i16 %55, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool105.not = icmp eq i16 %56, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %bps1.0, i32 %bps2.0)
  %cmp107 = icmp ugt i32 %bps1.0, %bps2.0
  %narrow = select i1 %tobool105.not, i1 true, i1 %cmp107
  %57 = and i16 %55, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool118.not = icmp eq i16 %57, 0
  br i1 %tobool118.not, label %sw.bb101.sw.epilog_crit_edge, label %if.then119

sw.bb101.sw.epilog_crit_edge:                     ; preds = %sw.bb101
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then119:                                       ; preds = %sw.bb101
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_cmp4(i32 %pps1.0, i32 %pps2.0)
  %cmp120 = icmp ugt i32 %pps1.0, %pps2.0
  %and124215 = and i1 %cmp120, %narrow
  br label %sw.epilog

sw.bb128:                                         ; preds = %if.end74
  %58 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %flags, align 8
  %60 = and i16 %59, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %tobool132.not = icmp eq i16 %60, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %bps1.0, i32 %bps2.0)
  %cmp134 = icmp eq i32 %bps1.0, %bps2.0
  %spec.select = select i1 %tobool132.not, i1 true, i1 %cmp134
  %61 = and i16 %59, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool145.not = icmp eq i16 %61, 0
  br i1 %tobool145.not, label %sw.bb128.sw.epilog_crit_edge, label %if.then146

sw.bb128.sw.epilog_crit_edge:                     ; preds = %sw.bb128
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then146:                                       ; preds = %sw.bb128
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_cmp4(i32 %pps1.0, i32 %pps2.0)
  %cmp147 = icmp eq i32 %pps1.0, %pps2.0
  %and151211 = and i1 %cmp147, %spec.select
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then146, %sw.bb128.sw.epilog_crit_edge, %if.then119, %sw.bb101.sw.epilog_crit_edge, %if.then92, %sw.bb.sw.epilog_crit_edge, %if.end74.sw.epilog_crit_edge
  %ret.3.off0 = phi i1 [ true, %if.end74.sw.epilog_crit_edge ], [ %and151211, %if.then146 ], [ %spec.select, %sw.bb128.sw.epilog_crit_edge ], [ %and124215, %if.then119 ], [ %narrow, %sw.bb101.sw.epilog_crit_edge ], [ %and97217, %if.then92 ], [ %narrow216, %sw.bb.sw.epilog_crit_edge ]
  %62 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %flags, align 8
  %64 = and i16 %63, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %65 = icmp ne i16 %64, 0
  %tobool162 = xor i1 %ret.3.off0, %65
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sample) #4
  ret i1 %tobool162
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xt_rateest_mt_checkentry(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %flags = getelementptr inbounds %struct.xt_rateest_match_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 8
  %4 = and i16 %3, 6
  %and = zext i16 %4 to i32
  %call.i = tail call i32 @__sw_hweight32(i32 noundef %and) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flags, align 8
  %7 = and i16 %6, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool385.not = icmp eq i16 %7, 0
  br i1 %tobool385.not, label %if.end.cleanup_crit_edge, label %if.end387

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end387:                                        ; preds = %if.end
  %mode = getelementptr inbounds %struct.xt_rateest_match_info, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mode, align 2
  %.off = add i16 %9, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %.off)
  %switch = icmp ult i16 %.off, 3
  br i1 %switch, label %sw.epilog, label %if.end387.cleanup_crit_edge

if.end387.cleanup_crit_edge:                      ; preds = %if.end387
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.epilog:                                        ; preds = %if.end387
  %10 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %par, align 4
  %call389 = tail call ptr @xt_rateest_lookup(ptr noundef %11, ptr noundef %1) #4
  %tobool390.not = icmp eq ptr %call389, null
  br i1 %tobool390.not, label %sw.epilog.cleanup_crit_edge, label %if.end392

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end392:                                        ; preds = %sw.epilog
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags, align 8
  %14 = and i16 %13, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool396.not = icmp eq i16 %14, 0
  br i1 %tobool396.not, label %if.end392.if.end404_crit_edge, label %if.then397

if.end392.if.end404_crit_edge:                    ; preds = %if.end392
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end404

if.then397:                                       ; preds = %if.end392
  %15 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %par, align 4
  %name2 = getelementptr inbounds %struct.xt_rateest_match_info, ptr %1, i32 0, i32 1
  %call400 = tail call ptr @xt_rateest_lookup(ptr noundef %16, ptr noundef %name2) #4
  %tobool401.not = icmp eq ptr %call400, null
  br i1 %tobool401.not, label %err2, label %if.then397.if.end404_crit_edge

if.then397.if.end404_crit_edge:                   ; preds = %if.then397
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end404

if.end404:                                        ; preds = %if.then397.if.end404_crit_edge, %if.end392.if.end404_crit_edge
  %est2.0 = phi ptr [ %call400, %if.then397.if.end404_crit_edge ], [ null, %if.end392.if.end404_crit_edge ]
  %est1405 = getelementptr inbounds %struct.xt_rateest_match_info, ptr %1, i32 0, i32 9
  %17 = ptrtoint ptr %est1405 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call389, ptr %est1405, align 8
  %est2406 = getelementptr inbounds %struct.xt_rateest_match_info, ptr %1, i32 0, i32 11
  %18 = ptrtoint ptr %est2406 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %est2.0, ptr %est2406, align 8
  br label %cleanup

err2:                                             ; preds = %if.then397
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %par, align 4
  tail call void @xt_rateest_put(ptr noundef %20, ptr noundef nonnull %call389) #4
  br label %cleanup

cleanup:                                          ; preds = %err2, %if.end404, %sw.epilog.cleanup_crit_edge, %if.end387.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end404 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end387.cleanup_crit_edge ], [ -2, %err2 ], [ -2, %sw.epilog.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xt_rateest_mt_destroy(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtdtor_param, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %est1 = getelementptr inbounds %struct.xt_rateest_match_info, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %est1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %est1, align 8
  tail call void @xt_rateest_put(ptr noundef %3, ptr noundef %5) #4
  %est2 = getelementptr inbounds %struct.xt_rateest_match_info, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %est2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %est2, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %par, align 4
  tail call void @xt_rateest_put(ptr noundef %9, ptr noundef nonnull %7) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gen_estimator_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xt_rateest_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_rateest_put(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @__UNIQUE_ID_author356, !1, !"__UNIQUE_ID_author356", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_rateest.c", i32 147, i32 1}
!2 = !{ptr @__UNIQUE_ID_file357, !3, !"__UNIQUE_ID_file357", i1 false, i1 false}
!3 = !{!"../net/netfilter/xt_rateest.c", i32 148, i32 1}
!4 = !{ptr @__UNIQUE_ID_license358, !3, !"__UNIQUE_ID_license358", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description359, !6, !"__UNIQUE_ID_description359", i1 false, i1 false}
!6 = !{!"../net/netfilter/xt_rateest.c", i32 149, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias360, !8, !"__UNIQUE_ID_alias360", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_rateest.c", i32 150, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias361, !10, !"__UNIQUE_ID_alias361", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_rateest.c", i32 151, i32 1}
!11 = !{ptr @__initcall__kmod_xt_rateest__362_152_xt_rateest_mt_init6, !12, !"__initcall__kmod_xt_rateest__362_152_xt_rateest_mt_init6", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_rateest.c", i32 152, i32 1}
!13 = !{ptr @__exitcall_xt_rateest_mt_fini, !14, !"__exitcall_xt_rateest_mt_fini", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_rateest.c", i32 153, i32 1}
!15 = !{ptr @xt_rateest_mt_reg, !16, !"xt_rateest_mt_reg", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_rateest.c", i32 125, i32 24}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
