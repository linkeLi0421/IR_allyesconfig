; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/marvell/mwifiex/ethtool.c_pt.bc'
source_filename = "../drivers/net/wireless/marvell/mwifiex/ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mwifiex_adapter = type { i8, i32, %struct.mwifiex_iface_comb, %struct.mwifiex_iface_comb, [3 x ptr], i8, ptr, [32 x i8], i32, ptr, ptr, [6 x i8], i32, i32, i8, i16, %struct.wait_queue_head, ptr, %struct.mwifiex_if_ops, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, %struct.work_struct, ptr, %struct.work_struct, ptr, %struct.work_struct, i8, i8, i8, i8, i8, [3 x %struct.mwifiex_bss_prio_tbl], %struct.spinlock, i32, i8, i16, i16, i8, i8, i16, i32, i32, i16, i32, %struct.spinlock, i8, i32, ptr, [2312 x i8], i8, i8, i8, i8, i8, i16, ptr, ptr, %struct.spinlock, i16, %struct.timer_list, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.sk_buff_head, %struct.atomic_t, i32, i16, %struct.mwifiex_802_11d_domain_reg, i16, i32, i16, i16, i16, i16, i8, i8, i8, ptr, i8, %struct.mwifiex_sleep_params, %struct.mwifiex_sleep_period, i16, i32, i8, i16, i16, i16, ptr, i16, i16, i8, i8, i16, i16, i8, i16, i16, i32, %struct.timer_list, %struct.mwifiex_hs_config_param, i8, i8, i16, %struct.wait_queue_head, [2048 x i8], i32, i8, i8, i8, i8, %struct.mwifiex_dbg, [68 x i8], i32, %struct.mwifiex_wait_queue, i8, %struct.spinlock, [3 x i8], i16, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, i8, i8, i8, i8, i8, i8, i8, ptr, i8, i8, %struct.sk_buff_head, i8, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i32, i8, %struct.bus_aggr_params, ptr, i32, %struct.timer_list, i8 }
%struct.mwifiex_iface_comb = type { i8, i8, i8 }
%struct.mwifiex_if_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mwifiex_bss_prio_tbl = type { %struct.list_head, %struct.spinlock, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mwifiex_802_11d_domain_reg = type { [3 x i8], i8, [83 x %struct.ieee80211_country_ie_triplet] }
%struct.ieee80211_country_ie_triplet = type { %union.anon.153 }
%union.anon.153 = type { %struct.anon.154 }
%struct.anon.154 = type { i8, i8, i8 }
%struct.mwifiex_sleep_params = type { i16, i16, i16, i8, i8, i16 }
%struct.mwifiex_sleep_period = type { i16, i16 }
%struct.mwifiex_hs_config_param = type <{ i32, i8, i8 }>
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mwifiex_dbg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [5 x i16], [5 x i16], i16, [5 x i16], i16, [5 x i16], i16, [10 x i32], [10 x i32], [10 x i32], [10 x i32], i8 }
%struct.mwifiex_wait_queue = type { %struct.wait_queue_head, i32 }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.bus_aggr_params = type { i16, i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }

@mwifiex_ethtool_ops = dso_local constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr @mwifiex_ethtool_get_wol, ptr @mwifiex_ethtool_set_wol, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [20 x i8] c"mwifiex_ethtool_ops\00", align 1
@___asan_gen_.2 = private constant [50 x i8] c"../drivers/net/wireless/marvell/mwifiex/ethtool.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 67, i32 26 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @mwifiex_ethtool_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mwifiex_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mwifiex_ethtool_get_wol(ptr nocapture noundef readonly %dev, ptr nocapture noundef %wol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i, align 4
  %2 = inttoptr i32 %1 to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %hs_cfg = getelementptr inbounds %struct.mwifiex_adapter, ptr %4, i32 0, i32 107
  %5 = ptrtoint ptr %hs_cfg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hs_cfg, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %8 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 15, ptr %supported, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %9 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wolopts, align 4
  %or = or i32 %10, 2
  store i32 %or, ptr %wolopts, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %and4 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end3.if.end9_crit_edge, label %if.then6

if.end3.if.end9_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end9

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #4
  %wolopts7 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %11 = ptrtoint ptr %wolopts7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wolopts7, align 4
  %or8 = or i32 %12, 4
  store i32 %or8, ptr %wolopts7, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end3.if.end9_crit_edge
  %and10 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.if.end15_crit_edge, label %if.then12

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end15

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #4
  %wolopts13 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %13 = ptrtoint ptr %wolopts13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wolopts13, align 4
  %or14 = or i32 %14, 8
  store i32 %or14, ptr %wolopts13, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end9.if.end15_crit_edge
  %and16 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %if.then18

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #4
  %wolopts19 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %15 = ptrtoint ptr %wolopts19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wolopts19, align 4
  %or20 = or i32 %16, 1
  store i32 %or20, ptr %wolopts19, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end15.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mwifiex_ethtool_set_wol(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %wol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %0 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wolopts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %tobool.not = icmp ult i32 %1, 16
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  %4 = inttoptr i32 %3 to ptr
  %and2 = and i32 %1, 2
  %and7 = shl nuw nsw i32 %1, 1
  %5 = and i32 %and7, 8
  %and13 = lshr i32 %1, 3
  %and19 = shl nuw nsw i32 %1, 2
  %6 = and i32 %and19, 4
  %7 = or i32 %5, %and2
  %8 = or i32 %7, %and13
  %9 = or i32 %8, %6
  %10 = shl nuw nsw i32 %9, 24
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %4, align 8
  %hs_cfg = getelementptr inbounds %struct.mwifiex_adapter, ptr %12, i32 0, i32 107
  %13 = ptrtoint ptr %hs_cfg to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %10, ptr %hs_cfg, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @mwifiex_ethtool_ops, !1, !"mwifiex_ethtool_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/marvell/mwifiex/ethtool.c", i32 67, i32 26}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
