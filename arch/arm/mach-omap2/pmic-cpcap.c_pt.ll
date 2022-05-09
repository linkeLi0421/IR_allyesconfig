; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/pmic-cpcap.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/pmic-cpcap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.omap_voltdm_pmic = type { i32, i32, i16, i16, i16, i8, i8, i8, i32, i32, i8, i8, i32, i8, ptr, ptr }

@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"motorola,cpcap\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mpu\00", [28 x i8] zeroinitializer }, align 32
@omap443x_max8952_mpu = internal global { %struct.omap_voltdm_pmic, [48 x i8] } { %struct.omap_voltdm_pmic { i32 16000, i32 10000, i16 96, i16 3, i16 3, i8 0, i8 1, i8 4, i32 900000, i32 1400000, i8 -56, i8 0, i32 0, i8 0, ptr @omap_max8952_vsel_to_uv, ptr @omap_max8952_uv_to_vsel }, [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"motorola,droid-bionic\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@omap_cpcap_core = internal global { %struct.omap_voltdm_pmic, [48 x i8] } { %struct.omap_voltdm_pmic { i32 4000, i32 12500, i16 2, i16 0, i16 1, i8 0, i8 1, i8 4, i32 900000, i32 1350000, i8 -56, i8 0, i32 0, i8 0, ptr @omap_cpcap_vsel_to_uv, ptr @omap_cpcap_uv_to_vsel }, [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"iva\00", [28 x i8] zeroinitializer }, align 32
@omap_cpcap_iva = internal global { %struct.omap_voltdm_pmic, [48 x i8] } { %struct.omap_voltdm_pmic { i32 4000, i32 12500, i16 68, i16 0, i16 1, i8 0, i8 1, i8 4, i32 900000, i32 1375000, i8 -56, i8 0, i32 0, i8 0, ptr @omap_cpcap_vsel_to_uv, ptr @omap_cpcap_uv_to_vsel }, [48 x i8] zeroinitializer }, align 32
@omap4_fan_core = internal global { %struct.omap_voltdm_pmic, [48 x i8] } { %struct.omap_voltdm_pmic { i32 4000, i32 12500, i16 74, i16 1, i16 1, i8 0, i8 1, i8 4, i32 850000, i32 1375000, i8 -56, i8 0, i32 0, i8 0, ptr @omap_fan535508_vsel_to_uv, ptr @omap_fan535508_uv_to_vsel }, [48 x i8] zeroinitializer }, align 32
@omap4_fan_iva = internal global { %struct.omap_voltdm_pmic, [48 x i8] } { %struct.omap_voltdm_pmic { i32 4000, i32 12500, i16 72, i16 1, i16 1, i8 0, i8 1, i8 4, i32 850000, i32 1375000, i8 -56, i8 0, i32 0, i8 0, ptr @omap_fan535503_vsel_to_uv, ptr @omap_fan535503_uv_to_vsel }, [48 x i8] zeroinitializer }, align 32
@__initcall__kmod_pmic_cpcap__100_271___cpcap_late_init7 = internal global ptr @__cpcap_late_init, section ".initcall7.init", align 4
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 242, i32 43 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 245, i32 25 }
@___asan_gen_.11 = private unnamed_addr constant [21 x i8] c"omap443x_max8952_mpu\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 114, i32 32 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 248, i32 31 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 249, i32 26 }
@___asan_gen_.20 = private unnamed_addr constant [16 x i8] c"omap_cpcap_core\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 50, i32 32 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 252, i32 26 }
@___asan_gen_.26 = private unnamed_addr constant [15 x i8] c"omap_cpcap_iva\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 67, i32 32 }
@___asan_gen_.29 = private unnamed_addr constant [15 x i8] c"omap4_fan_core\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 203, i32 32 }
@___asan_gen_.32 = private unnamed_addr constant [14 x i8] c"omap4_fan_iva\00", align 1
@___asan_gen_.33 = private constant [36 x i8] c"../arch/arm/mach-omap2/pmic-cpcap.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 221, i32 32 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__cpcap_late_init, ptr @__initcall__kmod_pmic_cpcap__100_271___cpcap_late_init7, ptr @.str, ptr @.str.1, ptr @omap443x_max8952_mpu, ptr @.str.2, ptr @.str.3, ptr @omap_cpcap_core, ptr @.str.4, ptr @omap_cpcap_iva, ptr @omap4_fan_core, ptr @omap4_fan_iva], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap443x_max8952_mpu to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_cpcap_core to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_cpcap_iva to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_fan_core to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_fan_iva to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap4_cpcap_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call ptr @voltdm_lookup(ptr noundef nonnull @.str.1) #5
  %call2 = tail call i32 @omap_voltage_register_pmic(ptr noundef %call1, ptr noundef nonnull @omap443x_max8952_mpu) #5
  %call3 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  %call10 = tail call ptr @voltdm_lookup(ptr noundef nonnull @.str.3) #5
  %omap4_fan_core.omap_cpcap_core = select i1 %tobool4.not, ptr @omap4_fan_core, ptr @omap_cpcap_core
  %omap4_fan_iva.omap_cpcap_iva = select i1 %tobool4.not, ptr @omap4_fan_iva, ptr @omap_cpcap_iva
  %call7 = tail call i32 @omap_voltage_register_pmic(ptr noundef %call10, ptr noundef nonnull %omap4_fan_core.omap_cpcap_core) #5
  %call8 = tail call ptr @voltdm_lookup(ptr noundef nonnull @.str.4) #5
  %call9 = tail call i32 @omap_voltage_register_pmic(ptr noundef %call8, ptr noundef nonnull %omap4_fan_iva.omap_cpcap_iva) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @voltdm_lookup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_voltage_register_pmic(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @__cpcap_late_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @omap_rev() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i.not = icmp eq i32 %call.i, 0
  br i1 %cmp.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @omap4_vc_set_pmic_signaling(i32 noundef 1) #5
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @omap_max8952_vsel_to_uv(i8 noundef zeroext %vsel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i8 @llvm.umin.i8(i8 %vsel, i8 63)
  %conv2 = zext i8 %0 to i32
  %1 = mul nuw nsw i32 %conv2, 10000
  %mul3 = add nuw nsw i32 %1, 770000
  ret i32 %mul3
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @omap_max8952_uv_to_vsel(i32 noundef %uv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 770000, i32 %uv)
  %cmp = icmp ult i32 %uv, 770000
  %0 = tail call i32 @llvm.umin.i32(i32 %uv, i32 1400000)
  %phi.bo = add nsw i32 %0, -760001
  %phi.bo8 = udiv i32 %phi.bo, 10000
  %phi.cast = trunc i32 %phi.bo8 to i8
  %uv.addr.0 = select i1 %cmp, i8 0, i8 %phi.cast
  ret i8 %uv.addr.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @omap_cpcap_vsel_to_uv(i8 noundef zeroext %vsel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i8 @llvm.umin.i8(i8 %vsel, i8 68)
  %conv2 = zext i8 %0 to i32
  %1 = mul nuw nsw i32 %conv2, 12500
  %mul3 = add nuw nsw i32 %1, 600000
  ret i32 %mul3
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @omap_cpcap_uv_to_vsel(i32 noundef %uv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 600000, i32 %uv)
  %cmp = icmp ult i32 %uv, 600000
  %0 = tail call i32 @llvm.umin.i32(i32 %uv, i32 1450000)
  %phi.bo = add nsw i32 %0, -587501
  %phi.bo8 = udiv i32 %phi.bo, 12500
  %phi.cast = trunc i32 %phi.bo8 to i8
  %uv.addr.0 = select i1 %cmp, i8 0, i8 %phi.cast
  ret i8 %uv.addr.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @omap_fan535508_vsel_to_uv(i8 noundef zeroext %vsel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i8 %vsel, 63
  %1 = tail call i8 @llvm.umin.i8(i8 %0, i8 55)
  %conv4 = zext i8 %1 to i32
  %2 = mul nuw nsw i32 %conv4, 12500
  %mul5 = add nuw nsw i32 %2, 750000
  ret i32 %mul5
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @omap_fan535508_uv_to_vsel(i32 noundef %uv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 750000, i32 %uv)
  %cmp = icmp ult i32 %uv, 750000
  br i1 %cmp, label %entry.if.end3_crit_edge, label %if.else

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = tail call i32 @llvm.umin.i32(i32 %uv, i32 1437500)
  %phi.bo = add nsw i32 %0, -737501
  %phi.bo10 = udiv i32 %phi.bo, 12500
  %1 = trunc i32 %phi.bo10 to i8
  %phi.cast = or i8 %1, -64
  br label %if.end3

if.end3:                                          ; preds = %if.else, %entry.if.end3_crit_edge
  %uv.addr.0 = phi i8 [ %phi.cast, %if.else ], [ -64, %entry.if.end3_crit_edge ]
  ret i8 %uv.addr.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @omap_fan535503_vsel_to_uv(i8 noundef zeroext %vsel) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i8 %vsel, 63
  %conv2 = zext i8 %0 to i32
  %1 = mul nuw nsw i32 %conv2, 12500
  %mul3 = add nuw nsw i32 %1, 750000
  ret i32 %mul3
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @omap_fan535503_uv_to_vsel(i32 noundef %uv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 750000, i32 %uv)
  %cmp = icmp ult i32 %uv, 750000
  br i1 %cmp, label %entry.if.end3_crit_edge, label %if.else

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = tail call i32 @llvm.umin.i32(i32 %uv, i32 1537500)
  %phi.bo = add nsw i32 %0, -737501
  %phi.bo10 = udiv i32 %phi.bo, 12500
  %1 = trunc i32 %phi.bo10 to i8
  %phi.cast = or i8 %1, -64
  br label %if.end3

if.end3:                                          ; preds = %if.else, %entry.if.end3_crit_edge
  %uv.addr.0 = phi i8 [ %phi.cast, %if.else ], [ -64, %entry.if.end3_crit_edge ]
  ret i8 %uv.addr.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4_vc_set_pmic_signaling(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/pmic-cpcap.c", i32 242, i32 43}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/pmic-cpcap.c", i32 245, i32 25}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-omap2/pmic-cpcap.c", i32 248, i32 31}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-omap2/pmic-cpcap.c", i32 249, i32 26}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-omap2/pmic-cpcap.c", i32 252, i32 26}
!10 = !{ptr @__initcall__kmod_pmic_cpcap__100_271___cpcap_late_init7, !11, !"__initcall__kmod_pmic_cpcap__100_271___cpcap_late_init7", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-omap2/pmic-cpcap.c", i32 271, i32 1}
!12 = !{ptr @omap443x_max8952_mpu, !13, !"omap443x_max8952_mpu", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-omap2/pmic-cpcap.c", i32 114, i32 32}
!14 = !{ptr @omap_cpcap_core, !15, !"omap_cpcap_core", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-omap2/pmic-cpcap.c", i32 50, i32 32}
!16 = !{ptr @omap_cpcap_iva, !17, !"omap_cpcap_iva", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-omap2/pmic-cpcap.c", i32 67, i32 32}
!18 = !{ptr @omap4_fan_core, !19, !"omap4_fan_core", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-omap2/pmic-cpcap.c", i32 203, i32 32}
!20 = !{ptr @omap4_fan_iva, !21, !"omap4_fan_iva", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-omap2/pmic-cpcap.c", i32 221, i32 32}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
