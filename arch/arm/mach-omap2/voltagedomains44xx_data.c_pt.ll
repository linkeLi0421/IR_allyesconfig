; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/voltagedomains44xx_data.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/voltagedomains44xx_data.c"
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

@omap443x_vdd_mpu_volt_data = external dso_local global [0 x %struct.omap_volt_data], align 4
@omap4_voltdm_mpu = internal global { %struct.voltagedomain, [60 x i8] } { %struct.voltagedomain { ptr @.str.1, i8 1, %struct.list_head zeroinitializer, ptr @omap4_vc_mpu, ptr @omap4_vdd_mpu_vfsm, ptr @omap4_vp_mpu, ptr null, ptr null, ptr null, ptr @omap4_prm_vcvp_read, ptr @omap4_prm_vcvp_write, ptr @omap4_prm_vcvp_rmw, %union.anon zeroinitializer, ptr null, i32 0, ptr null }, [60 x i8] zeroinitializer }, align 32
@omap443x_vdd_iva_volt_data = external dso_local global [0 x %struct.omap_volt_data], align 4
@omap4_voltdm_iva = internal global { %struct.voltagedomain, [60 x i8] } { %struct.voltagedomain { ptr @.str.2, i8 1, %struct.list_head zeroinitializer, ptr @omap4_vc_iva, ptr @omap4_vdd_iva_vfsm, ptr @omap4_vp_iva, ptr null, ptr null, ptr null, ptr @omap4_prm_vcvp_read, ptr @omap4_prm_vcvp_write, ptr @omap4_prm_vcvp_rmw, %union.anon zeroinitializer, ptr null, i32 0, ptr null }, [60 x i8] zeroinitializer }, align 32
@omap443x_vdd_core_volt_data = external dso_local global [0 x %struct.omap_volt_data], align 4
@omap4_voltdm_core = internal global { %struct.voltagedomain, [60 x i8] } { %struct.voltagedomain { ptr @.str.3, i8 1, %struct.list_head zeroinitializer, ptr @omap4_vc_core, ptr @omap4_vdd_core_vfsm, ptr @omap4_vp_core, ptr null, ptr null, ptr null, ptr @omap4_prm_vcvp_read, ptr @omap4_prm_vcvp_write, ptr @omap4_prm_vcvp_rmw, %union.anon zeroinitializer, ptr null, i32 0, ptr null }, [60 x i8] zeroinitializer }, align 32
@omap446x_vdd_mpu_volt_data = external dso_local global [0 x %struct.omap_volt_data], align 4
@omap446x_vdd_iva_volt_data = external dso_local global [0 x %struct.omap_volt_data], align 4
@omap446x_vdd_core_volt_data = external dso_local global [0 x %struct.omap_volt_data], align 4
@omap4_mpu_vp_data = external dso_local global %struct.omap_vp_param, align 4
@omap4_iva_vp_data = external dso_local global %struct.omap_vp_param, align 4
@omap4_core_vp_data = external dso_local global %struct.omap_vp_param, align 4
@omap4_mpu_vc_data = external dso_local global %struct.omap_vc_param, align 4
@omap4_iva_vc_data = external dso_local global %struct.omap_vc_param, align 4
@omap4_core_vc_data = external dso_local global %struct.omap_vc_param, align 4
@voltagedomains_omap4 = internal global [5 x ptr] [ptr @omap4_voltdm_mpu, ptr @omap4_voltdm_iva, ptr @omap4_voltdm_core, ptr @omap4_voltdm_wkup, ptr null], section ".init.data", align 4
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sys_clkin_ck\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mpu\00", [28 x i8] zeroinitializer }, align 32
@omap4_vc_mpu = external dso_local global %struct.omap_vc_channel, align 4
@omap4_vdd_mpu_vfsm = internal constant { %struct.omap_vfsm_instance, [24 x i8] } { %struct.omap_vfsm_instance { i32 0, i8 56, i8 44 }, [24 x i8] zeroinitializer }, align 32
@omap4_vp_mpu = external dso_local global %struct.omap_vp_instance, align 4
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"iva\00", [28 x i8] zeroinitializer }, align 32
@omap4_vc_iva = external dso_local global %struct.omap_vc_channel, align 4
@omap4_vdd_iva_vfsm = internal constant { %struct.omap_vfsm_instance, [24 x i8] } { %struct.omap_vfsm_instance { i32 0, i8 60, i8 48 }, [24 x i8] zeroinitializer }, align 32
@omap4_vp_iva = external dso_local global %struct.omap_vp_instance, align 4
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@omap4_vc_core = external dso_local global %struct.omap_vc_channel, align 4
@omap4_vdd_core_vfsm = internal constant { %struct.omap_vfsm_instance, [24 x i8] } { %struct.omap_vfsm_instance { i32 0, i8 52, i8 40 }, [24 x i8] zeroinitializer }, align 32
@omap4_vp_core = external dso_local global %struct.omap_vp_instance, align 4
@omap4_voltdm_wkup = internal global { %struct.voltagedomain, [60 x i8] } { %struct.voltagedomain { ptr @.str.4, i8 0, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon zeroinitializer, ptr null, i32 0, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wakeup\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"omap4_voltdm_mpu\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 47, i32 29 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"omap4_voltdm_iva\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 58, i32 29 }
@___asan_gen_.11 = private unnamed_addr constant [18 x i8] c"omap4_voltdm_core\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 69, i32 29 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 92, i32 53 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 48, i32 10 }
@___asan_gen_.20 = private unnamed_addr constant [19 x i8] c"omap4_vdd_mpu_vfsm\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 32, i32 40 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 59, i32 10 }
@___asan_gen_.26 = private unnamed_addr constant [19 x i8] c"omap4_vdd_iva_vfsm\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 37, i32 40 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 70, i32 10 }
@___asan_gen_.32 = private unnamed_addr constant [20 x i8] c"omap4_vdd_core_vfsm\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 42, i32 40 }
@___asan_gen_.35 = private unnamed_addr constant [18 x i8] c"omap4_voltdm_wkup\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 80, i32 29 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private constant [49 x i8] c"../arch/arm/mach-omap2/voltagedomains44xx_data.c\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 81, i32 10 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @omap4_voltdm_mpu, ptr @omap4_voltdm_iva, ptr @omap4_voltdm_core, ptr @.str, ptr @.str.1, ptr @omap4_vdd_mpu_vfsm, ptr @.str.2, ptr @omap4_vdd_iva_vfsm, ptr @.str.3, ptr @omap4_vdd_core_vfsm, ptr @omap4_voltdm_wkup, ptr @.str.4], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_voltdm_mpu to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_voltdm_iva to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_voltdm_core to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_vdd_mpu_vfsm to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_vdd_iva_vfsm to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_vdd_core_vfsm to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_voltdm_wkup to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @omap44xx_voltagedomains_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @omap_rev() #2
  %shr.mask.i = and i32 %call.i, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 1143996416, i32 %shr.mask.i)
  %cmp.i.not = icmp eq i32 %shr.mask.i, 1143996416
  br i1 %cmp.i.not, label %entry.if.end4.sink.split_crit_edge, label %if.else

entry.if.end4.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end4.sink.split

if.else:                                          ; preds = %entry
  %call.i8 = tail call i32 @omap_rev() #2
  %shr.mask.i9 = and i32 %call.i8, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 1147142144, i32 %shr.mask.i9)
  %cmp.i10.not = icmp eq i32 %shr.mask.i9, 1147142144
  br i1 %cmp.i10.not, label %if.else.if.end4.sink.split_crit_edge, label %if.else.if.end4_crit_edge

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end4

if.else.if.end4.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end4.sink.split

if.end4.sink.split:                               ; preds = %if.else.if.end4.sink.split_crit_edge, %entry.if.end4.sink.split_crit_edge
  %omap446x_vdd_mpu_volt_data.sink = phi ptr [ @omap443x_vdd_mpu_volt_data, %entry.if.end4.sink.split_crit_edge ], [ @omap446x_vdd_mpu_volt_data, %if.else.if.end4.sink.split_crit_edge ]
  %omap446x_vdd_iva_volt_data.sink = phi ptr [ @omap443x_vdd_iva_volt_data, %entry.if.end4.sink.split_crit_edge ], [ @omap446x_vdd_iva_volt_data, %if.else.if.end4.sink.split_crit_edge ]
  %omap446x_vdd_core_volt_data.sink = phi ptr [ @omap443x_vdd_core_volt_data, %entry.if.end4.sink.split_crit_edge ], [ @omap446x_vdd_core_volt_data, %if.else.if.end4.sink.split_crit_edge ]
  store ptr %omap446x_vdd_mpu_volt_data.sink, ptr getelementptr inbounds (%struct.voltagedomain, ptr @omap4_voltdm_mpu, i32 0, i32 15), align 4
  store ptr %omap446x_vdd_iva_volt_data.sink, ptr getelementptr inbounds (%struct.voltagedomain, ptr @omap4_voltdm_iva, i32 0, i32 15), align 4
  store ptr %omap446x_vdd_core_volt_data.sink, ptr getelementptr inbounds (%struct.voltagedomain, ptr @omap4_voltdm_core, i32 0, i32 15), align 4
  br label %if.end4

if.end4:                                          ; preds = %if.end4.sink.split, %if.else.if.end4_crit_edge
  store ptr @omap4_mpu_vp_data, ptr getelementptr inbounds (%struct.voltagedomain, ptr @omap4_voltdm_mpu, i32 0, i32 7), align 4
  store ptr @omap4_iva_vp_data, ptr getelementptr inbounds (%struct.voltagedomain, ptr @omap4_voltdm_iva, i32 0, i32 7), align 4
  store ptr @omap4_core_vp_data, ptr getelementptr inbounds (%struct.voltagedomain, ptr @omap4_voltdm_core, i32 0, i32 7), align 4
  store ptr @omap4_mpu_vc_data, ptr getelementptr inbounds (%struct.voltagedomain, ptr @omap4_voltdm_mpu, i32 0, i32 8), align 4
  store ptr @omap4_iva_vc_data, ptr getelementptr inbounds (%struct.voltagedomain, ptr @omap4_voltdm_iva, i32 0, i32 8), align 4
  store ptr @omap4_core_vc_data, ptr getelementptr inbounds (%struct.voltagedomain, ptr @omap4_voltdm_core, i32 0, i32 8), align 4
  %0 = load ptr, ptr @voltagedomains_omap4, align 4
  %tobool5.not12 = icmp eq ptr %0, null
  br i1 %tobool5.not12, label %if.end4.for.end_crit_edge, label %if.end4.for.body_crit_edge

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  br label %for.body

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end4.for.body_crit_edge
  %1 = phi ptr [ %4, %for.body.for.body_crit_edge ], [ %0, %if.end4.for.body_crit_edge ]
  %i.013 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end4.for.body_crit_edge ]
  %sys_clk = getelementptr inbounds %struct.voltagedomain, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %sys_clk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str, ptr %sys_clk, align 4
  %inc = add i32 %i.013, 1
  %arrayidx = getelementptr [5 x ptr], ptr @voltagedomains_omap4, i32 0, i32 %inc
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool5.not = icmp eq ptr %4, null
  br i1 %tobool5.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end4.for.end_crit_edge
  tail call void @voltdm_init(ptr noundef nonnull @voltagedomains_omap4) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @voltdm_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4_prm_vcvp_read(i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4_prm_vcvp_write(i32 noundef, i8 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4_prm_vcvp_rmw(i32 noundef, i32 noundef, i8 noundef zeroext) #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
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
!1 = !{!"../arch/arm/mach-omap2/voltagedomains44xx_data.c", i32 92, i32 53}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/voltagedomains44xx_data.c", i32 48, i32 10}
!4 = !{ptr @omap4_voltdm_mpu, !5, !"omap4_voltdm_mpu", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-omap2/voltagedomains44xx_data.c", i32 47, i32 29}
!6 = !{ptr @omap4_vdd_mpu_vfsm, !7, !"omap4_vdd_mpu_vfsm", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-omap2/voltagedomains44xx_data.c", i32 32, i32 40}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-omap2/voltagedomains44xx_data.c", i32 59, i32 10}
!10 = !{ptr @omap4_voltdm_iva, !11, !"omap4_voltdm_iva", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-omap2/voltagedomains44xx_data.c", i32 58, i32 29}
!12 = !{ptr @omap4_vdd_iva_vfsm, !13, !"omap4_vdd_iva_vfsm", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-omap2/voltagedomains44xx_data.c", i32 37, i32 40}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-omap2/voltagedomains44xx_data.c", i32 70, i32 10}
!16 = !{ptr @omap4_voltdm_core, !17, !"omap4_voltdm_core", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-omap2/voltagedomains44xx_data.c", i32 69, i32 29}
!18 = !{ptr @omap4_vdd_core_vfsm, !19, !"omap4_vdd_core_vfsm", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-omap2/voltagedomains44xx_data.c", i32 42, i32 40}
!20 = !{ptr @voltagedomains_omap4, !21, !"voltagedomains_omap4", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-omap2/voltagedomains44xx_data.c", i32 84, i32 30}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-omap2/voltagedomains44xx_data.c", i32 81, i32 10}
!24 = !{ptr @omap4_voltdm_wkup, !25, !"omap4_voltdm_wkup", i1 false, i1 false}
!25 = !{!"../arch/arm/mach-omap2/voltagedomains44xx_data.c", i32 80, i32 29}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
