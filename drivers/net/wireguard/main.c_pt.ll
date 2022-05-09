; ModuleID = '/llk/IR_all_yes/drivers/net/wireguard/main.c_pt.bc'
source_filename = "../drivers/net/wireguard/main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@__initcall__kmod_wireguard__575_71_wg_mod_init6 = internal global ptr @wg_mod_init, section ".initcall6.init", align 4
@__exitcall_wg_mod_exit = internal global ptr @wg_mod_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file576 = internal constant [47 x i8] c"wireguard.file=drivers/net/wireguard/wireguard\00", section ".modinfo", align 1
@__UNIQUE_ID_license577 = internal constant [25 x i8] c"wireguard.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description578 = internal constant [54 x i8] c"wireguard.description=WireGuard secure network tunnel\00", section ".modinfo", align 1
@__UNIQUE_ID_author579 = internal constant [54 x i8] c"wireguard.author=Jason A. Donenfeld <Jason@zx2c4.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_version580 = internal constant [24 x i8] c"wireguard.version=1.0.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wireguard\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.0.0\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_alias581 = internal constant [36 x i8] c"wireguard.alias=rtnl-link-wireguard\00", section ".modinfo", align 1
@__UNIQUE_ID_alias582 = internal constant [52 x i8] c"wireguard.alias=net-pf-16-proto-16-family-wireguard\00", section ".modinfo", align 1
@wg_mod_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 48, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\016wireguard: WireGuard 1.0.0 loaded. See www.wireguard.com for information.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wg_mod_init\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/net/wireguard/main.c\00", [35 x i8] zeroinitializer }, align 32
@wg_mod_init._entry_ptr = internal global ptr @wg_mod_init._entry, section ".printk_index", align 4
@wg_mod_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 49, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"\016wireguard: Copyright (C) 2015-2019 Jason A. Donenfeld <Jason@zx2c4.com>. All Rights Reserved.\0A\00", [63 x i8] zeroinitializer }, align 32
@wg_mod_init._entry_ptr.8 = internal global ptr @wg_mod_init._entry.6, section ".printk_index", align 4
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 76, i32 1 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 48, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [32 x i8] c"../drivers/net/wireguard/main.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 49, i32 2 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_alias581, ptr @__UNIQUE_ID_alias582, ptr @__UNIQUE_ID_author579, ptr @__UNIQUE_ID_description578, ptr @__UNIQUE_ID_file576, ptr @__UNIQUE_ID_license577, ptr @__UNIQUE_ID_version580, ptr @__exitcall_wg_mod_exit, ptr @__initcall__kmod_wireguard__575_71_wg_mod_init6, ptr @__modver_attr, ptr @wg_mod_exit, ptr @wg_mod_init._entry, ptr @wg_mod_init._entry.6, ptr @wg_mod_init._entry_ptr, ptr @wg_mod_init._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_mod_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_mod_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wg_mod_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @wg_genetlink_uninit() #3
  tail call void @wg_device_uninit() #3
  tail call void @wg_peer_uninit() #3
  tail call void @wg_allowedips_slab_uninit() #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_genetlink_uninit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_device_uninit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_peer_uninit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_allowedips_slab_uninit() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wg_mod_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @wg_allowedips_slab_init() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call zeroext i1 @wg_allowedips_selftest() #3
  br i1 %call1, label %lor.lhs.false, label %if.end.err_peer_crit_edge

if.end.err_peer_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_peer

lor.lhs.false:                                    ; preds = %if.end
  %call2 = tail call zeroext i1 @wg_packet_counter_selftest() #3
  br i1 %call2, label %lor.lhs.false3, label %lor.lhs.false.err_peer_crit_edge

lor.lhs.false.err_peer_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_peer

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call zeroext i1 @wg_ratelimiter_selftest() #3
  br i1 %call4, label %if.end6, label %lor.lhs.false3.err_peer_crit_edge

lor.lhs.false3.err_peer_crit_edge:                ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_peer

if.end6:                                          ; preds = %lor.lhs.false3
  tail call void @wg_noise_init() #3
  %call7 = tail call i32 @wg_peer_init() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end6.err_peer_crit_edge, label %if.end10

if.end6.err_peer_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_peer

if.end10:                                         ; preds = %if.end6
  %call11 = tail call i32 @wg_device_init() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end10.err_device_crit_edge, label %if.end14

if.end10.err_device_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_device

if.end14:                                         ; preds = %if.end10
  %call15 = tail call i32 @wg_genetlink_init() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %err_netlink, label %do.end

do.end:                                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #6
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #6
  br label %cleanup

err_netlink:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @wg_device_uninit() #3
  br label %err_device

err_device:                                       ; preds = %err_netlink, %if.end10.err_device_crit_edge
  %ret.0 = phi i32 [ %call11, %if.end10.err_device_crit_edge ], [ %call15, %err_netlink ]
  tail call void @wg_peer_uninit() #3
  br label %err_peer

err_peer:                                         ; preds = %err_device, %if.end6.err_peer_crit_edge, %lor.lhs.false3.err_peer_crit_edge, %lor.lhs.false.err_peer_crit_edge, %if.end.err_peer_crit_edge
  %ret.1 = phi i32 [ %call7, %if.end6.err_peer_crit_edge ], [ %ret.0, %err_device ], [ -131, %lor.lhs.false3.err_peer_crit_edge ], [ -131, %lor.lhs.false.err_peer_crit_edge ], [ -131, %if.end.err_peer_crit_edge ]
  tail call void @wg_allowedips_slab_uninit() #3
  br label %cleanup

cleanup:                                          ; preds = %err_peer, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ %ret.1, %err_peer ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wg_allowedips_slab_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @wg_allowedips_selftest() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @wg_packet_counter_selftest() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @wg_ratelimiter_selftest() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_noise_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wg_peer_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wg_device_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wg_genetlink_init() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !16, !17, !19, !21, !23, !24, !25, !26, !27, !29, !30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__initcall__kmod_wireguard__575_71_wg_mod_init6, !1, !"__initcall__kmod_wireguard__575_71_wg_mod_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/wireguard/main.c", i32 71, i32 1}
!2 = !{ptr @__exitcall_wg_mod_exit, !3, !"__exitcall_wg_mod_exit", i1 false, i1 false}
!3 = !{!"../drivers/net/wireguard/main.c", i32 72, i32 1}
!4 = !{ptr @__UNIQUE_ID_file576, !5, !"__UNIQUE_ID_file576", i1 false, i1 false}
!5 = !{!"../drivers/net/wireguard/main.c", i32 73, i32 1}
!6 = !{ptr @__UNIQUE_ID_license577, !5, !"__UNIQUE_ID_license577", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description578, !8, !"__UNIQUE_ID_description578", i1 false, i1 false}
!8 = !{!"../drivers/net/wireguard/main.c", i32 74, i32 1}
!9 = !{ptr @__UNIQUE_ID_author579, !10, !"__UNIQUE_ID_author579", i1 false, i1 false}
!10 = !{!"../drivers/net/wireguard/main.c", i32 75, i32 1}
!11 = !{ptr @__UNIQUE_ID_version580, !12, !"__UNIQUE_ID_version580", i1 false, i1 false}
!12 = !{!"../drivers/net/wireguard/main.c", i32 76, i32 1}
!13 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @__modver_attr, !12, !"__modver_attr", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_alias581, !18, !"__UNIQUE_ID_alias581", i1 false, i1 false}
!18 = !{!"../drivers/net/wireguard/main.c", i32 77, i32 1}
!19 = !{ptr @__UNIQUE_ID_alias582, !20, !"__UNIQUE_ID_alias582", i1 false, i1 false}
!20 = !{!"../drivers/net/wireguard/main.c", i32 78, i32 1}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireguard/main.c", i32 48, i32 2}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @wg_mod_init._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @wg_mod_init._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireguard/main.c", i32 49, i32 2}
!29 = !{ptr @wg_mod_init._entry.6, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @wg_mod_init._entry_ptr.8, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
