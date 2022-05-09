; ModuleID = '/llk/IR_all_yes/drivers/md/dm-ps-historical-service-time.c_pt.bc'
source_filename = "../drivers/md/dm-ps-historical-service-time.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.path_selector_type = type { ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.selector = type { %struct.list_head, %struct.list_head, i32, %struct.spinlock, [64 x i32], i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.path_selector = type { ptr, ptr }
%struct.path_info = type { %struct.list_head, ptr, i32, %struct.spinlock, i64, i64, i64, i64 }
%struct.dm_path = type { ptr, ptr }

@hst_ps = internal global { %struct.path_selector_type, [44 x i8] } { %struct.path_selector_type { ptr @.str.3, ptr null, i32 1, i32 3, ptr @hst_create, ptr @hst_destroy, ptr @hst_add_path, ptr @hst_select_path, ptr @hst_fail_path, ptr @hst_reinstate_path, ptr @hst_status, ptr @hst_start_io, ptr @hst_end_io }, [44 x i8] zeroinitializer }, align 32
@dm_hst_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 557, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013device-mapper: multipath historical-service-time: unregister failed %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dm_hst_exit\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/md/dm-ps-historical-service-time.c\00", [53 x i8] zeroinitializer }, align 32
@dm_hst_exit._entry_ptr = internal global ptr @dm_hst_exit._entry, section ".printk_index", align 4
@__initcall__kmod_dm_historical_service_time__289_560_dm_hst_init6 = internal global ptr @dm_hst_init, section ".initcall6.init", align 4
@__exitcall_dm_hst_exit = internal global ptr @dm_hst_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description290 = internal constant [98 x i8] c"dm_historical_service_time.description=device-mapper measured service time oriented path selector\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [73 x i8] c"dm_historical_service_time.author=Khazhismel Kumykov <khazhy@google.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [70 x i8] c"dm_historical_service_time.file=drivers/md/dm-historical-service-time\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [39 x i8] c"dm_historical_service_time.license=GPL\00", section ".modinfo", align 1
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"historical-service-time\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%u%c\00", [27 x i8] zeroinitializer }, align 32
@alloc_selector.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&s->lock\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.6 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"historical-service-time ps: incorrect number of arguments\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"historical-service-time ps: invalid repeat count\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"historical-service-time ps: Error allocating path context\00", [38 x i8] zeroinitializer }, align 32
@hst_add_path.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&pi->lock\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"2 %u %u \00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%llu %llu %llu \00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0 \00", [29 x i8] zeroinitializer }, align 32
@dm_hst_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013device-mapper: multipath historical-service-time: register failed %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dm_hst_init\00", [20 x i8] zeroinitializer }, align 32
@dm_hst_init._entry_ptr = internal global ptr @dm_hst_init._entry, section ".printk_index", align 4
@dm_hst_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 547, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\016device-mapper: multipath historical-service-time: version 0.1.1 loaded\0A\00", [54 x i8] zeroinitializer }, align 32
@dm_hst_init._entry_ptr.17 = internal global ptr @dm_hst_init._entry.15, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.18 = private unnamed_addr constant [7 x i8] c"hst_ps\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 524, i32 34 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 557, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 525, i32 11 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 197, i32 31 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 138, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 283, i32 12 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 288, i32 12 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 295, i32 12 }
@___asan_gen_.54 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 304, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 247, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 253, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 257, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 545, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private constant [46 x i8] c"../drivers/md/dm-ps-historical-service-time.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 547, i32 2 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_dm_hst_exit, ptr @__initcall__kmod_dm_historical_service_time__289_560_dm_hst_init6, ptr @dm_hst_exit, ptr @dm_hst_exit._entry, ptr @dm_hst_exit._entry_ptr, ptr @dm_hst_init._entry, ptr @dm_hst_init._entry.15, ptr @dm_hst_init._entry_ptr, ptr @dm_hst_init._entry_ptr.17, ptr @hst_ps, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @alloc_selector.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @hst_add_path.__key, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hst_ps to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_hst_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_selector.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hst_add_path.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_hst_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_hst_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dm_hst_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @dm_unregister_path_selector(ptr noundef nonnull @hst_ps) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_unregister_path_selector(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dm_hst_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dm_register_path_selector(ptr noundef nonnull @hst_ps) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call) #11
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hst_create(ptr nocapture noundef %ps, i32 noundef %argc, ptr nocapture noundef readonly %argv) #4 align 64 {
entry:
  %base_weight = alloca i32, align 4
  %threshold_multiplier = alloca i32, align 4
  %dummy = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base_weight) #8
  %0 = ptrtoint ptr %base_weight to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 972, ptr %base_weight, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %threshold_multiplier) #8
  %1 = ptrtoint ptr %threshold_multiplier to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %threshold_multiplier, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy) #8
  %2 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %dummy, align 1, !annotation !59
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %argc)
  %cmp = icmp ugt i32 %argc, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %argc)
  %tobool.not = icmp eq i32 %argc, 0
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %land.lhs.true

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %3 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %argv, align 4
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %4, ptr noundef nonnull @.str.4, ptr noundef nonnull %base_weight, ptr noundef nonnull %dummy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp1.not = icmp eq i32 %call, 1
  br i1 %cmp1.not, label %lor.lhs.false, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %5 = ptrtoint ptr %base_weight to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base_weight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %6)
  %cmp2 = icmp ugt i32 %6, 1023
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %argc)
  %cmp5 = icmp ugt i32 %argc, 1
  br i1 %cmp5, label %land.lhs.true6, label %if.end4.if.end11_crit_edge

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

land.lhs.true6:                                   ; preds = %if.end4
  %arrayidx7 = getelementptr ptr, ptr %argv, i32 1
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx7, align 4
  %call8 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %8, ptr noundef nonnull @.str.4, ptr noundef nonnull %threshold_multiplier, ptr noundef nonnull %dummy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8)
  %cmp9.not = icmp eq i32 %call8, 1
  br i1 %cmp9.not, label %land.lhs.true6.if.end11_crit_edge, label %land.lhs.true6.cleanup_crit_edge

land.lhs.true6.cleanup_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true6.if.end11_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.end11:                                         ; preds = %land.lhs.true6.if.end11_crit_edge, %if.end4.if.end11_crit_edge, %if.end.if.end11_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 324) #12
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %prev.i.i, align 4
  %failed_paths.i = getelementptr inbounds %struct.selector, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %failed_paths.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %failed_paths.i, ptr %failed_paths.i, align 8
  %prev.i7.i = getelementptr inbounds %struct.selector, ptr %call7.i.i, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i7.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %failed_paths.i, ptr %prev.i7.i, align 4
  %lock.i = getelementptr inbounds %struct.selector, ptr %call7.i.i, i32 0, i32 3
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @alloc_selector.__key, i16 noundef signext 3) #8
  %valid_count.i = getelementptr inbounds %struct.selector, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %valid_count.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %valid_count.i, align 8
  %context = getelementptr inbounds %struct.path_selector, ptr %ps, i32 0, i32 1
  %15 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %context, align 4
  %16 = ptrtoint ptr %base_weight to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %base_weight, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %17)
  %cmp.i = icmp ugt i32 %17, 1023
  br i1 %cmp.i, label %if.end15.hst_set_weights.exit_crit_edge, label %for.cond.preheader.i

if.end15.hst_set_weights.exit_crit_edge:          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %hst_set_weights.exit

for.cond.preheader.i:                             ; preds = %if.end15
  %conv3.i = zext i32 %17 to i64
  br label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %fixed_power.exit.i.for.cond.preheader.i.i_crit_edge, %for.cond.preheader.i
  %i.013.i = phi i32 [ 0, %for.cond.preheader.i ], [ %add.i, %fixed_power.exit.i.for.cond.preheader.i.i_crit_edge ]
  %add.i = add nuw nsw i32 %i.013.i, 1
  %and1.i.i = and i32 %add.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool1.not2.i.i = icmp eq i32 %and1.i.i, 0
  %result.17.i.i = select i1 %tobool1.not2.i.i, i32 1024, i32 %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.013.i)
  %tobool6.not8.i.i = icmp eq i32 %i.013.i, 0
  br i1 %tobool6.not8.i.i, label %for.cond.preheader.i.i.fixed_power.exit.i_crit_edge, label %for.cond.preheader.i.i.if.end8.i.i_crit_edge

for.cond.preheader.i.i.if.end8.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  br label %if.end8.i.i

for.cond.preheader.i.i.fixed_power.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fixed_power.exit.i

if.end8.i.i:                                      ; preds = %if.end8.i.i.if.end8.i.i_crit_edge, %for.cond.preheader.i.i.if.end8.i.i_crit_edge
  %result.111.i.i = phi i32 [ %result.1.i.i, %if.end8.i.i.if.end8.i.i_crit_edge ], [ %result.17.i.i, %for.cond.preheader.i.i.if.end8.i.i_crit_edge ]
  %n.addr.010.i.i = phi i32 [ %shr5.i.i, %if.end8.i.i.if.end8.i.i_crit_edge ], [ %add.i, %for.cond.preheader.i.i.if.end8.i.i_crit_edge ]
  %x.addr.09.i.i = phi i64 [ %shr14.i.i, %if.end8.i.i.if.end8.i.i_crit_edge ], [ %conv3.i, %for.cond.preheader.i.i.if.end8.i.i_crit_edge ]
  %shr5.i.i = lshr i32 %n.addr.010.i.i, 1
  %mul9.i.i = mul i64 %x.addr.09.i.i, %x.addr.09.i.i
  %add13.i.i = add i64 %mul9.i.i, 512
  %shr14.i.i = lshr i64 %add13.i.i, 10
  %18 = and i32 %n.addr.010.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool1.not.i.i = icmp eq i32 %18, 0
  %19 = trunc i64 %shr14.i.i to i32
  %conv3.i.i = mul i32 %result.111.i.i, %19
  %add.i.i = add i32 %conv3.i.i, 512
  %shr.i.i = lshr i32 %add.i.i, 10
  %result.1.i.i = select i1 %tobool1.not.i.i, i32 %result.111.i.i, i32 %shr.i.i
  %tobool6.not.i.i = icmp ult i32 %n.addr.010.i.i, 4
  br i1 %tobool6.not.i.i, label %if.end8.i.i.fixed_power.exit.i_crit_edge, label %if.end8.i.i.if.end8.i.i_crit_edge

if.end8.i.i.if.end8.i.i_crit_edge:                ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i

if.end8.i.i.fixed_power.exit.i_crit_edge:         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fixed_power.exit.i

fixed_power.exit.i:                               ; preds = %if.end8.i.i.fixed_power.exit.i_crit_edge, %for.cond.preheader.i.i.fixed_power.exit.i_crit_edge
  %result.2.i.i = phi i32 [ %result.17.i.i, %for.cond.preheader.i.i.fixed_power.exit.i_crit_edge ], [ %result.1.i.i, %if.end8.i.i.fixed_power.exit.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.selector, ptr %call7.i.i, i32 0, i32 4, i32 %i.013.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %result.2.i.i, ptr %arrayidx.i, align 4
  %exitcond.not.i = icmp eq i32 %add.i, 63
  br i1 %exitcond.not.i, label %for.end.i, label %fixed_power.exit.i.for.cond.preheader.i.i_crit_edge

fixed_power.exit.i.for.cond.preheader.i.i_crit_edge: ; preds = %fixed_power.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader.i.i

for.end.i:                                        ; preds = %fixed_power.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx6.i = getelementptr %struct.selector, ptr %call7.i.i, i32 0, i32 4, i32 63
  %21 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %arrayidx6.i, align 4
  br label %hst_set_weights.exit

hst_set_weights.exit:                             ; preds = %for.end.i, %if.end15.hst_set_weights.exit_crit_edge
  %22 = ptrtoint ptr %threshold_multiplier to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %threshold_multiplier, align 4
  %threshold_multiplier16 = getelementptr inbounds %struct.selector, ptr %call7.i.i, i32 0, i32 5
  %24 = ptrtoint ptr %threshold_multiplier16 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %threshold_multiplier16, align 8
  br label %cleanup

cleanup:                                          ; preds = %hst_set_weights.exit, %if.end11.cleanup_crit_edge, %land.lhs.true6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %hst_set_weights.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %land.lhs.true6.cleanup_crit_edge ], [ -12, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %threshold_multiplier) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base_weight) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hst_destroy(ptr nocapture noundef %ps) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.path_selector, ptr %ps, i32 0, i32 1
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cmp.not18.i = icmp eq ptr %3, %1
  br i1 %cmp.not18.i, label %entry.free_paths.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.free_paths.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_paths.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %pi.019.i = phi ptr [ %next.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %3, %entry.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %pi.019.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %next.0.i = load ptr, ptr %pi.019.i, align 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pi.019.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %pi.019.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %pi.019.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pi.019.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %11 = ptrtoint ptr %pi.019.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %pi.019.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pi.019.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %pi.019.i) #8
  %cmp.not.i = icmp eq ptr %next.0.i, %1
  br i1 %cmp.not.i, label %list_del.exit.i.free_paths.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

list_del.exit.i.free_paths.exit_crit_edge:        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_paths.exit

free_paths.exit:                                  ; preds = %list_del.exit.i.free_paths.exit_crit_edge, %entry.free_paths.exit_crit_edge
  %failed_paths = getelementptr inbounds %struct.selector, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %failed_paths to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %failed_paths, align 4
  %cmp.not18.i5 = icmp eq ptr %14, %failed_paths
  br i1 %cmp.not18.i5, label %free_paths.exit.free_paths.exit16_crit_edge, label %free_paths.exit.for.body.i9_crit_edge

free_paths.exit.for.body.i9_crit_edge:            ; preds = %free_paths.exit
  br label %for.body.i9

free_paths.exit.free_paths.exit16_crit_edge:      ; preds = %free_paths.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_paths.exit16

for.body.i9:                                      ; preds = %list_del.exit.i15.for.body.i9_crit_edge, %free_paths.exit.for.body.i9_crit_edge
  %pi.019.i6 = phi ptr [ %next.0.i7, %list_del.exit.i15.for.body.i9_crit_edge ], [ %14, %free_paths.exit.for.body.i9_crit_edge ]
  %15 = ptrtoint ptr %pi.019.i6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %next.0.i7 = load ptr, ptr %pi.019.i6, align 8
  %call.i.i.i8 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pi.019.i6) #8
  br i1 %call.i.i.i8, label %if.end.i.i.i12, label %for.body.i9.list_del.exit.i15_crit_edge

for.body.i9.list_del.exit.i15_crit_edge:          ; preds = %for.body.i9
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i15

if.end.i.i.i12:                                   ; preds = %for.body.i9
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i10 = getelementptr inbounds %struct.list_head, ptr %pi.019.i6, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i.i10, align 4
  %18 = ptrtoint ptr %pi.019.i6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pi.019.i6, align 4
  %prev1.i.i.i.i11 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i.i11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i.i11, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit.i15

list_del.exit.i15:                                ; preds = %if.end.i.i.i12, %for.body.i9.list_del.exit.i15_crit_edge
  %22 = ptrtoint ptr %pi.019.i6 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %pi.019.i6, align 4
  %prev.i.i13 = getelementptr inbounds %struct.list_head, ptr %pi.019.i6, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i13 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i13, align 4
  tail call void @kfree(ptr noundef %pi.019.i6) #8
  %cmp.not.i14 = icmp eq ptr %next.0.i7, %failed_paths
  br i1 %cmp.not.i14, label %list_del.exit.i15.free_paths.exit16_crit_edge, label %list_del.exit.i15.for.body.i9_crit_edge

list_del.exit.i15.for.body.i9_crit_edge:          ; preds = %list_del.exit.i15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i9

list_del.exit.i15.free_paths.exit16_crit_edge:    ; preds = %list_del.exit.i15
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_paths.exit16

free_paths.exit16:                                ; preds = %list_del.exit.i15.free_paths.exit16_crit_edge, %free_paths.exit.free_paths.exit16_crit_edge
  tail call void @kfree(ptr noundef %1) #8
  %24 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %context, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hst_add_path(ptr nocapture noundef readonly %ps, ptr noundef %path, i32 noundef %argc, ptr nocapture noundef readonly %argv, ptr nocapture noundef writeonly %error) #4 align 64 {
entry:
  %repeat_count = alloca i32, align 4
  %dummy = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.path_selector, ptr %ps, i32 0, i32 1
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %repeat_count) #8
  %2 = ptrtoint ptr %repeat_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %repeat_count, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy) #8
  %3 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %dummy, align 1, !annotation !59
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %argc)
  %cmp = icmp sgt i32 %argc, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.6, ptr %error, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %argc)
  %tobool.not = icmp eq i32 %argc, 0
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %land.lhs.true

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

land.lhs.true:                                    ; preds = %if.end
  %5 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %argv, align 4
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %6, ptr noundef nonnull @.str.4, ptr noundef nonnull %repeat_count, ptr noundef nonnull %dummy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp1.not = icmp eq i32 %call, 1
  br i1 %cmp1.not, label %land.lhs.true.if.end3_crit_edge, label %if.then2

land.lhs.true.if.end3_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then2:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.7, ptr %error, align 4
  br label %cleanup

if.end3:                                          ; preds = %land.lhs.true.if.end3_crit_edge, %if.end.if.end3_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 96) #12
  %tobool5.not = icmp eq ptr %call7.i, null
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.8, ptr %error, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %path8 = getelementptr inbounds %struct.path_info, ptr %call7.i, i32 0, i32 1
  %10 = ptrtoint ptr %path8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %path, ptr %path8, align 8
  %11 = ptrtoint ptr %repeat_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %repeat_count, align 4
  %repeat_count9 = getelementptr inbounds %struct.path_info, ptr %call7.i, i32 0, i32 2
  %13 = ptrtoint ptr %repeat_count9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %repeat_count9, align 4
  %historical_service_time = getelementptr inbounds %struct.path_info, ptr %call7.i, i32 0, i32 4
  %14 = ptrtoint ptr %historical_service_time to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 1024, ptr %historical_service_time, align 8
  %lock = getelementptr inbounds %struct.path_info, ptr %call7.i, i32 0, i32 3
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @hst_add_path.__key, i16 noundef signext 3) #8
  %stale_after = getelementptr inbounds %struct.path_info, ptr %call7.i, i32 0, i32 5
  %pscontext = getelementptr inbounds %struct.dm_path, ptr %path, i32 0, i32 1
  %15 = call ptr @memset(ptr %stale_after, i32 0, i32 24)
  %16 = ptrtoint ptr %pscontext to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i, ptr %pscontext, align 4
  %lock14 = getelementptr inbounds %struct.selector, ptr %1, i32 0, i32 3
  %call16 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock14) #8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %18, ptr noundef %1) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end7.list_add_tail.exit_crit_edge

if.end7.list_add_tail.exit_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i, ptr %prev.i, align 4
  %20 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %1, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %call7.i, ptr %18, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end7.list_add_tail.exit_crit_edge
  %valid_count = getelementptr inbounds %struct.selector, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %valid_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %valid_count, align 4
  %inc = add i32 %24, 1
  store i32 %inc, ptr %valid_count, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock14, i32 noundef %call16) #8
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then6, %if.then2, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then2 ], [ 0, %list_add_tail.exit ], [ -12, %if.then6 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %repeat_count) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @hst_select_path(ptr nocapture noundef readonly %ps, i32 noundef %nr_bytes) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.path_selector, ptr %ps, i32 0, i32 1
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %call = tail call i64 @sched_clock() #8
  %lock = getelementptr inbounds %struct.selector, ptr %1, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %1, align 4
  %cmp.i.not = icmp eq ptr %3, %1
  br i1 %cmp.i.not, label %entry.out_crit_edge, label %for.cond.preheader

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.cond.preheader:                               ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %pi.050 = load ptr, ptr %1, align 4
  %cmp10.not51 = icmp eq ptr %pi.050, %1
  br i1 %cmp10.not51, label %for.cond.preheader.out_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %pi.057 = phi ptr [ %pi.0, %for.inc.for.body_crit_edge ], [ %pi.050, %for.cond.preheader.for.body_crit_edge ]
  %best.052 = phi ptr [ %best.1, %for.inc.for.body_crit_edge ], [ null, %for.cond.preheader.for.body_crit_edge ]
  %tobool12.not = icmp eq ptr %best.052, null
  br i1 %tobool12.not, label %for.body.if.then16_crit_edge, label %lor.lhs.false

for.body.if.then16_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

lor.lhs.false:                                    ; preds = %for.body
  %5 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %context, align 4
  %lock.i.i = getelementptr inbounds %struct.path_info, ptr %pi.057, i32 0, i32 3
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #8
  %historical_service_time.i.i = getelementptr inbounds %struct.path_info, ptr %pi.057, i32 0, i32 4
  %7 = ptrtoint ptr %historical_service_time.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %historical_service_time.i.i, align 8
  %outstanding.i.i = getelementptr inbounds %struct.path_info, ptr %pi.057, i32 0, i32 7
  %9 = ptrtoint ptr %outstanding.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %outstanding.i.i, align 8
  %stale_after.i.i = getelementptr inbounds %struct.path_info, ptr %pi.057, i32 0, i32 5
  %11 = ptrtoint ptr %stale_after.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %stale_after.i.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #8
  %lock.i85.i = getelementptr inbounds %struct.path_info, ptr %best.052, i32 0, i32 3
  %call2.i86.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i85.i) #8
  %historical_service_time.i87.i = getelementptr inbounds %struct.path_info, ptr %best.052, i32 0, i32 4
  %13 = ptrtoint ptr %historical_service_time.i87.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %historical_service_time.i87.i, align 8
  %outstanding.i88.i = getelementptr inbounds %struct.path_info, ptr %best.052, i32 0, i32 7
  %15 = ptrtoint ptr %outstanding.i88.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %outstanding.i88.i, align 8
  %stale_after.i89.i = getelementptr inbounds %struct.path_info, ptr %best.052, i32 0, i32 5
  %17 = ptrtoint ptr %stale_after.i89.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %stale_after.i89.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i85.i, i32 noundef %call2.i86.i) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %14)
  %cmp.i42 = icmp ugt i64 %8, %14
  %threshold_multiplier.i = getelementptr inbounds %struct.selector, ptr %6, i32 0, i32 5
  %19 = ptrtoint ptr %threshold_multiplier.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %threshold_multiplier.i, align 4
  %conv.i43 = zext i32 %20 to i64
  br i1 %cmp.i42, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %lor.lhs.false
  %mul.i = mul i64 %14, %conv.i43
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %mul.i)
  %cmp1.i = icmp ugt i64 %8, %mul.i
  br i1 %cmp1.i, label %if.then.i.if.end9.i_crit_edge, label %if.then.i.if.then8.i_crit_edge

if.then.i.if.then8.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8.i

if.then.i.if.end9.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.end.i:                                         ; preds = %lor.lhs.false
  %mul5.i = mul i64 %8, %conv.i43
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %mul5.i)
  %cmp6.i = icmp ugt i64 %14, %mul5.i
  br i1 %cmp6.i, label %if.end.i.if.end9.i_crit_edge, label %if.end.i.if.then8.i_crit_edge

if.end.i.if.then8.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then8.i:                                       ; preds = %if.end.i.if.then8.i_crit_edge, %if.then.i.if.then8.i_crit_edge
  %sub.i = sub i64 %10, %16
  br label %hst_compare.exit

if.end9.i:                                        ; preds = %if.end.i.if.end9.i_crit_edge, %if.then.i.if.end9.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool10.not.i = icmp eq i64 %10, 0
  br i1 %tobool10.not.i, label %land.lhs.true.i, label %lor.lhs.false.thread.i

land.lhs.true.i:                                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %call)
  %cmp11.i = icmp ult i64 %12, %call
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %tobool13.not.i = icmp eq i64 %16, 0
  %or.cond119.i = select i1 %cmp11.i, i1 true, i1 %tobool13.not.i
  br i1 %or.cond119.i, label %land.lhs.true.i.if.then21.i_crit_edge, label %land.lhs.true.i.if.end31.i_crit_edge

land.lhs.true.i.if.end31.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

land.lhs.true.i.if.then21.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21.i

lor.lhs.false.thread.i:                           ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %tobool13.not114.i = icmp eq i64 %16, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %call)
  %cmp15115.i = icmp ult i64 %18, %call
  %or.cond.i = select i1 %tobool13.not114.i, i1 %cmp15115.i, i1 false
  br i1 %or.cond.i, label %lor.lhs.false.thread.i.if.then21.i_crit_edge, label %lor.lhs.false.thread.i.if.end31.i_crit_edge

lor.lhs.false.thread.i.if.end31.i_crit_edge:      ; preds = %lor.lhs.false.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

lor.lhs.false.thread.i.if.then21.i_crit_edge:     ; preds = %lor.lhs.false.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21.i

if.then21.i:                                      ; preds = %lor.lhs.false.thread.i.if.then21.i_crit_edge, %land.lhs.true.i.if.then21.i_crit_edge
  %mul29.i = phi i64 [ 0, %lor.lhs.false.thread.i.if.then21.i_crit_edge ], [ %18, %land.lhs.true.i.if.then21.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %tobool22.not.i = icmp eq i64 %16, 0
  %mul24.i = select i1 %tobool22.not.i, i64 %12, i64 0
  %sub30.i = sub i64 %mul24.i, %mul29.i
  br label %hst_compare.exit

if.end31.i:                                       ; preds = %lor.lhs.false.thread.i.if.end31.i_crit_edge, %land.lhs.true.i.if.end31.i_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %16)
  %cmp32.i = icmp eq i64 %10, %16
  br i1 %cmp32.i, label %if.end55.i, label %if.else37.i

if.else37.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 1023, i64 %10)
  %cmp38.i = icmp sgt i64 %10, 1023
  call void @__sanitizer_cov_trace_const_cmp8(i64 1023, i64 %16)
  %cmp40.i = icmp sgt i64 %16, 1023
  %spec.select.i = select i1 %cmp38.i, i1 true, i1 %cmp40.i, !prof !60
  br i1 %spec.select.i, label %if.then47.i, label %if.else37.i.if.end49.i_crit_edge, !prof !60

if.else37.i.if.end49.i_crit_edge:                 ; preds = %if.else37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49.i

if.then47.i:                                      ; preds = %if.else37.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i = lshr i64 %8, 10
  %shr48.i = lshr i64 %14, 10
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then47.i, %if.else37.i.if.end49.i_crit_edge
  %hst1.0.i = phi i64 [ %shr.i, %if.then47.i ], [ %8, %if.else37.i.if.end49.i_crit_edge ]
  %hst2.0.i = phi i64 [ %shr48.i, %if.then47.i ], [ %14, %if.else37.i.if.end49.i_crit_edge ]
  %add.i = add i64 %10, 1
  %mul50.i = mul i64 %hst1.0.i, %add.i
  %add51.i = add i64 %16, 1
  %mul52.i = mul i64 %hst2.0.i, %add51.i
  call void @__sanitizer_cov_trace_cmp8(i64 %mul50.i, i64 %mul52.i)
  %cmp53.i = icmp ugt i64 %mul50.i, %mul52.i
  br i1 %cmp53.i, label %if.end49.i.if.then57.i_crit_edge, label %if.end49.i.if.end63.i_crit_edge

if.end49.i.if.end63.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63.i

if.end49.i.if.then57.i_crit_edge:                 ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then57.i

if.end55.i:                                       ; preds = %if.end31.i
  br i1 %cmp.i42, label %if.end55.i.if.then57.i_crit_edge, label %if.end55.i.if.end63.i_crit_edge

if.end55.i.if.end63.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63.i

if.end55.i.if.then57.i_crit_edge:                 ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then57.i

if.then57.i:                                      ; preds = %if.end55.i.if.then57.i_crit_edge, %if.end49.i.if.then57.i_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %call)
  %cmp58.i = icmp ult i64 %18, %call
  %sub61.i = sub i64 %10, %16
  br i1 %cmp58.i, label %if.then57.i.hst_compare.exit_crit_edge, label %if.then57.i.for.inc_crit_edge

if.then57.i.for.inc_crit_edge:                    ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then57.i.hst_compare.exit_crit_edge:           ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hst_compare.exit

if.end63.i:                                       ; preds = %if.end55.i.if.end63.i_crit_edge, %if.end49.i.if.end63.i_crit_edge
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %call)
  %cmp64.i = icmp ult i64 %12, %call
  %sub67.i = sub i64 %10, %16
  br i1 %cmp64.i, label %if.end63.i.hst_compare.exit_crit_edge, label %if.end63.i.if.then16_crit_edge

if.end63.i.if.then16_crit_edge:                   ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

if.end63.i.hst_compare.exit_crit_edge:            ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hst_compare.exit

hst_compare.exit:                                 ; preds = %if.end63.i.hst_compare.exit_crit_edge, %if.then57.i.hst_compare.exit_crit_edge, %if.then21.i, %if.then8.i
  %retval.0.i = phi i64 [ %sub30.i, %if.then21.i ], [ %sub.i, %if.then8.i ], [ %sub61.i, %if.then57.i.hst_compare.exit_crit_edge ], [ %sub67.i, %if.end63.i.hst_compare.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %retval.0.i)
  %cmp14 = icmp slt i64 %retval.0.i, 0
  br i1 %cmp14, label %hst_compare.exit.if.then16_crit_edge, label %hst_compare.exit.for.inc_crit_edge

hst_compare.exit.for.inc_crit_edge:               ; preds = %hst_compare.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

hst_compare.exit.if.then16_crit_edge:             ; preds = %hst_compare.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

if.then16:                                        ; preds = %hst_compare.exit.if.then16_crit_edge, %if.end63.i.if.then16_crit_edge, %for.body.if.then16_crit_edge
  br label %for.inc

for.inc:                                          ; preds = %if.then16, %hst_compare.exit.for.inc_crit_edge, %if.then57.i.for.inc_crit_edge
  %best.1 = phi ptr [ %pi.057, %if.then16 ], [ %best.052, %hst_compare.exit.for.inc_crit_edge ], [ %best.052, %if.then57.i.for.inc_crit_edge ]
  %21 = ptrtoint ptr %pi.057 to i32
  call void @__asan_load4_noabort(i32 %21)
  %pi.0 = load ptr, ptr %pi.057, align 4
  %cmp10.not = icmp eq ptr %pi.0, %1
  br i1 %cmp10.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  %tobool23.not = icmp eq ptr %best.1, null
  br i1 %tobool23.not, label %for.end.out_crit_edge, label %if.end25

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end25:                                         ; preds = %for.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %best.1) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end25.__list_del_entry.exit.i_crit_edge

if.end25.__list_del_entry.exit.i_crit_edge:       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %best.1, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %best.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %best.1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end25.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %best.1, ptr noundef %29, ptr noundef %1) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %best.1, ptr %prev.i2.i, align 4
  %31 = ptrtoint ptr %best.1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %1, ptr %best.1, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %best.1, i32 0, i32 1
  %32 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev3.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %best.1, ptr %29, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %path = getelementptr inbounds %struct.path_info, ptr %best.1, i32 0, i32 1
  %34 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %path, align 8
  br label %out

out:                                              ; preds = %list_move_tail.exit, %for.end.out_crit_edge, %for.cond.preheader.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi ptr [ null, %entry.out_crit_edge ], [ %35, %list_move_tail.exit ], [ null, %for.end.out_crit_edge ], [ null, %for.cond.preheader.out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  ret ptr %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hst_fail_path(ptr nocapture noundef readonly %ps, ptr nocapture noundef readonly %path) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.path_selector, ptr %ps, i32 0, i32 1
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %pscontext = getelementptr inbounds %struct.dm_path, ptr %path, i32 0, i32 1
  %2 = ptrtoint ptr %pscontext to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pscontext, align 4
  %lock = getelementptr inbounds %struct.selector, ptr %1, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %failed_paths = getelementptr inbounds %struct.selector, ptr %1, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.__list_del_entry.exit.i_crit_edge

entry.__list_del_entry.exit.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %entry.__list_del_entry.exit.i_crit_edge
  %10 = ptrtoint ptr %failed_paths to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %failed_paths, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %3, ptr noundef %failed_paths, ptr noundef %11) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %3, ptr %prev1.i.i2.i, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %3, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %failed_paths, ptr %prev3.i.i.i, align 4
  %15 = ptrtoint ptr %failed_paths to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %3, ptr %failed_paths, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %valid_count = getelementptr inbounds %struct.selector, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %valid_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %valid_count, align 4
  %dec = add i32 %17, -1
  store i32 %dec, ptr %valid_count, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hst_reinstate_path(ptr nocapture noundef readonly %ps, ptr nocapture noundef readonly %path) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.path_selector, ptr %ps, i32 0, i32 1
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %pscontext = getelementptr inbounds %struct.dm_path, ptr %path, i32 0, i32 1
  %2 = ptrtoint ptr %pscontext to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pscontext, align 4
  %lock = getelementptr inbounds %struct.selector, ptr %1, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.__list_del_entry.exit.i_crit_edge

entry.__list_del_entry.exit.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %entry.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %3, ptr noundef %11, ptr noundef %1) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %3, ptr %prev.i2.i, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %1, ptr %3, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %3, ptr %11, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %valid_count = getelementptr inbounds %struct.selector, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %valid_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %valid_count, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %valid_count, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hst_status(ptr nocapture noundef readonly %ps, ptr noundef readonly %path, i32 noundef %type, ptr noundef %result, i32 noundef %maxlen) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %path, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp = icmp eq i32 %maxlen, 0
  br i1 %cmp, label %if.then.if.end_crit_edge, label %cond.false

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %context = getelementptr inbounds %struct.path_selector, ptr %ps, i32 0, i32 1
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %weights = getelementptr inbounds %struct.selector, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %weights to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %weights, align 4
  %threshold_multiplier = getelementptr inbounds %struct.selector, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %threshold_multiplier to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %threshold_multiplier, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.10, i32 noundef %3, i32 noundef %5) #8
  br label %if.end

if.else:                                          ; preds = %entry
  %pscontext = getelementptr inbounds %struct.dm_path, ptr %path, i32 0, i32 1
  %6 = ptrtoint ptr %pscontext to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pscontext, align 4
  %8 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %if.else.if.end_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
    i32 2, label %sw.bb20
  ]

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

sw.bb:                                            ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp1 = icmp eq i32 %maxlen, 0
  br i1 %cmp1, label %sw.bb.if.end_crit_edge, label %cond.false3

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

cond.false3:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %historical_service_time = getelementptr inbounds %struct.path_info, ptr %7, i32 0, i32 4
  %9 = ptrtoint ptr %historical_service_time to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %historical_service_time, align 8
  %outstanding = getelementptr inbounds %struct.path_info, ptr %7, i32 0, i32 7
  %11 = ptrtoint ptr %outstanding to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %outstanding, align 8
  %stale_after = getelementptr inbounds %struct.path_info, ptr %7, i32 0, i32 5
  %13 = ptrtoint ptr %stale_after to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %stale_after, align 8
  %call6 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.11, i64 noundef %10, i64 noundef %12, i64 noundef %14) #8
  br label %if.end

sw.bb10:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp11 = icmp eq i32 %maxlen, 0
  br i1 %cmp11, label %sw.bb10.if.end_crit_edge, label %cond.false13

sw.bb10.if.end_crit_edge:                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

cond.false13:                                     ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.12) #8
  br label %if.end

sw.bb20:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %result to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %result, align 1
  br label %if.end

if.end:                                           ; preds = %sw.bb20, %cond.false13, %sw.bb10.if.end_crit_edge, %cond.false3, %sw.bb.if.end_crit_edge, %if.else.if.end_crit_edge, %cond.false, %if.then.if.end_crit_edge
  %sz.0 = phi i32 [ 0, %if.else.if.end_crit_edge ], [ 0, %sw.bb20 ], [ %call, %cond.false ], [ 0, %if.then.if.end_crit_edge ], [ %call6, %cond.false3 ], [ 0, %sw.bb.if.end_crit_edge ], [ %call16, %cond.false13 ], [ 0, %sw.bb10.if.end_crit_edge ]
  ret i32 %sz.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hst_start_io(ptr nocapture noundef readnone %ps, ptr nocapture noundef readonly %path, i32 noundef %nr_bytes) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pscontext = getelementptr inbounds %struct.dm_path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %pscontext to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pscontext, align 4
  %lock = getelementptr inbounds %struct.path_info, ptr %1, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %outstanding = getelementptr inbounds %struct.path_info, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %outstanding to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %outstanding, align 8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %outstanding, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hst_end_io(ptr nocapture noundef readonly %ps, ptr nocapture noundef readonly %path, i32 noundef %nr_bytes, i64 noundef %start_time) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pscontext = getelementptr inbounds %struct.dm_path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %pscontext to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pscontext, align 4
  %context = getelementptr inbounds %struct.path_selector, ptr %ps, i32 0, i32 1
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  %lock = getelementptr inbounds %struct.path_info, ptr %1, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %call.i.i = tail call i64 @ktime_get() #8
  %last_finish.i = getelementptr inbounds %struct.path_info, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %last_finish.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %last_finish.i, align 8
  %sub.i = sub i64 %start_time, %5
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp.i = icmp slt i64 %sub.i, 0
  %spec.select.i = select i1 %cmp.i, i64 %5, i64 %start_time
  %6 = ptrtoint ptr %last_finish.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %call.i.i, ptr %last_finish.i, align 8
  %sub3.i = sub i64 %call.i.i, %spec.select.i
  %7 = tail call i64 @llvm.smax.i64(i64 %sub3.i, i64 0) #8
  %outstanding = getelementptr inbounds %struct.path_info, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %outstanding to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %outstanding, align 8
  %dec = add i64 %9, -1
  store i64 %dec, ptr %outstanding, align 8
  %historical_service_time = getelementptr inbounds %struct.path_info, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %historical_service_time to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %historical_service_time, align 8
  %mul = shl i64 %7, 10
  %12 = tail call i64 @llvm.umin.i64(i64 %mul, i64 18014398509481983)
  %13 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %context, align 4
  %shr.i = lshr i64 %7, 24
  call void @__sanitizer_cov_trace_const_cmp8(i64 1056964608, i64 %7)
  %cmp2.i = icmp ult i64 %7, 1056964608
  %extract.t.i = trunc i64 %shr.i to i32
  %cond6.off0.i = select i1 %cmp2.i, i32 %extract.t.i, i32 63
  %arrayidx.i = getelementptr %struct.selector, ptr %14, i32 0, i32 4, i32 %cond6.off0.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %conv7.i = zext i32 %16 to i64
  %mul.i = mul i64 %11, %conv7.i
  %sub.i28 = sub nsw i64 1024, %conv7.i
  %mul1.i = mul i64 %sub.i28, %12
  %add.i = add i64 %mul.i, 512
  %add2.i = add i64 %add.i, %mul1.i
  %shr.i29 = lshr i64 %add2.i, 10
  %17 = ptrtoint ptr %historical_service_time to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %shr.i29, ptr %historical_service_time, align 8
  %valid_count = getelementptr inbounds %struct.selector, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %valid_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %valid_count, align 4
  %conv12 = sext i32 %19 to i64
  %shr = lshr i64 %add2.i, 20
  %mul14 = mul i64 %shr, %conv12
  %add = add i64 %mul14, %call.i.i
  %stale_after = getelementptr inbounds %struct.path_info, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %stale_after to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %add, ptr %stale_after, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_register_path_selector(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !26, !28, !30, !32, !34, !35, !37, !39, !41, !43, !44, !45, !46, !48, !49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/md/dm-ps-historical-service-time.c", i32 557, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @dm_hst_exit._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @dm_hst_exit._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__initcall__kmod_dm_historical_service_time__289_560_dm_hst_init6, !7, !"__initcall__kmod_dm_historical_service_time__289_560_dm_hst_init6", i1 false, i1 false}
!7 = !{!"../drivers/md/dm-ps-historical-service-time.c", i32 560, i32 1}
!8 = !{ptr @__exitcall_dm_hst_exit, !9, !"__exitcall_dm_hst_exit", i1 false, i1 false}
!9 = !{!"../drivers/md/dm-ps-historical-service-time.c", i32 561, i32 1}
!10 = !{ptr @__UNIQUE_ID_description290, !11, !"__UNIQUE_ID_description290", i1 false, i1 false}
!11 = !{!"../drivers/md/dm-ps-historical-service-time.c", i32 563, i32 1}
!12 = !{ptr @__UNIQUE_ID_author291, !13, !"__UNIQUE_ID_author291", i1 false, i1 false}
!13 = !{!"../drivers/md/dm-ps-historical-service-time.c", i32 564, i32 1}
!14 = !{ptr @__UNIQUE_ID_file292, !15, !"__UNIQUE_ID_file292", i1 false, i1 false}
!15 = !{!"../drivers/md/dm-ps-historical-service-time.c", i32 565, i32 1}
!16 = !{ptr @__UNIQUE_ID_license293, !15, !"__UNIQUE_ID_license293", i1 false, i1 false}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/md/dm-ps-historical-service-time.c", i32 525, i32 11}
!19 = !{ptr @hst_ps, !20, !"hst_ps", i1 false, i1 false}
!20 = !{!"../drivers/md/dm-ps-historical-service-time.c", i32 524, i32 34}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/md/dm-ps-historical-service-time.c", i32 197, i32 31}
!23 = !{ptr @alloc_selector.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/md/dm-ps-historical-service-time.c", i32 138, i32 3}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/md/dm-ps-historical-service-time.c", i32 283, i32 12}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/md/dm-ps-historical-service-time.c", i32 288, i32 12}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/md/dm-ps-historical-service-time.c", i32 295, i32 12}
!32 = !{ptr @hst_add_path.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/md/dm-ps-historical-service-time.c", i32 304, i32 2}
!34 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/md/dm-ps-historical-service-time.c", i32 247, i32 3}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/md/dm-ps-historical-service-time.c", i32 253, i32 4}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/md/dm-ps-historical-service-time.c", i32 257, i32 4}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/md/dm-ps-historical-service-time.c", i32 545, i32 3}
!43 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @dm_hst_init._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @dm_hst_init._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/md/dm-ps-historical-service-time.c", i32 547, i32 2}
!48 = !{ptr @dm_hst_init._entry.15, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @dm_hst_init._entry_ptr.17, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{!"auto-init"}
!60 = !{!"branch_weights", i32 1, i32 2000}
