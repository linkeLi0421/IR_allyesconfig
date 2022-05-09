; ModuleID = '/llk/IR_all_yes/drivers/md/dm-ps-io-affinity.c_pt.bc'
source_filename = "../drivers/md/dm-ps-io-affinity.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.path_selector_type = type { ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.selector = type { ptr, ptr, %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.path_selector = type { ptr, ptr }
%struct.path_info = type { ptr, ptr, %struct.refcount_struct, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dm_path = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@ioa_ps = internal global { %struct.path_selector_type, [44 x i8] } { %struct.path_selector_type { ptr @.str.3, ptr null, i32 1, i32 1, ptr @ioa_create, ptr @ioa_destroy, ptr @ioa_add_path, ptr @ioa_select_path, ptr @ioa_fail_path, ptr @ioa_reinstate_path, ptr @ioa_status, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@dm_ioa_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013device-mapper: multipath io-affinity: unregister failed %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dm_ioa_exit\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/md/dm-ps-io-affinity.c\00", [33 x i8] zeroinitializer }, align 32
@dm_ioa_exit._entry_ptr = internal global ptr @dm_ioa_exit._entry, section ".printk_index", align 4
@__initcall__kmod_dm_io_affinity__267_269_dm_ioa_init6 = internal global ptr @dm_ioa_init, section ".initcall6.init", align 4
@__exitcall_dm_ioa_exit = internal global ptr @dm_ioa_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description268 = internal constant [125 x i8] c"dm_io_affinity.description=device-mapper multipath path selector that selects paths based on the CPU IO is being executed on\00", section ".modinfo", align 1
@__UNIQUE_ID_author269 = internal constant [66 x i8] c"dm_io_affinity.author=Mike Christie <michael.christie@oracle.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file270 = internal constant [46 x i8] c"dm_io_affinity.file=drivers/md/dm-io-affinity\00", section ".modinfo", align 1
@__UNIQUE_ID_license271 = internal constant [27 x i8] c"dm_io_affinity.license=GPL\00", section ".modinfo", align 1
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"io-affinity\00", [20 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"io-affinity ps: invalid number of arguments\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"io-affinity ps: Error allocating path context\00", [50 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"io-affinity ps: Error allocating cpumask context\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"io-affinity ps: invalid cpumask\00", [32 x i8] zeroinitializer }, align 32
@__func__.ioa_add_path = private unnamed_addr constant [13 x i8] c"ioa_add_path\00", align 1
@ioa_add_path._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @__func__.ioa_add_path, ptr @.str.2, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\014device-mapper: multipath io-affinity: Ignoring mapping for CPU %u. Max CPU is %u\0A\00", [44 x i8] zeroinitializer }, align 32
@ioa_add_path._entry_ptr = internal global ptr @ioa_add_path._entry, section ".printk_index", align 4
@ioa_add_path._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @__func__.ioa_add_path, ptr @.str.2, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\014device-mapper: multipath io-affinity: CPU mapping for %u exists. Ignoring.\0A\00", [50 x i8] zeroinitializer }, align 32
@ioa_add_path._entry_ptr.13 = internal global ptr @ioa_add_path._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"io-affinity ps: No new/valid CPU mapping found\00", [49 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0 \00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d \00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%*pb \00", [26 x i8] zeroinitializer }, align 32
@dm_ioa_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013device-mapper: multipath io-affinity: register failed %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dm_ioa_init\00", [20 x i8] zeroinitializer }, align 32
@dm_ioa_init._entry_ptr = internal global ptr @dm_ioa_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.20 = private unnamed_addr constant [7 x i8] c"ioa_ps\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 238, i32 34 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 266, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 239, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 108, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 52, i32 12 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 58, i32 12 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 67, i32 12 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 74, i32 12 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 81, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 87, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 97, i32 12 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 161, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 167, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 171, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private constant [34 x i8] c"../drivers/md/dm-ps-io-affinity.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 257, i32 3 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author269, ptr @__UNIQUE_ID_description268, ptr @__UNIQUE_ID_file270, ptr @__UNIQUE_ID_license271, ptr @__exitcall_dm_ioa_exit, ptr @__initcall__kmod_dm_io_affinity__267_269_dm_ioa_init6, ptr @dm_ioa_exit, ptr @dm_ioa_exit._entry, ptr @dm_ioa_exit._entry_ptr, ptr @dm_ioa_init._entry, ptr @dm_ioa_init._entry_ptr, ptr @ioa_add_path._entry, ptr @ioa_add_path._entry.11, ptr @ioa_add_path._entry_ptr, ptr @ioa_add_path._entry_ptr.13, ptr @ioa_ps, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioa_ps to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_ioa_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioa_add_path._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioa_add_path._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_ioa_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dm_ioa_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @dm_unregister_path_selector(ptr noundef nonnull @ioa_ps) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_unregister_path_selector(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dm_ioa_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dm_register_path_selector(ptr noundef nonnull @ioa_ps) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %call) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioa_create(ptr nocapture noundef writeonly %ps, i32 noundef %argc, ptr nocapture noundef readnone %argv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 12) #14
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end8.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %mul = shl i32 %1, 2
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #15
  %2 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9.i.i, ptr %call7.i, align 8
  %tobool3.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool3.not, label %if.end8.i.i.free_selector_crit_edge, label %if.end5

if.end8.i.i.free_selector_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_selector

if.end5:                                          ; preds = %if.end8.i.i
  %path_mask = getelementptr inbounds %struct.selector, ptr %call7.i, i32 0, i32 1
  %call6 = tail call zeroext i1 @zalloc_cpumask_var(ptr noundef %path_mask, i32 noundef 3264) #10
  br i1 %call6, label %if.end8, label %free_map

if.end8:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %map_misses = getelementptr inbounds %struct.selector, ptr %call7.i, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %map_misses, i32 noundef 4) #10
  %3 = ptrtoint ptr %map_misses to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 0, ptr %map_misses, align 8
  %context = getelementptr inbounds %struct.path_selector, ptr %ps, i32 0, i32 1
  %4 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i, ptr %context, align 4
  br label %cleanup

free_map:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call7.i, align 8
  tail call void @kfree(ptr noundef %6) #10
  br label %free_selector

free_selector:                                    ; preds = %free_map, %if.end8.i.i.free_selector_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %free_selector, %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -12, %free_selector ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ioa_destroy(ptr nocapture noundef %ps) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.path_selector, ptr %ps, i32 0, i32 1
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %path_mask = getelementptr inbounds %struct.selector, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %path_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %path_mask, align 4
  %call10 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %3) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call10, i32 %4)
  %cmp11 = icmp ult i32 %call10, %4
  br i1 %cmp11, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %ioa_free_path.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %call12 = phi i32 [ %call, %ioa_free_path.exit.for.body_crit_edge ], [ %call10, %entry.for.body_crit_edge ]
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %arrayidx.i = getelementptr ptr, ptr %6, i32 %call12
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %for.body.ioa_free_path.exit_crit_edge, label %if.end.i

for.body.ioa_free_path.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %ioa_free_path.exit

if.end.i:                                         ; preds = %for.body
  %refcount.i = getelementptr inbounds %struct.path_info, ptr %8, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !66
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #10
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #10, !srcloc !67
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then1.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.ioa_free_path.exit_crit_edge, label %if.then10.i.i.i.i, !prof !68

if.end5.i.i.i.i.ioa_free_path.exit_crit_edge:     ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ioa_free_path.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #10
  br label %ioa_free_path.exit

if.then1.i:                                       ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !69
  %10 = ptrtoint ptr %path_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %path_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %12 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %call12)
  %cmp.not.i.i.i.i = icmp ugt i32 %12, %call12
  br i1 %cmp.not.i.i.i.i, label %if.then1.i.cpumask_clear_cpu.exit.i_crit_edge, label %land.rhs.i.i.i.i

if.then1.i.cpumask_clear_cpu.exit.i_crit_edge:    ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpumask_clear_cpu.exit.i

land.rhs.i.i.i.i:                                 ; preds = %if.then1.i
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpumask_clear_cpu.exit.i_crit_edge, label %if.then.i.i.i.i, !prof !68

land.rhs.i.i.i.i.cpumask_clear_cpu.exit.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpumask_clear_cpu.exit.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpumask_clear_cpu.exit.i

cpumask_clear_cpu.exit.i:                         ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpumask_clear_cpu.exit.i_crit_edge, %if.then1.i.cpumask_clear_cpu.exit.i_crit_edge
  tail call void @_clear_bit(i32 noundef %call12, ptr noundef %11) #10
  %cpumask.i = getelementptr inbounds %struct.path_info, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %cpumask.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cpumask.i, align 4
  tail call void @free_cpumask_var(ptr noundef %14) #10
  tail call void @kfree(ptr noundef nonnull %8) #10
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %arrayidx3.i = getelementptr ptr, ptr %16, i32 %call12
  %17 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx3.i, align 4
  br label %ioa_free_path.exit

ioa_free_path.exit:                               ; preds = %cpumask_clear_cpu.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.ioa_free_path.exit_crit_edge, %for.body.ioa_free_path.exit_crit_edge
  %18 = ptrtoint ptr %path_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %path_mask, align 4
  %call = tail call i32 @cpumask_next(i32 noundef %call12, ptr noundef %19) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %20 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %20
  br i1 %cmp, label %ioa_free_path.exit.for.body_crit_edge, label %ioa_free_path.exit.for.end_crit_edge

ioa_free_path.exit.for.end_crit_edge:             ; preds = %ioa_free_path.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

ioa_free_path.exit.for.body_crit_edge:            ; preds = %ioa_free_path.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %ioa_free_path.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi ptr [ %3, %entry.for.end_crit_edge ], [ %19, %ioa_free_path.exit.for.end_crit_edge ]
  tail call void @free_cpumask_var(ptr noundef %.lcssa) #10
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  tail call void @kfree(ptr noundef %22) #10
  tail call void @kfree(ptr noundef %1) #10
  %23 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %context, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioa_add_path(ptr nocapture noundef readonly %ps, ptr noundef %path, i32 noundef %argc, ptr nocapture noundef readonly %argv, ptr nocapture noundef writeonly %error) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.path_selector, ptr %ps, i32 0, i32 1
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %argc)
  %cmp.not = icmp eq i32 %argc, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.5, ptr %error, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 16) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.6, ptr %error, align 4
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %path, ptr %call7.i.i, align 8
  %pscontext = getelementptr inbounds %struct.dm_path, ptr %path, i32 0, i32 1
  %6 = ptrtoint ptr %pscontext to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %pscontext, align 4
  %refcount = getelementptr inbounds %struct.path_info, ptr %call7.i.i, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  %7 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 1, ptr %refcount, align 8
  %cpumask = getelementptr inbounds %struct.path_info, ptr %call7.i.i, i32 0, i32 1
  %call4 = tail call zeroext i1 @zalloc_cpumask_var(ptr noundef %cpumask, i32 noundef 3264) #10
  br i1 %call4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.7, ptr %error, align 4
  br label %free_pi

if.end6:                                          ; preds = %if.end2
  %9 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %argv, align 4
  %11 = ptrtoint ptr %cpumask to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cpumask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  %call.i = tail call i32 @bitmap_parse(ptr noundef %10, i32 noundef -1, ptr noundef %12, i32 noundef %13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %for.cond.preheader, label %if.end6.free_mask_crit_edge

if.end6.free_mask_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_mask

for.cond.preheader:                               ; preds = %if.end6
  %14 = ptrtoint ptr %cpumask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cpumask, align 4
  %call1371 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %15) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1371, i32 %16)
  %cmp1472 = icmp ult i32 %call1371, %16
  br i1 %cmp1472, label %if.end22.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end22.lr.ph:                                   ; preds = %for.cond.preheader
  %path_mask = getelementptr inbounds %struct.selector, ptr %1, i32 0, i32 1
  br label %if.end22

if.end22:                                         ; preds = %for.cond.backedge.if.end22_crit_edge, %if.end22.lr.ph
  %call1373 = phi i32 [ %call1371, %if.end22.lr.ph ], [ %call13, %for.cond.backedge.if.end22_crit_edge ]
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %arrayidx23 = getelementptr ptr, ptr %18, i32 %call1373
  %19 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx23, align 4
  %tobool24.not = icmp eq ptr %20, null
  br i1 %tobool24.not, label %cpumask_set_cpu.exit, label %do.end28

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %call1373) #13
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.for.cond.backedge_crit_edge, %do.end28
  %21 = ptrtoint ptr %cpumask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cpumask, align 4
  %call13 = tail call i32 @cpumask_next(i32 noundef %call1373, ptr noundef %22) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %23 = load i32, ptr @nr_cpu_ids, align 4
  %cmp14 = icmp ult i32 %call13, %23
  br i1 %cmp14, label %for.cond.backedge.if.end22_crit_edge, label %for.cond.backedge.for.end_crit_edge

for.cond.backedge.for.end_crit_edge:              ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.backedge.if.end22_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

cpumask_set_cpu.exit:                             ; preds = %if.end22
  %24 = ptrtoint ptr %path_mask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %path_mask, align 4
  tail call void @_set_bit(i32 noundef %call1373, ptr noundef %25) #10
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %arrayidx33 = getelementptr ptr, ptr %27, i32 %call1373
  %28 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i.i, ptr %arrayidx33, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !70
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %cpumask_set_cpu.exit.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !71

cpumask_set_cpu.exit.if.end15.sink.split.i.i.i_crit_edge: ; preds = %cpumask_set_cpu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %cpumask_set_cpu.exit
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %30 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %.not.i.i.i = icmp sgt i32 %30, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.for.cond.backedge_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !68

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.for.cond.backedge_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %cpumask_set_cpu.exit.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %cpumask_set_cpu.exit.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i) #10
  br label %for.cond.backedge

for.end:                                          ; preds = %for.cond.backedge.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call.i.i.i.i.i69 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !66
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !67
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %refcount_dec_and_test.exit, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i70 = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i70, label %if.end5.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i, !prof !68

if.end5.i.i.i.cleanup_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #10
  br label %cleanup

refcount_dec_and_test.exit:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !69
  br label %free_mask

free_mask:                                        ; preds = %refcount_dec_and_test.exit, %if.end6.free_mask_crit_edge
  %storemerge = phi ptr [ @.str.8, %if.end6.free_mask_crit_edge ], [ @.str.14, %refcount_dec_and_test.exit ]
  %32 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %storemerge, ptr %error, align 4
  %33 = ptrtoint ptr %cpumask to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cpumask, align 4
  tail call void @free_cpumask_var(ptr noundef %34) #10
  br label %free_pi

free_pi:                                          ; preds = %free_mask, %if.then5
  %ret.1 = phi i32 [ -22, %free_mask ], [ -12, %if.then5 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %free_pi, %if.then10.i.i.i, %if.end5.i.i.i.cleanup_crit_edge, %if.then1, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %ret.1, %free_pi ], [ -12, %if.then1 ], [ 0, %if.end5.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ioa_select_path(ptr nocapture noundef readonly %ps, i32 noundef %nr_bytes) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.path_selector, ptr %ps, i32 0, i32 1
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !56) #10
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %5, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !72
  %6 = tail call i32 @llvm.read_register.i32(metadata !56) #10
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %cpu1 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu1, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr ptr, ptr %11, i32 %9
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.then4.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %failed = getelementptr inbounds %struct.path_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %failed to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %failed, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool2.not = icmp eq i8 %15, 0
  br i1 %tobool2.not, label %land.lhs.true.do.body28_crit_edge, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

land.lhs.true.do.body28_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body28

if.then4.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %map_misses = getelementptr inbounds %struct.selector, ptr %1, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %map_misses, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %map_misses, i32 1, i32 3, i32 1) #10
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %map_misses, ptr %map_misses, i32 1, ptr elementtype(i32) %map_misses) #10, !srcloc !74
  br label %if.end5

if.end5:                                          ; preds = %if.then4.critedge, %land.lhs.true.if.end5_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %17 = load i32, ptr @nr_cpu_ids, align 4
  %call657 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %call657, i32 %17)
  %cmp58 = icmp ult i32 %call657, %17
  br i1 %cmp58, label %for.body.lr.ph, label %if.end5.for.cond15.preheader_crit_edge

if.end5.for.cond15.preheader_crit_edge:           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond15.preheader

for.body.lr.ph:                                   ; preds = %if.end5
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  br label %for.body

for.cond15.preheader:                             ; preds = %if.end14.for.cond15.preheader_crit_edge, %if.end5.for.cond15.preheader_crit_edge
  %path_mask = getelementptr inbounds %struct.selector, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %path_mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %path_mask, align 4
  %call1660 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %21) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %call1660, i32 %17)
  %cmp1761 = icmp ult i32 %call1660, %17
  br i1 %cmp1761, label %for.body18.lr.ph, label %for.cond15.preheader.do.body28_crit_edge

for.cond15.preheader.do.body28_crit_edge:         ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body28

for.body18.lr.ph:                                 ; preds = %for.cond15.preheader
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  br label %for.body18

for.body:                                         ; preds = %if.end14.for.body_crit_edge, %for.body.lr.ph
  %call659 = phi i32 [ %call657, %for.body.lr.ph ], [ %call6, %if.end14.for.body_crit_edge ]
  %arrayidx8 = getelementptr ptr, ptr %19, i32 %call659
  %24 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx8, align 4
  %tobool9.not = icmp eq ptr %25, null
  br i1 %tobool9.not, label %for.body.if.end14_crit_edge, label %land.lhs.true10

for.body.if.end14_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

land.lhs.true10:                                  ; preds = %for.body
  %failed11 = getelementptr inbounds %struct.path_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %failed11 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %failed11, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool12.not = icmp eq i8 %27, 0
  br i1 %tobool12.not, label %land.lhs.true10.do.body28_crit_edge, label %land.lhs.true10.if.end14_crit_edge

land.lhs.true10.if.end14_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

land.lhs.true10.do.body28_crit_edge:              ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body28

if.end14:                                         ; preds = %land.lhs.true10.if.end14_crit_edge, %for.body.if.end14_crit_edge
  %call6 = tail call i32 @cpumask_next(i32 noundef %call659, ptr noundef nonnull @__cpu_online_mask) #16
  %cmp = icmp ult i32 %call6, %17
  br i1 %cmp, label %if.end14.for.body_crit_edge, label %if.end14.for.cond15.preheader_crit_edge

if.end14.for.cond15.preheader_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond15.preheader

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body18:                                       ; preds = %if.end26.for.body18_crit_edge, %for.body18.lr.ph
  %call1662 = phi i32 [ %call1660, %for.body18.lr.ph ], [ %call16, %if.end26.for.body18_crit_edge ]
  %arrayidx20 = getelementptr ptr, ptr %23, i32 %call1662
  %28 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx20, align 4
  %tobool21.not = icmp eq ptr %29, null
  br i1 %tobool21.not, label %for.body18.if.end26_crit_edge, label %land.lhs.true22

for.body18.if.end26_crit_edge:                    ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

land.lhs.true22:                                  ; preds = %for.body18
  %failed23 = getelementptr inbounds %struct.path_info, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %failed23 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %failed23, align 4, !range !73
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool24.not = icmp eq i8 %31, 0
  br i1 %tobool24.not, label %land.lhs.true22.do.body28_crit_edge, label %land.lhs.true22.if.end26_crit_edge

land.lhs.true22.if.end26_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

land.lhs.true22.do.body28_crit_edge:              ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body28

if.end26:                                         ; preds = %land.lhs.true22.if.end26_crit_edge, %for.body18.if.end26_crit_edge
  %call16 = tail call i32 @cpumask_next(i32 noundef %call1662, ptr noundef %21) #16
  %cmp17 = icmp ult i32 %call16, %17
  br i1 %cmp17, label %if.end26.for.body18_crit_edge, label %if.end26.do.body28_crit_edge

if.end26.do.body28_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body28

if.end26.for.body18_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body18

do.body28:                                        ; preds = %if.end26.do.body28_crit_edge, %land.lhs.true22.do.body28_crit_edge, %land.lhs.true10.do.body28_crit_edge, %for.cond15.preheader.do.body28_crit_edge, %land.lhs.true.do.body28_crit_edge
  %pi.0 = phi ptr [ %13, %land.lhs.true.do.body28_crit_edge ], [ null, %for.cond15.preheader.do.body28_crit_edge ], [ %29, %land.lhs.true22.do.body28_crit_edge ], [ null, %if.end26.do.body28_crit_edge ], [ %25, %land.lhs.true10.do.body28_crit_edge ]
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !75
  %32 = tail call i32 @llvm.read_register.i32(metadata !56) #10
  %and.i.i.i52 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i52 to ptr
  %preempt_count.i.i53 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i53 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i53, align 4
  %sub.i = add i32 %35, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i53, align 4
  %tobool31.not = icmp eq ptr %pi.0, null
  br i1 %tobool31.not, label %do.body28.cond.end_crit_edge, label %cond.true

do.body28.cond.end_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %pi.0 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pi.0, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.body28.cond.end_crit_edge
  %cond = phi ptr [ %37, %cond.true ], [ null, %do.body28.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ioa_fail_path(ptr nocapture noundef readnone %ps, ptr nocapture noundef readonly %p) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pscontext = getelementptr inbounds %struct.dm_path, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %pscontext to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pscontext, align 4
  %failed = getelementptr inbounds %struct.path_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %failed to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %failed, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ioa_reinstate_path(ptr nocapture noundef readnone %ps, ptr nocapture noundef readonly %p) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pscontext = getelementptr inbounds %struct.dm_path, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %pscontext to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pscontext, align 4
  %failed = getelementptr inbounds %struct.path_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %failed to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %failed, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioa_status(ptr nocapture noundef readonly %ps, ptr noundef readonly %path, i32 noundef %type, ptr noundef %result, i32 noundef %maxlen) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.path_selector, ptr %ps, i32 0, i32 1
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %tobool.not = icmp eq ptr %path, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp = icmp eq i32 %maxlen, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %cond.false

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.15) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb11
    i32 2, label %sw.bb21
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp1 = icmp eq i32 %maxlen, 0
  br i1 %cmp1, label %sw.bb.cleanup_crit_edge, label %cond.false3

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.false3:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %map_misses = getelementptr inbounds %struct.selector, ptr %1, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %map_misses, i32 noundef 4) #10
  %3 = ptrtoint ptr %map_misses to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %map_misses, align 4
  %call7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.16, i32 noundef %4) #10
  br label %cleanup

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp12 = icmp eq i32 %maxlen, 0
  br i1 %cmp12, label %sw.bb11.cleanup_crit_edge, label %cond.false14

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.false14:                                     ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #12
  %pscontext = getelementptr inbounds %struct.dm_path, ptr %path, i32 0, i32 1
  %5 = ptrtoint ptr %pscontext to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pscontext, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %cpumask = getelementptr inbounds %struct.path_info, ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %cpumask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cpumask, align 4
  %call17 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.17, i32 noundef %7, ptr noundef %9) #10
  br label %cleanup

sw.bb21:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %result to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %result, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.bb21, %cond.false14, %sw.bb11.cleanup_crit_edge, %cond.false3, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %cond.false, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %cond.false ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %sw.bb21 ], [ %call7, %cond.false3 ], [ 0, %sw.bb.cleanup_crit_edge ], [ %call17, %cond.false14 ], [ 0, %sw.bb11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @zalloc_cpumask_var(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_cpumask_var(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_register_path_selector(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !24, !26, !28, !30, !32, !34, !35, !36, !37, !38, !39, !41, !42, !43, !45, !47, !49, !51, !53, !54, !55}
!llvm.named.register.sp = !{!56}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/md/dm-ps-io-affinity.c", i32 266, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @dm_ioa_exit._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @dm_ioa_exit._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__initcall__kmod_dm_io_affinity__267_269_dm_ioa_init6, !7, !"__initcall__kmod_dm_io_affinity__267_269_dm_ioa_init6", i1 false, i1 false}
!7 = !{!"../drivers/md/dm-ps-io-affinity.c", i32 269, i32 1}
!8 = !{ptr @__exitcall_dm_ioa_exit, !9, !"__exitcall_dm_ioa_exit", i1 false, i1 false}
!9 = !{!"../drivers/md/dm-ps-io-affinity.c", i32 270, i32 1}
!10 = !{ptr @__UNIQUE_ID_description268, !11, !"__UNIQUE_ID_description268", i1 false, i1 false}
!11 = !{!"../drivers/md/dm-ps-io-affinity.c", i32 272, i32 1}
!12 = !{ptr @__UNIQUE_ID_author269, !13, !"__UNIQUE_ID_author269", i1 false, i1 false}
!13 = !{!"../drivers/md/dm-ps-io-affinity.c", i32 273, i32 1}
!14 = !{ptr @__UNIQUE_ID_file270, !15, !"__UNIQUE_ID_file270", i1 false, i1 false}
!15 = !{!"../drivers/md/dm-ps-io-affinity.c", i32 274, i32 1}
!16 = !{ptr @__UNIQUE_ID_license271, !15, !"__UNIQUE_ID_license271", i1 false, i1 false}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/md/dm-ps-io-affinity.c", i32 239, i32 11}
!19 = !{ptr @ioa_ps, !20, !"ioa_ps", i1 false, i1 false}
!20 = !{!"../drivers/md/dm-ps-io-affinity.c", i32 238, i32 34}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/md/dm-ps-io-affinity.c", i32 52, i32 12}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/md/dm-ps-io-affinity.c", i32 58, i32 12}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/md/dm-ps-io-affinity.c", i32 67, i32 12}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/md/dm-ps-io-affinity.c", i32 74, i32 12}
!32 = distinct !{null, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/md/dm-ps-io-affinity.c", i32 81, i32 4}
!34 = distinct !{null, !33, !"_rs", i1 false, i1 false}
!35 = !{ptr @__func__.ioa_add_path, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @ioa_add_path._entry, !33, !"_entry", i1 false, i1 false}
!38 = !{ptr @ioa_add_path._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/md/dm-ps-io-affinity.c", i32 87, i32 4}
!41 = !{ptr @ioa_add_path._entry.11, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @ioa_add_path._entry_ptr.13, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/md/dm-ps-io-affinity.c", i32 97, i32 12}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/md/dm-ps-io-affinity.c", i32 161, i32 3}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/md/dm-ps-io-affinity.c", i32 167, i32 3}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/md/dm-ps-io-affinity.c", i32 171, i32 3}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/md/dm-ps-io-affinity.c", i32 257, i32 3}
!53 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @dm_ioa_init._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @dm_ioa_init._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{!"sp"}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{i64 2148658949}
!67 = !{i64 2148573389, i64 2148573421, i64 2148573450, i64 2148573484, i64 2148573515, i64 2148573538}
!68 = !{!"branch_weights", i32 2000, i32 1}
!69 = !{i64 2150447122}
!70 = !{i64 2148570924, i64 2148570956, i64 2148570985, i64 2148571019, i64 2148571050, i64 2148571073}
!71 = !{!"branch_weights", i32 1, i32 2000}
!72 = !{i64 2154292953}
!73 = !{i8 0, i8 2}
!74 = !{i64 2148569394, i64 2148569420, i64 2148569449, i64 2148569483, i64 2148569514, i64 2148569537}
!75 = !{i64 2154293443}
