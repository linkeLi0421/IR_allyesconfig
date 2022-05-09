; ModuleID = '/llk/IR_all_yes/drivers/md/dm-ps-service-time.c_pt.bc'
source_filename = "../drivers/md/dm-ps-service-time.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.path_selector_type = type { ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.selector = type { %struct.list_head, %struct.list_head, %struct.spinlock }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.path_selector = type { ptr, ptr }
%struct.path_info = type { %struct.list_head, ptr, i32, i32, %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dm_path = type { ptr, ptr }

@st_ps = internal global { %struct.path_selector_type, [44 x i8] } { %struct.path_selector_type { ptr @.str.3, ptr null, i32 2, i32 2, ptr @st_create, ptr @st_destroy, ptr @st_add_path, ptr @st_select_path, ptr @st_fail_path, ptr @st_reinstate_path, ptr @st_status, ptr @st_start_io, ptr @st_end_io }, [44 x i8] zeroinitializer }, align 32
@dm_st_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013device-mapper: multipath service-time: unregister failed %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dm_st_exit\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/md/dm-ps-service-time.c\00", [32 x i8] zeroinitializer }, align 32
@dm_st_exit._entry_ptr = internal global ptr @dm_st_exit._entry, section ".printk_index", align 4
@__initcall__kmod_dm_service_time__283_360_dm_st_init6 = internal global ptr @dm_st_init, section ".initcall6.init", align 4
@__exitcall_dm_st_exit = internal global ptr @dm_st_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description284 = internal constant [76 x i8] c"dm_service_time.description=device-mapper throughput oriented path selector\00", section ".modinfo", align 1
@__UNIQUE_ID_author285 = internal constant [59 x i8] c"dm_service_time.author=Kiyoshi Ueda <k-ueda@ct.jp.nec.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file286 = internal constant [48 x i8] c"dm_service_time.file=drivers/md/dm-service-time\00", section ".modinfo", align 1
@__UNIQUE_ID_license287 = internal constant [28 x i8] c"dm_service_time.license=GPL\00", section ".modinfo", align 1
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"service-time\00", [19 x i8] zeroinitializer }, align 32
@alloc_selector.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&s->lock\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.5 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"service-time ps: incorrect number of arguments\00", [49 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%u%c\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"service-time ps: invalid repeat count\00", [58 x i8] zeroinitializer }, align 32
@st_add_path._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.st_add_path = private unnamed_addr constant [12 x i8] c"st_add_path\00", align 1
@st_add_path._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @__func__.st_add_path, ptr @.str.2, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"\014device-mapper: multipath service-time: repeat_count > 1 is deprecated, using 1 instead\0A\00", [38 x i8] zeroinitializer }, align 32
@st_add_path._entry_ptr = internal global ptr @st_add_path._entry, section ".printk_index", align 4
@.str.10 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"service-time ps: invalid relative_throughput value\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"service-time ps: Error allocating path context\00", [49 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0 \00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%d %u \00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%u %u \00", [25 x i8] zeroinitializer }, align 32
@dm_st_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013device-mapper: multipath service-time: register failed %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dm_st_init\00", [21 x i8] zeroinitializer }, align 32
@dm_st_init._entry_ptr = internal global ptr @dm_st_init._entry, section ".printk_index", align 4
@dm_st_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016device-mapper: multipath service-time: version 0.3.0 loaded\0A\00", [33 x i8] zeroinitializer }, align 32
@dm_st_init._entry_ptr.19 = internal global ptr @dm_st_init._entry.17, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.20 = private unnamed_addr constant [6 x i8] c"st_ps\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 324, i32 34 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 357, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 325, i32 11 }
@___asan_gen_.38 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 45, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 134, i32 12 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 138, i32 31 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 139, i32 12 }
@___asan_gen_.53 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 144, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 151, i32 12 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 158, i32 12 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 89, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 95, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 99, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 345, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.93 = private constant [35 x i8] c"../drivers/md/dm-ps-service-time.c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 347, i32 2 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_author285, ptr @__UNIQUE_ID_description284, ptr @__UNIQUE_ID_file286, ptr @__UNIQUE_ID_license287, ptr @__exitcall_dm_st_exit, ptr @__initcall__kmod_dm_service_time__283_360_dm_st_init6, ptr @dm_st_exit, ptr @dm_st_exit._entry, ptr @dm_st_exit._entry_ptr, ptr @dm_st_init._entry, ptr @dm_st_init._entry.17, ptr @dm_st_init._entry_ptr, ptr @dm_st_init._entry_ptr.19, ptr @st_add_path._entry, ptr @st_add_path._entry_ptr, ptr @st_ps, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @alloc_selector.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @st_add_path._rs, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_ps to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_st_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_selector.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_add_path._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_add_path._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_st_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_st_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dm_st_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @dm_unregister_path_selector(ptr noundef nonnull @st_ps) #8
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
define internal i32 @dm_st_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dm_register_path_selector(ptr noundef nonnull @st_ps) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %call) #11
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_create(ptr nocapture noundef writeonly %ps, i32 noundef %argc, ptr nocapture noundef readnone %argv) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 60) #12
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %prev.i.i, align 4
  %failed_paths.i = getelementptr inbounds %struct.selector, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %failed_paths.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %failed_paths.i, ptr %failed_paths.i, align 8
  %prev.i6.i = getelementptr inbounds %struct.selector, ptr %call7.i.i, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i6.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %failed_paths.i, ptr %prev.i6.i, align 4
  %lock.i = getelementptr inbounds %struct.selector, ptr %call7.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @alloc_selector.__key, i16 noundef signext 3) #8
  %context = getelementptr inbounds %struct.path_selector, ptr %ps, i32 0, i32 1
  %5 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %context, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @st_destroy(ptr nocapture noundef %ps) #4 align 64 {
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
  %next.0.i = load ptr, ptr %pi.019.i, align 4
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
  %next.0.i7 = load ptr, ptr %pi.019.i6, align 4
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
define internal i32 @st_add_path(ptr nocapture noundef readonly %ps, ptr noundef %path, i32 noundef %argc, ptr nocapture noundef readonly %argv, ptr nocapture noundef writeonly %error) #4 align 64 {
entry:
  %repeat_count = alloca i32, align 4
  %relative_throughput = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %relative_throughput) #8
  %3 = ptrtoint ptr %relative_throughput to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %relative_throughput, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy) #8
  %4 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %dummy, align 1, !annotation !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %argc)
  %cmp = icmp sgt i32 %argc, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.5, ptr %error, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %argc)
  %tobool.not = icmp eq i32 %argc, 0
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %land.lhs.true

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

land.lhs.true:                                    ; preds = %if.end
  %6 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %argv, align 4
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %7, ptr noundef nonnull @.str.6, ptr noundef nonnull %repeat_count, ptr noundef nonnull %dummy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp1.not = icmp eq i32 %call, 1
  br i1 %cmp1.not, label %land.lhs.true.if.end3_crit_edge, label %if.then2

land.lhs.true.if.end3_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then2:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.7, ptr %error, align 4
  br label %cleanup

if.end3:                                          ; preds = %land.lhs.true.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %9 = ptrtoint ptr %repeat_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %repeat_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp4 = icmp ugt i32 %10, 1
  br i1 %cmp4, label %if.then5, label %if.end3.if.end11_crit_edge

if.end3.if.end11_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then5:                                         ; preds = %if.end3
  %call6 = call i32 @___ratelimit(ptr noundef nonnull @st_add_path._rs, ptr noundef nonnull @__func__.st_add_path) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then5.if.end10_crit_edge, label %do.end

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #11
  br label %if.end10

if.end10:                                         ; preds = %do.end, %if.then5.if.end10_crit_edge
  %11 = ptrtoint ptr %repeat_count to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %repeat_count, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.end3.if.end11_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %argc)
  %cmp12 = icmp eq i32 %argc, 2
  br i1 %cmp12, label %land.lhs.true13, label %if.end11.if.end19_crit_edge

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

land.lhs.true13:                                  ; preds = %if.end11
  %arrayidx14 = getelementptr ptr, ptr %argv, i32 1
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx14, align 4
  %call15 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %13, ptr noundef nonnull @.str.6, ptr noundef nonnull %relative_throughput, ptr noundef nonnull %dummy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call15)
  %cmp16.not = icmp eq i32 %call15, 1
  br i1 %cmp16.not, label %lor.lhs.false, label %land.lhs.true13.if.then18_crit_edge

land.lhs.true13.if.then18_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18

lor.lhs.false:                                    ; preds = %land.lhs.true13
  %14 = ptrtoint ptr %relative_throughput to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %relative_throughput, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %15)
  %cmp17 = icmp ugt i32 %15, 100
  br i1 %cmp17, label %lor.lhs.false.if.then18_crit_edge, label %lor.lhs.false.if.end19_crit_edge

lor.lhs.false.if.end19_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

lor.lhs.false.if.then18_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18

if.then18:                                        ; preds = %lor.lhs.false.if.then18_crit_edge, %land.lhs.true13.if.then18_crit_edge
  %16 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.10, ptr %error, align 4
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false.if.end19_crit_edge, %if.end11.if.end19_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3264, i32 noundef 24) #12
  %tobool21.not = icmp eq ptr %call7.i, null
  br i1 %tobool21.not, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.11, ptr %error, align 4
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %path24 = getelementptr inbounds %struct.path_info, ptr %call7.i, i32 0, i32 1
  %19 = ptrtoint ptr %path24 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %path, ptr %path24, align 8
  %20 = ptrtoint ptr %repeat_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %repeat_count, align 4
  %repeat_count25 = getelementptr inbounds %struct.path_info, ptr %call7.i, i32 0, i32 2
  %22 = ptrtoint ptr %repeat_count25 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %repeat_count25, align 4
  %23 = ptrtoint ptr %relative_throughput to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %relative_throughput, align 4
  %relative_throughput26 = getelementptr inbounds %struct.path_info, ptr %call7.i, i32 0, i32 3
  %25 = ptrtoint ptr %relative_throughput26 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %relative_throughput26, align 8
  %in_flight_size = getelementptr inbounds %struct.path_info, ptr %call7.i, i32 0, i32 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %in_flight_size, i32 noundef 4) #8
  %26 = ptrtoint ptr %in_flight_size to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 0, ptr %in_flight_size, align 4
  %pscontext = getelementptr inbounds %struct.dm_path, ptr %path, i32 0, i32 1
  %27 = ptrtoint ptr %pscontext to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i, ptr %pscontext, align 4
  %lock = getelementptr inbounds %struct.selector, ptr %1, i32 0, i32 2
  %call32 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i, align 4
  %call.i.i58 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %29, ptr noundef %1) #8
  br i1 %call.i.i58, label %if.end.i.i, label %if.end23.list_add_tail.exit_crit_edge

if.end23.list_add_tail.exit_crit_edge:            ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i, ptr %prev.i, align 4
  %31 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %1, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %32 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev3.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %call7.i, ptr %29, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end23.list_add_tail.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call32) #8
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then22, %if.then18, %if.then2, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then2 ], [ -22, %if.then18 ], [ 0, %list_add_tail.exit ], [ -12, %if.then22 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %relative_throughput) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %repeat_count) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @st_select_path(ptr nocapture noundef readonly %ps, i32 noundef %nr_bytes) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.path_selector, ptr %ps, i32 0, i32 1
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %lock = getelementptr inbounds %struct.selector, ptr %1, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
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
  %pi.042 = load ptr, ptr %1, align 4
  %cmp9.not43 = icmp eq ptr %pi.042, %1
  br i1 %cmp9.not43, label %for.cond.preheader.out_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %pi.045 = phi ptr [ %pi.0, %for.inc.for.body_crit_edge ], [ %pi.042, %for.cond.preheader.for.body_crit_edge ]
  %best.044 = phi ptr [ %best.1, %for.inc.for.body_crit_edge ], [ null, %for.cond.preheader.for.body_crit_edge ]
  %tobool11.not = icmp eq ptr %best.044, null
  br i1 %tobool11.not, label %for.body.if.then15_crit_edge, label %lor.lhs.false

for.body.if.then15_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15

lor.lhs.false:                                    ; preds = %for.body
  %in_flight_size.i = getelementptr inbounds %struct.path_info, ptr %pi.045, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_flight_size.i, i32 noundef 4) #8
  %5 = ptrtoint ptr %in_flight_size.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %in_flight_size.i, align 4
  %in_flight_size1.i = getelementptr inbounds %struct.path_info, ptr %best.044, i32 0, i32 4
  %call.i.i60.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_flight_size1.i, i32 noundef 4) #8
  %7 = ptrtoint ptr %in_flight_size1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %in_flight_size1.i, align 4
  %relative_throughput.i = getelementptr inbounds %struct.path_info, ptr %pi.045, i32 0, i32 3
  %9 = ptrtoint ptr %relative_throughput.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %relative_throughput.i, align 4
  %relative_throughput3.i = getelementptr inbounds %struct.path_info, ptr %best.044, i32 0, i32 3
  %11 = ptrtoint ptr %relative_throughput3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %relative_throughput3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %10)
  %cmp.i40 = icmp eq i32 %12, %10
  br i1 %cmp.i40, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = sub i32 %6, %8
  br label %st_compare_load.exit

if.end.i:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp4.i = icmp eq i32 %6, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  %or.cond.i = select i1 %cmp4.i, i1 true, i1 %tobool.not.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool8.not.i = icmp eq i32 %12, 0
  %or.cond59.i = select i1 %or.cond.i, i1 true, i1 %tobool8.not.i
  br i1 %or.cond59.i, label %if.then9.i, label %if.end13.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub12.i = sub i32 %12, %10
  br label %st_compare_load.exit

if.end13.i:                                       ; preds = %if.end.i
  %add.i = add i32 %6, %nr_bytes
  %add14.i = add i32 %8, %nr_bytes
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554430, i32 %add.i)
  %cmp15.i = icmp ugt i32 %add.i, 33554430
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554430, i32 %add14.i)
  %cmp16.i = icmp ugt i32 %add14.i, 33554430
  %spec.select.i = select i1 %cmp15.i, i1 true, i1 %cmp16.i, !prof !66
  br i1 %spec.select.i, label %if.then19.i, label %if.end13.i.if.end21.i_crit_edge, !prof !66

if.end13.i.if.end21.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.then19.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i = lshr i32 %add.i, 7
  %shr20.i = lshr i32 %add14.i, 7
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then19.i, %if.end13.i.if.end21.i_crit_edge
  %sz1.0.i = phi i32 [ %shr.i, %if.then19.i ], [ %add.i, %if.end13.i.if.end21.i_crit_edge ]
  %sz2.0.i = phi i32 [ %shr20.i, %if.then19.i ], [ %add14.i, %if.end13.i.if.end21.i_crit_edge ]
  %mul.i = mul i32 %sz1.0.i, %12
  %mul24.i = mul i32 %sz2.0.i, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %mul24.i)
  %cmp25.not.i = icmp eq i32 %mul.i, %mul24.i
  br i1 %cmp25.not.i, label %if.end28.i, label %if.then26.i

if.then26.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub27.i = sub i32 %mul.i, %mul24.i
  br label %st_compare_load.exit

if.end28.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub31.i = sub i32 %12, %10
  br label %st_compare_load.exit

st_compare_load.exit:                             ; preds = %if.end28.i, %if.then26.i, %if.then9.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %sub12.i, %if.then9.i ], [ %sub27.i, %if.then26.i ], [ %sub31.i, %if.end28.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp13 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp13, label %st_compare_load.exit.if.then15_crit_edge, label %st_compare_load.exit.for.inc_crit_edge

st_compare_load.exit.for.inc_crit_edge:           ; preds = %st_compare_load.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

st_compare_load.exit.if.then15_crit_edge:         ; preds = %st_compare_load.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15

if.then15:                                        ; preds = %st_compare_load.exit.if.then15_crit_edge, %for.body.if.then15_crit_edge
  br label %for.inc

for.inc:                                          ; preds = %if.then15, %st_compare_load.exit.for.inc_crit_edge
  %best.1 = phi ptr [ %pi.045, %if.then15 ], [ %best.044, %st_compare_load.exit.for.inc_crit_edge ]
  %13 = ptrtoint ptr %pi.045 to i32
  call void @__asan_load4_noabort(i32 %13)
  %pi.0 = load ptr, ptr %pi.045, align 4
  %cmp9.not = icmp eq ptr %pi.0, %1
  br i1 %cmp9.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  %tobool22.not = icmp eq ptr %best.1, null
  br i1 %tobool22.not, label %for.end.out_crit_edge, label %if.end24

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end24:                                         ; preds = %for.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %best.1) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end24.__list_del_entry.exit.i_crit_edge

if.end24.__list_del_entry.exit.i_crit_edge:       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %best.1, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %best.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %best.1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end24.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i41 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %best.1, ptr noundef %21, ptr noundef %1) #8
  br i1 %call.i.i.i41, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %best.1, ptr %prev.i2.i, align 4
  %23 = ptrtoint ptr %best.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %1, ptr %best.1, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %best.1, i32 0, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %best.1, ptr %21, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %path = getelementptr inbounds %struct.path_info, ptr %best.1, i32 0, i32 1
  %26 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %path, align 4
  br label %out

out:                                              ; preds = %list_move_tail.exit, %for.end.out_crit_edge, %for.cond.preheader.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi ptr [ null, %entry.out_crit_edge ], [ %27, %list_move_tail.exit ], [ null, %for.end.out_crit_edge ], [ null, %for.cond.preheader.out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  ret ptr %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @st_fail_path(ptr nocapture noundef readonly %ps, ptr nocapture noundef readonly %path) #4 align 64 {
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
  %lock = getelementptr inbounds %struct.selector, ptr %1, i32 0, i32 2
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
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_reinstate_path(ptr nocapture noundef readonly %ps, ptr nocapture noundef readonly %path) #4 align 64 {
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
  %lock = getelementptr inbounds %struct.selector, ptr %1, i32 0, i32 2
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
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_status(ptr nocapture noundef readnone %ps, ptr noundef readonly %path, i32 noundef %type, ptr noundef %result, i32 noundef %maxlen) #4 align 64 {
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
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.12) #8
  br label %if.end

if.else:                                          ; preds = %entry
  %pscontext = getelementptr inbounds %struct.dm_path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %pscontext to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pscontext, align 4
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %if.else.if.end_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb11
    i32 2, label %sw.bb22
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
  %in_flight_size = getelementptr inbounds %struct.path_info, ptr %1, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %in_flight_size, i32 noundef 4) #8
  %3 = ptrtoint ptr %in_flight_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %in_flight_size, align 4
  %relative_throughput = getelementptr inbounds %struct.path_info, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %relative_throughput to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %relative_throughput, align 4
  %call7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.13, i32 noundef %4, i32 noundef %6) #8
  br label %if.end

sw.bb11:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp12 = icmp eq i32 %maxlen, 0
  br i1 %cmp12, label %sw.bb11.if.end_crit_edge, label %cond.false14

sw.bb11.if.end_crit_edge:                         ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

cond.false14:                                     ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  %repeat_count = getelementptr inbounds %struct.path_info, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %repeat_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %repeat_count, align 4
  %relative_throughput17 = getelementptr inbounds %struct.path_info, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %relative_throughput17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %relative_throughput17, align 4
  %call18 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.14, i32 noundef %8, i32 noundef %10) #8
  br label %if.end

sw.bb22:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %result to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %result, align 1
  br label %if.end

if.end:                                           ; preds = %sw.bb22, %cond.false14, %sw.bb11.if.end_crit_edge, %cond.false3, %sw.bb.if.end_crit_edge, %if.else.if.end_crit_edge, %cond.false, %if.then.if.end_crit_edge
  %sz.0 = phi i32 [ 0, %if.else.if.end_crit_edge ], [ 0, %sw.bb22 ], [ %call, %cond.false ], [ 0, %if.then.if.end_crit_edge ], [ %call7, %cond.false3 ], [ 0, %sw.bb.if.end_crit_edge ], [ %call18, %cond.false14 ], [ 0, %sw.bb11.if.end_crit_edge ]
  ret i32 %sz.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_start_io(ptr nocapture noundef readnone %ps, ptr nocapture noundef readonly %path, i32 noundef %nr_bytes) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pscontext = getelementptr inbounds %struct.dm_path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %pscontext to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pscontext, align 4
  %in_flight_size = getelementptr inbounds %struct.path_info, ptr %1, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %in_flight_size, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %in_flight_size, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %in_flight_size, ptr %in_flight_size, i32 %nr_bytes, ptr elementtype(i32) %in_flight_size) #8, !srcloc !67
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_end_io(ptr nocapture noundef readnone %ps, ptr nocapture noundef readonly %path, i32 noundef %nr_bytes, i64 noundef %start_time) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pscontext = getelementptr inbounds %struct.dm_path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %pscontext to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pscontext, align 4
  %in_flight_size = getelementptr inbounds %struct.path_info, ptr %1, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %in_flight_size, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %in_flight_size, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %in_flight_size, ptr %in_flight_size, i32 %nr_bytes, ptr elementtype(i32) %in_flight_size) #8, !srcloc !68
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_register_path_selector(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !24, !26, !28, !30, !32, !33, !34, !35, !36, !37, !39, !41, !43, !45, !47, !49, !50, !51, !52, !54, !55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/md/dm-ps-service-time.c", i32 357, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @dm_st_exit._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @dm_st_exit._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__initcall__kmod_dm_service_time__283_360_dm_st_init6, !7, !"__initcall__kmod_dm_service_time__283_360_dm_st_init6", i1 false, i1 false}
!7 = !{!"../drivers/md/dm-ps-service-time.c", i32 360, i32 1}
!8 = !{ptr @__exitcall_dm_st_exit, !9, !"__exitcall_dm_st_exit", i1 false, i1 false}
!9 = !{!"../drivers/md/dm-ps-service-time.c", i32 361, i32 1}
!10 = !{ptr @__UNIQUE_ID_description284, !11, !"__UNIQUE_ID_description284", i1 false, i1 false}
!11 = !{!"../drivers/md/dm-ps-service-time.c", i32 363, i32 1}
!12 = !{ptr @__UNIQUE_ID_author285, !13, !"__UNIQUE_ID_author285", i1 false, i1 false}
!13 = !{!"../drivers/md/dm-ps-service-time.c", i32 364, i32 1}
!14 = !{ptr @__UNIQUE_ID_file286, !15, !"__UNIQUE_ID_file286", i1 false, i1 false}
!15 = !{!"../drivers/md/dm-ps-service-time.c", i32 365, i32 1}
!16 = !{ptr @__UNIQUE_ID_license287, !15, !"__UNIQUE_ID_license287", i1 false, i1 false}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/md/dm-ps-service-time.c", i32 325, i32 11}
!19 = !{ptr @st_ps, !20, !"st_ps", i1 false, i1 false}
!20 = !{!"../drivers/md/dm-ps-service-time.c", i32 324, i32 34}
!21 = !{ptr @alloc_selector.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/md/dm-ps-service-time.c", i32 45, i32 3}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/md/dm-ps-service-time.c", i32 134, i32 12}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/md/dm-ps-service-time.c", i32 138, i32 31}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/md/dm-ps-service-time.c", i32 139, i32 12}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/md/dm-ps-service-time.c", i32 144, i32 3}
!32 = !{ptr @st_add_path._rs, !31, !"_rs", i1 false, i1 false}
!33 = !{ptr @__func__.st_add_path, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @st_add_path._entry, !31, !"_entry", i1 false, i1 false}
!36 = !{ptr @st_add_path._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/md/dm-ps-service-time.c", i32 151, i32 12}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/md/dm-ps-service-time.c", i32 158, i32 12}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/md/dm-ps-service-time.c", i32 89, i32 3}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/md/dm-ps-service-time.c", i32 95, i32 4}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/md/dm-ps-service-time.c", i32 99, i32 4}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/md/dm-ps-service-time.c", i32 345, i32 3}
!49 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @dm_st_init._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @dm_st_init._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/md/dm-ps-service-time.c", i32 347, i32 2}
!54 = !{ptr @dm_st_init._entry.17, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @dm_st_init._entry_ptr.19, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"auto-init"}
!66 = !{!"branch_weights", i32 1, i32 2000}
!67 = !{i64 2148666559, i64 2148666585, i64 2148666614, i64 2148666648, i64 2148666679, i64 2148666702}
!68 = !{i64 2148669024, i64 2148669050, i64 2148669079, i64 2148669113, i64 2148669144, i64 2148669167}
