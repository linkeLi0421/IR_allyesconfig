; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/omap_twl.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/omap_twl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.omap_voltdm_pmic = type { i32, i32, i16, i16, i16, i8, i8, i8, i32, i32, i8, i8, i32, i8, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"motorola,cpcap\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mpu\00", [28 x i8] zeroinitializer }, align 32
@omap4_mpu_pmic = internal global { %struct.omap_voltdm_pmic, [48 x i8] } { %struct.omap_voltdm_pmic { i32 4000, i32 12660, i16 18, i16 85, i16 86, i8 0, i8 1, i8 4, i32 0, i32 2100000, i8 -56, i8 1, i32 3, i8 0, ptr @twl6030_vsel_to_uv, ptr @twl6030_uv_to_vsel }, [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"iva\00", [28 x i8] zeroinitializer }, align 32
@omap4_iva_pmic = internal global { %struct.omap_voltdm_pmic, [48 x i8] } { %struct.omap_voltdm_pmic { i32 4000, i32 12660, i16 18, i16 91, i16 92, i8 0, i8 1, i8 4, i32 0, i32 2100000, i8 -56, i8 1, i32 3, i8 0, ptr @twl6030_vsel_to_uv, ptr @twl6030_uv_to_vsel }, [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@omap4_core_pmic = internal global { %struct.omap_voltdm_pmic, [48 x i8] } { %struct.omap_voltdm_pmic { i32 4000, i32 12660, i16 18, i16 97, i16 98, i8 0, i8 1, i8 4, i32 0, i32 2100000, i8 -56, i8 1, i32 3, i8 0, ptr @twl6030_vsel_to_uv, ptr @twl6030_uv_to_vsel }, [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mpu_iva\00", [24 x i8] zeroinitializer }, align 32
@omap3_mpu_pmic = internal global { %struct.omap_voltdm_pmic, [48 x i8] } { %struct.omap_voltdm_pmic { i32 4000, i32 12500, i16 18, i16 0, i16 0, i8 0, i8 1, i8 4, i32 600000, i32 1450000, i8 -56, i8 1, i32 0, i8 0, ptr @twl4030_vsel_to_uv, ptr @twl4030_uv_to_vsel }, [48 x i8] zeroinitializer }, align 32
@omap3_core_pmic = internal global { %struct.omap_voltdm_pmic, [48 x i8] } { %struct.omap_voltdm_pmic { i32 4000, i32 12500, i16 18, i16 1, i16 0, i8 0, i8 1, i8 4, i32 600000, i32 1450000, i8 -56, i8 1, i32 0, i8 0, ptr @twl4030_vsel_to_uv, ptr @twl4030_uv_to_vsel }, [48 x i8] zeroinitializer }, align 32
@is_offset_valid = internal global { i1, [31 x i8] } zeroinitializer, align 32
@smps_offset = internal global { i8, [31 x i8] } zeroinitializer, align 32
@twl6030_uv_to_vsel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s:OUT OF RANGE! non mapped vsel for %ld Vs max %ld\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"twl6030_uv_to_vsel\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"arch/arm/mach-omap2/omap_twl.c\00", [33 x i8] zeroinitializer }, align 32
@twl6030_uv_to_vsel._entry_ptr = internal global ptr @twl6030_uv_to_vsel._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 58]
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 218, i32 42 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 221, i32 25 }
@___asan_gen_.14 = private unnamed_addr constant [15 x i8] c"omap4_mpu_pmic\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 159, i32 32 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 224, i32 25 }
@___asan_gen_.20 = private unnamed_addr constant [15 x i8] c"omap4_iva_pmic\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 177, i32 32 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 227, i32 25 }
@___asan_gen_.26 = private unnamed_addr constant [16 x i8] c"omap4_core_pmic\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 195, i32 32 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 240, i32 25 }
@___asan_gen_.32 = private unnamed_addr constant [15 x i8] c"omap3_mpu_pmic\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 127, i32 32 }
@___asan_gen_.35 = private unnamed_addr constant [16 x i8] c"omap3_core_pmic\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 143, i32 32 }
@___asan_gen_.38 = private unnamed_addr constant [16 x i8] c"is_offset_valid\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [12 x i8] c"smps_offset\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 40, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private constant [34 x i8] c"../arch/arm/mach-omap2/omap_twl.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 116, i32 3 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @twl6030_uv_to_vsel._entry, ptr @twl6030_uv_to_vsel._entry_ptr, ptr @.str, ptr @.str.1, ptr @omap4_mpu_pmic, ptr @.str.2, ptr @omap4_iva_pmic, ptr @.str.3, ptr @omap4_core_pmic, ptr @.str.4, ptr @omap3_mpu_pmic, ptr @omap3_core_pmic, ptr @is_offset_valid, ptr @smps_offset, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_mpu_pmic to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_iva_pmic to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_core_pmic to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_mpu_pmic to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_core_pmic to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_offset_valid to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smps_offset to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl6030_uv_to_vsel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap4_twl_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @omap_rev() #5
  %and.i = and i32 %call.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 68
  br i1 %cmp.i.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #5
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call ptr @voltdm_lookup(ptr noundef nonnull @.str.1) #5
  %call4 = tail call i32 @omap_voltage_register_pmic(ptr noundef %call3, ptr noundef nonnull @omap4_mpu_pmic) #5
  %call5 = tail call ptr @voltdm_lookup(ptr noundef nonnull @.str.2) #5
  %call6 = tail call i32 @omap_voltage_register_pmic(ptr noundef %call5, ptr noundef nonnull @omap4_iva_pmic) #5
  %call7 = tail call ptr @voltdm_lookup(ptr noundef nonnull @.str.3) #5
  %call8 = tail call i32 @omap_voltage_register_pmic(ptr noundef %call7, ptr noundef nonnull @omap4_core_pmic) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @voltdm_lookup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_voltage_register_pmic(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3_twl_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @omap_rev() #5
  %and.i = and i32 %call.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 52
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call ptr @voltdm_lookup(ptr noundef nonnull @.str.4) #5
  %call2 = tail call i32 @omap_voltage_register_pmic(ptr noundef %call1, ptr noundef nonnull @omap3_mpu_pmic) #5
  %call3 = tail call ptr @voltdm_lookup(ptr noundef nonnull @.str.3) #5
  %call4 = tail call i32 @omap_voltage_register_pmic(ptr noundef %call3, ptr noundef nonnull @omap3_core_pmic) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl6030_vsel_to_uv(i8 noundef zeroext %vsel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %.b20 = load i1, ptr @is_offset_valid, align 1
  br i1 %.b20, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull @smps_offset, i8 noundef zeroext -32, i32 noundef 1) #5
  store i1 true, ptr @is_offset_valid, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %0 = zext i8 %vsel to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %vsel, label %if.end6 [
    i8 0, label %if.end.return_crit_edge
    i8 58, label %return.fold.split
  ]

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end6:                                          ; preds = %if.end
  %conv = zext i8 %vsel to i32
  %1 = load i8, ptr @smps_offset, align 1
  %2 = and i8 %1, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool8.not = icmp eq i8 %2, 0
  %3 = mul nuw nsw i32 %conv, 12660
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %mul11 = add nuw nsw i32 %3, 696340
  br label %return

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %mul16 = add nuw nsw i32 %3, 595040
  br label %return

return.fold.split:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

return:                                           ; preds = %return.fold.split, %if.else, %if.then9, %if.end.return_crit_edge
  %retval.0 = phi i32 [ %mul11, %if.then9 ], [ %mul16, %if.else ], [ 0, %if.end.return_crit_edge ], [ 1350000, %return.fold.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @twl6030_uv_to_vsel(i32 noundef %uv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %.b28 = load i1, ptr @is_offset_valid, align 1
  br i1 %.b28, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull @smps_offset, i8 noundef zeroext -32, i32 noundef 1) #5
  store i1 true, ptr @is_offset_valid, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %uv)
  %tobool1.not = icmp eq i32 %uv, 0
  br i1 %tobool1.not, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end3:                                          ; preds = %if.end
  %.b20.i = load i1, ptr @is_offset_valid, align 1
  br i1 %.b20.i, label %if.end3.if.end.i_crit_edge, label %if.then.i

if.end3.if.end.i_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull @smps_offset, i8 noundef zeroext -32, i32 noundef 1) #5
  store i1 true, ptr @is_offset_valid, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end3.if.end.i_crit_edge
  %0 = load i8, ptr @smps_offset, align 1
  %1 = and i8 %0, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool8.not.i = icmp eq i8 %1, 0
  br i1 %tobool8.not.i, label %twl6030_vsel_to_uv.exit, label %twl6030_vsel_to_uv.exit.thread

twl6030_vsel_to_uv.exit:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1316660, i32 %uv)
  %cmp = icmp ugt i32 %uv, 1316660
  br i1 %cmp, label %if.then5, label %if.else

twl6030_vsel_to_uv.exit.thread:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1417960, i32 %uv)
  %cmp39 = icmp ugt i32 %uv, 1417960
  br i1 %cmp39, label %twl6030_vsel_to_uv.exit.thread.do.end_crit_edge, label %if.then13

twl6030_vsel_to_uv.exit.thread.do.end_crit_edge:  ; preds = %twl6030_vsel_to_uv.exit.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then5:                                         ; preds = %twl6030_vsel_to_uv.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1350000, i32 %uv)
  %cmp6 = icmp eq i32 %uv, 1350000
  br i1 %cmp6, label %if.then5.return_crit_edge, label %if.then5.do.end_crit_edge

if.then5.do.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then5.return_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

do.end:                                           ; preds = %if.then5.do.end_crit_edge, %twl6030_vsel_to_uv.exit.thread.do.end_crit_edge
  %.b20.i29 = load i1, ptr @is_offset_valid, align 1
  br i1 %.b20.i29, label %do.end.if.end.i32_crit_edge, label %if.then.i31

do.end.if.end.i32_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i32

if.then.i31:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i30 = tail call i32 @twl_i2c_read(i8 noundef zeroext 9, ptr noundef nonnull @smps_offset, i8 noundef zeroext -32, i32 noundef 1) #5
  store i1 true, ptr @is_offset_valid, align 1
  br label %if.end.i32

if.end.i32:                                       ; preds = %if.then.i31, %do.end.if.end.i32_crit_edge
  %2 = load i8, ptr @smps_offset, align 1
  %3 = and i8 %2, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool8.not.i33 = icmp eq i8 %3, 0
  %spec.select = select i1 %tobool8.not.i33, i32 1316660, i32 1417960
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %uv, i32 noundef %spec.select) #8
  br label %return

if.then13:                                        ; preds = %twl6030_vsel_to_uv.exit.thread
  call void @__sanitizer_cov_trace_pc() #7
  %sub14 = add nsw i32 %uv, -696341
  %div = udiv i32 %sub14, 12660
  %4 = trunc i32 %div to i8
  %conv16 = add i8 %4, 1
  br label %return

if.else:                                          ; preds = %twl6030_vsel_to_uv.exit
  call void @__sanitizer_cov_trace_pc() #7
  %sub19 = add nsw i32 %uv, -595041
  %div20 = udiv i32 %sub19, 12660
  %5 = trunc i32 %div20 to i8
  %conv22 = add i8 %5, 1
  br label %return

return:                                           ; preds = %if.else, %if.then13, %if.end.i32, %if.then5.return_crit_edge, %if.end.return_crit_edge
  %retval.0 = phi i8 [ 58, %if.end.i32 ], [ %conv16, %if.then13 ], [ %conv22, %if.else ], [ 0, %if.end.return_crit_edge ], [ 58, %if.then5.return_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_read(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @twl4030_vsel_to_uv(i8 noundef zeroext %vsel) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %vsel to i32
  %0 = mul nuw nsw i32 %conv, 12500
  %mul1 = add nuw nsw i32 %0, 600000
  ret i32 %mul1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @twl4030_uv_to_vsel(i32 noundef %uv) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sub1 = add i32 %uv, -587501
  %div = udiv i32 %sub1, 12500
  %conv = trunc i32 %div to i8
  ret i8 %conv
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/omap_twl.c", i32 218, i32 42}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/omap_twl.c", i32 221, i32 25}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-omap2/omap_twl.c", i32 224, i32 25}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-omap2/omap_twl.c", i32 227, i32 25}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-omap2/omap_twl.c", i32 240, i32 25}
!10 = !{ptr @omap4_mpu_pmic, !11, !"omap4_mpu_pmic", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-omap2/omap_twl.c", i32 159, i32 32}
!12 = distinct !{null, !13, !"is_offset_valid", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-omap2/omap_twl.c", i32 39, i32 13}
!14 = !{ptr @smps_offset, !15, !"smps_offset", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-omap2/omap_twl.c", i32 40, i32 11}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-omap2/omap_twl.c", i32 116, i32 3}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @twl6030_uv_to_vsel._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @twl6030_uv_to_vsel._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @omap4_iva_pmic, !23, !"omap4_iva_pmic", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-omap2/omap_twl.c", i32 177, i32 32}
!24 = !{ptr @omap4_core_pmic, !25, !"omap4_core_pmic", i1 false, i1 false}
!25 = !{!"../arch/arm/mach-omap2/omap_twl.c", i32 195, i32 32}
!26 = !{ptr @omap3_mpu_pmic, !27, !"omap3_mpu_pmic", i1 false, i1 false}
!27 = !{!"../arch/arm/mach-omap2/omap_twl.c", i32 127, i32 32}
!28 = !{ptr @omap3_core_pmic, !29, !"omap3_core_pmic", i1 false, i1 false}
!29 = !{!"../arch/arm/mach-omap2/omap_twl.c", i32 143, i32 32}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
