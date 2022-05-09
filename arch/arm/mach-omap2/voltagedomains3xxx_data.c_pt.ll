; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/voltagedomains3xxx_data.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/voltagedomains3xxx_data.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.omap_volt_data = type { i32, i32, i8, i8 }
%struct.voltagedomain = type { ptr, i8, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, ptr, i32, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon = type { ptr }
%struct.omap_vp_param = type { i32, i32 }
%struct.omap_vc_param = type { i32, i32, i32, i32 }
%struct.omap_vc_channel = type { i16, i16, i16, i8, i8, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.omap_vfsm_instance = type { i32, i8, i8 }
%struct.omap_vp_instance = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8 }

@omap36xx_vddmpu_volt_data = external dso_local global [0 x %struct.omap_volt_data], align 4
@omap3_voltdm_mpu = internal global { %struct.voltagedomain, [60 x i8] } { %struct.voltagedomain { ptr @.str.1, i8 1, %struct.list_head zeroinitializer, ptr @omap3_vc_mpu, ptr @omap3_vdd1_vfsm, ptr @omap3_vp_mpu, ptr null, ptr null, ptr null, ptr @omap3_prm_vcvp_read, ptr @omap3_prm_vcvp_write, ptr @omap3_prm_vcvp_rmw, %union.anon zeroinitializer, ptr null, i32 0, ptr null }, [60 x i8] zeroinitializer }, align 32
@omap36xx_vddcore_volt_data = external dso_local global [0 x %struct.omap_volt_data], align 4
@omap3_voltdm_core = internal global { %struct.voltagedomain, [60 x i8] } { %struct.voltagedomain { ptr @.str.2, i8 1, %struct.list_head zeroinitializer, ptr @omap3_vc_core, ptr @omap3_vdd2_vfsm, ptr @omap3_vp_core, ptr null, ptr null, ptr null, ptr @omap3_prm_vcvp_read, ptr @omap3_prm_vcvp_write, ptr @omap3_prm_vcvp_rmw, %union.anon zeroinitializer, ptr null, i32 0, ptr null }, [60 x i8] zeroinitializer }, align 32
@omap34xx_vddmpu_volt_data = external dso_local global [0 x %struct.omap_volt_data], align 4
@omap34xx_vddcore_volt_data = external dso_local global [0 x %struct.omap_volt_data], align 4
@omap3_mpu_vp_data = external dso_local global %struct.omap_vp_param, align 4
@omap3_core_vp_data = external dso_local global %struct.omap_vp_param, align 4
@omap3_mpu_vc_data = external dso_local global %struct.omap_vc_param, align 4
@omap3_core_vc_data = external dso_local global %struct.omap_vc_param, align 4
@voltagedomains_am35xx = internal global [4 x ptr] [ptr @am35xx_voltdm_mpu, ptr @am35xx_voltdm_core, ptr @omap3_voltdm_wkup, ptr null], section ".init.data", align 4
@voltagedomains_omap3 = internal global [4 x ptr] [ptr @omap3_voltdm_mpu, ptr @omap3_voltdm_core, ptr @omap3_voltdm_wkup, ptr null], section ".init.data", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sys_ck\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mpu_iva\00", [24 x i8] zeroinitializer }, align 32
@omap3_vc_mpu = external dso_local global %struct.omap_vc_channel, align 4
@omap3_vdd1_vfsm = internal constant { %struct.omap_vfsm_instance, [24 x i8] } { %struct.omap_vfsm_instance { i32 65535, i8 -112, i8 0 }, [24 x i8] zeroinitializer }, align 32
@omap3_vp_mpu = external dso_local global %struct.omap_vp_instance, align 4
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@omap3_vc_core = external dso_local global %struct.omap_vc_channel, align 4
@omap3_vdd2_vfsm = internal constant { %struct.omap_vfsm_instance, [24 x i8] } { %struct.omap_vfsm_instance { i32 -65536, i8 -112, i8 0 }, [24 x i8] zeroinitializer }, align 32
@omap3_vp_core = external dso_local global %struct.omap_vp_instance, align 4
@am35xx_voltdm_mpu = internal global { %struct.voltagedomain, [60 x i8] } { %struct.voltagedomain { ptr @.str.1, i8 0, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon zeroinitializer, ptr null, i32 0, ptr null }, [60 x i8] zeroinitializer }, align 32
@am35xx_voltdm_core = internal global { %struct.voltagedomain, [60 x i8] } { %struct.voltagedomain { ptr @.str.2, i8 0, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon zeroinitializer, ptr null, i32 0, ptr null }, [60 x i8] zeroinitializer }, align 32
@omap3_voltdm_wkup = internal global { %struct.voltagedomain, [60 x i8] } { %struct.voltagedomain { ptr @.str.3, i8 0, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon zeroinitializer, ptr null, i32 0, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wakeup\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"omap3_voltdm_mpu\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 48, i32 29 }
@___asan_gen_.7 = private unnamed_addr constant [18 x i8] c"omap3_voltdm_core\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 59, i32 29 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 95, i32 53 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 49, i32 10 }
@___asan_gen_.16 = private unnamed_addr constant [16 x i8] c"omap3_vdd1_vfsm\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 38, i32 40 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 60, i32 10 }
@___asan_gen_.22 = private unnamed_addr constant [16 x i8] c"omap3_vdd2_vfsm\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 43, i32 40 }
@___asan_gen_.25 = private unnamed_addr constant [18 x i8] c"am35xx_voltdm_mpu\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 79, i32 29 }
@___asan_gen_.28 = private unnamed_addr constant [19 x i8] c"am35xx_voltdm_core\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 83, i32 29 }
@___asan_gen_.31 = private unnamed_addr constant [18 x i8] c"omap3_voltdm_wkup\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 32, i32 29 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private constant [49 x i8] c"../arch/arm/mach-omap2/voltagedomains3xxx_data.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 33, i32 10 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @omap3_voltdm_mpu, ptr @omap3_voltdm_core, ptr @.str, ptr @.str.1, ptr @omap3_vdd1_vfsm, ptr @.str.2, ptr @omap3_vdd2_vfsm, ptr @am35xx_voltdm_mpu, ptr @am35xx_voltdm_core, ptr @omap3_voltdm_wkup, ptr @.str.3], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_voltdm_mpu to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_voltdm_core to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_vdd1_vfsm to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_vdd2_vfsm to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am35xx_voltdm_mpu to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am35xx_voltdm_core to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_voltdm_wkup to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3xxx_voltagedomains_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @omap_rev() #2
  %shr.mask.i = and i32 %call.i, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 909115392, i32 %shr.mask.i)
  %cmp.i.not = icmp eq i32 %shr.mask.i, 909115392
  %omap34xx_vddmpu_volt_data.omap36xx_vddmpu_volt_data = select i1 %cmp.i.not, ptr @omap36xx_vddmpu_volt_data, ptr @omap34xx_vddmpu_volt_data
  %omap34xx_vddcore_volt_data.omap36xx_vddcore_volt_data = select i1 %cmp.i.not, ptr @omap36xx_vddcore_volt_data, ptr @omap34xx_vddcore_volt_data
  store ptr %omap34xx_vddmpu_volt_data.omap36xx_vddmpu_volt_data, ptr getelementptr inbounds (%struct.voltagedomain, ptr @omap3_voltdm_mpu, i32 0, i32 15), align 4
  store ptr %omap34xx_vddcore_volt_data.omap36xx_vddcore_volt_data, ptr getelementptr inbounds (%struct.voltagedomain, ptr @omap3_voltdm_core, i32 0, i32 15), align 4
  store ptr @omap3_mpu_vp_data, ptr getelementptr inbounds (%struct.voltagedomain, ptr @omap3_voltdm_mpu, i32 0, i32 7), align 4
  store ptr @omap3_core_vp_data, ptr getelementptr inbounds (%struct.voltagedomain, ptr @omap3_voltdm_core, i32 0, i32 7), align 4
  store ptr @omap3_mpu_vc_data, ptr getelementptr inbounds (%struct.voltagedomain, ptr @omap3_voltdm_mpu, i32 0, i32 8), align 4
  store ptr @omap3_core_vc_data, ptr getelementptr inbounds (%struct.voltagedomain, ptr @omap3_voltdm_core, i32 0, i32 8), align 4
  %call.i11 = tail call i32 @omap_rev() #2
  %shr.mask.i12 = and i32 %call.i11, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 889192448, i32 %shr.mask.i12)
  %cmp.i13.not = icmp eq i32 %shr.mask.i12, 889192448
  %voltdms.0 = select i1 %cmp.i13.not, ptr @voltagedomains_am35xx, ptr @voltagedomains_omap3
  %0 = ptrtoint ptr %voltdms.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %voltdms.0, align 4
  %tobool6.not15 = icmp eq ptr %1, null
  br i1 %tobool6.not15, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %2 = phi ptr [ %5, %for.body.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %i.016 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %sys_clk = getelementptr inbounds %struct.voltagedomain, ptr %2, i32 0, i32 12
  %3 = ptrtoint ptr %sys_clk to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str, ptr %sys_clk, align 4
  %inc = add i32 %i.016, 1
  %arrayidx = getelementptr ptr, ptr %voltdms.0, i32 %inc
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @voltdm_init(ptr noundef nonnull %voltdms.0) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @voltdm_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3_prm_vcvp_read(i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3_prm_vcvp_write(i32 noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3_prm_vcvp_rmw(i32 noundef, i32 noundef, i8 noundef zeroext) #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/voltagedomains3xxx_data.c", i32 95, i32 53}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/voltagedomains3xxx_data.c", i32 49, i32 10}
!4 = !{ptr @omap3_voltdm_mpu, !5, !"omap3_voltdm_mpu", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-omap2/voltagedomains3xxx_data.c", i32 48, i32 29}
!6 = !{ptr @omap3_vdd1_vfsm, !7, !"omap3_vdd1_vfsm", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-omap2/voltagedomains3xxx_data.c", i32 38, i32 40}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-omap2/voltagedomains3xxx_data.c", i32 60, i32 10}
!10 = !{ptr @omap3_voltdm_core, !11, !"omap3_voltdm_core", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-omap2/voltagedomains3xxx_data.c", i32 59, i32 29}
!12 = !{ptr @omap3_vdd2_vfsm, !13, !"omap3_vdd2_vfsm", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-omap2/voltagedomains3xxx_data.c", i32 43, i32 40}
!14 = !{ptr @voltagedomains_am35xx, !15, !"voltagedomains_am35xx", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-omap2/voltagedomains3xxx_data.c", i32 87, i32 30}
!16 = !{ptr @am35xx_voltdm_mpu, !17, !"am35xx_voltdm_mpu", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-omap2/voltagedomains3xxx_data.c", i32 79, i32 29}
!18 = !{ptr @am35xx_voltdm_core, !19, !"am35xx_voltdm_core", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-omap2/voltagedomains3xxx_data.c", i32 83, i32 29}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-omap2/voltagedomains3xxx_data.c", i32 33, i32 10}
!22 = !{ptr @omap3_voltdm_wkup, !23, !"omap3_voltdm_wkup", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-omap2/voltagedomains3xxx_data.c", i32 32, i32 29}
!24 = !{ptr @voltagedomains_omap3, !25, !"voltagedomains_omap3", i1 false, i1 false}
!25 = !{!"../arch/arm/mach-omap2/voltagedomains3xxx_data.c", i32 70, i32 30}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
