; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/pm/powerplay/hwmgr/pp_psm.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/pp_psm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pp_hwmgr = type { ptr, i32, i32, i32, i8, i8, i8, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, i32, ptr, i8, [6 x %struct.amd_vce_state], i32, i32, i32, i32, i32, ptr, %struct.phm_platform_descriptor, ptr, ptr, ptr, i8, i32, %struct.phm_dynamic_state_info, ptr, ptr, ptr, i32, %struct.pp_thermal_controller_info, i8, i32, i8, i32, %struct.phm_microcode_version_info, i32, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, [6 x i32], [6 x i32], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.amd_vce_state = type { i32, i32, i32, i32, i8, i8 }
%struct.phm_platform_descriptor = type { [7 x i32], i32, %struct.PP_Clocks, %struct.PP_Clocks, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i16, i32, i8, i16, i32, i32, i32, i32, i8 }
%struct.PP_Clocks = type { i32, i32, i32, i32, i32, i32 }
%struct.phm_dynamic_state_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.phm_clock_and_voltage_limits, %struct.phm_clock_and_voltage_limits, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phm_clock_and_voltage_limits = type { i32, i32, i32, i16, i16, i16, i16 }
%struct.pp_thermal_controller_info = type { i8, i8, i8, i8, %struct.pp_fan_info, %struct.pp_advance_fan_control_parameters }
%struct.pp_fan_info = type { i8, i8, i32, i32 }
%struct.pp_advance_fan_control_parameters = type { i16, i16, i16, i16, i16, i16, i8, i32, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32, i16, i16, i16 }
%struct.phm_microcode_version_info = type { i32, i32, i32, i32 }
%struct.pp_hwmgr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pp_power_state = type { i32, %struct.PP_StateLinkedList, %struct.PP_StateLinkedList, %struct.PP_StateClassificationBlock, %struct.PP_StateValidationBlock, %struct.PP_StatePcieBlock, %struct.PP_StateDisplayBlock, %struct.PP_StateMemroyBlock, %struct.PP_TemperatureRange, %struct.PP_StateSoftwareAlgorithmBlock, %struct.PP_UVD_CLOCKS, %struct.pp_hw_power_state }
%struct.PP_StateLinkedList = type { ptr, ptr }
%struct.PP_StateClassificationBlock = type { i32, i32, i32, i8, i8 }
%struct.PP_StateValidationBlock = type { i8, i8, i8 }
%struct.PP_StatePcieBlock = type { i32 }
%struct.PP_StateDisplayBlock = type { i8, i8, i32, i32, i32, i8 }
%struct.PP_StateMemroyBlock = type { i8, i8, [3 x i8] }
%struct.PP_TemperatureRange = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.PP_StateSoftwareAlgorithmBlock = type { i8, i8 }
%struct.PP_UVD_CLOCKS = type { i32, i32 }
%struct.pp_hw_power_state = type { i32 }

@psm_init_power_state_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 49, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\014amdgpu: Please check whether power state management is supported on this asic\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"psm_init_power_state_table\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/pp_psm.c\00", [38 x i8] zeroinitializer }, align 32
@psm_init_power_state_table._entry_ptr = internal global ptr @psm_init_power_state_table._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.3 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [61 x i8] c"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/pp_psm.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 49, i32 3 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @psm_init_power_state_table._entry, ptr @psm_init_power_state_table._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @psm_init_power_state_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @psm_init_power_state_table(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 30
  %0 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmgr_func, align 4
  %get_num_of_pp_table_entries = getelementptr inbounds %struct.pp_hwmgr_func, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %get_num_of_pp_table_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_num_of_pp_table_entries, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %get_power_state_size = getelementptr inbounds %struct.pp_hwmgr_func, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %get_power_state_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_power_state_size, align 4
  %cmp2 = icmp eq ptr %5, null
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call = tail call i32 %3(ptr noundef %hwmgr) #8
  %num_ps = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 33
  %6 = ptrtoint ptr %num_ps to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call, ptr %num_ps, align 4
  %7 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hwmgr_func, align 4
  %get_power_state_size8 = getelementptr inbounds %struct.pp_hwmgr_func, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %get_power_state_size8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %get_power_state_size8, align 4
  %call9 = tail call i32 %10(ptr noundef %hwmgr) #8
  %add = add i32 %call9, 124
  %ps_size = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 40
  %11 = ptrtoint ptr %ps_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add, ptr %ps_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp10 = icmp eq i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp11 = icmp eq i32 %add, 0
  %or.cond = select i1 %cmp10, i1 true, i1 %cmp11
  br i1 %or.cond, label %do.end, label %if.end14

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  br label %cleanup

if.end14:                                         ; preds = %if.end4
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call, i32 %add) #8
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !15

kcalloc.exit.thread:                              ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %ps148 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 32
  %14 = ptrtoint ptr %ps148 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %ps148, align 4
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end14
  %15 = extractvalue { i32, i1 } %12, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %15, i32 noundef 3520) #12
  %ps = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 32
  %16 = ptrtoint ptr %ps to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call8.i.i, ptr %ps, align 4
  %cmp17 = icmp eq ptr %call8.i.i, null
  br i1 %cmp17, label %if.end7.i.i.cleanup_crit_edge, label %kzalloc.exit.thread

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

kzalloc.exit.thread:                              ; preds = %if.end7.i.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #12
  %request_ps156 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 42
  %17 = ptrtoint ptr %request_ps156 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call9.i.i, ptr %request_ps156, align 4
  %cmp22157 = icmp eq ptr %call9.i.i, null
  br i1 %cmp22157, label %if.then23, label %if.end8.i.i144

if.then23:                                        ; preds = %kzalloc.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ps, align 4
  tail call void @kfree(ptr noundef %19) #8
  %20 = ptrtoint ptr %ps to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %ps, align 4
  br label %cleanup

if.end8.i.i144:                                   ; preds = %kzalloc.exit.thread
  %call9.i.i143 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #12
  %current_ps = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 41
  %21 = ptrtoint ptr %current_ps to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call9.i.i143, ptr %current_ps, align 4
  %cmp29 = icmp eq ptr %call9.i.i143, null
  br i1 %cmp29, label %if.then30, label %for.body.lr.ph

if.then30:                                        ; preds = %if.end8.i.i144
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %request_ps156 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %request_ps156, align 4
  tail call void @kfree(ptr noundef %23) #8
  %24 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ps, align 4
  tail call void @kfree(ptr noundef %25) #8
  %26 = ptrtoint ptr %request_ps156 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %request_ps156, align 4
  %27 = ptrtoint ptr %ps to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %ps, align 4
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end8.i.i144
  %28 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ps, align 4
  %boot_ps = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 43
  %uvd_ps = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 44
  br label %for.body

for.body:                                         ; preds = %if.end57.for.body_crit_edge, %for.body.lr.ph
  %state.0164 = phi ptr [ %29, %for.body.lr.ph ], [ %54, %if.end57.for.body_crit_edge ]
  %i.0163 = phi i32 [ 0, %for.body.lr.ph ], [ %add51, %if.end57.for.body_crit_edge ]
  %30 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hwmgr_func, align 4
  %get_pp_table_entry = getelementptr inbounds %struct.pp_hwmgr_func, ptr %31, i32 0, i32 10
  %32 = ptrtoint ptr %get_pp_table_entry to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %get_pp_table_entry, align 4
  %call39 = tail call i32 %33(ptr noundef %hwmgr, i32 noundef %i.0163, ptr noundef %state.0164) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool.not = icmp eq i32 %call39, 0
  br i1 %tobool.not, label %if.end45, label %if.then40

if.then40:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %request_ps156 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %request_ps156, align 4
  tail call void @kfree(ptr noundef %35) #8
  %36 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ps, align 4
  tail call void @kfree(ptr noundef %37) #8
  %38 = ptrtoint ptr %request_ps156 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %request_ps156, align 4
  %39 = ptrtoint ptr %ps to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %ps, align 4
  br label %cleanup

if.end45:                                         ; preds = %for.body
  %flags = getelementptr inbounds %struct.pp_power_state, ptr %state.0164, i32 0, i32 3, i32 1
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags, align 4
  %and = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool46.not = icmp eq i32 %and, 0
  br i1 %tobool46.not, label %if.end45.if.end50_crit_edge, label %if.then47

if.end45.if.end50_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then47:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %boot_ps to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %state.0164, ptr %boot_ps, align 4
  %43 = ptrtoint ptr %current_ps to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %current_ps, align 4
  %45 = call ptr @memcpy(ptr %44, ptr %state.0164, i32 %add)
  %46 = ptrtoint ptr %request_ps156 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %request_ps156, align 4
  %48 = call ptr @memcpy(ptr %47, ptr %state.0164, i32 %add)
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %if.end45.if.end50_crit_edge
  %add51 = add nuw i32 %i.0163, 1
  %49 = ptrtoint ptr %state.0164 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add51, ptr %state.0164, align 4
  %50 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags, align 4
  %and54 = and i32 %51, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end50.if.end57_crit_edge, label %if.then56

if.end50.if.end57_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then56:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %uvd_ps to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %state.0164, ptr %uvd_ps, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.end50.if.end57_crit_edge
  %53 = ptrtoint ptr %state.0164 to i32
  %add58 = add i32 %add, %53
  %54 = inttoptr i32 %add58 to ptr
  %exitcond.not = icmp eq i32 %add51, %call
  br i1 %exitcond.not, label %if.end57.cleanup_crit_edge, label %if.end57.for.body_crit_edge

if.end57.for.body_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end57.cleanup_crit_edge, %if.then40, %if.then30, %if.then23, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -12, %if.then23 ], [ -12, %if.then30 ], [ -22, %if.then40 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %kcalloc.exit.thread ], [ 0, %if.end57.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @psm_fini_power_state_table(ptr noundef %hwmgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hwmgr, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %ps = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 32
  %0 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.return_crit_edge, label %if.end2

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %current_ps = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 41
  %2 = ptrtoint ptr %current_ps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %current_ps, align 4
  tail call void @kfree(ptr noundef %3) #8
  %request_ps = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 42
  %4 = ptrtoint ptr %request_ps to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %request_ps, align 4
  tail call void @kfree(ptr noundef %5) #8
  %6 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ps, align 4
  tail call void @kfree(ptr noundef %7) #8
  %8 = ptrtoint ptr %request_ps to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %request_ps, align 4
  %9 = ptrtoint ptr %ps to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %ps, align 4
  %10 = ptrtoint ptr %current_ps to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %current_ps, align 4
  br label %return

return:                                           ; preds = %if.end2, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2 ], [ -22, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @psm_set_boot_states(ptr nocapture noundef readonly %hwmgr) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ps = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 32
  %0 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_ps.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 33
  %2 = ptrtoint ptr %num_ps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2.i = icmp sgt i32 %3, 0
  br i1 %cmp2.i, label %for.body.lr.ph.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end
  %ps_size.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 40
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.04.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %state.03.i = phi ptr [ %1, %for.body.lr.ph.i ], [ %9, %if.end.i.for.body.i_crit_edge ]
  %flags.i = getelementptr inbounds %struct.pp_power_state, ptr %state.03.i, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.lr.ph.i10

if.end.i:                                         ; preds = %for.body.i
  %6 = ptrtoint ptr %state.03.i to i32
  %7 = ptrtoint ptr %ps_size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ps_size.i, align 4
  %add.i = add i32 %8, %6
  %9 = inttoptr i32 %add.i to ptr
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph.i10:                               ; preds = %for.body.i
  %10 = ptrtoint ptr %state.03.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state.03.i, align 4
  br label %for.body.i11

for.body.i11:                                     ; preds = %if.end.i16.for.body.i11_crit_edge, %for.body.lr.ph.i10
  %i.015.i = phi i32 [ 0, %for.body.lr.ph.i10 ], [ %inc.i14, %if.end.i16.for.body.i11_crit_edge ]
  %state.014.i = phi ptr [ %1, %for.body.lr.ph.i10 ], [ %22, %if.end.i16.for.body.i11_crit_edge ]
  %12 = ptrtoint ptr %state.014.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state.014.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp1.i = icmp eq i32 %13, %11
  br i1 %cmp1.i, label %if.then.i12, label %if.end.i16

if.then.i12:                                      ; preds = %for.body.i11
  call void @__sanitizer_cov_trace_pc() #10
  %request_ps.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 42
  %14 = ptrtoint ptr %request_ps.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %request_ps.i, align 4
  %16 = ptrtoint ptr %ps_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ps_size.i, align 4
  %18 = call ptr @memcpy(ptr %15, ptr %state.014.i, i32 %17)
  br label %cleanup

if.end.i16:                                       ; preds = %for.body.i11
  %19 = ptrtoint ptr %state.014.i to i32
  %20 = ptrtoint ptr %ps_size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ps_size.i, align 4
  %add.i13 = add i32 %21, %19
  %22 = inttoptr i32 %add.i13 to ptr
  %inc.i14 = add nuw nsw i32 %i.015.i, 1
  %exitcond.not.i15 = icmp eq i32 %inc.i14, %3
  br i1 %exitcond.not.i15, label %if.end.i16.cleanup_crit_edge, label %if.end.i16.for.body.i11_crit_edge

if.end.i16.for.body.i11_crit_edge:                ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i11

if.end.i16.cleanup_crit_edge:                     ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i16.cleanup_crit_edge, %if.then.i12, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then.i12 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end.i16.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @psm_set_performance_states(ptr nocapture noundef readonly %hwmgr) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ps = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 32
  %0 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_ps.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 33
  %2 = ptrtoint ptr %num_ps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2.i = icmp sgt i32 %3, 0
  br i1 %cmp2.i, label %for.body.lr.ph.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end
  %ps_size.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 40
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.04.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %state.03.i = phi ptr [ %1, %for.body.lr.ph.i ], [ %9, %if.end.i.for.body.i_crit_edge ]
  %classification.i = getelementptr inbounds %struct.pp_power_state, ptr %state.03.i, i32 0, i32 3
  %4 = ptrtoint ptr %classification.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %classification.i, align 4
  %and.i = and i32 %5, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.lr.ph.i10

if.end.i:                                         ; preds = %for.body.i
  %6 = ptrtoint ptr %state.03.i to i32
  %7 = ptrtoint ptr %ps_size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ps_size.i, align 4
  %add.i = add i32 %8, %6
  %9 = inttoptr i32 %add.i to ptr
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph.i10:                               ; preds = %for.body.i
  %10 = ptrtoint ptr %state.03.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state.03.i, align 4
  br label %for.body.i11

for.body.i11:                                     ; preds = %if.end.i16.for.body.i11_crit_edge, %for.body.lr.ph.i10
  %i.015.i = phi i32 [ 0, %for.body.lr.ph.i10 ], [ %inc.i14, %if.end.i16.for.body.i11_crit_edge ]
  %state.014.i = phi ptr [ %1, %for.body.lr.ph.i10 ], [ %22, %if.end.i16.for.body.i11_crit_edge ]
  %12 = ptrtoint ptr %state.014.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state.014.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp1.i = icmp eq i32 %13, %11
  br i1 %cmp1.i, label %if.then.i12, label %if.end.i16

if.then.i12:                                      ; preds = %for.body.i11
  call void @__sanitizer_cov_trace_pc() #10
  %request_ps.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 42
  %14 = ptrtoint ptr %request_ps.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %request_ps.i, align 4
  %16 = ptrtoint ptr %ps_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ps_size.i, align 4
  %18 = call ptr @memcpy(ptr %15, ptr %state.014.i, i32 %17)
  br label %cleanup

if.end.i16:                                       ; preds = %for.body.i11
  %19 = ptrtoint ptr %state.014.i to i32
  %20 = ptrtoint ptr %ps_size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ps_size.i, align 4
  %add.i13 = add i32 %21, %19
  %22 = inttoptr i32 %add.i13 to ptr
  %inc.i14 = add nuw nsw i32 %i.015.i, 1
  %exitcond.not.i15 = icmp eq i32 %inc.i14, %3
  br i1 %exitcond.not.i15, label %if.end.i16.cleanup_crit_edge, label %if.end.i16.for.body.i11_crit_edge

if.end.i16.for.body.i11_crit_edge:                ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i11

if.end.i16.cleanup_crit_edge:                     ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i16.cleanup_crit_edge, %if.then.i12, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then.i12 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end.i16.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @psm_set_user_performance_state(ptr nocapture noundef readonly %hwmgr, i32 noundef %label_id, ptr nocapture noundef %state) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ps = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 32
  %0 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_ps = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 33
  %2 = ptrtoint ptr %num_ps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ps, align 4
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp15 = icmp sgt i32 %3, 0
  %ps_size = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 40
  br label %restart_search

restart_search:                                   ; preds = %restart_search.backedge, %if.end
  %label_id.addr.0 = phi i32 [ %label_id, %if.end ], [ 5, %restart_search.backedge ]
  br i1 %cmp15, label %restart_search.for.body_crit_edge, label %restart_search.for.end_crit_edge

restart_search.for.end_crit_edge:                 ; preds = %restart_search
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

restart_search.for.body_crit_edge:                ; preds = %restart_search
  br label %for.body

for.body:                                         ; preds = %if.end4.for.body_crit_edge, %restart_search.for.body_crit_edge
  %i.016 = phi i32 [ %inc, %if.end4.for.body_crit_edge ], [ 0, %restart_search.for.body_crit_edge ]
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %state, align 4
  %classification = getelementptr inbounds %struct.pp_power_state, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %classification to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %classification, align 4
  %and = and i32 %8, %label_id.addr.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end4, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %for.body
  %9 = ptrtoint ptr %6 to i32
  %10 = ptrtoint ptr %ps_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ps_size, align 4
  %add = add i32 %11, %9
  %12 = inttoptr i32 %add to ptr
  %13 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %state, align 4
  %inc = add nuw nsw i32 %i.016, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %if.end4.for.end_crit_edge, label %if.end4.for.body_crit_edge

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end4.for.end_crit_edge, %restart_search.for.end_crit_edge
  %14 = zext i32 %label_id.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %label_id.addr.0, label %for.end.cleanup_crit_edge [
    i32 1, label %for.end.restart_search.backedge_crit_edge
    i32 3, label %for.end.restart_search.backedge_crit_edge21
  ]

for.end.restart_search.backedge_crit_edge21:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %restart_search.backedge

for.end.restart_search.backedge_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %restart_search.backedge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

restart_search.backedge:                          ; preds = %for.end.restart_search.backedge_crit_edge, %for.end.restart_search.backedge_crit_edge21
  br label %restart_search

cleanup:                                          ; preds = %for.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ], [ -22, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @psm_adjust_power_state_dynamic(ptr noundef %hwmgr, i1 noundef zeroext %skip_display_settings, ptr noundef %new_ps) local_unnamed_addr #0 align 64 {
entry:
  %equal.i = alloca i8, align 1
  %workload = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %workload) #8
  %not_vf = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 4
  %0 = ptrtoint ptr %not_vf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %not_vf, align 4, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then:                                          ; preds = %entry
  br i1 %skip_display_settings, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @phm_display_configuration_changed(ptr noundef %hwmgr) #8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %ps = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 32
  %2 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %equal.i) #8
  %4 = ptrtoint ptr %equal.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %equal.i, align 1, !annotation !17
  %cmp.not.i = icmp eq ptr %new_ps, null
  br i1 %cmp.not.i, label %if.else.i, label %if.then4.if.end.i_crit_edge

if.then4.if.end.i_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.else.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %request_ps.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 42
  %5 = ptrtoint ptr %request_ps.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %request_ps.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then4.if.end.i_crit_edge
  %requested.0.i = phi ptr [ %6, %if.else.i ], [ %new_ps, %if.then4.if.end.i_crit_edge ]
  %current_ps.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 41
  %7 = ptrtoint ptr %current_ps.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %current_ps.i, align 4
  %call.i = tail call i32 @phm_apply_state_adjust_rules(ptr noundef %hwmgr, ptr noundef %requested.0.i, ptr noundef %8) #8
  %cmp1.i = icmp eq ptr %8, null
  br i1 %cmp1.i, label %if.end.i.if.end6.thread.i_crit_edge, label %lor.lhs.false.i

if.end.i.if.end6.thread.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.thread.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %hardware.i = getelementptr inbounds %struct.pp_power_state, ptr %8, i32 0, i32 11
  %hardware2.i = getelementptr inbounds %struct.pp_power_state, ptr %requested.0.i, i32 0, i32 11
  %call3.i = call i32 @phm_check_states_equal(ptr noundef %hwmgr, ptr noundef %hardware.i, ptr noundef %hardware2.i, ptr noundef nonnull %equal.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.not.i = icmp eq i32 %call3.i, 0
  br i1 %cmp4.not.i, label %if.end6.i, label %lor.lhs.false.i.if.end6.thread.i_crit_edge

lor.lhs.false.i.if.end6.thread.i_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.thread.i

if.end6.thread.i:                                 ; preds = %lor.lhs.false.i.if.end6.thread.i_crit_edge, %if.end.i.if.end6.thread.i_crit_edge
  %9 = ptrtoint ptr %equal.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %equal.i, align 1
  br label %if.then9.i

if.end6.i:                                        ; preds = %lor.lhs.false.i
  %10 = ptrtoint ptr %equal.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %.pr.i = load i8, ptr %equal.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %tobool.not.i51 = icmp eq i8 %.pr.i, 0
  br i1 %tobool.not.i51, label %if.end6.i.if.then9.i_crit_edge, label %lor.lhs.false7.i

if.end6.i.if.then9.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9.i

lor.lhs.false7.i:                                 ; preds = %if.end6.i
  %call8.i = call zeroext i1 @phm_check_smc_update_required_for_display_configuration(ptr noundef %hwmgr) #8
  br i1 %call8.i, label %lor.lhs.false7.i.if.then9.i_crit_edge, label %lor.lhs.false7.i.power_state_management.exit_crit_edge

lor.lhs.false7.i.power_state_management.exit_crit_edge: ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %power_state_management.exit

lor.lhs.false7.i.if.then9.i_crit_edge:            ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9.i

if.then9.i:                                       ; preds = %lor.lhs.false7.i.if.then9.i_crit_edge, %if.end6.i.if.then9.i_crit_edge, %if.end6.thread.i
  %hardware10.i = getelementptr inbounds %struct.pp_power_state, ptr %8, i32 0, i32 11
  %hardware11.i = getelementptr inbounds %struct.pp_power_state, ptr %requested.0.i, i32 0, i32 11
  %call12.i = call i32 @phm_set_power_state(ptr noundef %hwmgr, ptr noundef %hardware10.i, ptr noundef %hardware11.i) #8
  %11 = ptrtoint ptr %current_ps.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %current_ps.i, align 4
  %request_ps14.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 42
  %13 = ptrtoint ptr %request_ps14.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %request_ps14.i, align 4
  %ps_size.i = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 40
  %15 = ptrtoint ptr %ps_size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ps_size.i, align 4
  %17 = call ptr @memcpy(ptr %12, ptr %14, i32 %16)
  br label %power_state_management.exit

power_state_management.exit:                      ; preds = %if.then9.i, %lor.lhs.false7.i.power_state_management.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %equal.i) #8
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 @phm_apply_clock_adjust_rules(ptr noundef %hwmgr) #8
  br label %if.end6

if.end6:                                          ; preds = %if.else, %power_state_management.exit
  br i1 %skip_display_settings, label %if.end6.if.end11_crit_edge, label %if.then8

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = call i32 @phm_notify_smc_display_config_after_ps_adjustment(ptr noundef %hwmgr) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end6.if.end11_crit_edge, %entry.if.end11_crit_edge
  %request_dpm_level = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 20
  %18 = ptrtoint ptr %request_dpm_level to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %request_dpm_level, align 4
  %call12 = call i32 @phm_force_dpm_levels(ptr noundef %hwmgr, i32 noundef %19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.end11.if.end16_crit_edge

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %request_dpm_level to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %request_dpm_level, align 4
  %dpm_level = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 18
  %22 = ptrtoint ptr %dpm_level to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %dpm_level, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end11.if.end16_crit_edge
  %dpm_level17 = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 18
  %23 = ptrtoint ptr %dpm_level17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dpm_level17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp.not = icmp eq i32 %24, 2
  br i1 %cmp.not, label %if.end16.if.end30_crit_edge, label %if.then18

if.end16.if.end30_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then18:                                        ; preds = %if.end16
  %workload_mask = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 56
  %25 = ptrtoint ptr %workload_mask to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %workload_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  %27 = call i32 @llvm.ctlz.i32(i32 %26, i1 true) #8, !range !18
  %sub.i.op = xor i32 %27, 31
  %28 = select i1 %tobool.not.i, i32 -1, i32 %sub.i.op
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %28)
  %29 = icmp ult i32 %28, 6
  %cond = select i1 %29, i32 %28, i32 0
  %arrayidx = getelementptr %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 58, i32 %cond
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 4
  %32 = ptrtoint ptr %workload to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %workload, align 4
  %power_profile_mode = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 49
  %33 = ptrtoint ptr %power_profile_mode to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %power_profile_mode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %31)
  %cmp22.not = icmp eq i32 %34, %31
  br i1 %cmp22.not, label %if.then18.if.end30_crit_edge, label %land.lhs.true23

if.then18.if.end30_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

land.lhs.true23:                                  ; preds = %if.then18
  %hwmgr_func = getelementptr inbounds %struct.pp_hwmgr, ptr %hwmgr, i32 0, i32 30
  %35 = ptrtoint ptr %hwmgr_func to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hwmgr_func, align 4
  %set_power_profile_mode = getelementptr inbounds %struct.pp_hwmgr_func, ptr %36, i32 0, i32 68
  %37 = ptrtoint ptr %set_power_profile_mode to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %set_power_profile_mode, align 4
  %tobool24.not = icmp eq ptr %38, null
  br i1 %tobool24.not, label %land.lhs.true23.if.end30_crit_edge, label %if.then25

land.lhs.true23.if.end30_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then25:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  %call28 = call i32 %38(ptr noundef %hwmgr, ptr noundef nonnull %workload, i32 noundef 0) #8
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %land.lhs.true23.if.end30_crit_edge, %if.then18.if.end30_crit_edge, %if.end16.if.end30_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %workload) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_display_configuration_changed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_apply_clock_adjust_rules(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_notify_smc_display_config_after_ps_adjustment(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_force_dpm_levels(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_apply_state_adjust_rules(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_check_states_equal(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @phm_check_smc_update_required_for_display_configuration(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phm_set_power_state(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/pp_psm.c", i32 49, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @psm_init_power_state_table._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @psm_init_power_state_table._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i8 0, i8 2}
!17 = !{!"auto-init"}
!18 = !{i32 0, i32 33}
