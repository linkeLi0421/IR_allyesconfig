; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/pinctrl-utils.c_pt.bc'
source_filename = "../drivers/pinctrl/pinctrl-utils.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+pinctrl_utils_reserve_map\22, \22a\22\09"
module asm "\09.weak\09__crc_pinctrl_utils_reserve_map\09\09\09\09"
module asm "\09.long\09__crc_pinctrl_utils_reserve_map\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pinctrl_utils_reserve_map:\09\09\09\09\09"
module asm "\09.asciz \09\22pinctrl_utils_reserve_map\22\09\09\09\09\09"
module asm "__kstrtabns_pinctrl_utils_reserve_map:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pinctrl_utils_add_map_mux\22, \22a\22\09"
module asm "\09.weak\09__crc_pinctrl_utils_add_map_mux\09\09\09\09"
module asm "\09.long\09__crc_pinctrl_utils_add_map_mux\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pinctrl_utils_add_map_mux:\09\09\09\09\09"
module asm "\09.asciz \09\22pinctrl_utils_add_map_mux\22\09\09\09\09\09"
module asm "__kstrtabns_pinctrl_utils_add_map_mux:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pinctrl_utils_add_map_configs\22, \22a\22\09"
module asm "\09.weak\09__crc_pinctrl_utils_add_map_configs\09\09\09\09"
module asm "\09.long\09__crc_pinctrl_utils_add_map_configs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pinctrl_utils_add_map_configs:\09\09\09\09\09"
module asm "\09.asciz \09\22pinctrl_utils_add_map_configs\22\09\09\09\09\09"
module asm "__kstrtabns_pinctrl_utils_add_map_configs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pinctrl_utils_add_config\22, \22a\22\09"
module asm "\09.weak\09__crc_pinctrl_utils_add_config\09\09\09\09"
module asm "\09.long\09__crc_pinctrl_utils_add_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pinctrl_utils_add_config:\09\09\09\09\09"
module asm "\09.asciz \09\22pinctrl_utils_add_config\22\09\09\09\09\09"
module asm "__kstrtabns_pinctrl_utils_add_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pinctrl_utils_free_map\22, \22a\22\09"
module asm "\09.weak\09__crc_pinctrl_utils_free_map\09\09\09\09"
module asm "\09.long\09__crc_pinctrl_utils_free_map\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pinctrl_utils_free_map:\09\09\09\09\09"
module asm "\09.asciz \09\22pinctrl_utils_free_map\22\09\09\09\09\09"
module asm "__kstrtabns_pinctrl_utils_free_map:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pinctrl_map = type { ptr, ptr, i32, ptr, %union.anon.68 }
%union.anon.68 = type { %struct.pinctrl_map_configs }
%struct.pinctrl_map_configs = type { ptr, ptr, i32 }

@pinctrl_utils_reserve_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 44, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"krealloc(map) failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pinctrl_utils_reserve_map\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/pinctrl/pinctrl-utils.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pinctrl_utils_reserve_map._entry_ptr = internal global ptr @pinctrl_utils_reserve_map._entry, section ".printk_index", align 4
@__kstrtab_pinctrl_utils_reserve_map = external dso_local constant [0 x i8], align 1
@__kstrtabns_pinctrl_utils_reserve_map = external dso_local constant [0 x i8], align 1
@__ksymtab_pinctrl_utils_reserve_map = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pinctrl_utils_reserve_map to i32), ptr @__kstrtab_pinctrl_utils_reserve_map, ptr @__kstrtabns_pinctrl_utils_reserve_map }, section "___ksymtab_gpl+pinctrl_utils_reserve_map", align 4
@__kstrtab_pinctrl_utils_add_map_mux = external dso_local constant [0 x i8], align 1
@__kstrtabns_pinctrl_utils_add_map_mux = external dso_local constant [0 x i8], align 1
@__ksymtab_pinctrl_utils_add_map_mux = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pinctrl_utils_add_map_mux to i32), ptr @__kstrtab_pinctrl_utils_add_map_mux, ptr @__kstrtabns_pinctrl_utils_add_map_mux }, section "___ksymtab_gpl+pinctrl_utils_add_map_mux", align 4
@__kstrtab_pinctrl_utils_add_map_configs = external dso_local constant [0 x i8], align 1
@__kstrtabns_pinctrl_utils_add_map_configs = external dso_local constant [0 x i8], align 1
@__ksymtab_pinctrl_utils_add_map_configs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pinctrl_utils_add_map_configs to i32), ptr @__kstrtab_pinctrl_utils_add_map_configs, ptr @__kstrtabns_pinctrl_utils_add_map_configs }, section "___ksymtab_gpl+pinctrl_utils_add_map_configs", align 4
@pinctrl_utils_add_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 110, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"krealloc(configs) failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pinctrl_utils_add_config\00", [39 x i8] zeroinitializer }, align 32
@pinctrl_utils_add_config._entry_ptr = internal global ptr @pinctrl_utils_add_config._entry, section ".printk_index", align 4
@__kstrtab_pinctrl_utils_add_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_pinctrl_utils_add_config = external dso_local constant [0 x i8], align 1
@__ksymtab_pinctrl_utils_add_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pinctrl_utils_add_config to i32), ptr @__kstrtab_pinctrl_utils_add_config, ptr @__kstrtabns_pinctrl_utils_add_config }, section "___ksymtab_gpl+pinctrl_utils_add_config", align 4
@__kstrtab_pinctrl_utils_free_map = external dso_local constant [0 x i8], align 1
@__kstrtabns_pinctrl_utils_free_map = external dso_local constant [0 x i8], align 1
@__ksymtab_pinctrl_utils_free_map = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pinctrl_utils_free_map to i32), ptr @__kstrtab_pinctrl_utils_free_map, ptr @__kstrtabns_pinctrl_utils_free_map }, section "___ksymtab_gpl+pinctrl_utils_free_map", align 4
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 44, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private constant [35 x i8] c"../drivers/pinctrl/pinctrl-utils.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 110, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__ksymtab_pinctrl_utils_add_config, ptr @__ksymtab_pinctrl_utils_add_map_configs, ptr @__ksymtab_pinctrl_utils_add_map_mux, ptr @__ksymtab_pinctrl_utils_free_map, ptr @__ksymtab_pinctrl_utils_reserve_map, ptr @pinctrl_utils_add_config._entry, ptr @pinctrl_utils_add_config._entry_ptr, ptr @pinctrl_utils_reserve_map._entry, ptr @pinctrl_utils_reserve_map._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinctrl_utils_reserve_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinctrl_utils_add_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pinctrl_utils_reserve_map(ptr nocapture noundef readonly %pctldev, ptr nocapture noundef %map, ptr nocapture noundef %reserved_maps, ptr nocapture noundef readonly %num_maps, i32 noundef %reserve) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reserved_maps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reserved_maps, align 4
  %2 = ptrtoint ptr %num_maps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_maps, align 4
  %add = add i32 %3, %reserve
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %1)
  %cmp.not = icmp ugt i32 %add, %1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 28) #5
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %if.end.do.end_crit_edge, label %krealloc_array.exit, !prof !32

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

krealloc_array.exit:                              ; preds = %if.end
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map, align 4
  %8 = extractvalue { i32, i1 } %4, 0
  %call5.i = tail call noalias ptr @krealloc(ptr noundef %7, i32 noundef %8, i32 noundef 3264) #8
  %tobool.not = icmp eq ptr %call5.i, null
  br i1 %tobool.not, label %krealloc_array.exit.do.end_crit_edge, label %if.end2

krealloc_array.exit.do.end_crit_edge:             ; preds = %krealloc_array.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %krealloc_array.exit.do.end_crit_edge, %if.end.do.end_crit_edge
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str) #9
  br label %cleanup

if.end2:                                          ; preds = %krealloc_array.exit
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr %struct.pinctrl_map, ptr %call5.i, i32 %1
  %sub = sub i32 %add, %1
  %mul = mul i32 %sub, 28
  %11 = call ptr @memset(ptr %add.ptr, i32 0, i32 %mul)
  %12 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call5.i, ptr %map, align 4
  %13 = ptrtoint ptr %reserved_maps to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add, ptr %reserved_maps, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2 ], [ -12, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pinctrl_utils_add_map_mux(ptr nocapture readnone %pctldev, ptr nocapture noundef readonly %map, ptr nocapture noundef readonly %reserved_maps, ptr nocapture noundef %num_maps, ptr noundef %group, ptr noundef %function) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %num_maps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_maps, align 4
  %2 = ptrtoint ptr %reserved_maps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reserved_maps, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %do.end, label %if.end21, !prof !32

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 61, i32 noundef 9, ptr noundef null) #5
  br label %return

if.end21:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 4
  %type = getelementptr %struct.pinctrl_map, ptr %5, i32 %1, i32 2
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %type, align 4
  %7 = load ptr, ptr %map, align 4
  %8 = ptrtoint ptr %num_maps to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_maps, align 4
  %data = getelementptr %struct.pinctrl_map, ptr %7, i32 %9, i32 4
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %group, ptr %data, align 4
  %11 = load ptr, ptr %map, align 4
  %12 = load i32, ptr %num_maps, align 4
  %function26 = getelementptr %struct.pinctrl_map, ptr %11, i32 %12, i32 4, i32 0, i32 1
  %13 = ptrtoint ptr %function26 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %function, ptr %function26, align 4
  %14 = load i32, ptr %num_maps, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %num_maps, align 4
  br label %return

return:                                           ; preds = %if.end21, %do.end
  %retval.0 = phi i32 [ -28, %do.end ], [ 0, %if.end21 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pinctrl_utils_add_map_configs(ptr nocapture readnone %pctldev, ptr nocapture noundef readonly %map, ptr nocapture noundef readonly %reserved_maps, ptr nocapture noundef %num_maps, ptr noundef %group, ptr noundef %configs, i32 noundef %num_configs, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %num_maps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_maps, align 4
  %2 = ptrtoint ptr %reserved_maps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reserved_maps, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %do.end, label %if.end21, !prof !32

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 81, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end21:                                         ; preds = %entry
  %mul = shl i32 %num_configs, 2
  %call = tail call ptr @kmemdup(ptr noundef %configs, i32 noundef %mul, i32 noundef 3264) #5
  %tobool22.not = icmp eq ptr %call, null
  br i1 %tobool22.not, label %if.end21.cleanup_crit_edge, label %if.end24

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end24:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 4
  %6 = ptrtoint ptr %num_maps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_maps, align 4
  %type25 = getelementptr %struct.pinctrl_map, ptr %5, i32 %7, i32 2
  %8 = ptrtoint ptr %type25 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %type, ptr %type25, align 4
  %9 = load ptr, ptr %map, align 4
  %10 = load i32, ptr %num_maps, align 4
  %data = getelementptr %struct.pinctrl_map, ptr %9, i32 %10, i32 4
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %group, ptr %data, align 4
  %12 = load ptr, ptr %map, align 4
  %13 = load i32, ptr %num_maps, align 4
  %configs29 = getelementptr %struct.pinctrl_map, ptr %12, i32 %13, i32 4, i32 0, i32 1
  %14 = ptrtoint ptr %configs29 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call, ptr %configs29, align 4
  %15 = load ptr, ptr %map, align 4
  %16 = load i32, ptr %num_maps, align 4
  %num_configs32 = getelementptr %struct.pinctrl_map, ptr %15, i32 %16, i32 4, i32 0, i32 2
  %17 = ptrtoint ptr %num_configs32 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %num_configs, ptr %num_configs32, align 4
  %18 = load i32, ptr %num_maps, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %num_maps, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end21.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -28, %do.end ], [ 0, %if.end24 ], [ -12, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pinctrl_utils_add_config(ptr nocapture noundef readonly %pctldev, ptr nocapture noundef %configs, ptr nocapture noundef %num_configs, i32 noundef %config) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %num_configs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_configs, align 4
  %add = add i32 %1, 1
  %2 = ptrtoint ptr %configs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %configs, align 4
  %mul = shl i32 %add, 2
  %call = tail call noalias ptr @krealloc(ptr noundef %3, i32 noundef %mul, i32 noundef 3264) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.5) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr i32, ptr %call, i32 %1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %config, ptr %arrayidx, align 4
  %7 = ptrtoint ptr %configs to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %configs, align 4
  %8 = ptrtoint ptr %num_configs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %num_configs, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pinctrl_utils_free_map(ptr nocapture readnone %pctldev, ptr noundef %map, i32 noundef %num_maps) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_maps)
  %cmp7.not = icmp eq i32 %num_maps, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.08 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %type = getelementptr %struct.pinctrl_map, ptr %map, i32 %i.08, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %.off = add i32 %1, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %configs = getelementptr %struct.pinctrl_map, ptr %map, i32 %i.08, i32 4, i32 0, i32 1
  %2 = ptrtoint ptr %configs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %configs, align 4
  tail call void @kfree(ptr noundef %3) #5
  br label %for.inc

for.inc:                                          ; preds = %sw.bb, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.08, 1
  %exitcond.not = icmp eq i32 %inc, %num_maps
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @kfree(ptr noundef %map) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(1) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16, !17, !18, !19, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/pinctrl-utils.c", i32 44, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @pinctrl_utils_reserve_map._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @pinctrl_utils_reserve_map._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_pinctrl_utils_reserve_map, !9, !"__ksymtab_pinctrl_utils_reserve_map", i1 false, i1 false}
!9 = !{!"../drivers/pinctrl/pinctrl-utils.c", i32 54, i32 1}
!10 = !{ptr @__ksymtab_pinctrl_utils_add_map_mux, !11, !"__ksymtab_pinctrl_utils_add_map_mux", i1 false, i1 false}
!11 = !{!"../drivers/pinctrl/pinctrl-utils.c", i32 71, i32 1}
!12 = !{ptr @__ksymtab_pinctrl_utils_add_map_configs, !13, !"__ksymtab_pinctrl_utils_add_map_configs", i1 false, i1 false}
!13 = !{!"../drivers/pinctrl/pinctrl-utils.c", i32 97, i32 1}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/pinctrl-utils.c", i32 110, i32 3}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @pinctrl_utils_add_config._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @pinctrl_utils_add_config._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @__ksymtab_pinctrl_utils_add_config, !20, !"__ksymtab_pinctrl_utils_add_config", i1 false, i1 false}
!20 = !{!"../drivers/pinctrl/pinctrl-utils.c", i32 121, i32 1}
!21 = !{ptr @__ksymtab_pinctrl_utils_free_map, !22, !"__ksymtab_pinctrl_utils_free_map", i1 false, i1 false}
!22 = !{!"../drivers/pinctrl/pinctrl-utils.c", i32 140, i32 1}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{!"branch_weights", i32 1, i32 2000}
