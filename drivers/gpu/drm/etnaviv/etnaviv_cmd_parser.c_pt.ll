; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/etnaviv/etnaviv_cmd_parser.c_pt.bc'
source_filename = "../drivers/gpu/drm/etnaviv/etnaviv_cmd_parser.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon = type { i16, i16 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.etnaviv_gpu = type { ptr, ptr, ptr, %struct.mutex, %struct.etnaviv_chip_identity, i32, ptr, %struct.drm_gpu_scheduler, i8, i8, %struct.etnaviv_cmdbuf, i32, [1 x i32], [30 x %struct.etnaviv_event], %struct.completion, %struct.spinlock, i32, %struct.mutex, %struct.idr, i32, i32, %struct.wait_queue_head, i64, %struct.spinlock, %struct.work_struct, i32, i32, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.etnaviv_chip_identity = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.etnaviv_cmdbuf = type { ptr, i32, ptr, i32, i32 }
%struct.etnaviv_event = type { ptr, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.drm_etnaviv_gem_submit_reloc = type { i32, i32, i64, i32 }

@etnaviv_states = internal global { [2048 x i32], [2048 x i8] } zeroinitializer, align 32
@etnaviv_sensitive_states = internal unnamed_addr constant [45 x %struct.anon] [%struct.anon { i16 1152, i16 1 }, %struct.anon { i16 1162, i16 1 }, %struct.anon { i16 1166, i16 1 }, %struct.anon { i16 1185, i16 1 }, %struct.anon { i16 1187, i16 1 }, %struct.anon { i16 1217, i16 1 }, %struct.anon { i16 1220, i16 1 }, %struct.anon { i16 1222, i16 1 }, %struct.anon { i16 18944, i16 4 }, %struct.anon { i16 18984, i16 4 }, %struct.anon { i16 18992, i16 4 }, %struct.anon { i16 19036, i16 4 }, %struct.anon { i16 19072, i16 8 }, %struct.anon { i16 19152, i16 8 }, %struct.anon { i16 19168, i16 8 }, %struct.anon { i16 19256, i16 8 }, %struct.anon { i16 401, i16 1 }, %struct.anon { i16 403, i16 1 }, %struct.anon { i16 416, i16 8 }, %struct.anon { i16 539, i16 1 }, %struct.anon { i16 1034, i16 1 }, %struct.anon { i16 1284, i16 1 }, %struct.anon { i16 1292, i16 1 }, %struct.anon { i16 1302, i16 1 }, %struct.anon { i16 1304, i16 8 }, %struct.anon { i16 1312, i16 8 }, %struct.anon { i16 1344, i16 8 }, %struct.anon { i16 1352, i16 8 }, %struct.anon { i16 1410, i16 1 }, %struct.anon { i16 1412, i16 1 }, %struct.anon { i16 1430, i16 1 }, %struct.anon { i16 1431, i16 1 }, %struct.anon { i16 1433, i16 1 }, %struct.anon { i16 1434, i16 1 }, %struct.anon { i16 1449, i16 1 }, %struct.anon { i16 1456, i16 8 }, %struct.anon { i16 1464, i16 8 }, %struct.anon { i16 1488, i16 8 }, %struct.anon { i16 1520, i16 8 }, %struct.anon { i16 1528, i16 8 }, %struct.anon { i16 2304, i16 224 }, %struct.anon { i16 3593, i16 1 }, %struct.anon { i16 16896, i16 512 }, %struct.anon { i16 20864, i16 16 }, %struct.anon { i16 20992, i16 64 }], section ".init.rodata", align 2
@etnaviv_cmd_validate_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 190, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: op %u not permitted at offset %tu\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"etnaviv_cmd_validate_one\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/gpu/drm/etnaviv/etnaviv_cmd_parser.c\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@etnaviv_cmd_validate_one._entry_ptr = internal global ptr @etnaviv_cmd_validate_one._entry, section ".printk_index", align 4
@etnaviv_cmd_validate_one._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 201, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: commands overflow end of buffer: %tu > %u\0A\00", [49 x i8] zeroinitializer }, align 32
@etnaviv_cmd_validate_one._entry_ptr.7 = internal global ptr @etnaviv_cmd_validate_one._entry.5, section ".printk_index", align 4
@etnaviv_validate_load_state._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.etnaviv_validate_load_state = private unnamed_addr constant [28 x i8] c"etnaviv_validate_load_state\00", align 1
@etnaviv_validate_load_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @__func__.etnaviv_validate_load_state, ptr @.str.2, i32 125, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s: load state touches restricted state 0x%x at offset %u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@etnaviv_validate_load_state._entry_ptr = internal global ptr @etnaviv_validate_load_state._entry, section ".printk_index", align 4
@etnaviv_warn_if_non_sensitive.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@etnaviv_warn_if_non_sensitive._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 96, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s: relocation for non-sensitive state 0x%x at offset %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"etnaviv_warn_if_non_sensitive\00", [34 x i8] zeroinitializer }, align 32
@etnaviv_warn_if_non_sensitive._entry_ptr = internal global ptr @etnaviv_warn_if_non_sensitive._entry, section ".printk_index", align 4
@cmd_length = internal constant { <{ [13 x i8], [19 x i8] }>, [32 x i8] } { <{ [13 x i8], [19 x i8] }> <{ [13 x i8] c"\00\00\00\02\00\04\06\00\00\02\00\00\04", [19 x i8] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@___asan_gen_.14 = private unnamed_addr constant [15 x i8] c"etnaviv_states\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 78, i32 8 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 189, i32 5 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 200, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 123, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 93, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [11 x i8] c"cmd_length\00", align 1
@___asan_gen_.66 = private constant [48 x i8] c"../drivers/gpu/drm/etnaviv/etnaviv_cmd_parser.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 139, i32 16 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @etnaviv_cmd_validate_one._entry, ptr @etnaviv_cmd_validate_one._entry.5, ptr @etnaviv_cmd_validate_one._entry_ptr, ptr @etnaviv_cmd_validate_one._entry_ptr.7, ptr @etnaviv_validate_load_state._entry, ptr @etnaviv_validate_load_state._entry_ptr, ptr @etnaviv_warn_if_non_sensitive._entry, ptr @etnaviv_warn_if_non_sensitive._entry_ptr, ptr @etnaviv_states, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @etnaviv_validate_load_state._rs, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @cmd_length], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_states to i32), i32 8192, i32 10240, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_cmd_validate_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_cmd_validate_one._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_validate_load_state._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_validate_load_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_warn_if_non_sensitive._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd_length to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @etnaviv_validate_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.06 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [45 x %struct.anon], ptr @etnaviv_sensitive_states, i32 0, i32 %i.06
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %1 to i32
  %size = getelementptr [45 x %struct.anon], ptr @etnaviv_sensitive_states, i32 0, i32 %i.06, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %size, align 2
  %conv2 = zext i16 %3 to i32
  tail call void @__bitmap_set(ptr noundef nonnull @etnaviv_states, i32 noundef %conv, i32 noundef %conv2) #5
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, 45
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @etnaviv_cmd_validate_one(ptr noundef %gpu, ptr noundef %stream, i32 noundef %size, ptr noundef %relocs, i32 noundef %reloc_size) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i32, ptr %stream, i32 %size
  %cmp101 = icmp ugt ptr %add.ptr, %stream
  br i1 %cmp101, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %sub.ptr.rhs.cast.i = ptrtoint ptr %stream to i32
  %dev.i.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %buf.0104 = phi ptr [ %stream, %while.body.lr.ph ], [ %add.ptr25, %cleanup.while.body_crit_edge ]
  %state.sroa.7.0103 = phi ptr [ %relocs, %while.body.lr.ph ], [ %state.sroa.7.8, %cleanup.while.body_crit_edge ]
  %state.sroa.17.0102 = phi i32 [ %reloc_size, %while.body.lr.ph ], [ %state.sroa.17.8, %cleanup.while.body_crit_edge ]
  %0 = ptrtoint ptr %buf.0104 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buf.0104, align 4
  %shr = lshr i32 %1, 27
  %2 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr, label %sw.default [
    i32 1, label %sw.bb
    i32 4, label %sw.bb13
  ]

sw.bb:                                            ; preds = %while.body
  %and = lshr i32 %1, 16
  %shr3 = and i32 %and, 1023
  %add4 = add nuw nsw i32 %shr3, 2
  %and5 = and i32 %add4, 2046
  %add.ptr6 = getelementptr i32, ptr %buf.0104, i32 %and5
  %cmp7 = icmp ugt ptr %add.ptr6, %add.ptr
  br i1 %cmp7, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %and8 = and i32 %1, 65535
  %add.ptr10 = getelementptr i32, ptr %buf.0104, i32 1
  %add.i = add nuw nsw i32 %shr3, %and8
  %3 = tail call i32 @llvm.umin.i32(i32 %add.i, i32 65536) #5
  %call.i = tail call i32 @_find_next_bit_be(ptr noundef nonnull @etnaviv_states, i32 noundef %3, i32 noundef %and8) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %3)
  %cmp195.i = icmp ult i32 %call.i, %3
  br i1 %cmp195.i, label %for.body.lr.ph.i, label %if.end.for.end.i_crit_edge

if.end.for.end.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr10 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %for.body.i

for.body.i:                                       ; preds = %if.then.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %state.sroa.17.1 = phi i32 [ %state.sroa.17.0102, %for.body.lr.ph.i ], [ %dec.i, %if.then.i.for.body.i_crit_edge ]
  %state.sroa.7.1 = phi ptr [ %state.sroa.7.0103, %for.body.lr.ph.i ], [ %incdec.ptr.i, %if.then.i.for.body.i_crit_edge ]
  %st_offset.096.i = phi i32 [ %call.i, %for.body.lr.ph.i ], [ %call16.i, %if.then.i.for.body.i_crit_edge ]
  %add2.i = sub i32 %st_offset.096.i, %and8
  %sub100.i = shl i32 %add2.i, 2
  %4 = add i32 %sub.ptr.sub.i, %sub100.i
  %mul.i = and i32 %4, -4
  %mul3.i = shl i32 %st_offset.096.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state.sroa.17.1)
  %tobool.not.i.i = icmp eq i32 %state.sroa.17.1, 0
  br i1 %tobool.not.i.i, label %for.body.i.do.body.i_crit_edge, label %land.lhs.true.i.i

for.body.i.do.body.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

land.lhs.true.i.i:                                ; preds = %for.body.i
  %5 = ptrtoint ptr %state.sroa.7.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state.sroa.7.1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %mul.i)
  %cmp.i.i = icmp ult i32 %6, %mul.i
  br i1 %cmp.i.i, label %do.body.i.i, label %land.lhs.true.i.i.land.lhs.true.i_crit_edge

land.lhs.true.i.i.land.lhs.true.i_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

do.body.i.i:                                      ; preds = %land.lhs.true.i.i
  %.b23.i.i = load i1, ptr @etnaviv_warn_if_non_sensitive.__print_once, align 1
  br i1 %.b23.i.i, label %do.body.i.i.land.rhs.i.i.preheader_crit_edge, label %if.then2.i.i

do.body.i.i.land.rhs.i.i.preheader_crit_edge:     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i.i.preheader

if.then2.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @etnaviv_warn_if_non_sensitive.__print_once, align 1
  %7 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %mul3.i, i32 noundef %6) #8
  br label %land.rhs.i.i.preheader

land.rhs.i.i.preheader:                           ; preds = %if.then2.i.i, %do.body.i.i.land.rhs.i.i.preheader_crit_edge
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %while.body.i.i.land.rhs.i.i_crit_edge, %land.rhs.i.i.preheader
  %state.sroa.17.2 = phi i32 [ %dec.i.i, %while.body.i.i.land.rhs.i.i_crit_edge ], [ %state.sroa.17.1, %land.rhs.i.i.preheader ]
  %state.sroa.7.2 = phi ptr [ %incdec.ptr.i.i, %while.body.i.i.land.rhs.i.i_crit_edge ], [ %state.sroa.7.1, %land.rhs.i.i.preheader ]
  %9 = ptrtoint ptr %state.sroa.7.2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state.sroa.7.2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %mul.i)
  %cmp11.i.i = icmp ult i32 %10, %mul.i
  br i1 %cmp11.i.i, label %while.body.i.i, label %land.rhs.i.i.land.lhs.true.i_crit_edge

land.rhs.i.i.land.lhs.true.i_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %incdec.ptr.i.i = getelementptr %struct.drm_etnaviv_gem_submit_reloc, ptr %state.sroa.7.2, i32 1
  %dec.i.i = add i32 %state.sroa.17.2, -1
  %tobool8.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool8.not.i.i, label %while.body.i.i.do.body.i_crit_edge, label %while.body.i.i.land.rhs.i.i_crit_edge

while.body.i.i.land.rhs.i.i_crit_edge:            ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i.i

while.body.i.i.do.body.i_crit_edge:               ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

land.lhs.true.i:                                  ; preds = %land.rhs.i.i.land.lhs.true.i_crit_edge, %land.lhs.true.i.i.land.lhs.true.i_crit_edge
  %state.sroa.17.3 = phi i32 [ %state.sroa.17.1, %land.lhs.true.i.i.land.lhs.true.i_crit_edge ], [ %state.sroa.17.2, %land.rhs.i.i.land.lhs.true.i_crit_edge ]
  %state.sroa.7.3 = phi ptr [ %state.sroa.7.1, %land.lhs.true.i.i.land.lhs.true.i_crit_edge ], [ %state.sroa.7.2, %land.rhs.i.i.land.lhs.true.i_crit_edge ]
  %11 = ptrtoint ptr %state.sroa.7.3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state.sroa.7.3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %mul.i)
  %cmp4.i = icmp eq i32 %12, %mul.i
  br i1 %cmp4.i, label %if.then.i, label %land.lhs.true.i.do.body.i_crit_edge

land.lhs.true.i.do.body.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %incdec.ptr.i = getelementptr %struct.drm_etnaviv_gem_submit_reloc, ptr %state.sroa.7.3, i32 1
  %dec.i = add i32 %state.sroa.17.3, -1
  %add15.i = add i32 %st_offset.096.i, 1
  %call16.i = tail call i32 @_find_next_bit_be(ptr noundef nonnull @etnaviv_states, i32 noundef %3, i32 noundef %add15.i) #5
  %cmp1.i = icmp ult i32 %call16.i, %3
  br i1 %cmp1.i, label %if.then.i.for.body.i_crit_edge, label %if.then.i.for.end.i_crit_edge

if.then.i.for.end.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

if.then.i.for.body.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

do.body.i:                                        ; preds = %land.lhs.true.i.do.body.i_crit_edge, %while.body.i.i.do.body.i_crit_edge, %for.body.i.do.body.i_crit_edge
  %call7.i = tail call i32 @___ratelimit(ptr noundef nonnull @etnaviv_validate_load_state._rs, ptr noundef nonnull @__func__.etnaviv_validate_load_state) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %do.body.i.cleanup43_crit_edge, label %do.end.i

do.body.i.cleanup43_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup43

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.etnaviv_validate_load_state, i32 noundef %mul3.i, i32 noundef %mul.i) #8
  br label %cleanup43

for.end.i:                                        ; preds = %if.then.i.for.end.i_crit_edge, %if.end.for.end.i_crit_edge
  %state.sroa.17.5 = phi i32 [ %state.sroa.17.0102, %if.end.for.end.i_crit_edge ], [ %dec.i, %if.then.i.for.end.i_crit_edge ]
  %state.sroa.7.5 = phi ptr [ %state.sroa.7.0103, %if.end.for.end.i_crit_edge ], [ %incdec.ptr.i, %if.then.i.for.end.i_crit_edge ]
  %st_offset.0.lcssa.i = phi i32 [ %call.i, %if.end.for.end.i_crit_edge ], [ %call16.i, %if.then.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state.sroa.17.5)
  %tobool18.not.i = icmp eq i32 %state.sroa.17.5, 0
  br i1 %tobool18.not.i, label %for.end.i.cleanup_crit_edge, label %land.lhs.true.i68.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.i68.i:                              ; preds = %for.end.i
  %sub.ptr.lhs.cast21.i = ptrtoint ptr %add.ptr10 to i32
  %add2563.i = shl nuw nsw i32 %shr3, 2
  %sub.ptr.sub23.i = sub i32 %sub.ptr.lhs.cast21.i, %sub.ptr.rhs.cast.i
  %15 = add i32 %sub.ptr.sub23.i, %add2563.i
  %mul26.i = and i32 %15, -4
  %mul27.i = shl i32 %st_offset.0.lcssa.i, 2
  %16 = ptrtoint ptr %state.sroa.7.5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state.sroa.7.5, align 8
  %add30.i = sub i32 %mul27.i, %mul26.i
  %sub31.i = add i32 %add30.i, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %mul26.i)
  %cmp.i67.i = icmp ult i32 %17, %mul26.i
  br i1 %cmp.i67.i, label %do.body.i70.i, label %land.lhs.true.i68.i.cleanup_crit_edge

land.lhs.true.i68.i.cleanup_crit_edge:            ; preds = %land.lhs.true.i68.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body.i70.i:                                    ; preds = %land.lhs.true.i68.i
  %.b23.i69.i = load i1, ptr @etnaviv_warn_if_non_sensitive.__print_once, align 1
  br i1 %.b23.i69.i, label %do.body.i70.i.do.end6.i75.i_crit_edge, label %if.then2.i72.i

do.body.i70.i.do.end6.i75.i_crit_edge:            ; preds = %do.body.i70.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end6.i75.i

if.then2.i72.i:                                   ; preds = %do.body.i70.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @etnaviv_warn_if_non_sensitive.__print_once, align 1
  %18 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %sub31.i, i32 noundef %17) #8
  br label %do.end6.i75.i

do.end6.i75.i:                                    ; preds = %if.then2.i72.i, %do.body.i70.i.do.end6.i75.i_crit_edge
  %20 = mul i32 %state.sroa.17.5, 24
  %uglygep = getelementptr i8, ptr %state.sroa.7.5, i32 %20
  br label %land.rhs.i77.i

land.rhs.i77.i:                                   ; preds = %while.body.i81.i.land.rhs.i77.i_crit_edge, %do.end6.i75.i
  %state.sroa.17.6 = phi i32 [ %state.sroa.17.5, %do.end6.i75.i ], [ %dec.i79.i, %while.body.i81.i.land.rhs.i77.i_crit_edge ]
  %state.sroa.7.6 = phi ptr [ %state.sroa.7.5, %do.end6.i75.i ], [ %incdec.ptr.i78.i, %while.body.i81.i.land.rhs.i77.i_crit_edge ]
  %21 = ptrtoint ptr %state.sroa.7.6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %state.sroa.7.6, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %mul26.i)
  %cmp11.i76.i = icmp ult i32 %22, %mul26.i
  br i1 %cmp11.i76.i, label %while.body.i81.i, label %land.rhs.i77.i.cleanup_crit_edge

land.rhs.i77.i.cleanup_crit_edge:                 ; preds = %land.rhs.i77.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.i81.i:                                 ; preds = %land.rhs.i77.i
  %incdec.ptr.i78.i = getelementptr %struct.drm_etnaviv_gem_submit_reloc, ptr %state.sroa.7.6, i32 1
  %dec.i79.i = add i32 %state.sroa.17.6, -1
  %tobool8.not.i80.i = icmp eq i32 %dec.i79.i, 0
  br i1 %tobool8.not.i80.i, label %while.body.i81.i.cleanup_crit_edge, label %while.body.i81.i.land.rhs.i77.i_crit_edge

while.body.i81.i.land.rhs.i77.i_crit_edge:        ; preds = %while.body.i81.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i77.i

while.body.i81.i.cleanup_crit_edge:               ; preds = %while.body.i81.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb13:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %and14 = lshr i32 %1, 8
  %shr15 = and i32 %and14, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr15)
  %cmp16 = icmp eq i32 %shr15, 0
  %shr15.op = shl nuw nsw i32 %shr15, 1
  %shr15.op.op = add nuw nsw i32 %shr15.op, 2
  %add19 = select i1 %cmp16, i32 514, i32 %shr15.op.op
  br label %cleanup

sw.default:                                       ; preds = %while.body
  %arrayidx = getelementptr [32 x i8], ptr @cmd_length, i32 0, i32 %shr
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %24 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp20 = icmp eq i8 %24, 0
  br i1 %cmp20, label %do.end, label %sw.default.cleanup_crit_edge

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i.i, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %buf.0104 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast.i
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %shr, i32 noundef %sub.ptr.div) #8
  br label %cleanup43

cleanup:                                          ; preds = %sw.default.cleanup_crit_edge, %sw.bb13, %while.body.i81.i.cleanup_crit_edge, %land.rhs.i77.i.cleanup_crit_edge, %land.lhs.true.i68.i.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %state.sroa.17.8 = phi i32 [ %state.sroa.17.0102, %sw.default.cleanup_crit_edge ], [ %state.sroa.17.0102, %sw.bb13 ], [ %state.sroa.17.0102, %sw.bb.cleanup_crit_edge ], [ %state.sroa.17.5, %land.lhs.true.i68.i.cleanup_crit_edge ], [ 0, %for.end.i.cleanup_crit_edge ], [ 0, %while.body.i81.i.cleanup_crit_edge ], [ %state.sroa.17.6, %land.rhs.i77.i.cleanup_crit_edge ]
  %state.sroa.7.8 = phi ptr [ %state.sroa.7.0103, %sw.default.cleanup_crit_edge ], [ %state.sroa.7.0103, %sw.bb13 ], [ %state.sroa.7.0103, %sw.bb.cleanup_crit_edge ], [ %state.sroa.7.5, %land.lhs.true.i68.i.cleanup_crit_edge ], [ %state.sroa.7.5, %for.end.i.cleanup_crit_edge ], [ %uglygep, %while.body.i81.i.cleanup_crit_edge ], [ %state.sroa.7.6, %land.rhs.i77.i.cleanup_crit_edge ]
  %len.0 = phi i32 [ %conv, %sw.default.cleanup_crit_edge ], [ %add19, %sw.bb13 ], [ %and5, %sw.bb.cleanup_crit_edge ], [ %and5, %land.lhs.true.i68.i.cleanup_crit_edge ], [ %and5, %for.end.i.cleanup_crit_edge ], [ %and5, %land.rhs.i77.i.cleanup_crit_edge ], [ %and5, %while.body.i81.i.cleanup_crit_edge ]
  %add.ptr25 = getelementptr i32, ptr %buf.0104, i32 %len.0
  %cmp = icmp ult ptr %add.ptr25, %add.ptr
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %entry.while.end_crit_edge
  %buf.0.lcssa = phi ptr [ %stream, %entry.while.end_crit_edge ], [ %add.ptr25, %cleanup.while.end_crit_edge ]
  %cmp30 = icmp ugt ptr %buf.0.lcssa, %add.ptr
  br i1 %cmp30, label %do.end35, label %while.end.cleanup43_crit_edge

while.end.cleanup43_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup43

do.end35:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev36 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 2
  %27 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev36, align 8
  %sub.ptr.lhs.cast38 = ptrtoint ptr %buf.0.lcssa to i32
  %sub.ptr.rhs.cast39 = ptrtoint ptr %stream to i32
  %sub.ptr.sub40 = sub i32 %sub.ptr.lhs.cast38, %sub.ptr.rhs.cast39
  %sub.ptr.div41 = ashr exact i32 %sub.ptr.sub40, 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef %sub.ptr.div41, i32 noundef %size) #8
  br label %cleanup43

cleanup43:                                        ; preds = %do.end35, %while.end.cleanup43_crit_edge, %do.end, %do.end.i, %do.body.i.cleanup43_crit_edge
  %retval.2 = phi i1 [ false, %do.end35 ], [ true, %while.end.cleanup43_crit_edge ], [ false, %do.end ], [ false, %do.body.i.cleanup43_crit_edge ], [ false, %do.end.i ]
  ret i1 %retval.2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_cmd_parser.c", i32 189, i32 5}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @etnaviv_cmd_validate_one._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @etnaviv_cmd_validate_one._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_cmd_parser.c", i32 200, i32 3}
!10 = !{ptr @etnaviv_cmd_validate_one._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @etnaviv_cmd_validate_one._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @etnaviv_states, !13, !"etnaviv_states", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_cmd_parser.c", i32 78, i32 8}
!14 = !{ptr @etnaviv_sensitive_states, !15, !"etnaviv_sensitive_states", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_cmd_parser.c", i32 25, i32 3}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_cmd_parser.c", i32 123, i32 3}
!18 = !{ptr @etnaviv_validate_load_state._rs, !17, !"_rs", i1 false, i1 false}
!19 = !{ptr @__func__.etnaviv_validate_load_state, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @etnaviv_validate_load_state._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @etnaviv_validate_load_state._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = distinct !{null, !25, !"__print_once", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_cmd_parser.c", i32 93, i32 3}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @etnaviv_warn_if_non_sensitive._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @etnaviv_warn_if_non_sensitive._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @cmd_length, !31, !"cmd_length", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_cmd_parser.c", i32 139, i32 16}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
